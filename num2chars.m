function [ char ] = num2chars( num, type )
% takes in numbers associated with nucleotide bases OR amino acids, returns
% appropriate character

%   IF TYPE = 1... translate as nucleotide with Uracil
%   IF TYPE = 2... translate as nucleotide with Thymine
%   IF TYPE = 3... translate as amino acid

char = []

for i = 1:size(num,2)

    % NUCLEOTIDES with uracil
    % A = 1 / U = 2 / G = 3 / C = 4
    if type ==1
        if num ==1
            char(i) = 'a'
        end
        if num ==2
            char(i) = 'u'
        end
        if num ==3
            char(i) = 'g'
        end
        if num ==4
            char(i) = 'c'
        end
    end

    % NUCLEOTIDES with thymine
    % A = 1 / T = 2 / G = 3 / C = 4
    if type ==2
        fprintf('type 2')
        if num(i) ==1
            fprintf('a')
            char(i) = 'a'
        end
        if num(i) ==2
            char(i) = 't'
        end
        if num(i) ==3
            char(i) = 'g'
        end
        if num(i) ==4
            char(i) = 'c'
        end
    end

    % AMINO ACIDS
    if type ==3
    end

end

char

end

