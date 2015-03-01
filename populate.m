function [ matrix ] = populate( name )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

protein = '';
nbs = '';

if strcmpi(name, 'one  ') ==1
    % urotensin
    protein = (' myklasccll 1234453342 figflnplls lplldsreis fqlsapheda rltpeelera sllqilpeml gaergdilrk adsstnifnp rgnlrkfqdf sgqdpnills hllariwkpy kkretpdcfw kycv ');      
    nbs = ('        1 ccaagaagga agccgtctat cttgtggcga tcatgtataa gctggcctcc tgctgtttgc61 ttttcatagg attcttaaat cctctcttat ctcttcctct ccttgactcc agggaaatat 121 cctttcaact ctcagcacct catgaagacg cgcgcttaac tccggaggag ctagaaagag  181 cttcccttct acagatactg ccagagatgc tgggtgcaga aagaggggat attctcagga  241 aagcagactc aagtaccaac atttttaacc caagaggaaa tttgagaaag tttcaggatt301 tctctggaca agatcctaac attttactga gtcatctttt ggccagaatc tggaaaccat   361 acaagaaacg tgagactcct gattgcttct ggaaatactg tgtctgaagt gaaataagca 421 tctgttagtc agctcagaaa cacccatctt agaatatgaa aaataacaca atgcttgatt 481 tgaaaacagt gtggagaaaa actaggcaaa ctacaccctg ttcattgtta cctggaaaat541 aaatcctcta t');      
end
if strcmpi(name, 'two  ') == 1
    % angiotensin e
    protein = ('        1 melpavnlkv illghwlltt cfwrhfsakp rletieltca lcklrsaahr ataglhcilr 61 llclgqlhhp glgrvgcgsa glhrrhkhvs gwlaghhlpg hrahqhllpa gqphghgplw 121 rghghpqlaa qaallllrlp hvpgarg');
    nbs = ('        1 ctgcgctggg gttggagtgg ccgcaacggg cggggcgggg cggggccggg caagtttgtt       61 ccccgagttc ggagcctagg agccccccgc ggctgcggcg caggtgccct cggcctgagt      121 cgggatggag ctgcctgctg tgaacctgaa ggtgattctc ctaggtcact ggctgctgac      181 aacctgcttc tggagacatt tctctgccaa accaagactg gaaaccattg agctcacctg      241 tgcactttgc aaacttcgaa gtgcagcgca cagggcaaca gctgggctgc attgtattct      301 caggctccta tgcctgggcc aacttcacca tcctggcctt gggcgtgtgg gctgtggctc      361 agcgggactc catcgacgcc ataagcatgt ttctgggtgg cttgctggcc accatcttcc      421 tggacatcgt gcacatcagc atcttctacc cgcgggtcag cctcacggac acgggccgct      481 ttggcgtggg catggccatc ctcagcttgc tgctcaagcc gctctcctgc tgcttcgtct      541 accacatgta ccgggagcgc gggggtgagc tcctggtcca cactggtttc cttgggtctt      601 ctcaggaccg tagtgcctac cagacgattg actcagcaga ggcgcccgca gatccctttg      661 cagtcccaga gggcaggagt caagatgccc gagggtactg aagccagcca cgctgcgccc      721 ggccctgccc cgggccttcc tcgtgcctgg gaggtcgttc tagggatgct cctgacctcc      781 gtctcttgga cctaagatgg aatgtgtccc cagctcaggg attgcctgaa ccaagaggcc      841 aggagccccc atgggccgcc cagtaccatg cacactcctg tcccgaactc cctgaggcct      901 cccctccctt cagggcaccc actggttccc aggctggaac cagggtctct ctttacctcc      961 taccccatgg tggcaccaca gaggccctca gccgagtcct gcctgagtgt tgcaagctca     1021 ggcctttaag gactgctgat gccccctcag gcctccccca agtttgctgg gctttggtgg     1081 aagccctgag agcttcaggt cctgctcagc ccgaggagca gtctggcatg ggagtgaggc     1141 cccgtccttc tcactgcctg gtcacatggt gcctagggat gcagggctgg aggccagagg     1201 tgtcagcaac actgtgtccc accacaacct ccagcctccc ttttcagagc acagcattaa      1261 agtttgggga attctgtaga aaaaaaaaaa aaaaaaa');
