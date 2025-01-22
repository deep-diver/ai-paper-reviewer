---
title: "Towards Large Reasoning Models: A Survey of Reinforced Reasoning with Large Language Models"
summary: "This survey paper explores the exciting new frontier of Large Reasoning Models (LRMs), focusing on how reinforcement learning and clever prompting techniques are boosting LLMs' reasoning capabilities."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tsinghua University",]
showSummary: true
date: 2025-01-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.09686 {{< /keyword >}}
{{< keyword icon="writer" >}} Fengli Xu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.09686" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.09686" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.09686/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current research on Large Language Models (LLMs) faces a significant challenge: enhancing their reasoning abilities.  While LLMs excel at many tasks, complex reasoning requires more advanced techniques than simple autoregressive text generation.  Existing methods heavily rely on expensive human annotation for training data, limiting scalability.  Moreover, test-time reasoning accuracy often remains unsatisfactory. 

This paper offers a comprehensive overview of recent LLM reasoning advancements, focusing on approaches that tackle these limitations. It explores the use of reinforcement learning to create high-quality reasoning datasets automatically, reducing human annotation needs. The paper also examines test-time scaling techniques such as chain-of-thought and tree-of-thought prompting, and the utilization of Process Reward Models (PRMs) for guiding LLMs' reasoning process.  Finally, it reviews the groundbreaking OpenAI o1 series and several open-source projects working on similar large reasoning models, offering valuable insights into this rapidly evolving research area.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Reinforcement learning and LLM-driven search are automating the creation of large reasoning datasets, reducing reliance on expensive human annotation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Train-time scaling using reinforcement learning and test-time scaling through techniques like chain-of-thought prompting significantly improve LLMs' reasoning accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} OpenAI's o1 series exemplifies the effectiveness of these combined train-time and test-time scaling approaches, paving the path toward practical LRMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for AI researchers because it **systematically reviews the latest advancements in Large Language Model (LLM) reasoning**, highlighting the shift from human annotation to automated data construction using LLMs.  It also **introduces the concept of large reasoning models** and explores key technical components like reinforcement learning and test-time scaling, **opening avenues for developing more advanced reasoning models** and prompting new research directions.  Its comprehensive nature makes it a valuable resource for both experts and those new to the field.

------
#### Visual Insights



