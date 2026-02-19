clc; clear; close all;
x = input('Enter sequence x : ');
h = input('Enter sequence h: ');
Nx = length(x);
Nh = length(h);
if Nx ~= Nh
    N = max(Nx, Nh);
    x = [x zeros(1, N - Nx)];
    h = [h zeros(1, N - Nh)];
    fprintf('Sequences zero-padded to length %d for circular convolution.\n', N);
else
    N = Nx;  
end
X = fft(x, N);
H = fft(h, N);
Y = X .* H;
y = ifft(Y, N);
disp('Circular convolution result using DFT/IDFT:');
disp(y);
figure;
subplot(3,1,1);
stem(0:N-1, x, 'filled');
title('Sequence x[n]');
xlabel('n'); ylabel('x[n]');
grid on;

subplot(3,1,2);
stem(0:N-1, h, 'filled');
title('Sequence h[n]');
xlabel('n'); ylabel('h[n]');
grid on;

subplot(3,1,3);
stem(0:N-1, real(y), 'filled'); 
title('Circular Convolution y[n] = x[n] ⊛ h[n]');
xlabel('n'); ylabel('y[n]');
grid on;
