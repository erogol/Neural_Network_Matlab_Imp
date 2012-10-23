function [new_W] = update_weight(W,o,x,learning_rate)
    new_W = W + (learning_rate*o)*x';
end