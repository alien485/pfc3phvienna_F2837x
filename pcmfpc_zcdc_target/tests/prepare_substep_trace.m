function prepare_substep_trace(root,out)
% Add trace evidence only; existing oracle inputs/outputs remain untouched.
addpath(fullfile(root,'pcmfpc_zcdc'));addpath(fileparts(mfilename('fullpath')));
rows=readmatrix(fullfile(out,'oracle_inputs.csv'));assert(size(rows,2)==24);
traces=zeros(size(rows,1),9*2*19);
p=[50e-6;.01;.2;2350e-6;0;0;1;.02;0;1;1;10;7;0;0;1;1];
for k=1:size(rows,1)
    x=rows(k,:);p(1)=x(19);p(2)=x(20);p(3)=x(21);p(4)=x(22);p(8)=x(23);
    p(12)=x(24)*180/pi;p(10)=x(16);p(17)=x(17);p(18)=x(18);p(19)=x(19);
    hw=x(15);gate=[bitand(hw,1);bitand(bitshift(hw,-1),1);bitand(bitshift(hw,-2),1)];
    [~,~,~,~,~,~,a]=ti_mode7_reference(x(1:3)',x(4:6)',x(7),x(8), ...
        x(9),x(10),x(11),x(12),gate,p,x(13:14)');
    for s=1:2,traces(k,(s-1)*19+(1:19))=a.firstTrace(s,:);end
    for j=1:8
        for s=1:2
            pos=2+(j-1)*2+(s-1);
            traces(k,pos*19+(1:19))=reshape(a.candidateTrace(j,s,:),1,19);
        end
    end
end
writematrix(traces,fullfile(out,'oracle_substeps.csv'));
save(fullfile(out,'matlab_substeps.mat'),'traces','-v7');
report=struct('samples',size(rows,1),'substeps_per_sample',18,'fields_per_substep',19, ...
    'layout','first interval then candidate ID1..8; each substep: oldABC3/freeABC3/nextABC3/poleABC3/mu/np_before/theta_end/up/low/zero/zero', ...
    'source','existing instrumented ti_mode7_reference MATLAB copy; original unchanged');
fid=fopen(fullfile(out,'matlab_substeps_report.json'),'w');fprintf(fid,'%s',jsonencode(report,PrettyPrint=true));fclose(fid);disp(report);
end
