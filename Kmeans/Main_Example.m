%%
clc,close all,clear all;

%%% declare points
A1=[2;10];
A2=[2;5];
A3=[8;4];
A4=[5;8];
A5=[7;5];
A6=[6;4];
A7=[1;2];
A8=[4;9];

data=[A1 A2 A3 A4 A5 A6 A7 A8]; % data

%%% kmeans parameters
k=3; % number of clusters
Thrsh=0.01; % max error between iterrations
maxITER=6; % maximun iterrations

[Clusters, INDX, Err]=CalcKmeans(data, k, Thrsh, maxITER);



