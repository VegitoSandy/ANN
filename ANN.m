% Example: Create a network with 2 hidden layers
net = feedforwardnet([10 5 1]); % 10 inputs, 2 hidden layers with 5 neurons each, 1 output

% Set activation functions (optional)
net.layers{2}.transferFcn = 'tansig'; % tansig for hidden layer
net.layers{3}.transferFcn = 'purelin'; % purelin for output layer

% Example: Train the network with sample data
inputs = [ ... ; % Your training data (each row is an input vector)
targets = [ ... ; % Your desired outputs (each row is a target vector)

[net, tr] = train(net, inputs, targets);

% Example: Simulate the output for a new input
new_input = [1 2 3]; % Example input vector
output = sim(net, new_input);