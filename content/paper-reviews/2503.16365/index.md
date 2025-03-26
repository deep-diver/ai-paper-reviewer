---
title: "JARVIS-VLA: Post-Training Large-Scale Vision Language Models to Play Visual Games with Keyboards and Mouse"
summary: "ActVLP: Enhancing VLMs through visual-linguistic guidance for superior action-based decision-making in interactive environments."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Peking University",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16365 {{< /keyword >}}
{{< keyword icon="writer" >}} Muyao Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16365" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16365" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16365/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Action-based decision-making using Visual Language Action (VLA) models has gained attention. Previous approaches, focusing on action post-training, often missed foundation model enhancements. To tackle this, the authors present Act from Visual Language Post-Training, which refines Vision Language Models (VLMs) through visual and linguistic self-supervision, boosting world knowledge, visual recognition, and spatial grounding. 



The new training paradigms led to the first VLA models in Minecraft capable of following human instructions across 1k atomic tasks like crafting, smelting, and killing. Experiments show a 40% improvement over existing agents and state-of-the-art performance surpassing imitation learning. The team open-sourced **JARVIS-VLA**'s code, models, and datasets to facilitate future research and development.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Visual Language Post-Training (ActVLP) improves VLMs' decision-making skills by refining both visual and linguistic understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} JARVIS-VLA, a model trained using ActVLP, achieves state-of-the-art performance in Minecraft, outperforming imitation learning-based policies. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Expanding the scale of non-trajectory vision-language tasks during post-training significantly enhances downstream task performance in VLAs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research significantly advances **VLA models for interactive environments like Minecraft**. By enhancing pre-training and open-sourcing resources, it **promotes further research in AI agents capable of complex tasks and better human-AI collaboration**. It helps build AI that is more aligned with how people naturally learn and interact.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16365/x1.png)

