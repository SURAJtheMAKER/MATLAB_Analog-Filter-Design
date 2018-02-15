clc;clear;
Amax=input('Enter the value of alpha max:');
Amin=input('Enter the value of alpha min:');
Wp=input('Enter the value of Wp:');
Ws=input('Enter the value of Ws:');
[a,b]=myChebyshev(Amax,Amin,Wp,Ws);
Tf=b/a
bode(Tf);
grid on
figure
pzmap(Tf);
grid on