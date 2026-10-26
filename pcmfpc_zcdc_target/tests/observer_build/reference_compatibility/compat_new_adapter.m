function [Snext,idqPred,VoPred,diagOut,algorithmDiag,zcdcDiag] = ...
    compat_new_adapter(iabc,eabc,Uup,Ulow,idRef,iqRef,theta,omega,Sactive,p,fHat)
%#codegen
% Executable PCMFPC-ZCDC research implementation with explicit paper repairs.
% Not a claim of literal reproduction or verified performance improvement.
% p(1:9): existing p_pc; p(10): ZCDC_enable; p(11): reserved;
% p(12): zero-window half-width in degrees for modes 4/5, unused in 0..3.
% p(13): Algorithm_mode: 0 weighted baseline, 1 PC without ZCDC,
%                         2 PC with literal Eq.20, 3 PC with repaired Eq.20.
% Optional p(14)=1: seven nominal-voltage groups. Choose each group's physical
% representative by gu, then gi, switching count and ID before PC ranking.
% This documents the paper's unspecified redundant-gate mapping; actual
% predictions still use the measured unequal capacitor voltages.
% Mode 4: protected parallel admissibility + local zero-crossing selection.
% Explicit engineering revision, NOT the paper's top-three/angle objective.
% p(15) is the predicted midpoint magnitude bound (V), NOT the NP cost band.
% Current budget is one half-vector Euler increment: deltaI=Ts*Vdc/(6*L).
% Candidate gi <= min(gi)+deltaI^2, intersect abs(np2)<=p(15).
% If empty, relax current budget within midpoint set; if that is empty,
% minimize midpoint magnitude. Retain best two gi candidates in the set;
% minimize reference phase error only in a common voltage-limited zero window.
% Mode 5: baseline-protected parallel set, engineering revision.
% Let w be the SAME-STATE weighted baseline. All allowed candidates satisfy
% gi(j)<=gi(w) and abs(np(j))<=max(p(15),abs(np(w))), up to roundoff.
% The set always contains w, so no fallback can discard current protection.
% OFF minimizes gi in the set; ON minimizes local reference phase error in
% the same set only in the common voltage-limited reference zero window.
% Uses baseline gammaNP as an anchor; this is NOT a weight-free paper replica.
% Optional p(16)=1: implicit diode zero-current blocking predictor, two
% substeps per control interval. It applies to both OFF and ON for a fair
% test of the optional terminal zero-crossing cost. p(16)=0 uses old Euler.
% Mode 6: unified engineering controller. ZCDC_enable p(10) switches the
% zero-current-blocking predictor OFF/ON. Protected selection is used in both.
% Optional p(17) enables the terminal phase cost for research; default OFF
% because its independent closed-loop ablation degraded tracking.
% Mode 6 output 6: [valid;requested;modelEnabled;6;predictionChangeNorm_A;
% allowedCount;EulerOFF_ID;chosenID;gateChangedFromEulerOFF;selectedZeroBlock].
% Mode 7: paper-aligned, weight-free parallel cascade with a current budget.
% The diode-blocking predictor is always used. Current top three are limited
% to sqrt(gi)<=sqrt(best eligible gi)+p(8), in amperes. NP ranking remains
% gu=np^2; its prefix starts at three and adjusts until intersection size is
% one or two. No current-budget relaxation or weighted fallback is permitted.
% ZCDC p(10) enables a candidate-dependent current phase error in a shared
% reference zero window, gated by common voltage infeasibility or blocking.
% Optional p(17) is a second terminal enable (default enabled in this mode).
% Grouping p(14) is respected; only eligible representatives enter the budget.
% Eight PHYSICAL gates retained, including redundant midpoint-control states.
% Sorting is deterministic (cost, other cost, gate changes, ID).
% Fixed first prediction uses Sactive; second prediction enumerates candidates.
% Both midpoint steps are advanced; fHat and edq held over the short horizon.
% Repaired angle uses candidate id(k+2). Trigger uses common id(k+1), avoiding
% a candidate-dependent discontinuous switch-off. Threshold is the separately
% derived balanced-bus unity-PF no-R geometric threshold, NOT paper Eq.12.
% Remaining physical/model limitations are documented in ALGORITHM_STATUS.md.
% Output 4: [intersectionSize; mode; selectedID; selectedGi; selectedGu].
% Output 5: [id1;ed1;epsPaper;epsGeometry;minGi;chosenGi;minGu;chosenGu;n;m].
% In mode 5, output 5 entries 5/7/10 mean weightedGi/npLimit^2/weightedID.
% Output 6: [valid;requested;active;formula;gzSpreadAll;gzSpreadIntersection;
%            PCoffID;selectedID;changedFromPCoff;selectedGz].

