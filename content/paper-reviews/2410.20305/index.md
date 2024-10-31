---
title: "Accelerating Direct Preference Optimization with Prefix Sharing"
summary: "Boosting LLM training speed by 1.3-1.6x, this research introduces 'prefix sharing' for preference optimization, processing chosen and rejected responses as one sequence to remove redundancy."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 MIT",]
showSummary: true
date: 2024-10-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2410.20305 {{< /keyword >}}
{{< keyword icon="writer" >}} Franklin Wang et el. {{< /keyword >}}
 
{{< keyword icon="hf-logo" >}} 2024-10-30 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2410.20305" target="_self" >}}
↗ arXiv
{{< /button >}}
&nbsp; 
{{< button href="https://huggingface.co/papers/2410.20305" target="_self" >}}
↗ Hugging Face
{{< /button >}}

### TL;DR


{{< lead >}}

Traditional preference tuning methods for LLMs involve redundant computations, especially when prompts are long.  This is inefficient and limits the scalability of training. Existing approaches process chosen and rejected responses separately, thus repeating calculations for shared prompt prefixes. 

This paper introduces 'prefix sharing', a technique that processes both chosen and rejected responses together, sharing the common prefix to mitigate redundancy.  A custom attention mask prevents cross-response contamination, and the method is combined with sequence packing for further efficiency. Experiments showed a 1.1-1.5x training speedup on various datasets without compromising convergence, demonstrating the practical benefits and scalability of this approach.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Prefix sharing significantly reduces training time (1.3-1.6x speedup) without affecting convergence. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method is applicable to various preference optimization algorithms, not just DPO. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Combining prefix sharing with sequence packing yields even greater efficiency gains, particularly for datasets with shorter sequences. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This paper is crucial for researchers working on fine-tuning large language models (LLMs) using preference data.**  It introduces a novel efficiency improvement that can significantly speed up training, making large-scale preference-based fine-tuning more accessible. The open-sourced code further accelerates adoption and future research.

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.20305/figures_2_0.png)

> 🔼 Figure 1 illustrates how prefix sharing combines chosen and rejected responses into a single sequence to avoid redundant computations of shared prompts by modifying the attention mask.
> <details>
> <summary>read the caption</summary>
> Figure 1: Method overview. Prefix sharing removes redundant computation of the shared prompt prefix by combining the responses into a single sequence and modifying the attention mask to prevent cross-response contamination.
> </details>





