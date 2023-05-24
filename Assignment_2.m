% question 1
max_value = 0;
for x = -3:0.1:3
    for y = -3:0.1:3
        f = (x - 3*y)/ ((x.^2) +(y.^2)+ (3*x) - (3*y) + 45);
        if (f > max_value)
            max_value = f;
            xMax = x;
            yMax= y;
        end
    end
end
xMax
yMax

% question 2
[x y] = meshgrid(-5:0.2:5, -5:0.2:5);

a = ones(size(x));
f = x.*(exp(-(x.^2)/10) + y - 1/2).*sin((x.^2)/10 + 4);

ascaled = a./sqrt(a.^2+f.^2);
fscaled = f./sqrt(a.^2+f.^2);

quiver(x,y,ascaled,fscaled)
axis equal;
title('Direction Field Example for y''(x) = x(exp(-x^2 /10) + y - 1/2)sin(x^2/10 + 4)');
xlabel('x');
ylabel('y');

% question 4
[x, y] = meshgrid(-2:0.2:2, 4:0.2:8);

a = ones(size(x));
f = (1/5) * y - exp(-x);

ascaled = a ./ sqrt(a.^2 + f.^2);
fscaled = f ./ sqrt(a.^2 + f.^2);

quiver(x, y, ascaled, fscaled);
hold on;

% Generate precise values (h = 0.001)
x_exact = -2:0.001:2;
y_exact = (5/6) * exp(-x_exact) + (31/6) * exp(1/5 * x_exact);

plot(x_exact, y_exact, 'LineWidth', 2, 'color', 'r');
hold off;

% Set axis limits
xlim([-2 2]);
ylim([4 8]);

title('Marwan Ali, 400450021');
xlabel('x');
ylabel('y');
