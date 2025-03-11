---
title: "Should VLMs be Pre-trained with Image Data?"
summary: "Image data during pre-training can boost Vision-Language Model (VLM) performance, especially when introduced later in the process."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Toyota Research Institute",]
showSummary: true
date: 2025-03-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.07603 {{< /keyword >}}
{{< keyword icon="writer" >}} Sedrick Keh et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.07603" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.07603" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.07603/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Pre-trained Large Language Models(LLMs) benefit from image data for vision-language tasks. The traditional approach separates text/image training, but it's unclear if this is optimal. This paper investigates integrating images earlier, training models with varied datasets, scales, image-text ratios, and pre-training amounts before vision tokens. They evaluate downstream performance on vision-language and text tasks to optimize VLM training strategies. Models pre-trained with image/text mixtures perform better in vision-language tasks while maintaining text evaluations.



The research uses various datasets and model sizes to experiment with different pre-training strategies. For a 1B parameter model, visual tokens introduced 80% through pre-training result in a 2% average improvement versus introducing visual tokens earlier. This work challenges standard VLM training, recommending an integrated approach with careful image data management, offering a strong foundation for open-source VLM pre-training.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Pre-training with mixed image and text data enhances vision-language tasks while maintaining text performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Introducing visual tokens later in pre-training (80% completion) yields better results than fully pre-training before adding visuals. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The ratio of visual data during cooldown is crucial; experiments suggest 10-20% visual tokens for 1B models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it questions the **traditional practice of separating text and image pre-training phases** in VLMs and demonstrates that a more integrated approach of incorporating image data can yield superior results. This finding has the potential to reshape future VLM research and development, guiding the creation of more efficient and capable multimodal models.

------
#### Visual Insights



