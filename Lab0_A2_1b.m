t=0:0.0001:1;
f=1200;
a=sin(2*pi*f*t);
subplot(2,1,1)
plot(t,a);
sound(a)
subplot(2,1,2)
plot(t,a);
xlim([0 0.01])