function [tVals, xVals,u] = Burgers_Godunov(N,T)
h = 1/N;
dt = 0.1*h;
xVals = linspace(0,1,N+1);
tVals = 0:dt:T;
[~,tIters] = size(tVals);
r = dt/h;
u = zeros(N+1,tIters);
u0 = @(x) 1.5+sin(2*pi*x);
u(:,1) = u0(xVals);
for i=1:(tIters-1)
    u(1,i+1) = u(1,i) - r*(F(u(2,i),u(1,i))-F(u(1,i),u(end,i)));
    for j=2:N
        u(j,i+1) = u(j,i) - r*(F(u(j+1,i),u(j,i))-F(u(j,i),u(j-1,i)));
    end
    u(end,i+1) = u(end,i) - r*(F(u(1,i),u(end,i))-F(u(end,i),u(end-1,i)));
end
end