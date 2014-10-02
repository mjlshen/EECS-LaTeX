%EECS 230 Lab 1
%Analysis 2.3 Plots
close
clear

lambda = [0 0.05 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.5];
short = [0.0065 0.26 0.58 0.81 0.94 0.97 0.90 0.74 0.54 0.25 0.0065];
open = [0.89 0.84 0.71 0.52 0.24 0.01 0.21 0.50 0.72 0.85 0.89];
matched = [0.46 0.46 0.46 0.46 0.46 0.47 0.47 0.46 0.46 0.45 0.45];
resistor = [0.61 0.74 0.78 0.76 0.66 0.51 0.33 0.14 0.19 0.41 0.61];
capacitor = [0.91 0.85 0.70 0.50 0.22 0.0065 0.26 0.54 0.75 0.87 0.90];

plot(lambda, short)
title('Normalized voltage plot for a shorted load')
xlabel('Multiples of lambda away from the load')
ylabel('Normalized voltage (V)')
axis([0 0.5 0 1])
pause
plot(lambda, open)
title('Normalized voltage plot for an open load')
xlabel('Multiples of lambda away from the load')
ylabel('Normalized voltage (V)')
axis([0 0.5 0 1])
pause
plot(lambda, matched)
title('Normalized voltage plot for a matched load')
xlabel('Multiples of lambda away from the load')
ylabel('Normalized voltage (V)')
axis([0 0.5 0 1])
pause
plot(lambda, resistor)
title('Normalized voltage plot for a resistive load')
xlabel('Multiples of lambda away from the load')
ylabel('Normalized voltage (V)')
axis([0 0.5 0 1])
pause
plot(lambda, capacitor)
title('Normalized voltage plot for a capacitive load')
xlabel('Multiples of lambda away from the load')
ylabel('Normalized voltage (V)')
axis([0 0.5 0 1])
pause
close