%Ayush Basak
%19ucc016
function [y] = mydft(x,N)
L = length(x);
x = [x zeros(1,N-L)];
for k = 1:N
    y(k) = 0;
    for n = 1:N
        y(k) = y(k) + x(n)*exp(-1j*2*pi*(n-1)*(k-1)/N);
    end
end
end