iabc=reshape(iabc,3,1);eabc=reshape(eabc,3,1);
Sactive=reshape(Sactive,3,1);fHat=reshape(fHat,2,1);
assert(numel(p)>=13);
assert(all(isfinite([iabc;eabc;Uup;Ulow;idRef;iqRef;theta;omega;Sactive;p(:);fHat])));
assert(p(1)>0 && p(2)>0 && p(4)>0 && p(7)==1);
mode=p(13);assert(mode==0 || mode==1 || mode==2 || mode==3 || mode==4 || mode==5 || mode==6 || mode==7);
Ts=p(1);L=p(2);Vdc=Uup+Ulow;
Tfirst=Ts;Tcand=Ts;
if numel(p)>=19,Tfirst=p(18);Tcand=p(19);end
pFirst=p;pFirst(1)=Tfirst;pCand=p;pCand(1)=Tcand;
idq=abc_dq(iabc,theta);edq=abc_dq(eabc,theta);
zeroAware=false;if numel(p)>=16,zeroAware=p(16)==1;end
if mode==6,zeroAware=p(10)~=0;end
if mode==7,zeroAware=true;end
firstBlocked=false;blockedCandidates=false(8,1);
if zeroAware
    [i1,np1,firstBlocked]=predict_blocked(idq,Uup,Ulow,Sactive,theta,omega,pFirst,fHat);
else
    [i1,np1]=predict(idq,iabc,Uup,Ulow,Sactive,theta,p,fHat);
end
theta1=theta+omega*Tfirst;iabc1=dq_abc(i1,theta1);
up1=(Vdc-np1)/2;low1=(Vdc+np1)/2;
states=[0 0 0;0 0 1;0 1 0;0 1 1;1 0 0;1 0 1;1 1 0;1 1 1];
gi=zeros(8,1);gu=zeros(8,1);gz=zeros(8,1);sw=zeros(8,1);
currents=zeros(2,8);midpoint=zeros(8,1);
weightedID=1;bestJ=inf;bestSw=inf;
for j=1:8
    gate=states(j,:)';
    if zeroAware
        [ip,vp,blockedCandidates(j)]=predict_blocked(i1,up1,low1,gate,theta1,omega,pCand,fHat);
    else
        [ip,vp]=predict(i1,iabc1,up1,low1,gate,theta1,p,fHat);
    end
    currents(:,j)=ip;midpoint(j)=vp;
    gi(j)=(ip(1)-idRef)^2+(ip(2)-iqRef)^2;gu(j)=vp^2;
    sw(j)=sum(abs(gate-Sactive));
    J=gi(j)+p(5)*gu(j)+p(6)*sw(j);
    % Match original weighted controller, including its numerical tie rule.
    if J<bestJ-1e-12 || (abs(J-bestJ)<=1e-12 && sw(j)<bestSw)
        bestJ=J;bestSw=sw(j);weightedID=j;
    end
end
rankGi=gi;rankGu=gu;candidateCount=8;
if numel(p)>=14 && p(14)==1
    % Deduplicate nominal alpha-beta voltages, not gate IDs. Recompute the
    % representative every sample, so both redundant physical gates remain
    % available for midpoint balancing. Under bus imbalance their actual
    % voltages differ; grouping is an explicitly recorded approximation.
    nominal=zeros(2,8);representative=true(8,1);
    for j=1:8
        pole=zeros(3,1);
        for k=1:3
            polarity=1;if iabc1(k)<0,polarity=-1;end
            pole(k)=(1-states(j,k))*polarity;
        end
        nominal(:,j)=abc_dq(pole,0);
    end
    orderRep=rank8(gu,gi,sw);
    for k=1:8
        a=orderRep(k);
        if representative(a)
            for q=k+1:8
                b=orderRep(q);
                if max(abs(nominal(:,a)-nominal(:,b)))<1e-12
                    representative(b)=false;
                end
            end
        end
    end
    candidateCount=sum(representative);
    for j=1:8
        if ~representative(j),rankGi(j)=inf;rankGu(j)=inf;end
    end
