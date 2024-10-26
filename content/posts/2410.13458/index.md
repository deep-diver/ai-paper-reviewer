---
title: "MedINST: Meta Dataset of Biomedical Instructions"
summary: "This paper introduces MedINST, a large and comprehensive meta-dataset of biomedical instructions designed to improve the training of large language models (LLMs) for biomedical applications.  The data....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-17", "🤗 2024-10-24"]
showSummary: true
date: 2024-10-17
draft: false
---

### TL;DR


{{< lead >}}

This paper introduces MedINST, a large and comprehensive meta-dataset of biomedical instructions designed to improve the training of large language models (LLMs) for biomedical applications.  The dataset includes 133 tasks across 12 categories and over 7 million samples, allowing for the development of more robust and generalized LLMs for various biomedical natural language processing tasks.  A benchmark dataset, MedINST32, is also introduced for evaluating the performance of these LLMs.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13458" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
MedINST is a significant contribution to the field of biomedical NLP because it addresses the critical need for large, diverse, and well-annotated datasets for training LLMs. The paper introduces a novel multi-domain, multi-task instructional meta-dataset containing 133 biomedical NLP tasks and over 7 million training samples, which is substantially larger than existing datasets, making it the most comprehensive biomedical instruction dataset to date. This dataset can enable researchers to develop more robust and effective LLMs for biomedical applications, fostering advancements in medical analysis and treatment strategies.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MedINST, a meta-dataset of biomedical instructions with 133 tasks and 7M samples, is introduced. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MedINST32, a benchmark with varying difficulty levels for evaluating LLMs' cross-task generalization, is created. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Instruction-tuned LLMs trained on MedINST showcase enhanced cross-task generalization on MedINST32. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_4_0.png "🔼 Figure 1: MEDINST overview.")





{{< table-caption caption="🔽 Comparison of MEDINST to several datasets in biomedical field." >}}
| Resource | MEDINST (this work) | SUP-NATINST (Wang et al., 2022) (Biomedicine) | BoX (Parmar et al., 2022) | BLURB (Gu et al., 2021) |
| --- | --- | --- | --- | --- |
| Has task instructions? |  |  |  | x |
| Has multi-task datasets? |  |  |  | x |
| Has examples? |  |  |  | x |
| Is public? |  |  |  |  |
| Number of tasks | 133 | 30 | 32 | 13 |
| Number of instructions | 133 | 30 | 32 | - |
| Number of annotated task types | 12 | - | 9 | 6 |
| Avg. task definition length (words) | 45.98 | 56.6 | - | - |
{{< /table-caption >}}


