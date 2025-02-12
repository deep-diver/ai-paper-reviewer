---
title: "Hephaestus: Improving Fundamental Agent Capabilities of Large Language Models through Continual Pre-Training"
summary: "Hephaestus-Forge, a new large-scale pre-training corpus, significantly boosts LLM agent capabilities in API function calling, reasoning, and adaptability through continual pre-training."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Amazon",]
showSummary: true
date: 2025-02-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.06589 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuchen Zhuang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.06589" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.06589" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.06589/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current LLM-based autonomous agents suffer from limited capabilities due to **scarcity of agent-oriented pre-training data** and over-reliance on complex prompting or extensive fine-tuning.  These methods often hinder generalization and fail to introduce new capabilities.  Existing approaches primarily focus on fine-tuning, neglecting the crucial role of pre-training in establishing fundamental agentic abilities.

To overcome these challenges, the researchers introduce **Hephaestus-Forge**, a large-scale pre-training corpus designed to improve LLM agents' abilities in API function calling, reasoning, planning, and environmental adaptation. They investigate optimal data mixing ratios through scaling laws and continually pre-train a new open-source LLM called Hephaestus.  Results show that Hephaestus outperforms other open-source LLMs and rivals commercial LLMs in several agent benchmarks, demonstrating the effectiveness of Hephaestus-Forge in enhancing fundamental agentic capabilities and improving generalization to new tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Hephaestus-Forge, a novel large-scale pre-training corpus for LLM agents, was created. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Continual pre-training on Hephaestus-Forge significantly improves LLM agent capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Hephaestus, a new continual pre-trained open-source LLM, outperforms existing open-source LLMs and rivals commercial LLMs on several agent benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working with large language models (LLMs) as it addresses the critical issue of limited agent capabilities due to scarce training data.  It introduces a novel large-scale pre-training corpus and demonstrates how continual pre-training can significantly enhance the performance of LLM agents. This opens new avenues for improving LLM agent generalization, particularly for complex, multi-step tasks, and makes a significant contribution to the field of LLM-based autonomous agents.

------
#### Visual Insights



