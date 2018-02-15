clc;clear;close all;
[x,y]=myButterworth(1,35,1000,3500);
f=tf(x,y);
p=pole(f);
figure
pzmap(f);
grid on
gtext('Suraj-1541016149');
figure
bode(f);
grid on
gtext('Suraj-1541016149');
