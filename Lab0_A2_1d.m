t=0:0.00001:1.5;
f=1200;
a=10*cos(2*pi*f*t);
subplot(2,1,1)
plot(t,a);
subplot(2,1,2)
plot(t,a);
xlim([0 0.005]);
sound(a)