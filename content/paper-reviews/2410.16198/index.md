---
title: "Improve Vision Language Model Chain-of-thought Reasoning"
summary: "Researchers enhance vision-language model reasoning by distilling rationales from GPT-4, fine-tuning with a new dataset, and applying reinforcement learning, achieving significant performance gains."
categories: ["AI Generated"]
tags: ["🔖 24-10-21", "🤗 24-10-23"]
showSummary: true
date: 2024-10-21
draft: false
---

### TL;DR


{{< lead >}}

This paper tackles the challenge of improving reasoning in vision-language models (VLMs).  Current methods often rely on limited data, hindering the models' ability to handle complex reasoning tasks. The researchers propose a two-pronged approach: 1) They leverage the power of a large language model (GPT-4) to generate detailed reasoning steps (chain-of-thought) for existing VQA datasets. This enriched dataset is then used to fine-tune the VLMs. 2)  Reinforcement learning is employed to further calibrate the reasoning process.  The results demonstrate that this combined approach leads to substantial improvements in the VLMs' reasoning capabilities, showcasing enhanced interpretability and improved performance on various benchmark datasets. The researchers also release a new, comprehensive dataset to aid future research in this area.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.16198" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.16198" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper significantly advances research in vision-language models (VLMs) by introducing novel techniques to improve chain-of-thought (CoT) reasoning.  The proposed methods address the limitations of current training approaches, leading to more accurate and generalizable reasoning capabilities in VLMs. This is highly relevant to current trends in AI, particularly in building more explainable and trustworthy AI systems. The open-sourced dataset and improved reasoning techniques offer valuable resources for researchers to advance the state-of-the-art in VLM development.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel approach for enhancing vision-language model reasoning by combining data distillation, supervised fine-tuning, and reinforcement learning is presented. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The newly created SHAREGPT-40-REASONING dataset, containing 193k chain-of-thought examples, significantly improves VLM performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Reinforcement learning, using Direct Preference Optimization, further refines reasoning abilities, leading to better generalization and accuracy. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png)

> 🔼 The figure illustrates the difference between training a VLM on only short answers versus training it on both short answers and detailed reasoning chains (chain-of-thought).
> <details>
> <summary>read the caption</summary>
> Figure 1: The upper figure questions whether training exclusively on direct-answer datasets can effectively teach CoT prediction. In the lower figure, generating CoT for prediction provides the additional benefit of reasoning alignment, allowing the model to improve by leveraging self-generated data.
> </details>





![](charts/charts_3_0.png)

> 🔼 The chart displays the distribution of word counts for chain-of-thought (CoT) answers and direct answers.
> <details>
> <summary>read the caption</summary>
> Figure 3: The distribution of word counts for CoT and direct answer.
> </details>





{{< table-caption >}}
<br><table id='8' style='font-size:16px'><tr><td>Dataset</td><td>Dataset Size</td></tr><tr><td>A-OKVQA</td><td>16.9k</td></tr><tr><td>ChartQA</td><td>26.0k</td></tr><tr><td>SQA</td><td>6.1k</td></tr><tr><td>AI2D</td><td>11.9k</td></tr><tr><td>InfoVQA</td><td>22.4k</td></tr><tr><td>DocVQA</td><td>37.3k</td></tr><tr><td>TextVQA</td><td>29.7k</td></tr><tr><td>MathVision</td><td>11.0k</td></tr><tr><td>G-LLaVA</td><td>30.3k</td></tr><tr><td>Total</td><td>193k</td></tr></table>{{< /table-caption >}}

> 🔼 The table presents the results of supervised fine-tuning (SFT) experiments on various vision-language models with different data compositions, comparing the performance of direct prediction and chain-of-thought (CoT) reasoning.
> <details>
> <summary>read the caption</summary>
> Table 2: SFT experiments with data composition in fig. 5: ① format alignment only, ② direct responses only, ③ CoT responses only and ④ both direct and CoT responses. Inference is performed using both direct and CoT templates. The best CoT prediction result is highlighted in orange, while the best direct prediction result is marked in blue. The results demonstrate that combining CoT and direct responses during training leads to the best performance across both types of prompts. Refer to section 4 for detailed analysis.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_3_0.png)

> 🔼 The figure illustrates the three-stage pipeline for improving vision language model chain-of-thought reasoning: rationale distillation, supervised fine-tuning, and reinforcement learning.
> <details>
> <summary>read the caption</summary>
> Figure 2: Workflow diagram showing: a) the use of GPT-40 to generate rationale given short annotations; b) SFT of open-source VLM for CoT reasoning; c) Build preference dataset for reinforcement learning with DPO to enhance reasoning.
> </details>



