t = 0:0.0001:0.05;
Am = 10;
fm = 200;
fc = 2000;

subplot(8,1,1)
message = Am * cos (2 * pi * fm * t);
plot(t, message)
xlabel("Time");
ylabel("amplitude");
title("Message Signal")

mu = 0.3;

subplot(6,1,2)
carrier = message/mu;
plot(t, carrier);
xlabel("Time");
ylabel("amplitude");
title("Carrier Signal")


% mu = 0.3
mu = 0.3;
Ac = Am/mu;

subplot(6,1,3)
y_AM = (Ac * (1 + mu * cos (2 * pi * fm * t))) .* cos(2 * pi * fc * t);
temp = y_AM;
temp1 = y_AM;
plot(t, y_AM)
xlabel("Time");
ylabel("amplitude");
title("Modulated Signal (30 %)")

% mu = 0.5
mu = 0.5;
Ac = Am/mu;

subplot(6,1,4)
y_AM = (Ac * (1 + mu * cos (2 * pi * fm * t))) .* cos(2 * pi * fc * t);
temp2 = y_AM;
plot(t, y_AM)
xlabel("Time");
ylabel("amplitude");
title("Modulated Signal (50 %)")

% mu = 1
mu = 1;
Ac = Am/mu;

subplot(6,1,5)
y_AM = (Ac * (1 + mu * cos (2 * pi * fm * t))) .* cos(2 * pi * fc * t);
temp3 = y_AM;
plot(t, y_AM)
xlabel("Time");
ylabel("amplitude");
title("Modulated Signal (100 %)")

subplot(6,1,6)
demodulated = abs(hilbert(temp));
plot(t, demodulated);
xlabel("Time");
ylabel("amplitude");
title("Dedulated Signal (30 %)")

% Overmodulated
figure()
mu = 1.3;
Ac = Am/mu;
y_AM = (Ac * (1 + mu * cos (2 * pi * fm * t))) .* cos(2 * pi * fc * t);
plot(t, y_AM);
xlabel("Time");
ylabel("amplitude");
title("Modulated Signal (130 %)")


figure()
subplot(3,1,1)
N = length(t);
y = fft(temp1, N);
z = y(1: (floor(N/2) + 1));
k=0:(floor(N/2));
stem(k, abs(z))
xlabel("Frequency");
ylabel("Amplitude");
title("Frequency Domain Analysis of DSB FC 30%")

subplot(3,1,2)
N = length(t);
y = fft(temp2, N);
z = y(1: (floor(N/2) + 1));
k=0:(floor(N/2));
stem(k, abs(z))
xlabel("Frequency");
ylabel("Amplitude");
title("Frequency Domain Analysis of DSB FC 50%")

subplot(3,1,3)
N = length(t);
y = fft(temp3, N);
z = y(1: (floor(N/2) + 1));
k=0:(floor(N/2));
stem(k, abs(z))
xlabel("Frequency");
ylabel("Amplitude");
title("Frequency Domain Analysis of DSB FC 100%")