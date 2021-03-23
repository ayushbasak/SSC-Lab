%Ayush Basak
%19ucc016
function z = myidft(y,N)
z = zeros(1,N);
for n = 1:N
 for k = 1:N
 z(n) = z(n) + ((y(k)*exp(1i*(k-1)*(n-1)*2*pi/N))/N);
 end
end
end