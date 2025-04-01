---
title: "Efficient Inference for Large Reasoning Models: A Survey"
summary: "Survey on efficient inference methods for Large Reasoning Models, focusing on mitigating token inefficiency while preserving quality."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 National University of Singapore",]
showSummary: true
date: 2025-03-29
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.23077 {{< /keyword >}}
{{< keyword icon="writer" >}} Yue Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-01 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.23077" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.23077" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.23077/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Reasoning Models (LRMs) enhance the reasoning ability of LLMs but suffer from **inefficiencies in token usage, memory consumption, and inference time**. This survey reviews methods designed specifically for LRMs to mitigate token inefficiency while preserving reasoning quality. It categorizes these methods into **explicit compact Chain-of-Thought (CoT), which reduces tokens while keeping the explicit reasoning structure, and implicit latent CoT, which encodes reasoning steps within hidden representations instead of explicit tokens**.



Beyond categorizing, the survey presents empirical analyses of existing methods, from performance and efficiency perspectives. It presents open challenges, including **human-centric controllable reasoning**, the trade-off between interpretability and efficiency, and ensuring the safety of efficient reasoning. The authors also highlight techniques such as **model merging, new architectures, and agent routers as key to enhancing inference efficiency**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Efficient inference methods for LRMs can be categorized into explicit compact CoT and implicit latent CoT. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} There are 4 open challenges: human-centric controllable reasoning, trade-off between interpretability and efficiency, ensuring safety of efficient reasoning, and broader applications of efficient reasoning {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Techniques such as model merging, new architectures, and agent routers can further enhance LRMs' inference efficiency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This survey is crucial for researchers as it addresses the **growing challenge of efficient reasoning in large language models**, providing a valuable guide to current methods and future directions. It highlights key challenges and potential solutions, paving the way for **more practical and scalable applications**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.23077/extracted/6320210/8_paper_structure.png)

> 🔼 This figure provides a visual overview of the paper's structure and the flow of topics discussed. It shows that the paper starts with an introduction to Large Reasoning Models (LRMs) and their efficiency challenges. Then, it presents a taxonomy for categorizing existing efficient inference methods for LRMs into two main types: explicit compact Chain-of-Thought (CoT) and implicit latent CoT.  The paper proceeds with empirical analyses of these methods, covering both performance and efficiency aspects. Finally, it discusses open challenges and potential future improvements in the field, such as new architectures, model merging, and agent routers.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview Structure of this Survey.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1">
<tr class="ltx_tr" id="S2.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.1">Types</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.2.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.3.1">Training</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.4.1">Strategy</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.5.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.6.1">Application</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.1.2.1" rowspan="25" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S2.T1.1.1.2.1.1">
<span class="ltx_inline-block ltx_align_left" id="S2.T1.1.1.2.1.1.1">
<span class="ltx_p" id="S2.T1.1.1.2.1.1.1.1">Explicit</span>
<span class="ltx_p" id="S2.T1.1.1.2.1.1.1.2">Compact</span>
<span class="ltx_p" id="S2.T1.1.1.2.1.1.1.3">CoT</span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">SoT <cite class="ltx_cite ltx_citemacro_citep">(Aytes et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib5" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">Prompt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen-2.5-7B/14B/32B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">Math, Commonsense, Logic, Scientific, Medical</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.3">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">Constrained-CoT <cite class="ltx_cite ltx_citemacro_citep">(Nayab et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib69" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">✗</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">Prompt</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-2-70B, Falcon-40B</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.4">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">CoD <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib108" title="">2025b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">✗</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">Prompt</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-4o, Claude 3.5 Sonnet</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math, Commonsense, Symbolic Reasoning</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.5">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">TALE-EP <cite class="ltx_cite ltx_citemacro_citep">(Han et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib29" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">✗</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.3" style="padding-left:3.0pt;padding-right:3.0pt;">Prompt</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.4" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.1-8B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.6">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.1" style="padding-left:3.0pt;padding-right:3.0pt;">Meta-Reasoner <cite class="ltx_cite ltx_citemacro_citep">(Sui et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib93" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">✗</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.3" style="padding-left:3.0pt;padding-right:3.0pt;">Prompt</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.4" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-4o, GPT-4o-mini, Gemini-Exp-1206</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math, Scientific</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.7">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.1" style="padding-left:3.0pt;padding-right:3.0pt;">SOLAR <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib49" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.4" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2VL-7B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.8">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.1" style="padding-left:3.0pt;padding-right:3.0pt;">C3oT <cite class="ltx_cite ltx_citemacro_citep">(Kang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib45" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.4" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-2-Chat
-7B &amp; -13B</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math, Commonsense</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.9">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.1" style="padding-left:3.0pt;padding-right:3.0pt;">TokenSkip <cite class="ltx_cite ltx_citemacro_citep">(Xia et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib106" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.4" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.1-8B-Instruct, Qwen2.5-
14B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.10">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.1" style="padding-left:3.0pt;padding-right:3.0pt;">InftyThink <cite class="ltx_cite ltx_citemacro_citep">(Yan et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib110" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S2.T1.1.1.10.4.1"></span> <span class="ltx_text" id="S2.T1.1.1.10.4.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.10.4.2.1">
<span class="ltx_tr" id="S2.T1.1.1.10.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.10.4.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-14B/32B, Qwen2.5-Math-1.5B/7B,</span></span>
<span class="ltx_tr" id="S2.T1.1.1.10.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.10.4.2.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.1-8B</span></span>
</span></span><span class="ltx_text" id="S2.T1.1.1.10.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S2.T1.1.1.10.5.1"></span> <span class="ltx_text" id="S2.T1.1.1.10.5.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.10.5.2.1">
<span class="ltx_tr" id="S2.T1.1.1.10.5.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.10.5.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Math,</span></span>
<span class="ltx_tr" id="S2.T1.1.1.10.5.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.10.5.2.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Scientific</span></span>
</span></span><span class="ltx_text" id="S2.T1.1.1.10.5.3"></span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.11">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.1" style="padding-left:3.0pt;padding-right:3.0pt;">LightThinker <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib120" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S2.T1.1.1.11.4.1"></span> <span class="ltx_text" id="S2.T1.1.1.11.4.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.11.4.2.1">
<span class="ltx_tr" id="S2.T1.1.1.11.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.11.4.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">DeepSeek-R1-Distill-Qwen-7B,</span></span>
<span class="ltx_tr" id="S2.T1.1.1.11.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.11.4.2.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">DeepSeek-R1-Distill-LLaMA-8B</span></span>
</span></span><span class="ltx_text" id="S2.T1.1.1.11.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S2.T1.1.1.11.5.1"></span> <span class="ltx_text" id="S2.T1.1.1.11.5.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.11.5.2.1">
<span class="ltx_tr" id="S2.T1.1.1.11.5.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.11.5.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Language Understanding,</span></span>
<span class="ltx_tr" id="S2.T1.1.1.11.5.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.11.5.2.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Math, Scientific, Commonsense,</span></span>
<span class="ltx_tr" id="S2.T1.1.1.11.5.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.11.5.2.1.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">Logic</span></span>
</span></span><span class="ltx_text" id="S2.T1.1.1.11.5.3"></span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.12">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.1" style="padding-left:3.0pt;padding-right:3.0pt;">CoT-Valve <cite class="ltx_cite ltx_citemacro_citep">(Ma et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib62" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S2.T1.1.1.12.4.1"></span> <span class="ltx_text" id="S2.T1.1.1.12.4.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.12.4.2.1">
<span class="ltx_tr" id="S2.T1.1.1.12.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.12.4.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">QwQ-32B-Preview,</span></span>
<span class="ltx_tr" id="S2.T1.1.1.12.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.12.4.2.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">DeepSeek-R1-Distill-LLaMA-8B,</span></span>
<span class="ltx_tr" id="S2.T1.1.1.12.4.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.12.4.2.1.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.1-8B, LLaMA-3.2-1B,</span></span>
<span class="ltx_tr" id="S2.T1.1.1.12.4.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.12.4.2.1.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen32B-Instruct</span></span>
</span></span><span class="ltx_text" id="S2.T1.1.1.12.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.13">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.1" style="padding-left:3.0pt;padding-right:3.0pt;">Distill System 2 <cite class="ltx_cite ltx_citemacro_citep">(Yu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib116" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.4" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-2-70B-chat</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math, Commonsense, Coin Flip</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.14">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.1" style="padding-left:3.0pt;padding-right:3.0pt;">SF <cite class="ltx_cite ltx_citemacro_citep">(Munkhbat et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib68" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S2.T1.1.1.14.4.1"></span> <span class="ltx_text" id="S2.T1.1.1.14.4.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.14.4.2.1">
<span class="ltx_tr" id="S2.T1.1.1.14.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.14.4.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.2-3B, Gemma2-2B , Qwen2.5-3B ,</span></span>
<span class="ltx_tr" id="S2.T1.1.1.14.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.14.4.2.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-Math-1.5B, DeepSeekMath-7B</span></span>
</span></span><span class="ltx_text" id="S2.T1.1.1.14.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.15">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.1" style="padding-left:3.0pt;padding-right:3.0pt;">Skip Steps <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib56" title="">2024c</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.4" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA2-7b, Phi-3-mini</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math, Logic</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.16">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.1" style="padding-left:3.0pt;padding-right:3.0pt;">VARR <cite class="ltx_cite ltx_citemacro_citep">(Jang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib40" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.4" style="padding-left:3.0pt;padding-right:3.0pt;">Mistral 7B, Llama3.2 1B/3B</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math, Commonsense</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.17">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.17.1" style="padding-left:3.0pt;padding-right:3.0pt;">DAST <cite class="ltx_cite ltx_citemacro_citep">(Shen et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib86" title="">2025b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.17.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.17.3" style="padding-left:3.0pt;padding-right:3.0pt;">SimPO</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.17.4" style="padding-left:3.0pt;padding-right:3.0pt;">DS-R1-Distill-Qwen-7B, DS-R1-Distill-Qwen-32B</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.17.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.18">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.18.1" style="padding-left:3.0pt;padding-right:3.0pt;">TALE-PT <cite class="ltx_cite ltx_citemacro_citep">(Han et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib29" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.18.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.18.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT, DPO</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.18.4" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.1-8B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.18.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.19">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.19.1" style="padding-left:3.0pt;padding-right:3.0pt;">Kimi k1.5 <cite class="ltx_cite ltx_citemacro_citep">(Kimi Team et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib47" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.19.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.19.3" style="padding-left:3.0pt;padding-right:3.0pt;">RL</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.19.4" style="padding-left:3.0pt;padding-right:3.0pt;">Kimi k1.5</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.19.5" style="padding-left:3.0pt;padding-right:3.0pt;">Multimodal Understanding, Math, Code</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.20">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.20.1" style="padding-left:3.0pt;padding-right:3.0pt;">O1-Pruner <cite class="ltx_cite ltx_citemacro_citep">(Luo et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib61" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.20.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.20.3" style="padding-left:3.0pt;padding-right:3.0pt;">RL</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.20.4" style="padding-left:3.0pt;padding-right:3.0pt;">Marco-o1-tB, QwQ-32B</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.20.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.21">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.21.1" style="padding-left:3.0pt;padding-right:3.0pt;">MRT <cite class="ltx_cite ltx_citemacro_citep">(Qu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib81" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.21.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.21.3" style="padding-left:3.0pt;padding-right:3.0pt;">RL</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.21.4" style="padding-left:3.0pt;padding-right:3.0pt;">DeepSeek-R1-Distill-Qwen-32B</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.21.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.22">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.22.1" style="padding-left:3.0pt;padding-right:3.0pt;"><cite class="ltx_cite ltx_citemacro_citep">(Arora &amp; Zanette, <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib4" title="">2025</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.22.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.22.3" style="padding-left:3.0pt;padding-right:3.0pt;">RL</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.22.4" style="padding-left:3.0pt;padding-right:3.0pt;">DS-R1-Distill-Qwen-1.5B, DS-R1-Distill-Qwen-7B</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.22.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.23">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.23.1" style="padding-left:3.0pt;padding-right:3.0pt;">Claude 3.7 <cite class="ltx_cite ltx_citemacro_citep">(Anthropic, <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib3" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.23.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.23.3" style="padding-left:3.0pt;padding-right:3.0pt;">RL</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.23.4" style="padding-left:3.0pt;padding-right:3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.23.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math, Code, Agent</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.24">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.24.1" style="padding-left:3.0pt;padding-right:3.0pt;">L1 <cite class="ltx_cite ltx_citemacro_citep">(Aggarwal &amp; Welleck, <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib1" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.24.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.24.3" style="padding-left:3.0pt;padding-right:3.0pt;">RL</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.24.4" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen-Distilled-R1-1.5B</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.24.5" style="padding-left:3.0pt;padding-right:3.0pt;">Language Understanding, Logic, Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.25">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.25.1" style="padding-left:3.0pt;padding-right:3.0pt;">SPIRIT <cite class="ltx_cite ltx_citemacro_citep">(Cui et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib18" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.25.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.25.3" style="padding-left:3.0pt;padding-right:3.0pt;">RL</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.25.4" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA3-8B-Instruct, Qwen2.5-
7B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.25.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.26">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.26.1" style="padding-left:3.0pt;padding-right:3.0pt;">IBPO <cite class="ltx_cite ltx_citemacro_citep">(Yu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib118" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.26.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.26.3" style="padding-left:3.0pt;padding-right:3.0pt;">RL</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.26.4" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.1-8B</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.26.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.27">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S2.T1.1.1.27.1" rowspan="8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S2.T1.1.1.27.1.1">
<span class="ltx_inline-block ltx_align_left" id="S2.T1.1.1.27.1.1.1">
<span class="ltx_p" id="S2.T1.1.1.27.1.1.1.1">Implicit</span>
<span class="ltx_p" id="S2.T1.1.1.27.1.1.1.2">Latent</span>
<span class="ltx_p" id="S2.T1.1.1.27.1.1.1.3">CoT</span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.27.2" style="padding-left:3.0pt;padding-right:3.0pt;">ICoT-KD <cite class="ltx_cite ltx_citemacro_citep">(Deng et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib19" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.27.3" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.27.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.27.5" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-2 Small/Medium</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.27.6" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.28">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.28.1" style="padding-left:3.0pt;padding-right:3.0pt;">CODI <cite class="ltx_cite ltx_citemacro_citep">(Shen et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib87" title="">2025c</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.28.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.28.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.28.4" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-2 Small, LLaMA-3.2-1B</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.28.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.29">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.29.1" style="padding-left:3.0pt;padding-right:3.0pt;">ICoT-SI <cite class="ltx_cite ltx_citemacro_citep">(Deng et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib20" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.29.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.29.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.29.4" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-2 Small/Medium, Phi-3 3.8B, Mistral 7B</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.29.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.30">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.30.1" style="padding-left:3.0pt;padding-right:3.0pt;">COCONUT <cite class="ltx_cite ltx_citemacro_citep">(Hao et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib30" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.30.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.30.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.30.4" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-2</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.30.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.31">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.31.1" style="padding-left:3.0pt;padding-right:3.0pt;">CCoT <cite class="ltx_cite ltx_citemacro_citep">(Cheng &amp; Van Durme, <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib11" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.31.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.31.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.31.4" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA2-7B-Chat</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.31.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math, Logic</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.32">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.32.1" style="padding-left:3.0pt;padding-right:3.0pt;">Heima <cite class="ltx_cite ltx_citemacro_citep">(Shen et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib85" title="">2025a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.32.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.32.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.32.4" style="padding-left:3.0pt;padding-right:3.0pt;">LLaVA-CoT, LLaMA-3.1-8B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.32.5" style="padding-left:3.0pt;padding-right:3.0pt;">Multimodal Reasoning</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.33">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.33.1" style="padding-left:3.0pt;padding-right:3.0pt;">Token assorted <cite class="ltx_cite ltx_citemacro_citep">(Su et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib91" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.33.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.33.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.33.4" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.2-1B, LLaMA-3.2-3B, LLaMA-3.1-8B</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.33.5" style="padding-left:3.0pt;padding-right:3.0pt;">Agentic Planning, Logic, Math.</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.34">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.34.1" style="padding-left:3.0pt;padding-right:3.0pt;">SoftCoT <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.23077v1#bib.bib109" title="">2025c</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.34.2" style="padding-left:3.0pt;padding-right:3.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.34.3" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.34.4" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.1-8B-Instruct, Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.34.5" style="padding-left:3.0pt;padding-right:3.0pt;">Math, Commonsense, Symbolic Reasoning</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table provides a comprehensive taxonomy of efficient inference methods specifically designed for Large Reasoning Models (LRMs).  It categorizes various methods based on their approach to improving inference efficiency (reducing token usage while preserving reasoning quality). The taxonomy distinguishes between explicit compact Chain-of-Thought (CoT) methods, which reduce tokens while maintaining explicit reasoning structure, and implicit latent CoT methods, which encode reasoning steps within hidden representations instead of explicit tokens. For each method, the table lists its type (explicit compact CoT or implicit latent CoT), the specific method name, the training strategy used (e.g., Supervised Fine-Tuning (SFT), Reinforcement Learning (RL)), the model used in the experiment, and the applications to which the method has been applied.
> <details>
> <summary>read the caption</summary>
> Table 1: A taxonomy of efficient inference methods for Large Reasoning Models.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.23077/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23077/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}