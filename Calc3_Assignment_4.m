%Problem 1
h = 0.1;
X = 10;
N = round(X/h);

t = zeros(1,N+1);
x = zeros(1,N+1);
y = zeros(1,N+1);

y(1) = 0;
x(1) = 0.7;
E_0 = 0.4;
k_1 = 0.4;
k_1_inv = 0.5;
k_2 = 0.3;

for n = 1:N
    t(n+1) = t(n) + h;
    x(n+1) = x(n) + h*((-k_1 * (E_0-y(n))*x(n) + (k_1_inv)*y(n)));
    y(n+1) = y(n) + h*((k_1)*(E_0 -y(n))*x(n) - (k_1_inv+k_2)*y(n));

end

x

%Problem 2
h = 0.02;
X = 5;
N = round(X/h);

t = zeros(1,N+1);
x = zeros(1,N+1);
u = zeros(1,N+1);
u(1) = 5;
x(1) = 11;
lambda = 2;
omega = 5;

for n = 1:N
    t(n+1) = t(n) + h;
    u(n+1) = u(n) + h*(-2 * lambda * u(n)- (omega^2)*x(n));
    x(n+1) = x(n) + h*(u(n));
end
plot(t,x,'b',t,u,'r');
title("Marwan Ali, 400450021");
legend("Displacement, x(t)","Velocity, U(t)");
clear;

%problem 3
h = 0.02;
X = 5;
N = round(X/h);

t = zeros(1,N+1);
x = zeros(1,N+1);
u = zeros(1,N+1);

u(1) = 5;
x(1) = 11;
lambda =2;
omega = 5;
negative_check = 1;
while (negative_check > 0)
    negative_check = 0;
    lambda = lambda + 0.02;
    for n = 1:N
        t(n+1) = t(n) + h;
        u(n+1) = u(n) + h*(-2 * lambda * u(n)- (omega^2)*x(n));
        x(n+1) = x(n) + h*(u(n));
        if (x(n+1) <0)
            negative_check= negative_check +1;
        end
    end
  
end

lambda
clear;

%problem 4
h = 0.01;
X = 5;
N = round(X/h);

t = zeros(1,N+1);
x = zeros(1,N+1);
u = zeros(1,N+1);
x(1) = deg2rad(70);
u(1) = 0;
lambda = 1.2;
omega = 7.2;
for n = 1:N
    t(n+1) = t(n) + h;
    u(n+1) = u(n) + h*((-2 * lambda * u(n))- ((omega^2)*x(n)));
    x(n+1) = x(n) + h*(u(n));
end
t1 = zeros(1,N+1);
x1 = zeros(1,N+1);
u1 = zeros(1,N+1);
x1(1) = deg2rad(70);
for n = 1:N
    t1(n+1) = t1(n) + h;
    u1(n+1) = u1(n) + h*((-2 * lambda * u1(n))- ((omega^2)*sin(x1(n))));
    x1(n+1) = x1(n) + h*(u1(n));
end
disp(max(abs(x1-x)))
plot(t,x,'.b',t1,x1,'r');
legend('Angular Displacement','Precise Angluar Displacement');
title("Marwan Ali, 400450021");

