% This is a function that takes the Matrix of initial guesses, which has
% been generated with 100 guesses and takes 30 randomly selected, so when
% running simulations (30 for each) the script will take the same 30 all
% the time for the sake of fair comparison among input classes.

function [] = Select30ParFull()                 % Name of the function (no imputs or outputs)
load('MatrixParameters_InputComparison.mat');   % Loads the 100*8 original matrix
k = randperm(100);                              % Random permutation from 1 to 100
ParFull = ParFull(k(1:30),:);                   % Definition of new ParFull matrix taking the rows with the indeces from k from 1 to 30
save('MatrixParameters_InputComparison30.mat','ParFull'); %Save matrix in a file so it can be used
end
