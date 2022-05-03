%Using the Neural Network Timeseries app 

%Read the brake logs 
brakeLog1 = readtable('dataLogs\brakeDataLogs\brake_test_log_T001.csv'); 
brakeLog2 = readtable('dataLogs\brakeDataLogs\brake_test_log_T002.csv'); 
brakeLog3 = readtable('dataLogs\brakeDataLogs\brake_test_log_T003.csv'); 

brakeLog1Manual1 = brakeLog1(1:4132,:);
brakeLog2_Manual = brakeLog2; 
brakeLog2ManualLogs = brakeLog2_Manual(1:1141,:); 


%Get needed inputs and outputs from each log 
outputValLog1 = brakeLog1Manual1.as_pacmod__BRAKE_RPT__OUTPUT_VALUE___;
pressureVoltage1Log1 = brakeLog1Manual1.as_pacmod__BRAKE_VOLTAGE_DIAGNOSTIC_RPT__BRAKE_1_IN_VOLTAGE;
pressureVoltage2Log1 = brakeLog1Manual1.as_pacmod__BRAKE_VOLTAGE_DIAGNOSTIC_RPT__BRAKE_2_IN_VOLTAGE;
positionVoltage1Log1 = brakeLog1Manual1.as_pacmod__BRAKE_VOLTAGE_DIAGNOSTIC_RPT_2__BRAKE_1_IN_VOLTAGE_2;
positionVoltage2Log1 = brakeLog1Manual1.as_pacmod__BRAKE_VOLTAGE_DIAGNOSTIC_RPT_2__BRAKE_2_IN_VOLTAGE_2;

outputValLog2 = brakeLog2ManualLogs.as_pacmod__BRAKE_RPT__OUTPUT_VALUE___;
pressureVoltage1Log2 = brakeLog2ManualLogs.as_pacmod__BRAKE_VOLTAGE_DIAGNOSTIC_RPT__BRAKE_1_IN_VOLTAGE;
pressureVoltage2Log2 = brakeLog2ManualLogs.as_pacmod__BRAKE_VOLTAGE_DIAGNOSTIC_RPT__BRAKE_2_IN_VOLTAGE;
positionVoltage1Log2 = brakeLog2ManualLogs.as_pacmod__BRAKE_VOLTAGE_DIAGNOSTIC_RPT_2__BRAKE_1_IN_VOLTAGE_2;
positionVoltage2Log2 = brakeLog2ManualLogs.as_pacmod__BRAKE_VOLTAGE_DIAGNOSTIC_RPT_2__BRAKE_2_IN_VOLTAGE_2;

outputValLog3 = brakeLog3.as_pacmod__BRAKE_RPT__OUTPUT_VALUE___;
pressureVoltage1Log3 = brakeLog3.as_pacmod__BRAKE_VOLTAGE_DIAGNOSTIC_RPT__BRAKE_1_IN_VOLTAGE;
pressureVoltage2Log3 = brakeLog3.as_pacmod__BRAKE_VOLTAGE_DIAGNOSTIC_RPT__BRAKE_2_IN_VOLTAGE;
positionVoltage1Log3 = brakeLog3.as_pacmod__BRAKE_VOLTAGE_DIAGNOSTIC_RPT_2__BRAKE_1_IN_VOLTAGE_2;
positionVoltage2Log3 = brakeLog3.as_pacmod__BRAKE_VOLTAGE_DIAGNOSTIC_RPT_2__BRAKE_2_IN_VOLTAGE_2;
 


%Group together the inputs and outputs 
inputsLog1 = [pressureVoltage1Log1,pressureVoltage2Log1,positionVoltage1Log1, positionVoltage2Log1]';
inputsLog2 = [pressureVoltage1Log2,pressureVoltage2Log2,positionVoltage1Log2, positionVoltage2Log2]';
% inputsLog3 = [pressureVoltage1Log3,pressureVoltage2Log3,positionVoltage1Log3, positionVoltage2Log3]';

outputLog1 = [outputValLog1]';
outputLog2 = [outputValLog2]';
% outputLog3 = [outputValLog3]';

%set up stuff for the from workspace blocks for further testing of the NN
%model 
sysBrakeLog1.signals.values = inputsLog1'; 
sysBrakeLog1.sampleTime = 0.033; 
sysBrakeLog1.dimensions = 4; 
sysBrakeLog1.time = brakeLog1Manual1.Time_s_; 

sysBrakeLog1Pedal.signals.values = outputLog1'; 
sysBrakeLog1Pedal.sampleTime = 0.033;
sysBrakeLog1Pedal.dimensions = 1; 
sysBrakeLog1Pedal.time = brakeLog1Manual1.Time_s_;
