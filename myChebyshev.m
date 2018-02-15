function [den,num] = myChebyshev( Amax,Amin,Wp,Ws )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
Wns=Ws/Wp;
E=sqrt(10^(0.1*Amax)-1);
n=ceil((acosh(sqrt((10^(0.1*Amin)-1)/(10^(0.1*Amax)-1))))/(acosh(Wns)));
a=(1/n)*asinh(1/E);
for i=1:n
    A(i)=-(a*sinh(sin((2*i-1)*pi/(2*n)))+a*cosh(cos((2*i-1)*pi/(2*n))));
end
s=tf('s');
den=(E*2^(n-1));
for i=1:n
    j=(s-A(i));
    den=den*j;
end
num=1;
end

