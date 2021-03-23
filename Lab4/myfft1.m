function [D]= myfft1(x,N,m)
    q= 2*pi/N;
    for k= -m:m  
        D(k+m+1)=0;
        for n=1:N
            D(k+m+1)= D(k+m+1)+ x(n)*exp(-1j*k*q*(n-1));
        end
        D(k+m+1)=D(k+m+1)/N;
    end
end