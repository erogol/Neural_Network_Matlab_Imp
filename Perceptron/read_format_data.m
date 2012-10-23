% 
% Eren Golge - Oct 18 2012
% 
% Read the data file and convert string valued columns to categorical
% numeric values starting from 0.
%
% file_name 
% delimiter - delimiter char that is used on data file to seperate values.
% 
% 

function [output_data,file_format,no_of_column] = read_format_data(file_name, delimiter)
    fid = fopen(file_name); %open file stream
    line =fgetl(fid);
    fseek(fid, 0, 'bof');
    m = length(line); %length of the file
    
    no_of_column = 0; % cal. # columns
    for i = 1:m
        if line(i)==delimiter
            no_of_column = no_of_column+1;
        end
    end
    no_of_column = no_of_column+1;
    
    line2 = regexprep(line, '[a-z-A-Z]+|', '%s'); % create data column format to read data with textscan
    line2 = regexprep(line2,'[0-9]+\.*[0-9]*','%f');
    file_format = regexprep(line2,',','');
    
    line2 = regexprep(line, '[a-z-A-Z]+|', 's');
    line2 = regexprep(line2,'[0-9]+\.*[0-9]*','d');
    file_format2 = regexprep(line2,',','');
    string_index = regexpi(file_format2,'s');
    
    output_data = textscan(fid,file_format,'Delimiter',delimiter);
    %output_data = [cell2mat(output_data(:,1:end-1)),grp2idx(output_data(:,end))-1]

    k = length(string_index);
    for i = 1 : k
       cell = output_data(:,string_index(i));
       cell = grp2idx(cell{1})-1;
       cell(cell(:,1) == 0,1) = -1;  
       output_data{:,string_index(i)} = cell;
    end
    
    output_data = cell2mat(output_data);
       
end