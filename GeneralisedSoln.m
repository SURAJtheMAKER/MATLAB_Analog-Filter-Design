clc;clear;
Amin=input('Enter the value of alpha min:');
Amax=input('Enter the value of alpha max:');
Wp=input('Enter the value of omegaP:');
Ws=input('Enter the value fo omegaS:');
Wns=Ws/Wp;
E=sqrt(10^(0.1*Amax)-1);
n=10*log10((10^(0.1*Amin)-1)/(10^(0.1*Amax)-1))/(20*log10(Wns));
n=ceil(n);
Wb=E^(-1/n)*Wp;
A1=tf([0 Wb^n],[1 Wb]);Ti=1;
if(mod(n,2)==0)
    theta=90/n;
    Q=0.5*cos(theta);
    for i=1:n/2
        T(i)=tf([0 0 1],[1 (Wb/Q) (Wb^2)]);
        Ti=Ti*T(i);
    end
else
    Q=0.5*cos(0);
    for i=1:((n+1)/2)
      T(i)=tf([0 0 1],[1 (Wb/Q) (Wb^2)]);
      Ti=Ti*T(i);
    end
end
if(mod(n,2)~=0)
Ti=A1*Ti;
end
bode(Ti);
grid on;
