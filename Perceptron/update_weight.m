function [new_W] = update_weight(W,o,y,x,learning_rate)
    new_W = W + (learning_rate*(y-o)*x)';
end