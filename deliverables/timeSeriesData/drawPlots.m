%%% AStuff Senior Project 
%%% Redraw Plots from Final Report
%%% Nick Nauman & Hannah Grady

clear all; close all; clc;

%% Load Data
accelNeuralNetworkLog2 = readmatrix('accelNeuralNetworkTimeSeriesDataLog2.dat');
accelNeuralNetworkLog3 = readmatrix('accelNeuralNetworkTimeSeriesDataLog3.dat');
brakeNeuralNetwork = readmatrix('brakeNeuralNetworkTimeSeriesData.dat');
steeringNeuralNetworkLog1 = readmatrix('steeringNeuralNetworkTimeSeriesDataLog1.dat');
steeringNeuralNetworkLog3 = readmatrix('steeringNeuralNetworkTimeSeriesDataLog3.dat');
bywireAccelArx = readmatrix('bywireAccelArxTimeSeriesData.dat');
manualAccelTf = readmatrix('manualAccelTfTimeSeriesData.dat');
bywireSteeringTf = readmatrix('bywireSteeringTfTimeSeriesData.dat');
manualSteeringTf = readmatrix('manualSteeringTfTimeSeriesData.dat');

%% Generate Steering Neural Network Plot
figure();
plot(steeringNeuralNetworkLog1(1,:), steeringNeuralNetworkLog1(2,:), 'r:', 'LineWidth', 2)
xlabel('Time (s)', 'FontSize', 14);
ylabel('Steering Angle [rad]', 'FontSize', 14);
grid on;
grid minor;

figure();
plot(steeringNeuralNetworkLog3(1,:), steeringNeuralNetworkLog3(2,:), 'r:', 'LineWidth', 2)
xlabel('Time (s)', 'FontSize', 14);
ylabel('Steering Angle [rad]', 'FontSize', 14);
grid on;
grid minor;

%% Generate Acceleration Neural Network Plot
figure();
plot(accelNeuralNetworkLog2(1,:), accelNeuralNetworkLog2(2,:), 'r:', 'LineWidth', 2)
xlabel('Time (s)', 'FontSize', 14);
ylabel('Normalized Acceleration Pedal Position', 'FontSize', 14);
grid on;
grid minor;

figure();
plot(accelNeuralNetworkLog3(1,:), accelNeuralNetworkLog3(2,:), 'r:', 'LineWidth', 2)
xlabel('Time (s)', 'FontSize', 14);
ylabel('Normalized Acceleration Pedal Position', 'FontSize', 14);
grid on;
grid minor;

%% Generate Brake Neural Network Plot
figure();
plot(brakeNeuralNetwork(1,:), brakeNeuralNetwork(2,:), 'r:', 'LineWidth', 2)
xlabel('Time (s)', 'FontSize', 14);
ylabel('Normalized Brake Pedal Position', 'FontSize', 14);
grid on;
grid minor;

%% Generate Steering Transfer Function Plot
figure();
plot(manualSteeringTf(1,:),manualSteeringTf(2,:), 'r:', 'LineWidth', 2)
hold on;
plot(manualSteeringTf(3,:),manualSteeringTf(4,:), 'b-', 'LineWidth', 1.5)
hold off;
xlabel('Time (s)', 'FontSize', 14);
ylabel('Steering Angle [rad]', 'FontSize', 14);
legend('Manual Steering Transfer Function Model Response: 83.25%', 'Actual Steering Angle', 'Location', 'northwest')
grid on;
grid minor;

figure();
plot(bywireSteeringTf(1,:),bywireSteeringTf(2,:), 'r:', 'LineWidth', 2)
hold on;
plot(bywireSteeringTf(3,:),bywireSteeringTf(4,:), 'b-', 'LineWidth', 1.5)
hold off;
xlabel('Time (s)', 'FontSize', 14);
ylabel('Steering Angle [rad]', 'FontSize', 14);
legend('Bywire Steering Transfer Function Model Response: 86.87%', 'Actual Steering Angle', 'Location', 'northwest')
grid on;
grid minor;

%% Generate Acceleration Transfer Function Plot
figure();
plot(manualAccelTf(1,:),manualAccelTf(2,:), 'r:', 'LineWidth', 2)
hold on;
plot(manualAccelTf(3,:),manualAccelTf(4,:), 'b-', 'LineWidth', 1.5)
hold off;
xlabel('Time (s)', 'FontSize', 14);
ylabel('Normalized Acceleration Pedal Position', 'FontSize', 14);
legend('Manual Accel Transfer Function Model Response: 98.3%', 'Actual Pedal Position')
grid on;
grid minor;

figure();
plot(bywireAccelArx(1,:),bywireAccelArx(2,:), 'r:', 'LineWidth', 2)
hold on;
plot(bywireAccelArx(3,:),bywireAccelArx(4,:), 'b-', 'LineWidth', 1.5)
hold off;
xlabel('Time (s)', 'FontSize', 14);
ylabel('Normalized Acceleration Pedal Position', 'FontSize', 14);
legend('Bywire Accel ARX Model Response: 97.75%', 'Actual Pedal Position')
grid on;
grid minor;