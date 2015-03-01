function [ prob ] = prob_state_n( P, Q, obs, state, n, pi )
%Gives the probability of being in state n at the time of the nth
%observation.

fwd = forward( obs, P, Q, pi );

numerator = fwd( state, n );

denominator = sum( fwd( :, n ) );

prob = numerator / denominator ;
end