end
orderI=rank8(rankGi,rankGu,sw);orderU=rank8(rankGu,rankGi,sw);
minEligibleGi=rankGi(orderI(1));
currentMask=false(8,1);
for k=1:3
    j=orderI(k);currentMask(j)=true;
    if mode==7
        assert(p(8)>=0 && p(12)>0 && p(12)<30);
        currentMask(j)=isfinite(rankGi(j)) && sqrt(rankGi(j))<=sqrt(minEligibleGi)+p(8);
    end
end
m=3;n=0;mask=false(8,1);
for iteration=1:8
    mask(:)=false;n=0;
    for k=1:8
        if k<=m && currentMask(orderU(k)),mask(orderU(k))=true;n=n+1;end
    end
    if n>=1 && n<=2,break;
    elseif n==0,m=min(candidateCount,m+1);
    else,m=max(1,m-1);end
end
assert(n>=1 && n<=2);
pcOffID=orderI(1);
for k=1:8
    if mask(orderI(k)),pcOffID=orderI(k);break;end
end

valid=omega>0 && edq(1)>1e-9 && Uup>0 && Ulow>0 && up1>0 && low1>0;
epsPaper=0;epsGeometry=0;npLimit=0;active=false;requested=p(10)~=0 && mode>=2;
if valid
    epsPaper=(2*Vdc-sqrt(3)*edq(1))/(3*omega*L);
    epsGeometry=(Vdc-sqrt(3)*edq(1))/(3*omega*L);
    if requested
        if mode==2
            active=abs(i1(1))>epsPaper;
            if active,gz(:)=atan(omega*L*i1(1)/edq(1))^2;end
        elseif mode==3
            active=abs(i1(1))>epsGeometry;
            if active
                for j=1:8,gz(j)=atan(omega*L*currents(1,j)/edq(1))^2;end
            end
        end
    end
end
if mode==4 || mode==5 || mode==6
    assert(numel(p)>=15 && p(15)>0 && p(12)>0 && p(12)<30);
    policy=0;
    allowed=false(8,1);
    if mode==4
        deltaI=Ts*Vdc/(6*L);voltageOK=false(8,1);
        for j=1:8
            voltageOK(j)=abs(midpoint(j))<=p(15);
            allowed(j)=voltageOK(j) && gi(j)<=min(gi)+deltaI^2;
        end
        if ~any(allowed)
            policy=1;allowed=voltageOK;
            if ~any(allowed)
                policy=2;
                for j=1:8,allowed(j)=gu(j)<=min(gu)+1e-12;end
            end
        end
    else
        npLimit=max(p(15),abs(midpoint(weightedID)));
        for j=1:8
            allowed(j)=gi(j)<=gi(weightedID)+1e-12 && abs(midpoint(j))<=npLimit+1e-12;
        end
        assert(allowed(weightedID));
    end
    % Grouping is deliberately not used in modes 4/5: physical constraints and
    % actual unequal-capacitor predictions are evaluated for all eight gates.
    orderI=rank8(gi,gu,sw);mask(:)=false;n=0;
    for k=1:8
        j=orderI(k);
        if allowed(j) && (mode>=5 || n<2),mask(j)=true;n=n+1;end
    end
    m=policy;pcOffID=orderI(1);
    for k=1:8
        if mask(orderI(k)),pcOffID=orderI(k);break;end
    end
    gz(:)=0;active=false;requested=p(10)~=0;
    if mode==6
        requested=false;if numel(p)>=17,requested=p(10)~=0 && p(17)~=0;end
    end
    theta2=theta1+omega*Tcand;iref=dq_abc([idRef;iqRef],theta2);
    amp=hypot(idRef,iqRef);
    [smallest,zeroPhase]=min(abs(iref));
    uref=dq_abc([edq(1)-p(3)*idRef+omega*L*iqRef; ...
        edq(2)-p(3)*iqRef-omega*L*idRef],theta2);
    offsetLow=-inf;offsetHigh=inf;
    for k=1:3
        if iref(k)>=0,loPole=0;hiPole=up1;else,loPole=-low1;hiPole=0;end
        offsetLow=max(offsetLow,loPole-uref(k));
        offsetHigh=min(offsetHigh,hiPole-uref(k));
    end
    active=valid && requested && amp>1e-9 && ...
        smallest<=amp*sin(p(12)*pi/180) && offsetHigh-offsetLow < -1e-6;
    if active
        for j=1:8
            predicted=dq_abc(currents(:,j),theta2);
            gz(j)=(predicted(zeroPhase)-iref(zeroPhase))^2;
        end
    end
