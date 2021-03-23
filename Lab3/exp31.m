% Ayush Basak
% 19ucc016
N = 128;
fs = 8000;
ts = 1/fs;
to = N*ts;
t = ts:ts:to;
f = linspace(-fs,fs,N);

x1 = cos(2000*pi*t) + cos(800*pi*t);
x2 = ones (1,4);

y1 = mydft(x1,N);
z1 = myidft(y1,N);
z2 = ifft(y1);

y2 = mydft(x2,N);
z3 = myidft (y2,N);
z4 = ifft(y2);

subplot(2,1,1);
stem(f,fftshift(abs(y1)));
ylabel('Magnitude');
xlabel('Frequency');
title('Magnitude plot of cos(2000*pi*t) + cos(800*pi*t) using mydft()');

subplot(2,1,2);
stem(f,angle(y1));
ylabel('Phase');
xlabel('Frequency');
title('Phase plot of cos(2000*pi*t) + cos(800*pi*t)');
sgtitle('Ayush Basak 19ucc016');

figure;

subplot(2,1,1);
stem(f,z1);
ylabel('Magnitude');
xlabel('Frequency');
title('IDFT of x(t) using user defined myidft()');

subplot(2,1,2);
stem(f,z2);
ylabel('Magnitude');
xlabel('Frequency');
title('IDFT of x(t) using inbuilt ifft()');
sgtitle('Ayush Basak 19ucc016');

figure;

subplot(2,1,1);
stem(f,fftshift(abs(y2)));
ylabel('Magnitude');
xlabel('Frequency');
title('Magnitude plot of [1,1,1,1] using mydft()');

subplot(2,1,2);
stem(f,angle(y2));
ylabel('Phase');
xlabel('Frequency');
title('Phase plot of [1,1,1,1]');
sgtitle('Ayush Basak 19ucc016');

figure;

subplot(2,1,1);
stem(f,z3);
ylabel('Magnitude');
xlabel('Frequency');
title('IDFT of [1,1,1,1] using user defined myidft()');

subplot(2,1,2);
stem(f,z4);
ylabel('Magnitude');
xlabel('Frequency');
title('IDFT of [1,1,1,1] using inbuilt ifft()');
sgtitle('Ayush Basak 19ucc016');