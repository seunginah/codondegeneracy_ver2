function [ aacode ] = native2num( aanative, num )
%UNTITLED2 Summary of this function goes here

% pass aanative (numbyte represenation of nucleotide or amino acid)
% pass num (=1 if translating amino acid, =2 if translating nucleotide)

%   % first 3 columns = codon
% A = 1 / U = 2 / G = 3 / C = 4

% fourth column = amino acid
% 1 = alanine(Ala, A) / 2 = arginine(Arg, R) / 3 = asparagine(Asn, N) / 4 =
% aspartate(Asp, D) / 5 = cysteine(Cys, C) / 6 = glutamine(Gln, Q) / 7 =
% Glutamate (Glu, E) / 8 = Glycine(Gly, G) / 9 = Histidine(His, H) / 10 =
% Isoleucine(Ile, I) / 11 = Leucine(Leu, L) / 12 = Lysine(Lys, K) / *** 13 =
% Methionine (Met, M) *** Not degenerate / 14 = Phenylalanine(Phe, F) / 15
% = Proline(Pro, P) / 16 = Serine(Ser, S) / 17 = Threonine(Thr, T) / *** 18 =
% Tryptophan(Trp, W) *** Not degenerate / 19 = Tyrosine(Tyr, Y) / 20 =
% Valine(Val, V) / 21 = STOP codon

aa = native2unicode(aanative)

if strcmpi(aa, 'a') ==1
    aacode = 1
end
if strcmpi(aa, 'r') ==1
    aacode = 2
end
if strcmpi(aa, 'n') ==1
    aacode = 3
end
if strcmpi(aa, 'd') ==1
    aacode = 4
end
if strcmpi(aa, 'c') ==1
    if num == 1
        aacode = 5
    end
    if num == 2
        aacode = 4
end
if strcmpi(aa, 'q') ==1
    aacode = 6
end
if strcmpi(aa, 'e') ==1
    aacode = 7
end
if strcmpi(aa, 'g') ==1
    if num == 1
        aacode = 8
    end
    if num == 2
        aacode = 3
    end
end
if strcmpi(aa, 'h') ==1
    aacode = 9
end
if strcmpi(aa, 'i') ==1
    aacode = 10
end
if strcmpi(aa, 'l') ==1
    aacode = 11
end
if strcmpi(aa, 'k') ==1
    aacode = 12
end
if strcmpi(aa, 'm') ==1
    aacode = 13
end
if strcmpi(aa, 'f') ==1
    aacode = 14
end
if strcmpi(aa, 'p') ==1
    aacode = 15
end
if strcmpi(aa, 's') ==1
    aacode = 16
end
if strcmpi(aa, 't') ==1
    if num ==1 
        aacode = 17
    end
    if num == 2
        aacode = 2
    end
end
if strcmpi(aa, 'w') ==1
    aacode = 18
end
if strcmpi(aa, 'y') ==1
    aacode = 19
end
if strcmpi(aa, 'v') ==1
    aacode = 20
end
if strcmpi(aa, 'x') ==1
    aacode = 21
end

end

