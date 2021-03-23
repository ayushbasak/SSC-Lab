T=2;
N=256;
t= linspace(0,2,N);
l=length(t);
w=2*pi/T;
m=19;
n=99;
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
D1= myfft1(x1,N,19);
D2= myfft1(x2,N,19);
D3=myfft1(x1,N,99);
D4=myfft1(x2,N,99);
y1=zeros(1,256);
y2=zeros(1,256);
for k= -m:m   
    y1= y1+D1(k+m+1)*exp(1j*k*w*t); 
    y2= y2+D2(k+m+1)*exp(1j*k*w*t);
end
subplot(2,2,1);
plot(t,y1);
title('x1 signal for M=19');
ylabel('Magnitude');
xlabel('Samples');
subplot(2,2,2);
plot(t,y2);
title('x2 signal for M=19');
ylabel('Magnitude');

xlabel('Samples');
y3=zeros(1,256);
y4=zeros(1,256);
for k= -n:n 
    y3= y3+D3(k+n+1)*exp(1j*k*w*t);
    y4= y4+D4(k+n+1)*exp(1j*k*w*t);
end
subplot(2,2,3);
plot(t,y3);
title('x1 signal for M=99');
ylabel('Magnitude');
xlabel('Samples');
subplot(2,2,4);
plot(t,y4);
title('x2 signal for M=99');
ylabel('Magnitude');
xlabel('Samples');
sgtitle('Ayush Basak 19ucc016');