![](https://arxiv.org/html/2503.07603/x1.png)

> 🔼 This figure illustrates the three-stage training process used for the Vision-Language Model (VLM).  The first stage involves text-only pre-training of a large language model (LLM), building a strong foundation in language understanding. This is followed by a second stage where image data is gradually introduced alongside text data for image-text pre-training.  The transition between text-only and image-text pre-training is continuous and not a discrete step. The final stage is fine-tuning, where the model is further optimized on a suite of vision-language and text-only tasks.  The figure visually depicts the different types of data used in each phase and highlights the continuous transition between text-only and image-text pre-training.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of our VLM pre-training data recipe. We investigate data mixes and design choices for text-only pre-training, image-text pre-training, and fine-tuning. Note that while we depict 'LLM Pre-training' and 'Image-text Pre-training' as two separate steps in this diagram, in practice, we continuously transition from the first stage to the second.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T1.1.1.1" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="S2.T1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.1.1.1" style="background-color:#D9D9D9;">
<span class="ltx_p" id="S2.T1.1.1.1.1.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.1.1.1">Model</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S2.T1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.1.2.1" style="background-color:#D9D9D9;">
<span class="ltx_p" id="S2.T1.1.1.1.2.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.2.1.1.1">Text-Only Pre-training</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S2.T1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.1.3.1" style="background-color:#D9D9D9;">
<span class="ltx_p" id="S2.T1.1.1.1.3.1.1" style="width:142.3pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.3.1.1.1">Image-Text Pre-training</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S2.T1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.1.4.1" style="background-color:#D9D9D9;">
<span class="ltx_p" id="S2.T1.1.1.1.4.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.4.1.1.1">Multitask Fine-Tuning</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.2.1" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="S2.T1.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.2.1.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.2.1.1.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.2.1.1.1.1.1">BLIP3
<br class="ltx_break"/></span> <cite class="ltx_cite ltx_citemacro_citep">(Xue et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.07603v1#bib.bib48" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S2.T1.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.2.1.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.2.1.2.1.1" style="width:62.6pt;">Fully pre-trained
<br class="ltx_break"/>(Phi3-mini)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S2.T1.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.2.1.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.2.1.3.1.1" style="width:142.3pt;">Re-warmup
<br class="ltx_break"/>Caption and interleaved text-image data; no pure text</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S2.T1.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.2.1.4.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.2.1.4.1.1" style="width:56.9pt;">Re-warmup</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3.2" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="S2.T1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.3.2.1.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.3.2.1.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.3.2.1.1.1.1">Flamingo
<br class="ltx_break"/></span> <cite class="ltx_cite ltx_citemacro_citep">(Alayrac et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.07603v1#bib.bib2" title="">2022</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.3.2.2.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.3.2.2.1.1" style="width:62.6pt;">Fully pre-trained
<br class="ltx_break"/>(closed model)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.3.2.3.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.3.2.3.1.1" style="width:142.3pt;">Re-warmup
<br class="ltx_break"/>Caption and interleaved text-image data; no pure text</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.3.2.4.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.3.2.4.1.1" style="width:56.9pt;">(Skipped)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4.3" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="S2.T1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.4.3.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.4.3.1.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.4.3.1.1.1.1">IDEFICS
<br class="ltx_break"/></span> <cite class="ltx_cite ltx_citemacro_citep">(Laurençon et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.07603v1#bib.bib27" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.4.3.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.4.3.2.1.1" style="width:62.6pt;">Fully pre-trained
<br class="ltx_break"/>(Mistral-7B-v0.1)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.4.3.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.4.3.3.1.1" style="width:142.3pt;">Re-warmup
<br class="ltx_break"/>Interleaved text-image data; no pure text</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.4.3.4.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.4.3.4.1.1" style="width:56.9pt;">Re-warmup</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5.4" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="S2.T1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.5.4.1.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.5.4.1.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.5.4.1.1.1.1">MM1
<br class="ltx_break"/></span> <cite class="ltx_cite ltx_citemacro_citep">(McKinzie et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.07603v1#bib.bib37" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.5.4.2.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.5.4.2.1.1" style="width:62.6pt;">Fully pre-trained
<br class="ltx_break"/>(closed model)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.5.4.3.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.5.4.3.1.1" style="width:142.3pt;">Re-warmup
<br class="ltx_break"/>Various image-text ratios (100::0, 91::9, 86::14, 66::33)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.5.4.4.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.5.4.4.1.1" style="width:56.9pt;">Re-warmup</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.6.5" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="S2.T1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.6.5.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.6.5.1.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.6.5.1.1.1.1">DeepSeek-VL / DeepSeek-VL2
<br class="ltx_break"/></span> <cite class="ltx_cite ltx_citemacro_citep">(Lu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.07603v1#bib.bib36" title="">2024</a>; Wu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.07603v1#bib.bib47" title="">2024b</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.6.5.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.6.5.2.1.1" style="width:62.6pt;">Fully pre-trained
<br class="ltx_break"/>(DeepSeek)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.6.5.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.6.5.3.1.1" style="width:142.3pt;">Two-stage (re-warmup then re-warmup) 
<br class="ltx_break"/>Multitask; 30::70 image-text ratio</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.6.5.4.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.6.5.4.1.1" style="width:56.9pt;">Re-warmup</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.7.6" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="S2.T1.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.7.6.1.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.7.6.1.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.7.6.1.1.1.1">Qwen-VL
<br class="ltx_break"/></span> <cite class="ltx_cite ltx_citemacro_citep">(Bai et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.07603v1#bib.bib6" title="">2023</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.7.6.2.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.7.6.2.1.1" style="width:62.6pt;">Fully pre-trained
<br class="ltx_break"/>(Qwen)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.7.6.3.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.7.6.3.1.1" style="width:142.3pt;">Two-stage (re-warmup then re-warmup)
<br class="ltx_break"/>Caption then multitask; no pure text</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.7.6.4.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.7.6.4.1.1" style="width:56.9pt;">Re-warmup</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.8.7" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="S2.T1.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.8.7.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.8.7.1.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.8.7.1.1.1.1">PaliGemma
<br class="ltx_break"/></span> <cite class="ltx_cite ltx_citemacro_citep">(Beyer et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.07603v1#bib.bib9" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.8.7.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.8.7.2.1.1" style="width:62.6pt;">Fully pre-trained
<br class="ltx_break"/>(Gemma)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.8.7.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.8.7.3.1.1" style="width:142.3pt;">Two-stage (re-warmup then continue LR schedule)
<br class="ltx_break"/>Multitask; no pure text</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.8.7.4.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.8.7.4.1.1" style="width:56.9pt;">Continued LR schedule</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.9.8" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="S2.T1.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.9.8.1.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.9.8.1.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.9.8.1.1.1.1">Janus / Janus Pro
<br class="ltx_break"/></span> <cite class="ltx_cite ltx_citemacro_citep">(Wu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.07603v1#bib.bib46" title="">2024a</a>; Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.07603v1#bib.bib12" title="">2025</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.9.8.2.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.9.8.2.1.1" style="width:62.6pt;">Fully pre-trained
<br class="ltx_break"/>(DeepSeek-LLM)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.9.8.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.9.8.3.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.9.8.3.1.1" style="width:142.3pt;">Two-stage (re-warmup then re-warmup)
<br class="ltx_break"/>Multitask; no pure text, followed by 30::70 image-text ratio</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.9.8.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.9.8.4.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.9.8.4.1.1" style="width:56.9pt;">No warmup</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.10.9" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="S2.T1.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.10.9.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.10.9.1.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.10.9.1.1.1.1">Prismatic
<br class="ltx_break"/></span> <cite class="ltx_cite ltx_citemacro_citep">(Karamcheti et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.07603v1#bib.bib24" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.10.9.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.10.9.2.1.1" style="width:62.6pt;">Fully pre-trained
<br class="ltx_break"/>(LLaMA)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.10.9.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.10.9.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.10.9.3.1.1" style="width:142.3pt;">No image-text pre-training.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S2.T1.1.10.9.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.10.9.4.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.T1.1.10.9.4.1.1" style="width:56.9pt;">Re-warmup</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.11.10" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r" id="S2.T1.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.11.10.1.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.11.10.1.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.11.10.1.1.1.1">Ours</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S2.T1.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.11.10.2.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.11.10.2.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.11.10.2.1.1.1">Partially</span> pre-trained
<br class="ltx_break"/>(OpenLM)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S2.T1.1.11.10.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.11.10.3.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.11.10.3.1.1" style="width:142.3pt;">Continued LR schedule
<br class="ltx_break"/>Various image-text ratios</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S2.T1.1.11.10.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.11.10.4.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="S2.T1.1.11.10.4.1.1" style="width:56.9pt;">Re-warmup</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares different approaches to Vision-Language Model (VLM) training.  Traditional methods (shown in the table) first fully train a language model using only text data, then add image data in a later stage (fine-tuning). The authors' approach, however, introduces image data earlier in the pre-training process.  To maintain efficiency, this involves resuming a pre-trained language model at various points (e.g., 20%, 80%) and then incorporating the image data. The table lists several existing VLMs, detailing their pre-training and fine-tuning methods to highlight the differences with the proposed method.
> <details>
> <summary>read the caption</summary>
> Table 1: The conventional approach to VLM training first fully trains a language model on text-only data, and adds images in a second or third stage of training. In this work, we instead introduce image data earlier in pre-training. To do this efficiently, we resume a language model during the course of its pre-training at various stages (e.g., 20% of the way through training) and introduce images midway through training.
> </details>





### In-depth insights


#### Image Pre-Train
Image pre-training, as explored in the research paper, is a crucial step in vision-language models (VLMs), significantly impacting downstream task performance. The timing of image data introduction is critical; **pre-training with image and text mixtures allows models to perform better on vision-language tasks**, maintaining strong text-only evaluations. The paper highlights that **introducing visual tokens partially through pre-training yields better average improvement** compared to fully pre-trained models. Varying image-to-text data ratios during the pre-training cooldown phase impacts domain performance. Experiments revealed an optimal visual token percentage at a 1B parameter regime. Furthermore, **instruction fine-tuning image tokens are crucial for downstream performance**, affecting pure text and vision-language tasks. This process actively impacts the model, but introducing instruction tokens boosts vision-language tasks. 

#### Text/Image Ratio
The text/image ratio is a crucial hyperparameter in vision-language models (VLMs). It dictates the blend of textual and visual information during pre-training, influencing the model's ability to understand and generate content grounded in both modalities. **An optimal ratio enables the model to effectively learn the relationship between text and images, resulting in better downstream performance on various vision-language tasks**. Too much text might lead to a neglect of visual cues, while excessive image data could result in a weaker understanding of language nuances. Finding the right balance is essential for achieving strong performance on diverse tasks, requiring careful tuning and experimentation. The ratio might vary based on dataset size, model architecture and specific task goals.

#### Fine-tuning Impact
**Fine-tuning profoundly shapes VLM behavior**, balancing vision-language task improvements against text performance degradation.  Initial fine-tuning boosts multimodal understanding, yet prolonged training risks overfitting, eroding text capabilities.  The optimal duration is a delicate balance, a 'sweet spot' where vision and language skills synergize without compromising either.  Further research is needed to explore adaptive fine-tuning strategies that dynamically adjust the training process based on task-specific performance, potentially mitigating the trade-off between vision and text and unlocking further gains.

#### Scaling Bottleneck
Though this paper doesn't explicitly address a section titled "Scaling Bottleneck", several insights allude to potential bottlenecks when scaling Vision-Language Models (VLMs). **Data quality emerges as a key constraint:** simply increasing the volume of image-text pairs may not suffice, as the paper highlights the importance of curated datasets and high-quality captions. Furthermore, the **model architecture itself presents a bottleneck.** The paper observes performance differences between models of varying sizes, suggesting that a simple increase in parameters isn't a guaranteed path to improvement. The **training process itself introduces limitations.** The paper's exploration of different pre-training strategies demonstrates that the order and timing of integrating image data can significantly impact performance. **Compute cost is also a bottleneck:** Scaling to larger models and datasets demands significant resources, hindering rapid iteration and experimentation for many researchers.

#### Dataset Matters
The choice of dataset is paramount in vision-language pre-training. **High-quality, curated data** is essential, as noisy or irrelevant data can significantly hinder a model's ability to learn meaningful relationships between images and text. The dataset's diversity, coverage of visual concepts, and caption quality all influence downstream performance. Specifically for datasets: **DataComp-DR** is better overall. This selection has significant improvement across different datasets. Thus, the appropriate dataset has a key role in improving the efficiency for VLMs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.07603/x2.png)

> 🔼 This figure illustrates a common architecture used to integrate vision into transformer-based language models.  It shows how an image encoder processes an image, converting it into a numerical representation. This representation is then passed through a Multi-Layer Perceptron (MLP), which transforms the data into a format compatible with the transformer model's text embeddings. Finally, the image and text embeddings are combined and processed by a decoder-only transformer to generate a comprehensive textual response based on the combined input.
> <details>
> <summary>read the caption</summary>
> Figure 2: The commonly used framework we apply to add vision capabilities to a transformer model.
> </details>



![](https://arxiv.org/html/2503.07603/x3.png)

> 🔼 Figure 3 illustrates the learning rate schedules employed in the experiments. The 'Main Schedule' represents the learning rate used during the initial text-only pre-training phase.  The colored lines depict the learning rate schedules for the subsequent image-text pre-training phases.  Each colored schedule covers 28 billion tokens. For better visualization and readability, the x-axis has been scaled up to represent 280 billion tokens, while maintaining the relative proportions of each schedule.
> <details>
> <summary>read the caption</summary>
> Figure 3: Representation of the different learning rate schedules used for our experiments. ‘Main schedule’ corresponds to the learning rate for the initial, text-only pretraining. Other colored schedules are the ones used for image-text training and extend over 28B tokens each. They have been upscaled and appear as extending over 280B tokens for readability.
> </details>



![](https://arxiv.org/html/2503.07603/x14.png)

> 🔼 This figure displays the impact of varying the length of text-only pre-training before introducing image data during the training of a vision-language model (VLM).  The experiment involves training VLMs with different amounts of text-only pre-training (0%, 20%, 40%, 60%, 80%, and 100%) before incorporating image data. The results are evaluated on both vision-based and text-based benchmarks. The left panel shows the aggregate performance across multiple vision and text tasks, while the right panel focuses specifically on the VQA-v2 and ARC-easy benchmarks. The findings suggest that introducing image data around 80% of the way through text-only pre-training yields the best overall performance, maintaining strong performance on both vision and text tasks.  A key note is that the 100% text-only pre-training point uses a different learning rate schedule than the other points, as detailed in Figure 3 of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 4: Varying the length of text-only pre-training. We analyze the impact of adding image data after varying amounts of text-only pre-training, showing results on vision benchmarks (green) and text benchmarks (blue). On the left, we show results across a suite of vision and text benchmarks; on the right, we plot two common benchmarks, VQA-v2 and ARC-easy. Introducing images at around 80% of the way through training performs best, maintaining high vision and text task performance. Note: The points at 100% are marked with hollow circles to highlight that they are trained with a different learning rate schedule, as shown in Figure 3
> </details>



![](https://arxiv.org/html/2503.07603/x15.png)

> 🔼 This figure analyzes the effect of varying the ratio of image to text data during the image-text pre-training phase of a vision-language model (VLM).  The experiment starts with a model already pre-trained on text-only data (80% completion).  The x-axis represents the percentage of image data included in the subsequent image-text pre-training phase, while the y-axis displays the model's performance on various vision-language and text-only tasks.  The key takeaway is that adding a small amount of image data during this pre-training stage significantly boosts vision-language performance without negatively impacting the model's proficiency on text-only tasks. This is in contrast to the findings shown in Figure 6, where the model is trained from scratch.
> <details>
> <summary>read the caption</summary>
> Figure 5: Varying the ratio of image to text data, after some text-only pretraining. We analyze the impact of the ratio of image to text data in pre-training, after the model has seen text-only data for most of pre-training (80%). Unlike when training from scratch (Figure 6), we find that adding vision data significantly helps vision performance, while maintaining high text accuracy.
> </details>



![](https://arxiv.org/html/2503.07603/x16.png)

> 🔼 This figure presents the results of an experiment where vision-language models (VLMs) were trained from scratch with varying ratios of image and text data.  Unlike experiments where models were pre-trained with text before introducing images, this experiment reveals that adding visual data during initial training negatively impacts both vision and text-based task performance.  The results indicate that a period of initial language-only pre-training is crucial for optimal VLM performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: Varying the ratio of image to text data, when training from scratch. We analyze the impact of the image-text ratio in pre-training from scratch without any language-only pre-training. Perhaps surprisingly, when training from scratch, adding vision data consistently hurts both vision and text performance, suggesting a period of language-only training early on is important for VLMs.
> </details>



![](https://arxiv.org/html/2503.07603/x17.png)

> 🔼 This figure explores the effect of including instruction tuning data within the image-text pre-training phase on the performance of Vision Language Models (VLMs).  The experiment varied the proportion of instruction tuning data mixed with image caption data while keeping other training parameters constant.  The results surprisingly showed that including instruction tuning data during pre-training negatively impacts the model's performance on downstream tasks, contrary to expectations. The authors hypothesize this is due to potential overfitting or a disruption of the learning process caused by mixing instruction-tuning data with image-caption pairs at this model scale.
> <details>
> <summary>read the caption</summary>
> Figure 7: Varying the proportion of instruction tuning data in the image mix. Is including instruction tuning data during pre-training is helpful for VLMs? Surprisingly, we find that adding this data to pre-training harms performance. We hypothesize that this may be due to overfitting, or because mixing instruction tuning data with image-caption pairs degrades learning at this scale.
> </details>



![](https://arxiv.org/html/2503.07603/x18.png)

> 🔼 This figure shows the impact of the number of fine-tuning epochs on the model's performance on both vision and text tasks. The x-axis represents the number of fine-tuning epochs, while the y-axis shows the stable score (aggregated performance across multiple tasks) for both vision and text.  The results indicate that fine-tuning for 2-4 epochs after the initial pre-training yields the best performance on vision tasks, with 2 epochs being optimal for maintaining a balance between vision and text performance.  Beyond 4 epochs, performance on both vision and text tasks starts to degrade, suggesting overfitting.
> <details>
> <summary>read the caption</summary>
> Figure 8:  Varying the number of fine-tuning epochs. We find that fine-tuning for 2-4 epochs after pre-training performs best for vision tasks, with 2 epochs being a sweet spot for maintaining text performance while achieving high vision performance.
> </details>



![](https://arxiv.org/html/2503.07603/extracted/6268316/figures/tokenmults.png)

> 🔼 This figure displays the performance of a 1-billion parameter model on several vision and text benchmarks, showing how performance changes based on the amount of text-only pre-training.  Specifically, it illustrates how performance evolves as the model progresses through its initial text-only training phase.  Each point on the graph represents the model's performance at different stages of text-only pre-training, expressed as the percentage of completion. The results highlight the interplay between the amount of text-only training and the model's ability to generalize to downstream tasks in both vision and language domains.
> <details>
> <summary>read the caption</summary>
> Figure 9: Evolution of the performance of the 1b model on vision benchmarks and text benchmarks as functions of the text-only pre-training completion.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T2.19">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T2.17.5">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A1.T2.13.1.1"><math alttext="N" class="ltx_Math" display="inline" id="A1.T2.13.1.1.m1.1"><semantics id="A1.T2.13.1.1.m1.1a"><mi id="A1.T2.13.1.1.m1.1.1" xref="A1.T2.13.1.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="A1.T2.13.1.1.m1.1b"><ci id="A1.T2.13.1.1.m1.1.1.cmml" xref="A1.T2.13.1.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.13.1.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="A1.T2.13.1.1.m1.1d">italic_N</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.14.2.2"><math alttext="n_{\text{layers}}" class="ltx_Math" display="inline" id="A1.T2.14.2.2.m1.1"><semantics id="A1.T2.14.2.2.m1.1a"><msub id="A1.T2.14.2.2.m1.1.1" xref="A1.T2.14.2.2.m1.1.1.cmml"><mi id="A1.T2.14.2.2.m1.1.1.2" xref="A1.T2.14.2.2.m1.1.1.2.cmml">n</mi><mtext id="A1.T2.14.2.2.m1.1.1.3" xref="A1.T2.14.2.2.m1.1.1.3a.cmml">layers</mtext></msub><annotation-xml encoding="MathML-Content" id="A1.T2.14.2.2.m1.1b"><apply id="A1.T2.14.2.2.m1.1.1.cmml" xref="A1.T2.14.2.2.m1.1.1"><csymbol cd="ambiguous" id="A1.T2.14.2.2.m1.1.1.1.cmml" xref="A1.T2.14.2.2.m1.1.1">subscript</csymbol><ci id="A1.T2.14.2.2.m1.1.1.2.cmml" xref="A1.T2.14.2.2.m1.1.1.2">𝑛</ci><ci id="A1.T2.14.2.2.m1.1.1.3a.cmml" xref="A1.T2.14.2.2.m1.1.1.3"><mtext id="A1.T2.14.2.2.m1.1.1.3.cmml" mathsize="70%" xref="A1.T2.14.2.2.m1.1.1.3">layers</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.14.2.2.m1.1c">n_{\text{layers}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.14.2.2.m1.1d">italic_n start_POSTSUBSCRIPT layers end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.15.3.3"><math alttext="n_{\text{heads}}" class="ltx_Math" display="inline" id="A1.T2.15.3.3.m1.1"><semantics id="A1.T2.15.3.3.m1.1a"><msub id="A1.T2.15.3.3.m1.1.1" xref="A1.T2.15.3.3.m1.1.1.cmml"><mi id="A1.T2.15.3.3.m1.1.1.2" xref="A1.T2.15.3.3.m1.1.1.2.cmml">n</mi><mtext id="A1.T2.15.3.3.m1.1.1.3" xref="A1.T2.15.3.3.m1.1.1.3a.cmml">heads</mtext></msub><annotation-xml encoding="MathML-Content" id="A1.T2.15.3.3.m1.1b"><apply id="A1.T2.15.3.3.m1.1.1.cmml" xref="A1.T2.15.3.3.m1.1.1"><csymbol cd="ambiguous" id="A1.T2.15.3.3.m1.1.1.1.cmml" xref="A1.T2.15.3.3.m1.1.1">subscript</csymbol><ci id="A1.T2.15.3.3.m1.1.1.2.cmml" xref="A1.T2.15.3.3.m1.1.1.2">𝑛</ci><ci id="A1.T2.15.3.3.m1.1.1.3a.cmml" xref="A1.T2.15.3.3.m1.1.1.3"><mtext id="A1.T2.15.3.3.m1.1.1.3.cmml" mathsize="70%" xref="A1.T2.15.3.3.m1.1.1.3">heads</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.15.3.3.m1.1c">n_{\text{heads}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.15.3.3.m1.1d">italic_n start_POSTSUBSCRIPT heads end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.16.4.4"><math alttext="d_{\text{model}}" class="ltx_Math" display="inline" id="A1.T2.16.4.4.m1.1"><semantics id="A1.T2.16.4.4.m1.1a"><msub id="A1.T2.16.4.4.m1.1.1" xref="A1.T2.16.4.4.m1.1.1.cmml"><mi id="A1.T2.16.4.4.m1.1.1.2" xref="A1.T2.16.4.4.m1.1.1.2.cmml">d</mi><mtext id="A1.T2.16.4.4.m1.1.1.3" xref="A1.T2.16.4.4.m1.1.1.3a.cmml">model</mtext></msub><annotation-xml encoding="MathML-Content" id="A1.T2.16.4.4.m1.1b"><apply id="A1.T2.16.4.4.m1.1.1.cmml" xref="A1.T2.16.4.4.m1.1.1"><csymbol cd="ambiguous" id="A1.T2.16.4.4.m1.1.1.1.cmml" xref="A1.T2.16.4.4.m1.1.1">subscript</csymbol><ci id="A1.T2.16.4.4.m1.1.1.2.cmml" xref="A1.T2.16.4.4.m1.1.1.2">𝑑</ci><ci id="A1.T2.16.4.4.m1.1.1.3a.cmml" xref="A1.T2.16.4.4.m1.1.1.3"><mtext id="A1.T2.16.4.4.m1.1.1.3.cmml" mathsize="70%" xref="A1.T2.16.4.4.m1.1.1.3">model</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.16.4.4.m1.1c">d_{\text{model}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.16.4.4.m1.1d">italic_d start_POSTSUBSCRIPT model end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.17.5.5"><math alttext="d_{\text{head}}" class="ltx_Math" display="inline" id="A1.T2.17.5.5.m1.1"><semantics id="A1.T2.17.5.5.m1.1a"><msub id="A1.T2.17.5.5.m1.1.1" xref="A1.T2.17.5.5.m1.1.1.cmml"><mi id="A1.T2.17.5.5.m1.1.1.2" xref="A1.T2.17.5.5.m1.1.1.2.cmml">d</mi><mtext id="A1.T2.17.5.5.m1.1.1.3" xref="A1.T2.17.5.5.m1.1.1.3a.cmml">head</mtext></msub><annotation-xml encoding="MathML-Content" id="A1.T2.17.5.5.m1.1b"><apply id="A1.T2.17.5.5.m1.1.1.cmml" xref="A1.T2.17.5.5.m1.1.1"><csymbol cd="ambiguous" id="A1.T2.17.5.5.m1.1.1.1.cmml" xref="A1.T2.17.5.5.m1.1.1">subscript</csymbol><ci id="A1.T2.17.5.5.m1.1.1.2.cmml" xref="A1.T2.17.5.5.m1.1.1.2">𝑑</ci><ci id="A1.T2.17.5.5.m1.1.1.3a.cmml" xref="A1.T2.17.5.5.m1.1.1.3"><mtext id="A1.T2.17.5.5.m1.1.1.3.cmml" mathsize="70%" xref="A1.T2.17.5.5.m1.1.1.3">head</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.17.5.5.m1.1c">d_{\text{head}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.17.5.5.m1.1d">italic_d start_POSTSUBSCRIPT head end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.17.5.6">Warmup</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.17.5.7">Learning rate</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.17.5.8">Batch size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.17.5.9">Training tokens</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.17.5.10">A100 hours</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T2.18.6">
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T2.18.6.2">79M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.18.6.3">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.18.6.4">4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.18.6.5">512</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.18.6.6">128</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.18.6.7">400</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.18.6.1">3<math alttext="e" class="ltx_Math" display="inline" id="A1.T2.18.6.1.m1.1"><semantics id="A1.T2.18.6.1.m1.1a"><mi id="A1.T2.18.6.1.m1.1.1" xref="A1.T2.18.6.1.m1.1.1.cmml">e</mi><annotation-xml encoding="MathML-Content" id="A1.T2.18.6.1.m1.1b"><ci id="A1.T2.18.6.1.m1.1.1.cmml" xref="A1.T2.18.6.1.m1.1.1">𝑒</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.18.6.1.m1.1c">e</annotation><annotation encoding="application/x-llamapun" id="A1.T2.18.6.1.m1.1d">italic_e</annotation></semantics></math>-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.18.6.8">512</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.18.6.9">237B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.18.6.10">1.2k</td>
</tr>
<tr class="ltx_tr" id="A1.T2.19.7">
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T2.19.7.2">1.4B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.7.3">24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.7.4">16</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.7.5">2,048</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.7.6">128</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.7.7">5000</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.7.1">1<math alttext="e" class="ltx_Math" display="inline" id="A1.T2.19.7.1.m1.1"><semantics id="A1.T2.19.7.1.m1.1a"><mi id="A1.T2.19.7.1.m1.1.1" xref="A1.T2.19.7.1.m1.1.1.cmml">e</mi><annotation-xml encoding="MathML-Content" id="A1.T2.19.7.1.m1.1b"><ci id="A1.T2.19.7.1.m1.1.1.cmml" xref="A1.T2.19.7.1.m1.1.1">𝑒</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.19.7.1.m1.1c">e</annotation><annotation encoding="application/x-llamapun" id="A1.T2.19.7.1.m1.1d">italic_e</annotation></semantics></math>-2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.7.8">256</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.7.9">4.3T</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.7.10">106k</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for training two different sized language models: a 79M parameter model and a 1.4B parameter model.  It lists the number of layers, attention heads, model width, and width per attention head for each model.  It also specifies the batch size (in sequences of 2048 tokens), the training token count, the learning rate, the warmup setting, and the approximate A100 GPU hours utilized for training at a scaling factor (M) of 150.  Importantly, the table notes that for the larger 1.4B parameter model, a batch size of 256 sequences produced slightly better results than a batch size of 512.
> <details>
> <summary>read the caption</summary>
> Table 2: The two models and set of hyperparameters used in our experiments. Models have number of parameters N𝑁Nitalic_N, with number of layers nlayerssubscript𝑛layersn_{\text{layers}}italic_n start_POSTSUBSCRIPT layers end_POSTSUBSCRIPT, number of attention heads nheadssubscript𝑛headsn_{\text{heads}}italic_n start_POSTSUBSCRIPT heads end_POSTSUBSCRIPT, model width dmodelsubscript𝑑modeld_{\text{model}}italic_d start_POSTSUBSCRIPT model end_POSTSUBSCRIPT, and width per attention head dheadsubscript𝑑headd_{\text{head}}italic_d start_POSTSUBSCRIPT head end_POSTSUBSCRIPT. Batch sizes are global and in units of sequences. Each sequence has 2,048 tokens. A100 GPU hours are at M=150𝑀150M=150italic_M = 150. For the 1.4B scale, a batch size of 256 performs slightly better than 512.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A8.T3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A8.T3.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A8.T3.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.1.1.1.1">
<span class="ltx_p" id="A8.T3.1.1.1.1.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="A8.T3.1.1.1.1.1.1.1">Dataset</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A8.T3.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.1.1.2.1">
<span class="ltx_p" id="A8.T3.1.1.1.2.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="A8.T3.1.1.1.2.1.1.1">Model 1</span> (with image data in pre-training)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T3.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.1.1.3.1">
<span class="ltx_p" id="A8.T3.1.1.1.3.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="A8.T3.1.1.1.3.1.1.1">Model 2</span> (no image data in pre-training)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T3.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A8.T3.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.2.2.1.1">
<span class="ltx_p" id="A8.T3.1.2.2.1.1.1" style="width:56.9pt;">VQAv2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A8.T3.1.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.2.2.2.1">
<span class="ltx_p" id="A8.T3.1.2.2.2.1.1" style="width:113.8pt;">76.39</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A8.T3.1.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.2.2.3.1">
<span class="ltx_p" id="A8.T3.1.2.2.3.1.1" style="width:113.8pt;">74.69</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T3.1.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A8.T3.1.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.3.3.1.1">
<span class="ltx_p" id="A8.T3.1.3.3.1.1.1" style="width:56.9pt;">GQA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A8.T3.1.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.3.3.2.1">
<span class="ltx_p" id="A8.T3.1.3.3.2.1.1" style="width:113.8pt;">61.08</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T3.1.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.3.3.3.1">
<span class="ltx_p" id="A8.T3.1.3.3.3.1.1" style="width:113.8pt;">60.6</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T3.1.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A8.T3.1.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.4.4.1.1">
<span class="ltx_p" id="A8.T3.1.4.4.1.1.1" style="width:56.9pt;">VizWiz</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A8.T3.1.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.4.4.2.1">
<span class="ltx_p" id="A8.T3.1.4.4.2.1.1" style="width:113.8pt;">10.88</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T3.1.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.4.4.3.1">
<span class="ltx_p" id="A8.T3.1.4.4.3.1.1" style="width:113.8pt;">11.69</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T3.1.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A8.T3.1.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.5.5.1.1">
<span class="ltx_p" id="A8.T3.1.5.5.1.1.1" style="width:56.9pt;">TextVQA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A8.T3.1.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.5.5.2.1">
<span class="ltx_p" id="A8.T3.1.5.5.2.1.1" style="width:113.8pt;">0.46828</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T3.1.5.5.3">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.5.5.3.1">
<span class="ltx_p" id="A8.T3.1.5.5.3.1.1" style="width:113.8pt;">0.41624</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T3.1.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A8.T3.1.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.6.6.1.1">
<span class="ltx_p" id="A8.T3.1.6.6.1.1.1" style="width:56.9pt;">RefCOCO</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A8.T3.1.6.6.2">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.6.6.2.1">
<span class="ltx_p" id="A8.T3.1.6.6.2.1.1" style="width:113.8pt;">0.64168</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T3.1.6.6.3">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.6.6.3.1">
<span class="ltx_p" id="A8.T3.1.6.6.3.1.1" style="width:113.8pt;">0.58889</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T3.1.7.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A8.T3.1.7.7.1">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.7.7.1.1">
<span class="ltx_p" id="A8.T3.1.7.7.1.1.1" style="width:56.9pt;">OCID</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A8.T3.1.7.7.2">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.7.7.2.1">
<span class="ltx_p" id="A8.T3.1.7.7.2.1.1" style="width:113.8pt;">0.46107</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T3.1.7.7.3">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.7.7.3.1">
<span class="ltx_p" id="A8.T3.1.7.7.3.1.1" style="width:113.8pt;">0.39696</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T3.1.8.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A8.T3.1.8.8.1">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.8.8.1.1">
<span class="ltx_p" id="A8.T3.1.8.8.1.1.1" style="width:56.9pt;">POPE</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A8.T3.1.8.8.2">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.8.8.2.1">
<span class="ltx_p" id="A8.T3.1.8.8.2.1.1" style="width:113.8pt;">0.87478</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T3.1.8.8.3">
<span class="ltx_inline-block ltx_align_top" id="A8.T3.1.8.8.3.1">
<span class="ltx_p" id="A8.T3.1.8.8.3.1.1" style="width:113.8pt;">0.87113</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the performance comparison of two 7B parameter models on various vision-language tasks.  Model 1 incorporates image data during its pre-training phase, while Model 2 does not.  The results show that Model 1, which includes images in pre-training, generally outperforms Model 2 on these tasks. This observation supports the findings from experiments conducted using smaller model sizes, suggesting that the beneficial impact of incorporating image data during pre-training is consistent across different model scales.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of 7B models on various vision-language tasks. We see that model 1 (with images in pre-training) generally outperforms model 2 (no images in pre-training). This supports the findings that we observed in the smaller scale experiments.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A9.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A9.T4.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A9.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A9.T4.1.1.1.1.1">Checkpoint</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A9.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A9.T4.1.1.1.2.1">Frozen?</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A9.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A9.T4.1.1.1.3.1">Text-Image Ratio</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A9.T4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A9.T4.1.1.1.4.1">VQA-v2 score</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A9.T4.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A9.T4.1.2.1.1">80%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A9.T4.1.2.1.2">yes</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A9.T4.1.2.1.3">5%</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A9.T4.1.2.1.4">58.71</td>
</tr>
<tr class="ltx_tr" id="A9.T4.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A9.T4.1.3.2.1">80%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A9.T4.1.3.2.2">yes</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A9.T4.1.3.2.3">30%</td>
<td class="ltx_td ltx_align_center" id="A9.T4.1.3.2.4">60.22</td>
</tr>
<tr class="ltx_tr" id="A9.T4.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A9.T4.1.4.3.1">80%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A9.T4.1.4.3.2">yes</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A9.T4.1.4.3.3">50%</td>
<td class="ltx_td ltx_align_center" id="A9.T4.1.4.3.4">60.85</td>
</tr>
<tr class="ltx_tr" id="A9.T4.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T4.1.5.4.1">80%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T4.1.5.4.2">no</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T4.1.5.4.3">5%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T4.1.5.4.4"><span class="ltx_text ltx_font_bold" id="A9.T4.1.5.4.4.1">68.55</span></td>
</tr>
<tr class="ltx_tr" id="A9.T4.1.6.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A9.T4.1.6.5.1">80%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A9.T4.1.6.5.2">no</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A9.T4.1.6.5.3">30%</td>
<td class="ltx_td ltx_align_center" id="A9.T4.1.6.5.4"><span class="ltx_text ltx_font_bold" id="A9.T4.1.6.5.4.1">69.42</span></td>
</tr>
<tr class="ltx_tr" id="A9.T4.1.7.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A9.T4.1.7.6.1">80%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A9.T4.1.7.6.2">no</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A9.T4.1.7.6.3">50%</td>
<td class="ltx_td ltx_align_center" id="A9.T4.1.7.6.4"><span class="ltx_text ltx_font_bold" id="A9.T4.1.7.6.4.1">71.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results comparing the performance of vision-language models with frozen versus unfrozen image encoders.  The models were trained using a mix of DataComp-DR caption data and DCLM text data, followed by three epochs of fine-tuning.  The results demonstrate that across various settings and training configurations, models with frozen image encoders consistently outperformed those with unfrozen encoders.
> <details>
> <summary>read the caption</summary>
> Table 4: All results are taken with the mix of DataComp-DR caption data and DCLM text data and fine-tuned on 3 epochs. Across multiple settings, the unfrozen models perform worse in general.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A10.T6.fig1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A10.T6.fig1.1.1.1" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="A10.T6.fig1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig1.1.1.1.1.1" style="background-color:#D9D9D9;">
<span class="ltx_p" id="A10.T6.fig1.1.1.1.1.1.1" style="width:59.8pt;">
<span class="ltx_text ltx_font_bold" id="A10.T6.fig1.1.1.1.1.1.1.1">Dataset Mix</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A10.T6.fig1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig1.1.1.1.2.1" style="background-color:#D9D9D9;">
<span class="ltx_p" id="A10.T6.fig1.1.1.1.2.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.fig1.1.1.1.2.1.1.1">Vision Stable Score</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A10.T6.fig1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig1.1.1.1.3.1" style="background-color:#D9D9D9;">
<span class="ltx_p" id="A10.T6.fig1.1.1.1.3.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.fig1.1.1.1.3.1.1.1">Text Stable Score</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A10.T6.fig1.1.2.1" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A10.T6.fig1.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig1.1.2.1.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A10.T6.fig1.1.2.1.1.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.fig1.1.2.1.1.1.1.1">DataComp</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A10.T6.fig1.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig1.1.2.1.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A10.T6.fig1.1.2.1.2.1.1" style="width:42.7pt;">0.4603</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A10.T6.fig1.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig1.1.2.1.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A10.T6.fig1.1.2.1.3.1.1" style="width:42.7pt;">0.1168</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T6.fig1.1.3.2" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A10.T6.fig1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig1.1.3.2.1.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="A10.T6.fig1.1.3.2.1.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.fig1.1.3.2.1.1.1.1">DataComp-DR</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A10.T6.fig1.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig1.1.3.2.2.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="A10.T6.fig1.1.3.2.2.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.fig1.1.3.2.2.1.1.1">0.4607</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A10.T6.fig1.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig1.1.3.2.3.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="A10.T6.fig1.1.3.2.3.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.fig1.1.3.2.3.1.1.1">0.1503</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T6.fig1.1.4.3" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A10.T6.fig1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig1.1.4.3.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A10.T6.fig1.1.4.3.1.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.fig1.1.4.3.1.1.1.1">CC12M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A10.T6.fig1.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig1.1.4.3.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A10.T6.fig1.1.4.3.2.1.1" style="width:42.7pt;">0.4556</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A10.T6.fig1.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig1.1.4.3.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A10.T6.fig1.1.4.3.3.1.1" style="width:42.7pt;">0.1298</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T6.fig1.1.5.4" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r" id="A10.T6.fig1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig1.1.5.4.1.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="A10.T6.fig1.1.5.4.1.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.fig1.1.5.4.1.1.1.1">ShutterStock</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="A10.T6.fig1.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig1.1.5.4.2.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="A10.T6.fig1.1.5.4.2.1.1" style="width:42.7pt;">0.4518</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="A10.T6.fig1.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig1.1.5.4.3.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="A10.T6.fig1.1.5.4.3.1.1" style="width:42.7pt;">0.1310</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments using different random seeds and image ratios during the image-text pre-training phase.  The models were all initialized from a 20% checkpoint of a text-only pre-trained model and further trained using a mixture of DataComp-DR caption data and DCLM text data. The table shows how VQA-v2 scores vary across different random seeds (7 and 365) and image ratios (1%, 5%, 10%) with different numbers of fine-tuning epochs (1 and 2).  This illustrates the impact of these factors on model performance.
> <details>
> <summary>read the caption</summary>
> Table 7: All models above were trained from a 20% checkpoint on a mix of DataComp-DR caption data and DCLM text data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A10.T6.fig2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A10.T6.fig2.1.1.1" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="A10.T6.fig2.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig2.1.1.1.1.1" style="background-color:#D9D9D9;">
<span class="ltx_p" id="A10.T6.fig2.1.1.1.1.1.1" style="width:59.8pt;">
<span class="ltx_text ltx_font_bold" id="A10.T6.fig2.1.1.1.1.1.1.1">Image Encoder</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A10.T6.fig2.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig2.1.1.1.2.1" style="background-color:#D9D9D9;">
<span class="ltx_p" id="A10.T6.fig2.1.1.1.2.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.fig2.1.1.1.2.1.1.1">Vision Stable Score</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A10.T6.fig2.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig2.1.1.1.3.1" style="background-color:#D9D9D9;">
<span class="ltx_p" id="A10.T6.fig2.1.1.1.3.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.fig2.1.1.1.3.1.1.1">Text Stable Score</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A10.T6.fig2.1.2.1" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A10.T6.fig2.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig2.1.2.1.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A10.T6.fig2.1.2.1.1.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.fig2.1.2.1.1.1.1.1">SigLIP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A10.T6.fig2.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig2.1.2.1.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A10.T6.fig2.1.2.1.2.1.1" style="width:42.7pt;">0.4607</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A10.T6.fig2.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig2.1.2.1.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A10.T6.fig2.1.2.1.3.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.fig2.1.2.1.3.1.1.1">0.1503</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T6.fig2.1.3.2" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A10.T6.fig2.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig2.1.3.2.1.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="A10.T6.fig2.1.3.2.1.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.fig2.1.3.2.1.1.1.1">SigLIP + DINO</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A10.T6.fig2.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig2.1.3.2.2.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="A10.T6.fig2.1.3.2.2.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.fig2.1.3.2.2.1.1.1">0.4696</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A10.T6.fig2.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig2.1.3.2.3.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="A10.T6.fig2.1.3.2.3.1.1" style="width:42.7pt;">0.1347</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T6.fig2.1.4.3" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r" id="A10.T6.fig2.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig2.1.4.3.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A10.T6.fig2.1.4.3.1.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.fig2.1.4.3.1.1.1.1">Patch 
<br class="ltx_break"/>Projection</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="A10.T6.fig2.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig2.1.4.3.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A10.T6.fig2.1.4.3.2.1.1" style="width:42.7pt;">0.1564</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="A10.T6.fig2.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T6.fig2.1.4.3.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A10.T6.fig2.1.4.3.3.1.1" style="width:42.7pt;">0.1503</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents a comprehensive comparison of benchmark results across various stages of the model training process. It includes results from models trained with different ratios of text and image data, highlighting the impact of incorporating visual information at various stages.  The 'Ours' column specifically showcases the performance of the model trained using the authors' proposed method: 90% text and 10% image caption data in pre-training, followed by four epochs of LLaVA fine-tuning. This allows for a direct comparison of the authors' approach against the baseline and other training variations.
> <details>
> <summary>read the caption</summary>
> Table 8: Benchmark results at different stages of the training process. 'Ours' is our model trained with 10% image captioning and 90% text before 4 epochs of LLaVA fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A11.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A11.T7.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A11.T7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A11.T7.1.1.1.1.1">Random Seed</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A11.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A11.T7.1.1.1.2.1">Image Ratio</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A11.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A11.T7.1.1.1.3.1">FT epochs</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A11.T7.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A11.T7.1.1.1.4.1">VQA-v2 score</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A11.T7.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A11.T7.1.2.1.1">7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A11.T7.1.2.1.2">1%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A11.T7.1.2.1.3">1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A11.T7.1.2.1.4">73.83</td>
</tr>
<tr class="ltx_tr" id="A11.T7.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.3.2.1">7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.3.2.2">1%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.3.2.3">2</td>
<td class="ltx_td ltx_align_center" id="A11.T7.1.3.2.4">75.39</td>
</tr>
<tr class="ltx_tr" id="A11.T7.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.4.3.1">7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.4.3.2">5%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.4.3.3">1</td>
<td class="ltx_td ltx_align_center" id="A11.T7.1.4.3.4">75.36</td>
</tr>
<tr class="ltx_tr" id="A11.T7.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.5.4.1">7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.5.4.2">5%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.5.4.3">2</td>
<td class="ltx_td ltx_align_center" id="A11.T7.1.5.4.4">76.39</td>
</tr>
<tr class="ltx_tr" id="A11.T7.1.6.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.6.5.1">7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.6.5.2">10%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.6.5.3">1</td>
<td class="ltx_td ltx_align_center" id="A11.T7.1.6.5.4">75.39</td>
</tr>
<tr class="ltx_tr" id="A11.T7.1.7.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.7.6.1">7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.7.6.2">10%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.7.6.3">2</td>
<td class="ltx_td ltx_align_center" id="A11.T7.1.7.6.4">76.5</td>
</tr>
<tr class="ltx_tr" id="A11.T7.1.8.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A11.T7.1.8.7.1">365</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A11.T7.1.8.7.2">1%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A11.T7.1.8.7.3">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A11.T7.1.8.7.4">74.46</td>
</tr>
<tr class="ltx_tr" id="A11.T7.1.9.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.9.8.1">365</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.9.8.2">1%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.9.8.3">2</td>
<td class="ltx_td ltx_align_center" id="A11.T7.1.9.8.4">75.9</td>
</tr>
<tr class="ltx_tr" id="A11.T7.1.10.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.10.9.1">365</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.10.9.2">5%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.10.9.3">1</td>
<td class="ltx_td ltx_align_center" id="A11.T7.1.10.9.4">75.39</td>
</tr>
<tr class="ltx_tr" id="A11.T7.1.11.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.11.10.1">365</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.11.10.2">5%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.11.10.3">2</td>
<td class="ltx_td ltx_align_center" id="A11.T7.1.11.10.4">76.47</td>
</tr>
<tr class="ltx_tr" id="A11.T7.1.12.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.12.11.1">365</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.12.11.2">10%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.12.11.3">1</td>
<td class="ltx_td ltx_align_center" id="A11.T7.1.12.11.4">75.55</td>
</tr>
<tr class="ltx_tr" id="A11.T7.1.13.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.13.12.1">365</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.13.12.2">10%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A11.T7.1.13.12.3">2</td>
<td class="ltx_td ltx_align_center" id="A11.T7.1.13.12.4">76.58</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 9 presents a comparison of the performance of three different Vision-Language Models (VLMs) on a set of benchmark tasks.  The models compared are: the authors' model (trained using a specific recipe described in the paper), Prismatic 7B, and PaliGemma 3B. The authors' model was trained with 10% image caption data and 90% text data, followed by 4 epochs of fine-tuning using the LLaVA dataset. The table shows the performance of these models on several vision and text benchmarks, providing a quantitative comparison of their capabilities.
> <details>
> <summary>read the caption</summary>
> Table 9: Comparison of evaluation metrics between our model, Prismatic 7B, and PaliGemma 3B. 'Ours' is our model trained with 10% image captioning and 90% text before 4 epochs of LLaVA fine-tuning.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.07603/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07603/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}