function percentTop6 = sumTop6(y)
% SUMTOP6 - function for adding together the top 6 play times in the 
% OW dataset. This function is meant to be used with rowfun

% Sort in descending order
y = sort(y,"descend")';

% Add together the top 6 values
percentTop6 = sum(y(1:6));

end