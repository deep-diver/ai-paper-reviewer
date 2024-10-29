---
title: "ChroKnowledge: Unveiling Chronological Knowledge of Language Models in Multiple Domains"
summary: "Researchers developed CHROKNOWBENCH, a new benchmark, and CHROKNOWLEDGE, a framework, to effectively evaluate and enhance large language models' understanding of chronological knowledge across various..."
categories: ["AI Generated"]
tags: ["🔖 24-10-13", "🤗 24-10-17"]
showSummary: true
date: 2024-10-13
draft: false
---

### TL;DR


{{< lead >}}

This research tackles the challenge of evaluating and improving large language models' (LLMs) understanding of how knowledge changes over time.  Current methods often fail to consider the cumulative nature of knowledge.  The researchers introduce CHROKNOWBENCH, a benchmark dataset that tests LLMs' knowledge across different domains (general, biomedical, legal, etc.) and considers whether the knowledge evolves or remains constant.  They also introduce CHROKNOWLEDGE, a new framework for evaluating LLMs' chronological knowledge.  This framework uses a sampling-based approach and is designed to work with both open-source and proprietary LLMs.  Finally, the paper introduces CHROKNOWPROMPT, a prompting technique for updating LLMs' temporal knowledge by guiding the model step-by-step through a timeline. Experiments show this technique improves the overall temporal knowledge across the timelines evaluated.  The work is significant because it offers a more comprehensive approach to assessing and improving LLMs' understanding of time-dependent knowledge, which is crucial for many real-world applications.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.09870" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.09870" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on large language models (LLMs) and their ability to understand and utilize temporal knowledge.  It introduces a novel benchmark and framework for evaluating and improving LLMs' chronological reasoning, addressing a significant gap in current research. The findings have implications for various applications of LLMs where temporal understanding is critical, such as question answering, fact verification, and knowledge base construction.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CHROKNOWBENCH, a benchmark dataset, was created to evaluate chronologically accumulated knowledge in LLMs across multiple domains. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} CHROKNOWLEDGE, a novel sampling-based framework, was proposed to evaluate and update LLMs' chronological knowledge. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} CHROKNOWPROMPT, an in-depth prompting technique, was developed to successfully update temporal knowledge across timelines. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png)

> 🔼 The figure illustrates the time-variant dataset generation process in ChroKnowBench, accumulating knowledge across multiple domains, time dependencies, and temporal states.
> <details>
> <summary>read the caption</summary>
> Figure 1: The overview of time variant dataset generation in ChroKnowBench. We accumulate knowledge in three key aspects: (1) multiple domains: general, biomedical, legal, commonsense, and mathematics; (2) time dependency: as time goes by, changeable knowledge; (3) temporal state: dynamic (has evolved over period) and static (no change occurred during period).
> </details>





![](charts/charts_5_0.png)

> 🔼 The chart displays the performance of various LLMs across different domains, showing the differences in how they handle dynamic vs. static knowledge over time.
> <details>
> <summary>read the caption</summary>
> Figure 2: Performance analysis of general domain. The left two figures show the tendency of dynamic knowledge in temporal results, with more fluctuations in recent knowledge compared to static knowledge, which is more stable but still shows slight variation across the plots. The template-wise results reveal a trend of minimal reliance on internal representation (top figures). Meanwhile, the MCQA templates are influenced by the model’s specialized capabilities, even managing to overcome the training cutoff in recent years (bottom figures).
> </details>





