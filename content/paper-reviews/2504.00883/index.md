---
title: "Improved Visual-Spatial Reasoning via R1-Zero-Like Training"
summary: "vsGRPO training boosts visual-spatial reasoning in MLLMs, outperforming fine-tuning and surpassing GPT-40 on challenging tasks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Shanghai Jiao Tong University",]
showSummary: true
date: 2025-04-01
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.00883 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhenyi Liao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.00883" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.00883" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.00883/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multi-modal large language models(MLLMs) are enhanced with video-based visual-spatial intelligence (VSI), which is key for AI agents acting in the real world. Current models often fall short in VSI. This work first identifies that small- to medium-sized Qwen2-VL models can't activate VSI with Chain of Thought (CoT) prompts. The key issue is that these models don't effectively trade inference FLOPs to improve visual-spatial reasoning. 



To address this, the paper conducts a study on improving visual-spatial reasoning of MLLMs using R1-Zero-like training. They introduce vsGRPO training using the VSI-100k dataset, following DeepSeek-R1-Zero. The vsGRPO-2B model outperforms the base model and surpasses GPT-40. vsGRPO-7B achieves similar performance to LLaVA-NeXT-Video-72B, with strong performance superiority over supervised fine-tuning.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Small- to medium-sized Qwen2-VL models struggle with visual-spatial reasoning even with Chain of Thought prompting. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} vsGRPO training significantly improves visual-spatial reasoning in Qwen2-VL models, even outperforming larger models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Maintaining the KL penalty during GRPO training is essential for stable and effective learning. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **addresses the critical gap in visual-spatial reasoning capabilities of MLLMs**, a key area for AI agents operating in the physical world. The introduction of vsGRPO training and the VSI-100k dataset **provides a valuable new resource** for the community, potentially **spurring further research** into more effective training methods.

------
#### Visual Insights



