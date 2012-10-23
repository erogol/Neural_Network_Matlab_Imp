function [] = print_vector(V)
    for i = 1:numel(V)
        fprintf(' %f',V(i));
    end
    fprintf('\n');
end