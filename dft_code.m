clc;
clear;
close all;
xn = input('Enter the input sequence x[n] = ');
N  = input('Enter the length of DFT N = ');

xn = xn(:).';          
L = length(xn);
if L < N
    xn = [xn zeros(1, N-L)];
else
    xn = xn(1:N);
end

n = 0:N-1;
k = 0:N-1;
Xk = dft(xn, N);

disp('The DFT of the given sequence is:');
disp(Xk);


magX = abs(Xk);
phaseX = angle(Xk);


figure('Name','DFT Analysis','NumberTitle','off');

subplot(3,1,1);
stem(n, xn, 'filled','LineWidth',1.5);
grid on;
title('Input Sequence x[n]');
xlabel('n');
ylabel('Amplitude');

subplot(3,1,2);
stem(k, magX, 'filled','LineWidth',1.5);
grid on;
title('Magnitude Spectrum |X[k]| 1602-23-735-116');
xlabel('k');
ylabel('Magnitude');

subplot(3,1,3);
stem(k, phaseX, 'filled','LineWidth',1.5);
grid on;
title('Phase Spectrum ∠X[k] 1602-23-735-116');
xlabel('k');
ylabel('Phase (radians)');
