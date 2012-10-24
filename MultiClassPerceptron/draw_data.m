function [] = draw_data(TS,fig_title)
% The loop below plots the 10 different patterns (10x10) for each 10 numerals in a figure 
figure();
title(fig_title);
Total = 100;
for i = 1:Total,
   for j = 1:Total,
      pttrn(j) = TS(i,j);
   end;
   pttrn = reshape(pttrn',10,10);
   subplot(10,10,i)
   blacktowhite = -pttrn;  %to see numerals as black
   imagesc(blacktowhite);  %Scale data and display an image object
   colormap('gray');
end
end