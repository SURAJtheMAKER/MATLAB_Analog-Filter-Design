clc;clear;
Amax=input( 'Enter the value of Amax:');
Amin=input(' Enter the value of Amin:');
Wp=input('Enter the value of pass band frequency:');
Ws=input('Enter the value of stop band frequency:');
Wns=Ws/Wp;
E=sqrt(10^(0.1*Amax)-1);
n=ceil((acosh(sqrt((10^(0.1*Amin)-1)/(10^(0.1*Amax)-1))))/(acosh(Wns)));
a=(1/n)*asinh(1/E);
for i=1:n
    A(i)=-(a*sinh(sin((2*i-1)*pi/(2*n)))+a*cosh(cos((2*i-1)*pi/(2*n))));
end
s=tf('s');
Tf=1/(E*2^(n-1));
for i=1:n
    j=(1/(s-A(i)));
    Tf=Tf*j;
end
