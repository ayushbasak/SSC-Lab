% Ayush Basak
% 19ucc016
f = 1;
fs = 200;
N = 1024;
ts = 1/fs;
to = N*ts;
t = f:f:N;
x = sin(2*pi*f*t/fs);
w = rand(1,1024);
y = x+w;
ol = xcorr(x,y);
o2 = mycorr(x,y);
subplot(2,1,1);
stem(ol);
ylabel('Time');
xlabel('Frequency');
title('Magnitude plot using xcorr()');
subplot(2,1,2);
stem(o2);
ylabel('Time');
xlabel('Frequency');
title('Magnitude plot using mycorr()');
sgtitle('Ayush Basak 19ucc016');