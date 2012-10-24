function [ W ] = mc_perceptron( data,classes,out_num,learning_rate )
    tic;
    %% Bookkeeping
    m = size(data,2);            % num of instances
    n = length(unique(classes)); % num of different classes
    
    %% Init W
    W = zeros(size(data,1),out_num);
    for i = 1:out_num
        W(:,i) = init_weights(size(data,1));
    end
    
    %% Learning
    fprintf('********* Perceptron Training ******\n');
    epoch = 0;
    train_incorrect = 1;
    while train_incorrect == 1
        epoch = epoch+1;
        fprintf('Epoch: %d\n',epoch);
        train_incorrect = 0;
        for  i = 1:m
            % Feedforward
            x = data(:,i);
            v = W'*x;
            o = sign(v);

            %Update Weights
            desired = class2mat(classes(i),n);
            w_update = (learning_rate*(desired-o)*(1/2))*x';
            if max(max(w_update)) ~= 0 || min(min(w_update)) ~= 0
                train_incorrect = 1;
            end
            w_update = w_update';
            W = W + w_update;
        end
    end
    
    fprintf('Training Completed with Execution Time : %f\n', toc);
end

