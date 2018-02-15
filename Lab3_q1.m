clc;clear;
f=tf([1],[1 3.2360680 5.2360680 5.2360680 3.2360680 1])
p=pole(f)
figure
pzmap(f);
gtext('Suraj-1541016149');
figure
bode(f);
gtext('Suraj-1541016149');
