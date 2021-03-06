using Base.Test

exit()

include("TranslatingRNAintoProtein.jl")
test_cases = ["AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA"=>"MAMAPRTEINSTRING"]
for (k,v) in test_cases
    @test translate_rna(k) == v 
end
#println(translate_rna("AUGACCAGAGCCCCGGGCAUAAAGUAUUACCCAAGUCGUCAGCGUAUACCCGGAGCUUCCGGCGCGGGAACAGUUGUACCGUGUCGCAACAGUGCGACACAUCAUAGAUGUCCGCCGGCUCGUAAUGGCUUAUGCGACCGACCACUCCUGGGAAACCCUUACAUCCCCGCGGGGACACGGUGCGUGCCCUACGACCAGCGACGAGUCUUCAGGUAUUCCUGUCUGGGAACCCCUCGUAUCGACCGUUCAUUACAUGCCCCCAACCAACUUGAACAUAAAGGUGUCCAUGGUCCCCAGGUAUUCAUUUUGCAGACACUAAAUACUGUCAUCAUUUAUCUCUUUCUCGGUCAGCAGGCGAAGGCACCGUUGCCGCUAGUUGAUGUGUCGCGCACCGGUGCAAACCAUGUGCUUGUCGACAACGGGAGCAUUCUCAGACACCUGUGCAACAUGCCAAUCACGACCGGACGAACGUCGGUACAACCCGUCCGUCUAACUCCUGAAACAUCGUUGCCCUUGCUCGUUUUAGCUUUGUGUAACUCGAGUUUGCUCUUCUGCAGCUCCUGGGUUCGGAUGGGGGGAGGCGAUUAUACGAAGAUCCUUACAUACCGCGUCCCAGAGCCGCGACUUCACCUCUCCGCGUUAAGUCUUAGGAAUACAGACCGGUACGCCGUCACAGCGUCGCCCCUCGCACUGGGGUCACGCUUUUACUCUGCUAUUUUACUGAUUCUAGGGCUCGAAGGAUAUAGGGUCCGGGUGCUAACACUGGUGAAGCCUCCCACAGCGAUUCCCGCACCGAGACAGCGCGUUUUGACACAGGCGGCGGACGGCGCGAAUGCGUGGUGUGUACACAGCGGUGCCCAACCAGCCGACCCAAGCGACUAUGGGGAUGCAAAGCGACCCUUUCCGGACCCUCGCCUUAGGAGCUAUUCCUUACAUUUACGCUAUUGCCGGAGUUUUCCCGCAUUAAACGUUAGUUGGGAGCUGUCUACCAACGGGCUAACAGCUGAAUGCACCUCAGAGGAUCGGACCACACGACUACUGAGCUUAAAGAUAGUGGACUUUAAAGCUAUGCGGCGAGACCUUAGAAAAUGGGCUCUUAAAAACUGCACCCAUAGCUCGUGGCGUCCACGAUACAUCACGGUGACAGGGCUAGCGACGGUCAUACUUACAACAGAGCUGUCGGGAGUGGGUAACAUCCACCCUUCAGUUAUCGGGUCCCGCCCGUGGCCUUGUAUAGCGUCCUGUGCCGCGUCUACAUUAUGCAGAGGGACUUUGAUGGUUGUUUGCGAAUCGUACGGUAACGGCAAUUGUAAAGCGCGGGGAGAGAUCCGGAACGGCGCGUGGACCGUUAUUGGUGGGUCUGCCGAGAAGCGAGACCUAGUGGGUUGUGGACUAGGUAGUGUCUUAGGAUUAGUGAAUUCGCCGCCUGCCUGGGUGUAUGGGGGGACCACCCCGGCAGAAGUAAGGGGCUCCGUUACUAAACGCGACCACCCGCAAGUCAGCCAAAGGUCAAUUAGCGAUAUUGGAAGGUCGUCAGGAUUGCGCGCUGAAGGCGCUACGCGAAUAUGGUAUUGCCGAGAUAGCACGUGUUUGAGCUCAAGCUGUAGCAUAGAUUCGCAGACUCACAUCAUCAUAGUUAGUGCACGAGAAUACUAUCAGGCUGUGGACGUAUUCAAAAGCUGCCUCAAGAUGCUUCCGGAGUAUCGAAUGAAAAUACGCAGGACUCGUGCUAUUCAAUCCCACGCUUUCGUUGUACUCAUUUGUAUUCACGGAACUGGGUGUUCUUAUGAAAUCCAUAGUAUGAAACCACAUGCCGCGUUUUGUUCUACGGAGUUCAACAAAUUGAGGCGUAUUAAUCUGAGCGGGCGUCCGACCCAAGCUACUGCCUAUGUACGGUCGAUAAGGCUCGGUUGCUGGGAUGCUAAACAUGACACAGUAAAGUUGAGACUACUCCUUGAAUGGAGACCGCCCUUGCCUUUAGCAGCGUAUGCAGAGCUUUCCACGGCUUUUAGGACUGCUGACCUUGCGUUGCCGGACGGCGUGAAUGAGUCGGGUGACCCUUCGAUAUAUAAGUUCUAUGCGAAUGCGCGGAAAACUGCACAGGAGAUUUCACUUAUGAGCGUUACGCGGCGCGAGUCCUUCACCUCUAGAUUACGCAUGGACUCCACGUCGACCACAUUGCUUUGUGGGGUGUUCUCUACGCUGUCGGCCCGAAAGAAGCGUAGAGCUACUAACCUAUUGAUGCCUAUGAGGCUAGUUAAGACACUAGUUCCGCUAGUAGCGAAAGCACAGCUUUCGGUCGCCAGCACGCUAUUGCUUGGAAGACAGCAAUUGGUAUCAUGCUCAGAUUUCUCAUUGGAAGCAGCUACUCAGUUCGGUGAUUAUCGGUUUGCGAUCUCGGAUCCACGACUUUUGGUAACGUGCUGCGCCUCAAAGUUCCGAAAACGAACGUGGCAUCCAACUGUCGGCGAGACCCCCAGAGCAACUCUUCGAAGCGCAAGGGUCUGCAUAGGAGGCCACUCGCGAGAGAUGGGGGCCGGGGACUUUCAUGAUGAGCGCUACGGCCAUAGCCUCCACCCUACGAUAUGCCAUUUGAAUGUACUACCGACUCUUGCAUUUAAUCGACUUGGGACUAUGCACGAGAGCGUUUCAGAUAUCCGGUUGACUCGGUGCGCGCAGGGGGGCGGCACCAUCUGGCUGGGUACUCCAUUGCCCAGGUCCAUUCACCUCCUCGCGCAGCUUUCGUCUUAUCACCUGGCUCUCACCAGCAGAGAGUAUGGGACACUCAAGACCGCGCAUCUAGCUAUACACCAUGAAGUUAUUGUGCCCCAAUUAUCGGUAAAUAAUGCCGCAGUAACUACCGAUUCAUCCCGAUUCAUUUCCAACCUAGUAUCGGCAGGCCGACUGUCCAUGUUCAAACCUUAUCUCGGUGGAAAAACCACUGAAAUAUAUAUCUCCCGAUCGACUUCAUCCGUGUUUCCCUAUGAUCGCGGGCCAAACCGGGGUUUACUACAGGCAUGGUCCCACGUGAGCAGGCAAGUUGACUGUGUGGCUGUGGAUGUAUCUAUCCCGGUGUGUGGAAUUGUUAUACGAGCUUGCCAUUGUACGCGGGGACGCCUGGGGUAUCGUGCGUUGAGGCUAUACAAACGUGCUAUACUGCUCCGUUCGCGUAUGACUCUUGGCGCUAUAGAGGCGGAGCGGUUUCCGCAAUCAUGCAACACUGGCGGGUAUACGCAGCCGUCCGUUCCUACAUUCGGACUACGCACUUCCCGCGGGUACAGCUCUGAAUGUAGCUGGCACGCAUACCGCAGGCCUCGACAAUACACUCGUCCCCAAGAGUGUAAUCGCCCUCGGACCGCGCGAUCGUUGCUACAUGGUAGGGCAGACCUAACGCCUCAAUUUGGAAGCAAACUAUCAUGGAUAUUGACACGGACAACUUGGAACGAACAUGAUCGUCAGUUGACUCACAGUCCAAGUGCCACUCCUGAAAAUGCUCACUCGGCUUUUGCCCGGAUCUGCGCACAUCUUCGAAACGGGGUGGUAACAAGAUGCCCGGUUGUAUACCAAGUGAGCGGCGGGAAACUAAACGUCUGUUUCUUCAGAGAACUUAGGUUUAGCUGUCGAUACGCCGUACAACAUCAACGAGACGUAAUACACGCUUAUCACGCCCUCUAUCGCGCAUAUCUCACGCGCAAUGCUGUUUCACGAGAGAUGCGGAUCAUGAAUCGCAGAUGCUCGGGCAUUACAGGAACAUGCAAUAGUGAGAAUCAUGCUAAUUGCAAAAUACGAGAGGGGUGCAAUUUGCUAUGGACCACCCCUAACCAACAAAAUGCUCGGGUAAGGGUUAUGUAUCGAAAUAGUGCCCCCUGCGCUCGUUCCCAAUUCCAGACAUCCGGCUCCUUCCGGCUCGGCCCACUCAUUUUGCCAUACAUUCUAAAGCGAUCGCUAUUAGGCGAUGGUUGCCACAUGCCACCUAAUCACGAGUCAAGCAAGACAACCAUCCGACAGGGUGGACCUUCAAACCAACGUUACCAGUCAAUUCCCCUCGUAGAAAGGGACAUAAAACUGGCUGAUUAUAGAUCCGGGAACAAAGCCCCUCAUGCUGCCGCUUCUUCAUGUCCGGUUGGUAACUCAGCUAGUAAGGUCCUACUUGCCCUCGGCAGUCGCGGUUACCCGUCCAAGGUCGAUGCGCUAUGGAUCAAUCGCAGUAUCUUUUACUGUAGUAACUUCGUACAAGAACUGGGCCACGAUUUCCGCAUCUCUUCAUCAGACACAGACCCGGGCGAGAAAACCUUUUUAUUAAGUUGGACGCCCGGACAAUGUCCGACGAAGGCUUUGUACAGACAGGUCCAUCAAGGUGCUCAUAUCUUUUAUACACAAUGGUGGAAUGUCAGCGGUAGUAGUUCGCGUCACCCGAGCAUCUGCAUCGGACCGCCGAGGCUGACAAAUUCGGGUGGUGCUCCAGGGCACCAUUUUUUACCCUUGUGUGACUACAUUGACUGCUACGACCCCACAGCCCCUCGAACGCUUCGGAACCGAGACUAUGAUCAUGCCGGAUGGGAACUAUCAGCAGCAGUGCCGUUGAAACUUUACCGCAGGCGUGUGUGCGGGGAGAAUUUGGGUUUCCGACUCUGGCCACACGACGGCCGCGCAAACCAGAUAUGGUGCAAAAGCGAUCGCUUGCAUUCAUCAAGUAACGUGGUGGUCACUACACCAGGGAAUAUACAUUGCCCCAGCCCAGCACUAAAACGUAACGUAGAAUCUCCAGAACGUGUUCCGACACGCAAUAAUAGUAAGGGUGUGGUCAGAGGUAAACUCGACAGCCCCCAAAUUGGGUCCGGCGCACAGGCUGCUCCAUUCGUACCGGAAACUACACCUAGUCAUCAGAACUUAACUACGUGUCGAACGAAUGGGUUCAAGCUUCCUCGCGUAUCGCGUACACUGCUGAAAACCCGAUCAGGCGUGAUCCGGGGGAGCGGGCCAUCCUCUUGUCACAUCUUAAAGACAUCGAGAGAUCAUGACGGUUCGCGGUAUUGCCUCUUAUCCAUUGCGACUGGAAAGCCAUGCGUGAUCGCCUCAAAGGAUCUACUACACAAGGUUUGCACAGCGACGCGAAGCGGUUCGCGGCCUAGGUUAGUCGGGGUUCGAAAUACUAAUGCUCGGACUGCGUCAAUGAGAUCUCCUACGGCGUCCCGACGAAUAGGAAAGGAAAAACUUACCAUCCACUUACGGCCCGAUGAUUUUGUAUCGAGGAAUACUCCACAAUGGCCUCACUCCGGAUCUGUAACUAAACGUUACACAUGCUAUGAGUAUAUACCAUGCGUAAUUAACUGCAGUUCUUCGUGGUCUCCUGAAAGCUCGGUCCACGCAGGGAGCGCCGUCUUUAGGCUUACCCGUACGCUCCAACUUACCGGCCAGCCUACCGGAGAAAACCUUAUCAAUUCAUUACCUGCUCCUUCAAGUGUGACUCCAGAUGCUAAGUGCCUAAGGUUUGUCCAUACUGCCGUCGUCUUAGGUCUGAAGUUCAAGAACCCUUCCCUGGAUCGCCGAGACUGGAGCCCUGGGCGAAGUCGGCGAAGGACAAGCCUAGGAUGCUCACAUUGCCGCAAACUCACGUGCUAUCCAGGAAUGACUUCGGUGACGCUCUCUGUAACAUAUGGAUACAGAUCGAUUAUGGAAAUCAAGAGGCUGUUAUAUGGGCAAGUGUCCAUGAAGCGGGGGAAUAACACACCCAGGGCAAUUCGCGUUGGACACGGGCACGUGUUUGGGGCGCCGCGCUGCCAUUUGCGAGCUUUUUAUUGCGCGAAAGGUACACUGAAGAGAGUCCUUAGCAGGAAAUUAUCGGACCGUAAUCUAGUAGUUCAUAAUCUAUGUCGCGGGCGUUCUCUUUUGUUAUUCAUCGGCCAUUCCACGCUGGGGAAAUCGCCAGAAAGACCAUUGCCGUACUCGAGUCACAAGCUCAUUCACACGAACAGAAUCACGAUUCGAGCACUCACUGAGCCCGCGCGGCUAAUAAUGGGUCCGUCAGUGCUUCACGCUCACCUGGUCAACAGAGAAAUCGCAUCCGGGCAGAUCAGCAAUUAUAGCCAGGCCGCGACUUGUCCUACUGCCGACACGUCUCCAAUACUUCUGCGUUACCGCGAGCCUCUGGAACCCGAACUGUACGAAUACUUCAGUGAAGGGGAAUGUAGUGAUGUUCUAUCUUGGGGGAUUUUUUUAUGCGUCUUGGUCUAUUCGCACGGAACUGGGAAAUUAGGAAUCAAUGAAUCGACCGCCCGCCCGUUUCCCAAUGCUGAGUUCGCUUGUUCGUGUUGCUUAUCUACGAUAAAGCGCGCUAUAGCACGGGGUCUGCUAUGGAUAAGAGCCCACUACCAACCACUAGUAGUCAACAAGCCCGGGGUGCAGGCACAUAGAGCAUCACGCAAAGAGGCCCGGGAUAUCCGCCAAGGUAAUAAUCCAGGUGGGGUGGGCAUGUUACGAACCGGACCGGAACCACACGCCGAACCCGACUGUUUCCUAAUAGCACAAAACUCUAGUUACCCUCGCAUGAGGCUAACACGACUACUCCAAGGGCAUGCCACAUACGGCUUUCGCGAGCGAGGACACUUAAUGGUGCUUAUGAGCGUGCGUCUACUGAUUGUCCGAAAGAGAUCCCUAAGUCAUAAUGUACCUACUUUCCCACCACUGAUAGCCCAGUGUAAUCACCGUGGUAAUCAGCGGUUGGGAUCAAAAGGUAAACGCGAUUUCGGAAUGGGGUUCAUAUCACUAAACGGGGCUCCAAUCACCCUCAUGCUGAGCGUCCGAUUCUUUAGCGAACGGAUAUGGCUCCAUCACGUGGGCCGCUAUGUGCAGUGCGUCCUUGCACUAGGCAUUCAACAGUACUGCUGCGAAAAACUACAUCCGCGCGCUUUAGGUAGGCUACGAGUGUUUGCAGAAUAUCGAAGCGCAUGCAGGAAUUCUUCCAAACGAACAGCGGACAGGCGUUAUGACGAGUACCCUAAAAUCCCUUUUAGCGCCCGCCGAGAACGACCAGACCAGCUGGACCAAGGCCUCAUCGCAGAGCCAGAUGUGUCAUAUCCCGUAGAGUUGACCAUCUUCCGUAGUGGCUACUGUUCAGUACGCAUUAGAAAGGCCAAAGAAGAUAGAGAAAGCCUAUCACGCCGCGGGCCGGCAGCGACAGUCGUGGCAUGCAAUUGUCCGUCUCUUUCUCUCAUUAGUGAGAUGCCGAGCUCGGACGUUAAUCAGUCUAACAUAAUGGAUCAUUAUAACUACCUGAGGAUGUGUAAGUUUAGCGGAAAUACGCAUGCCGUUGUGGAGACUCAGUAUUGCGAGAUUACUCCAGCAGCGAUGCGGUGGGUUCUCACAAGAACAAGACUUUUCACUAGUGAAUUAUCAAGUGCCAGAUUUUUGUACGUGGUGCUGAAACGCUGCGGCUGUUCAAUCACGUGCCACGAGUUGGAUACCUGUUACAACUCGUCACUACUGCACGACAUCCUUGACGGGCCGUCAGCAUAUGCUUUCCGGACAUGCGCUAUACUCUGGCACCUAGAACAGACCCAGGUCGGUUCACUAGUUGCCUUACCUAGCAUUAUGCCACCGGAUGAGCGUCGCCAGACCUUCCAAAAAGAGUCUGGAGUUACAACUAAUAAUAACCCAGCUGGGACCAACCACAGGGCCCACGAGCUGUACUCAGCUAAACGAGGUCCCCGAGCCCAGCAACUAUCGACCCUCCGGGCUCCUUUGAUAUACUUAGGGAGAGGGGAGUCUCCAUCGUGGAAGUUCACACGCGCGGUACGAUAUUUGACGCCAGCGUGCGCGGCUAUCUGGCGUGGGCCCACAAUCCUAUUAAGCGCCGGACCUCGGCACAGCUGGACAGCCCUAGCUGGGGGUGUGCAUCAUAAAAGUACUCACUGGGUCUUUGGGUUAAGCUUUGACGCGUGGCUUAGAAAGCUGAACCUAAAGCCAAAUUUUAUUCCCCCUGUGAAGUCCCCGAAGCUGGGCGAUACCGUGCUGAGAGACGGUUCCAUCCUGGCUAAAGGAAUCGCUACUGUUCCUCGGAGACGGUCUUUGGAAUGCACACACUAUGAACGUGCCAUAUCUGCGUCGGAAGAACGGUUUACACCGGGGAGGAAAAUCUCUCGUCACAUGGGUAUUAAGCCACCCAGCGGCUCUAGUGCCAUAGAAUGCAAACAGCAUAAUUGGAGUUACGCUUAUCGCACGAUAGUCGAUGGUAUUGUGUACUACUACUAUUGCUCGUGCAAUACCGGAAGUACAGCUCCGUGCACUGCGAGUUCUCGGAAACUCCAGUGCGAAGCACCUCUUUCUGUUAGCAUCGGCCACUCCUCCAGGGGUGCGGUGUACGUGCAAGGUGGGCUGCUUGUAAGGGCCCUAUGCGAAGUGCCCAUUAUGAUGACCGCAGUAAUGGGUGUCCUUCGAUGCUACAAAGUCACCGCAUCGUCCACGGCAUGGACGGAGAGAGAAGUUAUUUCAUCGUUGGCGACUAGGAAUAUAAUCGAGUGUAACGGUCCUGUGAUCGGAUCCGCGACGCUUAAAUGCCACAAUUUACCGCGACGCAGCGGUGAUGACCGCCCGGGGGAUCAAGAAAUUAGCUACUCCAAUUACGUGUCCCCGACCCGUUUGAAACCCAACCAGGCCGACUUGAUUUUGCUUUACCAAGCACACGUACAGACAGAACUACGUUGUAACCUCAUGUUACGGGAGAUCGAGUACAAGGUGGAUAGAGCGUGGUCUCCUAAACGGCACUCACGCGUGUCGUCUUGCAAUUGUACACUGGCUUCAGCGACGCUAUCCUUGUUUCAAAGGCUAAGCACCGGGAAGGUAGGACUCAGAAUGCCUCCUGCGUGGUUGCUGACUCACACGGAGCUGAAACAUAAAUUUCGAGUAUAUAAGAGGAGAGCGGCUCGCUCAAGCCGCGGCCGAUUUUUCCGUGCGUACGAGUUUUCGACAAGCUUCUAUUUCUACGCCAGGAGACUCAUAGGAGCACUACAAGACGGGUCAGACAUCACAGAUCCGCAUGUGGAUAGAAUUAGAGAUAGCAAGAGUGCCUUGCUUAAUGCCAGUACUCCGAUGCUGAUGGCGCGGUGGGAGCACUUAACAAGAUCUACAGAUUCUAUUGAAAUGUGUGGGCAGCUACGUUUAAAUAAAAAUUCCAUGAUAAGCACAUGCGUCGCUUGA"))

