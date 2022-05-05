%%% ECE499 Senior Project
%%% Load and Prepare Data Script
%%% 1/26/22
%%% Nick Nauman and Hannah Grady

clear all; close all; clc

%% Load Data into Workspace
accel1 = load('dataLogs\accelDataLogs\accellogs1.mat');
accel2by = load('dataLogs\accelDataLogs\accellogs2_bywire.mat');
accel2m = load('dataLogs\accelDataLogs\accellogs2_manual.mat');
accel3m = load('dataLogs\accelDataLogs\accellogs3_manual.mat');
accel3by = load('dataLogs\accelDataLogs\accellogs3_bywire.mat');

%% Save Data to Workspace for Simulink and Simulate Model
accel2_inputs = [accel2m.accel2_manual.Input_VoltageA accel2m.accel2_manual.Input_VoltageB]';
accel2_target = [accel2m.accel2_manual.Output_Position]';
accellog.time = accel2m.accel2_manual.Time_s_;
accellog.signals.dimensions = 2;
accellog.signals.values = accel2_inputs';
accelout.time = accel2m.accel2_manual.Time_s_;
accelout.signals.values = accel2_target';
accelout.signals.dimensioins = 1;
tstop = (length(accel2_target)-1)*0.033;
accellog2sim = sim('accelSystemNeuralNetworkSimulink19b', tstop);

figure();
plot(accellog2sim.tout, accellog2sim.actualpedal.Data)
hold on;
plot(accellog2sim.tout, accel2_target)
hold off;

accel3_inputs = [accel3m.accel3_manual.Input_VoltageA accel3m.accel3_manual.Input_VoltageB]';
accel3_target = [accel3m.accel3_manual.Output_Position]';
accellog.time = accel3m.accel3_manual.Time_s_;
accellog.signals.dimensions = 2;
accellog.signals.values = accel3_inputs';
accelout.time = accel3m.accel3_manual.Time_s_;
accelout.signals.values = accel3_target';
accelout.signals.dimensioins = 1;
tstop = (length(accel3_target)-1)*0.033;
accellog3sim = sim('accelSystemNeuralNetworkSimulink19b', tstop);

figure();
plot(accellog3sim.tout, accellog3sim.actualpedal.Data)
hold on;
plot(accellog3sim.tout, accel3_target)
hold off;
