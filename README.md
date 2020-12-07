# 714-Homework-4

Burgers_Euler.m is for problem 1. With N value for number of grid points and T value for end time. Shock is at around T=0.3

Burgers_Godunov.m is for problem 2. With N value for number of grid points and T value for end time. Shock is at around T=0.3

F.m is a helper function for Burgers_Godunov.m where it is the flux function that is used. Taken straight from Leveque

plot_both.m will plot two separate solutions to easily compare them 

sol_diff.m finds the norm of the error w.r.t. the maximum norm

visualize_burger.m is to visualize a single solution. It is named just so that I could say "visualize burger" out loud for my own entertainment. 