include("MendelsFirstLaw.jl")
test_cases = [(2,2,2)=>0.78333]
for (k,v) in test_cases
    @test_approx_eq_eps inherit_dominant(k[1],k[2],k[3]) v 0.001
end
#println(inherit_dominant(20,28,24))


include("LocatingRestrictionSites.jl")
test_cases=[">Rosalind_24\nTCAATGCATGCGGGTCTATATGCAT"=>[Palindrome(4,6),Palindrome(5,4),Palindrome(6,6),Palindrome(7,4),Palindrome(17,4),Palindrome(18,4),Palindrome(20,6),Palindrome(21,4)]]
for (k,v) in test_cases
    @test join(map(x-> "$(x.ind) $(x.len)",palindromes(k)), '\n') == join(map(x->"$(x.ind) $(x.len)",v), '\n')
end
data=""">Rosalind_6489
TATAGCTGGTTAAGGTTTACTTCATTACGTATCAGATGAAACTAAAGAGCCTACGTCAGG
TGCCCATCAAGGCACATTACGGCGCCAAAAAATGGCGCCGTGTGAGCGGCAAACGTGGCG
CGACATCATAACATTCGTTAATAAGCTATCGTTAATCCATTGTATTAGGCGCTATCATTT
CTGTTGCCGATTCTGTGCTGGCGTGAGGGTAGAATAGGTTTTACCTAGGCCGATGGACGC
GATGGCTCTTGACCGTGACTCACAGAGATCTAATTAAGATTCACCAAGGCAATGATGCGG
GGTCCATAGTTAATCGTTTTTTAGGCCACGGCTAGAGTGAATGAAGTGACACGCCTCCAA
TTAAGTGTGAGGCCCTTTAAGGTATAATCAGACACTGCAATTGCGGTTTCTATATTGAAC
CGACGCGATTCCGTATAGGGCACCTTATTTCGGTTTAACCATCACGCGTGATTCTGATCC
TAACGCACCCGTCGAATATGACATACGGATTACTGCGTGGATCTACTCTCCGCACCGTTA
CATCTCTGGGTCACAGGCTTCACATCGCGAAAGCACATCGAGATAGCTGTTAGTCGAAGT
AAGAGGTGGAAGGCTGTGGGGGTTACGGTTTTTTCTTAAGTTCTTAAACGTGCATTCCAC
GATATGGTCATGATGCCCATCTTCATTTCTCTCAGGTCACCAAAACGTCGTCGGCTGTCC
CACCGAGACGCGAGTTGGAGAGGCCTAAGTATCCTATGACGCACTGGAGAAGTTACAGTG
TGCACCTACTCCACTACAGCTATTGATTTCCGGGAGGTGGTATCTTCCACCACATAGAAT
GGTGCTTGGTGTATGGTGCTTAAGGCATCATGCTCCCATCTTTTGGACAGTTTTGCGGCC
GAAGCATAGATAAGATGCTCCGGGCCGACGCG"""
#println(join(map(x->"$(x.ind) $(x.len)",palindromes(data)),'\n'))

