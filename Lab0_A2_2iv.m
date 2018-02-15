load openloop60hertz
fs=1000;
x=openLoopVoltage;
t= (0:length(x)-1)/fs;
%subplot(2,1,1)
%plot(t,x)
%xlabel('time');
%ylabel('amplitude');
%title('Original Signal');
for i=1:5
 z=input('input any number: ');
 [b,a]=butter(z,[(59/500) (61/500)],'stop');
 y=filter(b,a,x);
 figure
 subplot(2,1,1)
plot(t,x)
xlabel('time');
ylabel('amplitude');
title('Original Signal');
 subplot(2,1,2)
 plot(t,y)
 xlabel('time');
ylabel('amplitude');
title('Band Stop Filterd Signal');
gtext('Suraj-1541016149');
end

    