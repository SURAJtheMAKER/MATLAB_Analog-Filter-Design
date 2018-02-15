clc;
clear all;
close all;
load openloop60hertz
fs=1000;
x=openLoopVoltage;
t= (0:length(x)-1)/fs;
plot(t,x)
xlabel('time');
ylabel('amplitude');
title('Open Voltage Signal');
gtext('Suraj-1541016149')