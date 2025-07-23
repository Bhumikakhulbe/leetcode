# Write your MySQL query statement below
select *, 
dna_sequence like 'ATG%' as has_start, 
dna_sequence like '%TAA' OR dna_sequence like '%TAG' OR dna_sequence like '%TGA' as has_stop,
dna_sequence like '%ATAT%' as has_atat,
dna_sequence like '%GGG%' as has_ggg
from Samples
order by sample_id;