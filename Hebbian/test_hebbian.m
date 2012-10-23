function [error] = test_hebbian(W,x,y)
    fprintf('Test is started \n');
    m = size(x,1);
    total_cost = 0;
    for i = 1:m
        o = predict_class(x(i,:),W);
        total_cost = total_cost + cost_function(o,y(i));
    end
    error = (1/m)*total_cost;
    fprintf('Test error (sum of error) = %f \n',error);
end