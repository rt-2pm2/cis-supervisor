%% Import data from text file
% Script for importing data from the following text file:
%
%    filename: /home/rt-2pm2/Documents/MATLAB/Estimator/experiment.csv
%
% Auto-generated by MATLAB on 17-Feb-2021 21:24:45

%% Set up the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 34);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["time", "fieldheaderseq", "fieldheaderstamp", "fieldheaderframe_id", "fieldjerk_body0", "fieldjerk_body1", "fieldjerk_body2", "fieldjerk_world0", "fieldjerk_world1", "fieldjerk_world2", "fieldthrust", "fieldyaw_rate", "fieldang_velocity0", "fieldang_velocity1", "fieldang_velocity2", "fieldstate_curr0", "fieldstate_curr1", "fieldstate_curr2", "fieldstate_curr3", "fieldstate_curr4", "fieldstate_curr5", "fieldstate_curr6", "fieldstate_curr7", "fieldstate_curr8", "fieldstate_pred0", "fieldstate_pred1", "fieldstate_pred2", "fieldstate_pred3", "fieldstate_pred4", "fieldstate_pred5", "fieldstate_pred6", "fieldstate_pred7", "fieldstate_pred8", "fieldactive"];
opts.VariableTypes = ["double", "double", "double", "string", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, "fieldheaderframe_id", "WhitespaceRule", "preserve");
opts = setvaropts(opts, "fieldheaderframe_id", "EmptyFieldRule", "auto");

% Import the data
experiment = readtable("/home/rt-2pm2/Documents/MATLAB/Estimator/experiment.csv", opts);


%% Clear temporary variables
clear opts