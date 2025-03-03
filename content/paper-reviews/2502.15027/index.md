---
title: "InterFeedback: Unveiling Interactive Intelligence of Large Multimodal Models via Human Feedback"
summary: "InterFeedback: LMMs need better human feedback to enhance AI assistants!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Human-AI Interaction", "🏢 National University of Singapore",]
showSummary: true
date: 2025-02-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.15027 {{< /keyword >}}
{{< keyword icon="writer" >}} Henry Hengyuan Zhao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.15027" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.15027" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.15027/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing benchmarks lack tests for Large Multimodal Models (LMMs) regarding interactive intelligence with human users, a key aspect for general AI assistants. To address this, **the study introduces InterFeedback, a versatile framework applicable to any LMM and dataset**. It also presents InterFeedback-Bench, evaluating interactive intelligence using MMMU-Pro and MathVerse on 10 open-source LMMs. A newly collected dataset, InterFeedback-Human, assesses interactive performance manually in models like OpenAI-01 and Claude-3.5-Sonnet. 



**The evaluation reveals that even advanced LMMs like OpenAI-01 correct their results through human feedback less than 50% of the time**. The study highlights the need for methods to enhance LMMs' ability to interpret and benefit from feedback. Key findings include that interactive processes improve performance, existing LMMs struggle with feedback interpretation, and additional iterations don't guarantee correct solutions. The research also emphasizes that LMMs may not always use reasoning and sometimes guess the answer based on human's response.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Interactive processes improve LMM performance but existing LMMs interpret feedback suboptimally. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} High-quality feedback is essential; subpar feedback degrades performance more than binary signals. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LMMs often guess answers, revealing a need to enhance their reasoning capabilities. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research introduces InterFeedback-Bench, a benchmark designed to evaluate how well large multimodal models interact with human feedback. It highlights the gaps in current LMMs' ability to use feedback effectively, **offering researchers a crucial tool for developing more interactive and adaptive AI systems**. The framework and datasets provide a new avenue for exploring human-AI interaction, pushing the boundaries of general-purpose AI assistants. 

------
#### Visual Insights



