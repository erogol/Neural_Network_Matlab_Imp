fprintf('-----------TRAIN PHASE-------------\n');
[data file_format col_num] = read_format_data('data/iris.data',',');

x = [data(:,1:size(data,2)-1) (ones(size(data,1),1)*-1)];   %feature matrix + threshold value
y = data(:,size(data,2));       %class matrix

W = hebbian(x(:,1:end-1),1,5000); %ignore threshold

fprintf('-----------TEST PHASE with Test Data -------------\n');

[data file_format col_num] = read_format_data('data/test_iris.data',',');


x = [data(:,1:size(data,2)-1) (ones(size(data,1),1)*-1)];   %feature matrix + threshold value
y = data(:,size(data,2));       %class matrix
fprintf('Test with test dataset\n');
test_hebbian(W,x(:,1:end-1),y);

fprintf('-----------TEST PHASE 2 with Train Data -------------\n');

[data file_format col_num] = read_format_data('data/iris.data',',');


x = [data(:,1:size(data,2)-1) (ones(size(data,1),1)*-1)];   %feature matrix + threshold value
y = data(:,size(data,2));       %class matrix
fprintf('Test with train dataset\n');
test_hebbian(W,x(:,1:end-1),y);



