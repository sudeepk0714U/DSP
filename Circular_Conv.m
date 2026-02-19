clc;
clear;
close all;
x=input("Enter x ");
h=input("Enter h ");
N1=length(x);
n1 = 0:N1-1;
N2=length(h);
n2 = 0:N2-1;
N=max(N1,N2);
n=0:N-1;
if N1 > N2
    h = [h,zeros(1,N1-N2)]
else
    x = [x,zeros(1,N2-N1)]
end
y=circular_conv_matrix(x,h)
figure('Color','w');
subplot(3,1,1);
stem(n1,x(1:N1),'filled','LineWidth',1.5);
grid on;
title('Input Signal x[n]','FontSize',12,'FontWeight','bold');
xlabel('n');
ylabel('Amplitude');
xlim([min(n1)-1 max(n1)+1]);


subplot(3,1,2);
stem(n2,h(1:N2),'filled','r','LineWidth',1.5);
grid on;
title('Impulse Response h[n]','FontSize',12,'FontWeight','bold');
xlabel('n');
ylabel('Amplitude');
xlim([min(n2)-1 max(n2)+1]);


subplot(3,1,3);
stem(n,y,'filled','k','LineWidth',1.5);
grid on;
title('Circular Convolution Output y[n]','FontSize',12,'FontWeight','bold');
xlabel('n');
ylabel('Amplitude');
xlim([min(n)-1 max(n)+1]);

sgtitle('Circular Convolution using Matrix Method (1602-23-735-116)','FontSize',14,'FontWeight','bold');