------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Comparison of MEDINST to several datasets in biomedical field." >}}
|  | NER | RE | NED | QA | COREF | EE | TE | STS | TXTCLASS | TRANSL | SUM | TEXTPAIRCLASS | ALL |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Dataset # | MEDINST | Train | 56 | 24 | 21 | 13 | 13 | 10 | 8 | 7 | 5 | 3 | 2 | 1 | 163 |
| Dataset # | MEDINST | Dev | 30 | 11 | 10 | 8 | 10 | 7 | 5 | 1 | 4 | 1 | 1 | - | 88 |
| Dataset # | MEDINST | Test | 37 | 9 | 12 | 10 | 2 | 1 | 8 | 1 | 5 | 1 | 1 | - | 87 |
| Dataset # | MEDINST32 | Train | 43 | 21 | 19 | 10 | 11 | 9 | 5 | 6 | 3 | 2 | 1 | 1 | 131 |
| Dataset # | MEDINST32 | Dev | 19 | 9 | 9 | 6 | 8 | 6 | 5 | - | 2 | - | - | - | 64 |
| Dataset # | MEDINST32 | Test | 13 | 3 | 2 | 3 | 2 | 1 | 3 | 1 | 2 | 1 | 1 | - | 32 |
| # Instruction/Task | # Instruction/Task | # Instruction/Task | 49 | 23 | 19 | 9 | 7 | 9 | 3 | 3 | 5 | 3 | 2 | 1 | 133 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: Test results of various models on MEDINST32. † indicates that the training sets of LLaMA3-MI includes the corresponding training sets of the datasets used by MEDINST32, whereas other models have not seen the MEDINST32 dataset. ↓ represents that a lower score is better, while for other metrics, a higher score is better. The best and second-best results for each row are highlighted in bold and underlined, respectively. For the baselines, we use a few-shot prompt, providing two examples in the instruction. For the fine-tuned models, we use a zero-shot prompt." >}}
| Method | An | CK | CB | CM | MG | PM | Avg. |
| --- | --- | --- | --- | --- | --- | --- | --- |
| BioMistral | 48.89 | 66.42 | 63.19 | 58.38 | 70.00 | 58.46 | 60.88 |
| MMedL3 | 65.19 | 70.19 | 72.22 | 55.49 | 74.00 | 66.91 | 67.03 |
| MMedL3-EnIns | 68.15 | 64.91 | 71.52 | 59.53 | 76.00 | 72.79 | 68.32 |
| LLaMA3 | 67.41 | 76.60 | 80.56 | 67.63 | 82.00 | 72.06 | 73.92 |
| MMedL3-MI (Ours) | 64.44 | 67.92 | 71.53 | 58.96 | 74.00 | 66.54 | 66.76 |
| LLaMA3-MI (Ours) | 68.15 | 75.47 | 75.00 | 67.63 | 83.00 | 77.21 | 74.38 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Comparison of MEDINST to several datasets in biomedical field." >}}
| Dataset Name | Sample Size |
| --- | --- |
| NCBI-disease | 100 |
| BC5CDR | 100 |
| BioNLP-2011-GE | 100 |
| tm Var-v3 | 100 |
| MeDAL | 1000 |
| ParaMed | 200 |
| Multi-XScience | 200 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Comparison of MEDINST to several datasets in biomedical field." >}}
| QA Given a question and context, select the correct answer from the provided options. |
| --- |
| TE Given a pair of texts, consisting of a claim and the evidence, determine whether the evidence supports, refutes, or is neutral regarding the claim. Respond with one of the following: 'Supports' , 'Refutes' , or 'Neutral'. |
| NER Given a sentence, label each disease, disease class and symptom entity using the BIO format. In BIO format, 'B' indicates the beginning of an entity, T indicates the inside of an entity, and 'O' indicates a token not part of any entity. Label each word in the format: 'word [LABEL]'. |
| TXTCLASS You are provided with a citation context. Classify the intent of the citation within this context. Intents are: [background, method, result]. |
| NED You are provided with a text. Your objective is to identify and extract all chemical and disease entities mentioned in the text, maintaining the order in which they appear. For each entity, provide its corresponding database identifier from MESH. The entities should be presented in the format: [entity1 ]. |
| RE Given a text, identify and extract specified relations between anatomical entities mentioned within it. The specified relation types are [frag, Part-of]. Relation explanation: frag: Frag relation marking coordination with ellipsis; Part-of: Part-of relation marking entity mention spanning a prepositional phrase. Present each relation in format as follows: [  ]. |
| COREF Given a text and a specified anatomical entity, identify and extract all co-references to that entity within the text. Present each co-reference entity in the following format: [co-reference entity]. |
| STS Given two texts, evaluate their similarity and provide an integer score ranging from 0 to 5, where 0 indicates no similarity and 5 indicates high similarity. |
| EE Given a text, identify and extract the epecified types of bio-molecular events along with their primary arguments. The event type can be [Binding, Positive_regulation, Phosphorylation, Regulation, Transcription, Localization, Gene_expression, Protein_ catabolism, Negative_regulation]. Present each event in the format as follows: [  ]. |
| TRANSL Translate the text from Chinese to English. |
| TEXTPAIRCLASS You are given a drug name and a piece of text. Analyze the sentiment in the text and determine whether the sentiment towards the drug is positive, negative, or neutral. Answer with 'Positive', 'Negative', or 'Neutral'. |
| SUM Writing the related-work section of a paper based on its abstract and the articles it references. |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Comparison of MEDINST to several datasets in biomedical field." >}}
| Example 1 | Instrcution: | You are provided with a text. Your objective is to identify, extract and classify all gene and protein entities mentioned in the text, maintaining the order in which they appear. Types are [Gene, DomainMotif, Family- Name]. The entities should be presented in the following format: [entity ]. |
| --- | --- | --- |
|  | Input: | Cloning, expression and localization of an RNA helicase gene from a human lymphoid cell .. ... cell line from a diffuse large B-cell lymphoma. |
|  | Output: | [RNA helicase ] [RNA helicase ] [p54 ] [RNA helicase ] [ME31B ] [ME31B ] |
| Example 2 | Instrcution: | You are provided with a text. Your objective is to identify, extract and classify all gene variant entities mentioned in the text, maintaining the order in which they appear. Types are [DNAMutation, SNP, ProteinMu- tation]. The entities should be presented in the following format: [entity ]. |
|  | Input: | A novel multidrug-resistance protein 2 gene mutation identifies a ... ... heterozygous mutation was significantly associated with the presence of pruritus. |
|  | Output: | [V1188E ] |
| Query | Instrcution: | You are provided with a text. Your objective is to identify, extract and clas- sify all gene variant entities mentioned in the text, maintaining the order in which they appear. Types are [OtherMutation, Species, DNAAllele, DNAMutation, CellLine, SNP, ProteinMutation, ProteinAllele, Gene, AcidChange]. The entities should be presented in the following format: [entity ]. |
|  | Input: | A novel single-nucleotide substitution, Glu 4 Lys ... ... Thus, our results suggest that Glu 4 Lys in the LTC4S might be associated with allergic diseases. |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: Test results of various models on MEDINST32. † indicates that the training sets of LLaMA3-MI includes the corresponding training sets of the datasets used by MEDINST32, whereas other models have not seen the MEDINST32 dataset. ↓ represents that a lower score is better, while for other metrics, a higher score is better. The best and second-best results for each row are highlighted in bold and underlined, respectively. For the baselines, we use a few-shot prompt, providing two examples in the instruction. For the fine-tuned models, we use a zero-shot prompt." >}}
| Model | BERTScore | METEOR Score |
| --- | --- | --- |
| LLaMA3 | 0.7467 | 0.1758 |
| BioMistral | 0.7253 | 0.1152 |
| MMEDL3-EnIns | 0.7314 | 0.1185 |
| GPT-4o | 0.8317 | 0.2333 |
| LLaMA3-MI32 (ours) | 0.7951 | 0.1566 |
| MMEDL3-MI32 (ours) | 0.7963 | 0.1220 |
| LLaMA3-MI (ours) | 0.8203 | 0.1592 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 10: TRANSL task: ParaMed results." >}}
| Model | BERTScore | METEOR Score |
| --- | --- | --- |
| LLaMA3 | 0.9000 | 0.3776 |
| BioMistral | 0.9101 | 0.3670 |
| MMEDL3-EnIns | 0.8888 | 0.3625 |
| GPT-4o | 0.9291 | 0.4661 |
| LLaMA3-MI32 (ours) | 0.9115 | 0.3933 |
| MMEDL3-MI32 (ours) | 0.9080 | 0.3781 |
| LLaMA3-MI (ours) | 0.9379 | 0.6126 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 11: Dataset collection." >}}
| Dataset | Task | Train | Dev | Test |
| --- | --- | --- | --- | --- |
| BioASQ-Task-B-yesno | QA | 15,568 | 0 | 813 |
| BioASQ-Task-B-list | QA | 11,687 | 0 | 1,000 |
| BioASQ-Task-B-factoid | QA | 16,389 | 0 | 724 |
| BioASQ-Task-B-summary | QA | 13,151 | 0 | 824 |
| BiologyHow WhyCorpus | QA | 1,269 | 0 | 0 |
| BIOMRC | QA | 700,000 | 50,000 | 62,707 |
| Evidence-Inference-2.0 | QA | 10,056 | 1,233 | 1,222 |
| MedQA | QA | 10,178 | 1,273 | 1,272 |
| MedHop | QA | 1,620 | 342 | 0 |
| MEDIQA-QA | QA | 312 | 25 | 150 |
| PubMedQA-artificial | QA | 200,000 | 11,269 | 0 |
| PubMedQA-labeled | QA | 450 | 50 | 500 |
| SciQ | QA | 11,679 | 1,000 | 1,000 |
| FEVER | TE | 145,449 | 9,999 | 9,999 |
| HealthVer | TE | 10,590 | 1,917 | 1,823 |
| PubHealth | TE | 9,804 | 1,214 | 1,233 |
| SciFact | TE | 868 | 0 | 1,189 |
| ManConCorpus | TE | 0 | 0 | 2,775 |
| CoVERt | TE | 0 | 0 | 212 |
| MEDIQA-RQE | TE | 8,588 | 302 | 230 |
| SciTail | TE | 23,596 | 2,126 | 1,304 |
| NCBI-disease | NER | 5,432 | 923 | 942 |
| BC2GM | NER | 12,632 | 2,531 | 5,065 |
| CHEMDNER-BIO | NER | 30,884 | 30,841 | 26,561 |
| BC5CDR | NER | 4,560 | 4,581 | 4,797 |
| Linnaeus | NER | 12,004 | 4,086 | 7,181 |
| JNLPBA-DNA | NER | 4,699 | 552 | 622 |
| JNLPBA-RNA | NER | 721 | 89 | 102 |
| JNLPBA-CT | NER | 4,792 | 420 | 1,422 |
| JNLPBA-CL | NER | 2,596 | 284 | 377 |
| AnatEM | NER | 5,861 | 2,118 | 3,830 |
| AnEM | NER | 164 | 137 | 30 |
| BioInfer | NER | 894 | 0 | 206 |
| BioNLP-2009 | NER | 756 | 260 | 150 |
| BioNLP-2011-EPI | NER | 600 | 200 | 0 |
| BioNLP-2011-GE | NER | 856 | 0 | 338 |
| BioNLP-2011-ID | NER | 151 | 46 | 117 |
| BioNLP-2011-REL | NER | 756 | 150 | 260 |
| BioNLP-2013-CG | NER | 300 | 100 | 200 |
| BioNLP-2013-GE | NER | 194 | 212 | 256 |
| BioNLP-2013-GRO | NER NER | 150 | 50 | 100 |
| BioNLP-2013-PC BioNLP-2019-BB | NER | 132 | 90 66 | 175 |
|  |  |  |  |  |
|  |  | 260 |  | 0 100 |
| BioRED BioRelEx | NER NER | 400 1,402 | 100 201 | 0 |
| CellFinder | NER | 5 | 0 | 5 |
| CHEBI | NER | 476 | 0 | 0 |
| CHEMDNER | NER | 2,915 | 2,906 | 2,477 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 11: Dataset collection." >}}
| Dataset | Task | Train | Dev | Test |
| --- | --- | --- | --- | --- |
| ChemProt | NER | 1,020 | 612 | 800 |
| CHIA | NER | 1,932 | 0 | 0 |
| CPI | NER | 1,808 | 0 | 0 |
| DDI | NER | 673 | 0 | 279 |
| DrugProt | NER | 3,500 | 750 | 0 |
| EBM-NLP | NER | 4,735 | 0 | 187 |
| EU-ADR | NER | 299 | 0 | 0 |
| GENETAG | NER | 3,875 | 1,311 | 2,567 |
| PTM-Events | NER | 112 | 0 | 0 |
| GENIA-Term | NER | 2,000 | 0 | 0 |
| GNormPlus | NER | 418 | 0 | 261 |
| HPRD50 | NER | 34 | 0 | 9 |
| MedMentions | NER | 2,635 | 878 | 879 |
| miRNA | NER | 201 | 0 | 100 |
| MLEE | NER | 130 | 44 | 87 |
| NLM-Gene | NER | 450 | 0 | 100 |
| NLM-Chem | NER | 80 | 20 | 50 |
| OSIRIS | NER | 105 | 0 | 0 |
| PDR | NER | 179 | 0 | 0 |
| PICO-Annotation | NER | 361 | 0 | 0 |
| ProGene | NER | 20,055 | 1,109 | 2,414 |
| SCAI-Chemical | NER | 67 | 0 | 0 |
| SCAI-Disease | NER | 330 | 0 | 0 |
| SETH | NER | 433 | 0 | 0 |
| SPL-ADR | NER | 101 | 0 | 0 |
| tmVar-v1 | NER | 213 | 0 | 101 |
| tmVar-v2 | NER | 158 | 0 | 0 |
| tmVar-v3 | NER | 0 | 0 | 493 |
| Verspoor-2013 | NER | 117 | 0 | 0 |
| MedDialog | TXTCLASS | 981 | 126 | 122 |
| SciCite | TXTCLASS | 8,243 | 916 | 1,861 |
| Hallmarks-of-Cancer | TXTCLASS | 12,119 | 1,798 | 3,547 |
| GEOKhoj-v1 | TXTCLASS | 25,000 | 0 | 5,000 |
| BC7-LitCovid | TXTCLASS | 24,960 | 2,500 | 6,239 |
| AskAPatient-NED | NED | 15,612 | 845 | 867 |
| BC5CDR-NED | NED | 500 | 500 | 500 |
| Bio-ID | NED | 11,366 | 0 | 0 |
| BioNLP-2019-BB-NED | NED | 132 | 66 | 0 |
| BioRED-NED | NED | 400 | 100 | 100 |
| BioRelEx-NED | NED | 1,402 | 201 | 0 |
| CPI-NED | NED | 1,808 | 0 | 0 |
| GNormPlus-NED | NED | 418 95 | 0 | 261 |
| Linnaeus-NED MeDAL | NED NED |  | 0 1,000,000 | 0 |
|  |  |  |  | 1,000,000 |
|  |  | 3,000,000 2,635 | 878 | 879 |
| MedMentions-NED miRNA-NED | NED NED | 201 | 0 | 100 |
| MuchMore-NED | NED | 7,820 | 0 | 0 |
| NCBI-disease-NED | NED | 592 | 100 | 100 |
| NLM-Gene-NED | NED | 450 | 0 | 100 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 11: Dataset collection." >}}
| Dataset | Task | Train | Dev | Test |
| --- | --- | --- | --- | --- |
| UMNSRS | STS | 1,153 | 0 | 0 |
| BioNLP-2009-EE | EE | 695 | 150 | 0 |
| BioNLP-2011-EPI-EE | EE | 383 | 121 | 0 |
| BioNLP-2011-GE-EE | EE | 765 | 0 | 0 |
| BioNLP-2011-ID-EE | EE | 110 | 30 | 0 |
| BioNLP-2013-CG-EE | EE | 299 | 100 | 0 |
| BioNLP-2013-GE-EE | EE | 149 | 157 | 0 |
| BioNLP-2013-PC-EE | EE | 257 | 90 | 0 |
| PTM-Events-EE | EE | 111 | 0 | 0 |
| MLEE-EE | EE | 127 | 44 | 87 |
| PDR-EE | EE | 167 | 0 | 0 |
| MuchMore-TRANSL | TRANSL | 6,374 | 0 | 0 |
| ParaMed | TRANSL | 62,127 | 2,036 | 2,102 |
| SciELO | TRANSL | 3,006,699 | 0 | 0 |
| Medical-Data | TEXTPAIRCLASS | 5,279 | 0 | 0 |
| MeQSum | SUM | 1,000 | 0 | 0 |
| Multi-XScience | SUM | 30,369 | 5,066 | 5,093 |
{{< /table-caption >}}


</details>

------

