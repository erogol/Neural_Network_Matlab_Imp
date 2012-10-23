%% Hebbian learner - 1940
% A single neuron implementation

function [W] = hebbian(data,rate,iteration)
tic;
W = init_weights(size(data,2));
fprintf('Initial W:\n');
print_vector(W);
for k = 1:iteration
    for i = 1:size(data,1)
        o = predict_class(data(i,:),W);
        W = update_weight(W,o,data(i,:),rate);
    end
end

fprintf('Final W:\n');
print_vector(W);
fprintf('Execution time: %f \n',toc);
end