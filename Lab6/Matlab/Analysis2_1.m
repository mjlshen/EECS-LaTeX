%EECS 230 Lab 1
%Analysis 2.3 Plots
close
clear

RL = 14.83;
w = 46.973e6;
M = [822 714 492 364 278 208 174 152]*10^(-9);
R = 0.47;

eta_num = 4*RL^2*w^2.*M.^2;
eta_den = ((R+RL)^2+w^2.*M.^2).^2;
eta = eta_num./eta_den