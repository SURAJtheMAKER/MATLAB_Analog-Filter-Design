clc;clear;
h=-100*tf([1 0],[1 12 21 10]);
figure 
pzmap(h);
grid on
gtext('Suraj-1541016149');
figure
bode(h);
gtext('Suraj-1541016149');