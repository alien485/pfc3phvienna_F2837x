"""Instrument a COPY of the pinned MATLAB reference; never edit the reference."""
from pathlib import Path
import hashlib

ROOT = Path(__file__).resolve().parents[5]
TESTS = Path(__file__).resolve().parent
source = ROOT / 'pcmfpc_zcdc/vienna_pcmfpc_zcdc_complete.m'
text = source.read_text(encoding='utf-8')
assert hashlib.sha256(source.read_bytes()).hexdigest() == 'a77ea4dea3267d82d444efbf4a7437a39e15b7c48928931f40d6476e67503f4a'
text = text.replace('diagOut,algorithmDiag,zcdcDiag] =', 'diagOut,algorithmDiag,zcdcDiag,audit] =', 1)
text = text.replace('vienna_pcmfpc_zcdc_complete(', 'ti_mode7_reference(', 1)
text = text.replace('Ts=p(1);L=p(2);Vdc=Uup+Ulow;', '''Ts=p(1);L=p(2);Vdc=Uup+Ulow;
Tfirst=Ts;Tcand=Ts;
if numel(p)>=19,Tfirst=p(18);Tcand=p(19);end
pFirst=p;pFirst(1)=Tfirst;pCand=p;pCand(1)=Tcand;
firstTrace=zeros(2,19);candidateTrace=zeros(8,2,19);''', 1)
text = text.replace('[i1,np1,firstBlocked]=predict_blocked(idq,Uup,Ulow,Sactive,theta,omega,p,fHat);', '[i1,np1,firstBlocked,firstTrace]=predict_blocked(idq,Uup,Ulow,Sactive,theta,omega,pFirst,fHat);', 1)
text = text.replace('theta1=theta+omega*Ts;', 'theta1=theta+omega*Tfirst;', 1)
text = text.replace('[ip,vp,blockedCandidates(j)]=predict_blocked(i1,up1,low1,gate,theta1,omega,p,fHat);', '[ip,vp,blockedCandidates(j),oneTrace]=predict_blocked(i1,up1,low1,gate,theta1,omega,pCand,fHat);\n        candidateTrace(j,:,:)=reshape(oneTrace,1,2,19);', 1)
text = text.replace('theta2=theta1+omega*Ts;', 'theta2=theta1+omega*Tcand;')
marker='\nend\n\nfunction order=rank8'
assert marker in text
text=text.replace(marker, '''
audit=struct('gi',gi,'gu',gu,'gz',gz,'currents',currents,'midpoint',midpoint, ...
    'orderI',orderI,'orderU',orderU,'mask',mask,'currentMask',currentMask, ...
    'i1',i1,'np1',np1,'firstTrace',firstTrace,'candidateTrace',candidateTrace, ...
    'firstBlocked',firstBlocked,'blockedCandidates',blockedCandidates);
end

function order=rank8''',1)
text=text.replace('function [dq,np,blocked]=predict_blocked(', 'function [dq,np,blocked,trace]=predict_blocked(',1)
text=text.replace('h=p(1)/2;blocked=false;', 'h=p(1)/2;blocked=false;trace=zeros(2,19);',1)
text=text.replace('blocked=blocked || any(S<.5 & abs(next)<1e-12);', '''pole=(freeABC-next)/(h/p(2))+common;
    trace(step,:)=[oldABC(:)' freeABC(:)' next(:)' pole(:)' common ...
        np thetaEnd up low 0 0];
    blocked=blocked || any(S<.5 & abs(next)<1e-12);''',1)
(TESTS/'ti_mode7_reference.m').write_text(text,encoding='utf-8')
print('Prepared instrumented copy:',TESTS/'ti_mode7_reference.m')