> 🔼 Figure 1 illustrates the JARVIS-VLA model architecture and training process.  JARVIS-VLA is a novel Vision-Language-Action (VLA) model that leverages a multi-stage training approach called ActVLP. This approach first involves post-training the model on non-decision making visual-language tasks to enhance its world knowledge, visual recognition, and spatial understanding.  Only after this initial post-training phase, does the model undergo training on trajectory datasets (data showing sequences of actions) to improve its decision-making capabilities.  This two-stage process is shown schematically in the figure, highlighting the key components of the model (Visual Transformer, Causal Transformer, Action Decoder) and their interaction with the environment.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present JARVIS-VLA, a novel Vision-Language-Action (VLA) model trained with ActVLP paradigm, post-trained on vision language tasks (non-decision-making tasks) before training on trajectory datasets to have better decision-making capabilities.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.9.9">
<tr class="ltx_tr" id="S3.T1.9.9.10">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.9.9.10.1" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.10.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.9.9.10.2" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.10.2.1">Model Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.9.9.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="S3.T1.9.9.10.3.1">Mine Blocks</span></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.9.9.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.9.9.10.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="S3.T1.9.9.10.5.1">Kill Entities</span></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.9.9.10.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S3.T1.9.9.10.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="S3.T1.9.9.10.7.1">Craft Items</span></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.9.9.10.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.9.9.10.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="S3.T1.9.9.10.9.1">Smelt Items</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="S3.T1.1.1.1.1.g1" src="extracted/6297380/figures/avatar/iron_ore.png" width="14"/></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="13" id="S3.T1.2.2.2.2.g1" src="extracted/6297380/figures/avatar/obsidian.png" width="13"/></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.9.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">Avg.</td>
<td class="ltx_td" id="S3.T1.9.9.9.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S3.T1.3.3.3.3.g1" src="x4.png" width="17"/></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="19" id="S3.T1.4.4.4.4.g1" src="x5.png" width="19"/></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.9.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">Avg.</td>
<td class="ltx_td" id="S3.T1.9.9.9.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="12" id="S3.T1.5.5.5.5.g1" src="extracted/6297380/figures/avatar/crafting_table.png" width="12"/></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="12" id="S3.T1.6.6.6.6.g1" src="extracted/6297380/figures/avatar/diamond_sword.png" width="12"/></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.7.7.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="12" id="S3.T1.7.7.7.7.g1" src="extracted/6297380/figures/avatar/ladder.png" width="12"/></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.9.14" style="padding-top:0.5pt;padding-bottom:0.5pt;">Avg.</td>
<td class="ltx_td" id="S3.T1.9.9.9.15" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.8.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="15" id="S3.T1.8.8.8.8.g1" src="extracted/6297380/figures/avatar/cooked_beef.png" width="15"/></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.9.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="11" id="S3.T1.9.9.9.9.g1" src="extracted/6297380/figures/avatar/iron_ingot1.jpg" width="12"/></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.9.9.9.16" style="padding-top:0.5pt;padding-bottom:0.5pt;">Avg.</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.9.9.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">VPT-BC <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16365v1#bib.bib4" title="">4</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">248M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.11.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.11.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.11.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.33</td>
<td class="ltx_td ltx_border_t" id="S3.T1.9.9.11.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.11.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.11.7.1" style="color:#0000FF;">0.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.11.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.11.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.44</td>
<td class="ltx_td ltx_border_t" id="S3.T1.9.9.11.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.11.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.11.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.11.12.1" style="color:#0000FF;">0.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.11.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.11.14" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.41</td>
<td class="ltx_td ltx_border_t" id="S3.T1.9.9.11.15" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.11.16" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.11.17" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.00</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.9.9.11.18" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.05</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9.12">
<td class="ltx_td ltx_align_left" id="S3.T1.9.9.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">VPT-RL <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16365v1#bib.bib4" title="">4</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.12.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">248M</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.12.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.05</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.12.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.35</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.12.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.25</td>
<td class="ltx_td" id="S3.T1.9.9.12.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.12.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.35</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.12.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.12.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.28</td>
<td class="ltx_td" id="S3.T1.9.9.12.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.12.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.12.11.1" style="color:#0000FF;">0.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.12.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.30</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.12.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.62</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.12.14" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.55</td>
<td class="ltx_td" id="S3.T1.9.9.12.15" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.12.16" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.05</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.12.17" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.35</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.9.9.12.18" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.20</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9.13">
<td class="ltx_td ltx_align_left" id="S3.T1.9.9.13.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">STEVE-1 <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16365v1#bib.bib30" title="">30</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.13.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">248M</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.13.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.20</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.13.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.35</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.13.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.54</td>
<td class="ltx_td" id="S3.T1.9.9.13.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.13.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.30</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.13.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.13.8.1" style="color:#0000FF;">0.75</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.13.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.38</td>
<td class="ltx_td" id="S3.T1.9.9.13.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.13.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.45</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.13.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.20</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.13.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.13.13.1" style="color:#0000FF;">0.70</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.13.14" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.13.14.1" style="color:#0000FF;">0.57</span></td>
<td class="ltx_td" id="S3.T1.9.9.13.15" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.13.16" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.13.17" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.13.17.1" style="color:#0000FF;">0.40</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.9.9.13.18" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.13.18.1" style="color:#0000FF;">0.33</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9.14">
<td class="ltx_td ltx_align_left" id="S3.T1.9.9.14.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">GROOT <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16365v1#bib.bib12" title="">12</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.14.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">248M</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.14.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.14.3.1" style="color:#0000FF;">0.56</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.14.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.14.4.1" style="color:#0000FF;">0.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.14.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.14.5.1" style="color:#0000FF;">0.67</span></td>
<td class="ltx_td" id="S3.T1.9.9.14.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.14.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.14.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.14.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.14.9.1" style="color:#0000FF;">0.52</span></td>
<td class="ltx_td" id="S3.T1.9.9.14.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.14.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.45</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.14.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.35</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.14.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.14.14" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.40</td>
<td class="ltx_td" id="S3.T1.9.9.14.15" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.14.16" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.14.16.1" style="color:#0000FF;">0.35</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.14.17" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.25</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.9.9.14.18" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.30</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9.15">
<td class="ltx_td ltx_align_left" id="S3.T1.9.9.15.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">MineDreamer <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16365v1#bib.bib58" title="">58</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.15.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.15.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.15.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.15.4.1" style="color:#0000FF;">0.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.15.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.55</td>
<td class="ltx_td" id="S3.T1.9.9.15.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.15.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.30</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.15.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.70</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.15.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.39</td>
<td class="ltx_td" id="S3.T1.9.9.15.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.15.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.9.9.15.11.1" style="color:#0000FF;">0.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.15.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.15.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.30</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.15.14" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.42</td>
<td class="ltx_td" id="S3.T1.9.9.15.15" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.15.16" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.30</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.15.17" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.30</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.9.9.15.18" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.30</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.9.9.16.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Qwen2-VL (<span class="ltx_text ltx_font_italic" id="S3.T1.9.9.16.1.1">orig</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.16.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.16.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.16.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.16.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.79</td>
<td class="ltx_td ltx_border_t" id="S3.T1.9.9.16.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.16.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.16.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.16.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.84</td>
<td class="ltx_td ltx_border_t" id="S3.T1.9.9.16.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.16.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.16.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.16.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.16.14" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.60</td>
<td class="ltx_td ltx_border_t" id="S3.T1.9.9.16.15" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.16.16" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.16.17" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.10</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.9.9.16.18" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.07</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9.17">
<td class="ltx_td ltx_align_left" id="S3.T1.9.9.17.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Qwen2-VL (IL)</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.17.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.17.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.70</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.17.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.73</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.17.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.75</td>
<td class="ltx_td" id="S3.T1.9.9.17.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.17.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.97</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.17.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.83</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.17.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.86</td>
<td class="ltx_td" id="S3.T1.9.9.17.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.17.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.73</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.17.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.67</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.17.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.17.14" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.65</td>
<td class="ltx_td" id="S3.T1.9.9.17.15" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.17.16" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.17</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.17.17" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.37</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.9.9.17.18" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.29</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9.18">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.9.9.18.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.9.9.18.1.1">JARVIS-VLA</span>-Qwen2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.9.18.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.9.18.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.18.3.1" style="color:#FF0000;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.9.18.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.18.4.1" style="color:#FF0000;">0.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.9.18.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.18.5.1" style="color:#FF0000;">0.88</span></td>
<td class="ltx_td ltx_border_bb" id="S3.T1.9.9.18.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.9.18.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.18.7.1" style="color:#FF0000;">0.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.9.18.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.18.8.1" style="color:#FF0000;">0.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.9.18.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.18.9.1" style="color:#FF0000;">0.95</span></td>
<td class="ltx_td ltx_border_bb" id="S3.T1.9.9.18.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.9.18.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.18.11.1" style="color:#FF0000;">0.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.9.18.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.18.12.1" style="color:#FF0000;">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.9.18.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.18.13.1" style="color:#FF0000;">0.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.9.18.14" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.18.14.1" style="color:#FF0000;">0.77</span></td>
<td class="ltx_td ltx_border_bb" id="S3.T1.9.9.18.15" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.9.18.16" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.18.16.1" style="color:#FF0000;">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.9.18.17" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.18.17.1" style="color:#FF0000;">0.70</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.9.9.18.18" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.18.18.1" style="color:#FF0000;">0.70</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the success rates of various models on different Minecraft tasks.  The tasks are grouped into four categories: Mine Blocks, Kill Entities, Craft Items, and Smelt Items. Each category contains multiple sub-tasks (at least 5).  The 'Avg.' column shows the average success rate across all tasks within each category. The models compared are: VPT-BC, VPT-RL, STEVE-1, GROOT, MineDreamer, Qwen2-VL (original), Qwen2-VL (trained with imitation learning only), and JARVIS-VLA (trained with the ActVLP method).  The table highlights that JARVIS-VLA significantly outperforms other models across all task categories, achieving the highest average success rates. The model sizes are provided for reference.  JARVIS-VLA was tested on 1000 different tasks, and videos demonstrating its performance are available on the project page.
> <details>
> <summary>read the caption</summary>
> Table 1:  Evaluation results of different policies on Minecraft tasks. Each group includes multiple tasks (at least 5), and the Avg. column reports the average success rate within each group. Qwen2-VL, Qwen2-VL (IL) and JARVIS-VLA-Qwen2-VL represent the training on the original qwen checkpoint, post-training on only large-scale imitation learning trajectories, and post-trained on VLP intermediate model. Qwen2-VL (ActVLP) achieves the highest success rates across all task groups. We test JARVIS-VLA-Qwen2-VL on 1k different instructions and the rollout videos can be found in the project page.
> </details>





