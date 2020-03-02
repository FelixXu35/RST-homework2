function vectorOut = Mybubblesort(vectorIn)
%Mybubblesort - This function sort an inout vector to ascending order
%
% Syntax: vectorOut = Mybubblesort(vectorIn)
%
% This function use the bubblesort algorithm:
% 1. Compare elements x1 and x2, swap them if x1 > x2.
% 2. Repeat this step for the pairs x2 and x3, x3 and x4 and so on until the end of the vector is reached.
% 3. This whole procedure must be repeated n times where n is the size of the vector
%
% This is the 2nd problem in the homework2
% This program is written by Xiaotian Xu, 29 Feb 2020

    %% Initialize
    medium = 0; % define a variable which helps to exchange adjacent elements if need
    vectorOut = zeros(length(vectorIn));

    %% The loop
    for turn = 1: length(vectorIn)
        for vecOrder = 2: length(vectorIn) % compare every element with previous one, so begin at the second element
            if vectorIn(vecOrder - 1) > vectorIn(vecOrder)
                medium = vectorIn(vecOrder - 1);
                vectorIn(vecOrder - 1) = vectorIn(vecOrder);
                vectorIn(vecOrder) = medium;
            end
        end
    end

    %% Output
    vectorOut = vectorIn;
end