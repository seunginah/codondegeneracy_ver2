function [ prob ] = pred_next_signal( signal, obs, P, Q, pi  )
%Gives the probability of the next signal for the signal specified

%get the # of signals
[m,~] = size(P);

temp = 0;

for i = 1:m
   temp = temp + Q( i, signal) * pred_next_state( i, obs, P, Q, pi );
end

prob = temp;
end

