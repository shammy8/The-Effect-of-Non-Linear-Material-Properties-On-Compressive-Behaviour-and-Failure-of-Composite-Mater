function [s1,s2,s3,s4]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm)

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
    f=@(s1) -s1^-3*(1+s1^6)^2*(1-cr/cm)^2*tanh(ar1(i).*s1^-3)*tanh(am1(i).*s1^-3)-4*s1^3*(1-(cr/cm))^2*tanh(ar1(i))*tanh(am1(i))+(2-(1+s1^6)*(cr/cm))^2*tanh(ar1(i).*s1^-3)*tanh(am1(i))+(1+s1^6-2*cr/cm)^2*tanh(ar1(i))*tanh(am1(i)*s1^-3)+(1-s1^6)^2*(cr/cm)*(tanh(ar1(i))*tanh(ar1(i).*s1^-3)+tanh(am1(i))*tanh(am1(i)*s1^-3));
    s1(i)=fzero(f,0.8);
end

for i=1:length(ar2);
    am2(i)=(hm/hr).*ar2(i);
    f=@(s2) -s2^-3*(1+s2^6)^2*(1-cr/cm)^2*tanh(ar2(i).*s2^-3)*coth(am2(i).*s2^-3)-4*s2^3*(1-cr/cm)^2*tanh(ar2(i))*coth(am2(i))+(2-(1+s2^6)*(cr/cm))^2*tanh(ar2(i).*s2^-3)*coth(am2(i))+(1+s2^6-2*cr/cm)^2*tanh(ar2(i))*coth(am2(i)*s2^-3)+(1-s2^6)^2*(cr/cm)*(tanh(ar2(i))*tanh(ar2(i).*s2^-3)+coth(am2(i))*coth(am2(i)*s2^-3));
    s2(i)=fzero(f,0.8);  
end


for i=1:length(ar3)
    am3(i)=(hm/hr).*ar3(i);
    f=@(s3) -s3^-3*(1+s3^6)^2*(1-cr/cm)^2*coth(ar3(i).*s3^-3)*coth(am3(i).*s3^-3)-4*s3^3*(1-cr/cm)^2*coth(ar3(i))*coth(am3(i))+(2-(1+s3^6)*(cr/cm))^2*coth(ar3(i).*s3^-3)*coth(am3(i))+(1+s3^6-2*cr/cm)^2*coth(ar3(i))*coth(am3(i)*s3^-3)+(1-s3^6)^2*(cr/cm)*(coth(ar3(i))*coth(ar3(i).*s3^-3)+coth(am3(i))*coth(am3(i)*s3^-3));
    s3(i)=fzero(f,0.6);    
end

for i=1:length(ar4)
    am4(i)=(hm/hr).*ar4(i);
    f=@(s4) -s4^-3*(1+s4^6)^2*(1-cr/cm)^2*coth(ar4(i).*s4^-3)*tanh(am4(i).*s4^-3)-4*s4^3*(1-cr/cm)^2*coth(ar4(i))*tanh(am4(i))+(2-(1+s4^6)*(cr/cm))^2*coth(ar4(i).*s4^-3)*tanh(am4(i))+(1+s4^6-2*cr/cm)^2*coth(ar4(i))*tanh(am4(i)*s4^-3)+(1-s4^6)^2*(cr/cm)*(coth(ar4(i))*coth(ar4(i).*s4^-3)+tanh(am4(i))*tanh(am4(i)*s4^-3));
    s4(i)=fzero(f,0.6);
end