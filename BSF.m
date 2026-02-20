clc;
clear;
close all;

N   = input('Enter Filter Order (N): ');
fc1 = input('Enter Lower Cutoff Frequency (Hz): ');
fc2 = input('Enter Upper Cutoff Frequency (Hz): ');
fs  = input('Enter Sampling Frequency (Hz): ');

Wn = [fc1 fc2]/(fs/2); 


h_rect   = fir1(N, Wn, 'stop', rectwin(N+1));
h_hamm   = fir1(N, Wn, 'stop', hamming(N+1));
h_hann   = fir1(N, Wn, 'stop', hann(N+1));
h_black  = fir1(N, Wn, 'stop', blackman(N+1));
h_tri    = fir1(N, Wn, 'stop', triang(N+1));

beta = 5;
h_kais   = fir1(N, Wn, 'stop', kaiser(N+1, beta));

[H1,f] = freqz(h_rect,1,1024,fs);
H2 = freqz(h_hamm,1,1024,fs);
H3 = freqz(h_hann,1,1024,fs);
H4 = freqz(h_black,1,1024,fs);
H5 = freqz(h_tri,1,1024,fs);
H6 = freqz(h_kais,1,1024,fs);

figure;
plot(f,20*log10(abs(H1)+eps),'r','LineWidth',1.2); hold on;
plot(f,20*log10(abs(H2)+eps),'b','LineWidth',1.2);
plot(f,20*log10(abs(H3)+eps),'g','LineWidth',1.2);
plot(f,20*log10(abs(H4)+eps),'k','LineWidth',1.2);
plot(f,20*log10(abs(H5)+eps),'m','LineWidth',1.2);
plot(f,20*log10(abs(H6)+eps),'c','LineWidth',1.2);

grid on;
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('BSF using Different Windows 1602-23-735-116');

legend('Rectangular','Hamming','Hann','Blackman','Triangular','Kaiser');