![](figures/figures_4_0.png)

> 🔼 This figure illustrates the difference between training a vision language model (VLM) exclusively on direct answers versus incorporating chain-of-thought (CoT) reasoning, highlighting the benefits of CoT for improved reasoning alignment and self-generated data.
> <details>
> <summary>read the caption</summary>
> Figure 1: The upper figure questions whether training exclusively on direct-answer datasets can effectively teach CoT prediction. In the lower figure, generating CoT for prediction provides the additional benefit of reasoning alignment, allowing the model to improve by leveraging self-generated data.
> </details>



![](figures/figures_5_0.png)

> 🔼 This figure illustrates the data sources and composition used in supervised fine-tuning experiments for the chain-of-thought reasoning model.
> <details>
> <summary>read the caption</summary>
> Figure 5: The upper section displays the data sources used for the SFT experiments, while the lower section illustrates the data composition for model training.
> </details>



![](figures/figures_10_0.png)

> 🔼 The figure illustrates the difference between training a vision language model exclusively on direct answers versus generating chain-of-thought reasoning for prediction, highlighting the benefits of the latter approach for reasoning alignment and model improvement.
> <details>
> <summary>read the caption</summary>
> Figure 1: The upper figure questions whether training exclusively on direct-answer datasets can effectively teach CoT prediction. In the lower figure, generating CoT for prediction provides the additional benefit of reasoning alignment, allowing the model to improve by leveraging self-generated data.
> </details>



![](figures/figures_10_1.png)

> 🔼 The figure illustrates the difference between training a vision language model exclusively on short answers versus incorporating chain-of-thought reasoning and its impact on model performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: The upper figure questions whether training exclusively on direct-answer datasets can effectively teach CoT prediction. In the lower figure, generating CoT for prediction provides the additional benefit of reasoning alignment, allowing the model to improve by leveraging self-generated data.
> </details>



![](figures/figures_16_0.png)

> 🔼 The figure shows two examples from the A-OKVQA dataset where the provided annotations are incorrect, highlighting the need for filtering mismatched annotations during data distillation.
> <details>
> <summary>read the caption</summary>
> Figure A.3: An example from the A-OKVQA dataset highlights cases where the annotated answer does not match the GPT-40-generated answer. In these cases, the GPT-40 answers are correct, while the annotations contain labeling errors. In the left figure, the sign reads 'dentist' (correctly identified by GPT-40), and the answer should relate to 'teeth,' not ‘heart' as in the annotation. In the right figure, the fridge contains beer, but the annotation incorrectly labels it as 'water.' Consequently, we filter out instances where the GPT-40-generated answer does not match the annotated answers.
> </details>



![](figures/figures_16_1.png)

> 🔼 The figure shows two examples from the A-OKVQA dataset where the GPT-40 generated answers are correct but differ from the annotated answers due to errors in the annotations.
> <details>
> <summary>read the caption</summary>
> Figure A.3: An example from the A-OKVQA dataset highlights cases where the annotated answer does not match the GPT-40-generated answer. In these cases, the GPT-40 answers are correct, while the annotations contain labeling errors. In the left figure, the sign reads 'dentist' (correctly identified by GPT-40), and the answer should relate to 'teeth,' not ‘heart' as in the annotation. In the right figure, the fridge contains beer, but the annotation incorrectly labels it as 'water.' Consequently, we filter out instances where the GPT-40-generated answer does not match the annotated answers.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](charts/charts_9_0.png "🔼 Figure 6: The figures illustrate the performance of the DPO model as a verifier on ChartQA, A-OKVQA, and MathVista. Compared to the model trained with RLAIF-V, the model trained on our reasoning data pairs consistently shows improvement in both best-of-N selection and weighted voting.")

> 🔼 The chart displays the performance of three different re-ranking methods (weighted voting with DPO, majority voting, and best-of-N with DPO) on three datasets (ChartQA, A-OKVQA, and MathVista) as the number of candidate answers increases.
> <details>
> <summary>read the caption</summary>
> Figure 6: The figures illustrate the performance of the DPO model as a verifier on ChartQA, A-OKVQA, and MathVista. Compared to the model trained with RLAIF-V, the model trained on our reasoning data pairs consistently shows improvement in both best-of-N selection and weighted voting.
> </details>


