%
% Symmetry breaking random initialization 
%
% m - number of  input unit


function [w] = init_weights(m)

    epsilon = 0.12;
    w = (rand(m,1)*2*epsilon) - epsilon;

end