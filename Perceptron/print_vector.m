function [] = print_vector(V)
    for i = 1:numel(V)
        fprintf(' %d',V(i));
    end
    fprintf('\n');
end