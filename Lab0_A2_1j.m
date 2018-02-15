clc
clear all
close all

t=0:0.0001:1;


f=800;
a=sin(2*pi*f*t);

f1=1200;
a1=sin(2*pi*f1*t);
t1=0:0.0001:2.0001;
a2=[a a1];
b=a+a1;
c=fft(b);
l=length(c);
x=fftshift(c);
subplot(2,1,1)
plot(-((l-1)/2):((l-1)/2),abs(x));
title('Sinusoidal frequency added spectrum');
xlabel('Frequency');
ylabel('Amplitude');
subplot(2,1,2)
d=fft(a2);
l1=length(d);
x1=fftshift(d);
plot(-((l1-1)/2):((l1-1)/2),abs(x1));
title('Sinusoidal frequency appended spectrum');
xlabel('Frequency');
ylabel('Amplitude');