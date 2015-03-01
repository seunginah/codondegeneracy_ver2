function [ quotient ] = gammaHMM( i, t, obs, fwd, bwd )
%Returns gamma helper function for Baum-Welch

   numerator = fwd( i , t ) * bwd( i, t );

   %fwd( :, t )' * bwd( :, t )
   denominator = fwd( :, t )' * bwd( :, t );
      
  quotient = numerator / denominator;

end

