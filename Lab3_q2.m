clc;clear;
f=tf([1],[1 3.8637033 7.4641016 9.1416202 7.4641016 3.8637033 1 ])
p=pole(f)
figure
grid on
pzmap(f);
gtext('Suraj-1541016149');
figure

bode(f);
gtext('Suraj-1541016149');
