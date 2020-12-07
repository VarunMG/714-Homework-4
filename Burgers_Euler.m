function [tVals,xVals,u] = Burgers_Euler(N,T)
h = 1/N;
dt = 0.1*h;
xVals = linspace(0,1,N+1);
tVals = 0:dt:T;
[~,tIters] = size(tVals);
r = dt/h;
u = zeros(N+1,tIters);
u0 = @(x) 1.5+sin(2*pi*x);
u(:,1) = u0(xVals);
for i=1:tIters-1
%     u(2:end,i+1) = u(2:end,i) - 0.5*r*(u(2:end,i).^2-u(1:(end-1),i).^2);
%     u(1,i+1) = u(end,i+1);
    u(2:end,i+1) = -r*u(2:end,i).*(u(2:end,i)-u(1:(end-1),i))+u(2:end,i);
    u(1,i+1) = u(end,i+1);
end
end