clc
clear all
% syms x
% f=exp(-2*x^2) %our function
% ezplot(f,[-2,2]) % plot of our function
% FT=fourier(f) %Fourier transform
% ezplot(FT)
% title('Fourier Transform')
% pretty(FT)

fc=500;
fm=200;
fs_rate=2*fc;
fs_rate_band_pass=2*fm;
fs_rate_low_pass=2*fm;
t=0:0.0001:20;
T=10;
%For band pass signal
signal=5*(1+0.6*cos(2*pi*fm*t)).*cos(2*pi*fc*t);%use.*(matrix multiplication)
%by band pass function
subplot(3,2,1);
bandplot=bandpass(signal,[100,600],fs_rate_band_pass);
plot(t,bandplot);
title("Band pass signal");
xlabel("Time(s)");
ylabel("Amplitude");

%low-pass filter to the signal
subplot(3,2,2);
low_plot = lowpass(signal, fm, fs_rate_low_pass);
plot(t,low_plot);
title("Low Pass signal");
xlabel("Time(s)");
ylabel("Amplitude");

% Plot the original and low-pass filtered signals
subplot(3,2,3);
plot(t, signal);
title('Original Signal');
xlabel('Time (s)');
ylabel('Amplitude');





