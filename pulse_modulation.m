fc=100; 
fm=1;
Ac=1;
Fs=1000;  %sampling frequency
t=0:1/Fs:0.1;
T=1/fs;   %Time period of the required signal 
message=sin(2*pi*fm*t);

% PWM signal initialization
pwmSignal = zeros(size(t));

% Generate PWM by comparing message with sawtooth carrier
carrier = sawtooth(2*pi*fc*t, 0.5);  % Triangular carrier wave

for i = 1:length(t)
    if message(i) >= carrier(i)
        pwmSignal(i) = Ac;  % Pulse high
    else
        pwmSignal(i) = 0;   % Pulse low
    end
end

% Plot Message and PWM signal
subplot(2,1,1);
plot(t, message, 'b', 'LineWidth', 1.5);
title('Message signal (normalized)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
xlim([0 0.05]);

subplot(2,1,2);
plot(t, pwmSignal, 'r', 'LineWidth', 1);
title('PWM Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
xlim([0 0.05]);




