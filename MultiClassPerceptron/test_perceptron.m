function [rate] = test_perceptron(data,out_num,W,classes)
    tic;
    fprintf('********* Test Perceptron *********\n');
    
    m = size(data,2);
    error_no = 0;
    for i = 1 : m
        x = data(:,i);
        v = W'*x;
        o = sign(v);
        desired = class2mat(classes(i,1),out_num);
        if sum(o ~= desired) > 0
            error_no = error_no+1;
        end
    end
    rate = error_no/m;
    fprintf('Test ends in %f sec.\n',toc);
    fprintf('Error rate is (num of misclass. / num. of instances):\n%f\n',rate);
end