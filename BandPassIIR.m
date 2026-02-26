%IIR LPF Filter Design
clc;clear; close all;
rp=input('Enter the pass band ripple: ');
rs=input('Enter the stop band attenuation: ');
wp=input('Enter the pass band edge frequency: ');
ws=input('Enter the stop band edge frequency: ');
fs=input('Enter the sampling frequency: ');
w1=2*wp/fs;
w2=2*ws/fs;
[n1 wn1]=buttord(w1,w2,rp,rs);
disp('Order of Butterworth Filter');
disp(n1);
[b1 a1]=butter(n1,wn1,'stop');
hz=tf(b1,a1);
[h1 om1]=freqz(b1,a1);
m1=20*log10(abs(h1));
an1=angle(h1);

[n2 wn2]=cheb1ord(w1,w2,rp,rs);
[b2 a2]=cheby1(n2,rp,wn2,'stop');
hz2=tf(b2,a2)
disp('Order of chebyschev type I filter');
disp(n1);
[n3 wn3]=cheb2ord(w1,w2,rp,rs);
[b3 a3]=cheby2(n3,rs,wn3,'stop');
hz3=tf(b3,a3)
disp('Order of chebyschev type II filter');
disp(n2);
w=0:0.01:pi;
[h2 om2]=freqz(b2,a2); m2=20*log10(abs(h2)); an2=angle(h2);
[h3 om3]=freqz(b3,a3); m3=20*log10(abs(h3)); an3=angle(h3);
plot(om1/pi,m1,'--',om2/pi,m2,'r:',om3/pi,m3,'k-.','LineWidth',2); grid on;
legend('Butterworth','Chebyschev Type-I','Chebyshev Type-II');
ylabel('Gain in dB');
xlabel('Normalized frequency');
title('IIR lowpass filter');
axis([0 1 -50 5]);
