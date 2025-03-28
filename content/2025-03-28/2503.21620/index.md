---
title: "UI-R1: Enhancing Action Prediction of GUI Agents by Reinforcement Learning"
summary: "UI-R1 enhances GUI agents' action prediction using reinforcement learning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 vivo AI Lab",]
showSummary: true
date: 2025-03-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.21620 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhengxi Lu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.21620" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.21620" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.21620/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

DeepSeek-R1 showed that LLMs can reason through RL with rule-based rewards. This paper uses rule-based RL to improve how multimodal large language models (MLLMs) understand graphic user interfaces (GUIs) to predict actions. The authors created a small, high-quality dataset of 136 tricky tasks with five common action types on mobile. They also made a unified rule-based action reward to optimize models using policy-based algorithms.



The authors introduce **UI-R1-3B**, a data-efficient model that significantly improves both in-domain (ID) and out-of-domain (OOD) tasks. The action type accuracy increases by 15% on the ID benchmark ANDROIDCONTROL, and grounding accuracy goes up by 10.3%, compared to the base model (Qwen2.5-VL-3B). On the OOD GUI grounding benchmark ScreenSpot-Pro, the model outperforms the base model by 6.0%.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Rule-based RL can significantly enhance the reasoning capabilities of MLLMs for GUI action prediction. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A unified rule-based action reward function effectively aligns with the objectives of common GUI tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Data-efficient training via a three-stage data selection method can achieve strong performance gains on OOD benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper pioneers **rule-based RL** for enhancing GUI agents, offering a scalable, data-efficient alternative to SFT. The **UI-R1** framework and novel reward function accelerate GUI understanding and control, paving the way for future research in this domain.

------
#### Visual Insights