include("FindingaMotifinDNA.jl")
test_cases = ["GATATATGCATATACTT\nATAT" => "2 4 10"]
for (k,v) in test_cases
    @test join(motif(k), " ") == v
end
#println(join(motif("CGCACGCTCCAGCACACGACACGCTCAGGCACGCTCCACGCTCCACGCTCCACGCTCTGGCACGCTCGACACGCTCGTCACGCTCTGCCACGCTCAGCTGCACGCTCAGATGGTACAGCGCACGCTCGTCCACGCTCCACGCTCCACGCTCCGCCACGCTCCACGCTCTCACGCTCTTTCACGCTCCACGCTCCACATAGCACGCTCAGCTCCTTCGCACGCTCCGGACACGCTCGCACGCTCACACGCTCCGCACGCTCACACGCTCGCACGCTCATGGCACGCTCCCACGCTCTCTTCACGCTCGCACGCTCGTCCACGCTCCGCCACGCTCCACGCACACGCTCCATGTACATATGTACACGCTCTCAGCACGCTCAACACGCTCACGCACGCTCTCCACGCTCCTGCGCACGCTCCACGCTCGCACGCTCTTGATACACGCTCTGATCACGCTCACACGCTCGAGGCCACGCTCGTCACGCTCCACGCTCACACGCTCCCACGCTCCACGCTCGCCCACGCTCCCGACACACGCTCGACCACGCTCCACGCTCAAGTGCTGCACGCTCTGCACGCTCGGTAGGCGGCACACGCTCGCACGCTCGCCGACAAGTGGTCCGTCCAAGCATACCCACGCTCGCACGCTCCACGCTCGCACGCTCCGGCCACGCTCCACATGGTCACGCTCCCACGCTCCACGCTCCACGCTCCACGCTCCACGCTCCACGCTCTAGCACGCTCCGGAACACGCTCCCACGCTCCACGCTCTTGCCACGCTCGCAAGGGCTCCACGCTCACACGCTCGGA\nCACGCTCCA")," "))

