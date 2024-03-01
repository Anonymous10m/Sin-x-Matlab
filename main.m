clc, clearvars

x_end = 2.5*pi; %the point at which the x values end.
x = linspace(0,x_end,1000);
y = cos(x);

baseline = 0; %the point to be used above which percentage is to be calculated.
c = y > baseline;
y1 = y(c);

if y == sin(x)
    x1 = asin(y1);
    x2 = -(x1 - pi);
    x3 = (x1 + 2*pi);
    x4 = -(x1-3*pi);
    
    plot(x,y)
    hold on
    plot([0 x_end], [baseline baseline], "r--")
    hold on
    plot(x1,y1, "Blue", LineWidth = 1)
    hold on
    plot(x2,y1, "Blue", LineWidth = 1)
    hold on
    plot(x3,y1, "Blue", LineWidth = 1)
    hold on
    plot(x4,y1, "Blue", LineWidth = 1)
elseif y == cos(x)
    x1 = acos(y1);
    x2 = -(x1 - 2*pi);
    x3 = (x1 + 2*pi);
    x4 = -(x1-3*pi);

    plot(x,y)
    hold on
    plot([0 x_end], [baseline baseline], "r--")
    hold on
    plot(x1,y1, "Blue", LineWidth = 1)
    hold on
    plot(x2,y1, "Blue", LineWidth = 1)
    hold on
    plot(x3,y1, "Blue", LineWidth = 1)
end    

xlabel("x")
ylabel("sin(x)/cos(x)")
title("sin(x)/cos(x)")
grid on

legend("sin(x)/cos(x)", "baseline", "above sin(x)/cos(x)")


disp("Percentage of values greater than" + " " + baseline + " = " + ...
    length(c(c == 1))*100/length(y) + "%")

    
