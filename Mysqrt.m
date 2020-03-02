function squreRoot = Mysqrt(originalNum)
%Mysqrt - calculates the squre root of a non-negative positive real number
%
% Syntax: squreRoot = Mysqrt(originalNum)
%
% This function calculates the square root of a non-negative positive real number iteratively by using the Babylonian method:
% 1.Start with an arbitrary number y (e.g., 1).
% 2.Replace y by (y + x/y)/2
% 3.Repeat the process until the new y differs from the old one by less than 12*eps (i.e.|y_new – y_old|/y_new < 12*eps)
%
% This is the 2nd problem in the homework2
% This program is written by Xiaotian Xu, 29 Feb 2020

    %% Error detect
    if originalNum < 0
        error('Iuput number must be non-negative') % negative number is not allowed
    end
    if conj(originalNum) ~= originalNum
        error('Input number must be real') % If the conjugate of a number is not equal to itself, this number is complex, which is not allowed
    end

    %% Initialize
    yNew = originalNum / 2; % let the first assumption change with original number to decrease number of iterate turns
    yOld = originalNum; % this magnitude can make sure that function execute the loop for at least one time

    %% The loop
    while any(abs((yNew - yOld) ./ yNew) > 12 * eps) % make sure all elements meet the accurate condition
        yOld = yNew;
        yNew = (yNew + originalNum ./ yNew) / 2; % if the accurate condition is not meet, execute one more time
    end

    %% Return
    squreRoot = yNew;
end