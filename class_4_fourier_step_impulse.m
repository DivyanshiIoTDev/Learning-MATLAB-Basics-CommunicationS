%using abs(x)-->used to take absolute value
%Plotting discrete fourier tarnsform
%without fft function
% clc;
% clear all;
% close all;
% N=input("Enter the number of elements");
% arr=zeros(1,N);
% for i=1:N
%     arr(i)=input(['Enter the element #' num2str(i) ':'])
% end
% tab=array2table(arr);
% disp(tab);
% 
% X=zeros(1,N);
% 
% for k= 0:N-1
%     for n=0:N-1
%         X(k+1)=X(k+1)+arr(n+1)*exp(-1i*2*pi*k*n/N)
%     end
% end
% subplot(1,2,1);
% disp(X);
% stem(0:N-1,abs(X),'filled','r');
% xlabel("Discrete values");
% ylabel("Corresponding DFT");
% hold off;
% 
% %using fft function
% % %define sampling frequency
% % %define time based on sampling frequency
% % 
% % %it is needed to add sampling frequency,time period for continouos time
% % %signal for sample timing and accurate representation
% 
% subplot(1,2,2);
% Fs=10;
% T=1/Fs;
% L=220;
% t=(1:L)*T %creates a vector for time
% f=50;
% signal=sin(2*pi*f*t);
% stem(0:L-1,signal,'filled','b');
% disp(signal);
% 
% 
amplitude scaling
x=[1,2,3,4,5,6];
t=-10:0.1:10;
y=t*2;
plot(t,y);
un_step=t>=0;
ramp=t*unstep;
hold on;
plot(t, ramp, 'g');
xlabel('Time');
ylabel('Amplitude');
title('Ramp Function');
grid on;
hold off;
t=0:pi/100:2*pi;

y=sin(t);
t=t-1;

plot(t,y);