![](charts/charts_9_1.png "🔼 Figure 6: The figures illustrate the performance of the DPO model as a verifier on ChartQA, A-OKVQA, and MathVista. Compared to the model trained with RLAIF-V, the model trained on our reasoning data pairs consistently shows improvement in both best-of-N selection and weighted voting.")

> 🔼 The chart displays the performance of the DPO model as a verifier across three datasets (ChartQA, A-OKVQA, and MathVista) using three re-ranking strategies (weighted voting with DPO, majority voting, and best-of-N with DPO), showing improved performance with the model trained on reasoning data pairs compared to the one trained with RLAIF-V.
> <details>
> <summary>read the caption</summary>
> Figure 6: The figures illustrate the performance of the DPO model as a verifier on ChartQA, A-OKVQA, and MathVista. Compared to the model trained with RLAIF-V, the model trained on our reasoning data pairs consistently shows improvement in both best-of-N selection and weighted voting.
> </details>


![](charts/charts_10_0.png "🔼 Figure C.1: Randomly sampled examples from LLAVA-NEXT-8B with temperature=1.0 for a test case in ChartQA reveal that the model struggles to effectively follow the CoT prompt. In Sample 1, the model refuses to answer the question. In Samples 2-4, the model generates an answer first, followed by an explanation. In the final sample, the model produces a description instead of reasoning through the question, without providing an answer.")

> 🔼 The chart displays examples of the LLAVA-Next-8B model's inability to follow chain-of-thought reasoning prompts, demonstrating inconsistent responses ranging from refusal to answer to providing answers before reasoning.
> <details>
> <summary>read the caption</summary>
> Figure C.1: Randomly sampled examples from LLAVA-NEXT-8B with temperature=1.0 for a test case in ChartQA reveal that the model struggles to effectively follow the CoT prompt. In Sample 1, the model refuses to answer the question. In Samples 2-4, the model generates an answer first, followed by an explanation. In the final sample, the model produces a description instead of reasoning through the question, without providing an answer.
> </details>


![](charts/charts_25_0.png "🔼 Figure 3: The distribution of word counts for CoT and direct answer.")

> 🔼 The chart displays the distribution of word counts in chain-of-thought (CoT) answers and direct answers.
> <details>
> <summary>read the caption</summary>
> Figure 3: The distribution of word counts for CoT and direct answer.
> </details>


![](charts/charts_27_0.png "🔼 Figure C.4: Randomly sampled examples from LLAVA-NEXT-FORMAT with a temperature setting of 1.0, evaluated on the same test case in ChartQA, show that after training on 450 format-aligned data, the model is able to follow the CoT prompt by verbalizing the thought process and providing a short answer.")

> 🔼 The chart displays a bar graph showing the long-term price index of various food commodities from 1850 to 2015, measured relative to real prices in 1900, with each bar representing a different food item.
> <details>
> <summary>read the caption</summary>
> Figure C.4: Randomly sampled examples from LLAVA-NEXT-FORMAT with a temperature setting of 1.0, evaluated on the same test case in ChartQA, show that after training on 450 format-aligned data, the model is able to follow the CoT prompt by verbalizing the thought process and providing a short answer.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='2' style='font-size:16px'><tr><td>Methods</td><td>Prompting</td><td>A-OK</td><td>ChartQA</td><td>DocVQA</td><td>InfoVQA</td><td>TextVQA</td><td>AI2D</td><td>SQA</td><td>MathVista</td><td>Avg</td></tr><tr><td>LLaVA-Next</td><td>direct</td><td>85.8</td><td>70.2</td><td>75.7</td><td>37.7</td><td>68.2</td><td>71.5</td><td>75.4</td><td>39.3</td><td>65.5</td></tr><tr><td>+ Format ①</td><td>CoT</td><td>84.3</td><td>71.2</td><td>67</td><td>34.9</td><td>62.2</td><td>67.4</td><td>74.4</td><td>40.3</td><td>62.7</td></tr><tr><td>LLaVA-Next</td><td>direct</td><td>86.4</td><td>73.7</td><td>78</td><td>45.4</td><td>71.9</td><td>78.8</td><td>91.5</td><td>43.2</td><td>71.1</td></tr><tr><td>+ Direct ②</td><td>CoT</td><td>85.7</td><td>71.8</td><td>68.8</td><td>38.6</td><td>63.6</td><td>72.5</td><td>85.4</td><td>38.6</td><td>65.6</td></tr><tr><td>LLaVA-Next</td><td>direct</td><td>84.9</td><td>71.8</td><td>81.2</td><td>45.7</td><td>72.1</td><td>75.3</td><td>85</td><td>41.9</td><td>69.7</td></tr><tr><td>+ Cot ③</td><td>CoT</td><td>85.1</td><td>82.2</td><td>81.2</td><td>49.7</td><td>69.9</td><td>77</td><td>91.3</td><td>49.2</td><td>73.2</td></tr><tr><td>LLaVA-Reasoner</td><td>direct</td><td>85.4</td><td>76.1</td><td>82.9</td><td>50.6</td><td>73.1</td><td>79.4</td><td>90.4</td><td>44.3</td><td>72.8</td></tr><tr><td>-SFT ④</td><td>CoT</td><td>86.2</td><td>83.0</td><td>81.8</td><td>51.6</td><td>71.1</td><td>78.5</td><td>92.7</td><td>50.6</td><td>74.4</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the results of supervised fine-tuning (SFT) experiments on vision language models, comparing different data compositions and prompting strategies for both direct and chain-of-thought prediction.