include("RabbitsAndRecurrenceRelations.jl")
test_cases = [(5,3)=>19]
for (k,v) in test_cases
    @test recurrence_relation(k[1],k[2]) == v
end
#println(recurrence_relation(33,4))

include("TranscribingDNAintoRNA.jl")
test_cases = ["GATGGAACTTGACTACGTAAATT" => "GAUGGAACUUGACUACGUAAAUU"]
for (k,v) in test_cases
    @test transcribe(k) == v
end
#println(transcribe("GTTTTATTTGCTATTTATGTGGTGCGAATTATGGCTAATATCAATGACGTACGGCTTACGCCTTCCCAATGTCTATATCATCGCTTAGTCACAACCTGATATCGGGGCGCTGAAAACATGTATAAGGACGATTATTATGTGATGTCATATGGAAGCCATGGGCGTTGAGAATTGCACGCAACATCAGCTAGTGCACGCTGGAATCGAGACGTGTTGATATTGCGAAATGGATGAGTTATTTGTTGAGCAGTAAAACTGTGATAGCTCCGTCTACCCATTTGTCCTTTCCGTTGCTTCTCTCCTGAGTTATTAAGGGTCCACCCTACTCGCTAACCATTGTATACAGACTAATGCTCATACCCGAGGACCAGGACTCACTTGATAGTGGATAGTCCTCATTACGGTGCGGCGTTCGGGACCTGCCCGGTAGACTCCAGCCCCCTTACTAAGAGCTGGTTTACACGTTCATAGGGTATAGCATCATGTGATACTTCCTACGCTCCTAACGTCCGACTGACGATAGACTCGCACCAACTTCTACCGAAACAGATGAGCAATATATTAACCACTTCCCCTGTCCTCCTAGCCGAAAATTGCTGAGGGTATTTGCTTCTACTTAAGGGTCCCAAGAGCCCGCTACAACCCCCAGGGTAAGTAGTTGGAGGAGTAGATCAGTCACGCCAACTCTCCGAATGAGGATATCGGGACAATACGAGACGTATGCCATCCCCCGTGACGGGAAGTGGATCCTGGCTACAGAGCTGTAGCTTGCCAGTGAATGAACGTCTGATCATGGGTAAGGTCACCGTCTCAGATGAGGGACGGCAGGCTGGTGGAATTTGCGGAAGCAATCAGACTTGTAGGCCGCTAGAGATGGAAGAATTTAATAGGGCCACGATATGAGGATACGGCCCACGTCTGGACAGACCGTATTACGTGCCTCAGATCCCGAGCATCCCGATGTCCACCTCGGGC"))


