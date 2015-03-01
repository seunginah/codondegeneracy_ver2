% initial testing for presentation
% requires stats toolbox
dataname = '10byaccession.csv';
data = csvread( dataname );

[m,~] = size( data );
seq = zeros(m);
nativeSeq = data( :, 4 );

for i = 1:m
    seq(i) = native2num( nativeSeq(i), 1 ); %converted observation sequence.
end

%utilize first 3 cols of data to learn codon data

states = 1:64; %total codons

% test against hmm provided by mat
[P_hat, Q_hat] = hmmestimate( seq, states);
