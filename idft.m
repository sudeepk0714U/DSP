function[xn]=idft(XK,N)

for k=0:N-1
    for n=0:N-1
        p=(exp(1i*2*pi*n*k/N))/N;
        W(n+1,k+1)=p;
    end
    xn=XK*W;
end
end