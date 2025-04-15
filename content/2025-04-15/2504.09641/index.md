---
title: "TinyLLaVA-Video-R1: Towards Smaller LMMs for Video Reasoning"
summary: "TinyLLaVA-Video-R1: Smaller LMMs achieve boosted video reasoning via reinforcement learning and 'aha moments'!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Beihang University",]
showSummary: true
date: 2025-04-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.09641 {{< /keyword >}}
{{< keyword icon="writer" >}} Xingjian Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-15 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.09641" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.09641" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.09641/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Improving reasoning in Large Multimodal Models(LMMs) via reinforcement learning shows progress, but often relies on large-scale models and intensive datasets, limiting accessibility for researchers with fewer resources. Existing video reasoning models struggle with reasoning-intensive data scarcity. Moreover, it is equally meaningful to have models explain reasoning on general question-answering datasets.



This paper introduces **TinyLLaVA-Video-R1**, a small-scale video reasoning model, based on TinyLLaVA-Video. It enhances reasoning via reinforcement learning on general Video-QA datasets, demonstrating improved thinking and reasoning with emergent "aha moments". The authors also share experimental findings for video reasoning exploration in small-scale models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Small-scale models can exhibit strong reasoning capabilities after reinforcement learning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Reinforcement learning enhances both reasoning and thinking abilities in video-QA tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The model exhibits 'aha moments,' demonstrating reflection and backtracking in its reasoning process. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers constrained by computational resources, demonstrating effective video reasoning with smaller models. It offers practical insights and a reproducible setup (**TinyLLaVA-Video-R1**), fostering innovation in resource-efficient AI and opening avenues for exploring reasoning in compact multimodal systems.

------
#### Visual Insights



