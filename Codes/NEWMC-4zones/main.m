%% This script does a experiment to find the markov chain of a set
%% set of state transitions 


clc
clear all
addpath(genpath(fileparts(mfilename('fullpath'))));

% user parameters
datfilename = 'sunocc.txt';
thresVec = [0, 5, 8]; % vector of 3 elements which helps threshold and classify 
                      % the data into states [E,F,M,C]. here <= 0 is E,
                      % else if <= 5 is F, else if <= 8 is M, else C.

[traindata, colnames] = LoadData(datfilename); % we can have different training and real data
states = StatesFromData(traindata, thresVec);
transitionmatrix = LearnTransition(states);

% We find the probabilities of transition from one state to another using
% the `realdata` and `transitionmatrix`

% realdata = traindata; % in this case
probabilitymatrix = FetchProbabilityMatrix(states, transitionmatrix);

%% DELETE Later - this block writes the transition matrix (CSV) for opening with excel
T = mat2cell(transitionmatrix, ones(1,length(transitionmatrix)), ones(1,length(transitionmatrix)));
S = StateMatrix([1:256]');
Str = blanks(4);
Str = repmat(Str, 256,1);
Str(S == 1) = 'E';
Str(S == 2) = 'F';
Str(S == 3) = 'M';
Str(S == 4) = 'C';
StrT = mat2cell(Str, ones(1,length(transitionmatrix)));
writeMat = [{''},StrT'];
writeMat = [writeMat; [StrT, T]];
cellwrite('D1.csv', writeMat);


%% Comment
% But the case right now is that I am not 100% sure that this is
% the stuff we agreed...