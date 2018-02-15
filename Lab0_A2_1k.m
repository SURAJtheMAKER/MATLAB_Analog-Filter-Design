clc
clear all;
y=5*randn(2000,1);
x=fft(y);
z=fftshift(x);
l=length(x);
subplot(2,1,1)
plot(y)
xlabel('Time');
ylabel('Amplitude');
title('Random Noise Signal')
subplot(2,1,2)
plot((-(l-1)/2):((l-1)/2),abs(z));
xlabel('Frequency');
ylabel('Amplitude');
title('Random Noise Signal Frequency Spectrum')