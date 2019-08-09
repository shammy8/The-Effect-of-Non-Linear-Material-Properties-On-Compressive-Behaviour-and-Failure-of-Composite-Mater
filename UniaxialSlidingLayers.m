function [s1,s2,s3,s4]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm)
    
am1=zeros(1,length(ar1));
am2=zeros(1,length(ar2));
am3=zeros(1,length(ar3));
am4=zeros(1,length(ar4));
s1=zeros(1,length(ar1));
s2=zeros(1,length(ar2));
s3=zeros(1,length(ar3));
s4=zeros(1,length(ar4));

for i=1:length(ar1);
    am1(i)=(hm/hr).*ar1(i);
    f=@(s1) 4*s1^2*((cr/cm)*tanh(ar1(i))+tanh(am1(i)))-(1+s1^4)^2*((cr/cm)*tanh(ar1(i)/s1^2)+tanh(am1(i)/s1^2));
    s1(i)=fzero(f,[0,0.999]);
end

for i=1:length(ar2);
    am2(i)=(hm/hr).*ar2(i);
    f=@(s2) 4*s2^2*((cr/cm)*tanh(ar2(i))+coth(am2(i)))-(1+s2^4)^2*((cr/cm)*tanh(ar2(i)/s2^2)+coth(am2(i)/s2^2));
    s2(i)=fzero(f,[0,0.999]);  
end

for i=1:length(ar3)
    am3(i)=(hm/hr).*ar3(i);
    f=@(s3) 4*s3^2*((cr/cm)*coth(ar3(i))+coth(am3(i)))-(1+s3^4)^2*((cr/cm)*coth(ar3(i)/s3^2)+coth(am3(i)/s3^2));
    s3(i)=fzero(f,0.6);    
end

for i=1:length(ar4)
    am4(i)=(hm/hr).*ar4(i);
    f=@(s4) 4*s4^2*((cr/cm)*coth(ar4(i))+tanh(am4(i)))-(1+s4^4)^2*((cr/cm)*coth(ar4(i)/s4^2)+tanh(am4(i)/s4^2));
    s4(i)=fzero(f,0.6);
end