{{< table-caption >}}
<br><table id='11' style='font-size:16px'><tr><td>Data Config</td><td>Math Vista (direct/CoT)</td></tr><tr><td>format only ①</td><td>39.3/40.3</td></tr><tr><td>MV</td><td>41.0/43.4</td></tr><tr><td>MV+GL</td><td>43.2/44.9</td></tr><tr><td>MV+GL+MP50k</td><td>42.3/45.6</td></tr><tr><td>MV+GL+MP100k</td><td>43.0/44.9</td></tr><tr><td>MV+GL+MI50k</td><td>43.1/45.0</td></tr><tr><td>MV+GL+MI100k</td><td>43.7/46.3</td></tr><tr><td>MV+GL+AI2D</td><td>44.1/46.4</td></tr><tr><td>MV+GL+SQA</td><td>43.1/47.3</td></tr><tr><td>MV+GL+ChartQA</td><td>43.2/50.4</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the results of supervised fine-tuning experiments on four different data compositions, comparing the performance of direct and chain-of-thought prediction across various vision-language reasoning tasks.


{{< table-caption >}}
<table id='13' style='font-size:16px'><tr><td>Data Config</td><td>AI2D</td><td>SQA</td></tr><tr><td>format only ①</td><td>67.4</td><td>74.4</td></tr><tr><td>AI2D</td><td>76.3</td><td>76.6</td></tr><tr><td>SQA</td><td>66.9</td><td>90.4</td></tr><tr><td>AI2D +SQA</td><td>76.7</td><td>91.2</td></tr><tr><td>AI2D +SQA +ChartQA</td><td>77.4</td><td>91.4</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table shows the results of supervised fine-tuning experiments on vision language models using different combinations of training data (format-aligned, direct, and chain-of-thought), comparing their performance on direct prediction and chain-of-thought prediction tasks.


{{< table-caption >}}
<table id='8' style='font-size:18px'><tr><td>Dataset</td><td>GPT-4o direct/cot</td><td>Cambrian official</td><td>Our-SFT direct/cot</td></tr><tr><td>A-OK</td><td>89.6/90.1</td><td>83.1*</td><td>85.4/86.2</td></tr><tr><td>ChartQA</td><td>79.6/84.7</td><td>73.3</td><td>76.1/83.0</td></tr><tr><td>DocVQA</td><td>90.3/90.8</td><td>77.8</td><td>82.9/81.8</td></tr><tr><td>InfoVQA</td><td>72.4/72.8</td><td>45.7*</td><td>50.6/51.6</td></tr><tr><td>TextVQA</td><td>78.1/75.4</td><td>71.7</td><td>73.1/71.1</td></tr><tr><td>AI2D</td><td>80.7/81.5</td><td>73.0</td><td>79.4/78.5</td></tr><tr><td>SQA</td><td>85.9/87.2</td><td>80.4</td><td>90.4/92.7</td></tr><tr><td>Math Vista</td><td>54.8/63.4</td><td>49.0†</td><td>44.3/50.6</td></tr><tr><td>OCRBench</td><td>80.2/79.2</td><td>62.4</td><td>61.6/62.0</td></tr><tr><td>MMStar</td><td>55.1/64.7</td><td>50.3*</td><td>51.6/54.0</td></tr><tr><td>MMMU</td><td>57.8/63.6</td><td>42.7</td><td>41.6/40.0</td></tr><tr><td>Avg (of best)</td><td>77.9</td><td>64.5</td><td>68.8</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents the results of supervised fine-tuning (SFT) experiments on vision language models (VLMs) using different combinations of direct and chain-of-thought (CoT) reasoning data, showing that combining both data types leads to the best performance.