{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td>Category</td><td>Definition</td><td>Description</td></tr><tr><td>Correct</td><td>{⌀i  M(Di,s,r,t) = �i; M, � = 아≥1 n A</td><td>All objects generated with greedy decoding are entirely included within the answer set.</td></tr><tr><td>Partial Correct</td><td>U {⌀i I M(Di,s,r,t) = ��; M,T}"=1 0A + ⌀ TET</td><td>At least one generated object from greedy decoding or temperature sampling is in the answer set.</td></tr><tr><td>Incorrect</td><td>U {⌀i I M(Di,s,r,t) = ��; M, �}��� 0A = ⌀ TET</td><td>None of the generated objects, either from greedy decoding or temperature sampling, are included in the answer set.</td></tr></table>{{< /table-caption >}}

> 🔼 This table defines the categories used to evaluate the language model's knowledge, considering both greedy and temperature sampling methods, and incorporating a temporal component.
> <details>
> <summary>read the caption</summary>
> Table 1: Knowledge categorization with a temporal component. We classify responses into Correct, Partial Correct, and Incorrect to specify eliciting predictions in diverse way by comparing them with the answer set A. We use a temperature set T∈{0, 0.7} to capture variations in prediction, where T includes both greedy decoding and temperature sampling. We set n as 5, meaning that we evaluate using five distinct combinations of few-shot exemplars to ensure the robust assessment.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_8_0.png)

> 🔼 The figure illustrates the step-by-step process of ChroKnowPrompt, showing how it traverses through time spans to refine chronological knowledge in LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 5: Overview of ChroKnowPrompt. The algorithm systematically traverses step by step, appending each span's result as few shot for each steps. The range of each previous and next span is predefined, with the order of nearest time stamp from target Tn. The model suggests last candidate answer Cn, verified and refined through several steps, which ends to be checked with the object on in benchmark.
> </details>



![](figures/figures_20_0.png)

> 🔼 The figure shows the performance of various language models on a general domain knowledge task, comparing dynamic and static knowledge across different time periods and using two different question formats.
> <details>
> <summary>read the caption</summary>
> Figure 2: Performance analysis of general domain. The left two figures show the tendency of dynamic knowledge in temporal results, with more fluctuations in recent knowledge compared to static knowledge, which is more stable but still shows slight variation across the plots. The template-wise results reveal a trend of minimal reliance on internal representation (top figures). Meanwhile, the MCQA templates are influenced by the model’s specialized capabilities, even managing to overcome the training cutoff in recent years (bottom figures).
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](charts/charts_6_0.png "🔼 Figure 2: Performance analysis of general domain. The left two figures show the tendency of dynamic knowledge in temporal results, with more fluctuations in recent knowledge compared to static knowledge, which is more stable but still shows slight variation across the plots. The template-wise results reveal a trend of minimal reliance on internal representation (top figures). Meanwhile, the MCQA templates are influenced by the model's specialized capabilities, even managing to overcome the training cutoff in recent years (bottom figures).")

> 🔼 The chart displays the performance of various LLMs on a general domain knowledge task, differentiating between dynamic and static knowledge and showing the impact of different prompting templates (Generation and Multi-choice QA).
> <details>
> <summary>read the caption</summary>
> Figure 2: Performance analysis of general domain. The left two figures show the tendency of dynamic knowledge in temporal results, with more fluctuations in recent knowledge compared to static knowledge, which is more stable but still shows slight variation across the plots. The template-wise results reveal a trend of minimal reliance on internal representation (top figures). Meanwhile, the MCQA templates are influenced by the model's specialized capabilities, even managing to overcome the training cutoff in recent years (bottom figures).
> </details>


![](charts/charts_7_0.png "🔼 Figure 4: Chronological categorization based on each answer with its time stamp. If the model answer correctly for all, it is re-categorized as Known. The target of ChroKnowPrompt is Partial Known, which confuses its knowledge among the whole time stamps.")

> 🔼 The chart illustrates the ChroKnowPrompt's approach of traversing through time stamps to refine the model's chronological knowledge, classifying responses into Known, Partial Known, Cut-off, and Unknown.
> <details>
> <summary>read the caption</summary>
> Figure 4: Chronological categorization based on each answer with its time stamp. If the model answer correctly for all, it is re-categorized as Known. The target of ChroKnowPrompt is Partial Known, which confuses its knowledge among the whole time stamps.
> </details>


![](charts/charts_19_0.png "🔼 Figure 2: Performance analysis of general domain. The left two figures show the tendency of dynamic knowledge in temporal results, with more fluctuations in recent knowledge compared to static knowledge, which is more stable but still shows slight variation across the plots. The template-wise results reveal a trend of minimal reliance on internal representation (top figures). Meanwhile, the MCQA templates are influenced by the model’s specialized capabilities, even managing to overcome the training cutoff in recent years (bottom figures).")

> 🔼 The chart displays the performance of various LLMs across different domains, comparing dynamic and static knowledge and highlighting the impact of the choice of template on the results.
> <details>
> <summary>read the caption</summary>
> Figure 2: Performance analysis of general domain. The left two figures show the tendency of dynamic knowledge in temporal results, with more fluctuations in recent knowledge compared to static knowledge, which is more stable but still shows slight variation across the plots. The template-wise results reveal a trend of minimal reliance on internal representation (top figures). Meanwhile, the MCQA templates are influenced by the model’s specialized capabilities, even managing to overcome the training cutoff in recent years (bottom figures).
> </details>