include("ComplementingaStrandofDNA.jl")
test_cases = ["AAAACCCGGT"=>"ACCGGGTTTT"]
for (k,v) in test_cases
    @test rev_complement(k) == v
end
#println(rev_complement("ACCTGGGCTGCCCAGACTATCAGCTAACACCGCCGATACAAGACAGGTCGAACAAAAGCGGCGATTGGCGGTTGCTCGGGGTCTGAAAAGTGCCCGGATCTATTTGTGTAGCATGAGAAGCCTTCTTGCTTTCGCGTCAATCTGCGGCTGTTCTCGCTTGGCTAAACCCGGCAGATCCAATCCACGGGCCTTCTGCGGCCGTCCCCAGTCCGCAGCAGTCCGTACAGGAAAACGATTATCCCCGTGAGCAGGAAAGGTACAAATATATTTATACAGTTACTATAAATGATTGTACAACTGGAGTCCAGACTCCCTGATTAGTTGTGTGGATGGGTTGCATGTTACCACCCGTTTGCCAGTTATGAGCATCTTACTTACATTATCCTTTGTCGGTTGCTGGTGCTTCAATACGCGCGGGTCATTTACCTTAACTTTAGTGTACGGGCGTTTAGACAGTAAGGAACTCTCCTCTTTTCTCTTTCTATTGTCACACGCCGTCTAGAACATCAAAGTCCGGCTTCAAATCGCCGTGTATGGGCGCGGTAACCTCGACGGTGGGGTCATACCAAGGTTCCGCTCCAAGTCTCATTAATTGAACGGAACGGTGGGACTTGTTGTTTCAGTGCAAGCTTTGTGTACGGTACTGAAGAGCACTAGCTCCAGAATACCGGGCTAGGCCGAAGGCCAAAGCTCCCCGCACGCCGTACTGCACCATGGATGACAAAACCCTCGTACGGCCAAAGGCCTTCGGGTATTACCCAAGGATAACTGGCTGTATGATCAGGTTCGGTATCGCCACAAAGGAACTCACAAGTAAGGGTCTCGTACTCCGGCATATACTGCCATTCAATGAATGCT"))

include("CountingDNANucleotides.jl")
test_cases = ["AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"=>"20 12 17 21"]
for (k,v) in test_cases
    @test rep_count_nt(count_nt("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")) == "20 12 17 21"
