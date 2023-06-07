% stepping size
h = 0.01;
% desired max value calulation
X = 6;
% # of steps
N = round(X/h)

% preallocate memory for the arrays
x = zeros(1,N+1);
y = zeros(1,N+1);

% initial values (index starts at 1 in matlab)
x(1) = 0;
y(1) = 6.99;

%recursive loop
for n = 1:N
  x(n+1) = x(n) + h;
  y(n+1) = y(n) + h*((-y(n)) / sqrt(7^2 - (y(n))^2));
end


plot(x, y, 'r'); % plotting
title('Marwan Ali, 400450021'); % figure's title,
legend('Graph of the path of the trailer', ...
       'Location','NorthEast'); % legend
xlabel('x'); ylabel('y'); % and axis labels


