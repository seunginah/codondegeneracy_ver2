function [ aminoacid ] = get_aminoacid( codon_numbytes )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
codons = [ 
    'g' 'c' 'u' 'a'; % ALANINE
    'g' 'c' 'C' 'A';
    'g' 'c' 'A' 'A';
    'g' 'c' 'G' 'A';
    't' 't' 'U' 'F'; % PHENYLALANINE
    't' 't' 'C' 'F';
    't' 't' 'A' 'L'; % LEUCINE
    't' 't' 'G' 'L';
    'c' 't' 'U' 'L';
    'c' 't' 'C' 'L';
    'c' 't' 'A' 'L';
    'c' 't' 'G' 'L';
    'a' 't' 'U' 'I'; % ISOLEUCINE
    'a' 't' 'C' 'I';
    'a' 't' 'A' 'I';
    'g' 't' 'U' 'V'; % VALINE
    'g' 't' 'C' 'V';
    'g' 't' 'A' 'V';
    'g' 't' 'G' 'V';
    't' 'c' 'U' 'S'; % SERINE
    't' 'c' 'C' 'S';
    't' 'c' 'A' 'S';
    't' 'c' 'G' 'S';
    'a' 'g' 'U' 'S';
    'a' 'g' 'C' 'S';
    'c' 'c' 'U' 'P'; % PROLINE
    'c' 'c' 'C' 'P';
    'c' 'c' 'A' 'P';
    'c' 'c' 'G' 'P';
    'a' 'c' 'U' 'T'; % THREONINE
    'a' 'c' 'C' 'T';
    'a' 'c' 'A' 'T';
    'a' 'c' 'G' 'T';
    't' 'a' 'U' 'Y'; % TYROSINE
    'u' 'a' 'C' 'Y';
    'c' 'a' 'U' 'H'; % HISTIDINE
    'c' 'a' 'C' 'H';
    'c' 'a' 'A' 'Q'; % GLUTAMINE
    'c' 'a' 'G' 'Q';
    'a' 'a' 'U' 'N'; % ASPARAGINE
    'a' 'a' 'C' 'N';
    'a' 'a' 'A' 'K'; % LYSINE
    'a' 'a' 'G' 'K';
    'g' 'a' 'U' 'D'; % ASPARTATE  aka ASPARTIC ACID
    'g' 'a' 'C' 'D';
    'g' 'a' 'A' 'E'; % GLUTAMATE aka GLUTAMIC ACID
    'g' 'a' 'G' 'E';
    't' 'G' 'U' 'C'; % CYSTEINE
    't' 'G' 'C' 'C'; 
    't' 'G' 'G' 'W'; % TRYPTOPHAN
    'c' 'G' 'U' 'R'; % ARGININE
    'c' 'G' 'C' 'R';
    'c' 'G' 'A' 'R';
    'c' 'G' 'G' 'R';
    'a' 'G' 'A' 'R';
    'a' 'G' 'G' 'R';
    'g' 'G' 'U' 'G'; % GLYCINE
    'g' 'G' 'C' 'G';
    'g' 'G' 'A' 'G';
    'g' 'G' 'G' 'G';
    
    't' 'A' 'A' 'X'; % STOP
    't' 'A' 'G' 'X'; % STOP
    't' 'G' 'A' 'X'; % STOP
    'a' 'U' 'G' 'M'; % METHIONINE aka START    
];

size(codons);
for a = 1:size(codons,1)
    codon_upper(a,1:4) = lower(codons(a,1:4));
    codon_nums(a,1:4) = unicode2native(codon_upper(a,1:4));
end


% convert codon from numeric byte to unicode
% for i = 1:3
%     codon(i) = native2unicode(codon_numbytes(i));
%     
%     % after translating into unicode
%     if i == 3
%         % find the corresponding amino acid
%         for j = 1:64
%             if strcmpi(codons(j,1:3), codon) ==1
%                 aminoacid = codons(j,4);
%         end
%     end
% end

codon_numbytes;
aminoacid = 0;

for b = 1:size(codon_upper,1)
    if codon_upper(b, 1:3)==codon_numbytes
        aminoacid = codon_upper(b, 4);
        aminoacid = unicode2native(aminoacid);
    end
end

aminoacid;
end

