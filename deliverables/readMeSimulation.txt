List of files:

readMeSimulation.txt => This file you are reading

simulationFiles\transferFunctionSteering.m => MATLAB code to create and estimate response of steering subsystem transfer functions
simulationFiles\nueralNetworkSteering.m => MATLAB code to prepare data and simulate nueral network response of steering subsystem for the Simulink model
simulationFiles\steeringSystemNeuralNetworkSimulink19b.slx => Simulink diagram of steering subsystem nueral network model

simulationFiles\transferFunctionAccel.m => MATLAB code to create and estimate response of acceleration subsystem transfer functions
simulationFiles\neuralNetworkAccel.m => MATLAB code to prepare data and simulate nueral network response of acceleration subsystem for the Simulink model
simulationFiles\accelSystemNeuralNetworkSimulink19b.slx => Simulink diagram of acceleration subsystem nueral network model

simulationFiles\neuralNetworkBrake.m => MATLAB code to prepare data and simulate nueral network response of brake subsystem for the Simulink model
simulationFiles\brakeSystemNeuralNetworkSimulink19b.slx => Simulink diagram of brake subsystem nueral network model

timeSeriesData\manualSteeringTfTimeSeriesData.dat => Time-series data for Fig. 1 in the final report  
timeSeriesData\bywireSteeringTfTimeSeriesData.dat => Time-series data for Fig. 1 in the final report  
timeSeriesData\manualAccelTfTimeSeriesData.dat => Time-series data for Fig. 1 in the final report  
timeSeriesData\bywireAccelArxTimeSeriesData.dat => Time-series data for Fig. 1 in the final report  
timeSeriesData\steeringNeuralNetworkTimeSeriesDataLog1.dat => Time-series data for Fig. 1 in the final report  
timeSeriesData\steeringNeuralNetworkTimeSeriesDataLog3.dat => Time-series data for Fig. 1 in the final report
timeSeriesData\accelNeuralNetworkTimeSeriesDataLog2.dat => Time-series data for Fig. 1 in the final report  
timeSeriesData\accelNeuralNetworkTimeSeriesDataLog3.dat => Time-series data for Fig. 1 in the final report  
timeSeriesData\brakeNeuralNetworkTimeSeriesData.dat => Time-series data for Fig. 1 in the final report    




==================
How to run steering model using system identification 
==================

1. Open MATLAB
2. Open simulationFiles\transferFunctionSteering.m
3. Click Run (F5)
4. All figures should appear on the screen
5. To view time-series data, open timeSeriesData\manualSteeringTfTimeSeriesData.dat and timeSeriesData\bywireSteeringTfTimeSeriesData.dat


==================
How to run steering model using neural network modeling  
==================

1. Open MATLAB
2. Open simulationFiles\nueralNetworkSteering.m
3. Open Simulink
4. Open Simulink file simulationFiles\steeringSystemNeuralNetworkSimulink19b.slx
5. Go to MATLAB and run nueralNetworkSteering.m
6. To view time-series data, open timeSeriesData\steeringNeuralNetworkTimeSeriesDataLog1.dat and timeSeriesData\steeringNeuralNetworkTimeSeriesDataLog3.dat


==================
How to run acceleration model using system identification 
==================

1. Open MATLAB
2. Open simulationFiles\transferFunctionAccel.m
3. Click Run (F5)
4. All figures should appear on the screen
5. To view time-series data, open timeSeriesData\manualAccelTfTimeSeriesData.dat and timeSeriesData\bywireAccelArxTimeSeriesData.dat


==================
How to run acceleration model using neural network modeling  
==================

1. Open MATLAB
2. Open simulationFiles\nueralNetworkAccel.m
3. Open Simulink
4. Open Simulink file simulationFiles\accelSystemNeuralNetworkSimulink19b.slx
5. Go to MATLAB and run nueralNetworkAccel.m
6. To view time-series data, open timeSeriesData\accelNeuralNetworkTimeSeriesDataLog2.dat and timeSeriesData\accelNeuralNetworkTimeSeriesDataLog3.dat


==================
How to run brake model using neural network modeling  
==================

1. Open MATLAB
2. Open simulationFiles\nueralNetworkBrake.m
3. Open Simulink
4. Open Simulink file simulationFiles\BrakeSystemNeuralNetworkSimulink19b.slx
5. Go to MATLAB and run nueralNetworkBrake.m
6. To view time-series data, open timeSeriesData\brakeNeuralNetworkTimeSeriesData.dat

