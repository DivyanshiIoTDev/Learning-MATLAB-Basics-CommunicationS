clc;
clear all;
close all;
n=input("Enter the total time for message signal");
fc=100;
fs=1000;
fm=1;
Am=0.5;
Ac=1;
t=(0:1/fs:n)';
k=1;
% t=zeros(1:n/fs);
% for i=0:1/fs:(n-1)/fs
%     t(i+i*1/fs)=i;
% end
x=Am*sin(2*pi*fm*t);
y=Ac*(1+k*x).*sin(2*pi*fc*t);
subplot(2,1,1);
plot(t,x);
title('message_signal');
xlabel('time');
ylabel('Amplitude');

subplot(2,1,2);
plot(t,y);
title('carrier signal');
ylabel('Amplitude');
xlabel('time');

%Demodulation function 
%
de_mod=amdemod()





