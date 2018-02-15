clc;clear all;close all;
subplot(4,1,1)
t=0:0.0001:1;
f=800;
a=sin(2*pi*f*t);
plot(t,a);
xlim([0 0.01])
title('Sinusoidal frequency 800Hz');
xlabel('Time')
ylabel('Amplitude')
subplot(4,1,2)
t=0:0.0001:1;
f=1200;
a=sin(2*pi*f*t);
plot(t,a);
xlim([0 0.01])
title('Sinusoidal frequency 1200Hz');
xlabel('Time')
ylabel('Amplitude')
subplot(4,1,3)
t=0:0.0001:2;
f=800;
a=10*sin(2*pi*f*t);
plot(t,a);
xlim([0 0.01])
title('Cosine frequency 800Hz');
xlabel('Time')
ylabel('Amplitude')
subplot(4,1,4)
t=0:0.00001:1.5;
f=1200;
a=10*cos(2*pi*f*t);
plot(t,a);
xlim([0 0.01])
title('Cosine frequency 1200Hz');
xlabel('Time')
ylabel('Amplitude')