end
if strcmpi(name, 'three') == 1
    % angiotensin d
    protein = ('       1 melpavnlkv illghwlltt cfwrhfsakp rletieltca lcklrsaahr ataglhcilr       61 llclgqlhhp glgrvgcgsa glhrrhkhvs gwlaghhlpg hrahqhllpa gqphghgplw       121 rghghpqlaa qaallllrlp hvpgargfpw vfsgp');
    nbs = ('1 ctgcgctggg gttggagtgg ccgcaacggg cggggcgggg cggggccggg caagtttgtt       61 ccccgagttc ggagcctagg agccccccgc ggctgcggcg caggtgccct cggcctgagt      121 cgggatggag ctgcctgctg tgaacctgaa ggtgattctc ctaggtcact ggctgctgac      181 aacctgcttc tggagacatt tctctgccaa accaagactg gaaaccattg agctcacctg      241 tgcactttgc aaacttcgaa gtgcagcgca cagggcaaca gctgggctgc attgtattct      301 caggctccta tgcctgggcc aacttcacca tcctggcctt gggcgtgtgg gctgtggctc      361 agcgggactc catcgacgcc ataagcatgt ttctgggtgg cttgctggcc accatcttcc      421 tggacatcgt gcacatcagc atcttctacc cgcgggtcag cctcacggac acgggccgct      481 ttggcgtggg catggccatc ctcagcttgc tgctcaagcc gctctcctgc tgcttcgtct      541 accacatgta ccgggagcgc gggggtttcc ttgggtcttc tcaggaccgt agtgcctacc      601 agacgattga ctcagcagag gcgcccgcag atccctttgc agtcccagag ggcaggagtc      661 aagatgcccg agggtactga agccagccac gctgcgcccg gccctgcccc gggccttcct      721 cgtgcctggg aggtcgttct agggatgctc ctgacctccg tctcttggac ctaagatgga      781 atgtgtcccc agctcaggga ttgcctgaac caagaggcca ggagccccca tgggccgccc      841 agtaccatgc acactcctgt cccgaactcc ctgaggcctc ccctcccttc agggcaccca      901 ctggttccca ggctggaacc agggtctctc tttacctcct accccatggt ggcaccacag       961 aggccctcag ccgagtcctg cctgagtgtt gcaagctcag gcctttaagg actgctgatg     1021 ccccctcagg cctcccccaa gtttgctggg ctttggtgga agccctgaga gcttcaggtc     1081 ctgctcagcc cgaggagcag tctggcatgg gagtgaggcc ccgtccttct cactgcctgg     1141 tcacatggtg cctagggatg cagggctgga ggccagaggt gtcagcaaca ctgtgtccca     1201 ccacaacctc cagcctccct tttcagagca cagcattaaa gtttggggaa ttctgtagaa      1261 aaaaaaaaaa aaaaaa');
end
if strcmpi(name, 'four ') == 1
    protein = (' 1 mnkilsstvc fglltllsvl iflqsvhgrp yltqgneifp dkkytnreel llallnknfd       61 fqrpfntdla lpnkleelnq leklkeqlve ekdsetsyav dglfsshpsk racfwkycv');
    nbs = ('       1 agaaatatcc atcttgacct ggaaagtctg tttctttgct agtccagaag atttttttta       61 acatgaacaa gatcctctca agcactgttt gctttggact cctaactttg ttatccgtgt      121 tgattttttt acaatctgtg catggacgac catatcttac ccaaggaaat gaaatatttc      181 cagataaaaa atatacaaat cgtgaggaac tattgctggc tctactgaat aaaaattttg      241 atttccaaag acctttcaac actgacctag ccttacctaa caaactggaa gaacttaacc      301 agctggaaaa gctaaaagaa cagctagtgg aggagaagga ttctgagacg tcctatgctg      361 tagatggtct attctcttct catcctagca aacgagcttg cttttggaaa tactgtgttt      421 aaagcttttt ctctggatgc aaaaaaagat aagaatatca ggaaaatata tgtatctact      481 cactctgctg taggcagacc ccctgaaact attgctgtgg aataaaagat gaaatgctcc      541 tgattattgt aaatacaaaa ttgcatgcgg gattgtgtaa agacaatgcc aggttggact      601 gccagaatga gccaacagca cttgcttccc cctgtagaga gcctatgaat ggacgtgcag      661 tcagggaggt ttcatatcac caagattcct atcccagaaa agcagatgtt catagctctg      721 ggaatggaat gcgcccctcg tggagagcct ataaacggat gcatggaagg cgcctgtcca      781 tatggataag atagggttgt aaacgtcctc atcttgccat ggctcttcta ggcctcttta      841 gggttaaggc atatttcctt ctgagaattt ctggtctaag cggttgtcta gcttcatgtc      901 ctgtttccat ggattgtttg taaccagctt ttgttacaat tgttactgct gattaatatc      961 ttgctaatca taggttatgg aaagattgtg tttctgtttt aaggctctgt tagaaattac     1021 acacacagta tattgtaaat tcttatctct gtatactgta cttctacata caaatgtact     1081 gtacttctac atacaaatgt tatgttaaag aattacttca tccccatgtg accatctcac     1141 ctcataatca aatgacccta aatccctcat taacctaccc ctgcccttgc taaacttaat     1201 aataaatgct ggtatatcca gtgcattgtt ggcaccatgg gaccagaagg tggtgacccc     1261 cctggaccca gctttccct');
