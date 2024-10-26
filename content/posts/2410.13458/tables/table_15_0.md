| Example 1 | Instrcution: | You are provided with a text. Your objective is to identify, extract and classify all gene and protein entities mentioned in the text, maintaining the order in which they appear. Types are [Gene, DomainMotif, Family- Name]. The entities should be presented in the following format: [entity ]. |
| --- | --- | --- |
|  | Input: | Cloning, expression and localization of an RNA helicase gene from a human lymphoid cell .. ... cell line from a diffuse large B-cell lymphoma. |
|  | Output: | [RNA helicase ] [RNA helicase ] [p54 ] [RNA helicase ] [ME31B ] [ME31B ] |
| Example 2 | Instrcution: | You are provided with a text. Your objective is to identify, extract and classify all gene variant entities mentioned in the text, maintaining the order in which they appear. Types are [DNAMutation, SNP, ProteinMu- tation]. The entities should be presented in the following format: [entity ]. |
|  | Input: | A novel multidrug-resistance protein 2 gene mutation identifies a ... ... heterozygous mutation was significantly associated with the presence of pruritus. |
|  | Output: | [V1188E ] |
| Query | Instrcution: | You are provided with a text. Your objective is to identify, extract and clas- sify all gene variant entities mentioned in the text, maintaining the order in which they appear. Types are [OtherMutation, Species, DNAAllele, DNAMutation, CellLine, SNP, ProteinMutation, ProteinAllele, Gene, AcidChange]. The entities should be presented in the following format: [entity ]. |
|  | Input: | A novel single-nucleotide substitution, Glu 4 Lys ... ... Thus, our results suggest that Glu 4 Lys in the LTC4S might be associated with allergic diseases. |