![](charts/charts_19_1.png "🔼 Figure 2: Performance analysis of general domain. The left two figures show the tendency of dynamic knowledge in temporal results, with more fluctuations in recent knowledge compared to static knowledge, which is more stable but still shows slight variation across the plots. The template-wise results reveal a trend of minimal reliance on internal representation (top figures). Meanwhile, the MCQA templates are influenced by the model’s specialized capabilities, even managing to overcome the training cutoff in recent years (bottom figures).")

> 🔼 The chart displays the performance of various language models on a general domain knowledge task, showing the stability of static knowledge and the fluctuations of dynamic knowledge over time.
> <details>
> <summary>read the caption</summary>
> Figure 2: Performance analysis of general domain. The left two figures show the tendency of dynamic knowledge in temporal results, with more fluctuations in recent knowledge compared to static knowledge, which is more stable but still shows slight variation across the plots. The template-wise results reveal a trend of minimal reliance on internal representation (top figures). Meanwhile, the MCQA templates are influenced by the model’s specialized capabilities, even managing to overcome the training cutoff in recent years (bottom figures).
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Time Dependency</td><td>Domain (Time Frame)</td><td># of Relations</td><td>Structured</td><td>Format</td><td>Temporal State</td><td># of Examples</td><td>Source</td></tr><tr><td rowspan="6">Time Variant</td><td rowspan="2">general (2010 - 2023)</td><td rowspan="2">8</td><td rowspan="2"></td><td rowspan="2">(s, r, ⌀, t)</td><td>dynamic</td><td>8,330</td><td rowspan="2">Wikidata</td></tr><tr><td>static</td><td>8,302</td></tr><tr><td rowspan="2">biomedical (2020 - 2024)</td><td rowspan="2">14</td><td rowspan="2">V</td><td rowspan="2">(s, r, ⌀, t)</td><td>dynamic</td><td>7,345</td><td rowspan="2">UMLS</td></tr><tr><td>static</td><td>7,345</td></tr><tr><td rowspan="2">legal (2010 - 2023)</td><td rowspan="2">6</td><td rowspan="2">X</td><td rowspan="2">QA</td><td>dynamic</td><td>3,142</td><td rowspan="2">CFR</td></tr><tr><td>static</td><td>3,142</td></tr><tr><td rowspan="2">Time Invariant</td><td rowspan="2">commonsense math</td><td rowspan="2">8 12</td><td rowspan="2">V V</td><td rowspan="2">(s, r, o) (s, r,o)</td><td>invariant</td><td>24,788</td><td rowspan="2">CSKG Math-KG</td></tr><tr><td>invariant</td><td>2,585</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the statistical characteristics of the ChroKnowBench dataset, categorizing knowledge as time-variant or time-invariant across multiple domains and temporal states.


