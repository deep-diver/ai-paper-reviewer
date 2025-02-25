---
title: "LongPO: Long Context Self-Evolution of Large Language Models through Short-to-Long Preference Optimization"
summary: "LongPO: Self-evolve LLMs to excel in long contexts via short-to-long preference optimization, boosting performance without sacrificing short-context skills."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 National University of Singapore",]
showSummary: true
date: 2025-02-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.13922 {{< /keyword >}}
{{< keyword icon="writer" >}} Guanzheng Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.13922" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.13922" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.13922/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) show impressive capabilities, but short-context models often struggle with longer contexts due to alignment issues. Human annotation is impractical for extended contexts, and balancing short- and long-context performance is difficult. Current methods fall short because they either lack sufficient long-context data or fail to preserve short-context abilities.



To solve these issues, **LongPO** enables LLMs to self-evolve by transferring short-context skills to longer contexts. It uses self-generated preference data from short-to-long contexts and a short-to-long KL constraint to maintain short-context performance. Applied to Mistral-7B-Instruct-v0.2, LongPO retains short-context performance and outperforms other methods. The models achieve results comparable to superior LLMs like GPT-4-128K on long-context benchmarks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LongPO enables short-context LLMs to self-evolve and excel on long-context tasks by internally transfer short-context capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LongPO mitigates performance decline with a short-to-long KL constraint. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LongPO-trained models rival superior LLMs in long-context benchmarks, even outperforming those with extensive long-context annotation and larger scales. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**LongPO** offers an efficient way to enhance LLMs for long contexts by transferring short-context capabilities, reducing reliance on expensive manual annotation. This approach opens new research directions for adapting LLMs to diverse context lengths and improving alignment strategies.

------
#### Visual Insights



