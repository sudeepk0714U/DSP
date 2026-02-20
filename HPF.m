clc;
clear;
close all;

N  = input('Enter Filter Order (N): ');
fc = input('Enter Cutoff Frequency (Hz): ');
fs = input('Enter Sampling Frequency (Hz): ');

Wn = fc/(fs/2); 

h_rect   = fir1(N, Wn, 'high', rectwin(N+1));
h_hamm   = fir1(N, Wn, 'high', hamming(N+1));
h_hann   = fir1(N, Wn, 'high', hann(N+1));
h_black  = fir1(N, Wn, 'high', blackman(N+1));
h_tri    = fir1(N, Wn, 'high', triang(N+1));

beta = 5;  
h_kais   = fir1(N, Wn, 'high', kaiser(N+1, beta));


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
title('HPF using Different Windows 1602-23-735-116');

legend('Rectangular','Hamming','Hann','Blackman','Triangular','Kaiser');