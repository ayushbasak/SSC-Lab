T=2;
N=256;
t= linspace(0,2,N);
l=length(t);
for i=1:l   
    if(t(i)<=1)
        x1(i)= exp(-t(i)/2); 
    else
        x1(i)=0; 
    end
end
for j=1:l
    if(t(j)<T/2)
        x2(j)=1;
    else
        x2(j)=-1; 
    end
end
X1= mydfc(x1,N,10);
X2= mydfc(x2,N,10);
subplot(2,2,1);
stem(x1);
title('Plot of x1');
ylabel('Magnitude');
xlabel('Samples');
subplot(2,2,2);
stem(x2);
title('Plot of x2');
ylabel('Magnitude');
xlabel('Samples');
subplot(2,2,3);
stem(abs(X1));
title('Fourier Coefficients for x1');
ylabel('Magnitude');
xlabel('Samples');
subplot(2,2,4);
stem(abs(X2));
title('Fourier Coefficients for x2');
ylabel('Magnitude');
xlabel('Samples');
sgtitle('Ayush Basak 19ucc016')