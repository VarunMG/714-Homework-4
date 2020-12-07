function val = visualize_burger(tVals,xVals,u)
[~,tIters] = size(tVals);
yMax = max(max(abs(u(:,:))));
figure;
for i=1:tIters
    plot(xVals,u(:,i))
    ylim([-yMax,yMax]);
    pause(0.01);
end
end