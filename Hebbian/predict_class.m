function [o] = predict_class(x,W)
    v = W'*x';
    o = sign(v);
end