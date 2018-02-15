t=0:0.0001:1;
f=800;
a=sin(2*pi*f*t);

f1=1200;
a1=sin(2*pi*f1*t);

b=a+a1;
plot(t,b);
xlim([0 0.01])
sound(b)
