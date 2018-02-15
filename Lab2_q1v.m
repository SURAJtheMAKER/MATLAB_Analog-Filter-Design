clc;clear;
h=30*tf([1 10],[1 3 50]);
figure 
pzmap(h);
grid on
gtext('Suraj-1541016149');
figure
bode(h);
gtext('Suraj-1541016149');