end
if mode==7
    % Shared, candidate-independent activation preserves a fair OFF/ON set.
    requested=p(10)~=0;
    if numel(p)>=17,requested=requested && p(17)~=0;end
    theta2=theta1+omega*Tcand;iref=dq_abc([idRef;iqRef],theta2);
    amp=hypot(idRef,iqRef);smallest=min(abs(iref));
    uref=dq_abc([edq(1)-p(3)*idRef+omega*L*iqRef; ...
        edq(2)-p(3)*iqRef-omega*L*idRef],theta2);
    offsetLow=-inf;offsetHigh=inf;
    for k=1:3
        if iref(k)>=0,loPole=0;hiPole=up1;else,loPole=-low1;hiPole=0;end
        offsetLow=max(offsetLow,loPole-uref(k));
        offsetHigh=min(offsetHigh,hiPole-uref(k));
    end
    active=valid && requested && amp>=0.1 && ...
        smallest<=amp*sin(p(12)*pi/180) && ...
        (offsetHigh-offsetLow < -1e-6 || firstBlocked || blockedCandidates(pcOffID));
    gz(:)=0;
    if active
        for j=1:8
            if hypot(currents(1,j),currents(2,j))<1e-12
                gz(j)=pi^2;
            else
                cross=idRef*currents(2,j)-iqRef*currents(1,j);
                dot=idRef*currents(1,j)+iqRef*currents(2,j);
                gz(j)=atan2(cross,dot)^2;
            end
        end
    end
end
chosen=pcOffID;
if mode==0
    chosen=weightedID;
elseif active
    % Start from best gi: exact equal gz keeps the existing deterministic tie.
    for k=1:8
        j=orderI(k);
        if mask(j) && gz(j)<gz(chosen),chosen=j;end
    end
end
lo=inf;hi=-inf;
for j=1:8
    if mask(j),lo=min(lo,gz(j));hi=max(hi,gz(j));end
end
Snext=states(chosen,:)';idqPred=currents(:,chosen);VoPred=midpoint(chosen);
diagOut=[n;mode;chosen;gi(chosen);gu(chosen)];
% Resolve mode-specific diagnostic scalars before creating the output array.
% A single full assignment avoids editor/code-generation definite-assignment
% diagnostics from conditional indexed writes to an inferred output array.
diagGiReference=min(gi);diagGuReference=min(gu);diagSelection=m;
if mode==5 || mode==6
    diagGiReference=gi(weightedID);diagGuReference=npLimit^2;
    diagSelection=weightedID;
    assert(gi(chosen)<=gi(weightedID)+1e-12 && abs(VoPred)<=npLimit+1e-12);
end
if mode==7
    diagGiReference=minEligibleGi;
    assert(mask(chosen) && n>=1 && n<=2);
    assert(sqrt(gi(chosen))<=sqrt(minEligibleGi)+p(8)+1e-12);
end
algorithmDiag=[i1(1);edq(1);epsPaper;epsGeometry;diagGiReference;gi(chosen); ...
    diagGuReference;gu(chosen);n;diagSelection];
zcdcDiag=[double(valid);double(requested);double(active);mode;max(gz)-min(gz);hi-lo; ...
    pcOffID;chosen;double(mode>=2 && chosen~=pcOffID);gz(chosen)];
if mode==6
    eulerID=chosen;predictionChange=0;
    if zeroAware
        [eulerID,eulerPrediction]=euler_off_counterfactual( ...
            idq,iabc,Uup,Ulow,idRef,iqRef,theta,omega,Sactive,p,fHat,chosen);
        predictionChange=norm(idqPred-eulerPrediction);
    end
    zcdcDiag=[double(valid);double(p(10)~=0);double(zeroAware);mode; ...
        predictionChange;n;eulerID;chosen;double(chosen~=eulerID); ...
        double(firstBlocked || blockedCandidates(chosen))];
end
end

