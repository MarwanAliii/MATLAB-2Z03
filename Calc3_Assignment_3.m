%question 1
h = 0.5; X = 3;
N = round(X/h);

t = zeros(1, N+1);
T = zeros(1, N+1);

t(1) = 0; T(1) = 29;

for n = 1:N
    t(n+1) = t(n) + h;
    T(n+1) = T(n) + h*(-11/10 * (T(n) - 20));
end

T(end)

h = 0.2; X = 3;
N = round(X/h);

t = zeros(1, N+1);
T = zeros(1, N+1);

t(1) = 0; T(1) = 29;

for n = 1:N
    t(n+1) = t(n) + h;
    T(n+1) = T(n) + h*(-11/10 * (T(n) - 20));
end

T(end)

clear;

%question 3

Texact = @(t) 20 + 9*exp(-11/10 * t);
N = 15;
maxErr = 1;

while maxErr >= 0.04017
    N = N+1;
    X = 3;
    h = X/N;
    
    t = zeros(1, N+1);
    T = zeros(1, N+1);
    
    t(1) = 0; T(1) = 29;
    
    for n = 1:N
        t(n+1) = t(n) + h;
        T(n+1) = T(n) + h*(-11/10 * (T(n) - 20));
    end
    
    maxErr = max(abs(T - Texact(t)));

end
disp(N)

%question 4
N = 138;
X = 5;
h = X/N;
g = 20 + 10*sin(10./(t.^2 + 0.5));

t = zeros(1, N+1);
T = zeros(1, N+1);

t(1) = 0; T(1) = 29;

for n = 1:N
    t(n+1) = t(n) + h;
    T(n+1) = T(n) + h*(-11/10 * (T(n) - g(n)));
end

[t' T' g']
plot(t, T, 'b', t, g, 'g')
title('Marwan Ali, 400450021');
legend({'T(t)','g(t)'},'Location','southeast');
xlabel('t');