![](https://arxiv.org/html/2501.09686/x1.png)

> 🔼 This figure contrasts two main approaches for creating training datasets for LLMs focused on reasoning: human annotation and automated LLM-based annotation.  Human annotation, while producing high-quality data, is expensive and difficult to scale.  In contrast, automated methods using LLMs are more cost-effective, but the quality of the resulting data can be less reliable, especially for complex, multi-step reasoning tasks.  The figure visually illustrates the process of each annotation method, highlighting their respective costs and scalability.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustrating different paradigms for annotating LLM reasoning data.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.1">
<tr class="ltx_tr" id="S3.T1.4.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.1.1.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.1.1.2">Label</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.1.1.3">Paper</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.1.1.4">Year</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.1.1.5">Task</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.4.1.1.6">Brief Description</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.2.1" rowspan="3"><span class="ltx_text" id="S3.T1.4.1.2.1.1">Human Annotation</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.2.2" rowspan="2"><span class="ltx_text" id="S3.T1.4.1.2.2.1">Outcome</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.2.3"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib98" title="">98</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.2.4">2024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.2.5">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.1.2.5.1">
<tr class="ltx_tr" id="S3.T1.4.1.2.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.2.5.1.1.1">Text classification</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.2.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.2.5.1.2.1">Semantic analysis</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.1.2.6">Voting annotation</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.3.1"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib104" title="">104</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.3.2">2022</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.3.3">Preference Alignment</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.1.3.4">Preference ranking</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.4.1"><span class="ltx_text" id="S3.T1.4.1.4.1.1">Process</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.4.2"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib75" title="">75</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.4.3">2023</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.4.4">Mathematical reasoning</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.1.4.5">Stepwise annotation</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.5.1" rowspan="3"><span class="ltx_text" id="S3.T1.4.1.5.1.1">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.4.1.5.1.1.1">
<span class="ltx_tr" id="S3.T1.4.1.5.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.5.1.1.1.1.1">Human-LLM</span></span>
<span class="ltx_tr" id="S3.T1.4.1.5.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.5.1.1.1.2.1">Collaboration</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.5.2" rowspan="3"><span class="ltx_text" id="S3.T1.4.1.5.2.1">Outcome</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.5.3"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib42" title="">42</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.5.4">2023</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.5.5">Semantic analysis</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.1.5.6">Human correction</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.6.1"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib152" title="">152</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.6.2">2024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.6.3">Text classification</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.1.6.4">Human correction</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.7.1"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib74" title="">74</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.7.2">2023</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.7.3">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.1.7.3.1">
<tr class="ltx_tr" id="S3.T1.4.1.7.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.7.3.1.1.1">Text classification</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.7.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.7.3.1.2.1">Semantic analysis</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.1.7.4">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.1.7.4.1">
<tr class="ltx_tr" id="S3.T1.4.1.7.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.7.4.1.1.1">Task allocation</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.7.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.7.4.1.2.1">Uncertainty assessment</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.8.1" rowspan="8"><span class="ltx_text" id="S3.T1.4.1.8.1.1">LLM Automation</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.8.2" rowspan="4"><span class="ltx_text" id="S3.T1.4.1.8.2.1">Outcome</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.8.3"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib106" title="">106</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.8.4">2020</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.8.5">Commonsense reasoning</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.1.8.6">Text extraction</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.9.1"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib120" title="">120</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.9.2">2024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.9.3">Tool use</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.1.9.4">Trial and error</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.10.1"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib65" title="">65</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.10.2">2024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.10.3">Embodied tasks</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.1.10.4">Synthetic augmentation</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.11.1"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib109" title="">109</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.11.2">2024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.11.3">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.1.11.3.1">
<tr class="ltx_tr" id="S3.T1.4.1.11.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.11.3.1.1.1">Commonsense reasoning</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.11.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.11.3.1.2.1">Domain knowledge reasoning</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.1.11.4">Multi-agent collaboration</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.12.1" rowspan="4"><span class="ltx_text" id="S3.T1.4.1.12.1.1">Process</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.12.2"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib84" title="">84</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.12.3">2023</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.12.4">Mathematical reasoning</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.1.12.5">Stronger LLM</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.13.1"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib148" title="">148</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.13.2">2024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.13.3">Mathematical reasoning</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.1.13.4">Monte Carlo simulation</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.14">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.14.1"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib156" title="">156</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.14.2">2024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.14.3">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.1.14.3.1">
<tr class="ltx_tr" id="S3.T1.4.1.14.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.14.3.1.1.1">Mathematical reasoning</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.14.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.14.3.1.2.1">Programming</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.1.14.4">Monte Carlo simulation</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.15">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.15.1"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib85" title="">85</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.15.2">2024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.15.3">Mathematical reasoning</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.1.15.4">MCTS simulation</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.16">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.1.16.1" rowspan="5"><span class="ltx_text" id="S3.T1.4.1.16.1.1">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.4.1.16.1.1.1">
<span class="ltx_tr" id="S3.T1.4.1.16.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.16.1.1.1.1.1">LLM Automation</span></span>
<span class="ltx_tr" id="S3.T1.4.1.16.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.16.1.1.1.2.1">with feedback</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.16.2" rowspan="2"><span class="ltx_text" id="S3.T1.4.1.16.2.1">Outcome</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.16.3"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib70" title="">70</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.16.4">2024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.16.5">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.1.16.5.1">
<tr class="ltx_tr" id="S3.T1.4.1.16.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.16.5.1.1.1">Text classification</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.16.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.16.5.1.2.1">Mathematical reasoning</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.16.5.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.16.5.1.3.1">Domain knowledge reasoning</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.1.16.6">Self-refining</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.17">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.17.1"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib135" title="">135</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.17.2">2024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.17.3">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.1.17.3.1">
<tr class="ltx_tr" id="S3.T1.4.1.17.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.17.3.1.1.1">Embodied tasks</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.1.17.4">Contrastive learning</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.18">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.1.18.1">Process</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.1.18.2"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09686v1#bib.bib183" title="">183</a>]</cite></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.1.18.3">2024</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.1.18.4">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.1.18.4.1">
<tr class="ltx_tr" id="S3.T1.4.1.18.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.18.4.1.1.1">Mathematical reasoning</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.18.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.18.4.1.2.1">Domain knowledge reasoning</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.1.18.5">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.1.18.5.1">
<tr class="ltx_tr" id="S3.T1.4.1.18.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.18.5.1.1.1">MCTS simulation</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.18.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.18.5.1.2.1">Self-refining</td>
</tr>
</table>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table provides a detailed overview of various methods used for constructing training datasets to enhance the reasoning capabilities of Large Language Models (LLMs). It categorizes the methods into three main approaches: Human Annotation, Human-LLM Collaboration, and LLM Automation.  For each approach, it lists specific papers, their publication years, the type of data generated (Outcome or Process), the task the data is used for, and a brief description of the annotation method. This table highlights the shift from expensive and time-consuming human annotation to more cost-effective LLM-driven automated methods for dataset creation.
> <details>
> <summary>read the caption</summary>
> Table 1: Training data construction for LLM reasoning.
> </details>





### In-depth insights


#### LLM Reasoning Rise
The rise of LLM reasoning signifies a **paradigm shift** in AI, moving beyond simple text generation towards complex problem-solving.  **Early methods** relied heavily on prompting techniques like chain-of-thought, coaxing LLMs into step-by-step reasoning. However, these methods were limited by their reliance on human-crafted prompts and their inability to scale effectively.  The field has since advanced significantly with the **integration of reinforcement learning**.  This allows for automated generation of high-quality reasoning trajectories and efficient fine-tuning, leading to more robust and accurate LLM reasoning capabilities.  This is especially critical in tasks requiring multi-step reasoning, where **process reward models** are crucial for providing nuanced feedback.  **Test-time scaling** has emerged as another key area, demonstrating that significant performance gains can be achieved simply by increasing compute resources during inference.  **Open-source initiatives** are further accelerating this progress, making powerful reasoning tools more widely accessible and fostering broader research and development.

#### RL-Driven Scaling
Reinforcement learning (RL) offers a powerful mechanism to overcome limitations of supervised fine-tuning in large language models (LLMs) for reasoning.  **RL-driven scaling leverages RL to automatically generate high-quality reasoning trajectories**, circumventing the expensive and laborious process of human annotation. This is achieved through trial-and-error search algorithms, where the LLM iteratively refines its reasoning process based on feedback signals. The use of **process reward models (PRMs)**, providing dense, step-wise rewards, further enhances the learning efficiency. This approach is particularly effective in handling complex tasks that involve multiple steps and intermediate decisions, enabling the scaling of LLM reasoning capabilities with increased train-time compute and ultimately contributing to the development of large reasoning models.  **Combining RL-driven train-time scaling with search-based test-time scaling unlocks a synergistic effect**, demonstrating that increased compute during both training and inference can significantly boost reasoning accuracy. This paradigm shift marks a crucial milestone in the advancement of LLMs, paving the way for more sophisticated and powerful reasoning AI.

#### PRM's Role
Process Reward Models (PRMs) play a pivotal role in enhancing Large Language Model (LLM) reasoning capabilities. Unlike traditional outcome-based reward models, **PRMs provide feedback at each step of a reasoning process**, enabling more effective learning and fine-grained control.  This **step-wise reward mechanism** is particularly beneficial for complex tasks requiring multiple reasoning steps, such as mathematical problem-solving or logical inference. By rewarding correct intermediate steps, PRMs guide the LLM towards generating higher-quality reasoning trajectories.  Furthermore, PRMs are instrumental in **reducing reliance on expensive human annotation**, as they allow for the automatic generation of high-quality training data through trial-and-error search algorithms.  In test-time settings, PRMs can further enhance LLM performance by guiding search algorithms, like Monte Carlo Tree Search (MCTS), towards finding optimal solutions. The integration of PRMs represents a crucial advancement in the development of large reasoning models, paving the way for more sophisticated and robust reasoning capabilities in LLMs.

#### Test-Time Boost
Test-time boost techniques significantly enhance Large Language Model (LLM) reasoning capabilities **without modifying the model's parameters** or retraining.  These methods focus on optimizing the inference process itself, often through clever prompting strategies or by employing search algorithms guided by process reward models (PRMs).  **Chain-of-Thought (CoT) prompting**, for example, guides the LLM through explicit reasoning steps, dramatically improving accuracy.  Furthermore, **techniques like Tree-of-Thoughts (ToT) explore multiple reasoning paths concurrently**, leading to more robust and reliable conclusions.  **PRM-guided search algorithms**, such as Monte Carlo Tree Search (MCTS), leverage the PRM's feedback to intelligently navigate the search space, identifying high-quality reasoning trajectories.  The effectiveness of these approaches hinges on the ability to elicit deliberate, step-by-step reasoning from the model during test time, thereby circumventing the limitations of solely relying on pre-training and fine-tuning to enhance reasoning abilities.  **Test-time scaling laws suggest that increased compute during inference correlates with improved reasoning performance**, creating a new avenue for enhancing LLMs by increasing test-time resources.

#### Future of Reasoning
The future of reasoning in large language models (LLMs) is bright, but multifaceted.  **Progress hinges on overcoming challenges in data acquisition**, shifting from expensive human annotation to more scalable, automated methods using LLMs themselves.  **Reinforcement learning techniques, particularly those employing process reward models (PRMs), are crucial** for efficiently guiding LLMs towards more robust and human-like reasoning.  **Test-time scaling, which leverages increased compute during inference to improve accuracy**, is another key area of development. The integration of these advancements, alongside further research into prompt engineering and agentic workflows, promises to unlock significant emergent reasoning capabilities in LLMs. **Ultimately, the goal is to create truly general-purpose reasoning models that can handle complex, real-world problems**, extending beyond current benchmarks and pushing the boundaries of artificial intelligence.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.09686/x2.png)

