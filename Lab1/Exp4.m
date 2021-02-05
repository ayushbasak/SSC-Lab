 % Experiment 1
 % Exercise 4
 % 05-02-2021
 % Ayush Basak 19ucc016 

t = 0.001:0.001:2;
x1 = [ones(1,2000)];
x2 = [zeros(1,1000),-ones(1,1000)];

x = [1,zeros(1,1999)];
RC = 1;
Ts = 0.001;

a = 1/(1+ (RC/Ts));
b =  -1/(1 + (Ts/RC));

y = [zeros(1,2000)];
y(1) = a*x(1);

for k = 2:2000
  y(k) = a*x(k) - b*y(k-1);
end
h = y;

x = x1+ x2;
y = conv(x,h);
stem(y);
xlabel("Time")
ylabel("Amplitude")
title("Ayush Basak 19ucc016")