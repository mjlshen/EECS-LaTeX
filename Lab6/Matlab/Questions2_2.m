%EECS 230 Lab 6
%Questions 2.3.2 Plots
close
clear

SdB = [-7.767 -4.622 -2.630 -1.176 -0.593 -0.938 -1.904 -3.360];
etam = 10.^(SdB./20);

RL = 14.83;
w = 46.973e6;
M = [822 714 492 364 278 208 174 152]*10^(-9);
R = 0.47;
dist = [2 4 6 8 10 12 14 16];

eta_num = 4*RL^2*w^2.*M.^2;
eta_den = ((R+RL)^2+w^2.*M.^2).^2;
etat = eta_num./eta_den;

plot(dist, etat)
hold
plot(dist, etam, 'g')
title('Power Transfer Efficiency of Shielded Loop Resonators at \omega_0')
xlabel('Coupling Distance (cm)')
ylabel('Power Transfer Efficiency')
axis([0 16 0 1])