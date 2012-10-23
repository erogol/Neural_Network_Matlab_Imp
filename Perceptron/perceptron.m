%
% Single Layer Perceptron classifier implementation
%
% learning_rate - update rate of the learnt weights
% data - with the assumtion, it includes class value on last column and a
%        CSV file


function [W] = perceptron(data,delimiter,learning_rate)
tic;
if ~exist ('learning_rate');
    learning_rate = 0.3;
end
if(strcmp(class(data),'char'))
    [data file_format col_num] = read_format_data(data,delimiter);
end

x = [data(:,1:size(data,2)-1) (ones(size(data,1),1)*-1)];   %feature matrix + threshold value
y = data(:,size(data,2));       %class matrix

W = init_weights(size(x,2));    %init weight vectors with symmetry breaking

train_correct = 0;
epoch_counter = 1;
fprintf('Training is started \n');
while train_correct == 0
    fprintf('Epoch number: %d \n',epoch_counter);
    epoch_counter = epoch_counter +1;
    for i = 1:size(x,1)
        o = predict_class(x(i,:),W);
        new_W = update_weight(W,o,y(i),x(i,:),learning_rate);
        W = new_W;
    end
    oo=sign(W'*x');         % check epoch end
    if sum(oo' ~= y) == 0
        train_correct = 1;
    end
end

fprintf('Final W:');
print_vector(W);
fprintf('Execution time: %f \n',toc);
end