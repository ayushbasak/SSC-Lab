 % Experiment 1 
 % Exercise 1
 % 31-01-2021
 % Ayush Basak - 19UCC016
 
t = -1:0.001:1
x1 = exp(-1 * t) .* cos(2 * pi * t)
x2 = 1 + 1.5 * cos(2 * pi * t) - 0.6 * cos(4 * pi * t)
x3 = abs(cos(2 * pi * t))

subplot(3,1,1)
plot(t,x1, 'r')
xlabel('time')
ylabel('x1')
title('Plot of x1 vs time')

subplot(3,1,2)
plot(t,x2, 'b')
xlabel('time')
ylabel('x2')
title('Plot of x2 vs time')

subplot(3,1,3)
plot(t,x3, 'k')
xlabel('time')
ylabel('x3')
title('Plot of x3 vs time')

saveas(gcf,'Exp1.png')