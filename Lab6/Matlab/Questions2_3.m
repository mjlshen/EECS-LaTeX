%EECS 230 Lab 6
%Questions 2.3.4 Plots
close
clear

SdB = [-0.621 -0.558 -0.663 -0.733 -0.743 -0.938 -1.904 -3.360];
etam = 10.^(SdB./20);

RL = 14.83;
w = 46.973e6;
M = [822 714 492 364 278 208 174 152]*10^(-9);
R = 0.47;
dist = [2 4 6 8 10 12 14 16];

eta_num = 4*RL^2*w^2.*M.^2;
eta_den = ((R+RL)^2+w^2.*M.^2).^2;
eta_what = eta_num./eta_den

etat = [RL^2/(R + RL)^2 RL^2/(R + RL)^2 RL^2/(R + RL)^2 RL^2/(R + RL)^2 RL^2/(R + RL)^2 0.7733 0.6491 0.5519];

plot(dist, etam, 'g')
hold
plot(dist, etat)
title('Theoretical and Measured Power Transfer Efficiencies of Frequency Tuned Shielded Loop Resonators')
xlabel('Coupling Distance (cm)')
ylabel('Power Transfer Efficiency')
axis([0 16 0 1])