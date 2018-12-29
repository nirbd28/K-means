clc,close all,clear all;
%%
clc,close all,clear all;

addpath(strcat(pwd,'\','Function_MFCC'));

filename = 'shee_shoo.wav';
[speech, fs] = audioread( filename );
speech = CorrectSpeechSize(speech);

%%% mfcc code parameters
Tw = 20;           % analysis frame duration (ms)
Ts = 10;           % analysis frame shift (ms)
alpha = 0.97;      % preemphasis coefficient
R = [ 300 3700 ];  % frequency range to consider
M = 20;            % number of filterbank channels 
C = 12;            % number of cepstral coefficients
L = 22;            % cepstral sine lifter parameter
N=14;
hamming = @(N)(0.54-0.46*cos(2*pi*[0:N-1].'/(N-1)));
%%%

[MFCCs, FBEs, frames] =  mfcc(speech, fs, Tw, Ts, alpha, hamming, R, M, C, L);

%%% kmeans parameters
k=4; % number of clusters
Thrsh=0.001; % max error between iterrations
maxITER=20; % maximun iterrations

[Clusters, INDX, Err]=CalcKmeans(MFCCs,k,Thrsh,maxITER);

%%% read audio file's phonem division
numOfP=4;% number of phonem
PhonemMat=SortPhonemesFromFile(numOfP, INDX);
%PhonemMat=SortPhonemesUserInput(numOfP, INDX );

DisplayPhonemVScluster(numOfP, PhonemMat);