![](https://arxiv.org/html/2502.15027/x1.png)

> 🔼 The figure illustrates a human-in-the-loop interactive feedback process.  A multimodal model initially provides an answer to a question. If the answer is incorrect, a human user gives feedback, guiding the model to refine its answer through iterative steps. This demonstrates the importance of human feedback in improving the accuracy and problem-solving capabilities of large multimodal models.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of an interactive feedback scenario. When models generate incorrect responses, human users provide pertinent feedback to iteratively refine the answers.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.15.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.15.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.15.1.1.1.1" rowspan="2" style="padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S4.T1.15.1.1.1.2" style="padding:0.5pt 3.4pt;"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.15.1.1.1.3" style="padding:0.5pt 3.4pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S4.T1.15.1.1.1.4" style="padding:0.5pt 3.4pt;">GPT-4o</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S4.T1.15.1.1.1.5" style="padding:0.5pt 3.4pt;">Gemini-1.5-Flash</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T1.15.1.1.1.6" style="padding:0.5pt 3.4pt;">Claude-3.5-Sonnet</th>
</tr>
<tr class="ltx_tr" id="S4.T1.15.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.15.1.2.2.1" style="padding:0.5pt 3.4pt;">Acc (%)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T1.15.1.2.2.2" style="padding:0.5pt 3.4pt;"># Neg</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.15.1.2.2.3" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.2.2.3.1" style="background-color:#E6E6FF;"># Test</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.15.1.2.2.4" style="padding:0.5pt 3.4pt;">Detail (%)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.15.1.2.2.5" style="padding:0.5pt 3.4pt;">Simple (%)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.15.1.2.2.6" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.2.2.6.1" style="background-color:#E6E6FF;"># Test</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.15.1.2.2.7" style="padding:0.5pt 3.4pt;">Detail (%)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.15.1.2.2.8" style="padding:0.5pt 3.4pt;">Simple (%)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.15.1.2.2.9" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.2.2.9.1" style="background-color:#E6E6FF;"># Test</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.15.1.2.2.10" style="padding:0.5pt 3.4pt;">Detail (%)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.15.1.2.2.11" style="padding:0.5pt 3.4pt;">Simple (%)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.15.1.3.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.15.1.3.1.1" style="padding:0.5pt 3.4pt;">LLaVa-OneVision-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.15.1.3.1.2" style="padding:0.5pt 3.4pt;">25.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.15.1.3.1.3" style="padding:0.5pt 3.4pt;">2933</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.15.1.3.1.4" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.3.1.4.1" style="background-color:#E6E6FF;">373</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.15.1.3.1.5" style="padding:0.5pt 3.4pt;">36.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.15.1.3.1.6" style="padding:0.5pt 3.4pt;">18.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.15.1.3.1.7" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.3.1.7.1" style="background-color:#E6E6FF;">428</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.15.1.3.1.8" style="padding:0.5pt 3.4pt;">29.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.15.1.3.1.9" style="padding:0.5pt 3.4pt;">15.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.15.1.3.1.10" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.3.1.10.1" style="background-color:#E6E6FF;">2953</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.15.1.3.1.11" style="padding:0.5pt 3.4pt;">4.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.15.1.3.1.12" style="padding:0.5pt 3.4pt;">2.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.1.4.2">
<td class="ltx_td ltx_align_left" id="S4.T1.15.1.4.2.1" style="padding:0.5pt 3.4pt;">InternVL2-8B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.4.2.2" style="padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.4.2.2.1" style="background-color:#FFDFDF;">38.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.4.2.3" style="padding:0.5pt 3.4pt;">2440</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.4.2.4" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.4.2.4.1" style="background-color:#E6E6FF;">379</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.4.2.5" style="padding:0.5pt 3.4pt;">49.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.4.2.6" style="padding:0.5pt 3.4pt;">41.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.4.2.7" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.4.2.7.1" style="background-color:#E6E6FF;">375</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.4.2.8" style="padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.4.2.8.1" style="background-color:#FFDFDF;">48.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.4.2.9" style="padding:0.5pt 3.4pt;">44.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.4.2.10" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.4.2.10.1" style="background-color:#E6E6FF;">376</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.4.2.11" style="padding:0.5pt 3.4pt;">43.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.4.2.12" style="padding:0.5pt 3.4pt;">40.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.1.5.3">
<td class="ltx_td ltx_align_left" id="S4.T1.15.1.5.3.1" style="padding:0.5pt 3.4pt;">Molmo-7B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.5.3.2" style="padding:0.5pt 3.4pt;">25.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.5.3.3" style="padding:0.5pt 3.4pt;">2931</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.5.3.4" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.5.3.4.1" style="background-color:#E6E6FF;">452</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.5.3.5" style="padding:0.5pt 3.4pt;">55.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.5.3.6" style="padding:0.5pt 3.4pt;">52.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.5.3.7" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.5.3.7.1" style="background-color:#E6E6FF;">507</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.5.3.8" style="padding:0.5pt 3.4pt;">36.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.5.3.9" style="padding:0.5pt 3.4pt;">38.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.5.3.10" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.5.3.10.1" style="background-color:#E6E6FF;">597</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.5.3.11" style="padding:0.5pt 3.4pt;">37.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.5.3.12" style="padding:0.5pt 3.4pt;">40.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.1.6.4">
<td class="ltx_td ltx_align_left" id="S4.T1.15.1.6.4.1" style="padding:0.5pt 3.4pt;">MiniCPM-V</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.6.4.2" style="padding:0.5pt 3.4pt;">16.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.6.4.3" style="padding:0.5pt 3.4pt;">3301</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.6.4.4" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.6.4.4.1" style="background-color:#E6E6FF;">552</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.6.4.5" style="padding:0.5pt 3.4pt;">28.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.6.4.6" style="padding:0.5pt 3.4pt;">20.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.6.4.7" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.6.4.7.1" style="background-color:#E6E6FF;">741</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.6.4.8" style="padding:0.5pt 3.4pt;">16.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.6.4.9" style="padding:0.5pt 3.4pt;">25.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.6.4.10" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.6.4.10.1" style="background-color:#E6E6FF;">772</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.6.4.11" style="padding:0.5pt 3.4pt;">18.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.6.4.12" style="padding:0.5pt 3.4pt;">27.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.1.7.5">
<td class="ltx_td ltx_align_left" id="S4.T1.15.1.7.5.1" style="padding:0.5pt 3.4pt;">GLM-4V-9B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.7.5.2" style="padding:0.5pt 3.4pt;">20.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.7.5.3" style="padding:0.5pt 3.4pt;">3146</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.7.5.4" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.7.5.4.1" style="background-color:#E6E6FF;">440</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.7.5.5" style="padding:0.5pt 3.4pt;">38.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.7.5.6" style="padding:0.5pt 3.4pt;">28.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.7.5.7" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.7.5.7.1" style="background-color:#E6E6FF;">568</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.7.5.8" style="padding:0.5pt 3.4pt;">30.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.7.5.9" style="padding:0.5pt 3.4pt;">29.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.7.5.10" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.7.5.10.1" style="background-color:#E6E6FF;">603</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.7.5.11" style="padding:0.5pt 3.4pt;">30.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.7.5.12" style="padding:0.5pt 3.4pt;">26.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.1.8.6">
<td class="ltx_td ltx_align_left" id="S4.T1.15.1.8.6.1" style="padding:0.5pt 3.4pt;">Phi3.5-Vision-4.2B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.8.6.2" style="padding:0.5pt 3.4pt;">19.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.8.6.3" style="padding:0.5pt 3.4pt;">3192</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.8.6.4" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.8.6.4.1" style="background-color:#E6E6FF;">534</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.8.6.5" style="padding:0.5pt 3.4pt;">36.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.8.6.6" style="padding:0.5pt 3.4pt;">33.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.8.6.7" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.8.6.7.1" style="background-color:#E6E6FF;">579</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.8.6.8" style="padding:0.5pt 3.4pt;">31.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.8.6.9" style="padding:0.5pt 3.4pt;">33.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.8.6.10" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.8.6.10.1" style="background-color:#E6E6FF;">616</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.8.6.11" style="padding:0.5pt 3.4pt;">26.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.8.6.12" style="padding:0.5pt 3.4pt;">29.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.1.9.7">
<td class="ltx_td ltx_align_left" id="S4.T1.15.1.9.7.1" style="padding:0.5pt 3.4pt;">LLaVa-1.5-7B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.9.7.2" style="padding:0.5pt 3.4pt;">13.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.9.7.3" style="padding:0.5pt 3.4pt;">3409</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.9.7.4" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.9.7.4.1" style="background-color:#E6E6FF;">763</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.9.7.5" style="padding:0.5pt 3.4pt;">23.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.9.7.6" style="padding:0.5pt 3.4pt;">14.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.9.7.7" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.9.7.7.1" style="background-color:#E6E6FF;">678</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.9.7.8" style="padding:0.5pt 3.4pt;">18.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.9.7.9" style="padding:0.5pt 3.4pt;">14.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.9.7.10" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.9.7.10.1" style="background-color:#E6E6FF;">816</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.9.7.11" style="padding:0.5pt 3.4pt;">8.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.9.7.12" style="padding:0.5pt 3.4pt;">11.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.1.10.8">
<td class="ltx_td ltx_align_left" id="S4.T1.15.1.10.8.1" style="padding:0.5pt 3.4pt;">LLaVa-1.6-Mistral-7B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.10.8.2" style="padding:0.5pt 3.4pt;">14.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.10.8.3" style="padding:0.5pt 3.4pt;">3357</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.10.8.4" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.10.8.4.1" style="background-color:#E6E6FF;">549</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.10.8.5" style="padding:0.5pt 3.4pt;">41.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.10.8.6" style="padding:0.5pt 3.4pt;">35.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.10.8.7" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.10.8.7.1" style="background-color:#E6E6FF;">661</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.10.8.8" style="padding:0.5pt 3.4pt;">5.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.10.8.9" style="padding:0.5pt 3.4pt;">5.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.10.8.10" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.10.8.10.1" style="background-color:#E6E6FF;">617</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.10.8.11" style="padding:0.5pt 3.4pt;">33.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.10.8.12" style="padding:0.5pt 3.4pt;">33.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.1.11.9">
<td class="ltx_td ltx_align_left" id="S4.T1.15.1.11.9.1" style="padding:0.5pt 3.4pt;">Fuyu-8B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.11.9.2" style="padding:0.5pt 3.4pt;">21.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.11.9.3" style="padding:0.5pt 3.4pt;">3083</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.11.9.4" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.11.9.4.1" style="background-color:#E6E6FF;">582</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.11.9.5" style="padding:0.5pt 3.4pt;">24.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.11.9.6" style="padding:0.5pt 3.4pt;">19.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.11.9.7" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.11.9.7.1" style="background-color:#E6E6FF;">635</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.11.9.8" style="padding:0.5pt 3.4pt;">15.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.11.9.9" style="padding:0.5pt 3.4pt;">12.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.1.11.9.10" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.11.9.10.1" style="background-color:#E6E6FF;">755</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.11.9.11" style="padding:0.5pt 3.4pt;">14.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.1.11.9.12" style="padding:0.5pt 3.4pt;">11.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.1.12.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.15.1.12.10.1" style="padding:0.5pt 3.4pt;">Qwen2-VL-7B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.15.1.12.10.2" style="padding:0.5pt 3.4pt;">22.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.15.1.12.10.3" style="padding:0.5pt 3.4pt;">3052</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.15.1.12.10.4" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.12.10.4.1" style="background-color:#E6E6FF;">295</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.15.1.12.10.5" style="padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.12.10.5.1" style="background-color:#FFDFDF;">66.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.15.1.12.10.6" style="padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.12.10.6.1" style="background-color:#FFDFDF;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.15.1.12.10.7" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.12.10.7.1" style="background-color:#E6E6FF;">470</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.15.1.12.10.8" style="padding:0.5pt 3.4pt;">41.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.15.1.12.10.9" style="padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.12.10.9.1" style="background-color:#FFDFDF;">44.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.15.1.12.10.10" style="background-color:#E6E6FF;padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.12.10.10.1" style="background-color:#E6E6FF;">505</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.15.1.12.10.11" style="padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.12.10.11.1" style="background-color:#FFDFDF;">50.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.15.1.12.10.12" style="padding:0.5pt 3.4pt;"><span class="ltx_text" id="S4.T1.15.1.12.10.12.1" style="background-color:#FFDFDF;">52.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the correction rates achieved by three different feedback providers (GPT-40, Gemini-1.5-Flash, and Claude-3.5-Sonnet) when assisting various Large Multimodal Models (LMMs) on the MathVerse dataset.  The correction rate is calculated as the percentage of initially incorrect answers that were corrected through feedback.  The table includes the average accuracy on the MathVerse testmini set, the number of negative samples (initially incorrect answers), the total number of test samples evaluated for each LMM, the correction rates using detailed LMM-generated feedback, and the correction rates using simple binary (correct/incorrect) feedback.
> <details>
> <summary>read the caption</summary>
> Table 1: Correction Rate Results of three Feedback Providers on MathVerse Dataset. Acc (%): The average accuracy of MathVerse’s testmini set. The results are tested by ourselves. # Neg: The number of negative samples produced by the model. # Test: The total number of test samples evaluated. Detail (%): correction rate of using LMM-generated feedback. Simple (%): correction rate of using simple feedback (0 or 1).
> </details>





### In-depth insights


#### InterFeedback
The research introduces "InterFeedback," a novel approach to evaluating **interactive intelligence** in Large Multimodal Models (LMMs) by simulating human-AI interactions. It fills a critical gap, as existing benchmarks primarily assess LMMs in static environments, neglecting their ability to learn and adapt through feedback. The framework enables any LMM to interactively solve problems, leveraging models like GPT-4o to simulate human feedback, thus creating a **closed-loop learning system**. Key components are a feedback receiver and a feedback provider to evaluate the interpretability of different feedback.

#### LMM HAI Underexplored
Large Multimodal Models (LMMs) hold significant promise as interactive AI assistants, yet their capabilities in Human-AI Interaction (HAI) remain **largely underexplored**. While LMMs excel in various multimodal tasks, **their interactive intelligence, particularly the ability to learn and improve from human feedback, is not well-assessed**. Current benchmarks primarily focus on static testing, neglecting the dynamic and iterative nature of HAI. This lack of comprehensive evaluation in interactive settings hinders the development of LMMs that can effectively collaborate and adapt to human guidance, thus impeding their potential as general-purpose AI assistants that can refine their problem-solving abilities through feedback loops.

#### Iterative LMM Tests
**Iterative LMM (Large Multimodal Models) tests** represent a crucial shift in how we evaluate AI, moving beyond static benchmarks to dynamic, interactive assessments. The core idea is to probe an LMM's ability to learn and adapt through successive rounds of interaction, typically involving human feedback. This allows us to assess not just the model's initial knowledge but also its capacity to refine its understanding and improve its performance over time.  The setup involves a task, initial model response, feedback (binary or detailed), and a re-evaluation. Key aspects include defining suitable tasks (drawing on existing datasets or creating new ones), simulating the role of human feedback (using other LLMs or real users), and devising metrics that capture the iterative improvement. The success of iterative tests hinges on the quality and relevance of the feedback provided; poor feedback can actually degrade performance. These tests help reveal whether LMMs truly "reason" or simply guess, and highlight areas where models struggle to incorporate new information effectively. Overall, iterative tests offer a richer, more realistic evaluation of LMMs' potential for real-world applications involving ongoing human-AI collaboration.

#### Feedback: Suboptimal
If we assume feedback provided to an AI model is suboptimal, then the model will likely exhibit **impaired learning and adaptation**. The model would struggle to discern relevant patterns, leading to **inaccurate parameter adjustments**. In cases of **misleading or noisy feedback**, the model might develop skewed representations or amplify biases. In turn, it results in **lower generalization performance** when facing unseen data. **Effective techniques for noise reduction** and **reliability assessment** become vital in such scenarios, ensuring the model can extract meaningful insights from the provided feedback while mitigating the impact of suboptimal signals. The model needs to possess a **robust learning mechanism** that can distinguish between helpful signals and potentially disruptive elements within the feedback data to maintain and improve its performance.

#### HAI's Future Steps
While the paper doesn't explicitly have a section called 'HAI's Future Steps,' its focus on interactive intelligence in LMMs provides a clear direction. Future research should prioritize **enhancing LMMs' ability to learn from diverse feedback types**, moving beyond simple correctness signals. Developing **more sophisticated prompting techniques** and internal mechanisms that allow models to effectively incorporate human input is crucial. Additionally, **creating more comprehensive and dynamic benchmarks** that assess the full spectrum of HAI capabilities is essential to foster progress in this area. It's also important to explore **the role of multimodality** in feedback and interaction, as well as how to **personalize feedback** mechanisms for different users and tasks. Moreover, **addressing biases and ethical considerations** in HAI systems will be crucial to ensure responsible and equitable development.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.15027/x2.png)