end
if strcmpi(name, 'five ') == 1
    protein = (' mnkilsstvc fglltllsvl iflqsvhgrp yltqgneifp dkkytnreel llallnknfd       61 fqrpfntdla lpnkleelnq leklkeqlve ekdsetsyav dglfsshpsk racfwkycv');
    nbs = ('1 ttgacctgga aagtctgttt ctttgctagt ccagaagatt ttttttaaca tgaacaagat       61 cctctcaagc actgtttgct ttggactcct aactttgtta tccgtgttga tttttttaca      121 atctgtgcat ggacgaccat atcttaccca aggaaatgaa atatttccag ataaaaaata      181 tacaaatcgt gaggaactat tgctggctct actgaataaa aattttgatt tccaaagacc      241 tttcaacact gacctagcct tacctaacaa actggaagaa cttaaccagc tggaaaagct      301 aaaagaacag ctagtggagg agaaggattc tgagacgtcc tatgctgtag atggtctatt      361 ctcttctcat cctagcaaac gagcttgctt ttggaaatac tgtgtttaaa gctttttctc      421 tggatgcaaa aaaagataa');
end

% remove all numbers, spaces, etc from amino acid sequence
protein(ismember(protein,' ,.:;!1234567890')) = [];
nbs(ismember(nbs, ' ,.:;!1234567890')) = [];

% get all possible codon sequences of FIRST THREE AMINO ACIDS, start codon
% inclusive
first = get_bases_numrep(protein(1:1));
second = get_bases_numrep(protein(2:2));
third = get_bases_numrep(protein(3:3));

total_sequences = size(first,1) * size(second,1) * size(third,1);
possible_codons = [];
count = 0;

for m = 1: total_sequences
    for j = 1:size(first,1)
        start = first(j,1:3);
        for k = 1:size(second,1)
            start2 = second(k, 1:3);
            for l = 1:size(third,1)
                start3 = third(l, 1:3);
                total = [start start2 start3];
                
                % for the first possible sequence, automatically add
                if size(possible_codons, 1)==0
                    count = count +1;
                    possible_codons(count,:) = total;
                end
                
                % if its not already in possibilities, add it in
                if size(possible_codons,1)> 0
                    already = sum(ismember(possible_codons(:, 1:9), [total], 'rows' ));
                    
                    if already ==0
                        count = count +1;
                        possible_codons(count,:) = total;
                    end
    
                end
            end
        end
    end
end


% search the nucleotide base sequence for one of the possible sequences
chars = [];
for n = 1:size(possible_codons,1)
    row = possible_codons(n,:);
    chars(n,:) = num2chars(row,2);
end

nbs_native = unicode2native(nbs);

for o = 1:size(chars,1)
    start = chars(o,:);
    if ismember([start] , nbs_native) == 1
        break
    end
end

start = chars(2,:);
%[startrow, startcol] = find(start)
startrow = 1;
startcol = 9;

% translate to amino acid sequence
length = size(nbs,2);

codon_seq = [];

for i=startcol:3:size(nbs_native,2)
    if i < (size(nbs_native,2)-3)
        nb1 = nbs_native(i);
        nb2 = nbs_native(i+1);
        nb3 = nbs_native(i+2);
        nbs = [ nb1 nb2 nb3 ];
        
        % get corresponding amino acid
        aa = get_aminoacid(nbs);
        
        codon_seq(i,:) = [nbs aa];
    end

end

codon_seq;
codon_remove_zeros=codon_seq(max(codon_seq~=0,[],2),:);

null = codon_remove_zeros(:,4) == 0;
codon_remove_zeros(null,:) = [];

matrix = codon_remove_zeros;

csvwrite(name, matrix);

end

