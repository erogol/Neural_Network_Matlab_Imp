function [error] = test_perceptron(W,data,delimiter)

    if(class(data) == 'char')
        [data file_format col_num] = read_format_data(data,delimiter);
    end

    x = [data(:,1:size(data,2)-1) (ones(size(data,1),1)*-1)];   %feature matrix + threshold value
    y = data(:,size(data,2));       %class matrix


    fprintf('Test is started \n');
    total_cost = 0;
    for i = 1:size(x,1)
        o = predict_class(x(i,:),W);
        total_cost = total_cost + cost_function(o,y(i));
    end
    error = total_cost/numel(y);
    fprintf('Test error = %f \n',error);
end