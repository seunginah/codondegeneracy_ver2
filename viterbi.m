function [ path ] = viterbi( obs, pi, P, Q )
%Viterbi algorithm for HMMs

%%% Params:
% obs: a vector of observations.
% pi: a vector of initial probabilities
% P: Transition matrix
% Q: Conditional emission matrix. Rows are states and columns are
% observations.

%get # of rows of P
[nstates, ~] = size( P );

table = zeros( nstates, length(obs) );
path = zeros( 1, length(obs) );

%initialize the first row of table
for i = 1:nstates
    table( i, 1 ) = pi( i ) * Q( i, obs(1) );
    
end
%take index of the max over column
[ ~, col_argmax ] = max( table(:,1), [], 1 ); % max for each row - 2nd dimension
path( 1, 1 ) = col_argmax;

for j = 2:length( obs ) %for the rest of the observations
    
    oldState = path( j-1 );
    
    for i = 1:nstates
    
        table( i, j ) = table( oldState, j-1 ) * P( oldState, i ) * Q( i, j ); 
    end
    [ ~, col_argmax ] = max( table( :, j ), [], 1);
    path(j) = col_argmax;
    
end
table % display table for debugging purposes

end