> 🔼 This figure illustrates three different reward model approaches used in train-time reinforcement learning for enhancing LLM reasoning capabilities.  (a) shows a direct reinforcement learning setup where rewards are given immediately after an action. (b) demonstrates multi-step reinforcement learning incorporating an outcome reward model (ORM), where a reward is assigned based on the final outcome.  (c) displays a more refined multi-step reinforcement learning approach using a process reward model (PRM), providing step-wise rewards to guide the LLM's reasoning process during intermediate steps.
> <details>
> <summary>read the caption</summary>
> Figure 2: Reward models for Train-time Reinforcement of LLM Reasoning.
> </details>



![](https://arxiv.org/html/2501.09686/extracted/6136677/Figures/search.png)

> 🔼 This figure illustrates four different search algorithms used to enhance reasoning capabilities during the inference phase of large language models (LLMs).  Each algorithm explores different solution paths in a search space, aiming to find the optimal answer given a limited budget of compute during inference.  The diagrams visually represent the search process, showcasing how each algorithm navigates through various reasoning paths to reach a final decision.  The algorithms shown are: Majority Vote, Tree Search, Beam Search, and Lookahead Search.  These algorithms vary in their exploration strategy and computational cost.
> <details>
> <summary>read the caption</summary>
> Figure 3: Diagrams of Different Search Algorithms for Test-time Reasoning Enhancement.
> </details>



![](https://arxiv.org/html/2501.09686/extracted/6136677/Figures/Group_4.png)

> 🔼 Figure 4 illustrates three test-time methods for enhancing Large Language Model (LLM) reasoning without additional training.  These methods leverage the inherent capabilities of LLMs and do not require further fine-tuning or retraining.  Verbal Reinforcement Search (VRS) uses iterative feedback and interaction to refine solutions. Memory-based Reinforcement leverages past experiences stored in an external memory module to inform the next reasoning step. Agentic System Search uses LLMs to search and optimize the structure and parameters of an agentic system, which consists of modules for planning, reasoning, tool usage, and memory.
> <details>
> <summary>read the caption</summary>
> Figure 4: Typical training-free test-time enhancing methods: verbal reinforcement search, memory-based reinforcement, and agentic system search.
> </details>



![](https://arxiv.org/html/2501.09686/x3.png)

> 🔼 This figure presents a taxonomy of benchmarks used to evaluate the reasoning capabilities of Large Language Models (LLMs). It categorizes benchmarks into five main problem types: Math Problems, Logic Problems, Commonsense Problems, Coding Problems, and Agent Problems. Each category is further divided into subcategories based on the specific aspects of reasoning being assessed. For example, Math Problems include subcategories like Math Word Problems, Advanced Mathematical Reasoning, Geometric Reasoning, and Cross-Modal Mathematical Reasoning.  The taxonomy visually displays the hierarchical relationships among different benchmark types and sub-types, offering a comprehensive overview of the evaluation landscape for LLM reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 5: A Taxonomy for LLM Reasoning Benchmarks.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.1.2.5.1">
<tr class="ltx_tr" id="S3.T1.4.1.2.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.2.5.1.1.1">Text classification</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.2.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.2.5.1.2.1">Semantic analysis</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares four open-source projects that aim to replicate or improve upon the reasoning capabilities of OpenAI's o1 series models.  For each project, it details the data construction methods (pre-training and post-training), test-time improvement techniques, and the overall approach or contribution perspective.
> <details>
> <summary>read the caption</summary>
> Table 2: Open-source Attempts of Large Reasoning Models: A Contribution Point of View.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.1.7.3.1">
<tr class="ltx_tr" id="S3.T1.4.1.7.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.7.3.1.1.1">Text classification</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.7.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.1.7.3.1.2.1">Semantic analysis</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists representative research papers that explore test-time reasoning enhancement techniques for Large Language Models (LLMs) without requiring additional training.  The methods are categorized into three approaches: Verbal Reinforcement Search (VRS), Memory-based Reinforcement, and Agentic System Search.  Each category contains various sub-approaches and example works that demonstrate how to improve the reasoning abilities of LLMs at test time, solely by modifying the input prompt or search strategy.
> <details>
> <summary>read the caption</summary>
> Table 3: A list of representative works of training-free test-time reinforcing.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.09686/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09686/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}