end
#println(rep_count_nt(count_nt("GAGTTGAAGCAGCATCCCACAAGTTACATGGCCAGCCTAACACACTTGTCACTACTAGCATCCTGACCTCTAAATCTGGAATAACACGTGTAACTGCGCGAGGATCGGCATTATTAAAGGATGTCCTTGACTTGCAGAACCGTTCCACTCAAGACGGCATCTTCAAATATAGCCATTCCGCCGGCCTTCCCCTTCTTGTCTTGATGTTAATGACCTAGCACTCCGTATAACTCACCAGTGTGGACGAGTGAGGCCGCAATAGACTGCCCCTAGTCTAGATCATGGAACATACATCAGGGGATCCCCTAGTTCACAGTGATGCGTGTAGACAACACTACGTCTAACGAAAGCACGATCCGTTGCGTTCACAGAAGCGGATCCTGGGCAGTCGCTAGTTCCTGTGTTCAAGACGCATATTTCGCTTCCGCATAGGTAAGGTTACGACGTAGAGCTTGCTAACGTTGCACAACGCTCTCTTGGTTTTGGTCGATTACGGGGGCAGCGCAAGGTACAACGACTCCTACTCTTGTTTGTTCTGTTGCTGATACTCGCATAATCACCGACTCATCATAGTTATCACGCGTAGTCTCAATCACGCCGGGACACACGACATTGTGCGCATGGACTTTCCCCCAAGTTATCACTCACTTAACTTTCGCACCATACGTTCCGTACAACCTCGCCGACTTCAGCGCATGTAGCAATGTTATTTAAGCTAGTTTCTGCCGGTAGTCTCGCACTGTACCAGCTTAAACGCATCGGGTACCACATCTCCCGCGGGTTATAGGAAATGGATGGAAATGCGTTGGCATGACCAGAAAGAGTATAATAGTCGCTAGCGGAGATGAGAC")))

include("CountingPointMutations.jl")
test_cases = [("GAGCCTACTAACGGGAT","CATCGTAATGACGGCCT") => 7]
for (k,v) in test_cases
    @test point_mutations(k[1],k[2]) == v
end
#println(point_mutations("TCGCTAAGTAGCTAATAAATACTTATTAGCGGCCTGCTGGTGTTATCAATTTAGTCGAATGCTATACGGTACTGACCTATTACTGTGATTATTCAGTCCGAATAAGATGTAAACAGGTGGGGAAAGTTGCGGCAATTAAACTCAAGAACGGCGAGACACAGGCCAAGGGGGGCGCGGTAAGCGAGGCATCAGTACATAAACGGCCCGACTGTAGGCCCCGTAATACGATGAATACTTCTACTGACGTGATGACTTTGTTCGTTGTCATTCCGCCAGAAAGATGGTACCCCAACACCGCAACCCTCCCCGGGTATTGGTATCACGACAGTACAACAGTCATCATTAGGGATGACCAGTGATAGTACTGAAGAGCGAGCGTTGGGTCGGGTACCCCTCTCGTACGCCAGATTTGCCGTTCGTCGCTCTGCAGACTTAACATATCCACAGTTATCAACATAGGAAACGTCTAGGGACGATTTCTTATCCACGGTCCACACGTGAGAACGTATGTAACGTCACCTTGTCAGTGCTCCGGATAATCCTGGAGCGGTGAGCATTGAGTTACCCCCGCAATAGGAGACCGCTTGTGGCATATCGGTTCGTAGGACCGTTCCAAAGTGCGCGAGAGGCGGTCCCATTAAGTCGGGATTAGGTGTTATGTCTCTGCTTTCCCGGCAAGCACCGTTGTCAGTCATCCTAAGCGATGTTTATAGCGGGCAGCTTACCCAACAGGACGCCCTGGGGTAGACCCCTGATTTAGCTCACGGCGCGTGCGCTAGCCCGGGGGGCGCACATACGTCATGTCCTGAGAACCTTTGACGTGCGCGGGGGGCATTAGTGGCATTCATCCCACCACTCAAACGAACAAACAGAGCATCGTATACCTTGCGGCTCGTGCTTATACACGAGCATAGATACAAGGTACACTGTGTTAAACAGC","TCGCCAAGTATCGACGAAATATTTAGCTTAGTGCTGGGGCGCTTGGTAATTTACACCGTGGAGGTAGCTTCCCACAAGCTTGTCCTAATGAAGTGGTTCCTATCCTAACTAGAGCTGTCCGGAGAGTCCAGCTTACGATTCGCCGGGAACGAGAGACTAAGGTTCCGGTCCGGTTGGAAAGCGTAATAATCGCACCATTACGGCCCGAAATAGGCTGTCGGAACTGAATGAAGGATTGAACGCCAGGGAGCGCTATGTCGCTCGTGTATCGGATAGCCGTTTGTACCCCGAACCTCGGAACGCGCCGGGGCTTCTAATCTAATCTTTTTGTAGCGGACGTAATGAAGGGAACCACGCGGTCCTTTTGACGGATGAGCGGCGTCGTGCATCGGCAACTCACAGGGCGTCTATGACGCTTGTGGTACTCGGGACGTGACATGTGCTGATTTCTAATCCCAGCTAACTCTGAGGGCGGTTTATTGATCTATGGTCAATACTGCATAACGTATGTGCGCAAAGTTTGCCACTTTGCTCTATAGAAGCGTCTTGGTCACCCAGAAGATCACGCCGTGAGACTGGATCGCCAGTGTAAGTCACCTTAAAAGCACCGCCGCCCATTGCCCTAGCGGTAGGGAACTTAACTGAAGACCATACGATAGGCATGAGCATTAGCTCGAAGCTCCGTTTACAAGGATCCTTGGCGGTATTGAAAGGGTCGCGTGGCGGTAGGAGGACGAGCTAGTGTCGAACTATAAGGTCGTCCCTAGATCCTATGGAAGACAACCTTTTACCTACAAGTCAATTGCTGAGCAACTTTTCCCACCGGGTGGGTCTTAGGTCTTGTTATACCTGCCACACACCGTAATGCTTTGCGCTTCGTATTAATGGCGACAGTGTATGAAACTAGCTCAGAGATTTCAGGAACAATGCCTTGTACACC"))

include("FindingaMotifinDNA.jl")
test_cases = ["GATATATGCATATACTT\nATAT" => "2 4 10"]
for (k,v) in test_cases
    @test join(motif(k), " ") == v