![](https://ai-paper-reviewer.com/2410.20305/charts_5_0.png)

> 🔼 The chart displays the relative speedup of using prefix sharing in the MLP layer of the Mistral-7B model compared to the normal paired format, for various prefix lengths and prefix-to-completion ratios, showing near-ideal linear speedup for longer prefix lengths.
> <details>
> <summary>read the caption</summary>
> Figure 3: Microbenchmarking results of the MLP layer for Mistral 7B. Relative speedups of prefix sharing over normal paired data are shown in comparison to the ideal speedup (assuming linear runtime). We see that the MLP layer scales very closely to the ideal speedup and that increasing the prefix length helps push the speedup closer to the ideal for a given prefix to completion ratio.
> </details>





{{< table-caption >}}
<br><table id='1' style='font-size:16px'><tr><td>Franklin Wang *</td><td>Sumanth Hegde*</td></tr><tr><td>MIT CSAIL</td><td>Anyscale</td></tr><tr><td>fxwang@mit · edu</td><td>sumanthrh@anyscale . edu</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 compares the training throughput (samples per second) of different attention mechanisms (FlashAttention-3, FlexAttention, and FlexAttention with prefix sharing) across several preference optimization datasets, showing speedups gained from using prefix sharing.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of training samples per second for different attention implementations. Relative speedups over FlashAttention-3 and FlexAttention, respectively, are shown for the FlexAttention with Prefix Sharing column. FlexAttention with prefix sharing consistently outperforms the baselines, with speedups ranging from 1.1-1.5x, with FlexAttention alone being slower than FA3. For the Prefix / Completion column, we report the median ratio. For high median overall lengths (> 500), the gains from prefix sharing are > 35%, with better gains for high prefix to completion ratios.
> </details>





### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.20305/charts_6_0.png)

> 🔼 Figure 4 shows the relative speedups of FlexAttention with prefix sharing compared to FlashAttention-3 and FlexAttention without prefix sharing for the self-attention operation of Mistral-7B,  considering various prefix and completion lengths.
> <details>
> <summary>read the caption</summary>
> Figure 4: Microbenchmarking results of the self-attention operation only for Mistral 7B. Relative speedups of FlexAttention with prefix sharing over FlashAttention-3 and FlexAttention are shown, along with the ideal speedup (assuming perfect quadratic scaling). We see that for high prefix lengths, FlexAttention with prefix sharing attains nearly ideal speedups over FlexAttention without prefix sharing, but overall it is still slower or similar in speed to FlashAttention-3.
> </details>


![](https://ai-paper-reviewer.com/2410.20305/charts_6_2.png)

> 🔼 Figure 5 shows the microbenchmarking results of the full self-attention layer for Mistral 7B, comparing the relative speedups of FlexAttention with prefix sharing against FlexAttention and FlashAttention-3, also showing the ideal speedup.
> <details>
> <summary>read the caption</summary>
> Figure 5: Microbenchmarking results of the full self-attention layer (QKV projection + self-attention) for Mistral 7B. Relative speedups of FlexAttention with prefix sharing over FlashAttention-3 and FlexAttention are shown, along with the ideal speedup (assuming linear runtime). We see that although FlexAttention is slower than FlashAttention-3 for lower ratios between the prefix and completion length, as the ratio grows, FlexAttention with prefix sharing become faster.
> </details>


![](https://ai-paper-reviewer.com/2410.20305/charts_6_3.png)

> 🔼 Figure 5 shows the microbenchmarking results of the full self-attention layer for Mistral 7B, comparing the relative speedups of FlexAttention with prefix sharing against FlashAttention-3 and FlexAttention without prefix sharing, also showing the ideal speedup assuming linear runtime.
> <details>
> <summary>read the caption</summary>
> Figure 5: Microbenchmarking results of the full self-attention layer (QKV projection + self-attention) for Mistral 7B. Relative speedups of FlexAttention with prefix sharing over FlashAttention-3 and FlexAttention are shown, along with the ideal speedup (assuming linear runtime). We see that although FlexAttention is slower than FlashAttention-3 for lower ratios between the prefix and completion length, as the ratio grows, FlexAttention with prefix sharing become faster.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='6' style='font-size:14px'><tr><td>Dataset</td><td>Median Overall Len</td><td>Prefix / Completion</td><td>FA3</td><td>Flex Attn</td><td>Flex + Prefix Sharing</td></tr><tr><td>Capybara</td><td>1160</td><td>1.59</td><td>8.38</td><td>7.75</td><td>11.90 (1.42x, 1.54x)</td></tr><tr><td>HH-RLHF</td><td>186</td><td>2.15</td><td>33.71</td><td>30.25</td><td>36.11 (1.07x, 1.19x)</td></tr><tr><td>MetaMath-DPO 20 35</td><td>872</td><td>3.91</td><td>13.86</td><td>13.02</td><td>19.13 (1.38x, 1.47x)</td></tr><tr><td>TLDR 28</td><td>416</td><td>11.14</td><td>31.43</td><td>29.53</td><td>35.36 (1.12x, 1.20x)</td></tr><tr><td>Tulu-Helpsteer / 31</td><td>775</td><td>6.34</td><td>14.83</td><td>13.93</td><td>21.75 (1.47x, 1.56x)</td></tr><tr><td>Ultrafeedback 4</td><td>409</td><td>0.42</td><td>18.40</td><td>17.31</td><td>20.46 (1.11x, 1.18x)</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the training throughput (samples per second) of three different attention mechanisms across six datasets, showing the speedup achieved by using prefix sharing.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of training samples per second for different attention implementations. Relative speedups over FlashAttention-3 and FlexAttention, respectively, are shown for the FlexAttention with Prefix Sharing column. FlexAttention with prefix sharing consistently outperforms the baselines, with speedups ranging from 1.1-1.5x, with FlexAttention alone being slower than FA3. For the Prefix / Completion column, we report the median ratio. For high median overall lengths (> 500), the gains from prefix sharing are > 35%, with better gains for high prefix to completion ratios.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Dataset Name</td><td>Median Overall Len</td><td>Prefix / Completion</td><td>FA3 + Packing</td><td>Flex Attn + Packing</td><td>Flex Attn + Prefix Sharing + Packing</td></tr><tr><td>Capybara 5</td><td>1160</td><td>1.59</td><td>17.89</td><td>17.63</td><td>23.89 (1.34x, 1.36x)</td></tr><tr><td>HH-RLHF 2</td><td>186</td><td>2.15</td><td>109.77</td><td>104.99</td><td>155.04 (1.41x, 1.48x)</td></tr><tr><td>MetaMath-DPO 20 35</td><td>872</td><td>3.91</td><td>24.21</td><td>23.83</td><td>38.07 (1.57x, 1.60x)</td></tr><tr><td>TLDR 28</td><td>416</td><td>11.14</td><td>44.11</td><td>43.22</td><td>59.76 (1.35x, 1.38x)</td></tr><tr><td>Tulu-Helpsteer 7 31</td><td>775</td><td>6.34</td><td>29.85</td><td>28.98</td><td>44.10 (1.48x, 1.52x)</td></tr><tr><td>Ultrafeedback 4</td><td>409</td><td>0.42</td><td>45.46</td><td>44.13</td><td>53.21 (1.17x, 1.21x)</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the training throughput (samples per second) for different attention mechanisms with and without sequence packing, showing that prefix sharing with packing consistently improves training efficiency for most datasets.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of training samples per second with sequence packing. For Flex Attn + Prefix Sharing + Packing, relative speedups over FA3 + Packing and Flex Attn + Packing are shown in parentheses, respectively. For the Prefix / Completion column, we report the median ratio. Our method (Prefix sharing + Packing) demonstrates at least a 30% increase in training throughput for most datasets. The impact of sequence packing is especially prominent for datasets like HH-RLHF and TLDR with shorter overall sequence lengths. Only Ultrafeedback, which has a extremely low prefix-to-completion ratio (0.3), shows a modest improvement of 21% over the FlexAttention baseline.
> </details>

{{< table-caption >}}
<table id='5' style='font-size:18px'><tr><td>Method</td><td>Batch Size</td><td>MT-Bench Score</td></tr><tr><td rowspan="4">Packing + Prefix Sharing</td><td>32</td><td>7.3</td></tr><tr><td>64</td><td>7.4</td></tr><tr><td>96</td><td>7.3</td></tr><tr><td>128</td><td>7.0</td></tr><tr><td rowspan="4">Normal Paired Format</td><td>32</td><td>7.0</td></tr><tr><td>64</td><td>7.1</td></tr><tr><td>96</td><td>7.2</td></tr><tr><td>128</td><td>7.1</td></tr><tr><td>Baseline (Zephyr-7B-SFT)</td><td>N/A</td><td>6.4</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 compares the MT-Bench scores achieved by models trained with packing and without packing for different batch sizes, showing that packing does not significantly harm downstream performance.
> <details>
> <summary>read the caption</summary>
> Table 3: MT-Bench [37] scores for different packing and non-packing DPO training across different batch sizes. Models were trained with Ultrafeedback using hyperparameters from Zephyr [29].
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.20305/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20305/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20305/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20305/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20305/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20305/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20305/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20305/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20305/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20305/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20305/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20305/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}