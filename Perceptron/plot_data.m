function plot_data(X, idx, K)
%%
%PLOTDATAPOINTS plots data points in X, coloring them so that those with the same
%index assignments in idx have the same color
%   PLOTDATAPOINTS(X, idx, K) plots data points in X, coloring them so that those 
%   with the same index assignments in idx have the same color

% Create palette
palette = hsv(K + 1);
colors= zeros(0,K+1);
for i = 1 : numel(idx)
   colors =[colors;palette(idx(i)+2, :)];
end


% Plot the data
scatter(X(:,1), X(:,2), 15, colors);

end