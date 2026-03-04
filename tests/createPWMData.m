%% Raw data
t = [0;5;5;10];         % Time
u = [-2;-0.25;0.25;2];  % Controller input

%% Approach #1: Array format
% Use if all inputs share the same time values and have the same data types.
% The first column is time and all subsequent columns are the input data.
pwmData = [t,u];

%% Approach #2: Timeseries format
% Use if inputs have different time values and/or data types.
% If the input data is a bus, you can create a structure of timeseries.
pwmData = timeseries(u,t);

%% Approach #3: Structure format
% Use if inputs have different time values and/or data types.
% If the input data is a bus, you can use this format as well.
%
% If you leave the "time" field of a structure empty [], the
% corresponding input port will inherit the sample time from the model.
pwmData = struct;
pwmData.time = t;
pwmData.signals.values = u;