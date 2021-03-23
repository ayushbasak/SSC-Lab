t = 0:0.005:5;
Am = 5;
Ac = 5;
fm = 1;
fc = 20;

message = Am * cos(2*pi*fm*t);
y_DSBSC = message .* cos (2 * pi * fc * t);

subplot(3,1,1)
plot(t, message);
xlabel("Time");
ylabel("Amplitude");
title("Message Signal");

subplot(3,1,2)
plot(t, y_DSBSC);
xlabel("Time");
ylabel("Amplitude");
title("Modulated Signal");

subplot(3,1,3)
y_prod_mod = y_DSBSC .* cos(2 * pi * fc * t);
fs = 10*fc;
[b,a] = butter(10,2 * fc/fs, 'low');
y_recovered = filter(b,a,y_prod_mod);
plot(t, y_recovered);
title("Demodulated");
xlabel("Time")
ylabel("Amplitude")
figure()
N = length(t);
y = fft(y_DSBSC, N);
z = y(1: (floor(N/2) + 1));
k=0:(floor(N/2));
stem(k, abs(z))
xlabel("Frequency");
ylabel("Amplitude");
title("Frequency Domain Analysis of DSB SC")
