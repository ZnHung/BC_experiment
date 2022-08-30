% 产生实验所需要的相应的音频文件

%% 用PKU_HRTF产生不同方位角的语音信号
clear; clc; close all;

%file_wav, fs= strcat('whiteNoise_full_spec.wav');  % 读取原始白噪声文件
[xx, fs] = audioread('whiteNoise_full_spec.wav');
x = xx(:,1);

%% 导入HRTF，选择不同距离的文件夹
dist = ['dist', '160'];     % 后面的数字字符串为距离数值，dist = ‘distXX’

file = fullfile('pkuHRTF', dist);     % 打开相对应距离的HRTF保存文件夹


%% 调用前面所设定好的相对应的距离的各个角度

%% 0°角
azi = 'azi0';
HRTFname = ['C_', azi, '_', 'elev0_', dist, '.dat'];   %合成相对应的具体HRTF文件的文件名
file1 = fullfile(file, HRTFname);    % 合成相应HRTF文件的绝对路径
hrtf = load(file1);

hL=hrtf(1: (length(hrtf)/2));  %前1024个数据为左耳
hR=hrtf(((length(hrtf)/2)+1): length(hrtf));  %后1024个数据为右耳
% yL=filter(hL,1,x);
% yR=filter(hR,1,x);

yL = conv(x, hL);
yR = conv(x, hR);

yL=[yL]';
yR=[yR]';
y=[yL',yR'];

name = [dist, azi, '.wav'];
filename = fullfile('geneSignal', name);
audiowrite(filename,y,fs);

%% 
%% 45°角
azi = 'azi45';
HRTFname = ['C_', azi, '_', 'elev0_', dist, '.dat'];   %合成相对应的具体HRTF文件的文件名
file1 = fullfile(file, HRTFname);    % 合成相应HRTF文件的绝对路径
hrtf = load(file1);

hL=hrtf(1: (length(hrtf)/2));  %前1024个数据为左耳
hR=hrtf(((length(hrtf)/2)+1): length(hrtf));  %后1024个数据为右耳
% yL=filter(hL,1,x);
% yR=filter(hR,1,x);

yL = conv(x, hL);
yR = conv(x, hR);

yL=[yL]';
yR=[yR]';
y=[yL',yR'];

name = [dist, azi, '.wav'];
filename = fullfile('geneSignal', name);
audiowrite(filename,y,fs);


%% 
%% 60°角
azi = 'azi60';
HRTFname = ['C_', azi, '_', 'elev0_', dist, '.dat'];   %合成相对应的具体HRTF文件的文件名
file1 = fullfile(file, HRTFname);    % 合成相应HRTF文件的绝对路径
hrtf = load(file1);

hL=hrtf(1: (length(hrtf)/2));  %前1024个数据为左耳
hR=hrtf(((length(hrtf)/2)+1): length(hrtf));  %后1024个数据为右耳
% yL=filter(hL,1,x);
% yR=filter(hR,1,x);

yL = conv(x, hL);
yR = conv(x, hR);

yL=[yL]';
yR=[yR]';
y=[yL',yR'];

name = [dist, azi, '.wav'];
filename = fullfile('geneSignal', name);
audiowrite(filename,y,fs);

%% 90°角
azi = 'azi90';
HRTFname = ['C_', azi, '_', 'elev0_', dist, '.dat'];   %合成相对应的具体HRTF文件的文件名
file1 = fullfile(file, HRTFname);    % 合成相应HRTF文件的绝对路径
hrtf = load(file1);

hL=hrtf(1: (length(hrtf)/2));  %前1024个数据为左耳
hR=hrtf(((length(hrtf)/2)+1): length(hrtf));  %后1024个数据为右耳
% yL=filter(hL,1,x);
% yR=filter(hR,1,x);

yL = conv(x, hL);
yR = conv(x, hR);

yL=[yL]';
yR=[yR]';
y=[yL',yR'];

name = [dist, azi, '.wav'];
filename = fullfile('geneSignal', name);
audiowrite(filename,y,fs);

%% 120°角
azi = 'azi120';
HRTFname = ['C_', azi, '_', 'elev0_', dist, '.dat'];   %合成相对应的具体HRTF文件的文件名
file1 = fullfile(file, HRTFname);    % 合成相应HRTF文件的绝对路径
hrtf = load(file1);

hL=hrtf(1: (length(hrtf)/2));  %前1024个数据为左耳
hR=hrtf(((length(hrtf)/2)+1): length(hrtf));  %后1024个数据为右耳
% yL=filter(hL,1,x);
% yR=filter(hR,1,x);

yL = conv(x, hL);
yR = conv(x, hR);

yL=[yL]';
yR=[yR]';
y=[yL',yR'];

name = [dist, azi, '.wav'];
filename = fullfile('geneSignal', name);
audiowrite(filename,y,fs);

%% 135°角
azi = 'azi135';
HRTFname = ['C_', azi, '_', 'elev0_', dist, '.dat'];   %合成相对应的具体HRTF文件的文件名
file1 = fullfile(file, HRTFname);    % 合成相应HRTF文件的绝对路径
hrtf = load(file1);

hL=hrtf(1: (length(hrtf)/2));  %前1024个数据为左耳
hR=hrtf(((length(hrtf)/2)+1): length(hrtf));  %后1024个数据为右耳
% yL=filter(hL,1,x);
% yR=filter(hR,1,x);

yL = conv(x, hL);
yR = conv(x, hR);

yL=[yL]';
yR=[yR]';
y=[yL',yR'];

name = [dist, azi, '.wav'];
filename = fullfile('geneSignal', name);
audiowrite(filename,y,fs);

%% 180°角
azi = 'azi180';
HRTFname = ['C_', azi, '_', 'elev0_', dist, '.dat'];   %合成相对应的具体HRTF文件的文件名
file1 = fullfile(file, HRTFname);    % 合成相应HRTF文件的绝对路径
hrtf = load(file1);

hL=hrtf(1: (length(hrtf)/2));  %前1024个数据为左耳
hR=hrtf(((length(hrtf)/2)+1): length(hrtf));  %后1024个数据为右耳
% yL=filter(hL,1,x);
% yR=filter(hR,1,x);

yL = conv(x, hL);
yR = conv(x, hR);

yL=[yL]';
yR=[yR]';
y=[yL',yR'];

name = [dist, azi, '.wav'];
filename = fullfile('geneSignal', name);
audiowrite(filename,y,fs);
