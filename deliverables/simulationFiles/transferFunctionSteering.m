%%% AStuff Senior Project
%%% Create Transfer Function Plots for Steering System
%%% Based on Models Created in the System Identification Toolbox

%%% Nick Nauman & Hannah Grady
%%% Bradley University
%%% ECE499
%%% 4/26/22

clear all; close all; clc;

%% Load Data into Workspace
steer1 = load('dataLogs\steeringDataLogs\steerlogs1_clean.mat');
steer2 = load('dataLogs\steeringDataLogs\steerlogs2_clean.mat');
steer3 = load('dataLogs\steeringDataLogs\steerlogs3_clean.mat');

%% Save Data as IDDATA object
steerlog1 = iddata(steer1.steering1.Out_SWAngle, [steer1.steering1.Out_VoltageA steer1.steering1.Out_VoltageB], 0.033);
steerlog2 = iddata(steer2.steering2.Out_SWAngle, [steer2.steering2.Out_VoltageA steer2.steering2.Out_VoltageB], 0.033);
steerlog3 = iddata(steer3.steering3.Out_SWAngle, [steer3.steering3.Out_VoltageA steer3.steering3.Out_VoltageB], 0.033);

%%% Create models from iddata logs using System ID Toolbox
%%% See online documentation for further instruction

%% Load Saved Models
manualSteeringTFModel = load('TFModels_SysID\manualSteeringTFModel.mat');
bywireSteeringTFModel = load('TFModels_SysID\bywireSteeringTFModel.mat');

%% Plot Figures
figure;
compare(steerlog1, manualSteeringTFModel.manualSteeringTfModel);

figure;
compare(steerlog2, bywireSteeringTFModel.bywireSteeringTFModel)