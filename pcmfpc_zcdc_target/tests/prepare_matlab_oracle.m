function prepare_matlab_oracle(root,out)
% Original MATLAB function is the independent oracle. Instrumentation only
% exposes internal arrays and generalizes the two interval lengths explicitly.
addpath(fullfile(root,'pcmfpc_zcdc'));addpath(fileparts(mfilename('fullpath')));
if ~exist(out,'dir'),mkdir(out);end
rng(20261025); rows=[]; labels={};
p=[50e-6;.01;.2;2350e-6;0;0;1;.02;0;1;1;10;7;0;0;1;1];
raw=load(fullfile(root,'output/prediction_audit/tp48b1bf1f_d73d_401a_9aba_234b1c7ad60c.mat'),'raw','parameters');
t=(2.8:raw.parameters(1):3-raw.parameters(1))';
z=sample(raw.raw.zcdcDiag,t); keep=unique([1:8:numel(t),find(z(:,9)~=0)']);
fields={'iabc','eabc','Uup','Ulow','idRef','iqRef','theta','omega','Sactive','fHat'};
q=struct;
for k=1:numel(fields)
 f=fields{k};
 if strcmp(f,'iqRef')&&isempty(raw.raw.(f).time),q.(f)=zeros(numel(keep),1);
 else,q.(f)=sample(raw.raw.(f),t(keep));end
end
for k=1:numel(keep)
 g=q.Sactive(k,:);hw=g(1)+2*g(2)+4*g(3);
 rows(end+1,:)=[q.iabc(k,:) q.eabc(k,:) q.Uup(k) q.Ulow(k) q.idRef(k) q.iqRef(k) q.theta(k) q.omega(k) q.fHat(k,:) hw 1 1 50e-6 50e-6 .01 .2 2350e-6 .02 10*pi/180]; %#ok<AGROW>
 if z(keep(k),9),labels{end+1}='published_terminal_change';else,labels{end+1}='published_trajectory';end %#ok<AGROW>
end
for k=1:500
 th=2*pi*rand;w=2*pi*(45+10*rand);up=70+30*rand;lo=70+30*rand;
 ed=60+40*rand;eq=3*randn;id=4*randn;iq=.3*randn;
 if mod(k,10)==0,id=0;iq=0;end
 ia=invp([id;iq],th);ea=invp([ed;eq],th);
 ref=[max(0,id+.4*randn);.3*randn];
 L=.003;cap=440e-6;first=10e-6;second=20e-6;
 if mod(k,2)==0,L=.01;cap=2350e-6;first=50e-6;second=50e-6;end
 f=[ed/L-.2*id/L+w*iq;eq/L-.2*iq/L-w*id];
 rows(end+1,:)=[ia' ea' up lo ref' th w f' randi([0 7]) mod(k,3)~=0 1 first second L .2 cap .02 10*pi/180]; %#ok<AGROW>
 labels{end+1}='synthetic_boundary'; %#ok<AGROW>
end
% Flat blocking plateaux and all physical gate IDs, including nonzero iq.
for hw=0:7
 for en=0:1
  rows(end+1,:)=[zeros(1,3) invp([81.65;0],pi/2)' 85 85 .1 0 pi/2 2*pi*50 0 0 hw en 1 10e-6 20e-6 .003 .2 440e-6 .02 10*pi/180]; %#ok<AGROW>
  labels{end+1}='flat_blocking'; %#ok<AGROW>
 end
end
result=zeros(size(rows,1),88); originalChecks=0; changed=0;
for k=1:size(rows,1)
 x=rows(k,:);p(1)=x(19);p(2)=x(20);p(3)=x(21);p(4)=x(22);p(8)=x(23);p(12)=x(24)*180/pi;p(10)=x(16);p(17)=x(17);p(18)=x(18);p(19)=x(19);
 hw=x(15);g=[bitand(hw,1);bitand(bitshift(hw,-1),1);bitand(bitshift(hw,-2),1)];
 args={x(1:3)',x(4:6)',x(7),x(8),x(9),x(10),x(11),x(12),g,p,x(13:14)'};
 [gate,ip,np,d,a,z,audit]=ti_mode7_reference(args{:});
 if x(18)==x(19)
  args{10}=p(1:17);[g0,i0,n0,d0,a0,z0]=vienna_pcmfpc_zcdc_complete(args{:});
  assert(max(abs([gate;ip;np;d;a;z]-[g0;i0;n0;d0;a0;z0]))<1e-10);originalChecks=originalChecks+1;
 end
 mask=sum(double(audit.mask(:)').*2.^(0:7));cmask=sum(double(audit.currentMask(:)').*2.^(0:7));
 vec=[d(3) z(7) gate(1)+2*gate(2)+4*gate(3) z(1:3)' sum(audit.currentMask) d(1) a(10) mask cmask ...
  audit.i1' audit.np1 audit.gi' audit.gu' audit.gz' reshape(audit.currents,1,[]) audit.midpoint' audit.orderI' audit.orderU' z'];
 assert(numel(vec)==88);result(k,:)=vec;changed=changed+(z(9)~=0);
end
writematrix(rows,fullfile(out,'oracle_inputs.csv'));writematrix(result,fullfile(out,'oracle_outputs.csv'));
writecell(labels',fullfile(out,'oracle_labels.csv'));
save(fullfile(out,'matlab_oracle.mat'),'rows','result','labels','originalChecks','changed','-v7');
report=struct('samples',size(rows,1),'exact_original_checks',originalChecks,'terminal_changed_samples',changed,'instrumentation','Expose internals; explicit first/candidate interval lengths. Original source unchanged.');
fid=fopen(fullfile(out,'matlab_oracle_report.json'),'w');fprintf(fid,'%s',jsonencode(report,PrettyPrint=true));fclose(fid);
disp(report);
end
function v=sample(s,t)
 x=double(s.time(:));v=squeeze(double(s.values));if size(v,1)~=numel(x),v=v';end
 [x,j]=unique(x,'last');v=interp1(x,v(j,:),t,'nearest');assert(all(isfinite(v(:))));
end
function abc=invp(dq,t)
 a=cos(t)*dq(1)-sin(t)*dq(2);b=sin(t)*dq(1)+cos(t)*dq(2);
 abc=[a;-a/2+sqrt(3)*b/2;-a/2-sqrt(3)*b/2];
end
