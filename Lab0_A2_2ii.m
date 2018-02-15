clc;
clear all;
close all;
fs=1000;
[b,a]=butter(5,[(59/500) (61/500)],'stop');
freqz(b,a,fs)
xlabel('time');
ylabel('amplitude');
title('Band Stop Filter ');
gtext('Suraj-1541016149');