![](https://arxiv.org/html/2503.21620/extracted/6315182/images/Fig0_v2.png)

> 🔼 This figure presents a comparison of the UI-R1-3B model's performance against other models.  The left panel shows a radar chart illustrating the model's performance across various in-domain (AndroidControl) and out-of-domain (ScreenSpot-Pro, ScreenSpot's desktop and web subsets) tasks.  Each axis represents a different task or aspect of performance, and the distance of the UI-R1-3B point from the center shows the model's relative performance on that axis.  The right panel is a bar chart comparing the performance of UI-R1-3B, trained using reinforcement fine-tuning (RFT) with fewer data points, to larger models trained with supervised fine-tuning (SFT). It highlights that UI-R1-3B achieves comparable or better performance despite using significantly less training data and computational resources (GPU hours).  The size of the circles in the bar chart visually represents the size of the models.
> <details>
> <summary>read the caption</summary>
> Figure 1: Left: Overall performance of UI-R1-3B on both in-domain (i.e., AndroidControl) and out-of-domain (i.e., ScreenSpot-Pro, ScreenSpot desktop and web subsets) tasks; Right: Employing reinforcement fine-tuning (RFT), UI-R1-3B achieves performance comparable to SFT models with significantly fewer data and GPU hours. The circle radius indicates the model size.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.1.1.1.1.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T1.1.1.1.1.2" style="width:42.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.1.1.2.1">
<span class="ltx_p" id="S4.T1.1.1.1.1.2.1.1">Method</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1.3" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.1.1.3.1">Model Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1.4" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.1.1.4.1">Data Size</span></td>
<td class="ltx_td ltx_align_center ltx_align_middle ltx_border_tt" colspan="2" id="S4.T1.1.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">Web</td>
<td class="ltx_td ltx_align_center ltx_align_middle ltx_border_tt" colspan="2" id="S4.T1.1.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">Desktop</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T1.1.1.1.1.7" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.1.1.7.1">
<span class="ltx_p" id="S4.T1.1.1.1.1.7.1.1">Average</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.2.2.1" style="width:42.7pt;padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.1.1.2.2.2" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.2.2.2.1">
<span class="ltx_p" id="S4.T1.1.1.2.2.2.1.1">Icon</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.1.1.2.2.3" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.2.2.3.1">
<span class="ltx_p" id="S4.T1.1.1.2.2.3.1.1">Text</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.1.1.2.2.4" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.2.2.4.1">
<span class="ltx_p" id="S4.T1.1.1.2.2.4.1.1">Icon</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.1.1.2.2.5" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.2.2.5.1">
<span class="ltx_p" id="S4.T1.1.1.2.2.5.1.1">Text</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.2.2.6" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="9" id="S4.T1.1.1.3.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.3.1.1">Supervised Fine-tuning</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.4.4.1" style="padding-top:1pt;padding-bottom:1pt;">SeeClick</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.1.1.4.4.2" style="width:42.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.4.4.2.1">
<span class="ltx_p" id="S4.T1.1.1.4.4.2.1.1">SFT</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.4.3" style="padding-top:1pt;padding-bottom:1pt;">9.6B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.4.4" style="padding-top:1pt;padding-bottom:1pt;">1M</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.1.1.4.4.5" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.4.4.5.1">
<span class="ltx_p" id="S4.T1.1.1.4.4.5.1.1">32.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.1.1.4.4.6" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.4.4.6.1">
<span class="ltx_p" id="S4.T1.1.1.4.4.6.1.1">55.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.1.1.4.4.7" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.4.4.7.1">
<span class="ltx_p" id="S4.T1.1.1.4.4.7.1.1">30.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.1.1.4.4.8" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.4.4.8.1">
<span class="ltx_p" id="S4.T1.1.1.4.4.8.1.1">72.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.1.1.4.4.9" style="width:37.0pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.4.4.9.1">
<span class="ltx_p" id="S4.T1.1.1.4.4.9.1.1"><span class="ltx_text" id="S4.T1.1.1.4.4.9.1.1.1" style="background-color:#ECF7FC;">49.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5.5">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.5.5.1" style="padding-top:1pt;padding-bottom:1pt;">CogAgent</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.5.5.2" style="width:42.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.5.5.2.1">
<span class="ltx_p" id="S4.T1.1.1.5.5.2.1.1">SFT</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.3" style="padding-top:1pt;padding-bottom:1pt;">18B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.5.5.5" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.5.5.5.1">
<span class="ltx_p" id="S4.T1.1.1.5.5.5.1.1">28.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.5.5.6" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.5.5.6.1">
<span class="ltx_p" id="S4.T1.1.1.5.5.6.1.1">70.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.5.5.7" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.5.5.7.1">
<span class="ltx_p" id="S4.T1.1.1.5.5.7.1.1">20.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.5.5.8" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.5.5.8.1">
<span class="ltx_p" id="S4.T1.1.1.5.5.8.1.1">74.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.5.5.9" style="width:37.0pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.5.5.9.1">
<span class="ltx_p" id="S4.T1.1.1.5.5.9.1.1"><span class="ltx_text" id="S4.T1.1.1.5.5.9.1.1.1" style="background-color:#ECF7FC;">51.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6.6">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.6.6.1" style="padding-top:1pt;padding-bottom:1pt;">Qwen2.5-VL</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.6.6.2" style="width:42.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.6.6.2.1">
<span class="ltx_p" id="S4.T1.1.1.6.6.2.1.1">SFT</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.3" style="padding-top:1pt;padding-bottom:1pt;">3B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.4" style="padding-top:1pt;padding-bottom:1pt;">500</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.6.6.5" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.6.6.5.1">
<span class="ltx_p" id="S4.T1.1.1.6.6.5.1.1">63.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.6.6.6" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.6.6.6.1">
<span class="ltx_p" id="S4.T1.1.1.6.6.6.1.1">78.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.6.6.7" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.6.6.7.1">
<span class="ltx_p" id="S4.T1.1.1.6.6.7.1.1">46.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.6.6.8" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.6.6.8.1">
<span class="ltx_p" id="S4.T1.1.1.6.6.8.1.1">85.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.6.6.9" style="width:37.0pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.6.6.9.1">
<span class="ltx_p" id="S4.T1.1.1.6.6.9.1.1"><span class="ltx_text" id="S4.T1.1.1.6.6.9.1.1.1" style="background-color:#ECF7FC;">70.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7.7">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.7.7.1" style="padding-top:1pt;padding-bottom:1pt;">UGround-V1</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.7.7.2" style="width:42.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.7.7.2.1">
<span class="ltx_p" id="S4.T1.1.1.7.7.2.1.1">SFT</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.3" style="padding-top:1pt;padding-bottom:1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.4" style="padding-top:1pt;padding-bottom:1pt;">10M</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.7.7.5" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.7.7.5.1">
<span class="ltx_p" id="S4.T1.1.1.7.7.5.1.1">70.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.7.7.6" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.7.7.6.1">
<span class="ltx_p" id="S4.T1.1.1.7.7.6.1.1">80.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.7.7.7" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.7.7.7.1">
<span class="ltx_p" id="S4.T1.1.1.7.7.7.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.7.7.7.1.1.1">63.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.7.7.8" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.7.7.8.1">
<span class="ltx_p" id="S4.T1.1.1.7.7.8.1.1">82.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.7.7.9" style="width:37.0pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.7.7.9.1">
<span class="ltx_p" id="S4.T1.1.1.7.7.9.1.1"><span class="ltx_text" id="S4.T1.1.1.7.7.9.1.1.1" style="background-color:#ECF7FC;">75.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8.8">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.8.8.1" style="padding-top:1pt;padding-bottom:1pt;">AGUVIS</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.8.8.2" style="width:42.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.8.8.2.1">
<span class="ltx_p" id="S4.T1.1.1.8.8.2.1.1">SFT</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.3" style="padding-top:1pt;padding-bottom:1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.4" style="padding-top:1pt;padding-bottom:1pt;">1M</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.8.8.5" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.8.8.5.1">
<span class="ltx_p" id="S4.T1.1.1.8.8.5.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.8.8.5.1.1.1">70.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.8.8.6" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.8.8.6.1">
<span class="ltx_p" id="S4.T1.1.1.8.8.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.8.6.1.1.1">88.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.8.8.7" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.8.8.7.1">
<span class="ltx_p" id="S4.T1.1.1.8.8.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.8.7.1.1.1">74.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.8.8.8" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.8.8.8.1">
<span class="ltx_p" id="S4.T1.1.1.8.8.8.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.8.8.8.1.1.1">85.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.8.8.9" style="width:37.0pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.8.8.9.1">
<span class="ltx_p" id="S4.T1.1.1.8.8.9.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.8.9.1.1.1" style="background-color:#ECF7FC;">80.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="9" id="S4.T1.1.1.9.9.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.9.9.1.1">Zero Shot / Reinforcement Learning</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.10.10.1" style="padding-top:1pt;padding-bottom:1pt;">Qwen2-VL</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.1.1.10.10.2" style="width:42.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.10.10.2.1">
<span class="ltx_p" id="S4.T1.1.1.10.10.2.1.1">ZS</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.10.10.3" style="padding-top:1pt;padding-bottom:1pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.10.10.4" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.1.1.10.10.5" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.10.10.5.1">
<span class="ltx_p" id="S4.T1.1.1.10.10.5.1.1">25.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.1.1.10.10.6" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.10.10.6.1">
<span class="ltx_p" id="S4.T1.1.1.10.10.6.1.1">35.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.1.1.10.10.7" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.10.10.7.1">
<span class="ltx_p" id="S4.T1.1.1.10.10.7.1.1">54.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.1.1.10.10.8" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.10.10.8.1">
<span class="ltx_p" id="S4.T1.1.1.10.10.8.1.1">76.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.1.1.10.10.9" style="width:37.0pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.10.10.9.1">
<span class="ltx_p" id="S4.T1.1.1.10.10.9.1.1"><span class="ltx_text" id="S4.T1.1.1.10.10.9.1.1.1" style="background-color:#ECF7FC;">46.5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.11.11">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.11.11.1" style="padding-top:1pt;padding-bottom:1pt;">Qwen2.5-VL</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.11.11.2" style="width:42.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.11.11.2.1">
<span class="ltx_p" id="S4.T1.1.1.11.11.2.1.1">ZS</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.3" style="padding-top:1pt;padding-bottom:1pt;">3B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.4" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.11.11.5" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.11.11.5.1">
<span class="ltx_p" id="S4.T1.1.1.11.11.5.1.1">43.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.11.11.6" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.11.11.6.1">
<span class="ltx_p" id="S4.T1.1.1.11.11.6.1.1">60.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.11.11.7" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.11.11.7.1">
<span class="ltx_p" id="S4.T1.1.1.11.11.7.1.1">40.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.11.11.8" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.11.11.8.1">
<span class="ltx_p" id="S4.T1.1.1.11.11.8.1.1">80.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.1.1.11.11.9" style="width:37.0pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.11.11.9.1">
<span class="ltx_p" id="S4.T1.1.1.11.11.9.1.1"><span class="ltx_text" id="S4.T1.1.1.11.11.9.1.1.1" style="background-color:#ECF7FC;">57.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.1.1.12.12.1" style="padding-top:1pt;padding-bottom:1pt;">UI-R1</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T1.1.1.12.12.2" style="width:42.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.12.12.2.1">
<span class="ltx_p" id="S4.T1.1.1.12.12.2.1.1">RFT</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.12.12.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.12.3.1">3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.12.12.4" style="padding-top:1pt;padding-bottom:1pt;">136</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T1.1.1.12.12.5" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.12.12.5.1">
<span class="ltx_p" id="S4.T1.1.1.12.12.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.12.5.1.1.1">73.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T1.1.1.12.12.6" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.12.12.6.1">
<span class="ltx_p" id="S4.T1.1.1.12.12.6.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.12.12.6.1.1.1">85.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T1.1.1.12.12.7" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.12.12.7.1">
<span class="ltx_p" id="S4.T1.1.1.12.12.7.1.1">59.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T1.1.1.12.12.8" style="width:37.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.12.12.8.1">
<span class="ltx_p" id="S4.T1.1.1.12.12.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.12.8.1.1.1">90.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T1.1.1.12.12.9" style="width:37.0pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.12.12.9.1">
<span class="ltx_p" id="S4.T1.1.1.12.12.9.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.12.12.9.1.1.1" style="background-color:#ECF7FC;">78.6</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents the performance comparison of different models on the ScreenSpot benchmark for GUI grounding accuracy.  It breaks down the accuracy scores for 'Icon' and 'Text' elements across Mobile, Web, and Desktop platforms.  The table highlights the superior performance of the UI-R1 model, particularly when compared against models trained with supervised fine-tuning (SFT) or zero-shot methods (ZS).  The bolded and underlined values signify the best and second-best performing models, offering a clear visualization of the relative strengths of each approach. The abbreviations 'ZS' and 'RFT' denote zero-shot out-of-domain inference and rule-based reinforcement fine-tuning, respectively, providing crucial context for understanding the training methodology used for each model.
> <details>
> <summary>read the caption</summary>
> Table 1: Grounding accuracy on ScreenSpot. The optimal and the suboptimal results are bolded and underlined, respectively. ZS indicates zero-shot OOD inference and RFT indicates rule-based reinforecement learning.
> </details>





### In-depth insights


#### RL for GUI MLLMs
Applying Reinforcement Learning (RL) to GUI-based Multimodal Large Language Models (MLLMs) presents a significant opportunity to enhance their interactive capabilities. GUI environments are inherently sequential decision-making tasks, fitting well with RL's framework. **RL can refine the MLLM's action prediction and reasoning by optimizing for long-term rewards** tied to successful task completion. Specifically, a well-designed reward function can guide the MLLM to interact more effectively with GUI elements, improving accuracy and generalization. **Data efficiency** is the key, rule-based RL could enable substantial performance gains with limited data. Furthermore, RL can address the challenge of out-of-domain (OOD) generalization, making the models more robust across diverse GUI platforms. 

#### Rule-Based Rewards
Rule-based rewards, as explored in the context of GUI agents and reinforcement learning, represent a paradigm shift from traditional, data-intensive supervised learning. The core idea revolves around defining explicit, **task-specific reward functions** based on predefined rules, eliminating the need for extensive human-annotated datasets. This approach offers several advantages: **scalability and efficiency**, as models can be trained with significantly fewer examples; **interpretability**, as the reward structure provides clear signals for optimization; and **adaptability**, enabling models to generalize better to unseen scenarios. By carefully crafting reward functions that incentivize desired behaviors, such as accurate action prediction and correct GUI element interaction, rule-based RL can unlock the reasoning potential of large language models in complex tasks.

#### Data-Efficient RFT
While not explicitly a heading, "Data-Efficient RFT" (Reinforcement Fine-Tuning) encapsulates a critical theme explored in the paper. The research addresses the challenge of training GUI agents, where traditional supervised methods demand extensive labeled datasets. The paper champions **rule-based RFT** as a solution, enabling effective model training with significantly reduced data requirements. This is achieved through carefully crafted reward functions that guide the learning process. The method achieves significant performance gains with minimal mobile data and exhibits solid generalization. The ability to achieve competitive performance with **limited data** opens new avenues for research in resource-constrained environments, facilitating faster experimentation and iteration cycles, thus is a **data-efficient approach**.

#### OOD Generalization
The paper demonstrates a compelling case for reinforcement learning (RL) in enhancing out-of-domain (OOD) generalization for GUI agents. **Supervised fine-tuning (SFT), while effective for in-domain tasks, often falters when presented with unseen data distributions.** The work addresses this limitation by introducing a rule-based RL framework (UI-R1) that focuses on learning fundamental GUI interaction principles rather than memorizing specific data patterns. **By optimizing for task-specific rewards, the agent learns to generalize its knowledge to new environments and scenarios.** This approach fosters adaptability, enabling the agent to perform well on OOD tasks, even with limited training data. **The effectiveness of UI-R1 is attributed to its ability to extract underlying task structures and reasoning capabilities, rather than overfitting to the specifics of the training data.** This is a significant departure from SFT, which often relies on massive datasets for reasonable OOD performance. The results highlight the potential of RL as a powerful tool for creating more robust and generalizable GUI agents. **The emphasis on a carefully crafted reward function further contributes to the enhanced OOD performance, guiding the agent towards learning meaningful and transferable representations.**

#### GUI Task Rewards
GUI task rewards are crucial for training agents to interact effectively with graphical user interfaces. A well-designed reward system should consider various aspects of GUI interactions, including **action type accuracy, coordinate precision, and adherence to structured output formats**. **Action type accuracy ensures the agent selects the correct action** (e.g., click, scroll), while **coordinate precision focuses on the agent's ability to pinpoint the exact location** for interactions like clicks. **Reward the correct formatting and reasoning**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.21620/extracted/6315182/images/Fig_1_v5.png)

> 🔼 The UI-R1 training framework starts with a GUI screenshot and a user's text instruction.  The Qwen2.5-VL-3B policy model generates multiple action plans, each including reasoning steps. A custom rule-based reward function assesses these plans.  The policy model is then refined using a policy gradient optimization algorithm based on the rewards received.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of UI-R1 training framework. Given a GUI screenshot and a text instruction from the user, the policy model (i.e., Qwen2.5-VL-3B) generates multiple action planning responses with reasoning. Our proposed rule-based action reward function is then applied, and the policy model is updated using a policy gradient optimization algorithm.
> </details>



![](https://arxiv.org/html/2503.21620/extracted/6315182/images/study.png)

> 🔼 This figure presents a two-part analysis of the UI-R1 model's performance.  The left panel shows how different data selection strategies and varying training dataset sizes affect the model's accuracy on the ScreenSpot benchmark.  It compares results using randomly selected data versus data specifically chosen for difficulty, revealing the impact of data quality and quantity on performance. The right panel investigates the correlation between the length of the model's reasoning process and its accuracy in answering the questions. It illustrates how accuracy may decrease as reasoning complexity increases, suggesting that the model faces more difficulty in providing correct answers for more complex tasks.
> <details>
> <summary>read the caption</summary>
> Figure 3: Left: Impact of data selection methods and data size; Right: Study of relation between answering accuracy and reasoning length.
> </details>



![](https://arxiv.org/html/2503.21620/extracted/6315182/images/ablation.png)

> 🔼 This figure presents ablation study results, investigating the impact of different reward functions and data selection methods on model performance. The left panel shows a comparison of using only the action reward, only the coordinate reward, both action and bounding box reward, and the combination of both action and coordinate reward.  The right panel compares different data selection methods, illustrating the effect of using only randomly chosen data versus using a high-quality subset of data selected by difficulty, demonstrating the quality and efficiency of the proposed data selection method.  This analysis is crucial to evaluating the model's sensitivity and effectiveness to the design choices made for the reward structure and training data.
> <details>
> <summary>read the caption</summary>
> Figure 4: Left: Ablation on reward function; Right: Ablation on data selection method.
> </details>



![](https://arxiv.org/html/2503.21620/extracted/6315182/images/loss_reward.png)

> 🔼 This figure visualizes the training progress of the UI-R1 model by plotting various metrics over training steps.  These metrics include reward-related values (accuracy rewards for action and coordinates, format reward, reward standard deviation, total reward), loss, KL divergence, and completion length.  The plots allow for observation of trends in these metrics throughout the training process, giving insights into the model's learning dynamics.
> <details>
> <summary>read the caption</summary>
> Figure 5: UI-R1 training process.
> </details>



![](https://arxiv.org/html/2503.21620/extracted/6315182/images/iteration.png)

> 🔼 This figure shows how the accuracy of the model changes over training rounds.  Separate lines represent accuracy on different subsets of the data (mobile, web, and desktop).  The graph shows the model's performance improves in all three subsets over eight training rounds, stabilizing by round 7 or 8.
> <details>
> <summary>read the caption</summary>
> Figure 6: Accuracy change over rounds.
> </details>



![](https://arxiv.org/html/2503.21620/extracted/6315182/images/user_case.png)

> 🔼 This figure showcases a practical example of the UI-R1 model's capabilities.  It presents a screenshot of a login page with a 'Remember me' checkbox. The text describes the task (selecting the checkbox), the model's reasoning process (identifying the checkbox and its location), and the resulting action (clicking the checkbox's coordinates). This demonstrates the model's ability to understand user instructions, reason about the GUI elements, and execute the corresponding actions accurately.
> <details>
> <summary>read the caption</summary>
> Figure 7: An example of use case.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.118.118">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.118.118.119.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.118.118.119.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.119.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.118.118.119.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.119.1.2.1">Development</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.118.118.119.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.119.1.3.1">Creative</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.118.118.119.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.119.1.4.1">CAD</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.118.118.119.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.119.1.5.1">Scientific</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.118.118.119.1.6"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.119.1.6.1">Office</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.118.118.119.1.7"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.119.1.7.1">OS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.118.118.119.1.8" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.119.1.8.1">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.118.118.120.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.118.118.120.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.120.2.1.1">Text</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.118.118.120.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.120.2.2.1">Icon</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.118.118.120.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.120.2.3.1">Text</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.118.118.120.2.4"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.120.2.4.1">Icon</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.118.118.120.2.5"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.120.2.5.1">Text</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.118.118.120.2.6"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.120.2.6.1">Icon</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.118.118.120.2.7"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.120.2.7.1">Text</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.118.118.120.2.8"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.120.2.8.1">Icon</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.118.118.120.2.9"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.120.2.9.1">Text</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.118.118.120.2.10"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.120.2.10.1">Icon</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.118.118.120.2.11"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.120.2.11.1">Text</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.118.118.120.2.12"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.120.2.12.1">Icon</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.118.118.121.3">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="12" id="S4.T2.118.118.121.3.1"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.121.3.1.1">Supervised Fine-tuning</span></td>
<td class="ltx_td ltx_border_t" id="S4.T2.118.118.121.3.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.118.118.121.3.3"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.12.12.12.13">SeeClick</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1"><math alttext="0.6" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mn id="S4.T2.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.cmml">0.6</mn><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><cn id="S4.T2.1.1.1.1.m1.1.1.cmml" type="float" xref="S4.T2.1.1.1.1.m1.1.1">0.6</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">0.6</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">0.6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.2"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mn id="S4.T2.2.2.2.2.m1.1.1" xref="S4.T2.2.2.2.2.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><cn id="S4.T2.2.2.2.2.m1.1.1.cmml" type="float" xref="S4.T2.2.2.2.2.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3.3"><math alttext="1.0" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mn id="S4.T2.3.3.3.3.m1.1.1" xref="S4.T2.3.3.3.3.m1.1.1.cmml">1.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><cn id="S4.T2.3.3.3.3.m1.1.1.cmml" type="float" xref="S4.T2.3.3.3.3.m1.1.1">1.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">1.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">1.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.4"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.m1.1a"><mn id="S4.T2.4.4.4.4.m1.1.1" xref="S4.T2.4.4.4.4.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m1.1b"><cn id="S4.T2.4.4.4.4.m1.1.1.cmml" type="float" xref="S4.T2.4.4.4.4.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.5"><math alttext="2.5" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.5.m1.1a"><mn id="S4.T2.5.5.5.5.m1.1.1" xref="S4.T2.5.5.5.5.m1.1.1.cmml">2.5</mn><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.m1.1b"><cn id="S4.T2.5.5.5.5.m1.1.1.cmml" type="float" xref="S4.T2.5.5.5.5.m1.1.1">2.5</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.m1.1c">2.5</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.m1.1d">2.5</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.6.6"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.6.6.6.6.m1.1"><semantics id="S4.T2.6.6.6.6.m1.1a"><mn id="S4.T2.6.6.6.6.m1.1.1" xref="S4.T2.6.6.6.6.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.6.m1.1b"><cn id="S4.T2.6.6.6.6.m1.1.1.cmml" type="float" xref="S4.T2.6.6.6.6.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.6.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.6.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7.7"><math alttext="3.5" class="ltx_Math" display="inline" id="S4.T2.7.7.7.7.m1.1"><semantics id="S4.T2.7.7.7.7.m1.1a"><mn id="S4.T2.7.7.7.7.m1.1.1" xref="S4.T2.7.7.7.7.m1.1.1.cmml">3.5</mn><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.7.m1.1b"><cn id="S4.T2.7.7.7.7.m1.1.1.cmml" type="float" xref="S4.T2.7.7.7.7.m1.1.1">3.5</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.7.m1.1c">3.5</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.7.m1.1d">3.5</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.8.8"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.8.8.8.8.m1.1"><semantics id="S4.T2.8.8.8.8.m1.1a"><mn id="S4.T2.8.8.8.8.m1.1.1" xref="S4.T2.8.8.8.8.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.8.m1.1b"><cn id="S4.T2.8.8.8.8.m1.1.1.cmml" type="float" xref="S4.T2.8.8.8.8.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.8.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.8.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.9.9.9"><math alttext="1.1" class="ltx_Math" display="inline" id="S4.T2.9.9.9.9.m1.1"><semantics id="S4.T2.9.9.9.9.m1.1a"><mn id="S4.T2.9.9.9.9.m1.1.1" xref="S4.T2.9.9.9.9.m1.1.1.cmml">1.1</mn><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.9.m1.1b"><cn id="S4.T2.9.9.9.9.m1.1.1.cmml" type="float" xref="S4.T2.9.9.9.9.m1.1.1">1.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.9.m1.1c">1.1</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.9.m1.1d">1.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.10"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.10.10.10.10.m1.1"><semantics id="S4.T2.10.10.10.10.m1.1a"><mn id="S4.T2.10.10.10.10.m1.1.1" xref="S4.T2.10.10.10.10.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.10.m1.1b"><cn id="S4.T2.10.10.10.10.m1.1.1.cmml" type="float" xref="S4.T2.10.10.10.10.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.10.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.10.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.11.11"><math alttext="2.8" class="ltx_Math" display="inline" id="S4.T2.11.11.11.11.m1.1"><semantics id="S4.T2.11.11.11.11.m1.1a"><mn id="S4.T2.11.11.11.11.m1.1.1" xref="S4.T2.11.11.11.11.m1.1.1.cmml">2.8</mn><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.11.11.m1.1b"><cn id="S4.T2.11.11.11.11.m1.1.1.cmml" type="float" xref="S4.T2.11.11.11.11.m1.1.1">2.8</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.11.11.m1.1c">2.8</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.11.11.m1.1d">2.8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.12.12"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.12.12.12.12.m1.1"><semantics id="S4.T2.12.12.12.12.m1.1a"><mn id="S4.T2.12.12.12.12.m1.1.1" xref="S4.T2.12.12.12.12.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.12.12.m1.1b"><cn id="S4.T2.12.12.12.12.m1.1.1.cmml" type="float" xref="S4.T2.12.12.12.12.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.12.12.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.12.12.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.12.14" style="background-color:#ECF7FC;"><span class="ltx_text" id="S4.T2.12.12.12.14.1" style="background-color:#ECF7FC;">1.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24">
<td class="ltx_td ltx_align_left" id="S4.T2.24.24.24.13">OS-Atlas-4B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.13.1"><math alttext="7.1" class="ltx_Math" display="inline" id="S4.T2.13.13.13.1.m1.1"><semantics id="S4.T2.13.13.13.1.m1.1a"><mn id="S4.T2.13.13.13.1.m1.1.1" xref="S4.T2.13.13.13.1.m1.1.1.cmml">7.1</mn><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.13.1.m1.1b"><cn id="S4.T2.13.13.13.1.m1.1.1.cmml" type="float" xref="S4.T2.13.13.13.1.m1.1.1">7.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.13.1.m1.1c">7.1</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.13.1.m1.1d">7.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.14.2"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.14.14.14.2.m1.1"><semantics id="S4.T2.14.14.14.2.m1.1a"><mn id="S4.T2.14.14.14.2.m1.1.1" xref="S4.T2.14.14.14.2.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.14.14.14.2.m1.1b"><cn id="S4.T2.14.14.14.2.m1.1.1.cmml" type="float" xref="S4.T2.14.14.14.2.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.14.14.2.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.14.14.2.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.15.3"><math alttext="3.0" class="ltx_Math" display="inline" id="S4.T2.15.15.15.3.m1.1"><semantics id="S4.T2.15.15.15.3.m1.1a"><mn id="S4.T2.15.15.15.3.m1.1.1" xref="S4.T2.15.15.15.3.m1.1.1.cmml">3.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.15.15.15.3.m1.1b"><cn id="S4.T2.15.15.15.3.m1.1.1.cmml" type="float" xref="S4.T2.15.15.15.3.m1.1.1">3.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.15.15.3.m1.1c">3.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.15.15.3.m1.1d">3.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.16.16.16.4"><math alttext="1.4" class="ltx_Math" display="inline" id="S4.T2.16.16.16.4.m1.1"><semantics id="S4.T2.16.16.16.4.m1.1a"><mn id="S4.T2.16.16.16.4.m1.1.1" xref="S4.T2.16.16.16.4.m1.1.1.cmml">1.4</mn><annotation-xml encoding="MathML-Content" id="S4.T2.16.16.16.4.m1.1b"><cn id="S4.T2.16.16.16.4.m1.1.1.cmml" type="float" xref="S4.T2.16.16.16.4.m1.1.1">1.4</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.16.16.4.m1.1c">1.4</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.16.16.4.m1.1d">1.4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.17.5"><math alttext="2.0" class="ltx_Math" display="inline" id="S4.T2.17.17.17.5.m1.1"><semantics id="S4.T2.17.17.17.5.m1.1a"><mn id="S4.T2.17.17.17.5.m1.1.1" xref="S4.T2.17.17.17.5.m1.1.1.cmml">2.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.17.17.17.5.m1.1b"><cn id="S4.T2.17.17.17.5.m1.1.1.cmml" type="float" xref="S4.T2.17.17.17.5.m1.1.1">2.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.17.17.17.5.m1.1c">2.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.17.17.17.5.m1.1d">2.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.18.18.6"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.18.18.18.6.m1.1"><semantics id="S4.T2.18.18.18.6.m1.1a"><mn id="S4.T2.18.18.18.6.m1.1.1" xref="S4.T2.18.18.18.6.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.18.18.18.6.m1.1b"><cn id="S4.T2.18.18.18.6.m1.1.1.cmml" type="float" xref="S4.T2.18.18.18.6.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.18.18.18.6.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.18.18.18.6.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.19.19.19.7"><math alttext="9.0" class="ltx_Math" display="inline" id="S4.T2.19.19.19.7.m1.1"><semantics id="S4.T2.19.19.19.7.m1.1a"><mn id="S4.T2.19.19.19.7.m1.1.1" xref="S4.T2.19.19.19.7.m1.1.1.cmml">9.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.19.19.19.7.m1.1b"><cn id="S4.T2.19.19.19.7.m1.1.1.cmml" type="float" xref="S4.T2.19.19.19.7.m1.1.1">9.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.19.19.19.7.m1.1c">9.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.19.19.19.7.m1.1d">9.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.20.8"><math alttext="5.5" class="ltx_Math" display="inline" id="S4.T2.20.20.20.8.m1.1"><semantics id="S4.T2.20.20.20.8.m1.1a"><mn id="S4.T2.20.20.20.8.m1.1.1" xref="S4.T2.20.20.20.8.m1.1.1.cmml">5.5</mn><annotation-xml encoding="MathML-Content" id="S4.T2.20.20.20.8.m1.1b"><cn id="S4.T2.20.20.20.8.m1.1.1.cmml" type="float" xref="S4.T2.20.20.20.8.m1.1.1">5.5</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.20.20.20.8.m1.1c">5.5</annotation><annotation encoding="application/x-llamapun" id="S4.T2.20.20.20.8.m1.1d">5.5</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.21.21.21.9"><math alttext="5.1" class="ltx_Math" display="inline" id="S4.T2.21.21.21.9.m1.1"><semantics id="S4.T2.21.21.21.9.m1.1a"><mn id="S4.T2.21.21.21.9.m1.1.1" xref="S4.T2.21.21.21.9.m1.1.1.cmml">5.1</mn><annotation-xml encoding="MathML-Content" id="S4.T2.21.21.21.9.m1.1b"><cn id="S4.T2.21.21.21.9.m1.1.1.cmml" type="float" xref="S4.T2.21.21.21.9.m1.1.1">5.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.21.21.21.9.m1.1c">5.1</annotation><annotation encoding="application/x-llamapun" id="S4.T2.21.21.21.9.m1.1d">5.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.22.22.22.10"><math alttext="3.8" class="ltx_Math" display="inline" id="S4.T2.22.22.22.10.m1.1"><semantics id="S4.T2.22.22.22.10.m1.1a"><mn id="S4.T2.22.22.22.10.m1.1.1" xref="S4.T2.22.22.22.10.m1.1.1.cmml">3.8</mn><annotation-xml encoding="MathML-Content" id="S4.T2.22.22.22.10.m1.1b"><cn id="S4.T2.22.22.22.10.m1.1.1.cmml" type="float" xref="S4.T2.22.22.22.10.m1.1.1">3.8</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.22.22.22.10.m1.1c">3.8</annotation><annotation encoding="application/x-llamapun" id="S4.T2.22.22.22.10.m1.1d">3.8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.23.23.23.11"><math alttext="5.6" class="ltx_Math" display="inline" id="S4.T2.23.23.23.11.m1.1"><semantics id="S4.T2.23.23.23.11.m1.1a"><mn id="S4.T2.23.23.23.11.m1.1.1" xref="S4.T2.23.23.23.11.m1.1.1.cmml">5.6</mn><annotation-xml encoding="MathML-Content" id="S4.T2.23.23.23.11.m1.1b"><cn id="S4.T2.23.23.23.11.m1.1.1.cmml" type="float" xref="S4.T2.23.23.23.11.m1.1.1">5.6</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.23.23.23.11.m1.1c">5.6</annotation><annotation encoding="application/x-llamapun" id="S4.T2.23.23.23.11.m1.1d">5.6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.24.24.12"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.24.24.24.12.m1.1"><semantics id="S4.T2.24.24.24.12.m1.1a"><mn id="S4.T2.24.24.24.12.m1.1.1" xref="S4.T2.24.24.24.12.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.24.24.24.12.m1.1b"><cn id="S4.T2.24.24.24.12.m1.1.1.cmml" type="float" xref="S4.T2.24.24.24.12.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.24.24.24.12.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.24.24.24.12.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.24.24.14" style="background-color:#ECF7FC;"><span class="ltx_text" id="S4.T2.24.24.24.14.1" style="background-color:#ECF7FC;">3.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.36.36.36">
<td class="ltx_td ltx_align_left" id="S4.T2.36.36.36.13">ShowUI-2B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.25.1"><math alttext="16.9" class="ltx_Math" display="inline" id="S4.T2.25.25.25.1.m1.1"><semantics id="S4.T2.25.25.25.1.m1.1a"><mn id="S4.T2.25.25.25.1.m1.1.1" xref="S4.T2.25.25.25.1.m1.1.1.cmml">16.9</mn><annotation-xml encoding="MathML-Content" id="S4.T2.25.25.25.1.m1.1b"><cn id="S4.T2.25.25.25.1.m1.1.1.cmml" type="float" xref="S4.T2.25.25.25.1.m1.1.1">16.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.25.25.25.1.m1.1c">16.9</annotation><annotation encoding="application/x-llamapun" id="S4.T2.25.25.25.1.m1.1d">16.9</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.26.26.26.2"><math alttext="1.4" class="ltx_Math" display="inline" id="S4.T2.26.26.26.2.m1.1"><semantics id="S4.T2.26.26.26.2.m1.1a"><mn id="S4.T2.26.26.26.2.m1.1.1" xref="S4.T2.26.26.26.2.m1.1.1.cmml">1.4</mn><annotation-xml encoding="MathML-Content" id="S4.T2.26.26.26.2.m1.1b"><cn id="S4.T2.26.26.26.2.m1.1.1.cmml" type="float" xref="S4.T2.26.26.26.2.m1.1.1">1.4</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.26.26.26.2.m1.1c">1.4</annotation><annotation encoding="application/x-llamapun" id="S4.T2.26.26.26.2.m1.1d">1.4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.27.27.27.3"><math alttext="9.1" class="ltx_Math" display="inline" id="S4.T2.27.27.27.3.m1.1"><semantics id="S4.T2.27.27.27.3.m1.1a"><mn id="S4.T2.27.27.27.3.m1.1.1" xref="S4.T2.27.27.27.3.m1.1.1.cmml">9.1</mn><annotation-xml encoding="MathML-Content" id="S4.T2.27.27.27.3.m1.1b"><cn id="S4.T2.27.27.27.3.m1.1.1.cmml" type="float" xref="S4.T2.27.27.27.3.m1.1.1">9.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.27.27.27.3.m1.1c">9.1</annotation><annotation encoding="application/x-llamapun" id="S4.T2.27.27.27.3.m1.1d">9.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.28.4"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.28.28.28.4.m1.1"><semantics id="S4.T2.28.28.28.4.m1.1a"><mn id="S4.T2.28.28.28.4.m1.1.1" xref="S4.T2.28.28.28.4.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.28.28.28.4.m1.1b"><cn id="S4.T2.28.28.28.4.m1.1.1.cmml" type="float" xref="S4.T2.28.28.28.4.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.28.28.28.4.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.28.28.28.4.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.29.29.29.5"><math alttext="2.5" class="ltx_Math" display="inline" id="S4.T2.29.29.29.5.m1.1"><semantics id="S4.T2.29.29.29.5.m1.1a"><mn id="S4.T2.29.29.29.5.m1.1.1" xref="S4.T2.29.29.29.5.m1.1.1.cmml">2.5</mn><annotation-xml encoding="MathML-Content" id="S4.T2.29.29.29.5.m1.1b"><cn id="S4.T2.29.29.29.5.m1.1.1.cmml" type="float" xref="S4.T2.29.29.29.5.m1.1.1">2.5</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.29.29.29.5.m1.1c">2.5</annotation><annotation encoding="application/x-llamapun" id="S4.T2.29.29.29.5.m1.1d">2.5</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.30.30.6"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.30.30.30.6.m1.1"><semantics id="S4.T2.30.30.30.6.m1.1a"><mn id="S4.T2.30.30.30.6.m1.1.1" xref="S4.T2.30.30.30.6.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.30.30.30.6.m1.1b"><cn id="S4.T2.30.30.30.6.m1.1.1.cmml" type="float" xref="S4.T2.30.30.30.6.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.30.30.30.6.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.30.30.30.6.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.31.31.31.7"><math alttext="13.2" class="ltx_Math" display="inline" id="S4.T2.31.31.31.7.m1.1"><semantics id="S4.T2.31.31.31.7.m1.1a"><mn id="S4.T2.31.31.31.7.m1.1.1" xref="S4.T2.31.31.31.7.m1.1.1.cmml">13.2</mn><annotation-xml encoding="MathML-Content" id="S4.T2.31.31.31.7.m1.1b"><cn id="S4.T2.31.31.31.7.m1.1.1.cmml" type="float" xref="S4.T2.31.31.31.7.m1.1.1">13.2</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.31.31.31.7.m1.1c">13.2</annotation><annotation encoding="application/x-llamapun" id="S4.T2.31.31.31.7.m1.1d">13.2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.32.32.32.8"><math alttext="7.3" class="ltx_Math" display="inline" id="S4.T2.32.32.32.8.m1.1"><semantics id="S4.T2.32.32.32.8.m1.1a"><mn id="S4.T2.32.32.32.8.m1.1.1" xref="S4.T2.32.32.32.8.m1.1.1.cmml">7.3</mn><annotation-xml encoding="MathML-Content" id="S4.T2.32.32.32.8.m1.1b"><cn id="S4.T2.32.32.32.8.m1.1.1.cmml" type="float" xref="S4.T2.32.32.32.8.m1.1.1">7.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.32.32.32.8.m1.1c">7.3</annotation><annotation encoding="application/x-llamapun" id="S4.T2.32.32.32.8.m1.1d">7.3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.33.33.33.9"><math alttext="15.3" class="ltx_Math" display="inline" id="S4.T2.33.33.33.9.m1.1"><semantics id="S4.T2.33.33.33.9.m1.1a"><mn id="S4.T2.33.33.33.9.m1.1.1" xref="S4.T2.33.33.33.9.m1.1.1.cmml">15.3</mn><annotation-xml encoding="MathML-Content" id="S4.T2.33.33.33.9.m1.1b"><cn id="S4.T2.33.33.33.9.m1.1.1.cmml" type="float" xref="S4.T2.33.33.33.9.m1.1.1">15.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.33.33.33.9.m1.1c">15.3</annotation><annotation encoding="application/x-llamapun" id="S4.T2.33.33.33.9.m1.1d">15.3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.34.34.34.10"><math alttext="7.5" class="ltx_Math" display="inline" id="S4.T2.34.34.34.10.m1.1"><semantics id="S4.T2.34.34.34.10.m1.1a"><mn id="S4.T2.34.34.34.10.m1.1.1" xref="S4.T2.34.34.34.10.m1.1.1.cmml">7.5</mn><annotation-xml encoding="MathML-Content" id="S4.T2.34.34.34.10.m1.1b"><cn id="S4.T2.34.34.34.10.m1.1.1.cmml" type="float" xref="S4.T2.34.34.34.10.m1.1.1">7.5</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.34.34.34.10.m1.1c">7.5</annotation><annotation encoding="application/x-llamapun" id="S4.T2.34.34.34.10.m1.1d">7.5</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.35.35.35.11"><math alttext="10.3" class="ltx_Math" display="inline" id="S4.T2.35.35.35.11.m1.1"><semantics id="S4.T2.35.35.35.11.m1.1a"><mn id="S4.T2.35.35.35.11.m1.1.1" xref="S4.T2.35.35.35.11.m1.1.1.cmml">10.3</mn><annotation-xml encoding="MathML-Content" id="S4.T2.35.35.35.11.m1.1b"><cn id="S4.T2.35.35.35.11.m1.1.1.cmml" type="float" xref="S4.T2.35.35.35.11.m1.1.1">10.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.35.35.35.11.m1.1c">10.3</annotation><annotation encoding="application/x-llamapun" id="S4.T2.35.35.35.11.m1.1d">10.3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.36.36.36.12"><math alttext="2.2" class="ltx_Math" display="inline" id="S4.T2.36.36.36.12.m1.1"><semantics id="S4.T2.36.36.36.12.m1.1a"><mn id="S4.T2.36.36.36.12.m1.1.1" xref="S4.T2.36.36.36.12.m1.1.1.cmml">2.2</mn><annotation-xml encoding="MathML-Content" id="S4.T2.36.36.36.12.m1.1b"><cn id="S4.T2.36.36.36.12.m1.1.1.cmml" type="float" xref="S4.T2.36.36.36.12.m1.1.1">2.2</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.36.36.36.12.m1.1c">2.2</annotation><annotation encoding="application/x-llamapun" id="S4.T2.36.36.36.12.m1.1d">2.2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.36.36.36.14" style="background-color:#ECF7FC;"><span class="ltx_text" id="S4.T2.36.36.36.14.1" style="background-color:#ECF7FC;">7.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.48.48.48">
<td class="ltx_td ltx_align_left" id="S4.T2.48.48.48.13">CogAgent-18B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.37.37.37.1"><math alttext="14.9" class="ltx_Math" display="inline" id="S4.T2.37.37.37.1.m1.1"><semantics id="S4.T2.37.37.37.1.m1.1a"><mn id="S4.T2.37.37.37.1.m1.1.1" xref="S4.T2.37.37.37.1.m1.1.1.cmml">14.9</mn><annotation-xml encoding="MathML-Content" id="S4.T2.37.37.37.1.m1.1b"><cn id="S4.T2.37.37.37.1.m1.1.1.cmml" type="float" xref="S4.T2.37.37.37.1.m1.1.1">14.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.37.37.37.1.m1.1c">14.9</annotation><annotation encoding="application/x-llamapun" id="S4.T2.37.37.37.1.m1.1d">14.9</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.38.38.38.2"><math alttext="0.7" class="ltx_Math" display="inline" id="S4.T2.38.38.38.2.m1.1"><semantics id="S4.T2.38.38.38.2.m1.1a"><mn id="S4.T2.38.38.38.2.m1.1.1" xref="S4.T2.38.38.38.2.m1.1.1.cmml">0.7</mn><annotation-xml encoding="MathML-Content" id="S4.T2.38.38.38.2.m1.1b"><cn id="S4.T2.38.38.38.2.m1.1.1.cmml" type="float" xref="S4.T2.38.38.38.2.m1.1.1">0.7</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.38.38.38.2.m1.1c">0.7</annotation><annotation encoding="application/x-llamapun" id="S4.T2.38.38.38.2.m1.1d">0.7</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.39.39.39.3"><math alttext="9.6" class="ltx_Math" display="inline" id="S4.T2.39.39.39.3.m1.1"><semantics id="S4.T2.39.39.39.3.m1.1a"><mn id="S4.T2.39.39.39.3.m1.1.1" xref="S4.T2.39.39.39.3.m1.1.1.cmml">9.6</mn><annotation-xml encoding="MathML-Content" id="S4.T2.39.39.39.3.m1.1b"><cn id="S4.T2.39.39.39.3.m1.1.1.cmml" type="float" xref="S4.T2.39.39.39.3.m1.1.1">9.6</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.39.39.39.3.m1.1c">9.6</annotation><annotation encoding="application/x-llamapun" id="S4.T2.39.39.39.3.m1.1d">9.6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.40.40.40.4"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.40.40.40.4.m1.1"><semantics id="S4.T2.40.40.40.4.m1.1a"><mn id="S4.T2.40.40.40.4.m1.1.1" xref="S4.T2.40.40.40.4.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.40.40.40.4.m1.1b"><cn id="S4.T2.40.40.40.4.m1.1.1.cmml" type="float" xref="S4.T2.40.40.40.4.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.40.40.40.4.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.40.40.40.4.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.41.41.41.5"><math alttext="7.1" class="ltx_Math" display="inline" id="S4.T2.41.41.41.5.m1.1"><semantics id="S4.T2.41.41.41.5.m1.1a"><mn id="S4.T2.41.41.41.5.m1.1.1" xref="S4.T2.41.41.41.5.m1.1.1.cmml">7.1</mn><annotation-xml encoding="MathML-Content" id="S4.T2.41.41.41.5.m1.1b"><cn id="S4.T2.41.41.41.5.m1.1.1.cmml" type="float" xref="S4.T2.41.41.41.5.m1.1.1">7.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.41.41.41.5.m1.1c">7.1</annotation><annotation encoding="application/x-llamapun" id="S4.T2.41.41.41.5.m1.1d">7.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.42.42.42.6"><math alttext="3.1" class="ltx_Math" display="inline" id="S4.T2.42.42.42.6.m1.1"><semantics id="S4.T2.42.42.42.6.m1.1a"><mn id="S4.T2.42.42.42.6.m1.1.1" xref="S4.T2.42.42.42.6.m1.1.1.cmml">3.1</mn><annotation-xml encoding="MathML-Content" id="S4.T2.42.42.42.6.m1.1b"><cn id="S4.T2.42.42.42.6.m1.1.1.cmml" type="float" xref="S4.T2.42.42.42.6.m1.1.1">3.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.42.42.42.6.m1.1c">3.1</annotation><annotation encoding="application/x-llamapun" id="S4.T2.42.42.42.6.m1.1d">3.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.43.43.43.7"><math alttext="22.2" class="ltx_Math" display="inline" id="S4.T2.43.43.43.7.m1.1"><semantics id="S4.T2.43.43.43.7.m1.1a"><mn id="S4.T2.43.43.43.7.m1.1.1" xref="S4.T2.43.43.43.7.m1.1.1.cmml">22.2</mn><annotation-xml encoding="MathML-Content" id="S4.T2.43.43.43.7.m1.1b"><cn id="S4.T2.43.43.43.7.m1.1.1.cmml" type="float" xref="S4.T2.43.43.43.7.m1.1.1">22.2</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.43.43.43.7.m1.1c">22.2</annotation><annotation encoding="application/x-llamapun" id="S4.T2.43.43.43.7.m1.1d">22.2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.44.44.44.8"><math alttext="1.8" class="ltx_Math" display="inline" id="S4.T2.44.44.44.8.m1.1"><semantics id="S4.T2.44.44.44.8.m1.1a"><mn id="S4.T2.44.44.44.8.m1.1.1" xref="S4.T2.44.44.44.8.m1.1.1.cmml">1.8</mn><annotation-xml encoding="MathML-Content" id="S4.T2.44.44.44.8.m1.1b"><cn id="S4.T2.44.44.44.8.m1.1.1.cmml" type="float" xref="S4.T2.44.44.44.8.m1.1.1">1.8</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.44.44.44.8.m1.1c">1.8</annotation><annotation encoding="application/x-llamapun" id="S4.T2.44.44.44.8.m1.1d">1.8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.45.45.45.9"><math alttext="13.0" class="ltx_Math" display="inline" id="S4.T2.45.45.45.9.m1.1"><semantics id="S4.T2.45.45.45.9.m1.1a"><mn id="S4.T2.45.45.45.9.m1.1.1" xref="S4.T2.45.45.45.9.m1.1.1.cmml">13.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.45.45.45.9.m1.1b"><cn id="S4.T2.45.45.45.9.m1.1.1.cmml" type="float" xref="S4.T2.45.45.45.9.m1.1.1">13.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.45.45.45.9.m1.1c">13.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.45.45.45.9.m1.1d">13.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.46.46.46.10"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.46.46.46.10.m1.1"><semantics id="S4.T2.46.46.46.10.m1.1a"><mn id="S4.T2.46.46.46.10.m1.1.1" xref="S4.T2.46.46.46.10.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.46.46.46.10.m1.1b"><cn id="S4.T2.46.46.46.10.m1.1.1.cmml" type="float" xref="S4.T2.46.46.46.10.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.46.46.46.10.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.46.46.46.10.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.47.47.47.11"><math alttext="5.6" class="ltx_Math" display="inline" id="S4.T2.47.47.47.11.m1.1"><semantics id="S4.T2.47.47.47.11.m1.1a"><mn id="S4.T2.47.47.47.11.m1.1.1" xref="S4.T2.47.47.47.11.m1.1.1.cmml">5.6</mn><annotation-xml encoding="MathML-Content" id="S4.T2.47.47.47.11.m1.1b"><cn id="S4.T2.47.47.47.11.m1.1.1.cmml" type="float" xref="S4.T2.47.47.47.11.m1.1.1">5.6</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.47.47.47.11.m1.1c">5.6</annotation><annotation encoding="application/x-llamapun" id="S4.T2.47.47.47.11.m1.1d">5.6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.48.48.48.12"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.48.48.48.12.m1.1"><semantics id="S4.T2.48.48.48.12.m1.1a"><mn id="S4.T2.48.48.48.12.m1.1.1" xref="S4.T2.48.48.48.12.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.48.48.48.12.m1.1b"><cn id="S4.T2.48.48.48.12.m1.1.1.cmml" type="float" xref="S4.T2.48.48.48.12.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.48.48.48.12.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.48.48.48.12.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.48.48.48.14" style="background-color:#ECF7FC;"><span class="ltx_text" id="S4.T2.48.48.48.14.1" style="background-color:#ECF7FC;">7.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.59.59.59">
<td class="ltx_td ltx_align_left" id="S4.T2.59.59.59.12">Aria-GUI</td>
<td class="ltx_td ltx_align_center" id="S4.T2.49.49.49.1"><math alttext="16.2" class="ltx_Math" display="inline" id="S4.T2.49.49.49.1.m1.1"><semantics id="S4.T2.49.49.49.1.m1.1a"><mn id="S4.T2.49.49.49.1.m1.1.1" xref="S4.T2.49.49.49.1.m1.1.1.cmml">16.2</mn><annotation-xml encoding="MathML-Content" id="S4.T2.49.49.49.1.m1.1b"><cn id="S4.T2.49.49.49.1.m1.1.1.cmml" type="float" xref="S4.T2.49.49.49.1.m1.1.1">16.2</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.49.49.49.1.m1.1c">16.2</annotation><annotation encoding="application/x-llamapun" id="S4.T2.49.49.49.1.m1.1d">16.2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.50.50.50.2"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.50.50.50.2.m1.1"><semantics id="S4.T2.50.50.50.2.m1.1a"><mn id="S4.T2.50.50.50.2.m1.1.1" xref="S4.T2.50.50.50.2.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.50.50.50.2.m1.1b"><cn id="S4.T2.50.50.50.2.m1.1.1.cmml" type="float" xref="S4.T2.50.50.50.2.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.50.50.50.2.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.50.50.50.2.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.51.51.51.3"><math alttext="23.7" class="ltx_Math" display="inline" id="S4.T2.51.51.51.3.m1.1"><semantics id="S4.T2.51.51.51.3.m1.1a"><mn id="S4.T2.51.51.51.3.m1.1.1" xref="S4.T2.51.51.51.3.m1.1.1.cmml">23.7</mn><annotation-xml encoding="MathML-Content" id="S4.T2.51.51.51.3.m1.1b"><cn id="S4.T2.51.51.51.3.m1.1.1.cmml" type="float" xref="S4.T2.51.51.51.3.m1.1.1">23.7</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.51.51.51.3.m1.1c">23.7</annotation><annotation encoding="application/x-llamapun" id="S4.T2.51.51.51.3.m1.1d">23.7</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.52.52.52.4"><math alttext="2.1" class="ltx_Math" display="inline" id="S4.T2.52.52.52.4.m1.1"><semantics id="S4.T2.52.52.52.4.m1.1a"><mn id="S4.T2.52.52.52.4.m1.1.1" xref="S4.T2.52.52.52.4.m1.1.1.cmml">2.1</mn><annotation-xml encoding="MathML-Content" id="S4.T2.52.52.52.4.m1.1b"><cn id="S4.T2.52.52.52.4.m1.1.1.cmml" type="float" xref="S4.T2.52.52.52.4.m1.1.1">2.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.52.52.52.4.m1.1c">2.1</annotation><annotation encoding="application/x-llamapun" id="S4.T2.52.52.52.4.m1.1d">2.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.53.53.53.5"><math alttext="7.6" class="ltx_Math" display="inline" id="S4.T2.53.53.53.5.m1.1"><semantics id="S4.T2.53.53.53.5.m1.1a"><mn id="S4.T2.53.53.53.5.m1.1.1" xref="S4.T2.53.53.53.5.m1.1.1.cmml">7.6</mn><annotation-xml encoding="MathML-Content" id="S4.T2.53.53.53.5.m1.1b"><cn id="S4.T2.53.53.53.5.m1.1.1.cmml" type="float" xref="S4.T2.53.53.53.5.m1.1.1">7.6</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.53.53.53.5.m1.1c">7.6</annotation><annotation encoding="application/x-llamapun" id="S4.T2.53.53.53.5.m1.1d">7.6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.54.54.54.6"><math alttext="1.6" class="ltx_Math" display="inline" id="S4.T2.54.54.54.6.m1.1"><semantics id="S4.T2.54.54.54.6.m1.1a"><mn id="S4.T2.54.54.54.6.m1.1.1" xref="S4.T2.54.54.54.6.m1.1.1.cmml">1.6</mn><annotation-xml encoding="MathML-Content" id="S4.T2.54.54.54.6.m1.1b"><cn id="S4.T2.54.54.54.6.m1.1.1.cmml" type="float" xref="S4.T2.54.54.54.6.m1.1.1">1.6</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.54.54.54.6.m1.1c">1.6</annotation><annotation encoding="application/x-llamapun" id="S4.T2.54.54.54.6.m1.1d">1.6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.55.55.55.7"><math alttext="27.1" class="ltx_Math" display="inline" id="S4.T2.55.55.55.7.m1.1"><semantics id="S4.T2.55.55.55.7.m1.1a"><mn id="S4.T2.55.55.55.7.m1.1.1" xref="S4.T2.55.55.55.7.m1.1.1.cmml">27.1</mn><annotation-xml encoding="MathML-Content" id="S4.T2.55.55.55.7.m1.1b"><cn id="S4.T2.55.55.55.7.m1.1.1.cmml" type="float" xref="S4.T2.55.55.55.7.m1.1.1">27.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.55.55.55.7.m1.1c">27.1</annotation><annotation encoding="application/x-llamapun" id="S4.T2.55.55.55.7.m1.1d">27.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.56.56.56.8"><math alttext="6.4" class="ltx_Math" display="inline" id="S4.T2.56.56.56.8.m1.1"><semantics id="S4.T2.56.56.56.8.m1.1a"><mn id="S4.T2.56.56.56.8.m1.1.1" xref="S4.T2.56.56.56.8.m1.1.1.cmml">6.4</mn><annotation-xml encoding="MathML-Content" id="S4.T2.56.56.56.8.m1.1b"><cn id="S4.T2.56.56.56.8.m1.1.1.cmml" type="float" xref="S4.T2.56.56.56.8.m1.1.1">6.4</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.56.56.56.8.m1.1c">6.4</annotation><annotation encoding="application/x-llamapun" id="S4.T2.56.56.56.8.m1.1d">6.4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.57.57.57.9"><math alttext="20.3" class="ltx_Math" display="inline" id="S4.T2.57.57.57.9.m1.1"><semantics id="S4.T2.57.57.57.9.m1.1a"><mn id="S4.T2.57.57.57.9.m1.1.1" xref="S4.T2.57.57.57.9.m1.1.1.cmml">20.3</mn><annotation-xml encoding="MathML-Content" id="S4.T2.57.57.57.9.m1.1b"><cn id="S4.T2.57.57.57.9.m1.1.1.cmml" type="float" xref="S4.T2.57.57.57.9.m1.1.1">20.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.57.57.57.9.m1.1c">20.3</annotation><annotation encoding="application/x-llamapun" id="S4.T2.57.57.57.9.m1.1d">20.3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.58.58.58.10"><math alttext="1.9" class="ltx_Math" display="inline" id="S4.T2.58.58.58.10.m1.1"><semantics id="S4.T2.58.58.58.10.m1.1a"><mn id="S4.T2.58.58.58.10.m1.1.1" xref="S4.T2.58.58.58.10.m1.1.1.cmml">1.9</mn><annotation-xml encoding="MathML-Content" id="S4.T2.58.58.58.10.m1.1b"><cn id="S4.T2.58.58.58.10.m1.1.1.cmml" type="float" xref="S4.T2.58.58.58.10.m1.1.1">1.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.58.58.58.10.m1.1c">1.9</annotation><annotation encoding="application/x-llamapun" id="S4.T2.58.58.58.10.m1.1d">1.9</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.59.59.59.13">4.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.59.59.59.11"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.59.59.59.11.m1.1"><semantics id="S4.T2.59.59.59.11.m1.1a"><mn id="S4.T2.59.59.59.11.m1.1.1" xref="S4.T2.59.59.59.11.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.59.59.59.11.m1.1b"><cn id="S4.T2.59.59.59.11.m1.1.1.cmml" type="float" xref="S4.T2.59.59.59.11.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.59.59.59.11.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.59.59.59.11.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.59.59.59.14" style="background-color:#ECF7FC;"><span class="ltx_text" id="S4.T2.59.59.59.14.1" style="background-color:#ECF7FC;">11.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.118.118.122.4">
<td class="ltx_td ltx_align_left" id="S4.T2.118.118.122.4.1">Qwen2.5-VL-3B*</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.122.4.2">15.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.122.4.3">0.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.122.4.4">13.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.122.4.5">2.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.122.4.6">5.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.122.4.7">3.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.122.4.8">27.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.122.4.9">8.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.122.4.10">20.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.122.4.11">5.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.122.4.12">14.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.122.4.13">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.122.4.14" style="background-color:#ECF7FC;"><span class="ltx_text" id="S4.T2.118.118.122.4.14.1" style="background-color:#ECF7FC;">10.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.68.68.68">
<td class="ltx_td ltx_align_left" id="S4.T2.68.68.68.10">UGround-7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.68.68.68.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.68.68.68.11.1">26.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.60.60.60.1"><math alttext="2.1" class="ltx_Math" display="inline" id="S4.T2.60.60.60.1.m1.1"><semantics id="S4.T2.60.60.60.1.m1.1a"><mn id="S4.T2.60.60.60.1.m1.1.1" xref="S4.T2.60.60.60.1.m1.1.1.cmml">2.1</mn><annotation-xml encoding="MathML-Content" id="S4.T2.60.60.60.1.m1.1b"><cn id="S4.T2.60.60.60.1.m1.1.1.cmml" type="float" xref="S4.T2.60.60.60.1.m1.1.1">2.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.60.60.60.1.m1.1c">2.1</annotation><annotation encoding="application/x-llamapun" id="S4.T2.60.60.60.1.m1.1d">2.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.61.61.61.2"><math alttext="27.3" class="ltx_Math" display="inline" id="S4.T2.61.61.61.2.m1.1"><semantics id="S4.T2.61.61.61.2.m1.1a"><mn id="S4.T2.61.61.61.2.m1.1.1" xref="S4.T2.61.61.61.2.m1.1.1.cmml">27.3</mn><annotation-xml encoding="MathML-Content" id="S4.T2.61.61.61.2.m1.1b"><cn id="S4.T2.61.61.61.2.m1.1.1.cmml" type="float" xref="S4.T2.61.61.61.2.m1.1.1">27.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.61.61.61.2.m1.1c">27.3</annotation><annotation encoding="application/x-llamapun" id="S4.T2.61.61.61.2.m1.1d">27.3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.62.62.62.3"><math alttext="2.8" class="ltx_Math" display="inline" id="S4.T2.62.62.62.3.m1.1"><semantics id="S4.T2.62.62.62.3.m1.1a"><mn id="S4.T2.62.62.62.3.m1.1.1" xref="S4.T2.62.62.62.3.m1.1.1.cmml">2.8</mn><annotation-xml encoding="MathML-Content" id="S4.T2.62.62.62.3.m1.1b"><cn id="S4.T2.62.62.62.3.m1.1.1.cmml" type="float" xref="S4.T2.62.62.62.3.m1.1.1">2.8</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.62.62.62.3.m1.1c">2.8</annotation><annotation encoding="application/x-llamapun" id="S4.T2.62.62.62.3.m1.1d">2.8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.68.68.68.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.68.68.68.12.1">14.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.63.63.63.4"><math alttext="1.6" class="ltx_Math" display="inline" id="S4.T2.63.63.63.4.m1.1"><semantics id="S4.T2.63.63.63.4.m1.1a"><mn id="S4.T2.63.63.63.4.m1.1.1" xref="S4.T2.63.63.63.4.m1.1.1.cmml">1.6</mn><annotation-xml encoding="MathML-Content" id="S4.T2.63.63.63.4.m1.1b"><cn id="S4.T2.63.63.63.4.m1.1.1.cmml" type="float" xref="S4.T2.63.63.63.4.m1.1.1">1.6</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.63.63.63.4.m1.1c">1.6</annotation><annotation encoding="application/x-llamapun" id="S4.T2.63.63.63.4.m1.1d">1.6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.64.64.64.5"><math alttext="31.9" class="ltx_Math" display="inline" id="S4.T2.64.64.64.5.m1.1"><semantics id="S4.T2.64.64.64.5.m1.1a"><mn id="S4.T2.64.64.64.5.m1.1.1" xref="S4.T2.64.64.64.5.m1.1.1.cmml">31.9</mn><annotation-xml encoding="MathML-Content" id="S4.T2.64.64.64.5.m1.1b"><cn id="S4.T2.64.64.64.5.m1.1.1.cmml" type="float" xref="S4.T2.64.64.64.5.m1.1.1">31.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.64.64.64.5.m1.1c">31.9</annotation><annotation encoding="application/x-llamapun" id="S4.T2.64.64.64.5.m1.1d">31.9</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.65.65.65.6"><math alttext="2.7" class="ltx_Math" display="inline" id="S4.T2.65.65.65.6.m1.1"><semantics id="S4.T2.65.65.65.6.m1.1a"><mn id="S4.T2.65.65.65.6.m1.1.1" xref="S4.T2.65.65.65.6.m1.1.1.cmml">2.7</mn><annotation-xml encoding="MathML-Content" id="S4.T2.65.65.65.6.m1.1b"><cn id="S4.T2.65.65.65.6.m1.1.1.cmml" type="float" xref="S4.T2.65.65.65.6.m1.1.1">2.7</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.65.65.65.6.m1.1c">2.7</annotation><annotation encoding="application/x-llamapun" id="S4.T2.65.65.65.6.m1.1d">2.7</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.66.66.66.7"><math alttext="31.6" class="ltx_Math" display="inline" id="S4.T2.66.66.66.7.m1.1"><semantics id="S4.T2.66.66.66.7.m1.1a"><mn id="S4.T2.66.66.66.7.m1.1.1" xref="S4.T2.66.66.66.7.m1.1.1.cmml">31.6</mn><annotation-xml encoding="MathML-Content" id="S4.T2.66.66.66.7.m1.1b"><cn id="S4.T2.66.66.66.7.m1.1.1.cmml" type="float" xref="S4.T2.66.66.66.7.m1.1.1">31.6</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.66.66.66.7.m1.1c">31.6</annotation><annotation encoding="application/x-llamapun" id="S4.T2.66.66.66.7.m1.1d">31.6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.67.67.67.8"><math alttext="11.3" class="ltx_Math" display="inline" id="S4.T2.67.67.67.8.m1.1"><semantics id="S4.T2.67.67.67.8.m1.1a"><mn id="S4.T2.67.67.67.8.m1.1.1" xref="S4.T2.67.67.67.8.m1.1.1.cmml">11.3</mn><annotation-xml encoding="MathML-Content" id="S4.T2.67.67.67.8.m1.1b"><cn id="S4.T2.67.67.67.8.m1.1.1.cmml" type="float" xref="S4.T2.67.67.67.8.m1.1.1">11.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.67.67.67.8.m1.1c">11.3</annotation><annotation encoding="application/x-llamapun" id="S4.T2.67.67.67.8.m1.1d">11.3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.68.68.68.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.68.68.68.13.1">17.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.68.68.68.9"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.68.68.68.9.m1.1"><semantics id="S4.T2.68.68.68.9.m1.1a"><mn id="S4.T2.68.68.68.9.m1.1.1" xref="S4.T2.68.68.68.9.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.68.68.68.9.m1.1b"><cn id="S4.T2.68.68.68.9.m1.1.1.cmml" type="float" xref="S4.T2.68.68.68.9.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.68.68.68.9.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.68.68.68.9.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.68.68.68.14" style="background-color:#ECF7FC;"><span class="ltx_text" id="S4.T2.68.68.68.14.1" style="background-color:#ECF7FC;">16.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.75.75.75">
<td class="ltx_td ltx_align_left" id="S4.T2.75.75.75.8">Claude**</td>
<td class="ltx_td ltx_align_center" id="S4.T2.69.69.69.1"><math alttext="22.0" class="ltx_Math" display="inline" id="S4.T2.69.69.69.1.m1.1"><semantics id="S4.T2.69.69.69.1.m1.1a"><mn id="S4.T2.69.69.69.1.m1.1.1" xref="S4.T2.69.69.69.1.m1.1.1.cmml">22.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.69.69.69.1.m1.1b"><cn id="S4.T2.69.69.69.1.m1.1.1.cmml" type="float" xref="S4.T2.69.69.69.1.m1.1.1">22.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.69.69.69.1.m1.1c">22.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.69.69.69.1.m1.1d">22.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.75.75.75.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.75.75.75.9.1">3.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.70.70.70.2"><math alttext="25.9" class="ltx_Math" display="inline" id="S4.T2.70.70.70.2.m1.1"><semantics id="S4.T2.70.70.70.2.m1.1a"><mn id="S4.T2.70.70.70.2.m1.1.1" xref="S4.T2.70.70.70.2.m1.1.1.cmml">25.9</mn><annotation-xml encoding="MathML-Content" id="S4.T2.70.70.70.2.m1.1b"><cn id="S4.T2.70.70.70.2.m1.1.1.cmml" type="float" xref="S4.T2.70.70.70.2.m1.1.1">25.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.70.70.70.2.m1.1c">25.9</annotation><annotation encoding="application/x-llamapun" id="S4.T2.70.70.70.2.m1.1d">25.9</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.75.75.75.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.75.75.75.10.1">3.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.75.75.75.11"><span class="ltx_text ltx_font_bold" id="S4.T2.75.75.75.11.1">14.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.71.71.71.3"><math alttext="3.7" class="ltx_Math" display="inline" id="S4.T2.71.71.71.3.m1.1"><semantics id="S4.T2.71.71.71.3.m1.1a"><mn id="S4.T2.71.71.71.3.m1.1.1" xref="S4.T2.71.71.71.3.m1.1.1.cmml">3.7</mn><annotation-xml encoding="MathML-Content" id="S4.T2.71.71.71.3.m1.1b"><cn id="S4.T2.71.71.71.3.m1.1.1.cmml" type="float" xref="S4.T2.71.71.71.3.m1.1.1">3.7</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.71.71.71.3.m1.1c">3.7</annotation><annotation encoding="application/x-llamapun" id="S4.T2.71.71.71.3.m1.1d">3.7</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.72.72.72.4"><math alttext="33.9" class="ltx_Math" display="inline" id="S4.T2.72.72.72.4.m1.1"><semantics id="S4.T2.72.72.72.4.m1.1a"><mn id="S4.T2.72.72.72.4.m1.1.1" xref="S4.T2.72.72.72.4.m1.1.1.cmml">33.9</mn><annotation-xml encoding="MathML-Content" id="S4.T2.72.72.72.4.m1.1b"><cn id="S4.T2.72.72.72.4.m1.1.1.cmml" type="float" xref="S4.T2.72.72.72.4.m1.1.1">33.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.72.72.72.4.m1.1c">33.9</annotation><annotation encoding="application/x-llamapun" id="S4.T2.72.72.72.4.m1.1d">33.9</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.75.75.75.12"><span class="ltx_text ltx_font_bold" id="S4.T2.75.75.75.12.1">15.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.73.73.73.5"><math alttext="30.1" class="ltx_Math" display="inline" id="S4.T2.73.73.73.5.m1.1"><semantics id="S4.T2.73.73.73.5.m1.1a"><mn id="S4.T2.73.73.73.5.m1.1.1" xref="S4.T2.73.73.73.5.m1.1.1.cmml">30.1</mn><annotation-xml encoding="MathML-Content" id="S4.T2.73.73.73.5.m1.1b"><cn id="S4.T2.73.73.73.5.m1.1.1.cmml" type="float" xref="S4.T2.73.73.73.5.m1.1.1">30.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.73.73.73.5.m1.1c">30.1</annotation><annotation encoding="application/x-llamapun" id="S4.T2.73.73.73.5.m1.1d">30.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.74.74.74.6"><math alttext="16.3" class="ltx_Math" display="inline" id="S4.T2.74.74.74.6.m1.1"><semantics id="S4.T2.74.74.74.6.m1.1a"><mn id="S4.T2.74.74.74.6.m1.1.1" xref="S4.T2.74.74.74.6.m1.1.1.cmml">16.3</mn><annotation-xml encoding="MathML-Content" id="S4.T2.74.74.74.6.m1.1b"><cn id="S4.T2.74.74.74.6.m1.1.1.cmml" type="float" xref="S4.T2.74.74.74.6.m1.1.1">16.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.74.74.74.6.m1.1c">16.3</annotation><annotation encoding="application/x-llamapun" id="S4.T2.74.74.74.6.m1.1d">16.3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.75.75.75.7"><math alttext="11.0" class="ltx_Math" display="inline" id="S4.T2.75.75.75.7.m1.1"><semantics id="S4.T2.75.75.75.7.m1.1a"><mn id="S4.T2.75.75.75.7.m1.1.1" xref="S4.T2.75.75.75.7.m1.1.1.cmml">11.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.75.75.75.7.m1.1b"><cn id="S4.T2.75.75.75.7.m1.1.1.cmml" type="float" xref="S4.T2.75.75.75.7.m1.1.1">11.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.75.75.75.7.m1.1c">11.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.75.75.75.7.m1.1d">11.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.75.75.75.13"><span class="ltx_text ltx_font_bold" id="S4.T2.75.75.75.13.1">4.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.75.75.75.14" style="background-color:#ECF7FC;"><span class="ltx_text" id="S4.T2.75.75.75.14.1" style="background-color:#ECF7FC;">17.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.82.82.82">
<td class="ltx_td ltx_align_left" id="S4.T2.82.82.82.8">OS-Atlas-7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.82.82.82.9"><span class="ltx_text ltx_font_bold" id="S4.T2.82.82.82.9.1">33.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.76.76.76.1"><math alttext="1.4" class="ltx_Math" display="inline" id="S4.T2.76.76.76.1.m1.1"><semantics id="S4.T2.76.76.76.1.m1.1a"><mn id="S4.T2.76.76.76.1.m1.1.1" xref="S4.T2.76.76.76.1.m1.1.1.cmml">1.4</mn><annotation-xml encoding="MathML-Content" id="S4.T2.76.76.76.1.m1.1b"><cn id="S4.T2.76.76.76.1.m1.1.1.cmml" type="float" xref="S4.T2.76.76.76.1.m1.1.1">1.4</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.76.76.76.1.m1.1c">1.4</annotation><annotation encoding="application/x-llamapun" id="S4.T2.76.76.76.1.m1.1d">1.4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.77.77.77.2"><math alttext="28.8" class="ltx_Math" display="inline" id="S4.T2.77.77.77.2.m1.1"><semantics id="S4.T2.77.77.77.2.m1.1a"><mn id="S4.T2.77.77.77.2.m1.1.1" xref="S4.T2.77.77.77.2.m1.1.1.cmml">28.8</mn><annotation-xml encoding="MathML-Content" id="S4.T2.77.77.77.2.m1.1b"><cn id="S4.T2.77.77.77.2.m1.1.1.cmml" type="float" xref="S4.T2.77.77.77.2.m1.1.1">28.8</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.77.77.77.2.m1.1c">28.8</annotation><annotation encoding="application/x-llamapun" id="S4.T2.77.77.77.2.m1.1d">28.8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.78.78.78.3"><math alttext="2.8" class="ltx_Math" display="inline" id="S4.T2.78.78.78.3.m1.1"><semantics id="S4.T2.78.78.78.3.m1.1a"><mn id="S4.T2.78.78.78.3.m1.1.1" xref="S4.T2.78.78.78.3.m1.1.1.cmml">2.8</mn><annotation-xml encoding="MathML-Content" id="S4.T2.78.78.78.3.m1.1b"><cn id="S4.T2.78.78.78.3.m1.1.1.cmml" type="float" xref="S4.T2.78.78.78.3.m1.1.1">2.8</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.78.78.78.3.m1.1c">2.8</annotation><annotation encoding="application/x-llamapun" id="S4.T2.78.78.78.3.m1.1d">2.8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.79.79.79.4"><math alttext="12.2" class="ltx_Math" display="inline" id="S4.T2.79.79.79.4.m1.1"><semantics id="S4.T2.79.79.79.4.m1.1a"><mn id="S4.T2.79.79.79.4.m1.1.1" xref="S4.T2.79.79.79.4.m1.1.1.cmml">12.2</mn><annotation-xml encoding="MathML-Content" id="S4.T2.79.79.79.4.m1.1b"><cn id="S4.T2.79.79.79.4.m1.1.1.cmml" type="float" xref="S4.T2.79.79.79.4.m1.1.1">12.2</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.79.79.79.4.m1.1c">12.2</annotation><annotation encoding="application/x-llamapun" id="S4.T2.79.79.79.4.m1.1d">12.2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.82.82.82.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.82.82.82.10.1">4.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.82.82.82.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.82.82.82.11.1">37.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.80.80.80.5"><math alttext="7.3" class="ltx_Math" display="inline" id="S4.T2.80.80.80.5.m1.1"><semantics id="S4.T2.80.80.80.5.m1.1a"><mn id="S4.T2.80.80.80.5.m1.1.1" xref="S4.T2.80.80.80.5.m1.1.1.cmml">7.3</mn><annotation-xml encoding="MathML-Content" id="S4.T2.80.80.80.5.m1.1b"><cn id="S4.T2.80.80.80.5.m1.1.1.cmml" type="float" xref="S4.T2.80.80.80.5.m1.1.1">7.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.80.80.80.5.m1.1c">7.3</annotation><annotation encoding="application/x-llamapun" id="S4.T2.80.80.80.5.m1.1d">7.3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.81.81.81.6"><math alttext="33.9" class="ltx_Math" display="inline" id="S4.T2.81.81.81.6.m1.1"><semantics id="S4.T2.81.81.81.6.m1.1a"><mn id="S4.T2.81.81.81.6.m1.1.1" xref="S4.T2.81.81.81.6.m1.1.1.cmml">33.9</mn><annotation-xml encoding="MathML-Content" id="S4.T2.81.81.81.6.m1.1b"><cn id="S4.T2.81.81.81.6.m1.1.1.cmml" type="float" xref="S4.T2.81.81.81.6.m1.1.1">33.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.81.81.81.6.m1.1c">33.9</annotation><annotation encoding="application/x-llamapun" id="S4.T2.81.81.81.6.m1.1d">33.9</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.82.82.82.7"><math alttext="5.7" class="ltx_Math" display="inline" id="S4.T2.82.82.82.7.m1.1"><semantics id="S4.T2.82.82.82.7.m1.1a"><mn id="S4.T2.82.82.82.7.m1.1.1" xref="S4.T2.82.82.82.7.m1.1.1.cmml">5.7</mn><annotation-xml encoding="MathML-Content" id="S4.T2.82.82.82.7.m1.1b"><cn id="S4.T2.82.82.82.7.m1.1.1.cmml" type="float" xref="S4.T2.82.82.82.7.m1.1.1">5.7</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.82.82.82.7.m1.1c">5.7</annotation><annotation encoding="application/x-llamapun" id="S4.T2.82.82.82.7.m1.1d">5.7</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.82.82.82.12"><span class="ltx_text ltx_font_bold" id="S4.T2.82.82.82.12.1">27.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.82.82.82.13"><span class="ltx_text ltx_font_bold" id="S4.T2.82.82.82.13.1">4.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.82.82.82.14" style="background-color:#ECF7FC;"><span class="ltx_text ltx_font_bold" id="S4.T2.82.82.82.14.1" style="background-color:#ECF7FC;">18.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.118.118.123.5">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="12" id="S4.T2.118.118.123.5.1"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.123.5.1.1">Zero Shot / Reinforcement Fine-tuning</span></td>
<td class="ltx_td ltx_border_t" id="S4.T2.118.118.123.5.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.118.118.123.5.3"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.94.94.94">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.94.94.94.13">Qwen-VL-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.83.83.83.1"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.83.83.83.1.m1.1"><semantics id="S4.T2.83.83.83.1.m1.1a"><mn id="S4.T2.83.83.83.1.m1.1.1" xref="S4.T2.83.83.83.1.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.83.83.83.1.m1.1b"><cn id="S4.T2.83.83.83.1.m1.1.1.cmml" type="float" xref="S4.T2.83.83.83.1.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.83.83.83.1.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.83.83.83.1.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.84.84.84.2"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.84.84.84.2.m1.1"><semantics id="S4.T2.84.84.84.2.m1.1a"><mn id="S4.T2.84.84.84.2.m1.1.1" xref="S4.T2.84.84.84.2.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.84.84.84.2.m1.1b"><cn id="S4.T2.84.84.84.2.m1.1.1.cmml" type="float" xref="S4.T2.84.84.84.2.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.84.84.84.2.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.84.84.84.2.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.85.85.85.3"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.85.85.85.3.m1.1"><semantics id="S4.T2.85.85.85.3.m1.1a"><mn id="S4.T2.85.85.85.3.m1.1.1" xref="S4.T2.85.85.85.3.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.85.85.85.3.m1.1b"><cn id="S4.T2.85.85.85.3.m1.1.1.cmml" type="float" xref="S4.T2.85.85.85.3.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.85.85.85.3.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.85.85.85.3.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.86.86.86.4"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.86.86.86.4.m1.1"><semantics id="S4.T2.86.86.86.4.m1.1a"><mn id="S4.T2.86.86.86.4.m1.1.1" xref="S4.T2.86.86.86.4.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.86.86.86.4.m1.1b"><cn id="S4.T2.86.86.86.4.m1.1.1.cmml" type="float" xref="S4.T2.86.86.86.4.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.86.86.86.4.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.86.86.86.4.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.87.87.87.5"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.87.87.87.5.m1.1"><semantics id="S4.T2.87.87.87.5.m1.1a"><mn id="S4.T2.87.87.87.5.m1.1.1" xref="S4.T2.87.87.87.5.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.87.87.87.5.m1.1b"><cn id="S4.T2.87.87.87.5.m1.1.1.cmml" type="float" xref="S4.T2.87.87.87.5.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.87.87.87.5.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.87.87.87.5.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.88.88.88.6"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.88.88.88.6.m1.1"><semantics id="S4.T2.88.88.88.6.m1.1a"><mn id="S4.T2.88.88.88.6.m1.1.1" xref="S4.T2.88.88.88.6.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.88.88.88.6.m1.1b"><cn id="S4.T2.88.88.88.6.m1.1.1.cmml" type="float" xref="S4.T2.88.88.88.6.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.88.88.88.6.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.88.88.88.6.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.89.89.89.7"><math alttext="0.7" class="ltx_Math" display="inline" id="S4.T2.89.89.89.7.m1.1"><semantics id="S4.T2.89.89.89.7.m1.1a"><mn id="S4.T2.89.89.89.7.m1.1.1" xref="S4.T2.89.89.89.7.m1.1.1.cmml">0.7</mn><annotation-xml encoding="MathML-Content" id="S4.T2.89.89.89.7.m1.1b"><cn id="S4.T2.89.89.89.7.m1.1.1.cmml" type="float" xref="S4.T2.89.89.89.7.m1.1.1">0.7</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.89.89.89.7.m1.1c">0.7</annotation><annotation encoding="application/x-llamapun" id="S4.T2.89.89.89.7.m1.1d">0.7</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.90.90.90.8"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.90.90.90.8.m1.1"><semantics id="S4.T2.90.90.90.8.m1.1a"><mn id="S4.T2.90.90.90.8.m1.1.1" xref="S4.T2.90.90.90.8.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.90.90.90.8.m1.1b"><cn id="S4.T2.90.90.90.8.m1.1.1.cmml" type="float" xref="S4.T2.90.90.90.8.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.90.90.90.8.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.90.90.90.8.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.91.91.91.9"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.91.91.91.9.m1.1"><semantics id="S4.T2.91.91.91.9.m1.1a"><mn id="S4.T2.91.91.91.9.m1.1.1" xref="S4.T2.91.91.91.9.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.91.91.91.9.m1.1b"><cn id="S4.T2.91.91.91.9.m1.1.1.cmml" type="float" xref="S4.T2.91.91.91.9.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.91.91.91.9.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.91.91.91.9.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.92.92.92.10"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.92.92.92.10.m1.1"><semantics id="S4.T2.92.92.92.10.m1.1a"><mn id="S4.T2.92.92.92.10.m1.1.1" xref="S4.T2.92.92.92.10.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.92.92.92.10.m1.1b"><cn id="S4.T2.92.92.92.10.m1.1.1.cmml" type="float" xref="S4.T2.92.92.92.10.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.92.92.92.10.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.92.92.92.10.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.93.93.93.11"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.93.93.93.11.m1.1"><semantics id="S4.T2.93.93.93.11.m1.1a"><mn id="S4.T2.93.93.93.11.m1.1.1" xref="S4.T2.93.93.93.11.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.93.93.93.11.m1.1b"><cn id="S4.T2.93.93.93.11.m1.1.1.cmml" type="float" xref="S4.T2.93.93.93.11.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.93.93.93.11.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.93.93.93.11.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.94.94.94.12"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.94.94.94.12.m1.1"><semantics id="S4.T2.94.94.94.12.m1.1a"><mn id="S4.T2.94.94.94.12.m1.1.1" xref="S4.T2.94.94.94.12.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.94.94.94.12.m1.1b"><cn id="S4.T2.94.94.94.12.m1.1.1.cmml" type="float" xref="S4.T2.94.94.94.12.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.94.94.94.12.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.94.94.94.12.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.94.94.94.14" style="background-color:#ECF7FC;"><span class="ltx_text" id="S4.T2.94.94.94.14.1" style="background-color:#ECF7FC;">0.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.106.106.106">
<td class="ltx_td ltx_align_left" id="S4.T2.106.106.106.13">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S4.T2.95.95.95.1"><math alttext="1.3" class="ltx_Math" display="inline" id="S4.T2.95.95.95.1.m1.1"><semantics id="S4.T2.95.95.95.1.m1.1a"><mn id="S4.T2.95.95.95.1.m1.1.1" xref="S4.T2.95.95.95.1.m1.1.1.cmml">1.3</mn><annotation-xml encoding="MathML-Content" id="S4.T2.95.95.95.1.m1.1b"><cn id="S4.T2.95.95.95.1.m1.1.1.cmml" type="float" xref="S4.T2.95.95.95.1.m1.1.1">1.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.95.95.95.1.m1.1c">1.3</annotation><annotation encoding="application/x-llamapun" id="S4.T2.95.95.95.1.m1.1d">1.3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.96.96.96.2"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.96.96.96.2.m1.1"><semantics id="S4.T2.96.96.96.2.m1.1a"><mn id="S4.T2.96.96.96.2.m1.1.1" xref="S4.T2.96.96.96.2.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.96.96.96.2.m1.1b"><cn id="S4.T2.96.96.96.2.m1.1.1.cmml" type="float" xref="S4.T2.96.96.96.2.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.96.96.96.2.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.96.96.96.2.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.97.97.97.3"><math alttext="1.0" class="ltx_Math" display="inline" id="S4.T2.97.97.97.3.m1.1"><semantics id="S4.T2.97.97.97.3.m1.1a"><mn id="S4.T2.97.97.97.3.m1.1.1" xref="S4.T2.97.97.97.3.m1.1.1.cmml">1.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.97.97.97.3.m1.1b"><cn id="S4.T2.97.97.97.3.m1.1.1.cmml" type="float" xref="S4.T2.97.97.97.3.m1.1.1">1.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.97.97.97.3.m1.1c">1.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.97.97.97.3.m1.1d">1.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.98.98.98.4"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.98.98.98.4.m1.1"><semantics id="S4.T2.98.98.98.4.m1.1a"><mn id="S4.T2.98.98.98.4.m1.1.1" xref="S4.T2.98.98.98.4.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.98.98.98.4.m1.1b"><cn id="S4.T2.98.98.98.4.m1.1.1.cmml" type="float" xref="S4.T2.98.98.98.4.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.98.98.98.4.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.98.98.98.4.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.99.99.99.5"><math alttext="2.0" class="ltx_Math" display="inline" id="S4.T2.99.99.99.5.m1.1"><semantics id="S4.T2.99.99.99.5.m1.1a"><mn id="S4.T2.99.99.99.5.m1.1.1" xref="S4.T2.99.99.99.5.m1.1.1.cmml">2.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.99.99.99.5.m1.1b"><cn id="S4.T2.99.99.99.5.m1.1.1.cmml" type="float" xref="S4.T2.99.99.99.5.m1.1.1">2.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.99.99.99.5.m1.1c">2.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.99.99.99.5.m1.1d">2.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.100.100.100.6"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.100.100.100.6.m1.1"><semantics id="S4.T2.100.100.100.6.m1.1a"><mn id="S4.T2.100.100.100.6.m1.1.1" xref="S4.T2.100.100.100.6.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.100.100.100.6.m1.1b"><cn id="S4.T2.100.100.100.6.m1.1.1.cmml" type="float" xref="S4.T2.100.100.100.6.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.100.100.100.6.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.100.100.100.6.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.101.101.101.7"><math alttext="2.1" class="ltx_Math" display="inline" id="S4.T2.101.101.101.7.m1.1"><semantics id="S4.T2.101.101.101.7.m1.1a"><mn id="S4.T2.101.101.101.7.m1.1.1" xref="S4.T2.101.101.101.7.m1.1.1.cmml">2.1</mn><annotation-xml encoding="MathML-Content" id="S4.T2.101.101.101.7.m1.1b"><cn id="S4.T2.101.101.101.7.m1.1.1.cmml" type="float" xref="S4.T2.101.101.101.7.m1.1.1">2.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.101.101.101.7.m1.1c">2.1</annotation><annotation encoding="application/x-llamapun" id="S4.T2.101.101.101.7.m1.1d">2.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.102.102.102.8"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.102.102.102.8.m1.1"><semantics id="S4.T2.102.102.102.8.m1.1a"><mn id="S4.T2.102.102.102.8.m1.1.1" xref="S4.T2.102.102.102.8.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.102.102.102.8.m1.1b"><cn id="S4.T2.102.102.102.8.m1.1.1.cmml" type="float" xref="S4.T2.102.102.102.8.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.102.102.102.8.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.102.102.102.8.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.103.103.103.9"><math alttext="1.1" class="ltx_Math" display="inline" id="S4.T2.103.103.103.9.m1.1"><semantics id="S4.T2.103.103.103.9.m1.1a"><mn id="S4.T2.103.103.103.9.m1.1.1" xref="S4.T2.103.103.103.9.m1.1.1.cmml">1.1</mn><annotation-xml encoding="MathML-Content" id="S4.T2.103.103.103.9.m1.1b"><cn id="S4.T2.103.103.103.9.m1.1.1.cmml" type="float" xref="S4.T2.103.103.103.9.m1.1.1">1.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.103.103.103.9.m1.1c">1.1</annotation><annotation encoding="application/x-llamapun" id="S4.T2.103.103.103.9.m1.1d">1.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.104.104.104.10"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.104.104.104.10.m1.1"><semantics id="S4.T2.104.104.104.10.m1.1a"><mn id="S4.T2.104.104.104.10.m1.1.1" xref="S4.T2.104.104.104.10.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.104.104.104.10.m1.1b"><cn id="S4.T2.104.104.104.10.m1.1.1.cmml" type="float" xref="S4.T2.104.104.104.10.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.104.104.104.10.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.104.104.104.10.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.105.105.105.11"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.105.105.105.11.m1.1"><semantics id="S4.T2.105.105.105.11.m1.1a"><mn id="S4.T2.105.105.105.11.m1.1.1" xref="S4.T2.105.105.105.11.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.105.105.105.11.m1.1b"><cn id="S4.T2.105.105.105.11.m1.1.1.cmml" type="float" xref="S4.T2.105.105.105.11.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.105.105.105.11.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.105.105.105.11.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.106.106.106.12"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.106.106.106.12.m1.1"><semantics id="S4.T2.106.106.106.12.m1.1a"><mn id="S4.T2.106.106.106.12.m1.1.1" xref="S4.T2.106.106.106.12.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.106.106.106.12.m1.1b"><cn id="S4.T2.106.106.106.12.m1.1.1.cmml" type="float" xref="S4.T2.106.106.106.12.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.106.106.106.12.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.106.106.106.12.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.106.106.106.14" style="background-color:#ECF7FC;"><span class="ltx_text" id="S4.T2.106.106.106.14.1" style="background-color:#ECF7FC;">0.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.118.118.118">
<td class="ltx_td ltx_align_left" id="S4.T2.118.118.118.13">Qwen2-VL-7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.107.107.107.1"><math alttext="2.6" class="ltx_Math" display="inline" id="S4.T2.107.107.107.1.m1.1"><semantics id="S4.T2.107.107.107.1.m1.1a"><mn id="S4.T2.107.107.107.1.m1.1.1" xref="S4.T2.107.107.107.1.m1.1.1.cmml">2.6</mn><annotation-xml encoding="MathML-Content" id="S4.T2.107.107.107.1.m1.1b"><cn id="S4.T2.107.107.107.1.m1.1.1.cmml" type="float" xref="S4.T2.107.107.107.1.m1.1.1">2.6</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.107.107.107.1.m1.1c">2.6</annotation><annotation encoding="application/x-llamapun" id="S4.T2.107.107.107.1.m1.1d">2.6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.108.108.108.2"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.108.108.108.2.m1.1"><semantics id="S4.T2.108.108.108.2.m1.1a"><mn id="S4.T2.108.108.108.2.m1.1.1" xref="S4.T2.108.108.108.2.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.108.108.108.2.m1.1b"><cn id="S4.T2.108.108.108.2.m1.1.1.cmml" type="float" xref="S4.T2.108.108.108.2.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.108.108.108.2.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.108.108.108.2.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.109.109.109.3"><math alttext="1.5" class="ltx_Math" display="inline" id="S4.T2.109.109.109.3.m1.1"><semantics id="S4.T2.109.109.109.3.m1.1a"><mn id="S4.T2.109.109.109.3.m1.1.1" xref="S4.T2.109.109.109.3.m1.1.1.cmml">1.5</mn><annotation-xml encoding="MathML-Content" id="S4.T2.109.109.109.3.m1.1b"><cn id="S4.T2.109.109.109.3.m1.1.1.cmml" type="float" xref="S4.T2.109.109.109.3.m1.1.1">1.5</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.109.109.109.3.m1.1c">1.5</annotation><annotation encoding="application/x-llamapun" id="S4.T2.109.109.109.3.m1.1d">1.5</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.110.110.110.4"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.110.110.110.4.m1.1"><semantics id="S4.T2.110.110.110.4.m1.1a"><mn id="S4.T2.110.110.110.4.m1.1.1" xref="S4.T2.110.110.110.4.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.110.110.110.4.m1.1b"><cn id="S4.T2.110.110.110.4.m1.1.1.cmml" type="float" xref="S4.T2.110.110.110.4.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.110.110.110.4.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.110.110.110.4.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.111.111.111.5"><math alttext="0.5" class="ltx_Math" display="inline" id="S4.T2.111.111.111.5.m1.1"><semantics id="S4.T2.111.111.111.5.m1.1a"><mn id="S4.T2.111.111.111.5.m1.1.1" xref="S4.T2.111.111.111.5.m1.1.1.cmml">0.5</mn><annotation-xml encoding="MathML-Content" id="S4.T2.111.111.111.5.m1.1b"><cn id="S4.T2.111.111.111.5.m1.1.1.cmml" type="float" xref="S4.T2.111.111.111.5.m1.1.1">0.5</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.111.111.111.5.m1.1c">0.5</annotation><annotation encoding="application/x-llamapun" id="S4.T2.111.111.111.5.m1.1d">0.5</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.112.112.112.6"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.112.112.112.6.m1.1"><semantics id="S4.T2.112.112.112.6.m1.1a"><mn id="S4.T2.112.112.112.6.m1.1.1" xref="S4.T2.112.112.112.6.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.112.112.112.6.m1.1b"><cn id="S4.T2.112.112.112.6.m1.1.1.cmml" type="float" xref="S4.T2.112.112.112.6.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.112.112.112.6.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.112.112.112.6.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.113.113.113.7"><math alttext="6.3" class="ltx_Math" display="inline" id="S4.T2.113.113.113.7.m1.1"><semantics id="S4.T2.113.113.113.7.m1.1a"><mn id="S4.T2.113.113.113.7.m1.1.1" xref="S4.T2.113.113.113.7.m1.1.1.cmml">6.3</mn><annotation-xml encoding="MathML-Content" id="S4.T2.113.113.113.7.m1.1b"><cn id="S4.T2.113.113.113.7.m1.1.1.cmml" type="float" xref="S4.T2.113.113.113.7.m1.1.1">6.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.113.113.113.7.m1.1c">6.3</annotation><annotation encoding="application/x-llamapun" id="S4.T2.113.113.113.7.m1.1d">6.3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.114.114.114.8"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.114.114.114.8.m1.1"><semantics id="S4.T2.114.114.114.8.m1.1a"><mn id="S4.T2.114.114.114.8.m1.1.1" xref="S4.T2.114.114.114.8.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.114.114.114.8.m1.1b"><cn id="S4.T2.114.114.114.8.m1.1.1.cmml" type="float" xref="S4.T2.114.114.114.8.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.114.114.114.8.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.114.114.114.8.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.115.115.115.9"><math alttext="3.4" class="ltx_Math" display="inline" id="S4.T2.115.115.115.9.m1.1"><semantics id="S4.T2.115.115.115.9.m1.1a"><mn id="S4.T2.115.115.115.9.m1.1.1" xref="S4.T2.115.115.115.9.m1.1.1.cmml">3.4</mn><annotation-xml encoding="MathML-Content" id="S4.T2.115.115.115.9.m1.1b"><cn id="S4.T2.115.115.115.9.m1.1.1.cmml" type="float" xref="S4.T2.115.115.115.9.m1.1.1">3.4</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.115.115.115.9.m1.1c">3.4</annotation><annotation encoding="application/x-llamapun" id="S4.T2.115.115.115.9.m1.1d">3.4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.116.116.116.10"><math alttext="1.9" class="ltx_Math" display="inline" id="S4.T2.116.116.116.10.m1.1"><semantics id="S4.T2.116.116.116.10.m1.1a"><mn id="S4.T2.116.116.116.10.m1.1.1" xref="S4.T2.116.116.116.10.m1.1.1.cmml">1.9</mn><annotation-xml encoding="MathML-Content" id="S4.T2.116.116.116.10.m1.1b"><cn id="S4.T2.116.116.116.10.m1.1.1.cmml" type="float" xref="S4.T2.116.116.116.10.m1.1.1">1.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.116.116.116.10.m1.1c">1.9</annotation><annotation encoding="application/x-llamapun" id="S4.T2.116.116.116.10.m1.1d">1.9</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.117.117.117.11"><math alttext="0.9" class="ltx_Math" display="inline" id="S4.T2.117.117.117.11.m1.1"><semantics id="S4.T2.117.117.117.11.m1.1a"><mn id="S4.T2.117.117.117.11.m1.1.1" xref="S4.T2.117.117.117.11.m1.1.1.cmml">0.9</mn><annotation-xml encoding="MathML-Content" id="S4.T2.117.117.117.11.m1.1b"><cn id="S4.T2.117.117.117.11.m1.1.1.cmml" type="float" xref="S4.T2.117.117.117.11.m1.1.1">0.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.117.117.117.11.m1.1c">0.9</annotation><annotation encoding="application/x-llamapun" id="S4.T2.117.117.117.11.m1.1d">0.9</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.118.12"><math alttext="0.0" class="ltx_Math" display="inline" id="S4.T2.118.118.118.12.m1.1"><semantics id="S4.T2.118.118.118.12.m1.1a"><mn id="S4.T2.118.118.118.12.m1.1.1" xref="S4.T2.118.118.118.12.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="S4.T2.118.118.118.12.m1.1b"><cn id="S4.T2.118.118.118.12.m1.1.1.cmml" type="float" xref="S4.T2.118.118.118.12.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.118.118.118.12.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="S4.T2.118.118.118.12.m1.1d">0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.118.14" style="background-color:#ECF7FC;"><span class="ltx_text" id="S4.T2.118.118.118.14.1" style="background-color:#ECF7FC;">1.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.118.118.124.6">
<td class="ltx_td ltx_align_left" id="S4.T2.118.118.124.6.1">Qwen2.5-VL-3B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.124.6.2">14.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.124.6.3">2.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.124.6.4">20.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.124.6.5">1.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.124.6.6">4.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.124.6.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.118.118.124.6.7.1">4.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.124.6.8">34.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.124.6.9">7.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.124.6.10">22.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.124.6.11">3.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.124.6.12">6.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.124.6.13">2.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.124.6.14" style="background-color:#ECF7FC;"><span class="ltx_text" id="S4.T2.118.118.124.6.14.1" style="background-color:#ECF7FC;">11.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.118.118.125.7" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.118.118.125.7.1"><span class="ltx_text" id="S4.T2.118.118.125.7.1.1" style="background-color:#E6E6E6;">UI-R1-3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.118.118.125.7.2"><span class="ltx_text" id="S4.T2.118.118.125.7.2.1" style="background-color:#E6E6E6;">22.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.118.118.125.7.3"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.125.7.3.1" style="background-color:#E6E6E6;">4.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.118.118.125.7.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.118.118.125.7.4.1" style="background-color:#E6E6E6;">27.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.118.118.125.7.5"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.125.7.5.1" style="background-color:#E6E6E6;">3.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.118.118.125.7.6"><span class="ltx_text" id="S4.T2.118.118.125.7.6.1" style="background-color:#E6E6E6;">11.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.118.118.125.7.7"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.125.7.7.1" style="background-color:#E6E6E6;">6.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.118.118.125.7.8"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.125.7.8.1" style="background-color:#E6E6E6;">42.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.118.118.125.7.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.118.118.125.7.9.1" style="background-color:#E6E6E6;">11.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.118.118.125.7.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.118.118.125.7.10.1" style="background-color:#E6E6E6;">32.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.118.118.125.7.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.118.118.125.7.11.1" style="background-color:#E6E6E6;">11.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.118.118.125.7.12"><span class="ltx_text" id="S4.T2.118.118.125.7.12.1" style="background-color:#E6E6E6;">13.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.118.118.125.7.13"><span class="ltx_text ltx_font_bold" id="S4.T2.118.118.125.7.13.1" style="background-color:#E6E6E6;">4.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.118.118.125.7.14" style="background-color:#ECF7FC;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.118.118.125.7.14.1" style="background-color:#ECF7FC;">17.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of various models on the ScreenSpot-Pro benchmark, focusing on GUI grounding accuracy.  It includes models trained using supervised fine-tuning (SFT) and reinforcement learning (RL), indicating the performance of each model across different categories (Development, Creative, CAD, Scientific, Office, OS, and average).  The table highlights the superior performance of the UI-R1-3B model, a data-efficient model trained using rule-based reinforcement learning, which surpasses larger models trained with supervised methods. The model Qwen2.5-VL-3B* uses supervised fine-tuning on a subset of the ScreenSpot-mobile data (500 samples). The results are detailed per task category and then averaged.  The best and second-best performing models within each category are highlighted.
> <details>
> <summary>read the caption</summary>
> Table 2: Accuracy on ScreenSpot-Pro. The optimal and the suboptimal results are bolded and underlined, respectively. * Qwen2.5-VL-3B here is supervised fine-tuned on 500 ScreenSpot-mobile data. ** Claude refers to Claude-computer-use.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.1.1.1.2" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.2.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.2.1.1.1">Method</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.1.1.1.3" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.3.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.3.1.1.1">Model size</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.1.1.1.4" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.4.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.4.1.1.1">Data size</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.1.1.1.5" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.5.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.5.1.1.1">Type</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.1.1.1.6" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.6.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.6.1.1.1">Grounding</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.1.1.1.7" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.7.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.7.1.1.1">Average</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T3.1.1.2.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.2.1.1">Supervised Fine-tuning</span></th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.2.2.2" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.3.3.1" style="padding-top:1pt;padding-bottom:1pt;">SeeClick</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.3.3.2" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.3.2.1">
<span class="ltx_p" id="S4.T3.1.1.3.3.2.1.1">SFT</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.3.3.3" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.3.3.1">
<span class="ltx_p" id="S4.T3.1.1.3.3.3.1.1">9.6B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.3.3.4" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.3.4.1">
<span class="ltx_p" id="S4.T3.1.1.3.3.4.1.1">76K</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.3.3.5" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.3.5.1">
<span class="ltx_p" id="S4.T3.1.1.3.3.5.1.1">93.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.3.3.6" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.3.6.1">
<span class="ltx_p" id="S4.T3.1.1.3.3.6.1.1">73.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.3.3.7" style="width:56.9pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.3.7.1">
<span class="ltx_p" id="S4.T3.1.1.3.3.7.1.1"><span class="ltx_text" id="S4.T3.1.1.3.3.7.1.1.1" style="background-color:#ECF7FC;">83.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.4.4.1" style="padding-top:1pt;padding-bottom:1pt;">InternVL-2</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.4.4.2" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.4.4.2.1">
<span class="ltx_p" id="S4.T3.1.1.4.4.2.1.1">SFT</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.4.4.3" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.4.4.3.1">
<span class="ltx_p" id="S4.T3.1.1.4.4.3.1.1">4B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.4.4.4" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.4.4.4.1">
<span class="ltx_p" id="S4.T3.1.1.4.4.4.1.1">76K</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.4.4.5" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.4.4.5.1">
<span class="ltx_p" id="S4.T3.1.1.4.4.5.1.1">90.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.4.4.6" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.4.4.6.1">
<span class="ltx_p" id="S4.T3.1.1.4.4.6.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.4.4.6.1.1.1">84.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.4.4.7" style="width:56.9pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.4.4.7.1">
<span class="ltx_p" id="S4.T3.1.1.4.4.7.1.1"><span class="ltx_text" id="S4.T3.1.1.4.4.7.1.1.1" style="background-color:#ECF7FC;">87.5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.5.5.1" style="padding-top:1pt;padding-bottom:1pt;">GUIPivot-Qwen</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.5.5.2" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.5.5.2.1">
<span class="ltx_p" id="S4.T3.1.1.5.5.2.1.1">SFT</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.5.5.3" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.5.5.3.1">
<span class="ltx_p" id="S4.T3.1.1.5.5.3.1.1">7B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.5.5.4" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.5.5.4.1">
<span class="ltx_p" id="S4.T3.1.1.5.5.4.1.1">76K</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.5.5.5" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.5.5.5.1">
<span class="ltx_p" id="S4.T3.1.1.5.5.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.5.5.1.1.1">96.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.5.5.6" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.5.5.6.1">
<span class="ltx_p" id="S4.T3.1.1.5.5.6.1.1">75.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.5.5.7" style="width:56.9pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.5.5.7.1">
<span class="ltx_p" id="S4.T3.1.1.5.5.7.1.1"><span class="ltx_text" id="S4.T3.1.1.5.5.7.1.1.1" style="background-color:#ECF7FC;">86.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.6.6.1" style="padding-top:1pt;padding-bottom:1pt;">OS-Atlas</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.6.6.2" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.6.6.2.1">
<span class="ltx_p" id="S4.T3.1.1.6.6.2.1.1">SFT</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.6.6.3" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.6.6.3.1">
<span class="ltx_p" id="S4.T3.1.1.6.6.3.1.1">4B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.6.6.4" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.6.6.4.1">
<span class="ltx_p" id="S4.T3.1.1.6.6.4.1.1">76K</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.6.6.5" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.6.6.5.1">
<span class="ltx_p" id="S4.T3.1.1.6.6.5.1.1">91.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.6.6.6" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.6.6.6.1">
<span class="ltx_p" id="S4.T3.1.1.6.6.6.1.1">83.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.6.6.7" style="width:56.9pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.6.6.7.1">
<span class="ltx_p" id="S4.T3.1.1.6.6.7.1.1"><span class="ltx_text" id="S4.T3.1.1.6.6.7.1.1.1" style="background-color:#ECF7FC;">87.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.7.7.1" style="padding-top:1pt;padding-bottom:1pt;">OS-Atlas</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.7.7.2" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.7.7.2.1">
<span class="ltx_p" id="S4.T3.1.1.7.7.2.1.1">SFT</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.7.7.3" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.7.7.3.1">
<span class="ltx_p" id="S4.T3.1.1.7.7.3.1.1">7B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.7.7.4" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.7.7.4.1">
<span class="ltx_p" id="S4.T3.1.1.7.7.4.1.1">76K</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.7.7.5" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.7.7.5.1">
<span class="ltx_p" id="S4.T3.1.1.7.7.5.1.1">93.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.7.7.6" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.7.7.6.1">
<span class="ltx_p" id="S4.T3.1.1.7.7.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.7.7.6.1.1.1">88.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.7.7.7" style="width:56.9pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.7.7.7.1">
<span class="ltx_p" id="S4.T3.1.1.7.7.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.7.7.7.1.1.1" style="background-color:#ECF7FC;">90.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T3.1.1.8.8.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.8.8.1.1">Zero Shot / Reinforcement Fine-tuning</span></th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.8.8.2" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.9.9.1" style="padding-top:1pt;padding-bottom:1pt;">GPT-4o</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.9.9.2" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.9.9.2.1">
<span class="ltx_p" id="S4.T3.1.1.9.9.2.1.1">ZS</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.9.9.3" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.9.9.3.1">
<span class="ltx_p" id="S4.T3.1.1.9.9.3.1.1">–</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.9.9.4" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.9.9.4.1">
<span class="ltx_p" id="S4.T3.1.1.9.9.4.1.1">0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.9.9.5" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.9.9.5.1">
<span class="ltx_p" id="S4.T3.1.1.9.9.5.1.1">74.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.9.9.6" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.9.9.6.1">
<span class="ltx_p" id="S4.T3.1.1.9.9.6.1.1">38.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.9.9.7" style="width:56.9pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.9.9.7.1">
<span class="ltx_p" id="S4.T3.1.1.9.9.7.1.1"><span class="ltx_text" id="S4.T3.1.1.9.9.7.1.1.1" style="background-color:#ECF7FC;">56.5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.10.10.1" style="padding-top:1pt;padding-bottom:1pt;">OS-Atlas</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.10.10.2" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.10.10.2.1">
<span class="ltx_p" id="S4.T3.1.1.10.10.2.1.1">ZS</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.10.10.3" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.10.10.3.1">
<span class="ltx_p" id="S4.T3.1.1.10.10.3.1.1">4B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.10.10.4" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.10.10.4.1">
<span class="ltx_p" id="S4.T3.1.1.10.10.4.1.1">0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.10.10.5" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.10.10.5.1">
<span class="ltx_p" id="S4.T3.1.1.10.10.5.1.1">64.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.10.10.6" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.10.10.6.1">
<span class="ltx_p" id="S4.T3.1.1.10.10.6.1.1">71.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.10.10.7" style="width:56.9pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.10.10.7.1">
<span class="ltx_p" id="S4.T3.1.1.10.10.7.1.1"><span class="ltx_text" id="S4.T3.1.1.10.10.7.1.1.1" style="background-color:#ECF7FC;">67.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.11.11.1" style="padding-top:1pt;padding-bottom:1pt;">OS-Atlas</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.11.11.2" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.11.11.2.1">
<span class="ltx_p" id="S4.T3.1.1.11.11.2.1.1">ZS</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.11.11.3" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.11.11.3.1">
<span class="ltx_p" id="S4.T3.1.1.11.11.3.1.1">7B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.11.11.4" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.11.11.4.1">
<span class="ltx_p" id="S4.T3.1.1.11.11.4.1.1">0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.11.11.5" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.11.11.5.1">
<span class="ltx_p" id="S4.T3.1.1.11.11.5.1.1">73.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.11.11.6" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.11.11.6.1">
<span class="ltx_p" id="S4.T3.1.1.11.11.6.1.1">73.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.11.11.7" style="width:56.9pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.11.11.7.1">
<span class="ltx_p" id="S4.T3.1.1.11.11.7.1.1"><span class="ltx_text" id="S4.T3.1.1.11.11.7.1.1.1" style="background-color:#ECF7FC;">73.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.12.12.1" style="padding-top:1pt;padding-bottom:1pt;">Qwen2.5-VL</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.12.12.2" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.12.12.2.1">
<span class="ltx_p" id="S4.T3.1.1.12.12.2.1.1">ZS</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.12.12.3" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.12.12.3.1">
<span class="ltx_p" id="S4.T3.1.1.12.12.3.1.1">3B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.12.12.4" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.12.12.4.1">
<span class="ltx_p" id="S4.T3.1.1.12.12.4.1.1">0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.12.12.5" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.12.12.5.1">
<span class="ltx_p" id="S4.T3.1.1.12.12.5.1.1">79.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.12.12.6" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.12.12.6.1">
<span class="ltx_p" id="S4.T3.1.1.12.12.6.1.1">72.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.12.12.7" style="width:56.9pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.12.12.7.1">
<span class="ltx_p" id="S4.T3.1.1.12.12.7.1.1"><span class="ltx_text" id="S4.T3.1.1.12.12.7.1.1.1" style="background-color:#ECF7FC;">75.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.1.1.13.13.1" style="padding-top:1pt;padding-bottom:1pt;">UI-R1</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T3.1.1.13.13.2" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.13.13.2.1">
<span class="ltx_p" id="S4.T3.1.1.13.13.2.1.1">RFT</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T3.1.1.13.13.3" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.13.13.3.1">
<span class="ltx_p" id="S4.T3.1.1.13.13.3.1.1">3B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T3.1.1.13.13.4" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.13.13.4.1">
<span class="ltx_p" id="S4.T3.1.1.13.13.4.1.1">136</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T3.1.1.13.13.5" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.13.13.5.1">
<span class="ltx_p" id="S4.T3.1.1.13.13.5.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.13.13.5.1.1.1">94.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T3.1.1.13.13.6" style="width:56.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.13.13.6.1">
<span class="ltx_p" id="S4.T3.1.1.13.13.6.1.1">82.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T3.1.1.13.13.7" style="width:56.9pt;background-color:#ECF7FC;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.13.13.7.1">
<span class="ltx_p" id="S4.T3.1.1.13.13.7.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.13.13.7.1.1.1" style="background-color:#ECF7FC;">88.5</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of the UI-R1 model's performance on low-level GUI action prediction tasks within the AndroidControl benchmark.  It compares UI-R1's performance against several other models, both with supervised fine-tuning (SFT) and zero-shot (ZS) approaches.  The metrics reported include the accuracy of predicting the action type (e.g., click, scroll) and the accuracy of the grounding (specifically, the location of the click action). The 'Average' column provides a combined score representing the overall performance across both metrics.  This allows for a comprehensive comparison of the effectiveness of different model training methods on these specific tasks, highlighting UI-R1's ability in low-level action prediction.
> <details>
> <summary>read the caption</summary>
> Table 3: Low-level agent capabilities on AndroidControl. The Average column computes the mean of Type and Grounding scores.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A1.T4.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.1.1">Hyperparameter</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.2.1">Value</span></th>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.2.2.1" style="padding-top:1pt;padding-bottom:1pt;">lr</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">from 9.98e-7 to 0</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.1.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.3.1.1" style="padding-top:1pt;padding-bottom:1pt;">max_pixels</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.1.2" style="padding-top:1pt;padding-bottom:1pt;">12845056</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.4.2.1" style="padding-top:1pt;padding-bottom:1pt;">num_generations</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.2.2" style="padding-top:1pt;padding-bottom:1pt;">8</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.5.3.1" style="padding-top:1pt;padding-bottom:1pt;">num_train_epochs</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.3.2" style="padding-top:1pt;padding-bottom:1pt;">8</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.6.4.1" style="padding-top:1pt;padding-bottom:1pt;">max_prompt_length</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.6.4.2" style="padding-top:1pt;padding-bottom:1pt;">1024</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.7.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.7.5.1" style="padding-top:1pt;padding-bottom:1pt;">per_device_train_batch_size</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.7.5.2" style="padding-top:1pt;padding-bottom:1pt;">1</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.8.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T4.1.1.8.6.1" style="padding-top:1pt;padding-bottom:1pt;">gradient_accumulation_steps</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.1.8.6.2" style="padding-top:1pt;padding-bottom:1pt;">2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used in training the UI-R1 model and their corresponding values.  The hyperparameters control various aspects of the reinforcement learning process, such as the learning rate (lr), the maximum number of pixels considered in images (max_pixels), the number of response generations (num_generations), the number of training epochs (num_train_epochs), the maximum prompt length, and parameters controlling batch size and gradient accumulation.
> <details>
> <summary>read the caption</summary>
> Table 4: Hyperparameter settings used in the experiments.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T5.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.1.1">Trainng dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="A1.T5.1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">Type</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"># Click</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"># Scroll</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"># Input text</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"># Back</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"># Open app</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.1.1.8" style="padding-top:1pt;padding-bottom:1pt;"># Total</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.1.2.2.1" style="padding-top:1pt;padding-bottom:1pt;">UI-R1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.1.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">Mobile</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">101</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.2.4" style="padding-top:1pt;padding-bottom:1pt;">6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.2.5" style="padding-top:1pt;padding-bottom:1pt;">4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.2.6" style="padding-top:1pt;padding-bottom:1pt;">7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.2.7" style="padding-top:1pt;padding-bottom:1pt;">18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.2.8" style="padding-top:1pt;padding-bottom:1pt;">136</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.1.3.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.3.3.1.1">Evaluation dataset</span></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.1.3.3.2" style="padding-top:1pt;padding-bottom:1pt;"></th>
<td class="ltx_td ltx_border_t" id="A1.T5.1.1.3.3.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="A1.T5.1.1.3.3.4" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="A1.T5.1.1.3.3.5" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="A1.T5.1.1.3.3.6" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="A1.T5.1.1.3.3.7" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="A1.T5.1.1.3.3.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.1.4.4.1" style="padding-top:1pt;padding-bottom:1pt;">AndroidControl</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.1.4.4.2" style="padding-top:1pt;padding-bottom:1pt;">ID</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.4.4.3" style="padding-top:1pt;padding-bottom:1pt;">5074</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.4.4.4" style="padding-top:1pt;padding-bottom:1pt;">1211</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.4.4.5" style="padding-top:1pt;padding-bottom:1pt;">632</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.4.4.6" style="padding-top:1pt;padding-bottom:1pt;">343</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.4.4.7" style="padding-top:1pt;padding-bottom:1pt;">608</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.4.4.8" style="padding-top:1pt;padding-bottom:1pt;">7868</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.5.5.1" style="padding-top:1pt;padding-bottom:1pt;">ScreenSpot*</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T5.1.1.5.5.2" style="padding-top:1pt;padding-bottom:1pt;">OOD</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.5.3" style="padding-top:1pt;padding-bottom:1pt;">770</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.5.4" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.5.5" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.5.6" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.5.7" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.5.8" style="padding-top:1pt;padding-bottom:1pt;">770</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T5.1.1.6.6.1" style="padding-top:1pt;padding-bottom:1pt;">ScreenSpot-pro</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A1.T5.1.1.6.6.2" style="padding-top:1pt;padding-bottom:1pt;">OOD</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.6.6.3" style="padding-top:1pt;padding-bottom:1pt;">1581</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.6.6.4" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.6.6.5" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.6.6.6" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.6.6.7" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.6.6.8" style="padding-top:1pt;padding-bottom:1pt;">1581</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a breakdown of the dataset used in the UI-R1 model training and evaluation.  It details the number of samples for each action type (Click, Scroll, Input Text, Back, Open App) within the training dataset (UI-R1 Mobile) and the evaluation datasets (AndroidControl ID, ScreenSpot OOD, and ScreenSpot-Pro OOD).  Importantly, the asterisk (*) indicates that for the ScreenSpot evaluation, only the Desktop and Web subsets were used, not the complete dataset.
> <details>
> <summary>read the caption</summary>
> Table 5: Statistics of training and evaluation datasets. * means that we only select subsets Desktop and Web for evaluation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T6.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A2.T6.1.1.1.1.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.1.1.2" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A2.T6.1.1.1.1.2.1">GUI specific</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.1.1.3" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A2.T6.1.1.1.1.3.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A2.T6.1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">Mobile</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A2.T6.1.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">Web</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A2.T6.1.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">Desktop</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.1.1.7" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A2.T6.1.1.1.1.7.1">Avg</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.2.1" style="padding-top:1pt;padding-bottom:1pt;">Icon</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">Text</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">Icon</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.2.4" style="padding-top:1pt;padding-bottom:1pt;">Text</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.2.5" style="padding-top:1pt;padding-bottom:1pt;">Icon</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.2.6" style="padding-top:1pt;padding-bottom:1pt;">Text</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T6.1.1.3.3.1" style="padding-top:1pt;padding-bottom:1pt;">SeeClick</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.3.3.2" style="padding-top:1pt;padding-bottom:1pt;">Yes</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.3.3.3" style="padding-top:1pt;padding-bottom:1pt;">9.6B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.3.3.4" style="padding-top:1pt;padding-bottom:1pt;">50.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.3.3.5" style="padding-top:1pt;padding-bottom:1pt;">78.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.3.3.6" style="padding-top:1pt;padding-bottom:1pt;">32.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.3.3.7" style="padding-top:1pt;padding-bottom:1pt;">55.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.3.3.8" style="padding-top:1pt;padding-bottom:1pt;">29.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.3.3.9" style="padding-top:1pt;padding-bottom:1pt;">70.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.3.3.10" style="padding-top:1pt;padding-bottom:1pt;">55.5</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.1.1.4.4.1" style="padding-top:1pt;padding-bottom:1pt;">OS-Atlas</th>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.4.4.2" style="padding-top:1pt;padding-bottom:1pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.4.4.3" style="padding-top:1pt;padding-bottom:1pt;">4B</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.4.4.4" style="padding-top:1pt;padding-bottom:1pt;">59.7</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.4.4.5" style="padding-top:1pt;padding-bottom:1pt;">87.2</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.4.4.6" style="padding-top:1pt;padding-bottom:1pt;">63.1</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.4.4.7" style="padding-top:1pt;padding-bottom:1pt;">85.9</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.4.4.8" style="padding-top:1pt;padding-bottom:1pt;">46.4</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.4.4.9" style="padding-top:1pt;padding-bottom:1pt;">72.7</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.4.4.10" style="padding-top:1pt;padding-bottom:1pt;">71.9</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.1.1.5.5.1" style="padding-top:1pt;padding-bottom:1pt;">OS-Atlas</th>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.5.2" style="padding-top:1pt;padding-bottom:1pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.5.3" style="padding-top:1pt;padding-bottom:1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.5.4" style="padding-top:1pt;padding-bottom:1pt;">75.8</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.5.5" style="padding-top:1pt;padding-bottom:1pt;">95.2</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.5.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.1.1.5.5.6.1">77.3</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.5.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.5.5.7.1">90.6</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.5.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.1.1.5.5.8.1">63.6</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.5.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.1.1.5.5.9.1">90.7</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.5.10" style="padding-top:1pt;padding-bottom:1pt;">84.1</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.1.1.6.6.1" style="padding-top:1pt;padding-bottom:1pt;">UI-TARS</th>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.6.2" style="padding-top:1pt;padding-bottom:1pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.6.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.6.6.3.1">2B</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.6.4" style="padding-top:1pt;padding-bottom:1pt;">79.1</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.6.5" style="padding-top:1pt;padding-bottom:1pt;">95.2</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.6.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.6.6.6.1">78.3</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.6.7" style="padding-top:1pt;padding-bottom:1pt;">87.2</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.6.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.6.6.8.1">68.6</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.6.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.1.1.6.6.9.1">90.7</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.6.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.1.1.6.6.10.1">84.7</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="8" id="A2.T6.1.1.7.7.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.7.7.1.1">Qwen2.5-VL Framework</span></th>
<td class="ltx_td ltx_border_t" id="A2.T6.1.1.7.7.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="A2.T6.1.1.7.7.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T6.1.1.8.8.1" style="padding-top:1pt;padding-bottom:1pt;">Qwen2.5-VL</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.8.8.2" style="padding-top:1pt;padding-bottom:1pt;">No</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.8.8.3" style="padding-top:1pt;padding-bottom:1pt;">3B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.8.8.4" style="padding-top:1pt;padding-bottom:1pt;">66.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.8.8.5" style="padding-top:1pt;padding-bottom:1pt;">92.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.8.8.6" style="padding-top:1pt;padding-bottom:1pt;">46.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.8.8.7" style="padding-top:1pt;padding-bottom:1pt;">72.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.8.8.8" style="padding-top:1pt;padding-bottom:1pt;">44.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.8.8.9" style="padding-top:1pt;padding-bottom:1pt;">83.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.8.8.10" style="padding-top:1pt;padding-bottom:1pt;">70.4</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.1.1.9.9.1" style="padding-top:1pt;padding-bottom:1pt;">Qwen2.5-VL</th>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.9.9.2" style="padding-top:1pt;padding-bottom:1pt;">No</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.9.9.3" style="padding-top:1pt;padding-bottom:1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.9.9.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.1.1.9.9.4.1">80.6</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.9.9.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.1.1.9.9.5.1">95.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.9.9.6" style="padding-top:1pt;padding-bottom:1pt;">70.0</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.9.9.7" style="padding-top:1pt;padding-bottom:1pt;">87.2</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.9.9.8" style="padding-top:1pt;padding-bottom:1pt;">59.3</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.9.9.9" style="padding-top:1pt;padding-bottom:1pt;">89.2</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.9.9.10" style="padding-top:1pt;padding-bottom:1pt;">82.6</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T6.1.1.10.10.1" style="padding-top:1pt;padding-bottom:1pt;">UI-R1(Ours)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.10.10.2" style="padding-top:1pt;padding-bottom:1pt;">Yes</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.10.10.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.1.1.10.10.3.1">3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.10.10.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.10.10.4.1">84.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.10.10.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.10.10.5.1">96.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.10.10.6" style="padding-top:1pt;padding-bottom:1pt;">75.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.10.10.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.1.1.10.10.7.1">89.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.10.10.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.1.1.10.10.8.1">63.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.10.10.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.10.10.9.1">92.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.10.10.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.10.10.10.1">85.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents the grounding accuracy results on the ScreenSpot-V2 benchmark.  It compares the performance of different models, including SeeClick, OS-Atlas (both 4B and 7B versions), UI-TARS, and the proposed UI-R1 model. The table shows the accuracy for each model on various subsets of the ScreenSpot-V2 dataset (Mobile, Web, and Desktop) and considers two separate metrics: Icon and Text grounding accuracy.  The best and second-best performance for each subset are highlighted with bolding and underlining. The 'GUI Specific' column indicates whether the model was specifically designed for GUI tasks. The results provide insights into the effectiveness of different model architectures and training paradigms for GUI grounding.
> <details>
> <summary>read the caption</summary>
> Table 6: Grounding accuracy on ScreenSpot-V2. The optimal and the suboptimal results are bolded and underlined, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T7.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" colspan="2" id="A3.T7.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">max_pixels</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1.2" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A3.T7.1.1.1.2.1">Mobile</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1.3" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A3.T7.1.1.1.3.1">Web</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1.4" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A3.T7.1.1.1.4.1">Desktop</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1.5" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A3.T7.1.1.1.5.1">Avg</span></th>
</tr>
<tr class="ltx_tr" id="A3.T7.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row" id="A3.T7.1.2.2.1" style="padding-top:1pt;padding-bottom:1pt;">Train</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r" id="A3.T7.1.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">Test</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T7.1.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A3.T7.1.3.1.1" style="padding-top:1pt;padding-bottom:1pt;">3211264</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T7.1.3.1.2" style="padding-top:1pt;padding-bottom:1pt;">3211264</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.1.3.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.3.1.3.1">91.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.1.3.1.4" style="padding-top:1pt;padding-bottom:1pt;">76.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.1.3.1.5" style="padding-top:1pt;padding-bottom:1pt;">76.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.1.3.1.6" style="padding-top:1pt;padding-bottom:1pt;">82.2</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T7.1.4.2.1" style="padding-top:1pt;padding-bottom:1pt;">3211264</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A3.T7.1.4.2.2" style="padding-top:1pt;padding-bottom:1pt;">12845056</th>
<td class="ltx_td ltx_align_center" id="A3.T7.1.4.2.3" style="padding-top:1pt;padding-bottom:1pt;">90.8</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.4.2.4" style="padding-top:1pt;padding-bottom:1pt;">76.8</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.4.2.5" style="padding-top:1pt;padding-bottom:1pt;">76.6</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.4.2.6" style="padding-top:1pt;padding-bottom:1pt;">82.3</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T7.1.5.3.1" style="padding-top:1pt;padding-bottom:1pt;">12845056</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A3.T7.1.5.3.2" style="padding-top:1pt;padding-bottom:1pt;">3211264</th>
<td class="ltx_td ltx_align_center" id="A3.T7.1.5.3.3" style="padding-top:1pt;padding-bottom:1pt;">89.6</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.5.3.4" style="padding-top:1pt;padding-bottom:1pt;">78.0</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.5.3.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.5.3.5.1">77.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.5.3.6" style="padding-top:1pt;padding-bottom:1pt;">82.5</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.6.4" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A3.T7.1.6.4.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A3.T7.1.6.4.1.1" style="background-color:#E6E6E6;">12845056</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A3.T7.1.6.4.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A3.T7.1.6.4.2.1" style="background-color:#E6E6E6;">12845056</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.1.6.4.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A3.T7.1.6.4.3.1" style="background-color:#E6E6E6;">90.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.1.6.4.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.6.4.4.1" style="background-color:#E6E6E6;">79.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.1.6.4.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A3.T7.1.6.4.5.1" style="background-color:#E6E6E6;">77.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.1.6.4.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.6.4.6.1" style="background-color:#E6E6E6;">83.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the impact of the `max_pixels` hyperparameter on the model's performance.  The study examines different settings for `max_pixels` during both training and inference phases, using four different combinations. The table shows the effect of these settings on the model's accuracy across three different GUI types (Mobile, Web, Desktop) and provides an average accuracy across all types. This helps determine the optimal configuration for balancing model performance and resource consumption (memory).
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation of max pixels in the training and inference.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.21620/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21620/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21620/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21620/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21620/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21620/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21620/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21620/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21620/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21620/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21620/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21620/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21620/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21620/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21620/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21620/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}