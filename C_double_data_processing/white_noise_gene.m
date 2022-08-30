% 生成实验所需的原始的白噪声音频文件
% 生成原始的全频带白噪声信号

clc;clear; close all;
filename = "whiteNoise_full_spec.wav";
mu=0;
sigma=1;
fs = 44.1e3;
timeLength = 1.0;
L1=fs*timeLength;

% R＝normrnd(MU,SIGMA,m,n)： 生成m×n形式的正态分布的随机数矩阵。
x1=normrnd(mu,sigma,1,L1);  
audiowrite(filename, x1, fs);