### In-depth insights


#### ActVLP Paradigm
The ActVLP paradigm, or "Act from Visual Language Post-Training," signifies a novel approach in refining VLMs for decision-making. It prioritizes enhancing the foundational model's understanding of **world knowledge, visual recognition, and spatial grounding** before task-specific training. This contrasts with traditional methods that focus on action post-training. By incorporating visual and linguistic guidance in a self-supervised manner, ActVLP aims to improve the VLM's ability to interpret open-world environments. The core idea is that a more informed and capable VLM will lead to better action generation and decision-making, ultimately surpassing the limitations of imitation learning. **ActVLP uses non-trajectory tasks**.

#### Minecraft VLA
**Minecraft VLA** could be a specialized area within Visual Language Action models, tailored for the Minecraft environment. It likely involves agents that can understand visual and textual instructions to perform tasks in the game, requiring strong spatial reasoning, object recognition, and planning abilities.  Such models might use techniques like imitation learning from human gameplay or reinforcement learning to optimize actions. A key challenge would be the vast action space and partially observable environment, requiring robust handling of uncertainty and long-term dependencies. Datasets for Minecraft VLA could include gameplay videos with human annotations and synthesized data. The performance of these models could be evaluated based on their ability to follow instructions, complete complex tasks, and generalize to new scenarios within the Minecraft world.

#### Vision grounding
**Vision grounding** is a crucial aspect of AI, enabling models to link visual inputs to semantic concepts. In the context of **visual games**, it allows agents to 'understand' what they see – identifying objects, locations, and relationships. This is vital for tasks like navigation, object manipulation, and following instructions. Effective vision grounding requires models to overcome challenges such as **variations in viewpoint, lighting, and object appearance**. Techniques like **attention mechanisms and spatial reasoning** are often employed. Improving vision grounding leads to more robust and capable agents in visually rich environments. It is important to use various techniques such as **object localization, relation extraction and scene understanding** to achieve better results in vision grounding.

#### Token efficiency
Token efficiency is a critical aspect often overlooked in large language models (LLMs). A more efficient tokenization strategy can lead to **reduced computational costs during training and inference**, as fewer tokens translate to shorter sequences that the model needs to process. **Efficient tokenization** can allow LLMs to process more data within a given memory constraint, potentially improving overall performance and enabling the use of longer context windows. **Strategic token selection**, repurposing infrequently used tokens for specific tasks like action representation (as seen in this work), can significantly enhance a model's ability to handle diverse tasks without substantially increasing vocabulary size. Additionally, **token chunking** is a good way to effectively use the token. Ultimately, optimizing token efficiency represents a vital step towards creating more powerful and sustainable LLMs.

#### Scaling Laws
**Scaling laws in VLMs** is the trend where performance improves with model size, data, and compute. ActVLP reveals VLAs benefit from scaling, particularly with non-trajectory data, enhancing downstream task success. Datasets and tuning impacts performance. Larger datasets and loss reduction from knowledge tasks aids scaling, improving decision-making. Task difficulty is affected by dataset size. A non-zero rate will be there when losses are less than 0.3. Scaling laws in vision language models, obtained through **post-training** on VLMs, exhibit similar scaling behavior.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16365/x2.png)

