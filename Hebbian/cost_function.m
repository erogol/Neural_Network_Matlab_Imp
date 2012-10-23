function [cost] = cost_function (o,y)
    cost = abs(y-o);
end