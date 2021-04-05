% Ayush Basak 19ucc016
% Experiment 8
% Exercise 1

t = 0:0.001:1;
Ac = 1;
Am = 1;
fc = 100;
fm = 10;
Beta = 7;

message = Am * cos(2*pi* fm * t);
carrier = Ac * cos(2*pi* fc * t);
y_fm = Ac * cos(2*pi*fc*t  + Beta*sin(2*pi*fm*t));
plot(t, carrier);

subplot(4,1,1);
plot(t, message);
xlabel("time");
ylabel("amplitude");
title("Message Signal");

subplot(4,1,2);
plot(t, carrier);
xlabel("time");
ylabel("amplitude");
title("Carrier Signal");

subplot(4,1,3);
plot(t, fft(y_fm));
xlabel("time");
ylabel("amplitude");
title("Frequency Modulated Signal")

fs = 500; %sampling frequency
del_f = Beta * fm;
y_dm = fmdemod(y_fm, fc, fs, del_f);
cutoff = 200;
Normalized = (2*cutoff)/fs;
order = 5;
[b,a] = butter(order, Normalized, 'low');
y_dm_filtered = filter(b,a,y_dm);

subplot(4,1,4);
plot(t, y_dm_filtered);
xlabel("time");
ylabel("amplitude");
title("Demodulated Signal")

sgtitle("Ayush Basak - 19ucc016")