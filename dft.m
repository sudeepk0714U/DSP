function[XK]=dft(xn,N)
L=length(xn);
xn=[xn zeros(1,N-L)];
for k=0:N-1
    for n=0:N-1
        p=exp(-1i*2*pi*n*k/N);
        W(k+1,n+1)=p;
    end
    XK=W*xn';
end   