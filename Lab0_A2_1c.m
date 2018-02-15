
t=0:0.0001:2;
f=800;
a=10*sin(2*pi*f*t);
subplot(2,1,1)
plot(t,a);
subplot(2,1,2)
plot(t,a);
xlim([0 0.005]);
sound(a)