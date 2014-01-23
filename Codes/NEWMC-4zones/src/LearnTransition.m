function transitionMatrix = LearnTransition(states)
% this function takes in a 2D matrix of data observed in time. i.e. the
% data which contains instances of the state at each zone as observed. And
% using this data it learns the transition matrix (assuming that the
% process at hand remains the same)

transitionMatrix = zeros(256);
if size(states,1) == 0
    transitionMatrix = eye(256);
    return
end
combinedstates = StateNumber(states);
numTransistions = size(combinedstates,1) - 1;
if numTransistions > 0
    I = (combinedstates(2:end) - 1)*256 + combinedstates(1:end-1);
    transitionMatrix(I) = transitionMatrix(I) + 1;
%     transitionMatrix(I) = transitionMatrix(I) ./ numTransistions;
    % Normalizing the rows
    for i = 1:size(transitionMatrix,1)
        if ~isequal(transitionMatrix(i,:), zeros(1,256))
            transitionMatrix(i,:) = transitionMatrix(i,:) ./ sum(transitionMatrix(i,:));
        elseif isequal(transitionMatrix(i,:), zeros(1,256))
            transitionMatrix(i,:) = 0; % ASSUMPTION!!! when a particular transition never 
            % occurs, all its states are considered equiprobable and they
            % are given value 1/256. With a large dataset, number of times
            % this assumption is used will get minimal or negligeble
        else
            error('unknown error, may point to invalid data read')
        end
    end
end