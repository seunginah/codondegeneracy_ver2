function [ bwd ] = backward(  obs, P, Q )
%BACKWARD computes the value of F_n(state) for a given state in an HMM.
%INPUTS:
% state: the state in question (scalar)
% obs: the sequence of observations (vector)
% n: the nth iteration of the forward algorithm (scalar)
% P: transition probabilities from state to state (the hidden
% matrix)
% Q: emission probabilities matrix]
% init_prob: vector containing initial probabilities for all states.
%
%OUTPUTS:
% b_vals: the output of the algorithm (matrix)



n = length(obs);
%m holds the # of states.
[m,~] = size(P);

b_vals = zeros( m, n );


%base case
for i= 1:m
    b_vals( i, n ) = 1;
end

%recursive case
for k = (n-1):-1:1
    for i = 1:m
        
        b_vals( i, k ) = 0;
        
        for j=1:m
            b_vals(i,k) =  b_vals(i,k) + b_vals( j, k+1 ) * P(i,j) * Q(j,obs(k+1));
        end
    end
end
bwd = b_vals;

end