![](https://arxiv.org/html/2502.06589/x1.png)

> 🔼 This figure illustrates four different approaches to training large language model (LLM) agents.  (A) Prompting uses only prompts to guide the LLM, without adding new knowledge or capabilities.  This is the simplest but least effective approach. (B) Fine-tuning uses task-specific data to train the LLM. Although this improves performance on the specific task, it can hinder generalization to other tasks and negatively affect performance in non-agent contexts. (C) Instruction fine-tuning improves on fine-tuning by using instruction data for training.  While this improves generalization, the limitations similar to (B) still apply. (D) The proposed approach (Hephaestus-Forge) uses continual pre-training on a multi-source corpus designed to enhance the fundamental capabilities of the LLM agents, leading to better generalization and performance across a range of tasks. The figure highlights that continual pre-training is superior to other approaches in terms of generalization and retaining the original model's capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1: Training paradigms of LLM agents. Prompting alone fails to introduce new knowledge and capabilities, while heavy fine-tuning can hinder generalization and degrade performance in non-agent use cases, potentially suppressing the original base model capabilities.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S2.T1.1.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T1.1.1.1.2" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.2.1">Datasets</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T1.1.1.1.3" style="padding:-0.1pt 2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.3.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.3.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.3.1.1.1.1">Training</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.3.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.3.1.2.1.1">Paradigm</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.4" style="padding:-0.1pt 2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.4.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.4.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.4.1.1.1.1"># PT Data</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.4.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.4.1.2.1.1">(Tokens)</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.5" style="padding:-0.1pt 2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.5.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.5.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.5.1.1.1.1"># IFT Data</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.5.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.5.1.2.1.1">(Samples)</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T1.1.1.1.6" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.6.1"># APIs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.7" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.7.1">Code</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T1.1.1.1.8" style="padding:-0.1pt 2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.8.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.8.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.8.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.8.1.1.1.1">Nat.</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.8.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.8.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.8.1.2.1.1">Lang.</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.9" style="padding:-0.1pt 2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.9.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.9.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.9.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.9.1.1.1.1">Action</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.9.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.9.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.9.1.2.1.1">Traj.</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T1.1.1.1.10" style="padding:-0.1pt 2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.10.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.10.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.10.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.10.1.1.1.1">API</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.10.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.10.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.10.1.2.1.1">Doc.</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.11" style="padding:-0.1pt 2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.11.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.11.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.11.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.11.1.1.1.1">Func.</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.11.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.11.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.11.1.2.1.1">Call</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.12" style="padding:-0.1pt 2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.12.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.12.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.12.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.12.1.1.1.1">Multi.</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.12.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.12.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.12.1.2.1.1">Step</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.13" style="padding:-0.1pt 2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.13.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.13.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.13.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.13.1.1.1.1">Plan</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.13.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.13.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.13.1.2.1.1">Refine</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.14" style="padding:-0.1pt 2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.14.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.14.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.14.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.14.1.1.1.1">Multi.</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.14.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.14.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.14.1.2.1.1">Turn</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="13" id="S2.T1.1.2.2.1" style="padding:-0.1pt 2.0pt;"><em class="ltx_emph ltx_font_italic" id="S2.T1.1.2.2.1.1">Instruction Finetuning-based LLM Agents for Intrinsic Reasoning</em></td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.2.2.2" style="padding:-0.1pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.1.3.3.1" style="padding:-0.1pt 2.0pt;">FireAct <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.06589v1#bib.bib6" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.3.3.2" style="padding:-0.1pt 2.0pt;">FireAct</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.3.3.3" style="padding:-0.1pt 2.0pt;">IFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.3.3.4" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.3.3.5" style="padding:-0.1pt 2.0pt;">2.1K</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.3.3.6" style="padding:-0.1pt 2.0pt;">10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.3.3.7" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.3.3.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.3.3.8" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.3.3.8.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.3.3.9" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.3.3.9.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.3.3.10" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.3.3.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.3.3.11" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.3.3.11.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.3.3.12" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.3.3.12.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.3.3.13" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.3.3.13.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.1.3.3.14" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.3.3.14.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.4.4.1" style="padding:-0.1pt 2.0pt;">ToolAlpaca <cite class="ltx_cite ltx_citemacro_cite">Tang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.06589v1#bib.bib72" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.4.4.2" style="padding:-0.1pt 2.0pt;">ToolAlpaca</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.4.4.3" style="padding:-0.1pt 2.0pt;">IFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4.4" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4.5" style="padding:-0.1pt 2.0pt;">4.0K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.4.4.6" style="padding:-0.1pt 2.0pt;">400</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4.7" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.4.4.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.4.4.8" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.4.4.8.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4.9" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.4.4.9.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.4.4.10" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.4.4.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4.11" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.4.4.11.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4.12" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.4.4.12.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4.13" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.4.4.13.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.4.4.14" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.4.4.14.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.5.5.1" style="padding:-0.1pt 2.0pt;">ToolLLaMA <cite class="ltx_cite ltx_citemacro_cite">Qin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.06589v1#bib.bib56" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.5.5.2" style="padding:-0.1pt 2.0pt;">ToolBench</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.5.5.3" style="padding:-0.1pt 2.0pt;">IFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.5.4" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.5.5" style="padding:-0.1pt 2.0pt;">12.7K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.5.5.6" style="padding:-0.1pt 2.0pt;">16,464</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.5.7" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.5.5.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.5.5.8" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.5.5.8.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.5.9" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.5.5.9.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.5.5.10" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.5.5.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.5.11" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.5.5.11.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.5.12" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.5.5.12.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.5.13" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.5.5.13.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.5.5.14" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.5.5.14.1" style="color:#009B55;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.6.6.1" style="padding:-0.1pt 2.0pt;">AgentEvol <cite class="ltx_cite ltx_citemacro_citep">(Xi et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06589v1#bib.bib83" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.6.6.2" style="padding:-0.1pt 2.0pt;">AgentTraj-L</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.6.6.3" style="padding:-0.1pt 2.0pt;">IFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.6.4" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.6.5" style="padding:-0.1pt 2.0pt;">14.5K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.6.6.6" style="padding:-0.1pt 2.0pt;">24</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.6.7" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.6.6.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.6.6.8" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.6.6.8.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.6.9" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.6.6.9.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.6.6.10" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.6.6.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.6.11" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.6.6.11.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.6.12" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.6.6.12.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.6.13" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.6.6.13.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.6.6.14" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.6.6.14.1" style="color:#009B55;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.7.7.1" style="padding:-0.1pt 2.0pt;">Lumos <cite class="ltx_cite ltx_citemacro_cite">Yin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.06589v1#bib.bib92" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.7.7.2" style="padding:-0.1pt 2.0pt;">Lumos</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.7.7.3" style="padding:-0.1pt 2.0pt;">IFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.7.7.4" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.7.7.5" style="padding:-0.1pt 2.0pt;">20.0K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.7.7.6" style="padding:-0.1pt 2.0pt;">16</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.7.7.7" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.7.7.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.7.7.8" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.7.7.8.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.7.7.9" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.7.7.9.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.7.7.10" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.7.7.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.7.7.11" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.7.7.11.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.7.7.12" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.7.7.12.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.7.7.13" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.7.7.13.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.7.7.14" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.7.7.14.1" style="color:#009B55;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.8.8.1" style="padding:-0.1pt 2.0pt;">Agent-FLAN <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.06589v1#bib.bib9" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.8.8.2" style="padding:-0.1pt 2.0pt;">Agent-FLAN</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.8.8.3" style="padding:-0.1pt 2.0pt;">IFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.8.4" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.8.5" style="padding:-0.1pt 2.0pt;">24.7K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.8.8.6" style="padding:-0.1pt 2.0pt;">20</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.8.7" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.8.8.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.8.8.8" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.8.8.8.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.8.9" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.8.8.9.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.8.8.10" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.8.8.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.8.11" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.8.8.11.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.8.12" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.8.8.12.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.8.13" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.8.8.13.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.8.8.14" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.8.8.14.1" style="color:#009B55;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.9.9.1" style="padding:-0.1pt 2.0pt;">AgentTuning <cite class="ltx_cite ltx_citemacro_citep">(Zeng et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06589v1#bib.bib97" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.9.9.2" style="padding:-0.1pt 2.0pt;">AgentInstruct</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.9.9.3" style="padding:-0.1pt 2.0pt;">IFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.9.4" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.9.5" style="padding:-0.1pt 2.0pt;">35.0K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.9.9.6" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.9.7" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.9.9.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.9.9.8" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.9.9.8.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.9.9" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.9.9.9.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.9.9.10" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.9.9.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.9.11" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.9.9.11.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.9.12" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.9.9.12.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.9.13" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.9.9.13.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.9.9.14" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.9.9.14.1" style="color:#009B55;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="13" id="S2.T1.1.10.10.1" style="padding:-0.1pt 2.0pt;"><em class="ltx_emph ltx_font_italic" id="S2.T1.1.10.10.1.1">Instruction Finetuning-based LLM Agents for Function Calling</em></td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.10.10.2" style="padding:-0.1pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.1.11.11.1" style="padding:-0.1pt 2.0pt;">NexusRaven <cite class="ltx_cite ltx_citemacro_citep">(Srinivasan et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06589v1#bib.bib68" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.11.11.2" style="padding:-0.1pt 2.0pt;">NexusRaven</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.11.11.3" style="padding:-0.1pt 2.0pt;">IFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.11.11.4" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.11.11.5" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.11.11.6" style="padding:-0.1pt 2.0pt;">116</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.11.11.7" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.11.11.7.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.11.11.8" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.11.11.8.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.11.11.9" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.11.11.9.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.11.11.10" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.11.11.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.11.11.11" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.11.11.11.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.11.11.12" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.11.11.12.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.11.11.13" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.11.11.13.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.1.11.11.14" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.11.11.14.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.12.12.1" style="padding:-0.1pt 2.0pt;">Gorilla <cite class="ltx_cite ltx_citemacro_citep">(Patil et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06589v1#bib.bib54" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.12.12.2" style="padding:-0.1pt 2.0pt;">Gorilla</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.12.12.3" style="padding:-0.1pt 2.0pt;">IFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.12.12.4" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.12.12.5" style="padding:-0.1pt 2.0pt;">16.0K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.12.12.6" style="padding:-0.1pt 2.0pt;">1,645</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.12.12.7" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.12.12.7.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.12.12.8" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.12.12.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.12.12.9" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.12.12.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.12.12.10" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.12.12.10.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.12.12.11" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.12.12.11.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.12.12.12" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.12.12.12.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.12.12.13" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.12.12.13.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.12.12.14" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.12.12.14.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.13.13.1" style="padding:-0.1pt 2.0pt;">OpenFunctions-v2 <cite class="ltx_cite ltx_citemacro_citep">(Patil et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06589v1#bib.bib54" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.13.13.2" style="padding:-0.1pt 2.0pt;">OpenFunctions-v2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.13.13.3" style="padding:-0.1pt 2.0pt;">IFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.13.13.4" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.13.13.5" style="padding:-0.1pt 2.0pt;">65.0K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.13.13.6" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.13.13.7" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.13.13.7.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.13.13.8" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.13.13.8.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.13.13.9" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.13.13.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.13.13.10" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.13.13.10.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.13.13.11" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.13.13.11.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.13.13.12" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.13.13.12.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.13.13.13" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.13.13.13.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.13.13.14" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.13.13.14.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.14.14.1" style="padding:-0.1pt 2.0pt;">API Pack <cite class="ltx_cite ltx_citemacro_cite">Guo et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.06589v1#bib.bib20" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.14.14.2" style="padding:-0.1pt 2.0pt;">API Pack</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.14.14.3" style="padding:-0.1pt 2.0pt;">IFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.14.14.4" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.14.14.5" style="padding:-0.1pt 2.0pt;">1.1M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.14.14.6" style="padding:-0.1pt 2.0pt;">11,213</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.14.14.7" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.14.14.7.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.14.14.8" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.14.14.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.14.14.9" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.14.14.9.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.14.14.10" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.14.14.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.14.14.11" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.14.14.11.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.14.14.12" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.14.14.12.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.14.14.13" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.14.14.13.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.14.14.14" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.14.14.14.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.15.15.1" style="padding:-0.1pt 2.0pt;">LAM <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06589v1#bib.bib98" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.15.15.2" style="padding:-0.1pt 2.0pt;">AgentOhana</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.15.15.3" style="padding:-0.1pt 2.0pt;">IFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.15.15.4" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.15.15.5" style="padding:-0.1pt 2.0pt;">42.6K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.15.15.6" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.15.15.7" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.15.15.7.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.15.15.8" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.15.15.8.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.15.15.9" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.15.15.9.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.15.15.10" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.15.15.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.15.15.11" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.15.15.11.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.15.15.12" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.15.15.12.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.15.15.13" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.15.15.13.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.15.15.14" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.15.15.14.1" style="color:#009B55;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.16.16.1" style="padding:-0.1pt 2.0pt;">xLAM <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06589v1#bib.bib42" title="">2024e</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.16.16.2" style="padding:-0.1pt 2.0pt;">APIGen</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.16.16.3" style="padding:-0.1pt 2.0pt;">IFT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.16.16.4" style="padding:-0.1pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.16.16.5" style="padding:-0.1pt 2.0pt;">60.0K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.16.16.6" style="padding:-0.1pt 2.0pt;">3,673</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.16.16.7" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.16.16.7.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.16.16.8" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.16.16.8.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.16.16.9" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.16.16.9.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.16.16.10" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.16.16.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.16.16.11" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.16.16.11.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.16.16.12" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.16.16.12.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.16.16.13" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.16.16.13.1" style="color:#009B55;">✔</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.16.16.14" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.16.16.14.1" style="color:#009B55;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.17.17">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="13" id="S2.T1.1.17.17.1" style="padding:-0.1pt 2.0pt;"><em class="ltx_emph ltx_font_italic" id="S2.T1.1.17.17.1.1">Pretraining-based LLM Agents</em></td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.17.17.2" style="padding:-0.1pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.18.18" style="background-color:#E0F0F0;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.18.18.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.18.18.1.1" style="background-color:#E0F0F0;">Hephaestus</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.18.18.2" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.18.18.2.1" style="background-color:#E0F0F0;">Hephaestus-Forge</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.18.18.3" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.18.18.3.1" style="background-color:#E0F0F0;">PT</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.18.18.4" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.18.18.4.1" style="background-color:#E0F0F0;">103B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.18.18.5" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.18.18.5.1" style="background-color:#E0F0F0;">95.0K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.18.18.6" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.18.18.6.1" style="background-color:#E0F0F0;">76,537</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.18.18.7" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.18.18.7.1" style="color:#009B55;background-color:#E0F0F0;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.18.18.8" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.18.18.8.1" style="color:#009B55;background-color:#E0F0F0;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.18.18.9" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.18.18.9.1" style="color:#009B55;background-color:#E0F0F0;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.18.18.10" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.18.18.10.1" style="color:#009B55;background-color:#E0F0F0;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.18.18.11" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.18.18.11.1" style="color:#009B55;background-color:#E0F0F0;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.18.18.12" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.18.18.12.1" style="color:#009B55;background-color:#E0F0F0;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.18.18.13" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.18.18.13.1" style="color:#009B55;background-color:#E0F0F0;">✔</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.18.18.14" style="padding:-0.1pt 2.0pt;"><span class="ltx_text" id="S2.T1.1.18.18.14.1" style="color:#009B55;background-color:#E0F0F0;">✔</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares various existing Large Language Model (LLM) agents that utilize instruction fine-tuning for intrinsic reasoning and function calling.  It details the methodology (Instruction Fine-Tuning), the dataset used for training (size, number of samples, and APIs), and whether the agent exhibits capabilities in natural language, action trajectories, API documentation, API function calling, multi-step refinement, and planning.  The table highlights the limitations of instruction fine-tuning-only approaches by showing the scarcity of agent-specific pre-training data, emphasizing the differences between general-purpose and agent-oriented datasets. The abbreviations 'PT' and 'IFT' stand for 'Pre-Training' and 'Instruction Fine-Tuning', respectively.
> <details>
> <summary>read the caption</summary>
> Table 1: Summary of existing instruction finetuning-based LLM agents for intrinsic reasoning and function calling, along with their training resources and sample sizes. 'PT' and 'IFT' denote 'Pre-Training' and 'Instruction Fine-Tuning', respectively.
> </details>





### In-depth insights


#### Agent LLM Pretraining
Agent LLM pretraining is a crucial area of research focusing on enhancing the fundamental capabilities of large language models (LLMs) for autonomous agent applications.  **Current methods often rely on complex prompting or extensive fine-tuning, which limits generalization and scalability.**  Agent-oriented pretraining addresses this by creating large-scale datasets specifically designed to improve core agentic skills, such as API function calling, intrinsic reasoning and planning, and adapting to environmental feedback.  **This approach moves beyond superficial alignment by focusing on foundational capabilities rather than task-specific instruction following.**  A key challenge lies in the scarcity of suitable agent-specific data; therefore, innovative data curation and augmentation techniques are critical.   **Optimal data composition, including the balance of agent-specific data and general text/code, is a further critical research area, often explored via scaling laws.**  Successful agent LLM pretraining should result in enhanced performance across various agent benchmarks and improved generalization to new tasks and environments, ultimately bridging the gap between open-source and commercial LLMs in the field of autonomous agents.

#### Hephaestus-Forge Data
The Hephaestus-Forge data is a **multi-faceted, large-scale dataset** designed to improve the fundamental capabilities of large language model (LLM) agents.  It addresses the scarcity of agent-oriented pre-training data by including **diverse sources** such as API documentation, function-calling trajectories, code, and general text. This approach is crucial as it moves beyond instruction fine-tuning, acknowledging that foundational knowledge significantly impacts an agent's generalizability.  The dataset's **multi-modal nature** enhances the LLM's understanding of APIs and their usage, fostering enhanced intrinsic reasoning, planning, and adaptability.  A notable aspect is the use of **scaling laws** to optimize the dataset's composition, ensuring a balance between specialized agent data and general knowledge for robust performance.  This highlights a **data-driven approach** to LLM agent development, focusing on the pre-training phase to build strong foundations, unlike methods relying heavily on post-training techniques that sometimes sacrifice generalization.

#### Scaling Laws & Mix
The heading 'Scaling Laws & Mix' suggests an investigation into how the quantity and types of data used in training a large language model (LLM) impact its performance.  **Scaling laws** explore the relationship between model size, dataset size, and performance, allowing researchers to predict the performance of larger models based on smaller-scale experiments. The 'Mix' component likely refers to the **composition of the training dataset**.  This could involve combining different types of data, such as text, code, and agent-specific instructions, in various proportions. The research likely explores how these different data types contribute to the LLM's abilities in tasks involving planning, reasoning, and function calling.  The optimal mix of data types and the scaling behavior across various mixes is crucial for building effective and efficient LLMs, and understanding these aspects is paramount for improving the fundamental agent capabilities of LLMs.  **The study probably demonstrates an empirically derived optimal data composition ratio** based on experiments using scaling laws, showing how specific data mixes affect agent performance and generalization capabilities.

#### Hephaestus Model
The Hephaestus model, as described in the research paper, is a novel large language model (LLM) specifically designed to enhance the fundamental capabilities of LLM agents.  **Key improvements** focus on API function calling, intrinsic reasoning and planning, and adapting to environmental feedback. Unlike previous approaches that heavily rely on complex prompting or extensive fine-tuning, Hephaestus leverages a large-scale pre-training corpus called Hephaestus-Forge. This corpus contains a meticulously curated mix of agent-specific data (including API documentation and usage trajectories), code, and general text data, addressing the scarcity of agent-oriented pre-training data.  The continual pre-training process results in a model that outperforms other open-source LLMs and rivals commercial LLMs in various agent benchmarks. This demonstrates the model's **effectiveness in improving fundamental agentic capabilities** and its ability to generalize to new tasks and environments.  **A key innovation** is the use of scaling laws to determine the optimal data mixing ratio in the pre-training corpus, leading to improved performance. The two-stage pre-training process, followed by instruction fine-tuning, contributes to the model's robustness and strong performance across diverse tasks.

#### Ablation & Generalization
An ablation study systematically removes components to isolate their individual contributions.  **In the context of a large language model (LLM) for agent tasks, this might involve removing specific pre-training data sources, such as API documentation or code examples, to assess their impact on performance.**  Generalization, on the other hand, measures the model's ability to apply learned knowledge to new, unseen tasks or situations.  A strong generalization capability is crucial for robust agent performance. The combination of ablation and generalization studies provides strong evidence of the model's architecture. By carefully removing parts of the training process, researchers can pinpoint the specific components responsible for performance gains and identify any potential overfitting to specific tasks within the training data. This combination provides a more robust model with better transferability and reliability in various scenarios.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.06589/x2.png)