![](https://arxiv.org/html/2504.09641/x1.png)

> 🔼 This figure showcases TinyLLaVA-Video-R1's performance on a video understanding task from the MVBench dataset.  The example demonstrates the model's ability to not only correctly identify the action in a video (a person picking up an object), but also to articulate its reasoning process. The model's thought process is presented step-by-step, showing its ability to analyze the visual scene, consider multiple options, and ultimately arrive at a confident and accurate answer.  The blue highlighting emphasizes the model's reflective and backtracking behavior, indicating a more advanced reasoning process than simply recognizing objects and actions; it actively evaluates its own thinking and adjusts its approach if necessary.
> <details>
> <summary>read the caption</summary>
> Figure 1: A case of TinyLLaVA-Video-R1 on video understanding data, sourced from MVBench. The model demonstrates the ability to perceive video scenes and analyze options, while also exhibiting reflective and backtracking behavior (highlighted in blue).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.2">
<tr class="ltx_tr" id="S3.T1.2.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.2.1.1" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.1.1.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.2.1.2" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.1.2.1" style="font-size:80%;">LLM size</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.2.1.3" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.1.3.1" style="font-size:80%;">Answer Type</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.2.1.4" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.1.4.1" style="font-size:80%;">MVBench</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.2.1.5" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.1.5.1" style="font-size:80%;">Video-MME (wo sub)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.2.1.6" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.1.6.1" style="font-size:80%;">MLVU</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.2.1.7" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.1.7.1" style="font-size:80%;">MMVU (mc)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.2.2.1" style="padding:1.2pt 1.5pt;">
<span class="ltx_text" id="S3.T1.2.2.1.1" style="font-size:80%;">LLaMA-VID </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.2.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09641v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a><span class="ltx_text" id="S3.T1.2.2.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.2.2.2" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.2.2.1" style="font-size:80%;">7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.2.2.3" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.2.3.1" style="font-size:80%;">Option</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.2.2.4" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.2.4.1" style="font-size:80%;">41.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.2.2.5" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.2.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.2.2.6" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.2.6.1" style="font-size:80%;">33.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.2.2.7" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.2.7.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.3.1" style="padding:1.2pt 1.5pt;">
<span class="ltx_text" id="S3.T1.2.3.1.1" style="font-size:80%;">LLaVA-NeXT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.3.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09641v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a><span class="ltx_text" id="S3.T1.2.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.3.2" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.3.2.1" style="font-size:80%;">7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.3.3" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.3.3.1" style="font-size:80%;">Option</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.3.4" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.3.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.3.5" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.3.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.3.6" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.3.6.1" style="font-size:80%;">39.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.3.7" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.3.7.1" style="font-size:80%;">29.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.4.1" style="padding:1.2pt 1.5pt;">
<span class="ltx_text" id="S3.T1.2.4.1.1" style="font-size:80%;">VideoLLaVA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.4.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09641v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="S3.T1.2.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.4.2" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.4.2.1" style="font-size:80%;">7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.4.3" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.4.3.1" style="font-size:80%;">Option</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.4.4" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.4.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.4.5" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.4.5.1" style="font-size:80%;">39.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.4.6" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.4.6.1" style="font-size:80%;">47.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.4.7" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.4.7.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.5.1" style="padding:1.2pt 1.5pt;">
<span class="ltx_text" id="S3.T1.2.5.1.1" style="font-size:80%;">ShareGPT4Video </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.5.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09641v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a><span class="ltx_text" id="S3.T1.2.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.5.2" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.5.2.1" style="font-size:80%;">8B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.5.3" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.5.3.1" style="font-size:80%;">Option</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.5.4" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.5.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.5.5" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.5.5.1" style="font-size:80%;">39.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.5.6" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.5.6.1" style="font-size:80%;">46.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.5.7" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.5.7.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.6.1" style="padding:1.2pt 1.5pt;">
<span class="ltx_text" id="S3.T1.2.6.1.1" style="font-size:80%;">LLaVA-Mini </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.6.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09641v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="S3.T1.2.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.6.2" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.6.2.1" style="font-size:80%;">7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.6.3" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.6.3.1" style="font-size:80%;">Option</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.6.4" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.6.4.1" style="font-size:80%;">44.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.6.5" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.6.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.6.6" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.6.6.1" style="font-size:80%;">42.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.6.7" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.6.7.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.7.1" style="padding:1.2pt 1.5pt;">
<span class="ltx_text" id="S3.T1.2.7.1.1" style="font-size:80%;">InternVideo2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.7.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09641v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="S3.T1.2.7.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.7.2" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.7.2.1" style="font-size:80%;">8B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.7.3" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.7.3.1" style="font-size:80%;">Option</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.7.4" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.7.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.7.5" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.7.5.1" style="font-size:80%;">41.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.7.6" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.7.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.7.7" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.7.7.1" style="font-size:80%;">39.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.2.8.1" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.8.1.1" style="font-size:80%;">TinyLLaVA-Video-SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.2.8.2" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.8.2.1" style="font-size:80%;">3B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.2.8.3" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.8.3.1" style="font-size:80%;">Option</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.2.8.4" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.8.4.1" style="font-size:80%;">49.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.2.8.5" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.8.5.1" style="font-size:80%;">42.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.2.8.6" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.8.6.1" style="font-size:80%;">49.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.2.8.7" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.8.7.1" style="font-size:80%;">46.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.9.1" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.9.1.1" style="font-size:80%;">TinyLLaVA-Video-ColdStart</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.9.2" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.9.2.1" style="font-size:80%;">3B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.9.3" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.9.3.1" style="font-size:80%;">Reason</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.9.4" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.9.4.1" style="font-size:80%;">33.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.9.5" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.9.5.1" style="font-size:80%;">26.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.9.6" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.9.6.1" style="font-size:80%;">28.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.9.7" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.9.7.1" style="font-size:80%;">22.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.10.1" style="padding:1.2pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.10.1.1" style="font-size:80%;">TinyLLaVA-Video-R1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.10.2" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.10.2.1" style="font-size:80%;">3B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.10.3" style="padding:1.2pt 1.5pt;"><span class="ltx_text" id="S3.T1.2.10.3.1" style="font-size:80%;">Reason</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.10.4" style="padding:1.2pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.10.4.1" style="font-size:80%;">49.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.10.5" style="padding:1.2pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.10.5.1" style="font-size:80%;">46.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.10.6" style="padding:1.2pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.10.6.1" style="font-size:80%;">52.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.10.7" style="padding:1.2pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.10.7.1" style="font-size:80%;">46.9</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of TinyLLaVA-Video-R1 against other models on various video understanding and reasoning benchmarks.  The benchmarks are categorized into two types: general-purpose video evaluation and video reasoning.  For each benchmark, the table shows the model's performance when only required to select an answer option and when also required to provide the reasoning process along with the answer.  The model sizes (in billions of parameters) are also given for comparative purposes. The best result for each benchmark and task type is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 1: The performance of TinyLLaVA-Video-R1 on multiple benchmarks. ”Option” indicates that the model only needs to answer with the selected choice, while ”Reason” means the model must output both the answer and the reasoning process according to the format requirements. Here, MMVU is categorized as a video reasoning benchmark, the remaining benchmarks are designed for general-purpose video evaluation. The best results are indicated by boldface.
> </details>





### In-depth insights


#### Video-R1: Smaller?
While the paper doesn't explicitly have a section titled "Video-R1: Smaller?", the core argument revolves around **exploring the capabilities of smaller language models (LMMs) for video reasoning**.  This is in contrast to the current trend of using very large, resource-intensive models. The research suggests that exploring the **reasoning potential of smaller models** is valuable, particularly for researchers with limited computational resources.  It addresses a gap where existing research on video reasoning hasn't significantly progressed due to the scarcity of datasets requiring high reasoning. This implicitly acknowledges that while scaling up models yields performance gains, there is a need to understand if similar reasoning capabilities can be achieved more efficiently in smaller architectures. This is crucial for accessibility and sustainability within the research community, enabling more researchers to contribute to the field. It is implied that a balance can be struck between model size and reasoning ability, suggesting that a comprehensive approach is warranted in the selection of LMM for Video-R1.

#### Traceable Models
The concept of 'Traceable Models,' though not explicitly a heading in the provided research paper, is implicitly addressed through the authors' emphasis on **transparency and reproducibility** in their methodology. The paper champions TinyLLaVA-Video because its training data is fully open-sourced and the training process is entirely traceable, which is essential. **This approach enhances trust and reliability** in the model's capabilities, offering a stark contrast to black-box models where the reasoning is opaque. By avoiding repeated data use across training phases, the authors enhance result reliability. The model can demonstrate its thought process making it interpretable and valuable. **This emphasis ensures the research community** can scrutinize, replicate, and build upon the findings with confidence.

#### GRPO and Video
**GRPO (Group Relative Policy Optimization)**, a reinforcement learning technique, shows promise in enhancing video understanding models. By employing **rule-based rewards**, GRPO minimizes computational costs, spurring interest in 'aha moments' during training. Applying GRPO to video presents unique challenges. Datasets must be tailored to reward reasoning rather than mere perception. Model architecture is crucial, requiring adaptation to the temporal nature of video data. The reward function needs careful design to promote coherent, step-by-step reasoning processes. Despite these challenges, GRPO offers a path to developing more insightful and capable video AI systems, improving comprehension and decision-making in complex dynamic environments. Overcoming data scarcity via synthetic data is crucial. 

#### Video QA Dataset
**Video QA datasets** are pivotal for evaluating video reasoning in models like TinyLLaVA-Video-R1, but their availability and quality present challenges. The paper highlights the limitations of existing video reasoning datasets, noting that they often lack the **reasoning intensity** found in image or code-based datasets. This scarcity necessitates a focus on general Video-QA datasets, even if they are not specifically designed for deep reasoning, as these datasets enable initial exploration of reasoning capabilities in smaller models. The work uses the **NextQA dataset** for training, acknowledging its **weak reasoning** but leveraging reinforcement learning to guide the model to demonstrate its thought process. This approach underlines the importance of dataset selection and the necessity of employing techniques like GRPO and customized reward rules to enhance reasoning abilities despite dataset limitations. Further research directions may involve introducing higher quality video reasoning data.

#### Small Models Next
The pursuit of smaller language models (LMMs) for video reasoning represents a crucial direction, particularly given the computational constraints faced by many researchers. **Focusing on smaller models democratizes research**, allowing exploration without necessitating vast resources. **It is valuable to explore the limitations and potential optimizations within constrained parameter spaces**. The paper's exploration of TinyLLaVA-Video-R1 exemplifies this approach. Furthermore, **investigating reasoning capabilities** goes beyond mere answer generation; it delves into the model's thought process. This emphasis on interpretability and step-by-step analysis enhances trust and provides insights into the model's decision-making. The investigation is meaningful for both model comprehension and improvement.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.09641/x2.png)

> 🔼 Figure 2 presents an example of TinyLLaVA-Video-R1's performance on a video reasoning task from the MMVU dataset.  The figure showcases the model's ability to not only understand the visual content of the video but also to analyze the provided options and arrive at the correct answer through a step-by-step reasoning process. This demonstrates the model's advanced capabilities in comprehending video content and using analytical reasoning to solve problems, which is a key contribution of the TinyLLaVA-Video-R1 model.
> <details>
> <summary>read the caption</summary>
> Figure 2: A case of TinyLLaVA-Video-R1 on video reasoning data, sourced from MMVU. The model demonstrates comprehensive video content understanding and the capability to derive correct answers through analytical reasoning.
> </details>



![](https://arxiv.org/html/2504.09641/x3.png)

> 🔼 This figure showcases two instances where the TinyLLaVA-Video-R1 model exhibits 'aha moment' behavior.  'Aha moment' refers to the model's ability to reflect on its initial reasoning process and potentially revise its answer after further deliberation or identifying flaws in its initial approach.  The examples highlight the model's ability to backtrack and reconsider its thought process before arriving at a final answer. The left example is from the MVBench dataset, while the right one is from MMVU.
> <details>
> <summary>read the caption</summary>
> Figure 3: Cases of ”aha moment”, where the model demonstrates reflection and backtracking during its reasoning process (highlighted in blue). The cases are from MVBench and MMVU respectively.
> </details>



![](https://arxiv.org/html/2504.09641/extracted/6357976/sec/fig/completion_length_smoothed.png)

> 🔼 The figure shows the evolution of the response length during the training process of the TinyLLaVA-Video-R1 model.  The x-axis represents the training step, and the y-axis shows the average length of the model's generated responses. The plot demonstrates a general upward trend, indicating that the model learns to produce longer responses as it trains.  This is a key observation because longer responses often correlate with more comprehensive and detailed reasoning.  The plot might also include comparisons between different reward strategies or training settings to show the impact on response length.
> <details>
> <summary>read the caption</summary>
> (a) Evolution in completion length.
> </details>



![](https://arxiv.org/html/2504.09641/extracted/6357976/sec/fig/accuracy_reward_smoothed.png)

> 🔼 This figure shows a graph illustrating the change in accuracy reward over the course of training the TinyLLaVA-Video-R1 model. The x-axis represents the training step, and the y-axis represents the accuracy reward. The graph likely shows an upward trend, indicating that the model's performance improves as training progresses. The plot might include both raw data points and a smoothed curve to better visualize the overall trend. This improvement likely reflects the model's increasing ability to correctly answer video reasoning questions.
> <details>
> <summary>read the caption</summary>
> (b) Evolution in accuracy reward.
> </details>



![](https://arxiv.org/html/2504.09641/extracted/6357976/sec/fig/format_reward_smoothed.png)

> 🔼 This figure shows the evolution of the format reward during the training process of the TinyLLaVA-Video-R1 model. The format reward is a component of the overall reward function used to incentivize the model to generate responses that adhere to a specific format, including the use of <think> and </think> tags for the reasoning process and <answer> and </answer> tags for the final answer. The graph plots the format reward against the training step, showing how the reward changes over time.  A smoothed version of the data is shown alongside the raw data, which helps to reveal the overall trend and reduce the noise.
> <details>
> <summary>read the caption</summary>
> (c) Evolution in format reward.
> </details>



![](https://arxiv.org/html/2504.09641/extracted/6357976/sec/fig/comparison_length.png)

> 🔼 Figure 4 presents a detailed view of the training progress of the TinyLLaVA-Video-R1 model, focusing on three key metrics: response length, accuracy reward, and format reward.  The graphs visually demonstrate how these metrics evolve over training steps.  The response length steadily increases, indicating the model is generating more comprehensive answers.  Similarly, both the accuracy and format rewards exhibit upward trends, suggesting the model is not only providing correct answers but also adhering to the desired response format. The smooth curves result from applying exponential smoothing to the raw data, highlighting the general trends.  Overall, the figure confirms the model's gradual improvement in its ability to generate longer, accurate, and well-formatted responses during training, confirming the effectiveness of the reward rule settings.
> <details>
> <summary>read the caption</summary>
> Figure 4: Evolution in key metrics during the training of TinyLLaVA-Video-R1. Under our reward rule settings, both the response length and rewards of TinyLLaVA-Video-R1 gradually increased during training.
> </details>



![](https://arxiv.org/html/2504.09641/extracted/6357976/sec/fig/ablation.png)

> 🔼 Figure 5 illustrates the impact of different reward mechanisms on the length of model responses generated during training.  The x-axis represents the training step, while the y-axis shows the response length. Three lines are plotted, each representing a distinct reward configuration: 1) using only the format reward; 2) adding a continuous length reward to the format reward; and 3) incorporating an additional penalty for incorrect answers along with the format and length rewards. The figure demonstrates how the addition of these components progressively influences the length of model responses over the course of training.
> <details>
> <summary>read the caption</summary>
> Figure 5: The variation in response length during training under different settings.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.09641/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09641/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09641/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09641/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09641/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09641/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09641/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09641/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09641/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09641/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}