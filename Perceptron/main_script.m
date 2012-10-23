
%% TRAIN

fprintf('-----------TRAIN PHASE-------------\n');
[data file_format col_num] = read_format_data('iris.data',',');

% x = [data(:,1:size(data,2)-1) (ones(size(data,1),1)*-1)];   %feature matrix + threshold value
% x2 = x(:,1:end-1);              %for visualization
% y = data(:,size(data,2));       %class matrix
% 
% fprintf('Visualize train-data with PCA \n');
% x2 = PCA(x2,2);
% plot_data(x2,y,2);

W = perceptron(data,',',0.1);

%% TEST

fprintf('-----------TEST PHASE-------------\n');
[data file_format col_num] = read_format_data('test_iris.data',',');

x = [data(:,1:size(data,2)-1) (ones(size(data,1),1)*-1)];   %feature matrix + threshold value
x2 = x(:,1:end-1);              %for visualization
y = data(:,size(data,2));       %class matrix

test_perceptron(W,'test_iris.data',',');