{{< table-caption >}}
<table id='2' style='font-size:16px'><tr><td>Methods</td><td>Prompting</td><td>A-OK</td><td>ChartQA</td><td>DocVQA</td><td>InfoVQA</td><td>TextVQA</td><td>AI2D</td><td>SQA</td><td>MathVista</td><td>Avg</td></tr><tr><td rowspan="2">LLaVA-Reasoner -SFT ④</td><td>direct</td><td>85.4</td><td>76.1</td><td>82.9</td><td>50.6</td><td>73.1</td><td>79.4</td><td>90.4</td><td>44.3</td><td>72.8</td></tr><tr><td>CoT</td><td>86.2</td><td>83.0</td><td>81.8</td><td>51.6</td><td>71.1</td><td>78.5</td><td>92.7</td><td>50.6</td><td>74.4</td></tr><tr><td rowspan="2">LLaVA-Reasoner -RLAIF ⑤</td><td>direct</td><td>85.6</td><td>76.1</td><td>83.1</td><td>50.7</td><td>73.3</td><td>79.6</td><td>91.1</td><td>44.1</td><td>73.0</td></tr><tr><td>CoT</td><td>86.7</td><td>83.0</td><td>82.4</td><td>50.8</td><td>71.4</td><td>79.1</td><td>92.9</td><td>50.8</td><td>74.6</td></tr><tr><td rowspan="2">LLaVA-Reasoner -DPO-ours ⑥</td><td>direct</td><td>85.4</td><td>76.4</td><td>83.1</td><td>51.2</td><td>73.3</td><td>79.4</td><td>90.8</td><td>44.2</td><td>73.0</td></tr><tr><td>CoT</td><td>87.0</td><td>84.2</td><td>82.7</td><td>52.7</td><td>71.5</td><td>79.5</td><td>92.6</td><td>52.1</td><td>75.3</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the results of supervised fine-tuning experiments on four different data compositions, comparing the performance of direct and chain-of-thought prediction on various vision-language reasoning tasks.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>ChartQA Filtered Out Example #1</td><td>ChartQA Filtered Out Example #2</td></tr><tr><td>Question: How much money did "1917" and "Sonic The Hedgehog" earn? Annotated Answer: 204.41 Dad Boys for Life 204.41 1917 157 9 sonic the Heagenog 146.06 Jumanjl: The Next Lavel 124.78 Star Wars: Episode IX - The Rise of 124.49 Skywalker Birds of Prey 04.15 Dolittle 7704 Little Worrien 70.5 The Invicible Man 64.91 the Call or the Wild 62.34 Omward 61.55 Knives Clut 4지 65 Fruzen II 47.ZZ Tenet 46.29 Spres IN Disquise 37.43 0 25 50 75 100 125 150 175 200 Bok office groos n million U.S. dellar⌀ GPT-4o Response: To determine the combined earnings of "1917" and "Sonic The Hedgehog,' " need to locate the earnings for each movie on the bar we chart. 1. The bar labeled "1917" shows earnings of 157.9 million U.S. dollars. 2. 2. The bar labeled "Sonic the Hedgehog" shows earnings of 146.06 million U.S. dollars. To find the total earnings, we add these two amounts together: 157.9 (for "1917") + 146.06 (for "Sonic The Hedgehog") = 303.96 ### Answer: 303.96</td><td>Question: Which country had the highest number of terrorist attacks in 2020? Annotated Answer: Spain Italy 24 France 15 Greece 0 Germany 6 Spain 9 Netherlands 0 Czechia 0 Denmark 0 Poland 0 Belgium 2 Bulgaria 0 Finland 0 225 Sweden 0 0 2.5 5 7.5 10 12.5 15 17.5 20 22.5 25 27.5 Numbor of torrorict attarke GPT-4o Response: The bar chart displays the number of terrorist attacks in various countries in 2020. Each country is represented by a horizontal bar, with the length of the bar corresponding to the number of attacks. - Italy has the longest bar, indicating it had the highest number of terrorist attacks, with a total of 24 attacks. - France follows with the second longest bar, showing 15 attacks. - Spain is next with 9 attacks. - Germany had 6 attacks.  Belgium had 2 attacks. - Greece, Netherlands, Czechia, Denmark, Poland, Bulgaria, Finland, and Sweden all had 0 attacks, as indicated by the absence of bars for these countries. From these visual clues, it is clear that the country with the highest number of terrorist attacks in 2020 is Italy. ### Answer: Italy</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the results of supervised fine-tuning experiments on various vision-language models, comparing different data compositions (format alignment only, direct responses only, CoT responses only, and both direct and CoT responses) and their impact on model performance across both direct prediction and chain-of-thought prompting.


