---
title: "Breaking the Data Barrier -- Building GUI Agents Through Task Generalization"
summary: "GUI agent learns to generalize tasks better by training on reasoning-intensive tasks, breaking the data barrier for improved performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Zhejiang University",]
showSummary: true
date: 2025-04-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.10127 {{< /keyword >}}
{{< keyword icon="writer" >}} Junlei Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-15 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.10127" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.10127" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.10127/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

GUI agents automate digital tasks but are limited by data scarcity. VLMs are trained on data-rich, reasoning-intensive tasks during a mid-training phase. Tasks include GUI perception, multimodal reasoning, and textual reasoning. Experiments across 11 tasks showed task generalization is highly effective, with multimodal math reasoning boosting AndroidWorld by 6.3%. Text-only math data improves GUI web agent performance, showing cross-modal generalization from text to visual domains. 



This paper introduces a mid-training stage to enhance agentic capabilities before GUI-specific fine-tuning. The most effective mid-training tasks are identified and optimized mixture datasets are curated. It achieves performance gains of 8.0% on WebArena and 12.2% on AndroidWorld. Contrary to prior assumptions, GUI perception data has a limited impact. GUIMid, a 300k dataset, combines best-performing domains. GUIMid achieves SOTA on AndroidWorld in pure-visual settings and improves Qwen2-VL to GPT4-o levels.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Task generalization is highly effective for GUI agents, with multimodal math reasoning leading to substantial improvements. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} GUI perception data has a comparatively limited impact on final performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Optimized mixture datasets yield significant absolute performance gains on WebArena and AndroidWorld. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for GUI agent researchers as it **tackles the data scarcity problem**, offering a practical mid-training approach using readily available datasets. It **reveals effective knowledge transfer strategies** and **optimizes performance**, opening new avenues for cross-domain learning in GUI automation.

------
#### Visual Insights



