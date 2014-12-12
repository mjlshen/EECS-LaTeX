%EECS 230 Lab 6
%Analysis 2.1.1, 2.1.2, 2.1.3 Plots
close
clear

RL = 14.83;
w = 46.973e6;
M = [822 714 492 364 278 208 174 152]*10^(-9);
R = 0.47;
dist = [2 4 6 8 10 12 14 16];

eta_num = 4*RL^2*w^2.*M.^2;
eta_den = ((R+RL)^2+w^2.*M.^2).^2;
%Analysis 2.1.1
eta = eta_num./eta_den;

%Analysis 2.1.2
eta2 = RL^2/(R + RL)^2;

etamax_num = 4*(R^2 + w^2.*M.^2)*w^2.*M.^2;
etamax_den = ((R + sqrt(R^2 + (w.*M).^2)).^2 + (w.*M).^2).^2;
etamax = etamax_num./etamax_den;

%Analysis 2.1.3
plot(dist, etamax)
title('Maximum Power Transfer Efficiency of Shielded Loop Resonators')
xlabel('Coupling Distance (cm)')
ylabel('Maximum Power Transfer Efficiency')
axis([0 16 0.8 1])