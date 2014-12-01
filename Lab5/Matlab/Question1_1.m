%EECS 230 Lab 5
%Questions 1.1 Plots
close
clear

distance = [0.02 0.04 0.06 0.08 0.10 0.12 0.14 0.16];
Mnine = [822 714 492 364 278 208 174 15.2]*10^-9;
Mfive = [543 288 154 98.7 83.9 69.7 60.8 55.2]*10^-9;

plot(distance, Mnine)
title('Mutual Inductance Between Loops (Radius = 9cm)')
xlabel('Coupling Distance (meters)')
ylabel('Mutual Inductance (H)')
axis([0 0.16 0 9*10^-7])
pause
plot(distance, Mfive)
title('Mutual Inductance Between Loops (Radius = 5cm)')
xlabel('Coupling Distance (meters)')
ylabel('Mutual Inductance (H)')
axis([0 0.16 0 6*10^-7])
pause

close