> 🔼 This figure illustrates the difference between traditional VLA training methods and the proposed ActVLP approach. Traditional methods directly fine-tune a vision-language model on large-scale datasets using imitation learning to predict actions.  In contrast, ActVLP is a three-stage training pipeline. Stage 1 post-trains the language model on text-based world knowledge using supervised fine-tuning with next-token prediction. Stage 2 further post-trains both the vision encoder and language model on multimodal datasets focusing on vision-language alignment and spatial grounding, again using supervised fine-tuning with next-token prediction. Finally, Stage 3 post-trains only the language model on multimodal instruction-following datasets via imitation learning. This multi-stage approach aims to enhance the model's world knowledge, visual understanding, and spatial reasoning capabilities before relying solely on imitation learning for action prediction.
> <details>
> <summary>read the caption</summary>
> Figure 2: Previous VLA methods usually directly use imitation learning to finetune original vision-language models on large-scale multi-domain decision-making datasets to predict the actions [25, 7]. Our ActVLP training pipeline includes three stages: 1) post-training language models on text-only world knowledge with next-token prediction supervised fine-tuning, 2) post-training both vision encoder and language models on multimodal vision-language alignment and spatial grounding datasets with next-token prediction supervised fine-tuning, and 3) post-training only language models on multi-modal instruction following datasets with imitation learning.
> </details>



