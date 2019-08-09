clc
clear all

armin=0.01;
cr=40;
h=0.01:0.005:0.4;

ar1=armin:0.01:0.7;
ar2=armin:0.01:0.7;
ar3=armin:0.01:0.7;
ar4=armin:0.01:0.7;

cm=1;

scrit=zeros(1,length(h));
scritloc=zeros(1,length(h));

for i=1:length(h)
    hr=h(i);
    hm=1;
    [s1,s2,s3,s4]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
    [scrit(i) scritloc(i)]=max([s1 s2 s3 s4]);
end

         
ar=([ar1 ar2 ar3 ar4]);
acrit=ar(scritloc);
figure
plot(h,acrit)
title(['hr/hm=',num2str(cr/cm)])
ylabel('Normalized Wavelength')
xlabel('Ratio of Layer Thickness')