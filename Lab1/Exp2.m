 % Experiment 1
 % Exercise 2
 % 05-02-2021
 % Ayush Basak - 19ucc016

x = [1,1,1,1,-1,-1,-1,-1,-1,1,1,1,1,-1,-1,-1,-1,1,1,1,1]
h1 = [1,1]
h2 = [1,-1]

hold on;
subplot(2,2,1)
stem(myconv(x,h1), 'r');
title("My Convolution on h1")
xlabel("time")
ylabel("Y")
subplot(2,2,2)
stem(myconv(x,h2), 'r');
title("My Convolution on h2")
xlabel("time")
ylabel("Y")
subplot(2,2,3)
stem(conv(x,h1), 'k');
title("Convolution on h1")
xlabel("time")
ylabel("Y")
subplot(2,2,4)
stem(conv(x,h2), 'k');
title("Convolution on h2")
xlabel("time")
ylabel("Y")
hold off;
saveas(gcf,'Exp2.png')