![](https://arxiv.org/html/2502.13922/x1.png)

> 🔼 This figure compares the performance of several large language models (LLMs) on both long-context and short-context tasks.  The long-context performance is measured using the InfiniteBench benchmark, while the short-context performance is measured using the MMLU benchmark.  The models compared include GPT-4-128K (a high-performing model), and several smaller LLMs. The figure visually demonstrates the performance gap between short and long-context tasks, showing that even high-performing, short-context models can underperform on long-context benchmarks.  It highlights a key challenge addressed in the paper:  the difficulty of aligning LLMs to perform well in both short and long-context scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 1: The comparison of long-context (InfiniteBench) and short-context (MMLU) performance among GPT-4-128K and smaller LLMs.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T1.33.31">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T1.3.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T1.3.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">Train/Claimed</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T1.3.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S5.T1.3.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<math alttext="\infty" class="ltx_Math" display="inline" id="S5.T1.3.1.1.1.m1.1"><semantics id="S5.T1.3.1.1.1.m1.1a"><mi id="S5.T1.3.1.1.1.m1.1.1" mathvariant="normal" xref="S5.T1.3.1.1.1.m1.1.1.cmml">∞</mi><annotation-xml encoding="MathML-Content" id="S5.T1.3.1.1.1.m1.1b"><infinity id="S5.T1.3.1.1.1.m1.1.1.cmml" xref="S5.T1.3.1.1.1.m1.1.1"></infinity></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.1.1.1.m1.1c">\infty</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.1.1.1.m1.1d">∞</annotation></semantics></math>Bench</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T1.3.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S5.T1.3.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">RULER</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T1.3.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.3.1.1.8" style="padding-top:1pt;padding-bottom:1pt;">LongBench-</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.33.31.32.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.32.1.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.32.1.2" style="padding-top:1pt;padding-bottom:1pt;">Length</th>
<td class="ltx_td" id="S5.T1.33.31.32.1.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.33.31.32.1.4" style="padding-top:1pt;padding-bottom:1pt;">En.Sum</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.33.31.32.1.5" style="padding-top:1pt;padding-bottom:1pt;">En.QA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.33.31.32.1.6" style="padding-top:1pt;padding-bottom:1pt;">En.MC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.33.31.32.1.7" style="padding-top:1pt;padding-bottom:1pt;">AVG.</td>
<td class="ltx_td" id="S5.T1.33.31.32.1.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.33.31.32.1.9" style="padding-top:1pt;padding-bottom:1pt;">NIAH</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.33.31.32.1.10" style="padding-top:1pt;padding-bottom:1pt;">VT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.33.31.32.1.11" style="padding-top:1pt;padding-bottom:1pt;">QA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.33.31.32.1.12" style="padding-top:1pt;padding-bottom:1pt;">AVG.</td>
<td class="ltx_td" id="S5.T1.33.31.32.1.13" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.32.1.14" style="padding-top:1pt;padding-bottom:1pt;">Chat (EN)</td>
</tr>
<tr class="ltx_tr" id="S5.T1.33.31.33.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.33.2.1" style="padding-top:1pt;padding-bottom:1pt;">GPT-4-128K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.33.2.2" style="padding-top:1pt;padding-bottom:1pt;">128K</th>
<td class="ltx_td" id="S5.T1.33.31.33.2.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.33.2.4" style="padding-top:1pt;padding-bottom:1pt;">14.73</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.33.2.5" style="padding-top:1pt;padding-bottom:1pt;">22.44</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.33.2.6" style="padding-top:1pt;padding-bottom:1pt;">67.25</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.33.2.7" style="padding-top:1pt;padding-bottom:1pt;">34.81</td>
<td class="ltx_td" id="S5.T1.33.31.33.2.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.33.2.9" style="padding-top:1pt;padding-bottom:1pt;">95.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.33.2.10" style="padding-top:1pt;padding-bottom:1pt;">99.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.33.2.11" style="padding-top:1pt;padding-bottom:1pt;">70.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.33.2.12" style="padding-top:1pt;padding-bottom:1pt;">88.53</td>
<td class="ltx_td" id="S5.T1.33.31.33.2.13" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.33.2.14" style="padding-top:1pt;padding-bottom:1pt;">8.40</td>
</tr>
<tr class="ltx_tr" id="S5.T1.8.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.8.6.6.6" style="padding-top:1pt;padding-bottom:1pt;">Qwen2-72B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.8.6.6.7" style="padding-top:1pt;padding-bottom:1pt;">128K</th>
<td class="ltx_td" id="S5.T1.8.6.6.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.2.2.1" style="padding-top:1pt;padding-bottom:1pt;">24.32<sup class="ltx_sup" id="S5.T1.4.2.2.1.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.3.3.2" style="padding-top:1pt;padding-bottom:1pt;">7.03<sup class="ltx_sup" id="S5.T1.5.3.3.2.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.4.3" style="padding-top:1pt;padding-bottom:1pt;">72.05<sup class="ltx_sup" id="S5.T1.6.4.4.3.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.5.5.4" style="padding-top:1pt;padding-bottom:1pt;">34.47<sup class="ltx_sup" id="S5.T1.7.5.5.4.1">♭</sup>
</td>
<td class="ltx_td" id="S5.T1.8.6.6.9" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.6.10" style="padding-top:1pt;padding-bottom:1pt;">88.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.6.11" style="padding-top:1pt;padding-bottom:1pt;">95.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.6.12" style="padding-top:1pt;padding-bottom:1pt;">66.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.6.13" style="padding-top:1pt;padding-bottom:1pt;">83.67</td>
<td class="ltx_td" id="S5.T1.8.6.6.14" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.6.5" style="padding-top:1pt;padding-bottom:1pt;">7.72<sup class="ltx_sup" id="S5.T1.8.6.6.5.1">♭</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.13.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.13.11.11.6" style="padding-top:1pt;padding-bottom:1pt;">LLaMA 3.1-70B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.13.11.11.7" style="padding-top:1pt;padding-bottom:1pt;">128K</th>
<td class="ltx_td" id="S5.T1.13.11.11.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.7.7.1" style="padding-top:1pt;padding-bottom:1pt;">33.55<sup class="ltx_sup" id="S5.T1.9.7.7.1.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.8.8.2" style="padding-top:1pt;padding-bottom:1pt;">36.08<sup class="ltx_sup" id="S5.T1.10.8.8.2.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.9.9.3" style="padding-top:1pt;padding-bottom:1pt;">69.00<sup class="ltx_sup" id="S5.T1.11.9.9.3.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.10.10.4" style="padding-top:1pt;padding-bottom:1pt;">46.21<sup class="ltx_sup" id="S5.T1.12.10.10.4.1">♭</sup>
</td>
<td class="ltx_td" id="S5.T1.13.11.11.9" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.11.11.10" style="padding-top:1pt;padding-bottom:1pt;">96.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.11.11.11" style="padding-top:1pt;padding-bottom:1pt;">93.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.11.11.12" style="padding-top:1pt;padding-bottom:1pt;">67.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.11.11.13" style="padding-top:1pt;padding-bottom:1pt;">85.7</td>
<td class="ltx_td" id="S5.T1.13.11.11.14" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.11.11.5" style="padding-top:1pt;padding-bottom:1pt;">6.67<sup class="ltx_sup" id="S5.T1.13.11.11.5.1">♭</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.18.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.18.16.16.6" style="padding-top:1pt;padding-bottom:1pt;">LLaMA 3.1-8B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.18.16.16.7" style="padding-top:1pt;padding-bottom:1pt;">128K</th>
<td class="ltx_td" id="S5.T1.18.16.16.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.14.12.12.1" style="padding-top:1pt;padding-bottom:1pt;">28.06<sup class="ltx_sup" id="S5.T1.14.12.12.1.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.13.13.2" style="padding-top:1pt;padding-bottom:1pt;">30.47<sup class="ltx_sup" id="S5.T1.15.13.13.2.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.16.14.14.3" style="padding-top:1pt;padding-bottom:1pt;">58.08<sup class="ltx_sup" id="S5.T1.16.14.14.3.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.17.15.15.4" style="padding-top:1pt;padding-bottom:1pt;">38.87<sup class="ltx_sup" id="S5.T1.17.15.15.4.1">♭</sup>
</td>
<td class="ltx_td" id="S5.T1.18.16.16.9" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.16.10" style="padding-top:1pt;padding-bottom:1pt;">97.93</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.16.11" style="padding-top:1pt;padding-bottom:1pt;">91.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.16.12" style="padding-top:1pt;padding-bottom:1pt;">64.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.16.13" style="padding-top:1pt;padding-bottom:1pt;">84.68</td>
<td class="ltx_td" id="S5.T1.18.16.16.14" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.16.5" style="padding-top:1pt;padding-bottom:1pt;">6.22<sup class="ltx_sup" id="S5.T1.18.16.16.5.1">♭</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.27.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.27.25.25.10" style="padding-top:1pt;padding-bottom:1pt;">GLM-4-9B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.27.25.25.11" style="padding-top:1pt;padding-bottom:1pt;">128K</th>
<td class="ltx_td" id="S5.T1.27.25.25.12" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.17.17.1" style="padding-top:1pt;padding-bottom:1pt;">14.84<sup class="ltx_sup" id="S5.T1.19.17.17.1.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.20.18.18.2" style="padding-top:1pt;padding-bottom:1pt;">9.51<sup class="ltx_sup" id="S5.T1.20.18.18.2.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.21.19.19.3" style="padding-top:1pt;padding-bottom:1pt;">67.25<sup class="ltx_sup" id="S5.T1.21.19.19.3.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.22.20.20.4" style="padding-top:1pt;padding-bottom:1pt;">30.53<sup class="ltx_sup" id="S5.T1.22.20.20.4.1">♭</sup>
</td>
<td class="ltx_td" id="S5.T1.27.25.25.13" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.23.21.21.5" style="padding-top:1pt;padding-bottom:1pt;">96.51<sup class="ltx_sup" id="S5.T1.23.21.21.5.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.24.22.22.6" style="padding-top:1pt;padding-bottom:1pt;">97.3<sup class="ltx_sup" id="S5.T1.24.22.22.6.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.25.23.23.7" style="padding-top:1pt;padding-bottom:1pt;">64.8<sup class="ltx_sup" id="S5.T1.25.23.23.7.1">♭</sup>0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.26.24.24.8" style="padding-top:1pt;padding-bottom:1pt;">86.20<sup class="ltx_sup" id="S5.T1.26.24.24.8.1">♭</sup>
</td>
<td class="ltx_td" id="S5.T1.27.25.25.14" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.27.25.25.9" style="padding-top:1pt;padding-bottom:1pt;">5.67<sup class="ltx_sup" id="S5.T1.27.25.25.9.1">♭</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.28.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.28.26.26.2" style="padding-top:1pt;padding-bottom:1pt;">GLM-4-9B-1M</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.28.26.26.3" style="padding-top:1pt;padding-bottom:1pt;">1M</th>
<td class="ltx_td" id="S5.T1.28.26.26.4" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.28.26.26.5" style="padding-top:1pt;padding-bottom:1pt;">28.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.28.26.26.6" style="padding-top:1pt;padding-bottom:1pt;">9.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.28.26.26.7" style="padding-top:1pt;padding-bottom:1pt;">68.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.28.26.26.8" style="padding-top:1pt;padding-bottom:1pt;">35.53</td>
<td class="ltx_td" id="S5.T1.28.26.26.9" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.28.26.26.10" style="padding-top:1pt;padding-bottom:1pt;">98.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.28.26.26.11" style="padding-top:1pt;padding-bottom:1pt;">99.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.28.26.26.12" style="padding-top:1pt;padding-bottom:1pt;">69.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.28.26.26.13" style="padding-top:1pt;padding-bottom:1pt;">89.0</td>
<td class="ltx_td" id="S5.T1.28.26.26.14" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.28.26.26.1" style="padding-top:1pt;padding-bottom:1pt;">5.03<sup class="ltx_sup" id="S5.T1.28.26.26.1.1">♭</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.33.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.31.6" style="padding-top:1pt;padding-bottom:1pt;">LWM-7B-1M</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.31.7" style="padding-top:1pt;padding-bottom:1pt;">1M</th>
<td class="ltx_td" id="S5.T1.33.31.31.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.29.27.27.1" style="padding-top:1pt;padding-bottom:1pt;">4.33<sup class="ltx_sup" id="S5.T1.29.27.27.1.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.30.28.28.2" style="padding-top:1pt;padding-bottom:1pt;">0.0<sup class="ltx_sup" id="S5.T1.30.28.28.2.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.31.29.29.3" style="padding-top:1pt;padding-bottom:1pt;">3.06<sup class="ltx_sup" id="S5.T1.31.29.29.3.1">♭</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.32.30.30.4" style="padding-top:1pt;padding-bottom:1pt;">2.46<sup class="ltx_sup" id="S5.T1.32.30.30.4.1">♭</sup>
</td>
<td class="ltx_td" id="S5.T1.33.31.31.9" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.31.10" style="padding-top:1pt;padding-bottom:1pt;">87.20</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.31.11" style="padding-top:1pt;padding-bottom:1pt;">57.5</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.31.12" style="padding-top:1pt;padding-bottom:1pt;">56.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.31.13" style="padding-top:1pt;padding-bottom:1pt;">67.03</td>
<td class="ltx_td" id="S5.T1.33.31.31.14" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.31.5" style="padding-top:1pt;padding-bottom:1pt;">1.25<sup class="ltx_sup" id="S5.T1.33.31.31.5.1">♭</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.33.31.34.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.34.3.1" style="padding-top:1pt;padding-bottom:1pt;">YaRN-Mistral-7B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.34.3.2" style="padding-top:1pt;padding-bottom:1pt;">128K</th>
<td class="ltx_td" id="S5.T1.33.31.34.3.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.34.3.4" style="padding-top:1pt;padding-bottom:1pt;">9.09</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.34.3.5" style="padding-top:1pt;padding-bottom:1pt;">9.55</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.34.3.6" style="padding-top:1pt;padding-bottom:1pt;">27.95</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.34.3.7" style="padding-top:1pt;padding-bottom:1pt;">15.53</td>
<td class="ltx_td" id="S5.T1.33.31.34.3.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.34.3.9" style="padding-top:1pt;padding-bottom:1pt;">63.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.34.3.10" style="padding-top:1pt;padding-bottom:1pt;">36.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.34.3.11" style="padding-top:1pt;padding-bottom:1pt;">25.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.34.3.12" style="padding-top:1pt;padding-bottom:1pt;">41.8</td>
<td class="ltx_td" id="S5.T1.33.31.34.3.13" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.34.3.14" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.33.31.35.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.35.4.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_ERROR undefined" id="S5.T1.33.31.35.4.1.1">\hdashline</span>Mistral-7B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.35.4.2" style="padding-top:1pt;padding-bottom:1pt;">32K</th>
<td class="ltx_td" id="S5.T1.33.31.35.4.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.35.4.4" style="padding-top:1pt;padding-bottom:1pt;">22.13</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.35.4.5" style="padding-top:1pt;padding-bottom:1pt;">4.93</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.35.4.6" style="padding-top:1pt;padding-bottom:1pt;">14.41</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.35.4.7" style="padding-top:1pt;padding-bottom:1pt;">13.82</td>
<td class="ltx_td" id="S5.T1.33.31.35.4.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.35.4.9" style="padding-top:1pt;padding-bottom:1pt;">72.60</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.35.4.10" style="padding-top:1pt;padding-bottom:1pt;">74.40</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.35.4.11" style="padding-top:1pt;padding-bottom:1pt;">52.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.35.4.12" style="padding-top:1pt;padding-bottom:1pt;">66.4</td>
<td class="ltx_td" id="S5.T1.33.31.35.4.13" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.35.4.14" style="padding-top:1pt;padding-bottom:1pt;">4.10</td>
</tr>
<tr class="ltx_tr" id="S5.T1.33.31.36.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.36.5.1" style="padding-top:1pt;padding-bottom:1pt;">- SFT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.36.5.2" style="padding-top:1pt;padding-bottom:1pt;">128K</th>
<td class="ltx_td" id="S5.T1.33.31.36.5.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.36.5.4" style="padding-top:1pt;padding-bottom:1pt;">23.44</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.36.5.5" style="padding-top:1pt;padding-bottom:1pt;">13.45</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.36.5.6" style="padding-top:1pt;padding-bottom:1pt;">53.21</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.36.5.7" style="padding-top:1pt;padding-bottom:1pt;">30.03</td>
<td class="ltx_td" id="S5.T1.33.31.36.5.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.36.5.9" style="padding-top:1pt;padding-bottom:1pt;">88.73</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.36.5.10" style="padding-top:1pt;padding-bottom:1pt;">79.64</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.36.5.11" style="padding-top:1pt;padding-bottom:1pt;">51.08</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.36.5.12" style="padding-top:1pt;padding-bottom:1pt;">73.15</td>
<td class="ltx_td" id="S5.T1.33.31.36.5.13" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.36.5.14" style="padding-top:1pt;padding-bottom:1pt;">4.25</td>
</tr>
<tr class="ltx_tr" id="S5.T1.33.31.37.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.37.6.1" style="padding-top:1pt;padding-bottom:1pt;">- DPO</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.37.6.2" style="padding-top:1pt;padding-bottom:1pt;">128K</th>
<td class="ltx_td" id="S5.T1.33.31.37.6.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.37.6.4" style="padding-top:1pt;padding-bottom:1pt;">15.21</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.37.6.5" style="padding-top:1pt;padding-bottom:1pt;">10.34</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.37.6.6" style="padding-top:1pt;padding-bottom:1pt;">48.14</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.37.6.7" style="padding-top:1pt;padding-bottom:1pt;">25.56</td>
<td class="ltx_td" id="S5.T1.33.31.37.6.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.37.6.9" style="padding-top:1pt;padding-bottom:1pt;">74.25</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.37.6.10" style="padding-top:1pt;padding-bottom:1pt;">72.36</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.37.6.11" style="padding-top:1pt;padding-bottom:1pt;">50.24</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.37.6.12" style="padding-top:1pt;padding-bottom:1pt;">65.62</td>
<td class="ltx_td" id="S5.T1.33.31.37.6.13" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.37.6.14" style="padding-top:1pt;padding-bottom:1pt;">4.08</td>
</tr>
<tr class="ltx_tr" id="S5.T1.33.31.38.7" style="background-color:#ECF4FF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.38.7.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.38.7.1.1" style="background-color:#ECF4FF;">- LongPO (iter1)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.38.7.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.38.7.2.1" style="background-color:#ECF4FF;">128K</span></th>
<td class="ltx_td" id="S5.T1.33.31.38.7.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.38.7.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.38.7.4.1" style="background-color:#ECF4FF;">27.05</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.38.7.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.38.7.5.1" style="background-color:#ECF4FF;">23.51</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.38.7.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.38.7.6.1" style="background-color:#ECF4FF;">67.25</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.38.7.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.38.7.7.1" style="background-color:#ECF4FF;">39.27</span></td>
<td class="ltx_td" id="S5.T1.33.31.38.7.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.38.7.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.38.7.9.1" style="background-color:#ECF4FF;">96.88</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.38.7.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.38.7.10.1" style="background-color:#ECF4FF;">96.49</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.38.7.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.38.7.11.1" style="background-color:#ECF4FF;">64.81</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.38.7.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.38.7.12.1" style="background-color:#ECF4FF;">86.06</span></td>
<td class="ltx_td" id="S5.T1.33.31.38.7.13" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.38.7.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.38.7.14.1" style="background-color:#ECF4FF;">5.42</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.33.31.39.8" style="background-color:#ECF4FF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.39.8.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.39.8.1.1" style="background-color:#ECF4FF;">- LongPO (iter2)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.39.8.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.39.8.2.1" style="background-color:#ECF4FF;">256K</span></th>
<td class="ltx_td" id="S5.T1.33.31.39.8.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.39.8.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.39.8.4.1" style="background-color:#ECF4FF;">28.16</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.39.8.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.39.8.5.1" style="background-color:#ECF4FF;">24.43</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.39.8.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.39.8.6.1" style="background-color:#ECF4FF;">66.35</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.39.8.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.39.8.7.1" style="background-color:#ECF4FF;">39.65</span></td>
<td class="ltx_td" id="S5.T1.33.31.39.8.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.39.8.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.39.8.9.1" style="background-color:#ECF4FF;">96.80</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.39.8.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.39.8.10.1" style="background-color:#ECF4FF;">97.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.39.8.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.39.8.11.1" style="background-color:#ECF4FF;">64.87</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.39.8.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.39.8.12.1" style="background-color:#ECF4FF;">86.22</span></td>
<td class="ltx_td" id="S5.T1.33.31.39.8.13" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.39.8.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.39.8.14.1" style="background-color:#ECF4FF;">5.48</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.33.31.40.9" style="background-color:#ECF4FF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.40.9.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.40.9.1.1" style="background-color:#ECF4FF;">- LongPO (iter3)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.40.9.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.40.9.2.1" style="background-color:#ECF4FF;">512K</span></th>
<td class="ltx_td" id="S5.T1.33.31.40.9.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.40.9.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.40.9.4.1" style="background-color:#ECF4FF;">29.10</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.40.9.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.40.9.5.1" style="background-color:#ECF4FF;">27.85</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.40.9.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.40.9.6.1" style="background-color:#ECF4FF;">66.67</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.40.9.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.40.9.7.1" style="background-color:#ECF4FF;">41.21</span></td>
<td class="ltx_td" id="S5.T1.33.31.40.9.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.40.9.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.40.9.9.1" style="background-color:#ECF4FF;">97.28</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.40.9.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.40.9.10.1" style="background-color:#ECF4FF;">97.48</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.40.9.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.40.9.11.1" style="background-color:#ECF4FF;">64.92</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.40.9.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.40.9.12.1" style="background-color:#ECF4FF;">86.56</span></td>
<td class="ltx_td" id="S5.T1.33.31.40.9.13" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.40.9.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.40.9.14.1" style="background-color:#ECF4FF;">5.80</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.33.31.41.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.41.10.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_ERROR undefined" id="S5.T1.33.31.41.10.1.1">\hdashline</span>Qwen2.5-7B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.33.31.41.10.2" style="padding-top:1pt;padding-bottom:1pt;">128K</th>
<td class="ltx_td" id="S5.T1.33.31.41.10.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.41.10.4" style="padding-top:1pt;padding-bottom:1pt;">22.89</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.41.10.5" style="padding-top:1pt;padding-bottom:1pt;">6.08</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.41.10.6" style="padding-top:1pt;padding-bottom:1pt;">52.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.41.10.7" style="padding-top:1pt;padding-bottom:1pt;">27.12</td>
<td class="ltx_td" id="S5.T1.33.31.41.10.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.41.10.9" style="padding-top:1pt;padding-bottom:1pt;">82.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.41.10.10" style="padding-top:1pt;padding-bottom:1pt;">80.09</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.41.10.11" style="padding-top:1pt;padding-bottom:1pt;">54.30</td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.41.10.12" style="padding-top:1pt;padding-bottom:1pt;">72.16</td>
<td class="ltx_td" id="S5.T1.33.31.41.10.13" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.33.31.41.10.14" style="padding-top:1pt;padding-bottom:1pt;">5.80</td>
</tr>
<tr class="ltx_tr" id="S5.T1.33.31.42.11" style="background-color:#ECF4FF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T1.33.31.42.11.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.42.11.1.1" style="background-color:#ECF4FF;">- LongPO (iter1)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T1.33.31.42.11.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.42.11.2.1" style="background-color:#ECF4FF;">128K</span></th>
<td class="ltx_td ltx_border_bb" id="S5.T1.33.31.42.11.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.33.31.42.11.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.42.11.4.1" style="background-color:#ECF4FF;">32.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.33.31.42.11.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.42.11.5.1" style="background-color:#ECF4FF;">17.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.33.31.42.11.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.42.11.6.1" style="background-color:#ECF4FF;">72.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.33.31.42.11.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.42.11.7.1" style="background-color:#ECF4FF;">40.48</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T1.33.31.42.11.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.33.31.42.11.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.42.11.9.1" style="background-color:#ECF4FF;">95.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.33.31.42.11.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.42.11.10.1" style="background-color:#ECF4FF;">89.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.33.31.42.11.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.42.11.11.1" style="background-color:#ECF4FF;">59.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.33.31.42.11.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.42.11.12.1" style="background-color:#ECF4FF;">81.64</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T1.33.31.42.11.13" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.33.31.42.11.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T1.33.31.42.11.14.1" style="background-color:#ECF4FF;">5.75</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of the long-context performance of the proposed LongPO method against various baselines.  The models are evaluated across multiple metrics on several benchmark datasets, focusing on long-context tasks. Higher scores indicate better performance.  Some results were obtained by the authors, indicated by the symbol '♭', while others are sourced directly from the original benchmark papers. For a comprehensive breakdown of the RULER benchmark results, refer to Table 2.
> <details>
> <summary>read the caption</summary>
> Table 1: Long-Context Performance of our LongPO compared with baselines. Higher is better for all metrics. Results marked with ♭♭\flat♭ are evaluated by ourselves, while other results of baselines are sourced from the original benchmarks. Full results on RULER are listed in Table 2.
> </details>





### In-depth insights


#### LongPO: Overview
While "LongPO: Overview" isn't explicitly a heading, we can infer its core concept from the paper. LongPO likely introduces a novel alignment method targeting **long-context LLMs**. It aims to equip models with the ability to effectively transfer **short-context capabilities** to these longer scenarios. The core problem being tackled is the difficulty in aligning LLMs for long contexts due to the **scarcity of annotated data** and the challenges in balancing short and long-context performance. LongPO's key innovation probably revolves around a clever way to **circumvent the need for extensive manual annotation**, potentially through a self-evolution or self-supervised approach, allowing the LLM to learn from its own generated data or existing short-context knowledge, and **maintaining shorter context performance** throughout this evolution.

#### Short-to-Long Align
The concept of 'Short-to-Long Alignment,' addresses a core challenge in scaling LLMs to handle extended contexts. The summary discusses **transferring capabilities** learned from short-context data to long-context scenarios. This focuses on maintaining performance and alignment across varying input lengths. The idea revolves around mitigating performance degradation observed in long-context tasks when models are primarily trained on short sequences. It tackles the imbalance between short- and long-context performance, aiming to **retain proficiency** while extending contextual understanding. Strategies involve fine-tuning and alignment techniques to ensure the model effectively utilizes information from long contexts without losing its ability to process short ones. This highlights the necessity of specialized training and optimization methods tailored for long-context data, as simply concatenating short-context data proves insufficient. A key goal is to **optimize the trade-off** between short and long sequence processing to enable LLMs with extended context windows.

#### KL Context Control
**KL context control** is a strategy to manage the model's behavior within a specific context. This is achieved using **Kullback-Leibler (KL) divergence**. By minimizing the KL divergence, the model is encouraged to **stay close to a prior distribution** and avoid generating outputs that deviate too much. This method can prevent undesirable behaviors like **hallucination or nonsensical output** within particular contexts. However, there is a **trade-off between control and flexibility**: too much constraint may stifle the model and compromise its ability to generate creative solutions. Effective KL context control **requires carefully tuning the parameters** to strike a balance between adhering to the desired constraints and allowing for sufficient exploration of the solution space. The primary goal of KL context control is to improve the reliability and quality of model-generated content within a context.

#### 512K Self-Evolving
The concept of '512K Self-Evolving' suggests a language model's capacity to **expand its context window to 512K tokens through self-improvement**. It implies a process where the model, starting with a smaller context, iteratively trains itself on data it generates, allowing it to handle longer sequences. Key aspects of such a system involve the **method for creating training data**, the **architecture enabling longer contexts**, and strategies to **maintain performance on shorter contexts**. Self-generation could involve tasks like summarizing long documents or answering questions that require understanding across a larger context, enabling iterative model improvement. The goal is to develop a model that can effectively leverage information within a 512K token window while **avoiding performance decline on shorter context tasks**.

#### No Ext. Annotat.
The paper emphasizes the importance of circumventing the need for **external annotations**, especially in the context of long-context LLMs. The scarcity and impracticality of human annotation for extended contexts pose significant challenges. LongPO addresses these challenges by leveraging **self-generated data** and internal model knowledge. The approach enables the transfer of capabilities from short-context alignment to long-context scenarios, effectively **eliminating reliance on external supervision**. This self-evolution property is a key contribution, offering a more efficient and scalable approach to long-context alignment. The focus on intrinsic model capabilities opens new avenues for adapting LLMs to diverse context lengths without the prohibitive costs of extensive manual annotation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.13922/extracted/6217667/figures/longpo_refined.png)

