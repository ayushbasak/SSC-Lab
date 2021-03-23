% this code will illustrate use of butterworth filter
fs=1000;
ts=1/fs;
fny=fs/2;
duration=10;
t=0:ts:duration-ts;
Samples=length(t);

amp1=20;
amp2=30;
f1=20;
f2=2;
x1=amp1*sin(2*pi*f1*t);
x2=amp2*sin(2*pi*f2*t);
xn=x1+x2;

figure;
subplot(3,1,1);
plot(t,x1);
xlabel('time(t)->');
ylabel('x1(t)->');
title('plot of x1(t)');
subplot(3,1,2);
plot(t,x2);
xlabel('time(t)->');
ylabel('x2(t)->');
title('plot of x2(t)');
subplot(3,1,3);
plot(t,xn);
xlabel('time(t)->');
ylabel('x1+x2');
title('sum of x1(t) and x2(t)');