%% Take dataset and perturb to new data sets
ymaker1();
data = y;
classes = zeros(100,1);
for i = 1:100
    classes(i) = ceil(i/10);
end

sets = perturbing(y,5,2);
mat = sets{2};

%% Draw T2 perturbed dataset and the normal one for comparison
draw_data(y','normal data');
draw_data(mat','title 2 pixel noise');

fprintf('To continue execution press a button\n');
pause;

%% Perceptron
out_num  = 10;
W = mc_perceptron(data,classes,out_num,0.3);

% Test Perceptron with train data
fprintf('\n=========== Test with train data\n');
rate = test_perceptron(data,out_num,W,classes);

% Test with noisy data sets
for i = 1 : size(sets)
    data = sets{i};
    fprintf('\n=========== Test with noisy data T%f\n',i*2);
    rate = test_perceptron(data,out_num,W,classes);
    
end