{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td rowspan="3">Models</td><td colspan="4">general</td><td colspan="4">biomedical</td><td colspan="2">Model Increase</td></tr><tr><td colspan="2">total span</td><td colspan="2">previous span</td><td colspan="2">total span</td><td colspan="2">previous span</td><td rowspan="2">total span</td><td rowspan="2">previous span</td></tr><tr><td>dynamic</td><td>static</td><td>dynamic</td><td>static</td><td>dynamic</td><td>static</td><td>dynamic</td><td>static</td></tr><tr><td colspan="11">Proprietary Large Language Models</td></tr><tr><td>GPT4o-mini</td><td>28.7 (+7.7)</td><td>33.2 (+4.7)</td><td>26.6 (+5.7)</td><td>31.7 (+3.3)</td><td>51.9 (+23.0)</td><td>51.6 (+27.8)</td><td>41.8 (+12.8)</td><td>36.7 (+13.0)</td><td>15.8</td><td>8.7</td></tr><tr><td colspan="11">Open-Source Large Language Models</td></tr><tr><td>Phi3.5 Mini</td><td>17.3 (+2.1)</td><td>25.5 (+2.5)</td><td>16.5 (+1.2)</td><td>24.1 (+1.1)</td><td>45.4 (+18.7)</td><td>41.3 (+20.3)</td><td>36.6 (+10.0)</td><td>31.5 (+10.5)</td><td>10.9</td><td>5.7</td></tr><tr><td>LLaMA3.1</td><td>20.6 (+3.1)</td><td>27.1 (+1.7)</td><td>19.4 (+1.9)</td><td>26.4 (+1.0)</td><td>36.9 (+9.2)</td><td>33.6 (+7.9)</td><td>32.0 (+4.2)</td><td>29.1 (+3.4)</td><td>5.5</td><td>2.6</td></tr><tr><td>Gemma2</td><td>19.6 (+4.0)</td><td>26.7 (+2.3)</td><td>17.8 (+2.2)</td><td>24.7 (+0.4)</td><td>32.5 (+6.2)</td><td>31.7 (+9.0)</td><td>27.9 (+1.5)</td><td>26.7 (+4.1)</td><td>5.4</td><td>2.1</td></tr><tr><td>Mistral v0.3</td><td>18.6 (+1.8)</td><td>26.9 (+1.6)</td><td>18.3 (+1.6)</td><td>26.8 (+1.5)</td><td>26.6 (+4.2)</td><td>24.3 (+5.6)</td><td>24.6 (+2.2)</td><td>21.3 (+2.6)</td><td>3.3</td><td>2.0</td></tr><tr><td>LLaMA3</td><td>20.9 (+2.7)</td><td>28.0 (+1.7)</td><td>20.8 (+2.5)</td><td>27.2 (+0.9)</td><td>31.4 (+5.7)</td><td>25.7 (+3.8)</td><td>28.7 (+3.0)</td><td>24.2 (+2.3)</td><td>3.5</td><td>2.2</td></tr><tr><td>Gemma</td><td>18.9 (+1.0)</td><td>25.9 (+1.5)</td><td>18.8 (+0.8)</td><td>25.3 (+0.8)</td><td>18.3 (+6.0)</td><td>12.6 (+5.3)</td><td>16.0 (+3.7)</td><td>9.60 (+2.3)</td><td>3.5</td><td>1.9</td></tr><tr><td>SOLAR</td><td>16.5 (+0.8)</td><td>24.9 (+0.9)</td><td>16.7 (+1.1)</td><td>25.1 (+1.1)</td><td>26.5 (+4.1)</td><td>20.3 (+4.5)</td><td>27.7 (+5.3)</td><td>19.7 (+3.8)</td><td>2.6</td><td>2.8</td></tr><tr><td>LLaMA2</td><td>18.1 (+5.2)</td><td>26.6 (+5.0)</td><td>15.9 (+3.0)</td><td>23.1 (+1.5)</td><td>44.3 (+25.2)</td><td>37.2 (+26.3)</td><td>32.5 (+13.4)</td><td>23.3 (+12.4)</td><td>15.4</td><td>7.6</td></tr><tr><td>Temporal Increase</td><td>3.2</td><td>2.4</td><td>2.2</td><td>1.3</td><td>11.4</td><td>12.3</td><td>6.2</td><td>6.0</td><td></td><td></td></tr><tr><td>Domain Increase</td><td colspan="2">2.8</td><td colspan="2">1.8</td><td colspan="2">11.9</td><td colspan="2">6.1</td><td colspan="2"></td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 3 shows the results of applying the ChroKnowPrompt method to various LLMs, indicating the improvement in identifying chronological knowledge across different domains and time spans.


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td rowspan="3">Models</td><td colspan="4">legal</td><td colspan="2">Model Increase</td></tr><tr><td colspan="2">total span</td><td colspan="2">previous span</td><td rowspan="2">total span</td><td rowspan="2">previous span</td></tr><tr><td>dynamic</td><td>static</td><td>dynamic</td><td>static</td></tr><tr><td colspan="7">Proprietary Large Language Models</td></tr><tr><td>GPT4o-mini</td><td>3.2 (+1.9)</td><td>51.9 (+14.1)</td><td>2.6 (+1.3)</td><td>48.4 (+10.6)</td><td>8.0</td><td>6.0</td></tr><tr><td colspan="7">Open-Source Large Language Models</td></tr><tr><td>Phi3.5 Mini</td><td>0.6 (+0.3)</td><td>14.2 (+4.5)</td><td>0.6 (+0.3)</td><td>11.9 (+2.3)</td><td>2.4</td><td>1.3</td></tr><tr><td>LLaMA3.1</td><td>0.3 (+0.0)</td><td>13.8 (+1.3)</td><td>0.3 (+0.0)</td><td>12.5 (+0.0)</td><td>0.7</td><td>0.0</td></tr><tr><td>Gemma2</td><td>2.9 (+0.6)</td><td>44.6 (+2.6)</td><td>2.6 (+0.3)</td><td>43.9 (+1.9)</td><td>1.6</td><td>1.1</td></tr><tr><td>Mistral v0.3</td><td>1.3 (+0.6)</td><td>21.1 (+7.0)</td><td>1.0 (+0.3)</td><td>19.2 (+5.1)</td><td>3.8</td><td>2.7</td></tr><tr><td>LLaMA3</td><td>1.0 (+0.3)</td><td>18.9 (+0.6)</td><td>1.3 (+0.6)</td><td>18.9 (+0.6)</td><td>0.5</td><td>0.6</td></tr><tr><td>Gemma</td><td>0.3 (+0.0)</td><td>8.70 (+0.0)</td><td>0.3 (+0.0)</td><td>8.70 (+0.0)</td><td>0.0</td><td>0.0</td></tr><tr><td>SOLAR</td><td>0.6 (+0.0)</td><td>26.8 (+1.3)</td><td>0.6 (+0.0)</td><td>28.4 (+2.9)</td><td>0.7</td><td>1.5</td></tr><tr><td>LLaMA2</td><td>0.3 (+0.0)</td><td>21.8 (+12.8)</td><td>0.3 (+0.0)</td><td>17.3 (+8.3)</td><td>6.4</td><td>4.2</td></tr><tr><td>Temporal Increase</td><td>0.4</td><td>4.9</td><td>0.3</td><td>3.5</td><td></td><td></td></tr><tr><td>Domain Increase</td><td colspan="2">2.7</td><td colspan="2">1.9</td><td></td><td></td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 4 presents the performance of the ChroKnowPrompt method on a legal domain dataset, showing the level of 'Known' knowledge before and after applying the method, categorized by model type and whether the entire time span or only the previous time span was considered.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Template: Generation</td></tr><tr><td>Q. In 2020, Pedro Braillard Poccard, position held, [Object] A. member of the Argentine Chamber of Senators</td></tr><tr><td>Q. In 2020, Ana Santos Aramburo, position held, [Object] A. Spain National Library general manager</td></tr><tr><td>Q. In 2020, James E. McPherson, position held, [Object] A. United States Secretary of the Navy</td></tr><tr><td>Q. In 2020, Jesus �vila de Grado, position held, [Object] A. chief scientific officer</td></tr><tr><td>Q. In 2020, Donald Tusk, position held, [Object] : (generate from here ...)</td></tr><tr><td>Template: MCQA</td></tr><tr><td>In 2020, what office does Pedro Braillard Poccard hold? (a) member of the Argentine Chamber of Senators, (b) Minister of Foreign Affairs, (c) Governor of Corrientes Province, (d) Mayor of Buenos Aires</td></tr><tr><td>(a) member of the Argentine Chamber of Senators</td></tr><tr><td>In 2020, what office does Ana Santos Aramburo hold? (a) Minister of Culture and Sports of Spain, (b) Director of the Prado Museum, (c) Spain National Library general manager, (d) President of the Spanish Royal Academy</td></tr><tr><td>(c) Spain National Library general manager</td></tr><tr><td>In 2020, what office does James E. McPherson hold? (a) United States Secretary of Homeland Security, (b) United States Attorney General, (c) United States Secretary of the Navy, (d) United States Secretary of Defense</td></tr><tr><td>(c) United States Secretary of the Navy</td></tr><tr><td>In 2020, what office does Jesus Avila de Grado hold? (a) President of the National Research Council, (b) Minister of Health, (c) Director of the World Health Organization, (d) chief scientific officer</td></tr><tr><td>(d) chief scientific officer</td></tr><tr><td>In 2020, what office does Donald Tusk hold? (a) President of the European Commission, (b) President of Poland, (c) Chancellor of Germany, (d) chairperson</td></tr><tr><td>: (generate from here ...)</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents a classification framework that categorizes the correctness of language models’ responses based on their alignment with the answer set, considering both greedy decoding and temperature sampling.


{{< table-caption >}}
<br><table id='7' style='font-size:18px'><tr><td>1.</td><td>Print statement</td></tr><tr><td>2.</td><td>Display buffer</td></tr><tr><td></td><td></td></tr><tr><td>3.</td><td>Output stream</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents the results of the ChroKnowPrompt method, showing the improvement in knowledge recall for various LLMs across different domains and temporal spans.


</details>


### Full paper

{{< gallery >}}
<img src="paper_images/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}