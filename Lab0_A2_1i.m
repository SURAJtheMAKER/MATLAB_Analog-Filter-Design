clc;clear

t=0:0.0001:1;
f=800;
a=sin(2*pi*f*t);
f1=1200;
a1=sin(2*pi*f1*t);
b=[a a1];

t1=(0:0.0001:2.0001);
plot(t1,b);
xlim([0.9989 1.009 ])
xlabel('Time');
ylabel('Amplitude');
title('Appended 800Hz and 1200Hz');
gtext('Suraj-1541016149');

