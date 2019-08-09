clc
clear all

armin=0.001;
hr1=0.02;
hr2=0.08;
hr3=0.125;
c=2:1:200;

ar1=armin:0.01:0.4;
ar2=armin:0.01:0.4;
ar3=armin:0.01:0.4;
ar4=armin:0.01:0.4;

hm=1;

scrit1=zeros(1,length(c));
scritloc1=zeros(1,length(c));


for i=1:length(c)
    cr=c(i);
    cm=1;
    [s1,s2,s3,s4]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr1,hm);
    [scrit1(i) scritloc1(i)]=max([s1 s2 s3 s4]);
end


ar=([ar1 ar2 ar3 ar4]);
acrit1=ar(scritloc1);

figure
plot(c,acrit1)
ylabel('Normalized Wavelength')
xlabel('Ratio of Material Constants')
legend(['hr/hm=',num2str(hr1/hm)],['hr/hm=',num2str(hr2/hm)],['hr/hm=',num2str(hr3/hm)],'Location','NorthEast')