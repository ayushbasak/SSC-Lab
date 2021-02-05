 % Experiment 1
 % Exercise 3
 % 05-02-2021
 % Ayush Basak - 19ucc016
RC = 1
Ts = 0.001
t = 0:Ts:2-Ts

a = 1/(1+(RC/Ts))
b = -1/(1+(Ts/RC))

x1 = [t>0]
x2 = -1* [t>1]
x = x1+ x2;

y = zeros(1,2000)
y(1) = a*x(1)
for k = 2:1:2000
  y(k) = a*x(k) - b*y(k-1);
endfor
plot(t,y);
xlabel("Time")
ylabel("Amplitude")
title("Ayush Basak 19ucc016")

saveas(gcf, "Exp3.png")

