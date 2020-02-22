function running0002S1a2 = importfile(filename, dataLines)
%IMPORTFILE Import data from a text file
%  RUNNING0002S1A2 = IMPORTFILE(FILENAME) reads data from text file
%  FILENAME for the default selection.  Returns the data as a table.
%
%  RUNNING0002S1A2 = IMPORTFILE(FILE, DATALINES) reads data for the
%  specified row interval(s) of text file FILENAME. Specify DATALINES as
%  a positive scalar integer or a N-by-2 array of positive scalar
%  integers for dis-contiguous row intervals.
%
%  Example:
%  running0002S1a2 = importfile("/Users/rjhorn/Documents/DocumentsCopiedFromiCloud/GitHub/Research Techniques/EMG/running0002_S1_a_2.tsv", [15, Inf]);
%
%  See also READTABLE.
%
% Auto-generated by MATLAB on 10-Feb-2020 21:48:52

%% Input handling

% If dataLines is not specified, define defaults
if nargin < 2
    dataLines = [15, Inf];
end

%% Setup the Import Options
opts = delimitedTextImportOptions("NumVariables", 4);

% Specify range and delimiter
opts.DataLines = dataLines;
opts.Delimiter = "\t";

% Specify column names and types
opts.VariableNames = ["VastusLateralis", "VastusMedialis", "TibialisAnterior", "LateralGastroc"];
opts.VariableTypes = ["double", "double", "double", "double"];
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
running0002S1a2 = readtable(filename, opts);

end