function [ f_vals ] = forward( obs, P, Q, init_prob )
%FORWARD computes the value of F_n(state) for a given state in an HMM.
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
% f_vals ........ the output of the algorithm (matrix)

[nstates, ~ ] = size(P);

m = length( obs );
%ROWS STORE THE STATES, COLUMNS STORE THE TIME-STEP
f_vals = zeros( nstates, m );

%base case:

%initial probability.
for state=1:nstates
    f_vals( state, 1 ) = init_prob(state) * Q( state, obs(1) );
end

%for each state: 
for k = 1:(m-1)    
    for j = 1:nstates
        for i = 1:nstates
            f_vals( j, k+1 ) = f_vals( j, k+1 ) + f_vals(i,k) * P(i,j);
        end
    
        f_vals(j, k+1) = f_vals(j, k+1) * Q( j, obs(k+1) );
    end  
    
end

end

