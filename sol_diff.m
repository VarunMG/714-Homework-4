function diff = sol_diff(uFine,uCoarse,xFine,xCoarse)
uCoarse = uCoarse(:,end);
uFine = uFine(:,end);
u2Fine = interp1(xCoarse,uCoarse,xFine);
diff = max(abs(u2Fine(:)-uFine(:)));
end