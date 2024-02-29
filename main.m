clc, clearvars

x = linspace(0,10,1000);
y = sin(x);

baseline = 0.5;
c = y > baseline;

y1 = y(c);
x1 = asin(y1);
x2 = -(x1 - pi);
x3 = (x1 + 2*pi);
x4 = -(x1-3*pi);

plot(x,y)
hold on
plot([0 10], [baseline baseline], "r--")
hold on
plot(x1,y1, "Blue", LineWidth = 1)
hold on
plot(x2,y1, "Blue", LineWidth = 1)
hold on
plot(x3,y1, "Blue", LineWidth = 1)
hold on
plot(x4,y1, "Blue", LineWidth = 1)

xlabel("x")
ylabel("sin(x)")
title("sin(x)")
grid on

legend("sinx", "baseline", "above sin(x)")
disp("Percentage of values greater than" + " " + baseline + " = " + ...
    length(c(c == 1))*100/length(y) + "%")

    
