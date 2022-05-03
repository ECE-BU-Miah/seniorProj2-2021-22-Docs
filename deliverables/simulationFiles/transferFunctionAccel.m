%%% AStuff Senior Project
%%% Create Transfer Function Plots for Acceleration System
%%% Based on Models Created in the System Identification Toolbox

%%% Nick Nauman & Hannah Grady
%%% Bradley University
%%% ECE499
%%% 4/26/22

clear all; close all; clc;

%% Load Data into Workspace
accel1 = load('dataLogs\accelDataLogs\accellogs1.mat');
accel2by = load('dataLogs\accelDataLogs\accellogs2_bywire.mat');
accel2m = load('dataLogs\accelDataLogs\accellogs2_manual.mat');
accel3m = load('dataLogs\accelDataLogs\accellogs3_manual.mat');
accel3by = load('dataLogs\accelDataLogs\accellogs3_bywire.mat');

%% Save Data as IDDATA object
accellog1 = iddata(accel1.accel1.Output_Position, [accel1.accel1.Output_VoltageA accel1.accel1.Output_VoltageB], 0.033);
accellog2by = iddata(accel2by.accel2_bywire.Output_Position, [accel2by.accel2_bywire.Output_VoltageA accel2by.accel2_bywire.Output_VoltageB], 0.033);
accellog2m = iddata(accel2m.accel2_manual.Output_Position, [accel2m.accel2_manual.Output_VoltageA accel2m.accel2_manual.Output_VoltageB], 0.033);
accellog3by = iddata(accel3by.accel3_bywire.Output_Position, [accel3by.accel3_bywire.Output_VoltageA accel3by.accel3_bywire.Output_VoltageB], 0.033);
accellog3m = iddata(accel3m.accel3_manual.Output_Position, [accel3m.accel3_manual.Output_VoltageA accel3m.accel3_manual.Output_VoltageB], 0.033);

%%% Create models from iddata logs using System ID Toolbox
%%% See online documentation for further instruction

%% Load Saved Models
manualAccelTFModel = load('TFModels_SysID\manualAccelTFModel.mat');
bywireAccelArxModel = load('TFModels_SysID\bywireAccelArxModel.mat');

%% Plot Figures
figure;
compare(accellog3m, manualAccelTFModel.manualAccelTFModel1)

figure;
compare(accellog3by, bywireAccelArxModel.bywireAccelArxModel)