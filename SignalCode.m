clc;
clear;
close all;
n=-10:1:10;
X1=1;X2=0;
x_del=X1.*(n==0)+X2.*(n~=0);
subplot(2,2,1)
stem(n,x_del,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time Impulse signal 1602-23-735-116')
grid on;
x_unit=X1.*(n>=0)+X2.*(n<0);
subplot(2,2,2)
stem(n,x_unit,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time unit step signal 1602-23-735-116')
grid on;
x_ramp=n.*(n>=0)+X2.*(n<0);
subplot(2,2,3)
stem(n,x_ramp,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time ramp signal 1602-23-735-116')
grid on;
x_para=(n.^2)/2
subplot(2,2,4)
stem(n,x_para,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time parabolic signal 1602-23-735-116')
grid on;
figure;
n=0:pi/20:2*pi*2;
A=5;
x_sin=A*sin(n);
subplot(2,1,1)
stem(n,x_sin,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time sine signal 1602-23-735-116')

x_cos=A*cos(n);
subplot(2,1,2)
stem(n,x_cos,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time cosine signal 1602-23-735-116')
figure;
A=5;
x_sawtooth=A*sawtooth(n);
subplot(3,1,1)
stem(n,x_sawtooth,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time sawtooth signal 1602-23-735-116')

x_sawtooth=A*sawtooth(n,0.5);
subplot(3,1,2)
stem(n,x_sawtooth,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time symmetric sawtooth signal 1602-23-735-116')

x_sawtooth=A*sawtooth(n,0.6);
subplot(3,1,3)
stem(n,x_sawtooth,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time Asymmetric sawtooth signal 1602-23-735-116')
figure;

x_sq=A*square(n);
subplot(3,1,1)
stem(n,x_sq,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time square wave signal 1602-23-735-116')

x_sq1=A*square(n,60);
subplot(3,1,2)
stem(n,x_sq1,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time asymmetric square wave signal 1602-23-735-116')

x_sq2=A*square(n,40);
subplot(3,1,3)
stem(n,x_sq2,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time asymmetric square wave signal 1602-23-735-116')
figure;

n=0:0.15:10;
a=2;
x_exp1=exp(a.*n);
subplot(2,1,1)
stem(n,x_exp1,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time exponential signal 1602-23-735-116')

x_exp2=exp(-1*a.*n);
subplot(2,1,2)
stem(n,x_exp2,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time exponential signal 1602-23-735-116')
figure;

n=-2*pi*2:pi/20:2*pi*2;
x_sinc=sinc(n);
subplot(3,1,1)
stem(n,x_sinc,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time sinc signal 1602-23-735-116')


n=-10:1:10;
X3=-1;
x_signum=X1.*(n>0)+X2.*(n==0)+X3.*(n<0)
subplot(3,1,2)
stem(n,x_signum,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time signum signal 1602-23-735-116')

n=-10:0.1:10;
a=2;
x_gauss=exp(-1*a.*abs(n.^2));
subplot(3,1,3)
stem(n,x_gauss,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time gaussian signal 1602-23-735-116')
figure;

n=-10:10;
X1=1;X2=0;
A=1;
x_rect=X1.*(abs(n)<=10)+X2.*(abs(n)>10);
subplot(2,1,1)
stem(n,x_rect,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time absolute rectangle signal 1602-23-735-116')
axis([-15 15 -0.5 1.5]);

A=10;
X1=1-abs(n)/A;X2=0;
x_tri=X1.*(abs(n)<=10)+X2.*(abs(n)>10);
subplot(2,1,2)
stem(n,x_tri,'r',LineWidth=1.5)
xlabel('no. of samples')
ylabel('amplitude')
title('Discret time absolute triangle signal 1602-23-735-116')
axis([-15 15 -0.5 1.5]);





