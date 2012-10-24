%% Pertrubing train set

% return K train set with 1-K perturbed pixels in each
% returns a cell that contains all the train set matrices

function [sets] = perturbing(data,K,cons_pixel)
    sets = cell(K,1);
    temp_data = zeros(size(data,1),size(data,2));
    % for each train set creation
    for i = 1 : K
        for img = 1 : size(data,2)
            pixels = randi(100,1,i*cons_pixel);
            instance = data(:,img);
            toogle_pixles = instance(pixels,:);
            for j = 1: length(pixels)
                if toogle_pixles(j) == -1
                    toogle_pixles(j) = 1;
                else
                    toogle_pixles(j) = -1;
                end
            end
            instance(pixels,:) = toogle_pixles;
            temp_data(:,img) = instance;
        end
    sets{i} = temp_data;    
    end
    
end
