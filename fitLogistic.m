function B = fitLogistic(y)
% FITLOGISTIC - function for fitting the logistic curve to the OW dataset
% This function is meant to be used with rowfun.

% Create inputs for fit. Sort y in descending order
x = (1:length(y))';
y = sort(y,"descend")';

% Apply logisitc fit and return the parameter B
fitObject = fittype("16.667/(1+exp(B*(x-6)))");
fitResult = fit(x,y,fitObject,"StartPoint",1,"Display","off");
B = fitResult.B;
end