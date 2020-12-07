function val = plot_both(tVals,xVals, u1,u2)
[~,tIters] = size(tVals);
yMax1 = max(max(abs(u1(:,:))));
yMax2 = max(max(abs(u2(:,:))));
yMax = max(yMax1,yMax2);
figure;
for i=1:100:tIters
    clf;
    hold on;
    plot(xVals,u1(:,i))
    plot(xVals,u2(:,i))
    ylim([-yMax,yMax]);
    hold off;
    pause(0.1);
end
end