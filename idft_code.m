clc;clear;close all;
XK=input('enter the sequence=');
N=input('enter the length of DFT=');
n=0:N-1;
k=0:N-1;
xn=idft(XK,N);
disp('the IDFT of given sequence is=')
disp(xn)

figure;
subplot(2,1,1);
stem(k,XK,'b','LineWidth',1.5);
title("Input sequence 1602-23-735-116");
xlabel("Discrete instants");
ylabel("Amplitude");

subplot(2,1,2);
stem(n,xn,'b','LineWidth',1.5);
title("IDFT sequence 1602-23-735-116");
xlabel("Discrete instants");
ylabel("Amplitude");