end
#println(join(motif("CGCACGCTCCAGCACACGACACGCTCAGGCACGCTCCACGCTCCACGCTCCACGCTCTGGCACGCTCGACACGCTCGTCACGCTCTGCCACGCTCAGCTGCACGCTCAGATGGTACAGCGCACGCTCGTCCACGCTCCACGCTCCACGCTCCGCCACGCTCCACGCTCTCACGCTCTTTCACGCTCCACGCTCCACATAGCACGCTCAGCTCCTTCGCACGCTCCGGACACGCTCGCACGCTCACACGCTCCGCACGCTCACACGCTCGCACGCTCATGGCACGCTCCCACGCTCTCTTCACGCTCGCACGCTCGTCCACGCTCCGCCACGCTCCACGCACACGCTCCATGTACATATGTACACGCTCTCAGCACGCTCAACACGCTCACGCACGCTCTCCACGCTCCTGCGCACGCTCCACGCTCGCACGCTCTTGATACACGCTCTGATCACGCTCACACGCTCGAGGCCACGCTCGTCACGCTCCACGCTCACACGCTCCCACGCTCCACGCTCGCCCACGCTCCCGACACACGCTCGACCACGCTCCACGCTCAAGTGCTGCACGCTCTGCACGCTCGGTAGGCGGCACACGCTCGCACGCTCGCCGACAAGTGGTCCGTCCAAGCATACCCACGCTCGCACGCTCCACGCTCGCACGCTCCGGCCACGCTCCACATGGTCACGCTCCCACGCTCCACGCTCCACGCTCCACGCTCCACGCTCCACGCTCTAGCACGCTCCGGAACACGCTCCCACGCTCCACGCTCTTGCCACGCTCGCAAGGGCTCCACGCTCACACGCTCGGA\nCACGCTCCA")," "))

include("ComputingGCContent.jl")
test1=""">Rosalind_6404
CCTGCGGAAGATCGGCACTAGAATAGCCAGAACCGTTTCTCTGAGGCTTCCGGCCTTCCC
TCCCACTAATAATTCTGAGG
>Rosalind_5959
CCATCGGTAGCGCATCCTTAGTCCAATTAAGTCCCTATCCAGGCGCTCCGCCGAAGGTCT
ATATCCATTTGTCAGCAGACACGC
>Rosalind_0808
CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGAC
TGGGAACCTGCGGGCAGTAGGTGGAAT"""
result1=Result("Rosalind_0808",60.919540)
test_cases = [test1=>result1]
for (k,v) in test_cases
    result = gc_content(k)
    @test  result.name == v.name
    @test_approx_eq_eps result.ratio v.ratio 0.001
end

