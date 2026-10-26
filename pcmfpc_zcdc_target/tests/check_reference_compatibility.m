function check_reference_compatibility(root,out,adapterDir)
% Independent direct evaluation of six outputs; no SLX simulation is run.
addpath(adapterDir);rng(20261025);
rows=readmatrix(fullfile(root,'output/ti_pcmfpc_zcdc_port/oracle_inputs.csv'));
assert(size(rows,1)==1017 && size(rows,2)==24);
maximum=zeros(6,1);count=0;equalDurationChecks=0;
p=[50e-6;.01;.2;2350e-6;.2;1e-5;1;.02;0;1;1;10;7;0;5;1;1];
for k=1:size(rows,1)
 x=rows(k,:);p(1)=x(19);p(2)=x(20);p(3)=x(21);p(4)=x(22);p(8)=x(23);
 p(12)=x(24)*180/pi;p(10)=x(16);p(17)=x(17);p(18)=x(18);p(19)=x(19);
 hw=x(15);gate=[bitand(hw,1);bitand(bitshift(hw,-1),1);bitand(bitshift(hw,-2),1)];
 args={x(1:3)',x(4:6)',x(7),x(8),x(9),x(10),x(11),x(12),gate,p,x(13:14)'};
 a=cell(6,1);b=cell(6,1);[a{:}]=compat_old_adapter(args{:});[b{:}]=compat_new_adapter(args{:});
 maximum=check(a,b,maximum);count=count+1;
 if x(18)==x(19)
  args{10}=p(1:17);c=cell(6,1);d=cell(6,1);
  [c{:}]=compat_old_original(args{:});[d{:}]=compat_new_original(args{:});
  maximum=check(c,d,maximum);maximum=check(a,c,maximum);maximum=check(b,d,maximum);
  equalDurationChecks=equalDurationChecks+1;
 end
end
modeCounts=zeros(8,1);
for mode=0:7
 for k=1:42
  T=50e-6;if mod(k,2)==0,T=20e-6;end
  L=.003;C=440e-6;if mod(k,3)==0,L=.01;C=2350e-6;end
  theta=2*pi*rand;omega=2*pi*(45+10*rand);up=70+30*rand;low=70+30*rand;
  ed=65+30*rand;eq=.8*randn;id=-2+7*rand;iq=.25*randn;
  reference=.12+5*rand;refq=.2*randn;gate=randi([0 1],3,1);
  iabc=invp([id;iq],theta);eabc=invp([ed;eq],theta);
  f=[ed/L-.2*id/L+omega*iq;eq/L-.2*iq/L-omega*id];
  q=[T;L;.2;C;.2;1e-5;1;.02;0;mod(k,3)~=0;1;10;mode;mod(k,4)==0;5;mod(k,2);mod(k,5)~=0];
  args={iabc,eabc,up,low,reference,refq,theta,omega,gate,q,f};
  a=cell(6,1);b=cell(6,1);[a{:}]=compat_old_original(args{:});[b{:}]=compat_new_original(args{:});
  maximum=check(a,b,maximum);modeCounts(mode+1)=modeCounts(mode+1)+1;count=count+1;
 end
end
result=struct('status','PASS','mode7_oracle_cases',size(rows,1),'all_modes_random_cases',sum(modeCounts), ...
 'all_modes_random_counts',modeCounts','total_old_new_cases',count, ...
 'equal_duration_adapter_vs_unmodified_original_cases',equalDurationChecks, ...
 'maximum_absolute_difference_per_output',maximum','matlab_all_outputs_identical',true, ...
 'model_rerun',false,'matlab_version',version, ...
 'scope','Direct pure-function evaluation of old/new original six outputs and explicit first/candidate duration copies. No SLX simulation.');
fid=fopen(fullfile(out,'MATLAB_RESULT.json'),'w');fprintf(fid,'%s',jsonencode(result,PrettyPrint=true));fclose(fid);
disp(result);fprintf('REFERENCE_COMPATIBILITY_PASS cases=%d originalChecks=%d maxDifference=%g\n',count,equalDurationChecks,max(maximum));
end
function maximum=check(a,b,maximum)
for k=1:6
 assert(isequal(size(a{k}),size(b{k})) && isequaln(a{k},b{k}),'Six-output compatibility mismatch');
 assert(all(isfinite(a{k}(:))) && all(isfinite(b{k}(:))),'Nonfinite output');
 maximum(k)=max(maximum(k),max(abs(double(a{k}(:))-double(b{k}(:)))));
end
end
function abc=invp(dq,theta)
a=cos(theta)*dq(1)-sin(theta)*dq(2);b=sin(theta)*dq(1)+cos(theta)*dq(2);
abc=[a;-a/2+sqrt(3)*b/2;-a/2-sqrt(3)*b/2];
end
