function [X]= mydfc(x,N,y)
    cons=2*pi/N;
    for k=1:y   
        X(k)=0;
        for n=1:N  
            X(k)= X(k)+ x(n)*exp((-1j*(k)*(n-1)*cons));
        end
        X(k)=X(k)/N;
    end
end