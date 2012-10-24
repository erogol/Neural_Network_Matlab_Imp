% Takes the number of classes and the current class value of the instance
% and maps to a matrix needed for multiclass perceptron learning

function [mat] = class2mat(class, class_num)
    mat = zeros(class_num,1)-1;
    mat(class) = 1;
end