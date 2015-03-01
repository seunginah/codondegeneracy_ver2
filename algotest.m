%TESTING SCRIPT


%testing for forward algorithm/equations.
%examples taken from Ross p. 270

P = [ 0.9 0.1; 0 1 ];
%columns of Q are the signals, the rows are the states.
Q = [ 0.01 0.99; 0.04 0.96 ];

%[states, ~] = size(p);

obs = [ 2 1 2];

init_prob = [ 0.8 0.2 ];
% 
% f1_1 = forward( 1, obs, 1, P, Q, init_prob );
% f1_2 = forward( 2, obs, 1, P, Q, init_prob );
% 
% f2_1 = forward( 1, obs, 2, P, Q, init_prob );
% f2_2 = forward( 2, obs, 2, P, Q, init_prob );
% 
% f3_1 = forward( 1, obs, 3, P, Q, init_prob );
% f3_2 = forward( 2, obs, 3, P, Q, init_prob );
f_vals = forward( obs, P, Q, init_prob )

%to get the probability of a certain state j being visited for n = 1:n, take
%fn_j / sum( fn_i ) for all states i.

%p1_1 = f1_1 / (f1_1 + f1_2);

f_vals(1,3) / sum(f_vals(:,3))

%to predict the n+1 state given a sequence of n signals
pred_next_state(1, obs, P, Q, init_prob)

%to predict a the n+1 signal given a sequence of n signals:
pred_next_signal( 1, obs, P, Q, init_prob  )

pred_next_signal( 2, obs, P, Q, init_prob  )

% to test viterbi algorithm; taken from example on Wikipedia's page for the
% Viterbi algorithm
P = [.7 .3; .4 .6]; %1st row is for 'healthy', 2nd is for 'fever'.

Q = [ .5 .4 .1; .1 .3 .6];%rows are for states, columns for observations. 
                            % 1st col gives 'normal', 2nd gives 'cold', 3rd
                            % gives 'dizzy'.

pi = [.6 .4]; %initial probabilities

obs = [1 2 3]; %observed 'normal, cold, dizzy' in that order.

%as the cited example says, the path should be [1,1,2] to correspond to
%[healthy, healthy, fever].
path = viterbi( obs, pi, P, Q )


%TESTING BACKWARD



%TESTING BAUM-WELCH

P = [.5 .5; .3 .7];

Q = [.3 .7; .8 .2]; %col 1: no eggs; col 2: eggs

pi = [.2 .8];

obs = [1 1 1 1 1 1 1 1 1 2 2 2 2 1 1 1 1 1];

[ P_hat, Q_hat, pi_hat ] = baum_welch( obs, 50, 2, 2, pi, P, Q )

obs = [1 1 1 1 1 1 1 1 1 2 2 2 2 1 1 1 1 1 2 2 2];

[ P_hat, Q_hat, pi_hat ] = baum_welch( obs, 50, 2, 2, pi, P, Q )

obs = [1 1 1 1 1 1 1 1 1 2 2 2 2 1 1 1 1 1 2 2 2 1 2 2 2 2 1 1];

[ P_hat, Q_hat, pi_hat ] = baum_welch( obs, 50, 2, 2, pi, P, Q )

pi = [.4 .6];

[ P_hat, Q_hat, pi_hat ] = baum_welch( obs, 50, 2, 2, pi, P, Q )