> 🔼 This figure illustrates the process of creating short-to-long preference data pairs.  It begins with a long document. A short chunk of text is extracted from that document. An instruction is generated based on this short chunk. Then the model generates a response based on this short chunk (chosen response) and the entire long document (rejected response). These two responses paired with the same instruction form a data pair showing preference for one over the other. This process is repeated many times to build up a dataset.
> <details>
> <summary>read the caption</summary>
> Figure 2: The procedure of generating short-to-long preference data from step 1 to 7.
> </details>



![](https://arxiv.org/html/2502.13922/x2.png)

> 🔼 This figure compares the short-context performance of Mistral-7B-LongPO and several baseline models relative to their corresponding base models. It shows the improvement or degradation in short-context performance after long-context alignment.  The baselines include models trained with supervised fine-tuning (SFT) and direct preference optimization (DPO).  For reference, the improvements for GLM-9B-1M and LWM-7B-1M over their 128K counterparts (GLM-9B-128K and LWM-7B-128K) are also displayed. The MT-Bench metric, which originally ranges from 0 to 10, is linearly scaled to 0 to 100 for easier comparison across different tasks. Detailed numerical results can be found in Table 3.
> <details>
> <summary>read the caption</summary>
> Figure 3: The margins of the short-context performance of Mistral-7B-LongPO and baselines relative to corresponding base model. GLM and LWM refer to the margins of GLM-9B-1M and LWM-7B-1M over GLM-9B-128K and LWM-7B-128K, respectively. MT-Bench metrics (∈\in∈[0, 10]) are linearly scaled to [0, 100] for better comparability across tasks. See numerical results in Table 3.
> </details>



![](https://arxiv.org/html/2502.13922/x3.png)

> 🔼 This figure compares the performance of LongPO with several baseline methods across both long- and short-context tasks.  The baselines include: Supervised Fine-Tuning (SFT) using only the chosen responses, SFT using only the rejected responses, Direct Preference Optimization (DPO), and SFT with an added short-to-long constraint. The plots show the training progress over a number of steps, tracking performance on the RULER-NIAH (long-context) and MMLU (short-context) benchmarks.  The figure illustrates LongPO's ability to maintain strong performance on short-context tasks while simultaneously improving long-context performance, a key advantage over the baseline methods.
> <details>
> <summary>read the caption</summary>
> Figure 4: Long- and short-context performance comparison among LongPO, SFT on chosen responses (SFT-Chosen), SFT on rejected responses (SFT-Rejected), DPO, and SFT on chosen responses with short-to-long constraint (SFT-Chosen-Constraint).
> </details>



![](https://arxiv.org/html/2502.13922/extracted/6217667/figures/prompt.png)

> 🔼 This figure shows the prompt used to instruct a large language model (LLM) to generate a pool of instructions for creating short-to-long preference data.  The prompt guides the LLM to produce diverse, comprehensive questions that test a reader's comprehension, analytical abilities, and the capacity to interconnect key themes across a document. These questions are designed to facilitate the creation of high-quality preference pairs by ensuring that each short-to-long comparison is meaningful and covers a broad range of the document's content.
> <details>
> <summary>read the caption</summary>
> Figure 5: The prompt for generating instruction pool.
> </details>



![](https://arxiv.org/html/2502.13922/x4.png)

> 🔼 This figure shows the reward trend for chosen responses during the training process of Mistral-7B-LongPO-128K.  The reward, reflecting the model's performance on selecting preferred responses, initially fluctuates before increasing steadily. This suggests the model effectively learns from the short-to-long preferences, improving its long-context capabilities over time.
> <details>
> <summary>read the caption</summary>
> (a) The rewards for chosen response during training.
> </details>



![](https://arxiv.org/html/2502.13922/x5.png)

> 🔼 This figure shows the reward values for rejected responses during the training process of the Mistral-7B-LongPO-128K model.  The rewards reflect the model's preference for the chosen response over the rejected response as training progresses. Negative reward values indicate that the model prefers the chosen response.  Observing the trend in the rewards for rejected responses can help assess the model's alignment with the intended preferences and reveal if the model is learning to generate better long-context responses over the course of training.
> <details>
> <summary>read the caption</summary>
> (b) The rewards for rejected response during training.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T2.3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T2.3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T2.3.1.1.1.1">Model</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T2.3.1.1.1.2">Category</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T2.3.1.1.1.3">4k</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T2.3.1.1.1.4">8k</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T2.3.1.1.1.5">16k</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T2.3.1.1.1.6">32k</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T2.3.1.1.1.7">64k</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T2.3.1.1.1.8">128k</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T2.3.1.1.1.9">AVG</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T2.3.1.2.2.1" rowspan="5"><span class="ltx_text" id="A2.T2.3.1.2.2.1.1">Qwen2.5-7B-Instruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T2.3.1.2.2.2">NIAH</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.3.1.2.2.3">99.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.3.1.2.2.4">98.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.3.1.2.2.5">97.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.3.1.2.2.6">95.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.3.1.2.2.7">74.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.3.1.2.2.8">26.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.3.1.2.2.9">82.10</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.3.3">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.3.3.1">VT</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.3.3.2">99.88</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.3.3.3">99.72</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.3.3.4">96.24</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.3.3.5">96.44</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.3.3.6">81.44</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.3.3.7">6.84</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.3.3.8">80.09</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.4.4">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.4.4.1">AGG</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.4.4.2">92.52</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.4.4.3">89.78</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.4.4.4">92.08</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.4.4.5">81.93</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.4.4.6">62.48</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.4.4.7">28.23</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.4.4.8">74.50</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.5.5">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.5.5.1">QA</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.5.5.2">71.00</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.5.5.3">65.30</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.5.5.4">64.00</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.5.5.5">58.70</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.5.5.6">46.80</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.5.5.7">19.99</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.5.5.8">54.30</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.6.6">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.6.6.1">AVG (13 tasks)</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.6.6.2">94.19</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.6.6.3">92.11</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.6.6.4">91.61</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.6.6.5">87.66</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.6.6.6">68.96</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.6.6.7">24.47</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.6.6.8"><span class="ltx_text ltx_font_bold" id="A2.T2.3.1.6.6.8.1">76.50</span></td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.7.7">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.7.7.1" rowspan="5"><span class="ltx_text" id="A2.T2.3.1.7.7.1.1">Qwen2.5-7B-LongPO-128K</span></td>
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.7.7.2">NIAH</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.7.7.3">99.64</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.7.7.4">98.97</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.7.7.5">97.80</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.7.7.6">95.54</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.7.7.7">94.80</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.7.7.8">88.15</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.7.7.9">95.82</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.8.8">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.8.8.1">VT</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.8.8.2">99.96</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.8.8.3">99.92</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.8.8.4">96.12</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.8.8.5">86.24</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.8.8.6">78.20</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.8.8.7">77.80</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.8.8.8">89.71</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.9.9">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.9.9.1">AGG</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.9.9.2">95.50</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.9.9.3">86.12</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.9.9.4">91.75</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.9.9.5">82.56</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.9.9.6">66.31</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.9.9.7">49.81</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.9.9.8">78.67</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.10.10">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.10.10.1">QA</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.10.10.2">70.00</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.10.10.3">64.00</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.10.10.4">62.70</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.10.10.5">57.70</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.10.10.6">53.00</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.10.10.7">49.00</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.10.10.8">59.40</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.11.11">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.11.11.1">AVG (13 tasks)</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.11.11.2">94.47</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.11.11.3">91.69</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.11.11.4">91.34</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.11.11.5">87.00</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.11.11.6">82.71</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.11.11.7">75.43</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.11.11.8"><span class="ltx_text ltx_font_bold" id="A2.T2.3.1.11.11.8.1">87.11</span></td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T2.3.1.12.12.1" rowspan="5"><span class="ltx_text" id="A2.T2.3.1.12.12.1.1">Mistral-7B-LongPO-128K</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T2.3.1.12.12.2">NIAH</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.3.1.12.12.3">99.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.3.1.12.12.4">98.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.3.1.12.12.5">98.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.3.1.12.12.6">97.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.3.1.12.12.7">95.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.3.1.12.12.8">91.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.3.1.12.12.9">96.88</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.13.13">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.13.13.1">VT</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.13.13.2">99.40</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.13.13.3">99.16</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.13.13.4">98.08</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.13.13.5">96.36</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.13.13.6">92.80</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.13.13.7">93.12</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.13.13.8">96.49</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.14.14">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.14.14.1">AGG</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.14.14.2">88.31</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.14.14.3">82.91</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.14.14.4">92.23</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.14.14.5">72.775</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.14.14.6">46.305</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.14.14.7">46.79</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.14.14.8">71.55</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.15.15">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.15.15.1">QA</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.15.15.2">71.10</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.15.15.3">70.15</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.15.15.4">66.60</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.15.15.5">65.80</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.15.15.6">61.00</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.15.15.7">54.20</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.15.15.8">64.81</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.16.16">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.16.16.1">AVG (13 tasks)</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.16.16.2">93.36</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.16.16.3">91.88</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.16.16.4">92.35</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.16.16.5">88.94</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.16.16.6">82.61</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.16.16.7">78.97</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.16.16.8"><span class="ltx_text ltx_font_bold" id="A2.T2.3.1.16.16.8.1">88.02</span></td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.17.17">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.17.17.1" rowspan="5"><span class="ltx_text" id="A2.T2.3.1.17.17.1.1">Mistral-7B-LongPO-256K</span></td>
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.17.17.2">NIAH</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.17.17.3">99.16</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.17.17.4">97.79</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.17.17.5">98.02</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.17.17.6">97.76</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.17.17.7">96.53</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.17.17.8">91.54</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.17.17.9">96.80</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.18.18">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.18.18.1">VT</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.18.18.2">99.40</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.18.18.3">99.20</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.18.18.4">97.96</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.18.18.5">97.72</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.18.18.6">94.21</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.18.18.7">93.52</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.18.18.8">97.00</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.19.19">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.19.19.1">AGG</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.19.19.2">87.40</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.19.19.3">76.59</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.19.19.4">89.03</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.19.19.5">72.20</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.19.19.6">45.17</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.19.19.7">44.47</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.19.19.8">69.14</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.20.20">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.20.20.1">QA</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.20.20.2">71.50</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.20.20.3">69.50</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.20.20.4">66.70</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.20.20.5">64.30</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.20.20.6">60.80</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.20.20.7">56.40</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.20.20.8">64.87</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.21.21">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.21.21.1">AVG (13 tasks)</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.21.21.2">93.11</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.21.21.3">90.28</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.21.21.4">91.81</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.21.21.5">88.68</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.21.21.6">82.95</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.21.21.7">79.04</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.21.21.8"><span class="ltx_text ltx_font_bold" id="A2.T2.3.1.21.21.8.1">87.65</span></td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.22.22">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T2.3.1.22.22.1" rowspan="5"><span class="ltx_text" id="A2.T2.3.1.22.22.1.1">Mistral-7B-LongPO-512K</span></td>
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.22.22.2">NIAH</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.22.22.3">99.19</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.22.22.4">97.78</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.22.22.5">98.06</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.22.22.6">97.69</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.22.22.7">96.62</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.22.22.8">94.36</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.22.22.9">97.28</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.23.23">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.23.23.1">VT</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.23.23.2">99.44</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.23.23.3">99.16</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.23.23.4">98.04</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.23.23.5">97.80</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.23.23.6">95.92</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.23.23.7">94.52</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.23.23.8">97.48</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.24.24">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.24.24.1">AGG</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.24.24.2">87.56</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.24.24.3">76.71</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.24.24.4">88.95</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.24.24.5">72.70</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.24.24.6">44.93</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.24.24.7">44.51</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.24.24.8">69.22</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.25.25">
<td class="ltx_td ltx_align_left" id="A2.T2.3.1.25.25.1">QA</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.25.25.2">71.40</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.25.25.3">69.50</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.25.25.4">66.40</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.25.25.5">64.50</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.25.25.6">60.60</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.25.25.7">57.10</td>
<td class="ltx_td ltx_align_center" id="A2.T2.3.1.25.25.8">64.92</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.1.26.26">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T2.3.1.26.26.1">AVG (13 tasks)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T2.3.1.26.26.2">93.14</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T2.3.1.26.26.3">90.29</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T2.3.1.26.26.4">91.78</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T2.3.1.26.26.5">88.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T2.3.1.26.26.6">83.07</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T2.3.1.26.26.7">80.97</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T2.3.1.26.26.8"><span class="ltx_text ltx_font_bold" id="A2.T2.3.1.26.26.8.1">88.00</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of different language models on the RULER benchmark, a challenging test focusing on various long-context reasoning tasks.  It breaks down the performance of each model across 13 sub-tasks within RULER, categorized by context length (4K, 8K, 16K, 32K, 64K, and 128K tokens). The average performance across all 13 tasks is highlighted in bold for each model and context length, providing a concise summary of the overall capabilities of each model in handling long-context information.
> <details>
> <summary>read the caption</summary>
> Table 2: Full results on 13 tasks of RULER benchmark. The bold values denote the average score of 13 tasks in RULER over various context lengths.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="A2.T3.1.1.1.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T3.1.1.1.2">MMLU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T3.1.1.1.3">ARC-C</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T3.1.1.1.4">Hellaswag</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T3.1.1.1.5">Winogrande</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T3.1.1.1.6">MT-Bench</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T3.1.2.1.1">Mistral-7B-Instruction-v0.2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.1.2.1.2">59.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.1.2.1.3">59.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.1.2.1.4">83.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.1.2.1.5">78.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.1.2.1.6">6.34</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T3.1.3.2.1">Mistral-7B-LongPO-128K</th>
<td class="ltx_td ltx_align_center" id="A2.T3.1.3.2.2">59.99</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.3.2.3">59.34</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.3.2.4">82.99</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.3.2.5">78.53</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.3.2.6">6.35</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T3.1.4.3.1">Mistral-7B-LongPO-256K-EXP</th>
<td class="ltx_td ltx_align_center" id="A2.T3.1.4.3.2">59.47</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.4.3.3">60.28</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.4.3.4">83.14</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.4.3.5">78.14</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.4.3.6">6.38</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T3.1.5.4.1">Mistral-7B-LongPO-512K-EXP</th>
<td class="ltx_td ltx_align_center" id="A2.T3.1.5.4.2">59.51</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.5.4.3">60.58</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.5.4.4">82.87</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.5.4.5">77.66</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.5.4.6">6.34</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T3.1.6.5.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_center" id="A2.T3.1.6.5.2">74.28</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.6.5.3">67.15</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.6.5.4">81.41</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.6.5.5">74.66</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.6.5.6">7.30</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="A2.T3.1.7.6.1">Qwen2.5-7B-LongPO-128K</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T3.1.7.6.2">73.64</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T3.1.7.6.3">65.70</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T3.1.7.6.4">80.82</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T3.1.7.6.5">74.98</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T3.1.7.6.6">7.62</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various models on short-context tasks.  It compares the base Mistral-7B-Instruct-v0.2 model against models enhanced with LongPO (at various context lengths) and other baselines (Qwen2.5-7B-Instruct).  The performance is measured across several standard benchmarks: MMLU (Mass Multitask Language Understanding), ARC-C (AI2 Reasoning Challenge), HellaSwag (a commonsense reasoning task), Winogrande (a word sense disambiguation task), and MT-Bench (Machine Translation Benchmark). The scores provide a comparative analysis of how these model variations perform in short-context settings and the effect of LongPO.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance on short-context tasks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.13922/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13922/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13922/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13922/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13922/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13922/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13922/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13922/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13922/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13922/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13922/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13922/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13922/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13922/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13922/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13922/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13922/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}