> 🔼 This figure illustrates the process of creating a benchmark dataset for evaluating large multimodal models (LMMs) using human feedback.  It starts with a target dataset (like MathVerse). For each LMM being tested (the 'feedback receiver'), the model processes each item in the dataset.  Any incorrect responses from this LMM create the 'negative set' for that LMM. A separate, highly accurate model (the 'feedback provider') is then run on the same dataset items, generating the 'positive set'. The intersection of the positive and negative sets creates the final curated test data used for further benchmark evaluations. This ensures only problems that the provider can solve correctly, but the receiver cannot, are included.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of the test data construction process for InterFeedback-Bench. For each LMM serving as the feedback receiver, we process each instance from a target dataset (e.g., MathVerse) and collect the error cases to form a negative set. The feedback provider then processes the same instances to build a positive set. Finally, we curate test data by selecting the intersection of both sets.
> </details>



![](https://arxiv.org/html/2502.15027/x3.png)

> 🔼 The figure illustrates the InterFeedback framework, designed to evaluate a large multimodal model's (LMM) ability to learn from human feedback.  The process begins with the LMM attempting to solve a problem.  A human then verifies the answer. If incorrect, another LMM simulates a human providing feedback to help the first LMM improve its response.  This iterative process continues until the LMM solves the problem or a predetermined number of rounds are completed.  The framework explores two feedback types: simple (correct/incorrect) and detailed (with explanations).
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of the proposed framework InterFeedback for assessing an LMM’s ability to improve itself through feedback. The model interacts with humans to progressively solve a problem, and after each conversation round, we verify the correctness of the answer. If the answer is incorrect, an LMM-stimulated human will provide constructive feedback. We implement two types of feedback to investigate the behavior of LMMs.
> </details>



![](https://arxiv.org/html/2502.15027/x8.png)

> 🔼 This figure shows the percentage of samples that were initially incorrect but were later corrected in each round of interaction for four different large language models (LLMs): Gemini-2.0, GPT-40, OpenAI-01, and Claude-3.5-Sonnet.  Each model's initial accuracy (round 0) and accuracy after each subsequent round of feedback is represented by different colored segments.  The size of each segment is proportional to the percentage of samples corrected in that round. The figure illustrates how the models improve iteratively through human feedback, but also highlights that different models begin at different levels of accuracy and improve at varying rates.
> <details>
> <summary>read the caption</summary>
> Figure 4: Distribution of samples being corrected in each round. We can observe that Claude-3.5-Sonnet archives the best performance in round 0.
> </details>



![](https://arxiv.org/html/2502.15027/x9.png)

> 🔼 This bar chart displays the distribution of correctly answered questions across different task categories and rounds of interaction.  Visual logic problems saw the most improvements after the first two rounds of feedback.  In contrast, math problems (text-based) and MMMU-Pro problems showed less improvement across the first two rounds.  Coding (text-based) and MathVerse problems demonstrated a moderate level of correction across the first two rounds.
> <details>
> <summary>read the caption</summary>
> Figure 5: Distribution of corrected samples across various task categories. Visual logic tasks are mostly resolved within the first two rounds, whereas Math (Text-only) and MMMU-Pro tasks show little corrections in rounds 1 and 2. In contrast, Coding (Text-only) and MathVerse tasks exhibit corrections during rounds 1 and 2.
> </details>



![](https://arxiv.org/html/2502.15027/x10.png)

> 🔼 This figure displays a qualitative comparison of how different Large Multimodal Models (LMMs) perform on a visual reasoning task.  The task involves selecting the correct option from four choices to complete a sequence or reveal a pattern in a series of images. The figure shows the responses of three different LMMs (Claude-3.5 Sonnet, Gemini 2.0 Flash, and OpenAI-01) to the same question.  Each model's response, including intermediate steps and any corrections made, is presented. This illustrates the various approaches and reasoning processes of each LMM. The differences in reasoning steps and the number of iterations needed to arrive at the correct answer highlight the varying capabilities and challenges associated with interactive intelligence in LMMs.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative results on different LMMs.
> </details>



![](https://arxiv.org/html/2502.15027/x11.png)

> 🔼 This figure presents a qualitative comparison of different Large Multimodal Models (LMMs) in solving a geometry problem.  The problem involves finding the measure of angle CED given that DE is parallel to BC, angle A = 80°, and angle B = 60°. The figure displays the responses of three different LMMs (Claude-3.5-Sonnet, Gemini-2.0 Flash, and OpenAI-01) to the problem.  Each model's response shows the steps taken to arrive at the answer, including any corrections made after receiving feedback. This showcases the models' varying capabilities in problem-solving and reasoning, and their ability to utilize feedback to improve the solution.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative results on different LMMs.
> </details>



![](https://arxiv.org/html/2502.15027/x12.png)

> 🔼 This figure demonstrates how Large Multimodal Models (LMMs) tend to guess answers when faced with challenging problems they cannot readily solve.  Two instances of the same question are shown, highlighting how the model, even with feedback, produces different incorrect answers on separate attempts, before ultimately settling on a final answer (which may or may not be correct).  The figure visually represents the limitations of LMMs and suggests a reliance on elimination rather than true reasoning in certain situations.
> <details>
> <summary>read the caption</summary>
> Figure 8: An example that model tends to guess answers.
> </details>



![](https://arxiv.org/html/2502.15027/x13.png)

> 🔼 This figure demonstrates how large language models (LLMs) resort to guessing when faced with challenging problems.  It showcases two instances where, despite receiving feedback, the models' responses are inconsistent across different runs for the same problem. This suggests that the models may not be truly reasoning but are simply trying to eliminate incorrect answers rather than utilizing a logical problem-solving strategy. The inconsistency highlights the limitations of LLMs in tackling complex questions effectively, even with guidance.
> <details>
> <summary>read the caption</summary>
> Figure 9: An example that model tends to guess answers.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.1.1.1.1" rowspan="2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.1.1.1.2" style="padding-left:3.4pt;padding-right:3.4pt;"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.3.1.1.1.3" style="padding-left:3.4pt;padding-right:3.4pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S4.T2.3.1.1.1.4" style="padding-left:3.4pt;padding-right:3.4pt;">GPT-4o</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S4.T2.3.1.1.1.5" style="padding-left:3.4pt;padding-right:3.4pt;">Gemini-1.5-Flash</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T2.3.1.1.1.6" style="padding-left:3.4pt;padding-right:3.4pt;">Claude-3.5-Sonnet</th>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.3.1.2.2.1" style="padding-left:3.4pt;padding-right:3.4pt;">Acc (%)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T2.3.1.2.2.2" style="padding-left:3.4pt;padding-right:3.4pt;"># Neg</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.1.2.2.3" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.2.2.3.1" style="background-color:#E6E6FF;"># Test</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.1.2.2.4" style="padding-left:3.4pt;padding-right:3.4pt;">Detail (%)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.1.2.2.5" style="padding-left:3.4pt;padding-right:3.4pt;">Simple (%)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.1.2.2.6" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.2.2.6.1" style="background-color:#E6E6FF;"># Test</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.1.2.2.7" style="padding-left:3.4pt;padding-right:3.4pt;">Detail (%)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.1.2.2.8" style="padding-left:3.4pt;padding-right:3.4pt;">Simple (%)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.1.2.2.9" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.2.2.9.1" style="background-color:#E6E6FF;"># Test</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.1.2.2.10" style="padding-left:3.4pt;padding-right:3.4pt;">Detail (%)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.1.2.2.11" style="padding-left:3.4pt;padding-right:3.4pt;">Simple (%)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.1.3.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.3.1.3.1.1" style="padding-left:3.4pt;padding-right:3.4pt;">LLaVa-OneVision-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.3.1.2" style="padding-left:3.4pt;padding-right:3.4pt;">47.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.3.1.3" style="padding-left:3.4pt;padding-right:3.4pt;">915</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.3.1.4" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.3.1.4.1" style="background-color:#E6E6FF;">312</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.3.1.5" style="padding-left:3.4pt;padding-right:3.4pt;">31.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.3.1.6" style="padding-left:3.4pt;padding-right:3.4pt;">15.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.3.1.7" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.3.1.7.1" style="background-color:#E6E6FF;">333</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.3.1.8" style="padding-left:3.4pt;padding-right:3.4pt;">35.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.3.1.9" style="padding-left:3.4pt;padding-right:3.4pt;">18.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.3.1.10" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.3.1.10.1" style="background-color:#E6E6FF;">408</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.3.1.11" style="padding-left:3.4pt;padding-right:3.4pt;">27.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.3.1.12" style="padding-left:3.4pt;padding-right:3.4pt;">16.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.4.2">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.4.2.1" style="padding-left:3.4pt;padding-right:3.4pt;">InternVL2-8B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.2.2" style="padding-left:3.4pt;padding-right:3.4pt;">45.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.4.2.3" style="padding-left:3.4pt;padding-right:3.4pt;">939</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.4.2.4" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.4.2.4.1" style="background-color:#E6E6FF;">343</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.2.5" style="padding-left:3.4pt;padding-right:3.4pt;">50.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.4.2.6" style="padding-left:3.4pt;padding-right:3.4pt;">41.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.4.2.7" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.4.2.7.1" style="background-color:#E6E6FF;">329</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.2.8" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.4.2.8.1" style="background-color:#FFDFDF;">57.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.4.2.9" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.4.2.9.1" style="background-color:#FFDFDF;">50.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.4.2.10" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.4.2.10.1" style="background-color:#E6E6FF;">437</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.2.11" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.4.2.11.1" style="background-color:#FFDFDF;">50.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.2.12" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.4.2.12.1" style="background-color:#FFDFDF;">41.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.5.3">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.5.3.1" style="padding-left:3.4pt;padding-right:3.4pt;">Molmo-7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.3.2" style="padding-left:3.4pt;padding-right:3.4pt;">43.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.5.3.3" style="padding-left:3.4pt;padding-right:3.4pt;">973</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.5.3.4" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.5.3.4.1" style="background-color:#E6E6FF;">362</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.3.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.5.3.5.1" style="background-color:#FFDFDF;">51.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.5.3.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.5.3.6.1" style="background-color:#FFDFDF;">48.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.5.3.7" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.5.3.7.1" style="background-color:#E6E6FF;">383</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.3.8" style="padding-left:3.4pt;padding-right:3.4pt;">41.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.5.3.9" style="padding-left:3.4pt;padding-right:3.4pt;">43.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.5.3.10" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.5.3.10.1" style="background-color:#E6E6FF;">436</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.3.11" style="padding-left:3.4pt;padding-right:3.4pt;">29.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.3.12" style="padding-left:3.4pt;padding-right:3.4pt;">27.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.6.4">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.6.4.1" style="padding-left:3.4pt;padding-right:3.4pt;">MiniCPM-V</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.4.2" style="padding-left:3.4pt;padding-right:3.4pt;">38.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.6.4.3" style="padding-left:3.4pt;padding-right:3.4pt;">1071</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.6.4.4" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.6.4.4.1" style="background-color:#E6E6FF;">410</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.4.5" style="padding-left:3.4pt;padding-right:3.4pt;">27.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.6.4.6" style="padding-left:3.4pt;padding-right:3.4pt;">23.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.6.4.7" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.6.4.7.1" style="background-color:#E6E6FF;">503</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.4.8" style="padding-left:3.4pt;padding-right:3.4pt;">21.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.6.4.9" style="padding-left:3.4pt;padding-right:3.4pt;">21.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.6.4.10" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.6.4.10.1" style="background-color:#E6E6FF;">540</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.4.11" style="padding-left:3.4pt;padding-right:3.4pt;">24.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.4.12" style="padding-left:3.4pt;padding-right:3.4pt;">23.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.7.5">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.7.5.1" style="padding-left:3.4pt;padding-right:3.4pt;">GLM-4V-9B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.5.2" style="padding-left:3.4pt;padding-right:3.4pt;">46.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.7.5.3" style="padding-left:3.4pt;padding-right:3.4pt;">935</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.7.5.4" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.7.5.4.1" style="background-color:#E6E6FF;">327</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.5.5" style="padding-left:3.4pt;padding-right:3.4pt;">38.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.7.5.6" style="padding-left:3.4pt;padding-right:3.4pt;">30.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.7.5.7" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.7.5.7.1" style="background-color:#E6E6FF;">359</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.5.8" style="padding-left:3.4pt;padding-right:3.4pt;">38.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.7.5.9" style="padding-left:3.4pt;padding-right:3.4pt;">31.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.7.5.10" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.7.5.10.1" style="background-color:#E6E6FF;">441</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.5.11" style="padding-left:3.4pt;padding-right:3.4pt;">34.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.5.12" style="padding-left:3.4pt;padding-right:3.4pt;">27.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.8.6">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.8.6.1" style="padding-left:3.4pt;padding-right:3.4pt;">Phi3.5-Vision-4.2B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.6.2" style="padding-left:3.4pt;padding-right:3.4pt;">43.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.8.6.3" style="padding-left:3.4pt;padding-right:3.4pt;">983</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.8.6.4" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.8.6.4.1" style="background-color:#E6E6FF;">366</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.6.5" style="padding-left:3.4pt;padding-right:3.4pt;">44.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.8.6.6" style="padding-left:3.4pt;padding-right:3.4pt;">42.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.8.6.7" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.8.6.7.1" style="background-color:#E6E6FF;">396</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.6.8" style="padding-left:3.4pt;padding-right:3.4pt;">40.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.8.6.9" style="padding-left:3.4pt;padding-right:3.4pt;">39.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.8.6.10" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.8.6.10.1" style="background-color:#E6E6FF;">484</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.6.11" style="padding-left:3.4pt;padding-right:3.4pt;">39.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.6.12" style="padding-left:3.4pt;padding-right:3.4pt;">38.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.9.7">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.9.7.1" style="padding-left:3.4pt;padding-right:3.4pt;">LLaVa-1.5-7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.7.2" style="padding-left:3.4pt;padding-right:3.4pt;">36.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.9.7.3" style="padding-left:3.4pt;padding-right:3.4pt;">1099</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.9.7.4" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.9.7.4.1" style="background-color:#E6E6FF;">506</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.7.5" style="padding-left:3.4pt;padding-right:3.4pt;">31.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.9.7.6" style="padding-left:3.4pt;padding-right:3.4pt;">12.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.9.7.7" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.9.7.7.1" style="background-color:#E6E6FF;">470</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.7.8" style="padding-left:3.4pt;padding-right:3.4pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.9.7.9" style="padding-left:3.4pt;padding-right:3.4pt;">16.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.9.7.10" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.9.7.10.1" style="background-color:#E6E6FF;">595</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.7.11" style="padding-left:3.4pt;padding-right:3.4pt;">13.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.7.12" style="padding-left:3.4pt;padding-right:3.4pt;">13.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.10.8">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.10.8.1" style="padding-left:3.4pt;padding-right:3.4pt;">LLaVa-1.6-Mistral-7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.10.8.2" style="padding-left:3.4pt;padding-right:3.4pt;">38.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.10.8.3" style="padding-left:3.4pt;padding-right:3.4pt;">1058</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.10.8.4" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.10.8.4.1" style="background-color:#E6E6FF;">432</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.10.8.5" style="padding-left:3.4pt;padding-right:3.4pt;">46.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.10.8.6" style="padding-left:3.4pt;padding-right:3.4pt;">36.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.10.8.7" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.10.8.7.1" style="background-color:#E6E6FF;">429</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.10.8.8" style="padding-left:3.4pt;padding-right:3.4pt;">14.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.10.8.9" style="padding-left:3.4pt;padding-right:3.4pt;">14.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.10.8.10" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.10.8.10.1" style="background-color:#E6E6FF;">515</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.10.8.11" style="padding-left:3.4pt;padding-right:3.4pt;">42.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.10.8.12" style="padding-left:3.4pt;padding-right:3.4pt;">35.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.11.9">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.11.9.1" style="padding-left:3.4pt;padding-right:3.4pt;">Fuyu-8B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.11.9.2" style="padding-left:3.4pt;padding-right:3.4pt;">34.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.11.9.3" style="padding-left:3.4pt;padding-right:3.4pt;">1140</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.11.9.4" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.11.9.4.1" style="background-color:#E6E6FF;">481</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.11.9.5" style="padding-left:3.4pt;padding-right:3.4pt;">6.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.11.9.6" style="padding-left:3.4pt;padding-right:3.4pt;">8.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.11.9.7" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.11.9.7.1" style="background-color:#E6E6FF;">1140</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.11.9.8" style="padding-left:3.4pt;padding-right:3.4pt;">3.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.11.9.9" style="padding-left:3.4pt;padding-right:3.4pt;">3.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.11.9.10" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.11.9.10.1" style="background-color:#E6E6FF;">612</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.11.9.11" style="padding-left:3.4pt;padding-right:3.4pt;">9.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.11.9.12" style="padding-left:3.4pt;padding-right:3.4pt;">6.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.12.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.3.1.12.10.1" style="padding-left:3.4pt;padding-right:3.4pt;">Qwen2-VL-7B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.12.10.2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.12.10.2.1" style="background-color:#FFDFDF;">48.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.1.12.10.3" style="padding-left:3.4pt;padding-right:3.4pt;">898</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.1.12.10.4" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.12.10.4.1" style="background-color:#E6E6FF;">268</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.12.10.5" style="padding-left:3.4pt;padding-right:3.4pt;">50.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.1.12.10.6" style="padding-left:3.4pt;padding-right:3.4pt;">44.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.1.12.10.7" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.12.10.7.1" style="background-color:#E6E6FF;">322</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.12.10.8" style="padding-left:3.4pt;padding-right:3.4pt;">39.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.1.12.10.9" style="padding-left:3.4pt;padding-right:3.4pt;">37.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.1.12.10.10" style="background-color:#E6E6FF;padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="S4.T2.3.1.12.10.10.1" style="background-color:#E6E6FF;">389</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.12.10.11" style="padding-left:3.4pt;padding-right:3.4pt;">42.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.12.10.12" style="padding-left:3.4pt;padding-right:3.4pt;">37.3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the correction rates achieved by three different feedback providers (GPT-40, Gemini-1.5-Flash, and Claude-3.5-Sonnet) when assisting various Large Multimodal Models (LMMs) in solving problems from the MMMU-Pro dataset.  The experiment is performed using a single image setting for each problem in MMMU-Pro. For each LMM and feedback provider combination, the table shows the accuracy, the number of negative samples, the total number of test samples, and the correction rates using both detailed LMM-generated feedback and simple binary feedback.  The correction rate indicates the percentage of initially incorrect answers that were successfully corrected with the feedback.
> <details>
> <summary>read the caption</summary>
> Table 2: Correction Rate Results of three Feedback Providers on MMMU-Pro Dataset. We test models on a single image setting of MMMU-Pro.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.6.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.6.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.6.2.2.3" style="padding:0.5pt 13.7pt;"><span class="ltx_text" id="S4.T3.6.2.2.3.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.6.2.2.4" style="padding:0.5pt 13.7pt;">Visual Logic</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.6.2.2.5" style="padding:0.5pt 13.7pt;">MMMU-Pro</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.6.2.2.6" style="padding:0.5pt 13.7pt;">MathVerse</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.1.1.1" style="padding:0.5pt 13.7pt;">Math<math alttext="{}^{\text{Text}}" class="ltx_Math" display="inline" id="S4.T3.5.1.1.1.m1.1"><semantics id="S4.T3.5.1.1.1.m1.1a"><msup id="S4.T3.5.1.1.1.m1.1.1" xref="S4.T3.5.1.1.1.m1.1.1.cmml"><mi id="S4.T3.5.1.1.1.m1.1.1a" xref="S4.T3.5.1.1.1.m1.1.1.cmml"></mi><mtext id="S4.T3.5.1.1.1.m1.1.1.1" xref="S4.T3.5.1.1.1.m1.1.1.1a.cmml">Text</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T3.5.1.1.1.m1.1b"><apply id="S4.T3.5.1.1.1.m1.1.1.cmml" xref="S4.T3.5.1.1.1.m1.1.1"><ci id="S4.T3.5.1.1.1.m1.1.1.1a.cmml" xref="S4.T3.5.1.1.1.m1.1.1.1"><mtext id="S4.T3.5.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T3.5.1.1.1.m1.1.1.1">Text</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.1.1.1.m1.1c">{}^{\text{Text}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.1.1.1.m1.1d">start_FLOATSUPERSCRIPT Text end_FLOATSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T3.6.2.2.2" style="padding:0.5pt 13.7pt;">Coding<math alttext="{}^{\text{Text}}" class="ltx_Math" display="inline" id="S4.T3.6.2.2.2.m1.1"><semantics id="S4.T3.6.2.2.2.m1.1a"><msup id="S4.T3.6.2.2.2.m1.1.1" xref="S4.T3.6.2.2.2.m1.1.1.cmml"><mi id="S4.T3.6.2.2.2.m1.1.1a" xref="S4.T3.6.2.2.2.m1.1.1.cmml"></mi><mtext id="S4.T3.6.2.2.2.m1.1.1.1" xref="S4.T3.6.2.2.2.m1.1.1.1a.cmml">Text</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T3.6.2.2.2.m1.1b"><apply id="S4.T3.6.2.2.2.m1.1.1.cmml" xref="S4.T3.6.2.2.2.m1.1.1"><ci id="S4.T3.6.2.2.2.m1.1.1.1a.cmml" xref="S4.T3.6.2.2.2.m1.1.1.1"><mtext id="S4.T3.6.2.2.2.m1.1.1.1.cmml" mathsize="70%" xref="S4.T3.6.2.2.2.m1.1.1.1">Text</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.2.2.2.m1.1c">{}^{\text{Text}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.2.2.2.m1.1d">start_FLOATSUPERSCRIPT Text end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.6.2.2.7" style="padding:0.5pt 13.7pt;">Average</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.6.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.6.2.3.1.1" style="padding:0.5pt 13.7pt;">Gemini-2.0</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.2.3.1.2" style="padding:0.5pt 13.7pt;">21.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.2.3.1.3" style="padding:0.5pt 13.7pt;">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.2.3.1.4" style="padding:0.5pt 13.7pt;">70.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.2.3.1.5" style="padding:0.5pt 13.7pt;">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.2.3.1.6" style="padding:0.5pt 13.7pt;">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.2.3.1.7" style="padding:0.5pt 13.7pt;">32.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.6.2.4.2.1" style="padding:0.5pt 13.7pt;">Claude-3.5</th>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.4.2.2" style="padding:0.5pt 13.7pt;"><span class="ltx_text" id="S4.T3.6.2.4.2.2.1" style="background-color:#FFDFDF;">37.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.4.2.3" style="padding:0.5pt 13.7pt;">60.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.4.2.4" style="padding:0.5pt 13.7pt;">80.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.4.2.5" style="padding:0.5pt 13.7pt;">70.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.2.4.2.6" style="padding:0.5pt 13.7pt;">70.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.4.2.7" style="padding:0.5pt 13.7pt;"><span class="ltx_text" id="S4.T3.6.2.4.2.7.1" style="background-color:#FFDFDF;">48.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.6.2.5.3.1" style="padding:0.5pt 13.7pt;">OpenAI-o1</th>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.5.3.2" style="padding:0.5pt 13.7pt;">28.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.5.3.3" style="padding:0.5pt 13.7pt;">60.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.5.3.4" style="padding:0.5pt 13.7pt;"><span class="ltx_text" id="S4.T3.6.2.5.3.4.1" style="background-color:#FFDFDF;">90.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.5.3.5" style="padding:0.5pt 13.7pt;"><span class="ltx_text" id="S4.T3.6.2.5.3.5.1" style="background-color:#FFDFDF;">90.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.2.5.3.6" style="padding:0.5pt 13.7pt;"><span class="ltx_text" id="S4.T3.6.2.5.3.6.1" style="background-color:#FFDFDF;">90.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.5.3.7" style="padding:0.5pt 13.7pt;">46.7</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.6.2.6.4.1" style="padding:0.5pt 13.7pt;">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.2.6.4.2" style="padding:0.5pt 13.7pt;">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.2.6.4.3" style="padding:0.5pt 13.7pt;"><span class="ltx_text" id="S4.T3.6.2.6.4.3.1" style="background-color:#FFDFDF;">70.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.2.6.4.4" style="padding:0.5pt 13.7pt;">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.2.6.4.5" style="padding:0.5pt 13.7pt;">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.6.2.6.4.6" style="padding:0.5pt 13.7pt;">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.2.6.4.7" style="padding:0.5pt 13.7pt;">38.3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the human evaluation results for several Large Multimodal Models (LMMs) on the InterFeedback-Human dataset.  The dataset contains various task types, including visual logic problems, mathematical and coding tasks, and text-only problems categorized as MathText and CodingText. The table shows the average percentage of correct answers achieved by each LMM across all samples in each task category. This provides a comprehensive assessment of the models' capabilities in interactive human-AI scenarios.
> <details>
> <summary>read the caption</summary>
> Table 3: Human Evaluation Results across LMMs on InterFeedback-Human. MathTextText{}^{\text{Text}}start_FLOATSUPERSCRIPT Text end_FLOATSUPERSCRIPT and CodingTextText{}^{\text{Text}}start_FLOATSUPERSCRIPT Text end_FLOATSUPERSCRIPT represent two text-only task categories. The scores represent the average percentage of correct samples among all samples.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.6.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.6.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.6.2.2.3" style="padding-left:14.2pt;padding-right:14.2pt;"><span class="ltx_text" id="S4.T4.6.2.2.3.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.6.2.2.4" style="padding-left:14.2pt;padding-right:14.2pt;"><span class="ltx_text" id="S4.T4.6.2.2.4.1"># Round</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.2.2.5" style="padding-left:14.2pt;padding-right:14.2pt;">Visual Logic</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.2.2.6" style="padding-left:14.2pt;padding-right:14.2pt;">MMMU-Pro</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.2.2.7" style="padding-left:14.2pt;padding-right:14.2pt;">MathVerse</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.5.1.1.1" style="padding-left:14.2pt;padding-right:14.2pt;">Math<math alttext="{}^{\text{Text}}" class="ltx_Math" display="inline" id="S4.T4.5.1.1.1.m1.1"><semantics id="S4.T4.5.1.1.1.m1.1a"><msup id="S4.T4.5.1.1.1.m1.1.1" xref="S4.T4.5.1.1.1.m1.1.1.cmml"><mi id="S4.T4.5.1.1.1.m1.1.1a" xref="S4.T4.5.1.1.1.m1.1.1.cmml"></mi><mtext id="S4.T4.5.1.1.1.m1.1.1.1" xref="S4.T4.5.1.1.1.m1.1.1.1a.cmml">Text</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T4.5.1.1.1.m1.1b"><apply id="S4.T4.5.1.1.1.m1.1.1.cmml" xref="S4.T4.5.1.1.1.m1.1.1"><ci id="S4.T4.5.1.1.1.m1.1.1.1a.cmml" xref="S4.T4.5.1.1.1.m1.1.1.1"><mtext id="S4.T4.5.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T4.5.1.1.1.m1.1.1.1">Text</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.1.1.1.m1.1c">{}^{\text{Text}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.1.1.1.m1.1d">start_FLOATSUPERSCRIPT Text end_FLOATSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T4.6.2.2.2" style="padding-left:14.2pt;padding-right:14.2pt;">Coding<math alttext="{}^{\text{Text}}" class="ltx_Math" display="inline" id="S4.T4.6.2.2.2.m1.1"><semantics id="S4.T4.6.2.2.2.m1.1a"><msup id="S4.T4.6.2.2.2.m1.1.1" xref="S4.T4.6.2.2.2.m1.1.1.cmml"><mi id="S4.T4.6.2.2.2.m1.1.1a" xref="S4.T4.6.2.2.2.m1.1.1.cmml"></mi><mtext id="S4.T4.6.2.2.2.m1.1.1.1" xref="S4.T4.6.2.2.2.m1.1.1.1a.cmml">Text</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T4.6.2.2.2.m1.1b"><apply id="S4.T4.6.2.2.2.m1.1.1.cmml" xref="S4.T4.6.2.2.2.m1.1.1"><ci id="S4.T4.6.2.2.2.m1.1.1.1a.cmml" xref="S4.T4.6.2.2.2.m1.1.1.1"><mtext id="S4.T4.6.2.2.2.m1.1.1.1.cmml" mathsize="70%" xref="S4.T4.6.2.2.2.m1.1.1.1">Text</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.2.2.2.m1.1c">{}^{\text{Text}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.2.2.2.m1.1d">start_FLOATSUPERSCRIPT Text end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.2.2.8" style="padding-left:14.2pt;padding-right:14.2pt;">Average</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.6.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.6.2.3.1.1" rowspan="3" style="padding-left:14.2pt;padding-right:14.2pt;"><span class="ltx_text" id="S4.T4.6.2.3.1.1.1">Gemini-2.0</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.6.2.3.1.2" style="padding-left:14.2pt;padding-right:14.2pt;">1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.3.1.3" style="padding-left:14.2pt;padding-right:14.2pt;">38.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.3.1.4" style="padding-left:14.2pt;padding-right:14.2pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.3.1.5" style="padding-left:14.2pt;padding-right:14.2pt;">33.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.3.1.6" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.6.2.3.1.7" style="padding-left:14.2pt;padding-right:14.2pt;">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.3.1.8" style="padding-left:14.2pt;padding-right:14.2pt;">37.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.2.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.6.2.4.2.1" style="padding-left:14.2pt;padding-right:14.2pt;">2</th>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.4.2.2" style="padding-left:14.2pt;padding-right:14.2pt;">20.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.4.2.3" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.4.2.4" style="padding-left:14.2pt;padding-right:14.2pt;">33.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.4.2.5" style="padding-left:14.2pt;padding-right:14.2pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.6.2.4.2.6" style="padding-left:14.2pt;padding-right:14.2pt;">20.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.4.2.7" style="padding-left:14.2pt;padding-right:14.2pt;">19.8</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.2.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.6.2.5.3.1" style="padding-left:14.2pt;padding-right:14.2pt;">3</th>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.5.3.2" style="padding-left:14.2pt;padding-right:14.2pt;">41.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.5.3.3" style="padding-left:14.2pt;padding-right:14.2pt;">80.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.5.3.4" style="padding-left:14.2pt;padding-right:14.2pt;">33.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.5.3.5" style="padding-left:14.2pt;padding-right:14.2pt;">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.6.2.5.3.6" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.5.3.7" style="padding-left:14.2pt;padding-right:14.2pt;">43.2</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.6.2.6.4.1" rowspan="3" style="padding-left:14.2pt;padding-right:14.2pt;"><span class="ltx_text" id="S4.T4.6.2.6.4.1.1">Claude-3.5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.6.2.6.4.2" style="padding-left:14.2pt;padding-right:14.2pt;">1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.6.4.3" style="padding-left:14.2pt;padding-right:14.2pt;">38.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.6.4.4" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.6.4.5" style="padding-left:14.2pt;padding-right:14.2pt;">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.6.4.6" style="padding-left:14.2pt;padding-right:14.2pt;">33.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.6.2.6.4.7" style="padding-left:14.2pt;padding-right:14.2pt;">66.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.6.4.8" style="padding-left:14.2pt;padding-right:14.2pt;">37.1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.2.7.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.6.2.7.5.1" style="padding-left:14.2pt;padding-right:14.2pt;">2</th>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.7.5.2" style="padding-left:14.2pt;padding-right:14.2pt;">32.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.7.5.3" style="padding-left:14.2pt;padding-right:14.2pt;">25.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.7.5.4" style="padding-left:14.2pt;padding-right:14.2pt;">50.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.7.5.5" style="padding-left:14.2pt;padding-right:14.2pt;">33.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.6.2.7.5.6" style="padding-left:14.2pt;padding-right:14.2pt;">66.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.7.5.7" style="padding-left:14.2pt;padding-right:14.2pt;">30.6</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.2.8.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.6.2.8.6.1" style="padding-left:14.2pt;padding-right:14.2pt;">3</th>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.8.6.2" style="padding-left:14.2pt;padding-right:14.2pt;">30.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.8.6.3" style="padding-left:14.2pt;padding-right:14.2pt;">75.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.8.6.4" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.8.6.5" style="padding-left:14.2pt;padding-right:14.2pt;">66.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.6.2.8.6.6" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.8.6.7" style="padding-left:14.2pt;padding-right:14.2pt;">32.3</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.2.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.6.2.9.7.1" rowspan="3" style="padding-left:14.2pt;padding-right:14.2pt;"><span class="ltx_text" id="S4.T4.6.2.9.7.1.1">OpenAI-o1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.6.2.9.7.2" style="padding-left:14.2pt;padding-right:14.2pt;">1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.9.7.3" style="padding-left:14.2pt;padding-right:14.2pt;">38.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.9.7.4" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.9.7.5" style="padding-left:14.2pt;padding-right:14.2pt;">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.9.7.6" style="padding-left:14.2pt;padding-right:14.2pt;">11.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.6.2.9.7.7" style="padding-left:14.2pt;padding-right:14.2pt;">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.9.7.8" style="padding-left:14.2pt;padding-right:14.2pt;">39.1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.2.10.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.6.2.10.8.1" style="padding-left:14.2pt;padding-right:14.2pt;">2</th>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.10.8.2" style="padding-left:14.2pt;padding-right:14.2pt;">21.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.10.8.3" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.10.8.4" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.10.8.5" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.6.2.10.8.6" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.10.8.7" style="padding-left:14.2pt;padding-right:14.2pt;">18.8</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.2.11.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.6.2.11.9.1" style="padding-left:14.2pt;padding-right:14.2pt;">3</th>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.11.9.2" style="padding-left:14.2pt;padding-right:14.2pt;">40.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.11.9.3" style="padding-left:14.2pt;padding-right:14.2pt;">100.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.11.9.4" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.11.9.5" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.6.2.11.9.6" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.11.9.7" style="padding-left:14.2pt;padding-right:14.2pt;">42.2</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.2.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T4.6.2.12.10.1" rowspan="3" style="padding-left:14.2pt;padding-right:14.2pt;"><span class="ltx_text" id="S4.T4.6.2.12.10.1.1">GPT-4o</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.6.2.12.10.2" style="padding-left:14.2pt;padding-right:14.2pt;">1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.12.10.3" style="padding-left:14.2pt;padding-right:14.2pt;">41.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.12.10.4" style="padding-left:14.2pt;padding-right:14.2pt;">33.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.12.10.5" style="padding-left:14.2pt;padding-right:14.2pt;">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.12.10.6" style="padding-left:14.2pt;padding-right:14.2pt;">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.6.2.12.10.7" style="padding-left:14.2pt;padding-right:14.2pt;">40.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.2.12.10.8" style="padding-left:14.2pt;padding-right:14.2pt;">41.9</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.2.13.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.6.2.13.11.1" style="padding-left:14.2pt;padding-right:14.2pt;">2</th>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.13.11.2" style="padding-left:14.2pt;padding-right:14.2pt;">31.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.13.11.3" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.13.11.4" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.13.11.5" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.6.2.13.11.6" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.2.13.11.7" style="padding-left:14.2pt;padding-right:14.2pt;">25.7</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.2.14.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.6.2.14.12.1" style="padding-left:14.2pt;padding-right:14.2pt;">3</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.2.14.12.2" style="padding-left:14.2pt;padding-right:14.2pt;">26.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.2.14.12.3" style="padding-left:14.2pt;padding-right:14.2pt;">66.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.2.14.12.4" style="padding-left:14.2pt;padding-right:14.2pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.2.14.12.5" style="padding-left:14.2pt;padding-right:14.2pt;">75.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.6.2.14.12.6" style="padding-left:14.2pt;padding-right:14.2pt;">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.2.14.12.7" style="padding-left:14.2pt;padding-right:14.2pt;">32.4</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the correction rates achieved by various Large Multimodal Models (LMMs) on the InterFeedback-Human benchmark.  The benchmark consists of five types of tasks: visual logic, mathematical logic, coding, MMMU-Pro, and MathVerse.  MathText and CodingText represent text-only tasks within the benchmark. The table shows the correction rate (percentage of initially incorrect answers that were subsequently corrected) for each LMM across three interaction rounds. Round 0 indicates the initial accuracy before any interaction, while subsequent rounds reflect improvements after receiving human feedback.
> <details>
> <summary>read the caption</summary>
> Table 4: Correction Rate Results across various LMMs on InterFeedback-Human. MathTextText{}^{\text{Text}}start_FLOATSUPERSCRIPT Text end_FLOATSUPERSCRIPT and CodingTextText{}^{\text{Text}}start_FLOATSUPERSCRIPT Text end_FLOATSUPERSCRIPT represent two text-only task categories. # Round denotes the number of interaction rounds. The correction rate is the percentage of corrected samples among all erroneous samples.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T5.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T5.1.1.1.1.1">Model</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T5.1.1.1.1.2">Release Time</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.1.1.3">Source</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A1.T5.1.1.2.2.1"><span class="ltx_text ltx_font_italic" id="A1.T5.1.1.2.2.1.1">Closed-source Models</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.3.3.1">GPT-4o <cite class="ltx_cite ltx_citemacro_citep">(OpenAI, <a class="ltx_ref" href="https://arxiv.org/html/2502.15027v1#bib.bib30" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.3.3.2">2024-08-26</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.3.3.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://openai.com/index/hello-gpt-4o/" title="">https://openai.com/index/hello-gpt-4o/</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.4.4.1">OpenAI-o1 <cite class="ltx_cite ltx_citemacro_citep">(OpenAI, <a class="ltx_ref" href="https://arxiv.org/html/2502.15027v1#bib.bib31" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.4.4.2">2024-12-17</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.4.4.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://openai.com/o1/" title="">https://openai.com/o1/</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.5.5.1">Gemini-1.5-Flash <cite class="ltx_cite ltx_citemacro_citep">(Gemini, <a class="ltx_ref" href="https://arxiv.org/html/2502.15027v1#bib.bib11" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.5.5.2">2024-09-24</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.5.5.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://deepmind.google/technologies/gemini/" title="">https://deepmind.google/technologies/gemini/</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.6.6.1">Gemini-2.0-Flash</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.6.6.2">2025-01-21</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.6.6.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://deepmind.google/technologies/gemini/" title="">https://deepmind.google/technologies/gemini/</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.7.7.1">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.7.7.2">2024-10-22</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.7.7.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.anthropic.com/claude/sonnet" title="">https://www.anthropic.com/claude/sonnet</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.8.8">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A1.T5.1.1.8.8.1"><span class="ltx_text ltx_font_italic" id="A1.T5.1.1.8.8.1.1">Closed-source Models</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.9.9.1">LLaVA-One-Vision</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.9.9.2">2024-08-05</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.9.9.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://llava-vl.github.io/blog/2024-08-05-llava-onevision/" title="">https://llava-vl.github.io/blog/2024-08-05-llava-onevision/</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.10.10.1">InterVL2-8B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.10.10.2">2024-07-04</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.10.10.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://internvl.github.io/blog/2024-07-02-InternVL-2.0/" title="">https://internvl.github.io/blog/2024-07-02-InternVL-2.0/</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.11.11.1">Molmo-7B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.11.11.2">2024-09-24</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.11.11.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://huggingface.co/allenai/Molmo-7B-D-0924" title="">https://huggingface.co/allenai/Molmo-7B-D-0924</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.12.12.1">MiniCPM-V</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.12.12.2">2024-08-03</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.12.12.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://huggingface.co/openbmb/MiniCPM-V" title="">https://huggingface.co/openbmb/MiniCPM-V</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.13.13.1">GLM-4V-9B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.13.13.2">2024-11-01</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.13.13.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://huggingface.co/THUDM/glm-4v-9b" title="">https://huggingface.co/THUDM/glm-4v-9b</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.14.14.1">Pih3.5-Vision-4.2B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.14.14.2">2024-08-20</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.14.14.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://huggingface.co/microsoft/Phi-3.5-vision-instruct" title="">https://huggingface.co/microsoft/Phi-3.5-vision-instruct</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.15.15.1">LLaVA-1.5-7B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.15.15.2">2023-10-05</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.15.15.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://huggingface.co/liuhaotian/llava-v1.5-7b" title="">https://huggingface.co/liuhaotian/llava-v1.5-7b</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.16.16.1">LLaVA-1.6-Mistral-7B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.16.16.2">2024-01-30</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.16.16.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://huggingface.co/llava-hf/llava-v1.6-mistral-7b-hf" title="">https://huggingface.co/llava-hf/llava-v1.6-mistral-7b-hf</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.17.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.17.17.1">Fuyu-8B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.1.17.17.2">2023-10-27</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.17.17.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://huggingface.co/adept/fuyu-8b" title="">https://huggingface.co/adept/fuyu-8b</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.18.18">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T5.1.1.18.18.1">Qwen2-VL-7B</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T5.1.1.18.18.2">2024-08-30</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.1.1.18.18.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://huggingface.co/Qwen/Qwen2-VL-7B" title="">https://huggingface.co/Qwen/Qwen2-VL-7B</a></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the large multimodal models (LMMs) used in the InterFeedback-Bench benchmark. For each model, it provides the release date and a link to its source. This information is crucial for reproducibility and allows researchers to easily access the specific versions of the models used in the study.  The models are categorized into closed-source and open-source, reflecting their accessibility and licensing.
> <details>
> <summary>read the caption</summary>
> Table 5: The release time and model source of LMMs used in our InterFeedback-Bench.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.15027/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15027/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}