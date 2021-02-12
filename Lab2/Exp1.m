 % Experiment 2
 % Exercise 1
 % 12-02-2021
 % Ayush Basak - 19ucc016 

T0 = 4
Ts = 1/64
Fs = 1/Ts
N = T0/Ts
t = Ts:Ts:T0;
u = (t>=0)
x = exp(-2 * t) .* u
X = mydft(x,T0,Ts)
f = linspace(-Fs, Fs, N)
subplot(3,2,1)
stem(f,abs(X))
ylabel("Magnitude")
xlabel("Frequency")
title("Magnitude plot [DFT]")
subplot(3,2,2)
stem(f,angle(X))
ylabel("Phase")
xlabel("Frequency")
title("Phase Plot [DFT]")
subplot(3,2,3)
a = fft(x,N)
stem(f,abs(a))
ylabel("Magnitude")
xlabel("Frequency")
title("Magnitude Plot [FT]")
subplot(3,2,4)
stem(f,angle(a))
ylabel("Phase")
xlabel("Frequency")
title("Phase Plot [FT]")
subplot(3,2,5)
c = fftshift(abs(X))
stem(f,c)
ylabel("Magnitude")
xlabel("Frequency")
title("Magnitude Plot [DFT] {using fftshift}")
saveas(gcf, "Exp1.png")

