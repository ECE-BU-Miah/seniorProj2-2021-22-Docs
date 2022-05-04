List of files:

readMeTest.txt => This file you are reading
validationFiles\Dspacemodel.mdl => File to control inputs to Dspace bench using Control Desk 



==================
How to run validation of steering neural network model
==================

1. Open Control Desk
2. Open the model validationFiles\Dspacemodel.mdl
3. Select "Go Online" to activate platform
4. Turn Power Status to 1 to set power to the Dspace peripherals
5. Set the input torque voltages and desired steering angle inputs to desired test values
6. Verify the output steering angle matches the desired steering angle (within error margins)


==================
How to run validation of acceleration neural network model 
==================

1. Open Control Desk
2. Open the model validationFiles\Dspacemodel.mdl
3. Select "Go Online" to activate platform
4. Turn Power Status to 1 to set power to the Dspace peripherals
5. Set the input torque voltages and desired acceleration pedal position inputs to desired test values
6. Verify the output acceleration pedal position matches the desired acceleration pedal position (within error margins)


==================
How to run validation of brake neural network model 
==================

1. Open Control Desk
2. Open the model validationFiles\Dspacemodel.mdl
3. Select "Go Online" to activate platform
4. Turn Power Status to 1 to set power to the Dspace peripherals
5. Set the input torque voltages and desired brake pedal position inputs to desired test values
6. Verify the output brake pedal position matches the desired brake pedal position (within error margins)