{{< table-caption >}}
<table id='5' style='font-size:14px'><tr><td>#</td><td>Prompt</td><td>ChartQA (relaxed acc)</td></tr><tr><td>1</td><td>{Question}</td><td>2.7</td></tr><tr><td>2</td><td>{Question} Answer the question directly.</td><td>32.3</td></tr><tr><td>3</td><td>Answer the question. Do not write a full sentence, just provide a value. Question : {Question}</td><td>56.4</td></tr><tr><td>4</td><td>Answer the question with following instruction: 1 . Do not write a full sentence, just provide a value. 2. Don , t include any unit, i.e. 56 instead of 56 meters Question : {Question}</td><td>75.2</td></tr><tr><td>5</td><td>Answer the question with following instruction: 1 . Do not write a full sentence, just provide a value. 2. Don , t include any unit, i e . 56 instead of 56 meters 3. Don , t include '%' sign, i. e . 56 instead of 56%</td><td>80.3</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the results of supervised fine-tuning experiments on various vision-language models with different data compositions, showing that combining both direct and chain-of-thought data leads to improved performance on both prompt types.


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td></td><td>ChartQA System Prompt (relaxed acc)</td></tr><tr><td>When provided with an image and a question, generate a rationale first and then derive an answer. Your rationale should include detailed visual elements in order to derive the answer .</td><td></td></tr><tr><td># Prompt 1 Answer the question with following instruction: 1. Generate a rationale first and then derive an answer . 2. Don , t include any unit, i. e . 56 instead of 56 meters 3. Don , t include '%' sign, i.e. 56 instead of 56% Question: {question} # Output Format # <rationale> ### Answer : <your answer></td><td></td></tr><tr><td>2 Prompt #1, removing system prompt</td><td>84.7 84.1</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents the results of supervised fine-tuning (SFT) experiments with different combinations of data (format alignment only, direct responses only, CoT responses only, and both direct and CoT responses) and prompting methods (direct and CoT) on various vision-language reasoning tasks, showing that combining direct and CoT responses during training improves performance.


{{< table-caption >}}
<table id='4' style='font-size:14px'><tr><td>Dataset</td><td>Prompt</td></tr><tr><td>A-OKVQA AI2D SQA MMStar</td><td>Answer the question. Do not write a full sentence, just provide a letter choice. question {Question}</td></tr><tr><td>ChartQA</td><td>Answer the question with following instruction: 1 . Do not write a full sentence, just provide a value. 2. Don  t include any unit, i . e. 56 instead of 56 meters 3. Don 't include '%' sign, i.e. 56 instead of 56% Question: {Question}</td></tr><tr><td>DocVQA TextVQA InfoVQA</td><td>Answer the question. Do not write a full sentence, just provide a value. Question: {question}</td></tr><tr><td>OCRBench</td><td></td></tr><tr><td>Math Vista MMMU</td><td>Answer the question. Do not write a full sentence, just provide a value or letter choice. {question}</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents the results of supervised fine-tuning (SFT) experiments on four different data compositions, comparing the performance of direct and chain-of-thought (CoT) prediction across various reasoning tasks.


{{< table-caption >}}
<table id='2' style='font-size:16px'><tr><td>Dataset</td><td>CoT Prompt</td></tr><tr><td>system prompt</td><td>When provided with an image and a question, generate a rationale first and then derive an answer . Your rationale should include detailed visual elements in order to derive the answer .</td></tr><tr><td>A-OKVQA AI2D SQA MMStar</td><td>Answer the question with following instruction: 1. Generate a rationale first and then derive an answer . 2. For your final answer, provide a letter choice. Question: {question} # Output Format # <rationale> ### Answer : <your answer></td></tr><tr><td>ChartQA</td><td>Answer the question with following instruction: 1 . Generate a rationale first and then derive an answer . 2. Don , t include any unit, i. e. 56 instead of 56 meters 3. Don 't include '%' sign, i.e. 56 instead of 56% Question: {question} # Output Format # <rationale> ### Answer : <your answer></td></tr><tr><td>DocVQA InfoVQA</td><td># Objective # You are provided with an image, a question. Your job is to generate a rationale first and then derive an answer . ########### # Question # {question} ########### # Rationale Requirement # 1. Do not state an answer at the beginning. Explain descriptions of visual clue that help to derive the answer. 2. Conclude with ### Answer: <your answer> 3. Your final answer should be a single word or phrase. 4. If possible, copy the answer from document. Don't add or remove symbols, units, or titles. ########### # Output Style # <rationale> ### Answer : <your answer> ###########</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the results of supervised fine-tuning (SFT) experiments comparing different data compositions (format alignment only, direct responses only, CoT responses only, and both direct and CoT responses) on the performance of vision language models in both direct and chain-of-thought prediction.


