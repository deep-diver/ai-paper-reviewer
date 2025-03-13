---
title: "Unified Reward Model for Multimodal Understanding and Generation"
summary: "UNIFIEDREWARD: A unified reward model that enhances multimodal understanding and generation!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Understanding", "🏢 Fudan University",]
showSummary: true
date: 2025-03-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.05236 {{< /keyword >}}
{{< keyword icon="writer" >}} Yibin Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.05236" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.05236" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.05236/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Human preference alignment has boosted multimodal models, mainly via reward models. Yet, most models are task-specific, which limits their use in visual tasks. They should leverage a shared understanding in different tasks to improve performance. To solve this issue, this paper creates a reward model called UNIFIEDREWARD for assessing multimodal understanding and generation. It supports both pairwise ranking and pointwise scoring. 



UNIFIEDREWARD is the first model of its kind, allowing use in various vision tasks. The pipeline first builds a human preference dataset with image/video tasks. Then, it picks quality data using models with ranking and point sifting. Finally, it adjusts models via Direct Preference Optimization (DPO). Experiments show joint learning boosts visual tasks, improving performance in both image and video fields.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces UNIFIEDREWARD, the first unified reward model for multimodal understanding and generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents a new pipeline for preference alignment in both image and video tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates synergistic performance improvements by jointly learning diverse visual tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a unified reward model for both image and video tasks, enhancing performance across visual domains. It's significant for its potential to **improve diverse AI applications and guide future research in reward-based AI evaluation**.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="tab1.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="tab1.12.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="tab1.12.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_ERROR undefined" id="tab1.12.1.1.1.1">\toprule</span><span class="ltx_text" id="tab1.12.1.1.1.2" style="font-size:70%;">Reward Model</span>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="tab1.12.1.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="tab1.12.1.1.2.1" style="font-size:70%;">Method</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="tab1.12.1.1.3" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_ERROR undefined" id="tab1.12.1.1.3.1">\makecell</span><span class="ltx_text" id="tab1.12.1.1.3.2" style="font-size:70%;">[c]Image</span>
</td>
<td class="ltx_td" id="tab1.12.1.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.1.1.5" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.1.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="tab1.12.2.2">
<th class="ltx_td ltx_nopad_l ltx_align_left ltx_th ltx_th_row" id="tab1.12.2.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="tab1.12.2.2.1.1" style="font-size:70%;">Generation</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_th ltx_th_row" id="tab1.12.2.2.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_ERROR undefined" id="tab1.12.2.2.2.1">\makecell</span><span class="ltx_text" id="tab1.12.2.2.2.2" style="font-size:70%;">[c]Image</span>
</th>
<td class="ltx_td" id="tab1.12.2.2.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.2.2.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.2.2.5" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.2.2.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="tab1.12.3.3">
<th class="ltx_td ltx_nopad_l ltx_align_left ltx_th ltx_th_row" id="tab1.12.3.3.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="tab1.12.3.3.1.1" style="font-size:70%;">Understand</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_th ltx_th_row" id="tab1.12.3.3.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_ERROR undefined" id="tab1.12.3.3.2.1">\makecell</span><span class="ltx_text" id="tab1.12.3.3.2.2" style="font-size:70%;">[c]Video</span>
</th>
<td class="ltx_td" id="tab1.12.3.3.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.3.3.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.3.3.5" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.3.3.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="tab1.12.4.4">
<th class="ltx_td ltx_nopad_l ltx_align_left ltx_th ltx_th_row" id="tab1.12.4.4.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="tab1.12.4.4.1.1" style="font-size:70%;">Generation</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_th ltx_th_row" id="tab1.12.4.4.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_ERROR undefined" id="tab1.12.4.4.2.1">\makecell</span><span class="ltx_text" id="tab1.12.4.4.2.2" style="font-size:70%;">[c]Video</span>
</th>
<td class="ltx_td" id="tab1.12.4.4.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.4.4.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.4.4.5" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.4.4.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="tab1.12.5.5">
<th class="ltx_td ltx_nopad_l ltx_align_left ltx_th ltx_th_row" id="tab1.12.5.5.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="tab1.12.5.5.1.1" style="font-size:70%;">Understand</span></th>
<th class="ltx_td ltx_th ltx_th_row" id="tab1.12.5.5.2" style="padding-left:1.0pt;padding-right:1.0pt;"></th>
<td class="ltx_td" id="tab1.12.5.5.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.5.5.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.5.5.5" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.5.5.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="tab1.12.6.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="tab1.12.6.6.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_ERROR undefined" id="tab1.12.6.6.1.1">\midrule</span><span class="ltx_text" id="tab1.12.6.6.1.2" style="font-size:70%;">PickScore’23 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="tab1.12.6.6.1.3.1" style="font-size:70%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">pickscore</span><span class="ltx_text" id="tab1.12.6.6.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="tab1.12.6.6.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="tab1.12.6.6.2.1" style="font-size:70%;">Point</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="tab1.12.6.6.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_ERROR undefined" id="tab1.12.6.6.3.1">\checkmark</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.6.6.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.6.6.5" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.6.6.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="tab1.12.7.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="tab1.12.7.7.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="tab1.12.7.7.1.1" style="font-size:70%;">HPS’23 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="tab1.12.7.7.1.2.1" style="font-size:70%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">hps</span><span class="ltx_text" id="tab1.12.7.7.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="tab1.12.7.7.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="tab1.12.7.7.2.1" style="font-size:70%;">Point</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="tab1.12.7.7.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_ERROR undefined" id="tab1.12.7.7.3.1">\checkmark</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.7.7.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.7.7.5" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.7.7.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="tab1.12.8.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="tab1.12.8.8.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="tab1.12.8.8.1.1" style="font-size:70%;">ImageReward’23 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="tab1.12.8.8.1.2.1" style="font-size:70%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">hps</span><span class="ltx_text" id="tab1.12.8.8.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="tab1.12.8.8.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="tab1.12.8.8.2.1" style="font-size:70%;">Point</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="tab1.12.8.8.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_ERROR undefined" id="tab1.12.8.8.3.1">\checkmark</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.8.8.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.8.8.5" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.8.8.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="tab1.12.9.9">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="tab1.12.9.9.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="tab1.12.9.9.1.1" style="font-size:70%;">LLaVA-Critic’24 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="tab1.12.9.9.1.2.1" style="font-size:70%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">llava-critic</span><span class="ltx_text" id="tab1.12.9.9.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="tab1.12.9.9.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="tab1.12.9.9.2.1" style="font-size:70%;">Pair/Point</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.9.9.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="tab1.12.9.9.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_ERROR undefined" id="tab1.12.9.9.4.1">\checkmark</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.9.9.5" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.9.9.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="tab1.12.10.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="tab1.12.10.10.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="tab1.12.10.10.1.1" style="font-size:70%;">IXC-2.5-Reward’25 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="tab1.12.10.10.1.2.1" style="font-size:70%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">zang2025internlm</span><span class="ltx_text" id="tab1.12.10.10.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="tab1.12.10.10.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="tab1.12.10.10.2.1" style="font-size:70%;">Pair/Point</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.10.10.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="tab1.12.10.10.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_ERROR undefined" id="tab1.12.10.10.4.1">\checkmark</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.10.10.5" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="tab1.12.10.10.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_ERROR undefined" id="tab1.12.10.10.6.1">\checkmark</span></td>
</tr>
<tr class="ltx_tr" id="tab1.12.11.11">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="tab1.12.11.11.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="tab1.12.11.11.1.1" style="font-size:70%;">VideoScore’24 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="tab1.12.11.11.1.2.1" style="font-size:70%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">LiFT</span><span class="ltx_text" id="tab1.12.11.11.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="tab1.12.11.11.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="tab1.12.11.11.2.1" style="font-size:70%;">Point</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.11.11.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.11.11.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="tab1.12.11.11.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_ERROR undefined" id="tab1.12.11.11.5.1">\checkmark</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.11.11.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="tab1.12.12.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="tab1.12.12.12.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="tab1.12.12.12.1.1" style="font-size:70%;">LiFT’24 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="tab1.12.12.12.1.2.1" style="font-size:70%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">LiFT</span><span class="ltx_text" id="tab1.12.12.12.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="tab1.12.12.12.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="tab1.12.12.12.2.1" style="font-size:70%;">Point</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.12.12.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.12.12.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="tab1.12.12.12.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_ERROR undefined" id="tab1.12.12.12.5.1">\checkmark</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.12.12.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="tab1.12.13.13">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="tab1.12.13.13.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="tab1.12.13.13.1.1" style="font-size:70%;">VisionReward’24 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="tab1.12.13.13.1.2.1" style="font-size:70%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">visionreward</span><span class="ltx_text" id="tab1.12.13.13.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="tab1.12.13.13.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="tab1.12.13.13.2.1" style="font-size:70%;">Point</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="tab1.12.13.13.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_ERROR undefined" id="tab1.12.13.13.3.1">\checkmark</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.13.13.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="tab1.12.13.13.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_ERROR undefined" id="tab1.12.13.13.5.1">\checkmark</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.13.13.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="tab1.12.14.14">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="tab1.12.14.14.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="tab1.12.14.14.1.1" style="font-size:70%;">VideoReward’25 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="tab1.12.14.14.1.2.1" style="font-size:70%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">videoreward</span><span class="ltx_text" id="tab1.12.14.14.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="tab1.12.14.14.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="tab1.12.14.14.2.1" style="font-size:70%;">Point</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.14.14.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.14.14.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="tab1.12.14.14.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_ERROR undefined" id="tab1.12.14.14.5.1">\checkmark</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="tab1.12.14.14.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="tab1.12.15.15">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="tab1.12.15.15.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_ERROR undefined" id="tab1.12.15.15.1.1">\midrule</span><span class="ltx_text ltx_font_bold" id="tab1.12.15.15.1.2" style="font-size:70%;">UnifiedReward</span>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="tab1.12.15.15.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="tab1.12.15.15.2.1" style="font-size:70%;">Pair/Point</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="tab1.12.15.15.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_ERROR undefined" id="tab1.12.15.15.3.1">\checkmark</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="tab1.12.15.15.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_ERROR undefined" id="tab1.12.15.15.4.1">\checkmark</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="tab1.12.15.15.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_ERROR undefined" id="tab1.12.15.15.5.1">\checkmark</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="tab1.12.15.15.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_ERROR undefined" id="tab1.12.15.15.6.1">\checkmark</span></td>
</tr>
<tr class="ltx_tr" id="tab1.12.16.16">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="tab1.12.16.16.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_ERROR undefined" id="tab1.12.16.16.1.1">\bottomrule</span></th>
<td class="ltx_td" id="tab1.12.16.16.2" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.16.16.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.16.16.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.16.16.5" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="tab1.12.16.16.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the capabilities of UNIFIEDREWARD, a novel unified reward model, with existing reward models in the literature. It shows that UNIFIEDREWARD can assess both image and video understanding and generation tasks, unlike most existing models that specialize in one task or modality.  The comparison highlights UNIFIEDREWARD's ability to perform both pairwise ranking and pointwise scoring, enhancing its versatility in aligning vision models with human preferences.
> <details>
> <summary>read the caption</summary>
> Table \thetable: Comparison of Our Reward Method with Recent Approaches. \ourmethodis capable of assessing both image and video understanding and generation. “Pair” and “Point” refer to “Pair Ranking” and “Point Scoring”, respectively.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.05236/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05236/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}