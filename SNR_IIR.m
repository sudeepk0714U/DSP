fs = 1000;
f_signal = 50;
f_noise = 300;
duration = 1;

t = 0:1/fs:duration-1/fs;

signal = sin(2*pi*f_signal*t);
noise = 0.5*sin(2*pi*f_noise*t);
x = signal + noise;

order = 10;
cutoff = 60;
wn = cutoff/(fs/2);

[b,a] = butter(order, wn, 'low');

filtered_signal_iir = filter(b, a, x);
signal_power = sum(signal.^2)/length(signal);

noise_before = x - signal;
noise_power_before = sum(noise_before.^2)/length(noise_before);
noise_after = filtered_signal_iir - signal;
noise_power_after = sum(noise_after.^2)/length(noise_after);
SNR_before = 10*log10(signal_power / noise_power_before);
SNR_after  = 10*log10(signal_power / noise_power_after);

fprintf('SNR before filtering = %.2f dB\n', SNR_before);
fprintf('SNR after filtering  = %.2f dB\n', SNR_after);

% -------- PLOTTING --------
figure;

subplot(3,1,1)
plot(t, signal)
title('Original Signal (50 Hz)')
xlabel('Time (s)')
ylabel('Amplitude')
grid on

subplot(3,1,2)
plot(t, x)
title('Signal with Noise (50 Hz + 300 Hz)')
xlabel('Time (s)')
ylabel('Amplitude')
grid on

subplot(3,1,3)
plot(t, filtered_signal_iir)
title('Filtered Signal (IIR Butterworth Low Pass)')
xlabel('Time (s)')
ylabel('Amplitude')
grid on