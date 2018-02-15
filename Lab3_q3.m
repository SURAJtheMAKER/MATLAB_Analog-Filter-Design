clc;clear;
f=tf([1],[1 2.6131259 3.4142136 2.6131259 1])
p=pole(f)
figure
pzmap(f);
grid on
gtext('Suraj-1541016149');
figure
bode(f);
grid on
gtext('Suraj-1541016149');