{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td>Dataset</td><td>Prompt</td></tr><tr><td>TextVQA</td><td># Objective # You are provided with an image, a question. Your job is to generate a rationale first and then derive an answer · ########### # Question # {question} ########### # Rationale Requirement # 1. Do not state an answer at the beginning. Explain descriptions of visual clue that help to derive the answer. 2. Conclude with ### Answer: <your answer> 3. Your final answer should be a single word or phrase. 4. Output your answer in lower case. ########### # Output Style # <rationale> ### Answer : <your answer> ###########</td></tr><tr><td>OCRBench</td><td>Answer the question with following instruction: 1. Generate a rationale first and then derive an answer · 2. Your answer should be a single word or phrase. Question: {question} # Output Format # <rationale> ### Answer : <your answer></td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the results of supervised fine-tuning (SFT) experiments on various vision-language models with different data compositions (format alignment only, direct responses only, CoT responses only, and both direct and CoT responses) and prompting methods (direct and chain-of-thought), showing that combining both direct and CoT data leads to the best performance.


{{< table-caption >}}
<table id='3' style='font-size:16px'><tr><td>Dataset</td><td colspan="2">LLAVA-NEXT-8B</td><td colspan="2">LLAVA-NEXT-FORMAT</td></tr><tr><td></td><td>direct</td><td>CoT</td><td>direct</td><td>CoT</td></tr><tr><td>A-OK</td><td>85.9</td><td>44.5</td><td>85.8</td><td>84.3</td></tr><tr><td>ChartQA</td><td>68.6</td><td>52.8</td><td>70.2</td><td>71.2</td></tr><tr><td>DocVQA</td><td>78.4</td><td>57.1</td><td>75.7</td><td>67.0</td></tr><tr><td>InfoVQA</td><td>36.6</td><td>25.8</td><td>37.7</td><td>34.9</td></tr><tr><td>TextVQA</td><td>67.2</td><td>41.6</td><td>68.2</td><td>62.2</td></tr><tr><td>AI2D</td><td>73.0</td><td>70.0</td><td>71.5</td><td>67.4</td></tr><tr><td>SQA</td><td>77.4</td><td>75.8</td><td>75.4</td><td>74.4</td></tr><tr><td>Math Vista</td><td>37.3</td><td>25.3</td><td>39.3</td><td>40.3</td></tr><tr><td>OCRBench</td><td>57.7</td><td>59.7</td><td>59.1</td><td>56.6</td></tr><tr><td>MMStar</td><td>47.8</td><td>45.7</td><td>44.7</td><td>46.7</td></tr><tr><td>MMMU</td><td>42.8</td><td>37.6</td><td>41.8</td><td>37.7</td></tr><tr><td>Avg</td><td>61.2</td><td>48.7</td><td>60.9</td><td>58.4</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the baseline performance of LLAVA-NEXT-8B and LLAVA-NEXT-FORMAT models on various benchmark datasets using direct and chain-of-thought (CoT) inference methods.


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Methods</td><td>Prompting</td><td>A-OK</td><td>ChartQA</td><td>DocVQA</td><td>InfoVQA</td><td>TextVQA</td><td>AI2D</td><td>SQA</td><td>MathVista</td></tr><tr><td>LLaVA-Next</td><td>direct</td><td>86.4</td><td>73.7</td><td>78</td><td>45.4</td><td>71.9</td><td>78.8</td><td>91.5</td><td>43.2</td></tr><tr><td>+ Direct ②</td><td>CoT</td><td>85.7</td><td>71.8</td><td>68.8</td><td>38.6</td><td>63.6</td><td>72.5</td><td>85.4</td><td>38.6</td></tr><tr><td>LLaVA-Next</td><td>direct</td><td>85.9</td><td>74.6</td><td>79.2</td><td>47.4</td><td>72.1</td><td>79.5</td><td>92.2</td><td>44.4</td></tr><tr><td>-STaR</td><td>CoT</td><td>85.9</td><td>77.9</td><td>75.8</td><td>44.0</td><td>25.1</td><td>76.6</td><td>86.8</td><td>42.0</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents the results of experiments comparing the performance of a self-taught reasoner trained with minimal chain-of-thought (CoT) data against a baseline model on various benchmark datasets, highlighting the superior performance of the self-taught reasoner.


{{< table-caption >}}
<table id='3' style='font-size:16px'><tr><td>Data/Truncate Len</td><td>prompting</td><td>70</td><td>90</td><td>110</td><td>No Truncate</td><td>SFT baseline</td></tr><tr><td rowspan="2">ChartQA</td><td>direct</td><td>76.5</td><td>76.2</td><td>76.7</td><td>75.9</td><td>76.1</td></tr><tr><td>CoT</td><td>83.9</td><td>84.2</td><td>81.8</td><td>80.6</td><td>83.0</td></tr><tr><td rowspan="2">A-OKVQA</td><td>direct</td><td>85.2</td><td>85.2</td><td>85.3</td><td>85.1</td><td>85.4</td></tr><tr><td>CoT</td><td>86.7</td><td>86.9</td><td>86.3</td><td>85.7</td><td>86.2</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents the results of supervised fine-tuning (SFT) experiments using different combinations of data (format alignment only, direct responses only, CoT responses only, and both direct and CoT responses) and demonstrates that combining CoT and direct responses during training yields the best performance.


{{< table-caption >}}
<table id='6' style='font-size:16px'><tr><td>Methods</td><td>prompting</td><td>A-OK</td><td>ChartQA</td><td>Math Vista</td></tr><tr><td rowspan="2">SFT baseline</td><td>direct</td><td>85.4</td><td>76.1</td><td>44.3</td></tr><tr><td>CoT</td><td>86.2</td><td>83.0</td><td>50.6</td></tr><tr><td rowspan="2">LLAVA-REASONER-DPO</td><td>direct</td><td>85.4</td><td>76.4</td><td>44.2</td></tr><tr><td>CoT</td><td>87.0</td><td>84.2</td><td>52.1</td></tr><tr><td>A-OKVQA</td><td>direct</td><td>85.1</td><td>72.7</td><td>37.4</td></tr><tr><td>-RFT</td><td>CoT</td><td>87.7</td><td>0.0</td><td>32.5</td></tr><tr><td>A-OKVQA</td><td>direct</td><td>85.8</td><td>74.9</td><td>41.3</td></tr><tr><td>-RFT+Format</td><td>CoT</td><td>86.3</td><td>80.2</td><td>46.5</td></tr><tr><td>ChartQA</td><td>direct</td><td>85.4</td><td>75.0</td><td>42.6</td></tr><tr><td>-RFT</td><td>CoT</td><td>86.7</td><td>83.9</td><td>52.0</td></tr><tr><td>ChartQA</td><td>direct</td><td>85.9</td><td>75.8</td><td>44.4</td></tr><tr><td>-RFT+Format</td><td>CoT</td><td>85.5</td><td>83.4</td><td>50.6</td></tr><tr><td>Math</td><td>direct</td><td>85.3</td><td>76.0</td><td>32.4</td></tr><tr><td>-RFT</td><td>CoT</td><td>86.7</td><td>67.3</td><td>50.9</td></tr><tr><td>Math</td><td>direct</td><td>85.5</td><td>76.0</td><td>39.6</td></tr><tr><td>-RFT+Format</td><td>CoT</td><td>85.5</td><td>82.0</td><td>50.0</td></tr><tr><td>Combined</td><td>direct</td><td>85.3</td><td>75.4</td><td>37.8</td></tr><tr><td>-RFT</td><td>CoT</td><td>85.4</td><td>84.4</td><td>49.0</td></tr><tr><td>Combined</td><td>direct</td><td>85.0</td><td>75.5</td><td>43.0</td></tr><tr><td>-RFT+Format</td><td>CoT</td><td>86.6</td><td>83.1</td><td>47.1</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents the results of supervised fine-tuning (SFT) experiments on vision language models using different combinations of direct and chain-of-thought (CoT) reasoning data, showing that combining both data types leads to the best performance.


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
<img src="paper_images/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}