![](https://arxiv.org/html/2503.16365/x3.png)

> 🔼 Figure 3 illustrates the diverse visual-language datasets used for post-training the model.  A unified tokenizer allows the model to leverage these datasets, improving its performance on various vision-language tasks including question answering, image captioning, image/video question answering, and visual grounding (which incorporates both point and bounding box annotations).  This multifaceted approach enhances the model's decision-making capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of various post-training datasets. Models can post-train on various vision-language datasets using a unified tokenizer and support diverse vision-language applications, such as question answering, image captioning, image/video question answering, visual grounding (including points and bounding box), and decision-making. More examples can be found in Appendix D.
> </details>



![](https://arxiv.org/html/2503.16365/x6.png)

> 🔼 This figure displays the results of ablation studies conducted to determine the impact of different post-training datasets on downstream decision-making tasks. Three types of datasets were used: knowledge datasets, visual question-answering datasets, and spatial grounding datasets.  The results show the success rates for three downstream tasks (crafting a sword, mining obsidian, and cooking beef) when different combinations of post-training datasets were used. This illustrates which visual-language capabilities are most crucial for effective task performance, highlighting the importance of a well-rounded, multi-faceted post-training process.
> <details>
> <summary>read the caption</summary>
> Figure 4: Ablation results on different post-training datasets. We select knowledge datasets, visual question-answering datasets, and spatial grounding datasets to conduct ablation experiments. Our goal is to evaluate which capabilities and post-training datasets most significantly influence downstream decision-making tasks.
> </details>



![](https://arxiv.org/html/2503.16365/x7.png)

> 🔼 Figure 5 illustrates the relationship between the success rate of downstream tasks, the training loss, and the number of training steps in a model. The graph shows that increasing the number of downstream fine-tuning trajectories improves the model's success rate, but only when the training loss is below 0.22.  This indicates a threshold where additional data significantly impacts performance.
> <details>
> <summary>read the caption</summary>
> Figure 5: The relation between downstream task success rate, training loss, and training steps. The curve shows that scaling downstream finetuning trajectories can scale up the success rate when the loss is lower than 0.22.
> </details>



![](https://arxiv.org/html/2503.16365/x8.png)

> 🔼 This figure illustrates the correlation between the loss during post-training on non-trajectory datasets and the success rate on downstream tasks.  It demonstrates that increasing the size of the non-trajectory training data improves the performance on downstream tasks, even when the amount of fine-tuning trajectory data remains constant.  This highlights the importance of comprehensive pre-training in enhancing the model's ability to generalize to new tasks.
> <details>
> <summary>read the caption</summary>
> Figure 6:  The relationship between post-training loss and downstream task success rates. Our findings indicate that increasing the size of post-training non-trajectory datasets can significantly enhance downstream task success rates, even with a fixed number of fine-tuning trajectories.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T2.1">
<tr class="ltx_tr" id="A5.T2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T2.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T2.1.1.2"><span class="ltx_text ltx_font_bold" id="A5.T2.1.1.2.1">Quantity</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T2.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.1.3.1">
<span class="ltx_p" id="A5.T2.1.1.3.1.1" style="width:142.3pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.1.1.3.1.1.1">Example Question</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T2.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.1.4.1">
<span class="ltx_p" id="A5.T2.1.1.4.1.1" style="width:142.3pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.1.1.4.1.1.1">Example Answer</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T2.1.2.1">Craft</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T2.1.2.2">9</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T2.1.2.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.2.3.1">
<span class="ltx_p" id="A5.T2.1.2.3.1.1" style="width:142.3pt;">What materials are needed to craft a jukebox in Minecraft?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T2.1.2.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.2.4.1">
<span class="ltx_p" id="A5.T2.1.2.4.1.1" style="width:142.3pt;">8 Planks and 1 Diamond.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T2.1.3.1">Plant</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T2.1.3.2">5</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T2.1.3.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.3.3.1">
<span class="ltx_p" id="A5.T2.1.3.3.1.1" style="width:142.3pt;">What is the maximum height sugarcane can reach in Minecraft?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T2.1.3.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.3.4.1">
<span class="ltx_p" id="A5.T2.1.3.4.1.1" style="width:142.3pt;">3.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T2.1.4.1">Mobs</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T2.1.4.2">12</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T2.1.4.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.4.3.1">
<span class="ltx_p" id="A5.T2.1.4.3.1.1" style="width:142.3pt;">What happens when a creeper gets struck by lightning in Minecraft?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T2.1.4.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.4.4.1">
<span class="ltx_p" id="A5.T2.1.4.4.1.1" style="width:142.3pt;">A creeper becomes a charged creeper.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.1.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T2.1.5.1">Kill</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T2.1.5.2">3</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T2.1.5.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.5.3.1">
<span class="ltx_p" id="A5.T2.1.5.3.1.1" style="width:142.3pt;">Can shield block crossbow attack in Minecraft?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T2.1.5.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.5.4.1">
<span class="ltx_p" id="A5.T2.1.5.4.1.1" style="width:142.3pt;">No.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.1.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T2.1.6.1">Enchant</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T2.1.6.2">3</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T2.1.6.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.6.3.1">
<span class="ltx_p" id="A5.T2.1.6.3.1.1" style="width:142.3pt;">What happens if the player put on an item with Curse of Binding enchant in Minecraft?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T2.1.6.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.6.4.1">
<span class="ltx_p" id="A5.T2.1.6.4.1.1" style="width:142.3pt;">It cannot be removed until the item breaks or the player dies.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.1.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T2.1.7.1">Potion</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T2.1.7.2">4</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T2.1.7.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.7.3.1">
<span class="ltx_p" id="A5.T2.1.7.3.1.1" style="width:142.3pt;">What materials are needed to craft a potion of poison in Minecraft?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T2.1.7.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.7.4.1">
<span class="ltx_p" id="A5.T2.1.7.4.1.1" style="width:142.3pt;">Water bottle, Nether wart, blaze powder, spider eye.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.1.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T2.1.8.1">Biomes</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T2.1.8.2">4</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T2.1.8.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.8.3.1">
<span class="ltx_p" id="A5.T2.1.8.3.1.1" style="width:142.3pt;">Which biome is the only place you can find blue orchids in Minecraft?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T2.1.8.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.8.4.1">
<span class="ltx_p" id="A5.T2.1.8.4.1.1" style="width:142.3pt;">Swamp.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.1.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T2.1.9.1">Architecture</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T2.1.9.2">7</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T2.1.9.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.9.3.1">
<span class="ltx_p" id="A5.T2.1.9.3.1.1" style="width:142.3pt;">How many chests are typically found in a shipwreck in Minecraft?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T2.1.9.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.1.9.4.1">
<span class="ltx_p" id="A5.T2.1.9.4.1.1" style="width:142.3pt;">1 to 3.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the evaluation dataset for the World Knowledge portion of the Minecraft benchmark. It breaks down 47 questions into eight subcategories (Craft, Plant, Mobs, Kill, Enchant, Potions, Biomes, Architecture), showing the number of questions per category and example questions and answers.  This provides a detailed look at the types of knowledge questions used to assess the models' understanding of the Minecraft world.
> <details>
> <summary>read the caption</summary>
> Table 2: Summary of Minecraft knowledge questions and answers Evaluation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T3.5">
<tr class="ltx_tr" id="A5.T3.5.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T3.5.6.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.5.6.1.1">
<span class="ltx_p" id="A5.T3.5.6.1.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.5.6.1.1.1.1">Category</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T3.5.6.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.5.6.2.1">
<span class="ltx_p" id="A5.T3.5.6.2.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.5.6.2.1.1.1">Quantity</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T3.5.6.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.5.6.3.1">
<span class="ltx_p" id="A5.T3.5.6.3.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.5.6.3.1.1.1">Image</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T3.5.6.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.5.6.4.1">
<span class="ltx_p" id="A5.T3.5.6.4.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.5.6.4.1.1.1">Example Question</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T3.5.6.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.5.6.5.1">
<span class="ltx_p" id="A5.T3.5.6.5.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.5.6.5.1.1.1">Example Answer</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.1.1.2.1">
<span class="ltx_p" id="A5.T3.1.1.2.1.1" style="width:56.9pt;">Scene</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.1.1.3.1">
<span class="ltx_p" id="A5.T3.1.1.3.1.1" style="width:28.5pt;">11</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.1.1.1.1">
<span class="ltx_p" id="A5.T3.1.1.1.1.1" style="width:85.4pt;"><span class="ltx_text" id="A5.T3.1.1.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="62" id="A5.T3.1.1.1.1.1.1.g1" src="x11.png" width="83"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.1.1.4.1">
<span class="ltx_p" id="A5.T3.1.1.4.1.1" style="width:85.4pt;">What biome you think is the player currently in?</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.1.1.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.1.1.5.1">
<span class="ltx_p" id="A5.T3.1.1.5.1.1" style="width:85.4pt;">Mushroom Fields biome.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.2.2.2.1">
<span class="ltx_p" id="A5.T3.2.2.2.1.1" style="width:56.9pt;">Object</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.2.2.3.1">
<span class="ltx_p" id="A5.T3.2.2.3.1.1" style="width:28.5pt;">13</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.2.2.1.1">
<span class="ltx_p" id="A5.T3.2.2.1.1.1" style="width:85.4pt;"><span class="ltx_text" id="A5.T3.2.2.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="47" id="A5.T3.2.2.1.1.1.1.g1" src="x12.png" width="83"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.2.2.4.1">
<span class="ltx_p" id="A5.T3.2.2.4.1.1" style="width:85.4pt;">Are there any hostile mobs in the picture?</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.2.2.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.2.2.5.1">
<span class="ltx_p" id="A5.T3.2.2.5.1.1" style="width:85.4pt;">No, there are only 4 pigs in the picture.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.3.3.2.1">
<span class="ltx_p" id="A5.T3.3.3.2.1.1" style="width:56.9pt;">Info</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.3.3.3.1">
<span class="ltx_p" id="A5.T3.3.3.3.1.1" style="width:28.5pt;">7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.3.3.1.1">
<span class="ltx_p" id="A5.T3.3.3.1.1.1" style="width:85.4pt;"><span class="ltx_text" id="A5.T3.3.3.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="62" id="A5.T3.3.3.1.1.1.1.g1" src="x13.png" width="83"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.3.3.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.3.3.4.1">
<span class="ltx_p" id="A5.T3.3.3.4.1.1" style="width:85.4pt;">Is the player’s hunger bar currently full?</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.3.3.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.3.3.5.1">
<span class="ltx_p" id="A5.T3.3.3.5.1.1" style="width:85.4pt;">No.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.4.4.2.1">
<span class="ltx_p" id="A5.T3.4.4.2.1.1" style="width:56.9pt;">Inventory</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.4.4.3.1">
<span class="ltx_p" id="A5.T3.4.4.3.1.1" style="width:28.5pt;">6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.4.4.1.1">
<span class="ltx_p" id="A5.T3.4.4.1.1.1" style="width:85.4pt;"><span class="ltx_text" id="A5.T3.4.4.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="47" id="A5.T3.4.4.1.1.1.1.g1" src="x14.png" width="83"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.4.4.4.1">
<span class="ltx_p" id="A5.T3.4.4.4.1.1" style="width:85.4pt;">Is there any oak wood in the inventory?</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T3.4.4.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.4.4.5.1">
<span class="ltx_p" id="A5.T3.4.4.5.1.1" style="width:85.4pt;">Yes, there are oak wood planks in the inventory.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T3.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.5.5.2.1">
<span class="ltx_p" id="A5.T3.5.5.2.1.1" style="width:56.9pt;">OCR</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T3.5.5.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.5.5.3.1">
<span class="ltx_p" id="A5.T3.5.5.3.1.1" style="width:28.5pt;">6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T3.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.5.5.1.1">
<span class="ltx_p" id="A5.T3.5.5.1.1.1" style="width:85.4pt;"><span class="ltx_text" id="A5.T3.5.5.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="47" id="A5.T3.5.5.1.1.1.1.g1" src="x15.png" width="83"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T3.5.5.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.5.5.4.1">
<span class="ltx_p" id="A5.T3.5.5.4.1.1" style="width:85.4pt;">What instructions are visible on the screen?</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T3.5.5.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.5.5.5.1">
<span class="ltx_p" id="A5.T3.5.5.5.1.1" style="width:85.4pt;">Open your inventory Press e.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the evaluation metrics for the Vision Understanding portion of the Minecraft benchmark.  It breaks down the evaluation into five subcategories: Scene, Object, Info, Inventory, and OCR. Each category contains several questions related to aspects of the Minecraft game environment and the player's status. The table lists the number of questions per category, provides example questions and answers, and includes an image to illustrate the visual information used in each question.
> <details>
> <summary>read the caption</summary>
> Table 3: Summary of Vision Understanding Evaluation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T4.2">
<tr class="ltx_tr" id="A5.T4.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T4.2.3.1" style="padding-top:5pt;padding-bottom:5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.3.1.1">
<span class="ltx_p" id="A5.T4.2.3.1.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="A5.T4.2.3.1.1.1.1">Category</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T4.2.3.2" style="padding-top:5pt;padding-bottom:5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.3.2.1">
<span class="ltx_p" id="A5.T4.2.3.2.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="A5.T4.2.3.2.1.1.1">Quantity</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T4.2.3.3" style="padding-top:5pt;padding-bottom:5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.3.3.1">
<span class="ltx_p" id="A5.T4.2.3.3.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="A5.T4.2.3.3.1.1.1">Image</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T4.2.3.4" style="padding-top:5pt;padding-bottom:5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.3.4.1">
<span class="ltx_p" id="A5.T4.2.3.4.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T4.2.3.4.1.1.1">Example Question</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T4.2.3.5" style="padding-top:5pt;padding-bottom:5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.3.5.1">
<span class="ltx_p" id="A5.T4.2.3.5.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T4.2.3.5.1.1.1">Example Answer</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T4.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T4.1.1.2" style="padding-top:5pt;padding-bottom:5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.1.1.2.1">
<span class="ltx_p" id="A5.T4.1.1.2.1.1" style="width:56.9pt;">GUI</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T4.1.1.3" style="padding-top:5pt;padding-bottom:5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.1.1.3.1">
<span class="ltx_p" id="A5.T4.1.1.3.1.1" style="width:28.5pt;">100</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T4.1.1.1" style="padding-top:5pt;padding-bottom:5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.1.1.1.1">
<span class="ltx_p" id="A5.T4.1.1.1.1.1" style="width:56.9pt;"><span class="ltx_text" id="A5.T4.1.1.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="47" id="A5.T4.1.1.1.1.1.1.g1" src="x17.png" width="83"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T4.1.1.4" style="padding-top:5pt;padding-bottom:5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.1.1.4.1">
<span class="ltx_p" id="A5.T4.1.1.4.1.1" style="width:113.8pt;">Point the wheat_seeds</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T4.1.1.5" style="padding-top:5pt;padding-bottom:5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.1.1.5.1">
<span class="ltx_p" id="A5.T4.1.1.5.1.1" style="width:113.8pt;">[284,206]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T4.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T4.2.2.2" style="padding-top:5pt;padding-bottom:5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.2.2.1">
<span class="ltx_p" id="A5.T4.2.2.2.1.1" style="width:56.9pt;">Embodied</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T4.2.2.3" style="padding-top:5pt;padding-bottom:5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.2.3.1">
<span class="ltx_p" id="A5.T4.2.2.3.1.1" style="width:28.5pt;">236</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T4.2.2.1" style="padding-top:5pt;padding-bottom:5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.2.1.1">
<span class="ltx_p" id="A5.T4.2.2.1.1.1" style="width:56.9pt;"><span class="ltx_text" id="A5.T4.2.2.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="47" id="A5.T4.2.2.1.1.1.1.g1" src="x18.png" width="83"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T4.2.2.4" style="padding-top:5pt;padding-bottom:5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.2.4.1">
<span class="ltx_p" id="A5.T4.2.2.4.1.1" style="width:113.8pt;">Point the oak_leaves.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T4.2.2.5" style="padding-top:5pt;padding-bottom:5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.2.5.1">
<span class="ltx_p" id="A5.T4.2.2.5.1.1" style="width:113.8pt;">[315,174]</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a summary of the evaluation results for spatial grounding tasks in the paper.  It shows the number of GUI (Graphical User Interface) and Embodied data points used for evaluation, provides example questions, and displays the format of the expected answers.  The results are crucial for assessing the model's ability to accurately locate objects within Minecraft scenes, differentiating between GUI elements and objects within the 3D game environment.
> <details>
> <summary>read the caption</summary>
> Table 4: Summary of spatial grounding evaluation results for visual grounding tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T5.1.1">
<tr class="ltx_tr" id="A5.T5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T5.1.1.1.1" rowspan="2"><span class="ltx_text" id="A5.T5.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T5.1.1.1.2" rowspan="2"><span class="ltx_text" id="A5.T5.1.1.1.2.1">Model Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A5.T5.1.1.1.3">World Knowledge</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A5.T5.1.1.1.4">Visual Understanding</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A5.T5.1.1.1.5">Visual Grounding</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.2.1">Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.2.2">Rank</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.2.3">Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.2.4">Rank</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.2.5">Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.2.6">Rank</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T5.1.1.3.1">GPT-4o <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16365v1#bib.bib1" title="">1</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.3.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.3.3">96.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.3.4">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.3.5">76.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.3.6">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.3.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.3.8">-</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.1.4">
<td class="ltx_td ltx_align_left" id="A5.T5.1.1.4.1">GPT-4o-mini <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16365v1#bib.bib1" title="">1</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.4.2">-</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.4.3">75.9</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.4.4">2</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.4.5">62.8</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.4.6">4</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.4.7">-</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.4.8">-</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T5.1.1.5.1">Llava-Next <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16365v1#bib.bib27" title="">27</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.5.2">8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.5.3">19.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.5.4">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.5.5">41.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.5.6">10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.5.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.5.8">-</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.1.6">
<td class="ltx_td ltx_align_left" id="A5.T5.1.1.6.1">Molmo-d-0924 <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16365v1#bib.bib16" title="">16</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.6.2">7B</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.6.3">12.1</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.6.4">10</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.6.5">58.1</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.6.6">5</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.6.7">24.8</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.6.8">3</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.1.7">
<td class="ltx_td ltx_align_left" id="A5.T5.1.1.7.1">Llama-3.2 <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16365v1#bib.bib33" title="">33</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.7.2">11B</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.7.3">20.7</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.7.4">7</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.7.5">44.2</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.7.6">9</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.7.7">-</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.7.8">-</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.1.8">
<td class="ltx_td ltx_align_left" id="A5.T5.1.1.8.1">Qwen2-VL <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16365v1#bib.bib43" title="">43</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.8.2">7B</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.8.3">17.3</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.8.4">9</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.8.5">46.5</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.8.6">7</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.8.7">16.6</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.8.8">5</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T5.1.1.9.1"><span class="ltx_text ltx_font_bold" id="A5.T5.1.1.9.1.1">Qwen2-VL (Knowledge)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.9.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.9.3">65.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.9.4">5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.9.5">46.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.9.6">7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.9.7">16.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.9.8">5</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.1.10">
<td class="ltx_td ltx_align_left" id="A5.T5.1.1.10.1"><span class="ltx_text ltx_font_bold" id="A5.T5.1.1.10.1.1">Qwen2-VL (Vision)</span></td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.10.2">7B</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.10.3">62.1</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.10.4">6</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.10.5">65.1</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.10.6">3</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.10.7">19.8</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.10.8">4</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.1.11">
<td class="ltx_td ltx_align_left" id="A5.T5.1.1.11.1"><span class="ltx_text ltx_font_bold" id="A5.T5.1.1.11.1.1">Qwen2-VL (Grounding)</span></td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.11.2">7B</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.11.3">67.2</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.11.4">4</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.11.5">51.2</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.11.6">6</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.11.7">63.6</td>
<td class="ltx_td ltx_align_center" id="A5.T5.1.1.11.8">2</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T5.1.1.12.1"><span class="ltx_text ltx_font_bold" id="A5.T5.1.1.12.1.1">JARVIS-VLA-Qwen2-VL</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T5.1.1.12.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T5.1.1.12.3">70.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T5.1.1.12.4">3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T5.1.1.12.5">76.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T5.1.1.12.6">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T5.1.1.12.7">88.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T5.1.1.12.8">1</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of various Vision-Language Models (VLMs) on a benchmark designed to evaluate their knowledge of Minecraft, visual understanding, and spatial reasoning abilities.  The models compared include both commercially available large language models (like GPT-4 and its smaller variant) and open-source models (such as Llava-Next, Molmo-d-0924, Llama-3.2, and Qwen2-VL).  The table shows each model's accuracy and ranking across these three categories.  The key finding is that the JARVIS-VLA model, the authors' approach, significantly improves the core capabilities of the other models, though a performance gap still exists relative to state-of-the-art models.
> <details>
> <summary>read the caption</summary>
> Table 5: We compared the performance of various VLMs using our benchmark, including commercial large models (GPT-4 and GPT-4-mini [35]), open-source models (Llava-Next [27], Molmo-d-0924 [16], Llama-3.2 [33], and Qwen2-VL [43]), as well as JARVIS-VLA. The results demonstrate that our method significantly enhances the core capabilities of these models, although there remains a gap when compared to state-of-the-art models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A6.T6.2.2">
<tr class="ltx_tr" id="A6.T6.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A6.T6.2.2.2.3"><span class="ltx_text ltx_font_bold" id="A6.T6.2.2.2.3.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T6.2.2.2.4"><span class="ltx_text ltx_font_bold" id="A6.T6.2.2.2.4.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T6.2.2.2.5"><span class="ltx_text ltx_font_bold" id="A6.T6.2.2.2.5.1">World Knowledge</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T6.2.2.2.6"><span class="ltx_text ltx_font_bold" id="A6.T6.2.2.2.6.1">Visual Alignment</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T6.2.2.2.7"><span class="ltx_text ltx_font_bold" id="A6.T6.2.2.2.7.1">Spatial Grounding</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T6.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="10" id="A6.T6.1.1.1.1.g1" src="extracted/6297380/figures/avatar/diamond_sword.png" width="10"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T6.2.2.2.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="13" id="A6.T6.2.2.2.2.g1" src="extracted/6297380/figures/avatar/cooked_beef.png" width="13"/></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T6.2.2.3.1">Raw</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.2.2.3.2">Llava-Next-8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.2.2.3.3">18.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.2.2.3.4">41.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.2.2.3.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.2.2.3.6">26.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.2.2.3.7">10.0</td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.2.4">
<td class="ltx_td ltx_align_left" id="A6.T6.2.2.4.1"><span class="ltx_text ltx_font_bold" id="A6.T6.2.2.4.1.1">ActVLP</span></td>
<td class="ltx_td ltx_align_center" id="A6.T6.2.2.4.2">Llava-Next-8B</td>
<td class="ltx_td ltx_align_center" id="A6.T6.2.2.4.3">55.8</td>
<td class="ltx_td ltx_align_center" id="A6.T6.2.2.4.4">60.3</td>
<td class="ltx_td ltx_align_center" id="A6.T6.2.2.4.5">-</td>
<td class="ltx_td ltx_align_center" id="A6.T6.2.2.4.6">53.3</td>
<td class="ltx_td ltx_align_center" id="A6.T6.2.2.4.7">16.6</td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.2.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T6.2.2.5.1">Raw</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.2.2.5.2">Qwen2-VL-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.2.2.5.3">17.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.2.2.5.4">46.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.2.2.5.5">16.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.2.2.5.6">83.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.2.2.5.7">0.0</td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.2.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A6.T6.2.2.6.1"><span class="ltx_text ltx_font_bold" id="A6.T6.2.2.6.1.1">ActVLP</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.2.2.6.2">Qwen2-VL-7B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.2.2.6.3"><span class="ltx_text ltx_font_bold" id="A6.T6.2.2.6.3.1">70.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.2.2.6.4"><span class="ltx_text ltx_font_bold" id="A6.T6.2.2.6.4.1">76.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.2.2.6.5"><span class="ltx_text ltx_font_bold" id="A6.T6.2.2.6.5.1">88.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.2.2.6.6"><span class="ltx_text ltx_font_bold" id="A6.T6.2.2.6.6.1">86.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.2.2.6.7"><span class="ltx_text ltx_font_bold" id="A6.T6.2.2.6.7.1">83.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results, demonstrating the robustness of ActVLP across different vision-language models. ActVLP, the proposed Visual Language Post-Training method, is applied to two distinct base models: Llava-Next-8B and Qwen2-VL-7B. The table compares their performance on world knowledge, visual alignment, and spatial grounding tasks before and after applying ActVLP.  It showcases the performance improvements achieved by ActVLP and indicates its effectiveness regardless of the underlying base model.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation experiments on base model and model structure. We adopt ActVLP on Llava-Next-8B [27] and Qwen2-VL-7B [43] to validate the robustness across different base vision language models.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16365/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16365/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}