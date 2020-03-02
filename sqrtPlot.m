%% This program is a part of the 3rd problem in the homework2
% sqrtPlot.m plot the function Mysqrt(x) together with the built-in Matlab sqrt(x) function on a range from 0 to 12.
% This program is written by Xiaotian Xu, 29 Feb 2020.
% No input or output.

%% Initialize
clc; clear; close all;

xList = 0: 12; % calculate from 0 to 12, 13 numbers in total
xIndex = 0; 
mysqrtResult = zeros(1, 12); % the vector to store the result from Mysqrt
sqrtResult = zeros(1, 12); % the vector to store the result from sqrt

%% Calculate the result
for xIndex = 1: 13
    mysqrtResult(xIndex) = Mysqrt(xList(xIndex));
    sqrtResult(xIndex) = sqrt(xList(xIndex));
end

%% Plot
plot(xList, mysqrtResult, 'r+', xList, sqrtResult, 'bo');
legend('Mysqrt', 'sqrt', 'Location', 'northwest');
title('The compare of functions {\color{red} Mysqrt} and {\color{blue} sqrt}');

% Error
sqrtError(1, :) = 0: 12;
sqrtError(2, :) = abs(mysqrtResult - sqrtResult);
fprintf('The error of result of %d is: %d\n', sqrtError); % display the error of every result