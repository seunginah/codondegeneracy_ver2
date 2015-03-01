function [ codons ] = get_nbs( aacode )
% this function takes in a letter that represents an amino acid
% then, it finds the number corresponding to that amino acid
% then, returns a list of possible nucleotide base sequences for that amino
% acid

% first 3 columns = codon
% A = 1 / U = 2 / G = 3 / C = 4

% fourth column = amino acid
% 1 = alanine(Ala, A) / 2 = arginine(Arg, R) / 3 = asparagine(Asn, N) / 4 =
% aspartate(Asp, D) / 5 = cysteine(Cys, C) / 6 = glutamine(Gln, Q) / 7 =
% Glutamate (Glu, E) / 8 = Glycine(Gly, G) / 9 = Histidine(His, H) / 10 =
% Isoleucine(Ile, I) / 11 = Leucine(Leu, L) / 12 = Lysine(Lys, K) / *** 13 =
% Methionine (Met, M) *** Not degenerate / 14 = Phenylalanine(Phe, F) / 15
% = Proline(Pro, P) / 16 = Serine(Ser, S) / 17 = Threonine(Thr, T) / *** 18 =
% Tryptophan(Trp, W) *** Not degenerate / 19 = Tyrosine(Tyr, Y) / 20 =
% Valine(Val, V) / 21 = Selenocysteine(Sec, U) / 22 = STOP codon
aa_codons = [ 
    3 4 2 1; % alanine
    3 4 4 1;
    3 4 1 1;
    3 4 3 1;
    
    4 3 2 2; % arginine
    4 3 4 2;
    4 3 1 2;
    4 3 3 2;
    1 3 1 2;
    1 3 3 2;
    
    1 1 2 3; % asparagine
    1 1 4 3;
    
    3 1 2 4; % aspartate
    3 1 4 4;
    
    2 3 2 5; % cysteine
    2 3 4 5; 
    
    4 1 1 6; % glutamine
    4 1 3 6;
    
    3 1 1 7; % glutamate
    3 1 3 7;
    
    3 3 2 8; % glycine
    3 3 4 8;
    3 3 1 8;
    3 3 3 8;
    
    4 1 2 9; % histidine
    4 1 4 9; 
    
    1 2 2 10; % isoleucine
    1 2 4 10;
    1 2 1 10;
    
    2 2 1 11; % leucine
    2 2 3 11;
    4 2 2 11;
    4 2 4 11;
    4 2 1 11;
    4 2 3 11;
    
    1 1 1 12; % lysine
    1 1 3 12;
    
    1 2 3 13; % methionine a.k.a. START codon
    
    2 2 2 14; % phenylalanine
    2 2 4 14;
    
    4 4 2 15; % proline
    4 4 4 15;
    4 4 1 15;
    4 4 3 15;
    
    2 4 2 16; % serine
    2 4 4 16;
    2 4 1 16;
    2 4 3 16;
    1 3 2 16;
    1 3 4 16;
    
    1 4 2 17; % threonine
    1 4 4 17;
    1 4 1 17;
    1 4 3 17;
    
    2 3 3 18; % tryptophan
    
    2 1 2 19; % tyrosine
    2 1 4 19;
    
    3 2 2 20; % valine
    3 2 4 20;
    3 2 1 20;
    3 2 3 20;
    
    2 1 1 21; % STOP codon
    2 1 3 21;
    2 3 1 21; % NOTICE this is the only codon that can result in different 
    % phenotype-- because selenocysteine is so rare, we will for the most part consider
    % UGA = STOP, not selenocysteine

];

aanum = aachar2aanum(aacode);

% get the first three columns associated with aanum
for i = 1:size(aa_codons,1)
   %n = aa_codons(:) 
   [row, col] = find(aa_codons(:,4)==aanum);
   codons = aa_codons(row,1:4);
end

end

