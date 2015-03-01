function [ prob ] = pred_next_state( pred, obs, P, Q, pi )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

temp = 0;

[m,~] = size(P);

n = length(obs);

for i = 1:m %for all the states
    
    temp = temp + prob_state_n(P, Q, obs, i, n, pi) * P(i, pred );
end

prob = temp;
end