> 🔼 This figure shows a pie chart illustrating the composition of the Hephaestus-Forge dataset.  It breaks down the dataset into its constituent parts: API documentation, function calls, code, multi-modality data, reasoning data, coding data, and various text sources (e.g. Arxiv, Wikipedia, web crawls).  The proportions of each data type indicate the relative emphasis placed on different aspects of agent capabilities during pre-training.
> <details>
> <summary>read the caption</summary>
> (a) Hephaestus-Forge
> </details>



![](https://arxiv.org/html/2502.06589/x3.png)

> 🔼 This figure shows the seed data used to create the Hephaestus-Forge pre-training corpus.  It specifically details the 'Tool Data' component, illustrating the various sources of information included. These sources represent diverse types of agent-related data and include API trajectories, tool documentation from multiple sources (e.g., StarCoder APIs, API-Pack, ToolBench, etc.), code examples, and natural language planning data.
> <details>
> <summary>read the caption</summary>
> (b) Tool Data
> </details>



![](https://arxiv.org/html/2502.06589/x4.png)

> 🔼 This figure shows a t-SNE visualization of the retrieved web data used in the Hephaestus-Forge dataset.  The visualization plots the data points in a two-dimensional space, where proximity indicates semantic similarity. The colorful points represent the seed data from various sources, while the black points represent the retrieved data. The gray points represent the general text data.  The visualization demonstrates that the retrieved data is more semantically similar to the seed data than to the general text, indicating successful retrieval of relevant agent data from the web.
> <details>
> <summary>read the caption</summary>
> (c) Retrieved Data
> </details>



![](https://arxiv.org/html/2502.06589/x5.png)

> 🔼 This t-SNE plot visualizes the semantic relationships between different data sources used in the Hephaestus-Forge dataset.  Seed data (colorful points) from various sources like API documentation, code, and web crawls are shown, along with the retrieved web data (black points) and general text data (gray points). The proximity of the retrieved data points to the seed data points illustrates the effectiveness of the semantic matching process in retrieving relevant web data for pre-training.
> <details>
> <summary>read the caption</summary>
> (d) t-SNE: Retrieved Data
> </details>



![](https://arxiv.org/html/2502.06589/x6.png)

> 🔼 Figure 2 illustrates the composition of the Hephaestus-Forge dataset.  Panel (a) shows an overview of the entire dataset, highlighting the diverse data sources. Panel (b) details the seed data collection process, outlining the different sources and their relative contributions. Panel (c) shows the retrieved agent data obtained from the open web, expanding the dataset further. Finally, panel (d) provides a t-SNE visualization of the semantic space, demonstrating that the retrieved data points cluster closely to the seed data points and are clearly distinct from general text.  This highlights the quality and relevance of the retrieved data.
> <details>
> <summary>read the caption</summary>
> Figure 2: Data composition of (a) the entire Hephaestus-Forge, (b) seed data collection (§ 4.1), and (c) retrieved agent data from the open web (§ 4.2). A t-SNE visualization (d) depicts seed data (colorful points, with each color representing different data sources), retrieved data (black), and general text (gray) within the semantic space, where retrieved data is closer to the selected seed data than to the general text. Detailed data sources are in § A.1.
> </details>



![](https://arxiv.org/html/2502.06589/x7.png)

> 🔼 This figure shows the results of experiments investigating the optimal ratio of agent data within a pre-training corpus for large language models (LLMs).  The x-axis represents the percentage of agent data in the training corpus, while the y-axis displays the benchmark loss (a measure of model performance).  Multiple lines represent different benchmarks, demonstrating how the loss changes as the proportion of agent data varies. The figure demonstrates that an optimal mixing ratio exists, where including too little or too much agent data negatively impacts performance.
> <details>
> <summary>read the caption</summary>
> Figure 3: Scaling law of the relationship between agent data mixing ratio (%percent\%%) and benchmark loss.
> </details>



![](https://arxiv.org/html/2502.06589/x8.png)

> 🔼 This figure illustrates the three-stage training process for the Hephaestus model. Stage I involves injecting general agent knowledge through pre-training on a large dataset containing diverse data sources like general text, code, and API documentation. In Stage II, the model further enhances its agent-specific capabilities using a high-quality seed dataset of agent-relevant data. Finally, Stage III includes instruction fine-tuning using instruction-completion datasets to align the model with specific task requirements and user preferences.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Overview of the pre-training (Stages I & II) and instruction fine-tuning (III) framework in Hephaestus.
> </details>



![](https://arxiv.org/html/2502.06589/x9.png)

> 🔼 Figure 5 illustrates the training and evaluation results for the Hephaestus model. Panel (a) shows the training loss curve during both continual pre-training (with two distinct stages) and subsequent instruction fine-tuning.  Panel (b) displays the benchmark loss at various checkpoints during the training process, demonstrating performance improvement over time. Finally, panel (c) provides a comparative analysis of the benchmark loss across different base models, highlighting Hephaestus's superior performance.
> <details>
> <summary>read the caption</summary>
> Figure 5: Training and benchmark loss. (a) Training loss of Hephaestus during continual pre-training and instruction fine-tuning. (b) Benchmark loss at periodic training checkpoints and (c) a comparison across base models.
> </details>



![](https://arxiv.org/html/2502.06589/x10.png)

> 🔼 Figure 6 presents example task formats from the Hephaestus-Forge dataset, illustrating the diversity of data included.  It showcases three key aspects: Tool documentation provides structured information about APIs, detailing parameters and functionalities. Action trajectories, often with environmental feedback, show sequences of actions taken by an agent to solve a problem, including observations and resulting responses. Code data includes actual code examples that are relevant to the tasks and contribute to the model's understanding of both problem-solving strategies and implementation details.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Examples of different task formats in Hephaestus-Forge, including tool documentation, action trajectory (w/ environmental feedback), and code data.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.3.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.3.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.3.1.1.1.1">Training</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.3.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.3.1.2.1.1">Paradigm</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the main experiments comparing the performance of the Hephaestus model with various baselines across three agent benchmarks: AgentBench, BFCL-v3, and BFCL-v2.  Different model sizes are included in the comparison, ranging from small open-source LLMs to larger, commercial API-based models.  The best and second-best results for each benchmark are highlighted in bold and underlined text, respectively.  The table also provides a clear indication of whether the models are open-source (OSS) or API-based commercial LLMs.
> <details>
> <summary>read the caption</summary>
> Table 2: Main experiments on three agent benchmarks across various model scales. Bold and underlined texts represent the best and the second-best results, respectively. Notations are consistent throughout all tables. “OSS”, “API”, and “OA” denote “Open-Sourced LLMs”, “API-based Commercial LLMs”, and “Overall”, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.4.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.4.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.4.1.1.1.1"># PT Data</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.4.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.4.1.2.1.1">(Tokens)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of the two-stage continual pre-training and the retrieved web data on the model's performance. It compares the full model's results against versions where one or both of these components have been removed, allowing for a quantitative analysis of their individual contributions. The metrics used likely reflect the model's performance on benchmark tasks such as intrinsic reasoning and function calling.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation studies on the effect of (1) different pre-training stages and (2) retrieved data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.5.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.5.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.5.1.1.1.1"># IFT Data</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.5.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.5.1.2.1.1">(Samples)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of various LLMs' performance across three agent benchmark tasks: AgentBench, BFCL-v3, and BFCL-v2.  It demonstrates the ability of Hephaestus to generalize its capabilities beyond the specific tasks it was trained on, unlike models fine-tuned for specific tasks.  The results highlight Hephaestus's superior performance, particularly in multi-turn complex tasks.
> <details>
> <summary>read the caption</summary>
> Table 4: Generalization across three agent benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.8.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.8.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.8.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.8.1.1.1.1">Nat.</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.8.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.8.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.8.1.2.1.1">Lang.</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a comprehensive evaluation of Hephaestus and other LLMs across various benchmarks.  It demonstrates Hephaestus's ability to maintain strong general language model capabilities while also exhibiting competitive performance on tasks specifically designed for agent-based LLMs. The benchmarks cover a range of tasks, including mathematical reasoning, code generation, commonsense reasoning, and instruction following. The results show that Hephaestus performs competitively with or better than many base and specialized models, highlighting its effectiveness in balancing general abilities with specific agent capabilities.
> <details>
> <summary>read the caption</summary>
> Table 5: Comprehensive evaluation of general model capabilities across diverse benchmarks. Hephaestus maintains general capabilities while achieving competitive performance against baseline and specialized models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.9.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.9.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.9.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.9.1.1.1.1">Action</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.9.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.9.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.9.1.2.1.1">Traj.</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the fastText filter in classifying agent-relevant data from general web data.  It shows the accuracy, F1-score, precision, and recall achieved by the filter. These metrics help assess the effectiveness of the filter in identifying relevant data for training the Hephaestus model and removing noisy or irrelevant information.
> <details>
> <summary>read the caption</summary>
> Table 6: Classification results of the fastText filter.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.10.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.10.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.10.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.10.1.1.1.1">API</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.10.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.10.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.10.1.2.1.1">Doc.</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents the main experimental results for the Berkeley Function Calling Leaderboard (BFCL)-v2 benchmark.  It shows the performance of various LLMs, including Hephaestus and several baselines, across multiple aspects of function calling.  The metrics include overall accuracy, as well as performance broken down by function type (Simple, Python, Java, Javascript, Multi-Function, Parallel Function, Parallel Multi-Function), and execution success rate.  This detailed breakdown allows for a precise comparison of the different models' capabilities in handling various aspects of function calling and execution, highlighting the strengths and weaknesses of each approach.
> <details>
> <summary>read the caption</summary>
> Table 7: Main experiment results on BFCL-v2.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.11.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.11.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.11.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.11.1.1.1.1">Func.</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.11.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.11.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.11.1.2.1.1">Call</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different models on the AgentBench benchmark.  It specifically focuses on the results obtained using Hephaestus-7B, which is based on the Mistral-7B-v0.3 large language model (LLM), and compares its performance against other baselines such as the Mistral-7B-v0.3 model itself, both with and without instruction fine-tuning.  The comparison allows for an assessment of the impact of the Hephaestus pre-training methodology on AgentBench performance and highlights the effects of using a specific backbone LLM (Mistral-7B-v0.3) on overall results.
> <details>
> <summary>read the caption</summary>
> Table 8: Experimental results of Hephaestus-7B (Mistral) with Mistral-7B-v0.3 as backbone LLM on AgentBench.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.12.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.12.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.12.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.12.1.1.1.1">Multi.</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.12.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.12.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.12.1.2.1.1">Step</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 9 details the sources of seed data used to create the Hephaestus-Forge pre-training corpus.  It lists each data source, its type (e.g., trajectory data, documentation), format, size in billions of tokens, and a URL link to access the data. The table provides transparency regarding the diverse and extensive resources used to build the dataset.
> <details>
> <summary>read the caption</summary>
> Table 9: Data sources of the seed data in Hephaestus-Forge.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.13.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.13.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.13.1.1.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.13.1.1.1.1">Plan</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.13.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.13.1.2.1" style="padding:-0.1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.13.1.2.1.1">Refine</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the additional seed data sources used in creating the Hephaestus-Forge pre-training corpus.  It details the type of data (e.g., Trajectories, Documentation), the format, the size in billions of tokens, and a link to the data source for each entry.  This is a continuation of Table 9, providing a more complete picture of the diverse data used to build the corpus.
> <details>
> <summary>read the caption</summary>
> Table 10: Data sources of the seed data in Hephaestus-Forge (Cont’d).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.06589/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06589/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}