function order=rank8(a,b,sw)
order=(1:8)';
for k=2:8
    q=k;
    while q>1
        x=order(q);y=order(q-1);
        less=a(x)<a(y) || (a(x)==a(y) && (b(x)<b(y) || ...
            (b(x)==b(y) && (sw(x)<sw(y) || (sw(x)==sw(y) && x<y)))));
        if ~less,break;end
        order(q)=y;order(q-1)=x;q=q-1;
    end
end
end
function [ip,np]=predict(i,abc,up,low,S,theta,p,f)
pole=zeros(3,1);
for k=1:3
    if abc(k)>=0,pole(k)=(1-S(k))*up;else,pole(k)=-(1-S(k))*low;end
end
u=abc_dq(pole,theta);ip=i+p(1)*(-u/p(2)+f);
np=low-up+p(1)/p(4)*sum(S.*abc);
end
function [dq,np,blocked]=predict_blocked(dq0,up0,low0,S,theta,omega,p,f)
% Implicit ideal-diode projection permits a floating OFF phase to stay at
% zero instead of applying a rail selected solely by its previous sign.
% Substep common voltage enforces sum(iabc)=0. Device drops remain unmodelled.
dq=dq0;np=low0-up0;dc=up0+low0;h=p(1)/2;blocked=false;
for step=1:2
    theta0=theta+(step-1)*omega*h;thetaEnd=theta+step*omega*h;
    oldABC=dq_abc(dq,theta0);freeABC=dq_abc(dq+h*f,thetaEnd);
    up=(dc-np)/2;low=(dc+np)/2;lo=-low;hi=up;
    for iteration=1:32
        common=(lo+hi)/2;z=freeABC+(h/p(2))*common;
        next=S.*z+(1-S).*(max(z-h/p(2)*up,0)+min(z+h/p(2)*low,0));
        if sum(next)>0,hi=common;else,lo=common;end
    end
    common=(lo+hi)/2;z=freeABC+(h/p(2))*common;
    next=S.*z+(1-S).*(max(z-h/p(2)*up,0)+min(z+h/p(2)*low,0));
    blocked=blocked || any(S<.5 & abs(next)<1e-12);
    dq=abc_dq(next,thetaEnd);np=np+h/p(4)*sum(S.*(oldABC+next)/2);
end
end
function [chosen,sameGatePrediction]=euler_off_counterfactual( ...
    dq,abc,up,low,idref,iqref,theta,omega,Sactive,p,f,actualChosen)
% Pure same-state diagnostic; no stored state or extra physical gate delay.
[i1,np1]=predict(dq,abc,up,low,Sactive,theta,p,f);
th1=theta+omega*p(1);abc1=dq_abc(i1,th1);dc=up+low;
states=[0 0 0;0 0 1;0 1 0;0 1 1;1 0 0;1 0 1;1 1 0;1 1 1];
gi=zeros(8,1);gu=zeros(8,1);sw=zeros(8,1);np=zeros(8,1);ip=zeros(2,8);
w=1;best=inf;bestSw=inf;
for j=1:8
    S=states(j,:)';[ip(:,j),np(j)]=predict(i1,abc1,(dc-np1)/2,(dc+np1)/2,S,th1,p,f);
    gi(j)=(ip(1,j)-idref)^2+(ip(2,j)-iqref)^2;gu(j)=np(j)^2;sw(j)=sum(abs(S-Sactive));
    J=gi(j)+p(5)*gu(j)+p(6)*sw(j);
    if J<best-1e-12 || (abs(J-best)<=1e-12 && sw(j)<bestSw),w=j;best=J;bestSw=sw(j);end
end
limit=max(p(15),abs(np(w)));order=rank8(gi,gu,sw);chosen=w;
for k=1:8
    j=order(k);
    if gi(j)<=gi(w)+1e-12 && abs(np(j))<=limit+1e-12,chosen=j;break;end
end
sameGatePrediction=ip(:,actualChosen);
end
function dq=abc_dq(abc,theta)
a=(2*abc(1)-abc(2)-abc(3))/3;b=(abc(2)-abc(3))/sqrt(3);
dq=[cos(theta)*a+sin(theta)*b;-sin(theta)*a+cos(theta)*b];
end
function abc=dq_abc(dq,theta)
a=cos(theta)*dq(1)-sin(theta)*dq(2);b=sin(theta)*dq(1)+cos(theta)*dq(2);
abc=[a;-a/2+sqrt(3)*b/2;-a/2-sqrt(3)*b/2];
end