data=""">Rosalind_0650
AACGGGATGGCAACGTACGCTTTGGGCGATCGTAATCCCGACTGAGTCAATACATCGACG
TACAGGCCACGATCTCTCCCAGTTTAAAAGTCGTTAGAGTACGCATTGTGACAGATCCCA
GACCAGGAAGAAGATGTAGCGGGGTAGCTTACAGTGGTACGTTGCGTTTAGAAGTCTGGC
CGCGTGAATGCGAGGACACAATCCGACGATAATCAAGGCTTGCGGCTAATTCGCCTAAAG
TGTCATAGGTGTTGTGGCGTATCGCGACCTTCGGACTTGCCTAAGGCAGTGCAGATAGAT
CATCAATCTAGGGATCGGTCGCCTGCGGTATCCGAGGTCGGCGGAACACCAAGCTGACCA
TGACTGTAGAGAGATCACTGCGGGAAACATACGCGAGGGCACTCTCTGTTATGGCGGCAG
GATCCAATGTAGAGCTCGCTCGCTAAAAGAGCATGGATTTTGGGGCAGCAGGCCATCCAT
AGGCCTAGCAAGCTGCGTTTGACGGATAAACACCTGTGAACGCGTAAGATATTAAAGAAA
GGTGGGTGTTAGTTACGCCCGTTATCGGGCACTCAAATAAGCTCAGTATTGGCAACAGCG
TTTGTAAAGCGTTACCGCCTCGCACACTACAGTTCCCCTACCTGAGTGGGATGGGACCAT
CTCCAAATGCACATCCAAGTCTCTATAGAAGGCTGGTCCGACCGTGTGAATCTCAGGATC
CATATAGGCGGCGTCAAGTTAGGTGCGGCAGTCTTCTCGGGTATTTAGCAAGGGCCACTT
TTATGTGGGGTGAATGTTCACGCTAGCTGAGTCAAGACTGTTGTTCTCGCCTCTGCGATT
GTTATTCACATTGCCAGAAGTTCGCAGGTGCGTC
>Rosalind_2112
AAGAGTACCGTAATTATCGGAGACACGGCACTCCTCAAACTCGAGATCCCTAGAGTCATG
AACAGCTCTGTCTTCCGACGGAGTCATCAACTGGGGTCATACTCGATAGGCCTTGTACAG
GTCGTACACGGATCATGGTTCAGAGTCTTGCAAAAAGCGATAGGTGGTTAGTAGCATGCG
GACTTCGAACTCTCCTTCGTGACCGGTCCCAATAGCGGGCGTAGTGCGAACAAGCAGGTG
GTCTTTCTTGTTTCACGTCAAGTTTCCTTTGGGTAGTCCAACCACTGCTAGCGAGTCGGG
ATTCGTATCCGCAAGTCTCTAGTTCGGCAACAAAGTCCTTCGTTAGAAGGCAGGTGGCCC
CTAGATAGCAAACCGACGTCCTTTTGGCGATTCGGTATAGCGGCACCGACGTAGTGAAAG
GCTCGTCATCTAATCTTGACGTCAGAACGCTTGCTCTTGCTTAGCCGTGTACTGTTTTCG
AATGATCCTAATACCCCAACATGGCAAGTGGGCCGAGGATGACCCTCGATGATTACTATT
TGCTTATTACTCCCAGTAACAGCGCGTCTTTATACTAAAGACGAAACCCTAGACTGTAAC
TGTTGAACTATCGATCGATGAAGACGTGAACGCAGTCTAAGACAGAGAGTAGGGCAGCAA
TCACCCGAATCCGTTAGTTTTCTTAACCAAACTTACGAAAATGATGGTTGCTGAATAGCC
CTTCCCCTCTCTTTTCCGGACAGTGGTGCTTATGTTTTCGATCTTACGAAAAGAAAGGTA
ACTGTAACCTAAGGAATCGATGACCGTGACAACGAGTAAATTGTAGAGAAGGTCGACAGC
AGGGGAGATACTTCCGGAGACCACCAACATGCTACAGGTGCGGCGAACGCCACTTACTTG
GGCGTAACACCCCA
>Rosalind_7830
AGTTGCCCAGTCAGCAAATCGGAAGAGGCTGGTTTCAATTGAAGCAGGGAATGGCTTAAA
AGGCTTCGCTCTTATTCGCTTTGCTTTAAACTACACATACTCATCCAAAAGACTTGAAGT
AATACGTGTCGGAAAACAAGTCCTGGGTGCTTATATGCAGATGTGGCCCCGGTTCGCTAT
CTGCATCCGCGTTTTGTGGTCATTCACGTAGATACTAGCGACGTATAGCAGGGTAGTATT
GTGCTCGGATATGATTTCGGGAGCATAAAGACGTGCCTGCTAATACACACCAATCACCGA
CGCCTTGGACCAGGACCGGAAAGTCGCCTGTCTGTGTATTCGTAAACAAATCATCACTTC
GAGACAGGGATTAGCCTAACTCCATTGCCTAGTGTCGATAAATAATCCGACCCGGAGCAG
ATACTTGTAGGTTACCTGAGATAGTTCGGTCATCGAACTAGGAAACAGCATACTACGATA
CCGGGGAATAGGCGGGCATATTACGTATCGGCCTGTGTCTCCAGGTGGGGCCCTAGTCCC
CCGTTTAGAATTAGACCTGCCGTGGACCACTGGTAGCTACTTCTATGACATCCATTCTGC
CCCCTAATCGGCTTTCACATGAATTGCACTTTGGAATCCGAAGAGATTGCCGATGGAGAG
CATATGAACTACGGAATGATTGGATATCACCTCTTTCCTGTTTATAATAGGTTTGGCGTT
CGCAGGTATCATTGTCCATTCGTCCCTATATAGTGCTCACCTAAGGGCTTGGTAAGTGCA
CACTCCACCGCAGATTCACATCAAACAATAGATAAGGAC
>Rosalind_1303
TGGATCTCAACAGACGCCTGTCGGATAAGAATCGAACCCATATCGGGCAGGAGACTGAGT
GCCCCGAGAATTATCACTGTGCGAAGGAATTTATGGACAAGATTTCCCTTGCGTTCACTC
TTGTACGACGCGTTAGATGGGTATGGAACACGTATGACCATATTGCGGAGCTCAGCCCGG
GAAATAATTCGCGCCAAAAACAGATGTAAGAGAGGACGACTCGTGCACTACCACTTAAGC
TAGTTCCGTTAATTAACGACACAGACCTGCCACCAATAAGACCTAACCCTCCAGGAAGCC
GGCCACGAACGATGTAAATTCTGATCCTAGAAAGGTGGCATTAAATATCCCGGCCCCTGC
CAATGGGTGTTGCGATTCGTTCTAAACACCCGTATCTCGTCGATTGAGTCCCTTTGGAGT
TGTTGGGCAACGTTCCTCAAAGAGCAGTGGGCGATCAAAAGGGGTCCCGGGTAATTGTCC
TGTGATTTTTTTGCTTAGCGCGCAGTGGTTAAGCATGATAGTACGGCGTGGGAAAACTAG
CCGCAATGGGGAATCACGTTGCGGGAGGCTGTCACAATTACAGGGTGAGACCGCGACAAC
TGCTGTCATTGCCCGTGCCTCTCGTACCGTAATAACCGGGACGTGGGTTGTGTTACCCGG
GATAGGTGTAGCAATACTATTAGGAAGCACAAAAAGCTTCAAGCGGGTATTTCAAAACTC
GACTGCATTGGGAGTGCCACATTTATAGGTGGTGTCGCTATCGGTGAAGCGATCTTGGAA
AGGTACTTTCCTTGATACAAGGCACTATTGCTCGCAACTCTATTTGCTCAAGCGACAGCA
CAGACCTTTCAGGTC
>Rosalind_2839
GATAACAAAAAGTGGACTCTGTTTCGATGCGGCGCGCTACTTCCTGGCCTTGGAGTAGGA
GACACATCTAGTTCAGGTCCAGCCGAATGTTAGGATTACCGGGCTTTCGCCTAGTCACGT
GTTGCCTAGCTCAGTACTTGCATGGTGACGTTTGAATTTAATTGCTGACGCGCTTGACGA
CTGTATTATTCCAAGGTCGTGGCCCGTGCAGTCGACGAAGGTGACGATAGTCTTGAACAG
ACTAATGCGAGTTTTCCCTTTCAATTTATCGTGGGAGCCGCTCGAGAACTTGCTCATAGT
TAGGTCGACCACAGACCGTAAATATAGGACTCCTCTCAGAGTGGATTGCCGACTCCCCTA
ATGTCTTGCTCGAACCAAGATAAAGCCCGTGAGAATTTTTGATGATGGATGGTCTTCAGG
GGCAACAGCAGGACTAGCTATCACAGAAGTGACCAGGCTCCGGACTACCGCGCGTCTGAG
ACGGGGATGAGCCGCCTGCTTGTACACTCCGTACGTTCGGAAGACAGCATGAATTAGCGT
GCTGAGTCGGACCCCGGGATACGCAGGTGAGACGAGGATTTCTGGGTGGGAATGCCACTC
CCACTGGCAACAACCCGAGGGGGAGGTAACCGGACTTGGAGCAGTGGGAGTGAGGCAGCC
TCTTCGTGTTGGACAGGATCCACGACGAGTGATCCGTACGCGGAACGCCCTACTGATGTA
ATGCGATCACAGAAATCTAGATTAACCGCAGGTCAACGGCCCTCGCGTGGCCTAGCATTT
AAGAAGCCGCGTCAGACCCTTCGGCCTACGCAAAAGTGGAGTCTTAAAGCTCGATGTTCG
ACAGAGGTAAA
"""
r = gc_content(data)
#println("$(r.name)\n$(r.ratio)")

