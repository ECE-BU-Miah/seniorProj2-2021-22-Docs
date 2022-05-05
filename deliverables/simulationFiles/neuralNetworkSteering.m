%%% ECE499 Senior Project
%%% Load and Prepare Data Script
%%% 1/26/22
%%% Nick Nauman and Hannah Grady

clear all; close all; clc

%% Load Data into Workspace
steer1 = load('dataLogs\steeringDataLogs\steerlogs1_clean.mat');
steer2 = load('dataLogs\steeringDataLogs\steerlogs2_clean.mat');
steer3 = load('dataLogs\steeringDataLogs\steerlogs3_clean.mat');

%% Save Data to Workspace for Simulink and Simulate Model
steering1 = steer1.steering1;
steering1_inputs = [steering1.In_VoltageA steering1.In_VoltageB]';
steering1_target = [steering1.Out_SWAngle]';
steeringlog.time = steering1.Time_s_;
steeringlog.signals.dimensions = 2;
steeringlog.signals.values = steering1_inputs';
steeringout.time = steering1.Time_s_;
steeringout.signals.values = steering1_target';
steeringout.signals.dimensioins = 1;
tstop = (length(steering1_target)-1)*0.033;
steeringlog1sim = sim('steeringSystemNeuralNetworkSimulink19b', tstop);
figure();
plot(steeringlog1sim.tout, steeringlog1sim.actualsteering.Data)
hold on;
plot(steeringlog1sim.tout, steering1_target)
hold off;

steering3 = steer3.steering3;
steering3_inputs = [steering3.In_VoltageA steering3.In_VoltageB]';
steering3_target = [steering3.Out_SWAngle]';
steeringlog.time = steering3.Time_s_;
steeringlog.signals.dimensions = 2;
steeringlog.signals.values = steering3_inputs';
steeringout.time = steering3.Time_s_;
steeringout.signals.values = steering3_target';
steeringout.signals.dimensioins = 1;
tstop = (length(steering3_target)-1)*0.033;
steeringlog3sim = sim('steeringSystemNeuralNetworkSimulink19b', tstop);

figure();
plot(steeringlog3sim.tout, steeringlog3sim.actualsteering.Data)
hold on;
plot(steeringlog3sim.tout, steering3_target)
hold off;