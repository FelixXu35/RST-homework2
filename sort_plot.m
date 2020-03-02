%% This program is a part of the second problem in the Homework2
% sortPlot.m compares the result of Mybubblesort with sort with a random vector and plot the result
% written by Xiaotian Xu, 29 Feb 2020
% no input or output

%% Initialize
clc; clear; close all;

originalVec = rand(1, 30); % generate a vector with 30 random numbers as its elements
indices = 1: 30; % the sequence

%% Compare Mybubblesort with sort
resultMBS = Mybubblesort(originalVec); % collect all result of Mybubblesort in a vector
resultSort = sort(originalVec); % collect all result of sort in a vector
resultError(1, :) = 1: 30;
resultError(2, :) = resultMBS;
resultError(3, :) = resultSort;
resultError(4, :) = abs(resultMBS - resultSort); % calculate the errors
formatSpec = ('%d: the result of Mybubblesort is %d and of sort is %d, the error is %d\n');
fprintf(formatSpec, resultError); % display the result of two function and error

%% Plot
plot(indices, resultSort, 'bo', indices, resultMBS, 'r+', indices, originalVec, 'gd')
legend('Mybubblesort', 'sort', 'oroginal Vector', 'Location', 'northwest');
title('The compare of the result {\color{red}Mybubblesort}, {\color{blue}sort} and {\color{green}original vector}');
xlabel('sequence');
ylabel('result');