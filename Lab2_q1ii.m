clc;clear;
h=100*tf([1 1],[1 110 30]);
figure 
pzmap(h);
grid on
gtext('Suraj-1541016149');
figure
bode(h);
gtext('Suraj-1541016149');