![](https://arxiv.org/html/2504.10127/x1.png)

> 🔼 This figure illustrates the two-stage training process for GUI agents. The left side shows the mid-training phase, where the model is trained on data from non-GUI domains (like multimodal reasoning, text-based tasks, etc.) to enhance its general capabilities.  These enhanced capabilities are then tested for generalization to GUI tasks. The right side depicts the fine-tuning phase, where the model is further trained on GUI trajectory data for specific GUI task adaptation and improved performance. This approach aims to address the limited availability of high-quality GUI trajectory data by leveraging abundant data from related areas.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the mid-training and fine-tuning process. Left: We first train the GUI agent on mid-training data, primarily from non-GUI domains, to investigate whether the enhanced capabilities can generalize to GUI agent tasks; Right: We perform post-training on GUI trajectory data.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1">Domains</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.2.1">Ability</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.3.1">Datasets</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.4.1">Samples</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.5.1">Type</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S3.T1.1.1.2.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.1.1">Vision-and-Language Modality</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.3.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.3.1.1">Chart/Document QA</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.3.3.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.3.2.1">Perception</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.3.3.3" style="padding-top:1pt;padding-bottom:1pt;">InfographicVQA <cite class="ltx_cite ltx_citemacro_citep">(Guo et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib8" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.3.3.4" style="padding-top:1pt;padding-bottom:1pt;">2,184</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T1.1.1.3.3.5" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought<sup class="ltx_sup" id="S3.T1.1.1.3.3.5.1">*</sup>, Answer</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.4">
<td class="ltx_td" id="S3.T1.1.1.4.4.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td" id="S3.T1.1.1.4.4.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.4.4.3" style="padding-top:1pt;padding-bottom:1pt;">Ureader QA <cite class="ltx_cite ltx_citemacro_citep">(Guo et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib8" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.4.4.4" style="padding-top:1pt;padding-bottom:1pt;">53,794</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.4.4.5" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought, Answer</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5.5">
<td class="ltx_td" id="S3.T1.1.1.5.5.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td" id="S3.T1.1.1.5.5.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.5.3" style="padding-top:1pt;padding-bottom:1pt;">MPDocVQA <cite class="ltx_cite ltx_citemacro_citep">(Tito et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib36" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.5.4" style="padding-top:1pt;padding-bottom:1pt;">431</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.5.5.5" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought, Answer</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6.6">
<td class="ltx_td" id="S3.T1.1.1.6.6.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td" id="S3.T1.1.1.6.6.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.6.6.3" style="padding-top:1pt;padding-bottom:1pt;">MathV360k <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib19" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.6.6.4" style="padding-top:1pt;padding-bottom:1pt;">93,591</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.6.6.5" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought, Answer</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7.7">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.7.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.7.1.1">Non-GUI Perception</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.7.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.7.2.1">Perception</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.7.3" style="padding-top:1pt;padding-bottom:1pt;">Ureader OCR <cite class="ltx_cite ltx_citemacro_citep">(Ye et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib45" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.7.4" style="padding-top:1pt;padding-bottom:1pt;">6,146</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.7.7.5" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought<sup class="ltx_sup" id="S3.T1.1.1.7.7.5.1">*</sup>, Answer</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8.8">
<td class="ltx_td" id="S3.T1.1.1.8.8.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td" id="S3.T1.1.1.8.8.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.8.8.3" style="padding-top:1pt;padding-bottom:1pt;">DUE <cite class="ltx_cite ltx_citemacro_citep">(Borchmann et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib2" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.8.8.4" style="padding-top:1pt;padding-bottom:1pt;">143,854</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.8.8.5" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Answer</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9.9">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.9.9.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.9.9.1.1">GUI Perception</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.9.9.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.9.9.2.1">Perception</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.9.9.3" style="padding-top:1pt;padding-bottom:1pt;">MultiUI <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib18" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.9.9.4" style="padding-top:1pt;padding-bottom:1pt;">150,000</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.9.9.5" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Answer</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10.10">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.10.10.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.10.10.1.1">Web Screenshot2Code</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.10.10.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.10.10.2.1">Perception</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.10.10.3" style="padding-top:1pt;padding-bottom:1pt;">Web2Code <cite class="ltx_cite ltx_citemacro_citep">(Yun et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib48" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.10.10.4" style="padding-top:1pt;padding-bottom:1pt;">150,000</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.10.10.5" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Answer</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.11.11">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.11.11.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.11.1.1">Multi-modal Math</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.11.11.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.11.2.1">Reasoning</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.11.11.3" style="padding-top:1pt;padding-bottom:1pt;">Mavis <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib50" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.11.11.4" style="padding-top:1pt;padding-bottom:1pt;">150,000</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.11.11.5" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought, Answer</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.12.12">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.12.12.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.12.12.1.1">Multi-round Visual Conversation</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.12.12.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.12.12.2.1">Interaction</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.12.12.3" style="padding-top:1pt;padding-bottom:1pt;">SVIT <cite class="ltx_cite ltx_citemacro_citep">(Zhao et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib51" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.12.12.4" style="padding-top:1pt;padding-bottom:1pt;">150,000</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.12.12.5" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought, Answer</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.13.13">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.13.13.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.13.13.1.1">Non-GUI Agent Trajectories</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.13.13.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.13.13.2.1">Interaction</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.13.13.3" style="padding-top:1pt;padding-bottom:1pt;">AlfWorld <cite class="ltx_cite ltx_citemacro_citep">(Guo et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib8" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.13.13.4" style="padding-top:1pt;padding-bottom:1pt;">51,780</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.13.13.5" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought, Answer</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.14.14">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S3.T1.1.1.14.14.1" style="padding-top:1pt;padding-bottom:1pt;">Language Modality</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.15.15.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.15.15.1.1">MathInstruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.15.15.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.15.15.2.1">Reasoning</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.15.15.3" style="padding-top:1pt;padding-bottom:1pt;">MathInstruct <cite class="ltx_cite ltx_citemacro_citep">(Yue et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib47" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.15.15.4" style="padding-top:1pt;padding-bottom:1pt;">150,000</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T1.1.1.15.15.5" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought, Answer</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.16.16">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.16.16.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.16.16.1.1">Olympiad Math</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.16.16.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.16.16.2.1">Reasoning</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.16.16.3" style="padding-top:1pt;padding-bottom:1pt;">NuminaMath <cite class="ltx_cite ltx_citemacro_citep">(LI et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib15" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.16.16.4" style="padding-top:1pt;padding-bottom:1pt;">150,000</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.16.16.5" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought, Answer</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.17.17">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.17.17.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.17.17.1.1">CodeI/O</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.17.17.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.17.17.2.1">Reasoning</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.17.17.3" style="padding-top:1pt;padding-bottom:1pt;">CodeI/O <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib16" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.17.17.4" style="padding-top:1pt;padding-bottom:1pt;">150,000</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.17.17.5" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought, Answer</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.18.18">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.18.18.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.18.18.1.1">Web Knowledge Base</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.18.18.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.18.18.2.1">Knowledge</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.18.18.3" style="padding-top:1pt;padding-bottom:1pt;">Synatra <cite class="ltx_cite ltx_citemacro_citep">(Ou et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib27" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.18.18.4" style="padding-top:1pt;padding-bottom:1pt;">99,924</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.18.18.5" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought, Answer</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.19.19">
<td class="ltx_td ltx_border_bb" id="S3.T1.1.1.19.19.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_bb" id="S3.T1.1.1.19.19.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.1.1.19.19.3" style="padding-top:1pt;padding-bottom:1pt;">AgentTrek <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib42" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.1.1.19.19.4" style="padding-top:1pt;padding-bottom:1pt;">50,076</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T1.1.1.19.19.5" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought, Answer</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the statistics of eleven datasets used for mid-training a vision-language model (VLM) to improve its ability to perform GUI-related tasks.  The datasets span seven multimodal domains (combining visual and textual information) and four textual-only domains. For each dataset, the table lists the domain's primary ability (e.g., Perception, Reasoning, Knowledge), the specific dataset name, the number of samples included, and the type of data provided (Instruction, Thought, Answer).  The asterisk (*) indicates that some instructions in certain datasets don't demand a 'Thought' response; instead, only a concise answer is required.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics of the domains and corresponding datasets used in mid-training, (*) indicates that some instructions in the dataset do not require a “Thought” (e.g., “Answer concisely with one word or phrase.”).
> </details>





### In-depth insights


#### Task Generaliz.
**Task generalization** is a critical challenge for GUI agents due to limited high-quality training data. The paper proposes a mid-training stage using diverse, data-rich tasks (e.g., multimodal reasoning, GUI perception). **The core idea** is to enhance general agentic abilities before fine-tuning on GUI-specific data, enabling effective knowledge transfer across domains. Experiments explore various mid-training tasks, demonstrating that tasks unrelated to GUI can generalize and help to solve complex digital tasks by yielding substantial improvements, even text-only mathematical data significantly boosts GUI web agent performance. By optimizing and curate the mixed dataset, it leads to high gains compared to individual data, thus addressing data scarcity.

#### GUI Agents: VLM
GUI Agents leveraging Vision Language Models (VLMs) represent a paradigm shift in automating digital tasks. **The potential for cross-platform solutions and seamless interaction with diverse interfaces is transformative.** However, the reliance on high-quality trajectory data presents a significant bottleneck. This research addresses this limitation by strategically incorporating reasoning-intensive tasks during a dedicated mid-training phase. The core idea is to enhance the VLM's foundational capabilities, enabling better generalization to GUI planning scenarios. This approach effectively addresses the problem of scarce and expensive GUI trajectory data. It uses diverse reasoning-intensive datasets instead. **Tasks like multimodal and text based mathematical reasoning are used to enhance cross modal knowledge transfer.** It highlights how leveraging readily available data and focusing on reasoning can overcome data scarcity issues. Results demonstrate **substantial performance improvements** and underscore the benefits of cross-domain knowledge transfer for GUI agent development.

#### GUI-Mid SOTA
**GUI-Mid SOTA** likely refers to the state-of-the-art performance achieved using the newly introduced **GUIMid** dataset for GUI-based agents. If GUIMid attains new SOTA, it signifies a substantial leap in agent capabilities. The dataset's composition is crucial, meaning its diverse nature contributes to enhanced generalization. Successfully leveraging GUIMid implies solving prior data scarcity, potentially enabling agents to tackle complex tasks effectively. The results achieved with GUIMid, in effect, raise the bar for future research in GUI automation.

#### ↑Text Reasoning
Text reasoning, in the context of GUI agents, involves enabling the agent to **understand and process textual information**, which could be instructions, web page content, or error messages. It helps the agent to **make informed decisions and plans**. **Models are trained on a large amount of text-based data.** Text reasoning tasks demonstrate substantial **performance improvements across benchmarks**. GUI agents can enhance fundamental abilities, even for multimodal tasks, offering valuable insights for limited GUI in-domain training data.

#### ↑Data,↓Forgetting
The title '↑Data,↓Forgetting' encapsulates a critical tension in machine learning: the **more data** used to train a model, the **greater the risk of forgetting** previously learned information. This is especially pertinent in continual learning scenarios where models are sequentially exposed to new tasks or datasets. **Increased data volume**, while beneficial for overall performance and generalization, can inadvertently lead to **catastrophic forgetting**, where the model's accuracy on older tasks drastically declines. Several factors contribute to this phenomenon, including **limited model capacity**, **data imbalance**, and **conflicting gradient updates**. As the model adapts to new data, it may overwrite or distort the parameters that were crucial for solving previous tasks. Mitigation strategies often involve techniques like **regularization**, **knowledge distillation**, and **replay buffers** to preserve or reinforce the knowledge acquired from earlier experiences. Addressing this trade-off requires careful consideration of the data distribution, model architecture, and learning algorithm.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.10127/x2.png)

> 🔼 This figure showcases a comparative analysis of two models performing the same task: one trained with mid-training (Model w/ Mid-Training) and one without (Model w/o Mid-Training). The central text details the thought process and chosen actions for each model.  The left and right screenshots display the screen's state before and after the action, respectively. The key takeaway is that the model incorporating mid-training demonstrates error recovery and corrective action generation, unlike the model trained without mid-training, which fails to recover from its initial errors.
> <details>
> <summary>read the caption</summary>
> Figure 2: A case illustrating the performance of the Model w/o Mid-Training and the Model w/ Mid-Training under the same task. The middle text shows the model’s thought process and the action taken, while the screenshots on the left and right represent the screen states before and after the action, respectively. The model with middle training (bottom) successfully reflects on errors and generates correct actions from error states, while the model without (top) middle training fails to recover from such states.
> </details>



![](https://arxiv.org/html/2504.10127/x3.png)

> 🔼 This figure shows the performance of models trained on the GUIMid dataset with varying scales of training data.  The left graph displays the success rate and progress rate on the AndroidWorld benchmark, while the right graph shows the same metrics on the WebArena benchmark. The x-axis represents the amount of training data used (in thousands), while the y-axis represents the success rate (left) and progress rate (right). The results demonstrate the effectiveness of the GUIMid dataset and the scaling behavior with respect to the amount of training data.
> <details>
> <summary>read the caption</summary>
> Figure 3: Performance of models trained on GUIMidwith different scales.
> </details>



![](https://arxiv.org/html/2504.10127/extracted/6359059/figures/loss_curves_grid.png)

> 🔼 Figure 4 illustrates the effect of incorporating GUI trajectory data into the mid-training phase on the training loss.  Panels (a) and (c) depict the training loss curves when GUI trajectory data is mixed with other mid-training data, demonstrating smoother learning dynamics. In contrast, panels (b) and (d) show the training loss when no GUI trajectory data is mixed in, resulting in less stable training with potential issues like sharp fluctuations or even gradient vanishing. This comparison highlights the importance of data mixing for mitigating the domain gap between mid-training and fine-tuning data, thereby enhancing model stability during training.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of training loss between two training strategies: (a) and (c) show the mixture of GUI trajectory data during mid-training, while (b) and (d) are not.
> </details>



![](https://arxiv.org/html/2504.10127/extracted/6359059/figures/annoate_tools_final.png)

> 🔼 Figure 5 shows the user interface (UI) for annotating data in the VisualWebArena dataset.  This UI allows annotators to specify actions to be taken by a web agent within the context of a given task. It displays the current webpage as a screenshot, along with tools to select elements on the page and define actions (such as clicks, typing, scrolling). The interface also includes fields for entering details about the actions, like element IDs or coordinates, and facilitates the annotation of the agent's thought process and planned actions.  This careful annotation process is crucial for creating high-quality training data for web agents.
> <details>
> <summary>read the caption</summary>
> Figure 5: The annotation UI for VisualWebArena.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1.1">Domains</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.2.1">Datasets</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.3.1">Samples</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.4.1">Type</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.1.1.1">Web</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">OS-Genesis (Web) <cite class="ltx_cite ltx_citemacro_citep">(Sun et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib35" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">3,789</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T2.1.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought, Action</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.3.2">
<td class="ltx_td" id="S3.T2.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">MM-Mind2Web <cite class="ltx_cite ltx_citemacro_citep">(Zheng et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib52" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;">21,542</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.1.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought, Action</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.4.3">
<td class="ltx_td" id="S3.T2.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">VisualWebArena <cite class="ltx_cite ltx_citemacro_citep">(Koh et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib13" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;">3,264</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.1.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought, Action</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.5.4">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.5.4.1.1">Mobile</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">OS-Genesis (Mobile) <cite class="ltx_cite ltx_citemacro_citep">(Sun et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib35" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;">4,941</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.1.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought, Action</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.6.5">
<td class="ltx_td ltx_border_bb" id="S3.T2.1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.1.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">Aguvis <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.10127v1#bib.bib43" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.1.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;">22,526</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T2.1.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;">Instruction, Thought, Action</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a summary of the datasets used for the post-training phase of the GUI agent development.  It lists the specific datasets used for both web and mobile domains, including the number of samples and the type of data included in each dataset (instructions, thoughts, and actions). This information is crucial for understanding the scale and characteristics of the data used to fine-tune the model's ability to perform GUI tasks after its mid-training stage.
> <details>
> <summary>read the caption</summary>
> Table 2: Statistics of the web/mobile domains along with the corresponding GUI trajectory datasets used in post-training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1.1">Domains</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.2.1">Observation</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S4.T3.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.3.1">WebArena</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.4.1">AndroidWorld</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T3.1.1.2.2.1"></th>
<td class="ltx_td" id="S4.T3.1.1.2.2.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.2.3">PR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.2.4">SR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.2.5">SR</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.3.3.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.3.1.1">GUI Post-Training Only</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3.2">Image</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3.3">26.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3.4">6.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3.5">9.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="S4.T3.1.1.4.4.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.4.1.1">Public Baselines</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.5.5.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.5.1.1">GPT-4o-2024-11-20</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.5.5.2">Image</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.5.5.3">36.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.5.5.4">15.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.5.5.5">11.7</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.6.6.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.6.1.1">OS-Genesis-7B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.6.2">Image + Accessibility Tree</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.6.3">–</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.6.4">–</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.6.5">17.4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.7.7.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.7.7.1.1">AGUVIS-72B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.7.2">Image</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.7.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.7.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.7.5">26.1</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.8.8.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.8.8.1.1">Claude3-Haiku</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.8.2">Accessibility Tree</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.8.3">26.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.8.4">12.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.8.5">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.9.9.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.9.9.1.1">Llama3-70b</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.9.2">Accessibility Tree</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.9.3">35.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.9.4">12.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.9.5">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.10.10.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.10.10.1.1">Gemini1.5-Flash</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.10.2">Accessibility Tree</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.10.3">32.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.10.4">11.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.10.5">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.11.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="S4.T3.1.1.11.11.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.11.11.1.1">Vision-and-Language Modality</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.12.12.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.12.12.1.1">Chart/ Document QA</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.12.12.2">Image</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.12.12.3" style="background-color:#E67C73;"><span class="ltx_text" id="S4.T3.1.1.12.12.3.1" style="background-color:#E67C73;">24.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.12.12.4">6.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.12.12.5" style="background-color:#AADDC4;"><span class="ltx_text" id="S4.T3.1.1.12.12.5.1" style="background-color:#AADDC4;">15.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.13.13.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.13.13.1.1">Non-GUI Perception</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.13.13.2">Image</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.13.13.3" style="background-color:#EFF9F4;"><span class="ltx_text" id="S4.T3.1.1.13.13.3.1" style="background-color:#EFF9F4;">28.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.13.13.4" style="background-color:#EFF9F4;"><span class="ltx_text" id="S4.T3.1.1.13.13.4.1" style="background-color:#EFF9F4;">7.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.13.13.5" style="background-color:#AADDC4;"><span class="ltx_text" id="S4.T3.1.1.13.13.5.1" style="background-color:#AADDC4;">14.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.14.14.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.14.14.1.1">GUI Perception</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.14.14.2">Image</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.14.14.3" style="background-color:#EFF9F4;"><span class="ltx_text" id="S4.T3.1.1.14.14.3.1" style="background-color:#EFF9F4;">27.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.14.14.4" style="background-color:#EFF9F4;"><span class="ltx_text" id="S4.T3.1.1.14.14.4.1" style="background-color:#EFF9F4;">7.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.14.14.5" style="background-color:#AADDC4;"><span class="ltx_text" id="S4.T3.1.1.14.14.5.1" style="background-color:#AADDC4;">14.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.15.15.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.15.15.1.1">Web Screenshot2Code</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.15.15.2">Image</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.15.15.3" style="background-color:#EFF9F4;"><span class="ltx_text" id="S4.T3.1.1.15.15.3.1" style="background-color:#EFF9F4;">28.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.15.15.4" style="background-color:#EFF9F4;"><span class="ltx_text" id="S4.T3.1.1.15.15.4.1" style="background-color:#EFF9F4;">6.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.15.15.5" style="background-color:#EFF9F4;"><span class="ltx_text" id="S4.T3.1.1.15.15.5.1" style="background-color:#EFF9F4;">9.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.16.16.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.16.16.1.1">Non-GUI Agents</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.16.16.2">Image</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.16.16.3" style="background-color:#8AD0AE;"><span class="ltx_text" id="S4.T3.1.1.16.16.3.1" style="background-color:#8AD0AE;">30.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.16.16.4" style="background-color:#AADDC4;"><span class="ltx_text" id="S4.T3.1.1.16.16.4.1" style="background-color:#AADDC4;">8.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.16.16.5" style="background-color:#AADDC4;"><span class="ltx_text" id="S4.T3.1.1.16.16.5.1" style="background-color:#AADDC4;">13.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.17.17.1">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.17.17.1.1">Multi-modal Math</span> ✓</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.17.17.2">Image</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.17.17.3" style="background-color:#8AD0AE;"><span class="ltx_text" id="S4.T3.1.1.17.17.3.1" style="background-color:#8AD0AE;">30.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.17.17.4" style="background-color:#AADDC4;"><span class="ltx_text" id="S4.T3.1.1.17.17.4.1" style="background-color:#AADDC4;">8.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.17.17.5" style="background-color:#AADDC4;"><span class="ltx_text" id="S4.T3.1.1.17.17.5.1" style="background-color:#AADDC4;">15.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.18.18.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.18.18.1.1">Multi-round Visual Conversation</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.18.18.2">Image</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.18.18.3" style="background-color:#AADDC4;"><span class="ltx_text" id="S4.T3.1.1.18.18.3.1" style="background-color:#AADDC4;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.18.18.4" style="background-color:#AADDC4;"><span class="ltx_text" id="S4.T3.1.1.18.18.4.1" style="background-color:#AADDC4;">9.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.18.18.5" style="background-color:#AADDC4;"><span class="ltx_text" id="S4.T3.1.1.18.18.5.1" style="background-color:#AADDC4;">12.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.19.19">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="S4.T3.1.1.19.19.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.19.19.1.1">Language Modality</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.20.20.1">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.20.20.1.1">MathInstruct</span> ✓</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.20.20.2">Image</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.20.20.3" style="background-color:#8AD0AE;"><span class="ltx_text" id="S4.T3.1.1.20.20.3.1" style="background-color:#8AD0AE;">31.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.20.20.4" style="background-color:#8AD0AE;"><span class="ltx_text" id="S4.T3.1.1.20.20.4.1" style="background-color:#8AD0AE;">10.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.20.20.5" style="background-color:#AADDC4;"><span class="ltx_text" id="S4.T3.1.1.20.20.5.1" style="background-color:#AADDC4;">14.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.21.21.1">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.21.21.1.1">Olympiad Math</span> ✓</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.21.21.2">Image</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.21.21.3" style="background-color:#8AD0AE;"><span class="ltx_text" id="S4.T3.1.1.21.21.3.1" style="background-color:#8AD0AE;">31.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.21.21.4" style="background-color:#AADDC4;"><span class="ltx_text" id="S4.T3.1.1.21.21.4.1" style="background-color:#AADDC4;">8.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.21.21.5" style="background-color:#AADDC4;"><span class="ltx_text" id="S4.T3.1.1.21.21.5.1" style="background-color:#AADDC4;">13.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.22.22.1">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.22.22.1.1">CodeI/O</span> ✓</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.22.22.2">Image</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.22.22.3" style="background-color:#AADDC4;"><span class="ltx_text" id="S4.T3.1.1.22.22.3.1" style="background-color:#AADDC4;">29.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.22.22.4" style="background-color:#AADDC4;"><span class="ltx_text" id="S4.T3.1.1.22.22.4.1" style="background-color:#AADDC4;">9.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.22.22.5" style="background-color:#AADDC4;"><span class="ltx_text" id="S4.T3.1.1.22.22.5.1" style="background-color:#AADDC4;">14.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.23.23.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.23.23.1.1">Web Knowledge Base</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.23.23.2">Image</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.23.23.3" style="background-color:#8AD0AE;"><span class="ltx_text" id="S4.T3.1.1.23.23.3.1" style="background-color:#8AD0AE;">31.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.23.23.4" style="background-color:#8AD0AE;"><span class="ltx_text" id="S4.T3.1.1.23.23.4.1" style="background-color:#8AD0AE;">9.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.23.23.5" style="background-color:#EFF9F4;"><span class="ltx_text" id="S4.T3.1.1.23.23.5.1" style="background-color:#EFF9F4;">9.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.24.24">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="S4.T3.1.1.24.24.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.24.24.1.1">Domain Combination (Sampled data from ✓domains)</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T3.1.1.25.25.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.25.25.1.1">GUIMid</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.1.25.25.2">Image</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.1.25.25.3" style="background-color:#17C79A;"><span class="ltx_text" id="S4.T3.1.1.25.25.3.1" style="background-color:#17C79A;">34.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.1.25.25.4" style="background-color:#8AD0AE;"><span class="ltx_text" id="S4.T3.1.1.25.25.4.1" style="background-color:#8AD0AE;">9.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.1.25.25.5" style="background-color:#17C79A;"><span class="ltx_text" id="S4.T3.1.1.25.25.5.1" style="background-color:#17C79A;">21.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Qwen2-VL-7B-Instruct model across various domains using a two-stage training strategy. The first stage involves mid-training on data from different domains (vision-language and language-only), followed by fine-tuning on GUI trajectory data.  The table shows the Progress Rate (PR) and Success Rate (SR) for each domain on two benchmark tasks: WebArena and AndroidWorld. Color-coding highlights improvements (green) or declines (red) relative to a baseline of using only post-training on GUI data, with deeper shades representing larger changes. This allows for a comparison of how different mid-training datasets impact performance on GUI tasks.
> <details>
> <summary>read the caption</summary>
> Table 3:  Progress Rate (PR) and Success Rate (SR) of Qwen2-VL-7B-Instruct across various domains using a two-stage training strategy. Color-coded cells (green/red) are employed to denote improvements or declines relative to the post-training only baseline, with deeper shades indicating larger score shifts.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1.1">Domains</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.2.1">WebArena</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.3.1">AndroidWorld</span></th>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T4.1.1.2.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.2.2.2">PR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.2.2.3">SR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.2.2.4">SR</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.3.1.1.1">MathInstruct (no mixing)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.1.2">24.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.1.3">9.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.1.4">9.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.4.2.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.4.2.1.1">MathInstruct (mixing)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.2.2">33.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.2.3">8.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.2.4">14.4</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.5.3.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.5.3.1.1">Multi-modal Math (no mixing)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.3.2">25.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.3.3">6.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.3.4">14.9</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.1.1.6.4.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.6.4.1.1">Multi-modal Math (mixing)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.6.4.2">30.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.6.4.3">8.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.6.4.4">15.3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment comparing two different training methods for GUI agents: one where GUI trajectory data is mixed with mid-training data, and another where it is not.  The results are evaluated using two metrics: Progress Rate (PR), which measures the overall progress in completing a task, and Success Rate (SR), which measures the percentage of tasks successfully completed. The table shows that mixing GUI trajectory data with mid-training data leads to significant improvements in both PR and SR across various tasks.
> <details>
> <summary>read the caption</summary>
> Table 4: Progress Rate (PR) and Success Rate (SR) with and without GUI trajectory data integration during the mid-training stage. “mixing” indicates the mid-training data is mixed with GUI trajectory data, while “no mixing” indicates it was not.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1.1">Domains</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.2.1">Difficulty</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.3.1">WebArena</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.4.1">AndroidWorld</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T5.1.1.2.2.1"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T5.1.1.2.2.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.1.2.2.3">PR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.1.2.2.4">SR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.1.2.2.5">SR</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.3.1.1.1">Orca-Math</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.3.1.2">Easy</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.3.1.3">31.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.3.1.4">10.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.3.1.5">9.9</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.4.2.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.4.2.1.1">Randomly Sampled Data</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.2.2">Middle</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.2.3">30.6</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.2.4">9.5</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.2.5">10.8</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.1.1.5.3.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.5.3.1.1">Olympiad Math</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.5.3.2">Hard</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.5.3.3">31.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.5.3.4">8.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.5.3.5">13.1</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment investigating how the difficulty level of mathematical problems used during the mid-training phase of a vision-language model affects the model's performance on GUI-related tasks.  Three subsets of the NuminaMath dataset were created, each representing a different difficulty level (easy, medium, hard).  The table shows the progress rate (PR) and success rate (SR) for each difficulty subset, measured on the WebArena and AndroidWorld benchmarks.  This allows for an analysis of whether increased difficulty in the mid-training data correlates with improved performance on these benchmark tasks for GUI agents.
> <details>
> <summary>read the caption</summary>
> Table 5:  The impact of mathematical difficulty in mid-training data. We sample three subsets from the NuminaMath dataset based on their difficulty levels.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.1">Action</th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.2">Description</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.2.1.1"><span class="ltx_text ltx_font_typewriter" id="A1.T6.1.1.2.1.1.1">click [[x] [y]]</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T6.1.1.2.1.2">Click at coordinates (x, y).</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.3.2.1"><span class="ltx_text ltx_font_typewriter" id="A1.T6.1.1.3.2.1.1">type [[x] [y]] [value]</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T6.1.1.3.2.2">Type content into a field by coordinate.</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.4.3.1"><span class="ltx_text ltx_font_typewriter" id="A1.T6.1.1.4.3.1.1">scroll [[x] [y]] [value]</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T6.1.1.4.3.2">Scroll the page or a specific element.</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.5.4">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.5.4.1"><span class="ltx_text ltx_font_typewriter" id="A1.T6.1.1.5.4.1.1">go_back</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T6.1.1.5.4.2">Navigate to the previous screen or page.</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.6.5">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.6.5.1"><span class="ltx_text ltx_font_typewriter" id="A1.T6.1.1.6.5.1.1">go_home</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T6.1.1.6.5.2">Navigate to the home screen.</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.7.6">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.7.6.1"><span class="ltx_text ltx_font_typewriter" id="A1.T6.1.1.7.6.1.1">long_press[[x] [y]]</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T6.1.1.7.6.2">Long press on an coordinate.</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.8.7">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.8.7.1"><span class="ltx_text ltx_font_typewriter" id="A1.T6.1.1.8.7.1.1">enter</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T6.1.1.8.7.2">Press the Enter key.</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.9.8">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.9.8.1"><span class="ltx_text ltx_font_typewriter" id="A1.T6.1.1.9.8.1.1">open_app [app_name]</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T6.1.1.9.8.2">Open an app by [app_name].</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.10.9">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.10.9.1"><span class="ltx_text ltx_font_typewriter" id="A1.T6.1.1.10.9.1.1">wait [value]</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T6.1.1.10.9.2">Wait for the screen to update for [value] seconds.</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.11.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T6.1.1.11.10.1"><span class="ltx_text ltx_font_typewriter" id="A1.T6.1.1.11.10.1.1">stop [value]</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="A1.T6.1.1.11.10.2">Stop the task with a goal status or answer.</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the actions available to a mobile GUI agent within the AndroidWorld environment.  It lists the action name (e.g., 'click', 'type', 'scroll'), its parameters (coordinates, text input, scroll direction and amount), and a description of what each action performs. This is crucial for understanding the agent's interaction capabilities and how its actions are represented in the dataset.
> <details>
> <summary>read the caption</summary>
> Table 6: The action space for mobile tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T7.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1.1">Action</th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1.2">Description</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.1.1.2.1.1"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.1.2.1.1.1">click [[x] [y]]</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T7.1.1.2.1.2">Click at coordinates (x, y).</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.3.2.1"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.1.3.2.1.1">type [[x] [y]] [value]</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.3.2.2">Type content into a field by coordinate.</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.4.3.1"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.1.4.3.1.1">clear [[x] [y]]</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.4.3.2">Clear the content of an element.</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.5.4">
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.5.4.1"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.1.5.4.1.1">hover [[x] [y]]</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.5.4.2">Hover over an element by coordinate.</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.6.5">
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.6.5.1"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.1.6.5.1.1">press [keys]</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.6.5.2">Press a key combination (e.g., Ctrl+v).</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.7.6">
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.7.6.1"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.1.7.6.1.1">scroll [value]</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.7.6.2">Scroll the page.</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.8.7">
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.8.7.1"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.1.8.7.1.1">new_tab</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.8.7.2">Open a new tab.</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.9.8">
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.9.8.1"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.1.9.8.1.1">page_focus [tab_index]</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.9.8.2">Switch to a specific tab.</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.10.9">
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.10.9.1"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.1.10.9.1.1">close_tab</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.10.9.2">Close the current tab.</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.11.10">
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.11.10.1"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.1.11.10.1.1">goto [url]</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.11.10.2">Navigate to a URL.</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.12.11">
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.12.11.1"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.1.12.11.1.1">go_back</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.12.11.2">Go to the previous page.</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.13.12">
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.13.12.1"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.1.13.12.1.1">go_forward</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.13.12.2">Go to the next page.</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.14.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T7.1.1.14.13.1"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.1.14.13.1.1">stop [answer]</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="A1.T7.1.1.14.13.2">Issue this action when the task is considered complete.</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the actions available to a vision-based GUI agent operating within a web environment.  It outlines the specific commands the agent can execute to interact with web pages, including actions such as clicking elements, typing text, scrolling, managing tabs (opening, closing, switching), and navigating using URLs (going forward, back, to a specific URL).  The table is crucial for understanding the scope and granularity of actions the agent can take to complete web-based tasks.
> <details>
> <summary>read the caption</summary>
> Table 7: The action space for web tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T8.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T8.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.3.1.1"><span class="ltx_text ltx_font_bold" id="A4.T8.2.3.1.1.1">Parameter</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.3.1.2"><span class="ltx_text ltx_font_bold" id="A4.T8.2.3.1.2.1">Value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T8.2.4.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T8.2.4.1.1">Context Length</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T8.2.4.1.2">8192</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.5.2">
<td class="ltx_td ltx_align_left" id="A4.T8.2.5.2.1">Number of GPUs</td>
<td class="ltx_td ltx_align_left" id="A4.T8.2.5.2.2">8</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.2">
<td class="ltx_td ltx_align_left" id="A4.T8.2.2.3">Learning Rate</td>
<td class="ltx_td ltx_align_left" id="A4.T8.2.2.2">2 <math alttext="\times" class="ltx_Math" display="inline" id="A4.T8.1.1.1.m1.1"><semantics id="A4.T8.1.1.1.m1.1a"><mo id="A4.T8.1.1.1.m1.1.1" xref="A4.T8.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T8.1.1.1.m1.1b"><times id="A4.T8.1.1.1.m1.1.1.cmml" xref="A4.T8.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T8.1.1.1.m1.1d">×</annotation></semantics></math> 10<sup class="ltx_sup" id="A4.T8.2.2.2.1"><span class="ltx_text ltx_font_italic" id="A4.T8.2.2.2.1.1">-5</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.6.3">
<td class="ltx_td ltx_align_left" id="A4.T8.2.6.3.1">Training Epochs</td>
<td class="ltx_td ltx_align_left" id="A4.T8.2.6.3.2">1.0</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.7.4">
<td class="ltx_td ltx_align_left" id="A4.T8.2.7.4.1">Batch Size Per Device</td>
<td class="ltx_td ltx_align_left" id="A4.T8.2.7.4.2">2</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.8.5">
<td class="ltx_td ltx_align_left" id="A4.T8.2.8.5.1">Gradient Accumulation</td>
<td class="ltx_td ltx_align_left" id="A4.T8.2.8.5.2">2</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.9.6">
<td class="ltx_td ltx_align_left" id="A4.T8.2.9.6.1">Learning Rate Scheduler</td>
<td class="ltx_td ltx_align_left" id="A4.T8.2.9.6.2">cosine</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.10.7">
<td class="ltx_td ltx_align_left" id="A4.T8.2.10.7.1">Warmup Ratio</td>
<td class="ltx_td ltx_align_left" id="A4.T8.2.10.7.2">0.05</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.11.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T8.2.11.8.1">Precision</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T8.2.11.8.2">bf16</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used during the training process for the experiments reported in Table 3 of the paper.  It includes parameters such as context length, the number of GPUs used, the learning rate, the number of training epochs, batch size, gradient accumulation steps, the learning rate scheduler, warmup ratio, and the precision used for training. These settings are crucial for understanding and replicating the training process detailed in the study.
> <details>
> <summary>read the caption</summary>
> Table 8: The training hyperparameters used in Table 3.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.10127/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10127/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}