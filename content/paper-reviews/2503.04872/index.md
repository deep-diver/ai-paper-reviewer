---
title: "TinyR1-32B-Preview: Boosting Accuracy with Branch-Merge Distillation"
summary: "TinyR1-32B-Preview: A novel branch-merge distillation approach that significantly enhances model accuracy and reduces computational costs for LLMs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Peking University",]
showSummary: true
date: 2025-03-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.04872 {{< /keyword >}}
{{< keyword icon="writer" >}} Lin Sun et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.04872" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.04872" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.04872/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) often struggle with size reduction without sacrificing accuracy. Existing methods like model distillation and transfer learning have limitations in achieving high accuracy and require careful data/domain selection, which is time-consuming and can lead to conflicting gradients during training, hindering overall learning progress. 



To tackle these issues, this paper introduces the Branch-Merge distillation approach, which enhances model compression through two phases: the Branch Phase, where knowledge from a large teacher model is selectively distilled into specialized student models; and the Merge Phase, where these student models are merged to enable cross-domain knowledge transfer and improve generalization. The resulting TinyR1-32B-Preview model outperforms existing models in various benchmarks and provides a **scalable solution for creating smaller, high-performing LLMs with reduced computational cost and time**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Branch-Merge distillation significantly improves model accuracy in specialized domains. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method substantially reduces computational costs and time compared to traditional distillation methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The resulting TinyR1-32B-Preview model achieves near-equal performance to its teacher model while having a smaller parameter size. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers due to its novel approach to **efficiently compressing LLMs** while maintaining high accuracy. The Branch-Merge distillation method offers a **scalable solution** that reduces computational costs and time, making it highly relevant to the current research trends in LLM optimization and deployment.

------
#### Visual Insights



![](https://arxiv.org/html/2503.04872/x1.png)

> 🔼 Figure 1(A) illustrates the two-phase Branch-Merge distillation method.  First, the 'Branch Phase' involves creating specialized student models by fine-tuning a base model on different domains (math, coding, science). Then, the 'Merge Phase' combines these specialized models into a single unified model using Arcee Fusion. Figure 1(B) shows a performance comparison of various LLMs, demonstrating that TinyR1-32B-Preview (the result of the Branch-Merge method) surpasses other distilled models of similar size in math, coding, and science benchmarks, while achieving performance comparable to DeepSeek R1.
> <details>
> <summary>read the caption</summary>
> Figure 1: (A) A simplified diagram of our Branch-Merge distillation approach. (1) In the Branch phase, each copy of the Initial Model (backbone) is trained on knowledge from a different domain; (2) In the Merge phase, models are merged based on Arcee Fusion rules. (B) Performance Comparison of different LLM models Mustar (2025). TinyR1-32B-Preview outperforms distilled models of the same size in science, math, and coding and achieves comparable results to Deepseek R1. LiveCodeBench here refers to the 24.08-25.02 subset of full LiveCodeBench.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.3">
<tr class="ltx_tr" id="S2.T1.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.3.4.1" rowspan="2"><span class="ltx_text" id="S2.T1.3.4.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.3.4.2">Math</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.3.4.3">Coding</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.3.4.4">Science</td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.5">
<td class="ltx_td ltx_align_center" id="S2.T1.3.5.1">(AIME 2024)</td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.5.2">(LiveCodeBench 24.08-25.02)</td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.5.3">(GPQA-Diamond)</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.1.1">DeepSeek-R1-Distill-Qwen-32B<sup class="ltx_sup" id="S2.T1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S2.T1.1.1.1.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.2">72.6 (9.6k Tokens)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.3">57.2 (10.1k Tokens)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.4">62.1 (5.3k Tokens)</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.2">
<td class="ltx_td ltx_align_left" id="S2.T1.2.2.1">DeepSeek-R1-Distill-Llama-70B<sup class="ltx_sup" id="S2.T1.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S2.T1.2.2.1.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.2">70.0</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.3">57.5</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.4">65.2</td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.3">
<td class="ltx_td ltx_align_left" id="S2.T1.3.3.1">DeepSeek-R1<sup class="ltx_sup" id="S2.T1.3.3.1.1"><span class="ltx_text ltx_font_italic" id="S2.T1.3.3.1.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.2">79.8 (9.6k Tokens)</td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.3">65.9 (10.4k Tokens)</td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.4">71.5 (5.3k Tokens)</td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S2.T1.3.6.1">TinyR1-32B-Preview (Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.3.6.2">78.1 (11.8k Tokens)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.3.6.3">61.6 (12.4k Tokens)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.3.6.4">65.0 (8.6k Tokens)</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of different large language models (LLMs) on three benchmark datasets: AIME 2024 (Mathematics), LiveCodeBench (Coding), and GPQA-Diamond (Science).  The models compared include DeepSeek-R1 and its distilled versions (DeepSeek-R1-Distill-Qwen-32B and DeepSeek-R1-Distill-Llama-70B), along with the authors' new model, TinyR1-32B-Preview.  Performance is measured by pass@1 (the percentage of correct answers for each dataset). The table also shows the average output token length (including chain-of-thought reasoning) produced by each model, giving an indication of computational cost. Scores from the DeepSeek-R1 paper are marked with a †.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison on benchmark datasets. All scores are reported as pass@1. Scores reported from DeepSeek-R1 paper DeepSeek-AI (2025) are noted with †. The number in parentheses represents the average output token length (including the chain of thought), obtained from our testing.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.04872/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04872/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04872/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04872/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04872/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04872/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04872/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04872/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04872/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}