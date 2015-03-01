function [ P, Q, pi ] = baum_welch( obs, numSteps, numStates, diffObs, pi_hat, P_hat, Q_hat )
%Implements Baum-Welch algorithm to estimate P, Q, and pi.

n = length( obs );

for step = 1:numSteps
   
    %get fwd and bwd procedures from the current model
    
    fwd = forward( obs, P_hat, Q_hat, pi_hat );
    bwd = backward( obs, P_hat, Q_hat );
    
    %Updating section
    
    %first for pi
    for i = 1:numStates
       pi_hat( i ) = gammaHMM( i, 1, obs, fwd, bwd );  %gamma is to be implemented
    end %end pi estimation
    
    %now for P
    for i = 1:numStates
        for j = 1:numStates
            numerator = 0;
            denominator = 0;
            for t = 1:n
                numerator = numerator + prob( t, i, j, obs, fwd, bwd, P_hat, Q_hat );
            
                denominator = denominator + gammaHMM( i, t, obs, fwd, bwd );
            end
            P_hat( i, j ) = numerator / denominator ;
            
        end
        
    end %end P estimation
    
    %now for Q
    for i = 1:numStates
        for j = 1:diffObs
            
            numerator = 0;
            denominator = 0;
            
            for t = 1:n
                
                g = gammaHMM( i, t, obs, fwd, bwd );
                
                if j == obs(t)
                    numerator = numerator + g * 1;
                end
                    
                denominator = denominator + g;
            end
           
            Q_hat(i,j) = numerator / denominator;
    
        end
    end% end Q estimation
    
end%end outermost loop

pi = pi_hat; %assign estimates to be outputs.
P = P_hat;
Q = Q_hat;
end %  end function