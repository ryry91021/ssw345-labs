% Run the Simulink model
simOut = sim('yourSimulinkModelName'); % Replace with your model's name

% Extract the execution times from the Simulink model
executionTimes = simOut.get('yourLoggedVariable'); % Replace with the name of the variable that logs execution times

% Perform the calculations (min, max, avg)
maxTime = max(executionTimes);
minTime = min(executionTimes);
avgTime = mean(executionTimes);

% Display the results
fprintf('Max Execution Time: %.4f seconds\n', maxTime);
fprintf('Min Execution Time: %.4f seconds\n', minTime);
fprintf('Average Execution Time: %.4f seconds\n', avgTime);