![](https://arxiv.org/html/2504.00883/)

> 🔼 This figure displays a comparison of the model's responses to a visual question using two different prompting methods: 'vanilla-mode' and 'think-mode'.  The 'vanilla-mode' prompt is a simple request for an answer, while the 'think-mode' prompt encourages the model to explicitly detail its reasoning process step-by-step before providing an answer.  The figure shows that, even with a step-by-step reasoning process, the 'think-mode' prediction is incorrect. This highlights the difficulty of the model to accurately interpret and answer complex visual questions, even when prompted to provide a detailed reasoning process. The image demonstrates the model's struggle with visual-spatial reasoning capabilities, specifically its inability to correctly identify all objects within the scene.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison between the  vanilla-mode and  think-mode predictions.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S2.T1.1.1.1.1" style="padding:0.5pt 3.7pt;">Backbone</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.2" style="padding:0.5pt 3.7pt;">Methods</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.3" style="padding:0.5pt 3.7pt;">Avg</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.4" style="padding:0.5pt 3.7pt;">
<span class="ltx_inline-block" id="S2.T1.1.1.1.4.1">
<span class="ltx_p" id="S2.T1.1.1.1.4.1.1">Obj.</span>
<span class="ltx_p" id="S2.T1.1.1.1.4.1.2">Count</span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.5" style="padding:0.5pt 3.7pt;">
<span class="ltx_inline-block" id="S2.T1.1.1.1.5.1">
<span class="ltx_p" id="S2.T1.1.1.1.5.1.1">Abs.</span>
<span class="ltx_p" id="S2.T1.1.1.1.5.1.2">Dist.</span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.6" style="padding:0.5pt 3.7pt;">
<span class="ltx_inline-block" id="S2.T1.1.1.1.6.1">
<span class="ltx_p" id="S2.T1.1.1.1.6.1.1">Obj.</span>
<span class="ltx_p" id="S2.T1.1.1.1.6.1.2">Size</span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.7" style="padding:0.5pt 3.7pt;">
<span class="ltx_inline-block" id="S2.T1.1.1.1.7.1">
<span class="ltx_p" id="S2.T1.1.1.1.7.1.1">Room</span>
<span class="ltx_p" id="S2.T1.1.1.1.7.1.2">Size</span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.8" style="padding:0.5pt 3.7pt;">
<span class="ltx_inline-block" id="S2.T1.1.1.1.8.1">
<span class="ltx_p" id="S2.T1.1.1.1.8.1.1">Rel.</span>
<span class="ltx_p" id="S2.T1.1.1.1.8.1.2">Dist.</span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.9" style="padding:0.5pt 3.7pt;">
<span class="ltx_inline-block" id="S2.T1.1.1.1.9.1">
<span class="ltx_p" id="S2.T1.1.1.1.9.1.1">Rel.</span>
<span class="ltx_p" id="S2.T1.1.1.1.9.1.2">Dir.</span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.10" style="padding:0.5pt 3.7pt;">
<span class="ltx_inline-block" id="S2.T1.1.1.1.10.1">
<span class="ltx_p" id="S2.T1.1.1.1.10.1.1">Route</span>
<span class="ltx_p" id="S2.T1.1.1.1.10.1.2">Plan</span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.11" style="padding:0.5pt 3.7pt;">
<span class="ltx_inline-block" id="S2.T1.1.1.1.11.1">
<span class="ltx_p" id="S2.T1.1.1.1.11.1.1">Appr.</span>
<span class="ltx_p" id="S2.T1.1.1.1.11.1.2">Order</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.1.2.1.1" rowspan="3" style="padding:0.5pt 3.7pt;"><span class="ltx_text" id="S2.T1.1.2.1.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S2.T1.1.2.1.1.1.1" style="width:42.7pt;">
<span class="ltx_p" id="S2.T1.1.2.1.1.1.1.1">Qwen2-</span>
<span class="ltx_p" id="S2.T1.1.2.1.1.1.1.2">VL-2B</span>
</span></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.1.2" style="padding:0.5pt 3.7pt;"><span class="ltx_text" id="S2.T1.1.2.1.2.1" style="color:#FF0000;">Think-mode</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.1.3" style="padding:0.5pt 3.7pt;">22.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.1.4" style="padding:0.5pt 3.7pt;">18.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.1.5" style="padding:0.5pt 3.7pt;">4.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.1.6" style="padding:0.5pt 3.7pt;">31.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.1.7" style="padding:0.5pt 3.7pt;">17.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.1.8" style="padding:0.5pt 3.7pt;">28.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.1.9" style="padding:0.5pt 3.7pt;">22.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.1.10" style="padding:0.5pt 3.7pt;">26.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.1.11" style="padding:0.5pt 3.7pt;">16.8</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3.2">
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.1" style="padding:0.5pt 3.7pt;"><span class="ltx_text" id="S2.T1.1.3.2.1.1" style="color:#00FF00;">Observe-mode</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.2" style="padding:0.5pt 3.7pt;">21.8</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.3" style="padding:0.5pt 3.7pt;">16.8</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.4" style="padding:0.5pt 3.7pt;">1.7</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.5" style="padding:0.5pt 3.7pt;">32.7</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.6" style="padding:0.5pt 3.7pt;">22.7</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.7" style="padding:0.5pt 3.7pt;">28.8</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.8" style="padding:0.5pt 3.7pt;">27.6</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.9" style="padding:0.5pt 3.7pt;">26.2</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.10" style="padding:0.5pt 3.7pt;">18.1</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4.3">
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.1" style="padding:0.5pt 3.7pt;"><span class="ltx_text" id="S2.T1.1.4.3.1.1" style="color:#0000FF;">Vanilla-mode</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.2" style="padding:0.5pt 3.7pt;">23.3</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.3" style="padding:0.5pt 3.7pt;">21.4</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.4" style="padding:0.5pt 3.7pt;">3.4</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.5" style="padding:0.5pt 3.7pt;">32.3</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.6" style="padding:0.5pt 3.7pt;">31.1</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.7" style="padding:0.5pt 3.7pt;">26.7</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.8" style="padding:0.5pt 3.7pt;">27.7</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.9" style="padding:0.5pt 3.7pt;">24.7</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.10" style="padding:0.5pt 3.7pt;">18.9</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S2.T1.1.5.4.1" rowspan="3" style="padding:0.5pt 3.7pt;"><span class="ltx_text" id="S2.T1.1.5.4.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S2.T1.1.5.4.1.1.1" style="width:42.7pt;">
<span class="ltx_p" id="S2.T1.1.5.4.1.1.1.1">Qwen2-</span>
<span class="ltx_p" id="S2.T1.1.5.4.1.1.1.2">VL-7B</span>
</span></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.5.4.2" style="padding:0.5pt 3.7pt;"><span class="ltx_text" id="S2.T1.1.5.4.2.1" style="color:#FF0000;">Think-mode</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.5.4.3" style="padding:0.5pt 3.7pt;">31.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.5.4.4" style="padding:0.5pt 3.7pt;">44.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.5.4.5" style="padding:0.5pt 3.7pt;">26.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.5.4.6" style="padding:0.5pt 3.7pt;">25.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.5.4.7" style="padding:0.5pt 3.7pt;">23.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.5.4.8" style="padding:0.5pt 3.7pt;">34.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.5.4.9" style="padding:0.5pt 3.7pt;">30.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.5.4.10" style="padding:0.5pt 3.7pt;">32.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.5.4.11" style="padding:0.5pt 3.7pt;">31.5</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.6.5">
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.1" style="padding:0.5pt 3.7pt;"><span class="ltx_text" id="S2.T1.1.6.5.1.1" style="color:#00FF00;">Observe-mode</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.2" style="padding:0.5pt 3.7pt;">32.0</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.3" style="padding:0.5pt 3.7pt;">29.9</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.4" style="padding:0.5pt 3.7pt;">19.0</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.5" style="padding:0.5pt 3.7pt;">39.6</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.6" style="padding:0.5pt 3.7pt;">32.0</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.7" style="padding:0.5pt 3.7pt;">34.6</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.8" style="padding:0.5pt 3.7pt;">40.0</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.9" style="padding:0.5pt 3.7pt;">36.0</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.10" style="padding:0.5pt 3.7pt;">24.4</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.7.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.7.6.1" style="padding:0.5pt 3.7pt;"><span class="ltx_text" id="S2.T1.1.7.6.1.1" style="color:#0000FF;">Vanilla-mode</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.7.6.2" style="padding:0.5pt 3.7pt;">32.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.7.6.3" style="padding:0.5pt 3.7pt;">39.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.7.6.4" style="padding:0.5pt 3.7pt;">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.7.6.5" style="padding:0.5pt 3.7pt;">25.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.7.6.6" style="padding:0.5pt 3.7pt;">43.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.7.6.7" style="padding:0.5pt 3.7pt;">32.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.7.6.8" style="padding:0.5pt 3.7pt;">30.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.7.6.9" style="padding:0.5pt 3.7pt;">27.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.7.6.10" style="padding:0.5pt 3.7pt;">32.6</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of three different prompting strategies (Think-mode, Observe-mode, and Vanilla-mode) used on two different sizes of the Qwen2-VL model (2B and 7B parameters) when evaluated on the VSI-bench benchmark.  The results show the average performance across various subtasks within the VSI-bench, including object counting, distance calculations, size estimations, and route planning.  This allows for a comparison of how effectively each prompting style elicits visual-spatial reasoning capabilities from the model.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparisons of different prompting strategies on Qwen2-VL-2B and Qwen2-VL-7B on VSI-bench.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.00883/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00883/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00883/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00883/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00883/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00883/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00883/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00883/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00883/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}