%% The 1st problem in the homework2
% Erathostenes3.m is the improved version of prime numbers generator, which can find all prime numbers from 2 to a number that user select.
% This program is wirtten by Xiaotian Xu, 28. Fbe 2020. 
% Input an integer as the upper limit. No output.

%% Initialize
clc; clear; close all;

UPPER_LIMIT = input('Determine all prime numbers between 1 and n = '); % Let user input the upper limits of the intervals
finalVec = [2]; % Define the result vector, and the first element of this vector must be 2
sieveNumber = 0;
xIndex = 3;
primeMark = true; % A variable that is used to determine which number can be written in the final vector

%% Error detect
if UPPER_LIMIT < 2
    error('The upper limit should be gritter than 1') % If the upper limit is less than 2, there are no prime numbers can be find
end
if mod(UPPER_LIMIT, 1) ~= 0
    error('The upper limit should be an integer')
end

%% The loop
for xIndex = 3: UPPER_LIMIT % 2 is already in the result vector, just find the prime numbers from 3
    for sieveNumber = 2: fix(xIndex / 2 + 1) % The integer that is greater than 1/2*x must not devide x exactly, so there is no need to check them
        if mod(xIndex, sieveNumber) == 0
            primeMark = false; % If x can be devided exactly, the mark of it is changed, and break the loop
            break
        end
    end
    if primeMark == true
        finalVec(end + 1) = xIndex; % If x cannot be devided exactly by any selected sieve number, it can be written into result vector
    end
    primeMark = true; % Initialize the mark after every turn
end

%% Output
formatSpec = ('List of all prime numbers between 1 and %d: ');
fprintf(formatSpec, UPPER_LIMIT);
fprintf('%d, ', finalVec);