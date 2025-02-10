---
title: "QLIP: Text-Aligned Visual Tokenization Unifies Auto-Regressive Multimodal Understanding and Generation"
summary: "QLIP: A new visual tokenizer unifying autoregressive multimodal understanding & generation with state-of-the-art reconstruction and zero-shot performance!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 NVIDIA Research",]
showSummary: true
date: 2025-02-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.05178 {{< /keyword >}}
{{< keyword icon="writer" >}} Yue Zhao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.05178" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.05178" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.05178/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multimodal understanding and generation models struggle with visual tokenization, needing a separate tokenizer for each task.  This often results in a trade-off between good reconstruction quality and semantic understanding.  Existing methods struggle to balance the requirements of contrastive learning (for alignment) and reconstruction objectives, often requiring high memory and large batch sizes. 



QLIP tackles this problem by introducing a novel visual tokenization method that effectively combines both objectives.  It employs a two-stage training process to address the memory bottleneck and uses dynamic loss weighting to balance reconstruction and alignment. **QLIP achieves state-of-the-art performance on both image reconstruction and zero-shot image understanding**, demonstrating its efficacy as a drop-in replacement for visual encoders in existing multimodal models. The proposed method also shows the promise of a unified model for multimodal tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} QLIP, a novel visual tokenization method, achieves state-of-the-art results in both image reconstruction and zero-shot image understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A two-stage training approach effectively balances reconstruction and language-image alignment objectives, overcoming the typical trade-off between these goals. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} QLIP enables a unified auto-regressive model for multimodal understanding and generation, handling language-only, image-to-text, and text-to-image tasks within a single framework. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces QLIP, a novel visual tokenization method that significantly improves both the image reconstruction quality and zero-shot image understanding capabilities.  **This addresses a major challenge in multimodal learning**, where the existing trade-off between these two crucial aspects has limited the performance of autoregressive models.  QLIP's unified approach paves the way for more efficient and effective multimodal models for understanding and generation tasks, opening up new avenues for research and development.

------
#### Visual Insights



![](https://arxiv.org/html/2502.05178/extracted/6182739/figures/teaser.png)

> 🔼 The figure illustrates the trade-off between zero-shot image classification accuracy and reconstruction quality (measured by FID) in state-of-the-art visual tokenizers.  Existing methods like SigLIP prioritize accuracy, achieving high scores in zero-shot tasks but poor reconstruction quality; methods like MAGVIT2 prioritize reconstruction, showing low FID but poor accuracy in zero-shot settings.  In contrast, QLIP achieves a balance between these two objectives, demonstrating strong performance in both zero-shot classification and image reconstruction, with only a minor decrease in performance compared to the best-performing models in each category.  This balance allows QLIP to be used in a unified multimodal framework for both understanding and generation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: State-of-the-art visual tokenizers excel at either understanding (high zero-shot accuracy, e.g. SigLIP [96]) or reconstruction (low reconstruction FID, e.g. MAGVIT2 [93]), but not both. QLIP can perform well on both understanding and reconstruction with a marginal performance drop, opening up an opportunity for unified multi-modal understanding and generation.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T1.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.4.4.5.1.1" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.5.1.1.1" style="font-size:90%;">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.4.4.5.1.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.5.1.2.1" style="font-size:90%;">Images</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.4.4.5.1.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.5.1.3.1" style="font-size:90%;">Text (# tok/src)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.4.4.5.1.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.5.1.4.1" style="font-size:90%;">Usage/Metrics</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.4.4.6.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.6.1.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.4.4.6.1.1.1" style="font-size:90%;">DataComp-1B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.4.4.6.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a><span class="ltx_text" id="S5.T1.4.4.6.1.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.6.1.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.6.1.2.1" style="font-size:90%;">1B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.6.1.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.6.1.3.1" style="font-size:90%;">20B/alt-text</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.6.1.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.6.1.4.1" style="font-size:90%;">QLIP</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.1">
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.1.2" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.1.1.1.2.1" style="font-size:90%;">LAION-COCO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.1.1.1.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a><span class="ltx_text" id="S5.T1.1.1.1.2.3.2" style="font-size:90%;">]</span></cite><span class="ltx_note ltx_role_footnote" id="footnote2"><sup class="ltx_note_mark">2</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">2</sup><span class="ltx_tag ltx_tag_note">2</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="hf.co/datasets/guangyil/laion-coco-aesthetic" style="font-size:70%;" title="">hf.co/datasets/guangyil/laion-coco-aesthetic</a></span></span></span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.1.3" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.1.1.1.3.1" style="font-size:90%;">4M</span><span class="ltx_text" id="S5.T1.1.1.1.3.2" style="font-size:70%;color:#808080;">/600M</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.1.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.1.1.1.4.1" style="font-size:90%;">40M/BLIP2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.1.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.1.1.1.1.1" style="font-size:90%;">T2I (LlamaGen), UM</span><sup class="ltx_sup" id="S5.T1.1.1.1.1.2"><span class="ltx_text" id="S5.T1.1.1.1.1.2.1" style="font-size:90%;">3</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.2.2">
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.2" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.2.2.2.2.1" style="font-size:90%;">SA-1B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.2.2.2.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S5.T1.2.2.2.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.2.2.2.3.1" style="font-size:90%;">11M</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.4" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.2.2.2.4.1" style="font-size:90%;">400M/</span><span class="ltx_text" id="S5.T1.2.2.2.4.2" style="font-size:70%;">Qwen2VL-7B</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.2.2.2.1.1" style="font-size:90%;">T2I (LlamaGen), UM</span><sup class="ltx_sup" id="S5.T1.2.2.2.1.2"><span class="ltx_text" id="S5.T1.2.2.2.1.2.1" style="font-size:90%;">3</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3.3">
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.2" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.3.3.3.2.1" style="font-size:90%;">CC-12M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.3.3.3.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a><span class="ltx_text" id="S5.T1.3.3.3.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.3" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.3.3.3.3.1" style="font-size:90%;">6M</span><span class="ltx_text" id="S5.T1.3.3.3.3.2" style="font-size:70%;color:#808080;">/12M</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.4" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.3.3.3.4.1" style="font-size:90%;">200M/</span><span class="ltx_text" id="S5.T1.3.3.3.4.2" style="font-size:70%;">Qwen2VL-7B</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.3.3.3.1.1" style="font-size:90%;">UM</span><sup class="ltx_sup" id="S5.T1.3.3.3.1.2"><span class="ltx_text" id="S5.T1.3.3.3.1.2.1" style="font-size:90%;">3</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4.4">
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.2" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.4.4.4.2.1" style="font-size:90%;">DCLM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.4.4.4.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="S5.T1.4.4.4.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.4.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.4.4.1" style="font-size:90%;">300B/raw+filtered</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.4.4.4.1.1" style="font-size:90%;">UM</span><sup class="ltx_sup" id="S5.T1.4.4.4.1.2"><span class="ltx_text" id="S5.T1.4.4.4.1.2.1" style="font-size:90%;">3</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4.7.2">
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.7.2.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.4.4.7.2.1.1" style="font-size:90%;">LAION-CC-SBU </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.4.4.7.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S5.T1.4.4.7.2.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.7.2.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.7.2.2.1" style="font-size:90%;">558K</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.7.2.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.7.2.3.1" style="font-size:90%;">-/BLIP2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.7.2.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.7.2.4.1" style="font-size:90%;">VLM (LLaVA-1.5)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4.8.3">
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.8.3.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.4.4.8.3.1.1" style="font-size:90%;">LLaVA-Instruct </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.4.4.8.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S5.T1.4.4.8.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.8.3.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.8.3.2.1" style="font-size:90%;">665K</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.8.3.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.8.3.3.1" style="font-size:90%;">-/convo.</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.8.3.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.8.3.4.1" style="font-size:90%;">VLM (LLaVA-1.5)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4.9.4">
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.9.4.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.4.4.9.4.1.1" style="font-size:90%;">ImageNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.4.4.9.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S5.T1.4.4.9.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.9.4.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.9.4.2.1" style="font-size:90%;">1.3M</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.9.4.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.9.4.3.1" style="font-size:90%;">-/label</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.9.4.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.9.4.4.1" style="font-size:90%;">Classi. (ZS), Recon. (RC)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4.10.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.4.4.10.5.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T1.4.4.10.5.1.1" style="font-size:90%;">MS-COCO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.4.4.10.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="S5.T1.4.4.10.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.4.4.10.5.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.10.5.2.1" style="font-size:90%;">160K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.4.4.10.5.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.10.5.3.1" style="font-size:90%;">10M/MTurk</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.4.4.10.5.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T1.4.4.10.5.4.1" style="font-size:90%;">Caption, generation</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table provides a comprehensive overview of the datasets utilized in the research paper.  It details the name of each dataset, the quantity of images and text tokens (including the source of the text), and the specific tasks or metrics for which each dataset was employed in the experiments. This information is crucial for understanding the scope and methodology of the research.
> <details>
> <summary>read the caption</summary>
> Table 1: Dataset summary. We list the statistics of datasets used throughout the paper, including the number of images, the number of text tokens with source, and the usage of the respective dataset.
> </details>





### In-depth insights


#### Visual Tokenization
Visual tokenization, a crucial aspect of multimodal learning, aims to bridge the gap between raw visual data and the discrete representations needed for auto-regressive models.  The core challenge lies in creating a tokenization scheme that effectively captures both **visual information** and **semantic meaning**.  Early methods focused primarily on reconstruction quality, using techniques like VQ-VAE, but these often sacrificed semantic richness.  **The paper highlights that a balance between reconstruction and semantic alignment is key**; a purely reconstruction-focused approach leads to visually compressed but semantically poor tokens, hindering multimodal understanding.  This is addressed by employing a contrastive learning approach integrated with the auto-encoder, aligning visual tokens with textual descriptions. This dual-objective training, although challenging due to differing gradient magnitudes and memory constraints, is shown to create tokens effective for both understanding and generation tasks.  The innovative two-stage training process mitigates these challenges, enhancing both reconstruction and alignment capabilities.  Overall, the discussion underscores the critical role of text alignment in visual tokenization, moving beyond simple reconstruction towards semantically meaningful representations for unified multimodal understanding and generation.

#### Two-Stage Training
The authors cleverly address the challenge of balancing competing objectives and memory constraints in training their QLIP model through a two-stage training strategy.  **Stage one** prioritizes semantic alignment using contrastive learning alongside MSE loss, leveraging a memory-efficient Transformer architecture to accommodate large batch sizes essential for contrastive learning.  This stage efficiently establishes strong visual-textual relationships. **Stage two**, however, focuses on refining visual reconstruction quality. By freezing the visual encoder and dropping the contrastive loss, the authors enable smaller batch sizes for the reconstruction objective which is memory intensive, allowing for the optimization of perceptual and GAN losses to boost the visual fidelity. This two-stage approach is highly effective because it decouples the contrasting requirements of semantic alignment and visual reconstruction, enabling the model to successfully achieve both high-quality reconstruction and state-of-the-art zero-shot performance.  The dynamic loss weighting further enhances this process, ensuring balanced optimization and mitigating potential issues arising from differences in gradient magnitude between the objectives.

#### Multimodal Model
The concept of a multimodal model, capable of understanding and generating content across various modalities like text and images, is a central theme. The research explores the challenges in creating such a model, particularly concerning visual tokenization.  **Visual tokenization**, the process of converting images into discrete tokens for processing by an autoregressive model, is highlighted as a crucial area.  The authors introduce **QLIP (Quantized Language-Image Pretraining)**, a novel visual tokenization method that aims to bridge the gap between high reconstruction quality and zero-shot image understanding performance.  By dynamically balancing the reconstruction and alignment objectives during training, QLIP learns visual tokens that are not only visually representative but also semantically meaningful.  This allows for integration with auto-regressive models, creating a unified architecture for both understanding and generation.  The two-stage training approach, addressing memory constraints and balancing the objectives, is a key innovation.  The results demonstrate QLIP's effectiveness as a drop-in replacement for existing visual encoders in state-of-the-art multimodal models, achieving comparable or even better performance.  The development of a unified multimodal model architecture is a major advance, enabling a single model to handle diverse tasks, further highlighting the potential of **QLIP** for future multimodal applications.

#### Ablation Studies
Ablation studies systematically assess the contribution of individual components within a model.  In this research, ablation experiments were conducted to isolate and understand the impact of specific design choices.  The results likely revealed the relative importance of each component for achieving optimal performance. For example, analyzing the effect of different loss functions (e.g. reconstruction, alignment) and their weighting would show which objective is most crucial. **Balancing these objectives is critical since a disproportionate focus on one might hinder the other.** The two-stage training strategy was probably investigated to determine if its separation of objectives improved overall results or if a single-stage training method sufficed.  This is important because **multi-stage training is often more computationally intensive**. Initializing the visual encoder from pre-trained models (e.g., MIM, CLIP) was likely compared to random initialization to gauge the impact of transfer learning on efficiency and performance.  **Analyzing the impact of the quantizer on both reconstruction and understanding is key**. Overall, the ablation studies likely provide strong evidence to support the design choices made in the main model, demonstrating the effectiveness of each feature and identifying potential areas for further improvement.

#### Future of QLIP
The future of QLIP (Quantized Language-Image Pretraining) looks promising, given its demonstrated ability to unify auto-regressive multimodal understanding and generation.  **Further research could focus on scaling QLIP to even larger datasets and model sizes**, potentially leveraging techniques like model parallelism and more efficient training strategies.  **Improving the efficiency of the two-stage training process** is another key area, perhaps through exploring alternative loss weighting schemes or novel training architectures.  **Investigating the impact of different quantization methods** beyond BSQ could lead to further improvements in reconstruction quality and computational efficiency.  **Exploring the application of QLIP to other modalities**, such as audio and video, would significantly broaden its capabilities and impact. Finally, **deeper integration with existing large language models** and more extensive benchmarking across a wider variety of tasks are crucial steps to solidify QLIP's position as a leading multimodal architecture.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.05178/x1.png)

> 🔼 Figure 2 illustrates the QLIP model training and its application. (a) and (b) detail the two-stage training process. Stage 1 involves simultaneous training of image-text alignment and image reconstruction, while stage 2 focuses solely on enhancing reconstruction quality by fine-tuning specific components after freezing the visual encoder. (c) shows how a text-aligned visual tokenizer processes images into visual tokens for integration with text tokens within a unified multimodal autoregressive model, enabling joint modeling of both modalities.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Overview. (a-b) Two-stage training pipeline of QLIP. (a) In Stage 1, we train QLIP with a combination of alignment loss and MSE loss. (b) In Stage 2, we drop the text encoder, freeze the visual encoder, and no longer optimize the contrastive loss. Only the bottleneck quantizer and the decoder are fine-tuned. (c) With the text-aligned visual tokenizer, we transform the image into visual tokens, concatenate them with text tokens, and use an auto-regressive multi-modal model (Sec 4.1) to model jointly.
> </details>



![](https://arxiv.org/html/2502.05178/x2.png)

> 🔼 This figure shows a plot illustrating the GPU memory usage of the Quantized Language-Image Pretraining (QLIP) model during training.  The x-axis represents the batch size used per device, while the y-axis shows the peak GPU memory consumption in gigabytes. Two lines are shown, one for training QLIP without the Learned Perceptual Image Patch Similarity (LPIPS) and Generative Adversarial Network (GAN) losses, and another for training with these losses included. The plot demonstrates the significant increase in memory usage when incorporating LPIPS and GAN losses, highlighting a key challenge addressed by the two-stage training strategy employed in the QLIP method.
> <details>
> <summary>read the caption</summary>
> Figure 3: Memory usage of QLIP.
> </details>



![](https://arxiv.org/html/2502.05178/x3.png)

> 🔼 This figure displays a comparison of image reconstruction results at different stages of the QLIP training process.  The leftmost column shows the original input image. The middle column shows the reconstruction after the first training stage, which primarily focuses on contrastive language-image alignment and MSE loss for reconstruction. The rightmost column displays the reconstruction after the second training stage. In this stage, only the quantizer and decoder are fine-tuned, while the encoder is frozen. This second stage uses a weighted sum of MSE, perceptual, and GAN loss functions. The comparison highlights how the second stage leads to better reconstruction of high-frequency details, resulting in a more refined image. It's recommended to view this figure using a PDF viewer at a larger zoom level to fully appreciate the differences in detail.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Comparison of reconstruction results to the input image after the first and second stage. The second-stage model produces more high-frequency details. The figure is best viewed on a PDF viewer with zoom-in.
> </details>



![](https://arxiv.org/html/2502.05178/x4.png)

> 🔼 This figure compares the gradient magnitude for the alignment and reconstruction objectives during the training of QLIP. It visualizes the difference in the convergence rates between these objectives, highlighting the challenge of balancing them effectively. The gradient magnitudes are shown for a linear layer in the visual encoder's last Multilayer Perceptron (MLP), demonstrating the disparity in the training dynamics between the two objectives.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Comparison of gradient magnitude. Here, 𝒘𝒘{\bm{w}}bold_italic_w refers to the linear layer in the visual encoder’s last MLP.
> </details>



![](https://arxiv.org/html/2502.05178/x5.png)

> 🔼 Figure 6 presents a comparison of images generated using two different visual tokenizers in conjunction with the LlamaGen text-to-image generation model.  Each row shows an image pair; the left image is generated using LlamaGen with a VQGAN visual tokenizer, while the right image uses LlamaGen with the QLIP-B/16 tokenizer (the authors' model). The captions underneath each pair describe the image content.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison of generated images with conditioning captions in the bottom. For each pair, the left is from LlamaGen+VQGAN and the right is from LlamaGen+QLIP-B/16 (ours). The caption is also provided at the bottom.
> </details>



![](https://arxiv.org/html/2502.05178/x6.png)

> 🔼 Figure 7 presents a comparison of images generated using two different visual tokenizers within the LlamaGen framework.  Each row shows an image-caption pair. The left image in each pair was generated using LlamaGen with VQGAN as the visual tokenizer, while the right image was generated using LlamaGen with the QLIP-B/16 tokenizer (the authors' proposed method).  The captions accompanying each image are displayed below the image pair for context and comparison.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison of generated images with conditioning captions in the bottom. For each pair, the left is from LlamaGen+VQGAN and the right is from LlamaGen+QLIP-B/16 (ours). The caption is also provided at the bottom.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.12.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.12.12.13.1">
<td class="ltx_td ltx_border_tt" colspan="2" id="S5.T2.12.12.13.1.1" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_r ltx_border_tt" id="S5.T2.12.12.13.1.2" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S5.T2.12.12.13.1.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.13.1.3.1" style="font-size:90%;">0-shot</span></td>
<td class="ltx_td ltx_border_tt" id="S5.T2.12.12.13.1.4" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.12.12.13.1.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.13.1.5.1" style="font-size:90%;">Comp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T2.12.12.13.1.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.13.1.6.1" style="font-size:90%;">Reconstruction</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.4.4">
<td class="ltx_td" id="S5.T2.4.4.4.5" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.4.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.4.4.4.6.1" style="font-size:90%;">Seen Data</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.4.4.4.7" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.1.1.1.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.1.1.1.1.1" style="font-size:90%;">Acc.</span><sub class="ltx_sub" id="S5.T2.1.1.1.1.2"><span class="ltx_text" id="S5.T2.1.1.1.1.2.1" style="font-size:90%;">↑</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.4.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.4.4.4.8.1" style="font-size:90%;"># bits</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.4.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.4.4.4.9.1" style="font-size:90%;">Ratio</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.2.2" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.2.2.2.2.1" style="font-size:90%;">rFID</span><sub class="ltx_sub" id="S5.T2.2.2.2.2.2"><span class="ltx_text" id="S5.T2.2.2.2.2.2.1" style="font-size:90%;">↓</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.3.3" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.3.3.3.3.1" style="font-size:90%;">PSNR</span><sub class="ltx_sub" id="S5.T2.3.3.3.3.2"><span class="ltx_text" id="S5.T2.3.3.3.3.2.1" style="font-size:90%;">↑</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.4.4" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.4.4.4.4.1" style="font-size:90%;">SSIM</span><sub class="ltx_sub" id="S5.T2.4.4.4.4.2"><span class="ltx_text" id="S5.T2.4.4.4.4.2.1" style="font-size:90%;">↑</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.14.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="8" id="S5.T2.12.12.14.2.1" style="padding:0.25pt 2.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.12.12.14.2.1.1" style="font-size:90%;">(Base backbone)</span></td>
<td class="ltx_td ltx_border_t" id="S5.T2.12.12.14.2.2" style="padding:0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.15.3">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.15.3.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.15.3.1.1" style="font-size:90%;">CLIP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.15.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S5.T2.12.12.15.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.15.3.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.15.3.2.1" style="font-size:90%;">WIT-400M</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.15.3.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.15.3.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.15.3.4.1" style="font-size:90%;">68.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.15.3.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.15.3.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.15.3.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.15.3.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.15.3.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.15.3.7.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.15.3.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.15.3.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.15.3.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.15.3.9.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.16.4">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.16.4.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.16.4.1.1" style="font-size:90%;">EVA-CLIP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.16.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a><span class="ltx_text" id="S5.T2.12.12.16.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.16.4.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.16.4.2.1" style="font-size:90%;">Merged-2B</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.16.4.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.16.4.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.16.4.4.1" style="font-size:90%;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.16.4.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.16.4.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.16.4.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.16.4.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.16.4.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.16.4.7.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.16.4.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.16.4.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.16.4.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.16.4.9.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.17.5">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.17.5.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.17.5.1.1" style="font-size:90%;">SigLIP-B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.17.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a><span class="ltx_text" id="S5.T2.12.12.17.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.17.5.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.17.5.2.1" style="font-size:90%;">WL-10B</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.17.5.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.17.5.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.17.5.4.1" style="font-size:90%;">76.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.17.5.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.17.5.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.17.5.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.17.5.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.17.5.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.17.5.7.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.17.5.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.17.5.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.17.5.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.17.5.9.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.18.6">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.18.6.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.18.6.1.1" style="font-size:90%;">VQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.18.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="S5.T2.12.12.18.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.18.6.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.18.6.2.1" style="font-size:90%;">IN-1k</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.18.6.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.18.6.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.18.6.4.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.18.6.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.18.6.5.1" style="font-size:90%;">14</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.18.6.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.18.6.6.1" style="font-size:90%;">438.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.18.6.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.18.6.7.1" style="font-size:90%;">4.98</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.18.6.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.18.6.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.18.6.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.18.6.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.19.7">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.19.7.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.19.7.1.1" style="font-size:90%;">MaskGIT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.19.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="S5.T2.12.12.19.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.19.7.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.19.7.2.1" style="font-size:90%;">IN-1k</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.19.7.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.19.7.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.19.7.4.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.19.7.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.19.7.5.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.19.7.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.19.7.6.1" style="font-size:90%;">614.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.19.7.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.19.7.7.1" style="font-size:90%;">1.98</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.19.7.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.19.7.8.1" style="font-size:90%;">18.63</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.19.7.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.19.7.9.1" style="font-size:90%;">0.4619</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.5.5">
<td class="ltx_td ltx_align_left" id="S5.T2.5.5.5.2" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.5.5.5.2.1" style="font-size:90%;">MoVQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.5.5.5.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib100" title=""><span class="ltx_text" style="font-size:90%;">100</span></a><span class="ltx_text" id="S5.T2.5.5.5.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.5.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.5.5.5.3.1" style="font-size:90%;">IN-1k</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.5.5.5.4" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.5.5.5.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.5.5.5.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.5.1" style="padding:0.25pt 2.0pt;">
<sup class="ltx_sup" id="S5.T2.5.5.5.1.1"><span class="ltx_text" id="S5.T2.5.5.5.1.1.1" style="font-size:90%;">&amp;</span></sup><span class="ltx_text" id="S5.T2.5.5.5.1.2" style="font-size:90%;">40</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.5.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.5.5.5.6.1" style="font-size:90%;">153.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.5.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.5.5.5.7.1" style="font-size:90%;">1.12</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.5.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.5.5.5.8.1" style="font-size:90%;">22.42</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.5.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.5.5.5.9.1" style="font-size:90%;">0.6731</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.6.6">
<td class="ltx_td ltx_align_left" id="S5.T2.6.6.6.2" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.6.6.6.2.1" style="font-size:90%;">RQ-VAE/f32 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.6.6.6.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a><span class="ltx_text" id="S5.T2.6.6.6.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.6.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.6.6.6.3.1" style="font-size:90%;">IN-1k</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.6.6.6.4" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.6.6.6.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.6.6.6.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.6.1" style="padding:0.25pt 2.0pt;">
<sup class="ltx_sup" id="S5.T2.6.6.6.1.1"><span class="ltx_text" id="S5.T2.6.6.6.1.1.1" style="font-size:90%;">&amp;</span></sup><span class="ltx_text" id="S5.T2.6.6.6.1.2" style="font-size:90%;">112</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.6.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.6.6.6.6.1" style="font-size:90%;">219.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.6.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.6.6.6.7.1" style="font-size:90%;">2.69</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.6.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.6.6.6.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.6.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.6.6.6.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.20.8">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.20.8.1" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.20.8.1.1" style="font-size:90%;">OpenCLIP-B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.20.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="S5.T2.12.12.20.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.20.8.2" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.20.8.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.20.8.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.20.8.4" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.20.8.4.1" style="font-size:90%;">73.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.20.8.5" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.20.8.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.20.8.6" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.20.8.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.20.8.7" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.20.8.7.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.20.8.8" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.20.8.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.20.8.9" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.20.8.9.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.7.7">
<td class="ltx_td ltx_align_left" id="S5.T2.7.7.7.1" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.7.7.7.1.1" style="font-size:90%;">BSQViT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.7.7.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib98" title=""><span class="ltx_text" style="font-size:90%;">98</span></a><span class="ltx_text" id="S5.T2.7.7.7.1.3.2" style="font-size:90%;">]</span></cite><sup class="ltx_sup" id="S5.T2.7.7.7.1.4"><span class="ltx_text" id="S5.T2.7.7.7.1.4.1" style="font-size:90%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.7.7.2" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.7.7.7.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.7.7.7.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.7.7.7.4" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.7.7.7.4.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.7.7.5" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.7.7.7.5.1" style="font-size:90%;">28</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.7.7.6" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.7.7.7.6.1" style="font-size:90%;">219.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.7.7.7" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.7.7.7.7.1" style="font-size:90%;">3.81</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.7.7.8" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.7.7.7.8.1" style="font-size:90%;">24.12</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.7.7.9" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.7.7.7.9.1" style="font-size:90%;">0.6638</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.21.9">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.21.9.1" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.21.9.1.1" style="font-size:90%;">QLIP-B (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.21.9.2" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.21.9.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.21.9.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.21.9.4" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.21.9.4.1" style="font-size:90%;">74.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.21.9.5" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.21.9.5.1" style="font-size:90%;">28</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.21.9.6" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.21.9.6.1" style="font-size:90%;">219.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.21.9.7" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.21.9.7.1" style="font-size:90%;">3.21</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.21.9.8" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.21.9.8.1" style="font-size:90%;">23.16</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.21.9.9" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.21.9.9.1" style="font-size:90%;">0.6286</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.22.10">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="8" id="S5.T2.12.12.22.10.1" style="padding:0.25pt 2.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.12.12.22.10.1.1" style="font-size:90%;">(Base backbone, Smaller patch)</span></td>
<td class="ltx_td ltx_border_t" id="S5.T2.12.12.22.10.2" style="padding:0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.23.11">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.23.11.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.23.11.1.1" style="font-size:90%;">SigLIP-B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.23.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a><span class="ltx_text" id="S5.T2.12.12.23.11.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.23.11.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.23.11.2.1" style="font-size:90%;">WL-10B</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.23.11.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.23.11.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.23.11.4.1" style="font-size:90%;">79.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.23.11.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.23.11.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.23.11.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.23.11.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.23.11.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.23.11.7.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.23.11.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.23.11.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.23.11.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.23.11.9.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.24.12">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.24.12.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.24.12.1.1" style="font-size:90%;">DALL-E dVAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.24.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a><span class="ltx_text" id="S5.T2.12.12.24.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.24.12.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.24.12.2.1" style="font-size:70%;">CC3M+YF</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.24.12.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.24.12.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.24.12.4.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.24.12.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.24.12.5.1" style="font-size:90%;">13</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.24.12.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.24.12.6.1" style="font-size:90%;">118.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.24.12.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.24.12.7.1" style="font-size:90%;">32.63</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.24.12.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.24.12.8.1" style="font-size:90%;">27.31</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.24.12.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.24.12.9.1" style="font-size:90%;">0.7943</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.25.13">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.25.13.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.25.13.1.1" style="font-size:90%;">ViT-VQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.25.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib91" title=""><span class="ltx_text" style="font-size:90%;">91</span></a><span class="ltx_text" id="S5.T2.12.12.25.13.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.25.13.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.25.13.2.1" style="font-size:90%;">IN-1k</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.25.13.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.25.13.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.25.13.4.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.25.13.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.25.13.5.1" style="font-size:90%;">13</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.25.13.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.25.13.6.1" style="font-size:90%;">118.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.25.13.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.25.13.7.1" style="font-size:90%;">1.55</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.25.13.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.25.13.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.25.13.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.25.13.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.26.14">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.26.14.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.26.14.1.1" style="font-size:90%;">SD-VAE 1.x </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.26.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="S5.T2.12.12.26.14.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.26.14.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.26.14.2.1" style="font-size:90%;">OI-2M</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.26.14.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.26.14.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.26.14.4.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.26.14.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.26.14.5.1" style="font-size:90%;">14</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.26.14.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.26.14.6.1" style="font-size:90%;">109.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.26.14.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.26.14.7.1" style="font-size:90%;">1.40</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.26.14.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.26.14.8.1" style="font-size:90%;">23.65</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.26.14.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.26.14.9.1" style="font-size:90%;">0.6354</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.8">
<td class="ltx_td ltx_align_left" id="S5.T2.8.8.8.2" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.8.8.8.2.1" style="font-size:90%;">SD-VAE 2.x </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.8.8.8.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="S5.T2.8.8.8.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.8.8.8.3.1" style="font-size:70%;">OI-2M+LAae</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.8.8.8.4" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.8.8.8.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.8.8.8.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.1" style="padding:0.25pt 2.0pt;">
<sup class="ltx_sup" id="S5.T2.8.8.8.1.1"><span class="ltx_text" id="S5.T2.8.8.8.1.1.1" style="font-size:90%;">#</span></sup><span class="ltx_text" id="S5.T2.8.8.8.1.2" style="font-size:90%;">64</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.8.8.8.6.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.8.8.8.7.1" style="font-size:90%;">0.70</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.8.8.8.8.1" style="font-size:90%;">26.90</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.8.8.8.9.1" style="font-size:90%;">0.7592</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.9.9.9">
<td class="ltx_td ltx_align_left" id="S5.T2.9.9.9.2" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.9.9.9.2.1" style="font-size:90%;">SDXL-VAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.9.9.9.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="S5.T2.9.9.9.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.9.9.9.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.9.9.9.3.1" style="font-size:70%;">OI-2M+LAae++</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.9.9.9.4" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.9.9.9.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.9.9.9.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.9.9.9.1" style="padding:0.25pt 2.0pt;">
<sup class="ltx_sup" id="S5.T2.9.9.9.1.1"><span class="ltx_text" id="S5.T2.9.9.9.1.1.1" style="font-size:90%;">#</span></sup><span class="ltx_text" id="S5.T2.9.9.9.1.2" style="font-size:90%;">64</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.9.9.9.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.9.9.9.6.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.9.9.9.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.9.9.9.7.1" style="font-size:90%;">0.67</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.9.9.9.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.9.9.9.8.1" style="font-size:90%;">27.37</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.9.9.9.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.9.9.9.9.1" style="font-size:90%;">0.7814</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.27.15">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.27.15.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.27.15.1.1" style="font-size:90%;">SBER-MoVQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.27.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a><span class="ltx_text" id="S5.T2.12.12.27.15.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.27.15.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.27.15.2.1" style="font-size:70%;">LAHR-166M</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.27.15.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.27.15.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.27.15.4.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.27.15.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.27.15.5.1" style="font-size:90%;">14</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.27.15.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.27.15.6.1" style="font-size:90%;">109.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.27.15.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.27.15.7.1" style="font-size:90%;">0.96</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.27.15.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.27.15.8.1" style="font-size:90%;">26.45</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.27.15.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.27.15.9.1" style="font-size:90%;">0.7250</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.28.16">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.28.16.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.28.16.1.1" style="font-size:90%;">BSQViT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.28.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib98" title=""><span class="ltx_text" style="font-size:90%;">98</span></a><span class="ltx_text" id="S5.T2.12.12.28.16.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.28.16.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.28.16.2.1" style="font-size:90%;">IN-1k</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.28.16.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.28.16.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.28.16.4.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.28.16.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.28.16.5.1" style="font-size:90%;">18</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.28.16.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.28.16.6.1" style="font-size:90%;">  85.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.28.16.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.28.16.7.1" style="font-size:90%;">0.99</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.28.16.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.28.16.8.1" style="font-size:90%;">27.78</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.28.16.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.28.16.9.1" style="font-size:90%;">0.8171</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.10.10.10">
<td class="ltx_td ltx_align_left" id="S5.T2.10.10.10.1" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.10.10.10.1.1" style="font-size:90%;">EVA-CLIP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.10.10.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a><span class="ltx_text" id="S5.T2.10.10.10.1.3.2" style="font-size:90%;">]</span></cite><sup class="ltx_sup" id="S5.T2.10.10.10.1.4"><span class="ltx_text" id="S5.T2.10.10.10.1.4.1" style="font-size:90%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.10.2" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.10.10.10.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.10.10.10.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.10.10.10.4" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.10.10.10.4.1" style="font-size:90%;">77.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.10.5" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.10.10.10.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.10.6" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.10.10.10.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.10.7" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.10.10.10.7.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.10.8" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.10.10.10.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.10.9" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.10.10.10.9.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.29.17">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.29.17.1" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.29.17.1.1" style="font-size:90%;">QLIP-B (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.29.17.2" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.29.17.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.29.17.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.29.17.4" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.29.17.4.1" style="font-size:90%;">75.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.29.17.5" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.29.17.5.1" style="font-size:90%;">28</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.29.17.6" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.29.17.6.1" style="font-size:90%;">  54.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.29.17.7" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.29.17.7.1" style="font-size:90%;">0.70</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.29.17.8" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.29.17.8.1" style="font-size:90%;">26.79</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.29.17.9" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.29.17.9.1" style="font-size:90%;">0.7905</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.30.18">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="8" id="S5.T2.12.12.30.18.1" style="padding:0.25pt 2.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.12.12.30.18.1.1" style="font-size:90%;">(Large backbone)</span></td>
<td class="ltx_td ltx_border_t" id="S5.T2.12.12.30.18.2" style="padding:0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.31.19">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.31.19.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.31.19.1.1" style="font-size:90%;">CLIP/f14 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.31.19.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S5.T2.12.12.31.19.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.31.19.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.31.19.2.1" style="font-size:90%;">WIT-400M</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.31.19.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.31.19.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.31.19.4.1" style="font-size:90%;">75.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.31.19.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.31.19.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.31.19.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.31.19.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.31.19.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.31.19.7.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.31.19.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.31.19.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.31.19.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.31.19.9.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.32.20">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.32.20.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.32.20.1.1" style="font-size:90%;">SigLIP-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.32.20.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a><span class="ltx_text" id="S5.T2.12.12.32.20.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.32.20.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.32.20.2.1" style="font-size:90%;">WL-10B</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.32.20.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.32.20.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.32.20.4.1" style="font-size:90%;">80.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.32.20.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.32.20.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.32.20.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.32.20.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.32.20.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.32.20.7.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.32.20.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.32.20.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.32.20.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.32.20.9.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.33.21">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.33.21.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.33.21.1.1" style="font-size:90%;">OpenCLIP-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.33.21.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="S5.T2.12.12.33.21.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.33.21.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.33.21.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.33.21.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.33.21.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.33.21.4.1" style="font-size:90%;">79.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.33.21.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.33.21.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.33.21.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.33.21.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.33.21.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.33.21.7.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.33.21.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.33.21.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.33.21.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.33.21.9.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.34.22">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.34.22.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.34.22.1.1" style="font-size:90%;">EVA-CLIP-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.34.22.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a><span class="ltx_text" id="S5.T2.12.12.34.22.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.34.22.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.34.22.2.1" style="font-size:90%;">Merged-2B</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.34.22.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.34.22.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.34.22.4.1" style="font-size:90%;">79.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.34.22.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.34.22.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.34.22.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.34.22.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.34.22.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.34.22.7.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.34.22.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.34.22.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.34.22.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.34.22.9.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.35.23">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.35.23.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.35.23.1.1" style="font-size:90%;">Open-MAGVIT2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.35.23.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib93" title=""><span class="ltx_text" style="font-size:90%;">93</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="S5.T2.12.12.35.23.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.35.23.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.35.23.2.1" style="font-size:90%;">IN-1k</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.35.23.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.35.23.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.35.23.4.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.35.23.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.35.23.5.1" style="font-size:90%;">18</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.35.23.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.35.23.6.1" style="font-size:90%;">  85.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.35.23.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.35.23.7.1" style="font-size:90%;">1.17</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.35.23.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.35.23.8.1" style="font-size:90%;">21.90</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.35.23.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.35.23.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.11.11.11">
<td class="ltx_td ltx_align_left" id="S5.T2.11.11.11.2" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.11.11.11.2.1" style="font-size:90%;">VILA-U </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.11.11.11.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib89" title=""><span class="ltx_text" style="font-size:90%;">89</span></a><span class="ltx_text" id="S5.T2.11.11.11.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.11.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.11.11.11.3.1" style="font-size:70%;">WL-10B+CY-1B</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.11.11.11.4" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.11.11.11.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.11.11.11.5.1" style="font-size:90%;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.11.1" style="padding:0.25pt 2.0pt;">
<sup class="ltx_sup" id="S5.T2.11.11.11.1.1"><span class="ltx_text" id="S5.T2.11.11.11.1.1.1" style="font-size:90%;">&amp;</span></sup><span class="ltx_text" id="S5.T2.11.11.11.1.2" style="font-size:90%;">56</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.11.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.11.11.11.6.1" style="font-size:90%;">  27.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.11.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.11.11.11.7.1" style="font-size:90%;">1.80</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.11.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.11.11.11.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.11.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.11.11.11.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.36.24">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="8" id="S5.T2.12.12.36.24.1" style="padding:0.25pt 2.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.12.12.36.24.1.1" style="font-size:90%;">(Large backbone, high resolution)</span></td>
<td class="ltx_td ltx_border_t" id="S5.T2.12.12.36.24.2" style="padding:0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.37.25">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.37.25.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.37.25.1.1" style="font-size:90%;">CLIP/f14 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.37.25.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S5.T2.12.12.37.25.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.37.25.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.37.25.2.1" style="font-size:90%;">WIT-400M</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.37.25.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.37.25.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.37.25.4.1" style="font-size:90%;">76.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.37.25.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.37.25.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.37.25.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.37.25.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.37.25.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.37.25.7.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.37.25.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.37.25.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.37.25.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.37.25.9.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.38.26">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.38.26.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.38.26.1.1" style="font-size:90%;">SigLIP-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.38.26.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a><span class="ltx_text" id="S5.T2.12.12.38.26.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.38.26.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.38.26.2.1" style="font-size:90%;">WL-10B</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.38.26.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.38.26.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.38.26.4.1" style="font-size:90%;">82.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.38.26.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.38.26.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.38.26.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.38.26.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.38.26.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.38.26.7.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.38.26.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.38.26.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.38.26.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.38.26.9.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.39.27">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.39.27.1" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.39.27.1.1" style="font-size:90%;">EVA-CLIP-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.39.27.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a><span class="ltx_text" id="S5.T2.12.12.39.27.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.39.27.2" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.39.27.2.1" style="font-size:90%;">Merged-2B</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.39.27.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.39.27.4" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.39.27.4.1" style="font-size:90%;">80.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.39.27.5" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.39.27.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.39.27.6" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.39.27.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.39.27.7" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.39.27.7.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.39.27.8" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.39.27.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.39.27.9" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.39.27.9.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.12">
<td class="ltx_td ltx_align_left" id="S5.T2.12.12.12.2" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T2.12.12.12.2.1" style="font-size:90%;">VILA-U </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.12.12.12.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib89" title=""><span class="ltx_text" style="font-size:90%;">89</span></a><span class="ltx_text" id="S5.T2.12.12.12.2.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S5.T2.12.12.12.2.4" style="font-size:90%;"> (SO400M)</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.12.3" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.12.3.1" style="font-size:70%;">WL-10B+CY-1B</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T2.12.12.12.4" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.12.12.12.5" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.12.5.1" style="font-size:90%;">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.12.1" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;">
<sup class="ltx_sup" id="S5.T2.12.12.12.1.1"><span class="ltx_text" id="S5.T2.12.12.12.1.1.1" style="font-size:90%;">&amp;</span></sup><span class="ltx_text" id="S5.T2.12.12.12.1.2" style="font-size:90%;">224</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.12.6" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.12.6.1" style="font-size:90%;">21</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.12.7" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.12.7.1" style="font-size:90%;">1.25</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.12.8" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.12.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.12.9" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.12.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.40.28">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.12.12.40.28.1" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.40.28.1.1" style="font-size:90%;">QLIP-L (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.12.40.28.2" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.40.28.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_bb" id="S5.T2.12.12.40.28.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S5.T2.12.12.40.28.4" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.40.28.4.1" style="font-size:90%;">79.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.12.40.28.5" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.40.28.5.1" style="font-size:90%;">28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.12.40.28.6" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.40.28.6.1" style="font-size:90%;">168</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.12.40.28.7" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.40.28.7.1" style="font-size:90%;">1.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.12.40.28.8" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.40.28.8.1" style="font-size:90%;">25.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.12.40.28.9" style="background-color:#E6E6E6;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T2.12.12.40.28.9.1" style="font-size:90%;">0.6903</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares QLIP against state-of-the-art visual encoders and tokenizers, focusing on both image understanding (zero-shot accuracy) and reconstruction quality (FID, PSNR, SSIM).  It presents results for different model sizes (base, smaller patch, large) and resolutions, highlighting the performance trade-offs between compression and quality.  Special notations explain reproduction details and quantizer characteristics.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison to state-of-the-art visual encoders or tokenizers. We highlight rows that are most comparable in each group. †: our reproduction. #: effective number of bits when latents are stored in bf16. &: quantizer uses residual quantization (RQ), where the total bits are multiplied by RQ depth.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.st1.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.st1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.st1.1.1.1"><math alttext="\alpha_{a}:\alpha_{r}" class="ltx_Math" display="inline" id="S5.T3.st1.1.1.1.m1.1"><semantics id="S5.T3.st1.1.1.1.m1.1a"><mrow id="S5.T3.st1.1.1.1.m1.1.1" xref="S5.T3.st1.1.1.1.m1.1.1.cmml"><msub id="S5.T3.st1.1.1.1.m1.1.1.2" xref="S5.T3.st1.1.1.1.m1.1.1.2.cmml"><mi id="S5.T3.st1.1.1.1.m1.1.1.2.2" xref="S5.T3.st1.1.1.1.m1.1.1.2.2.cmml">α</mi><mi id="S5.T3.st1.1.1.1.m1.1.1.2.3" xref="S5.T3.st1.1.1.1.m1.1.1.2.3.cmml">a</mi></msub><mo id="S5.T3.st1.1.1.1.m1.1.1.1" lspace="0.278em" rspace="0.278em" xref="S5.T3.st1.1.1.1.m1.1.1.1.cmml">:</mo><msub id="S5.T3.st1.1.1.1.m1.1.1.3" xref="S5.T3.st1.1.1.1.m1.1.1.3.cmml"><mi id="S5.T3.st1.1.1.1.m1.1.1.3.2" xref="S5.T3.st1.1.1.1.m1.1.1.3.2.cmml">α</mi><mi id="S5.T3.st1.1.1.1.m1.1.1.3.3" xref="S5.T3.st1.1.1.1.m1.1.1.3.3.cmml">r</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.st1.1.1.1.m1.1b"><apply id="S5.T3.st1.1.1.1.m1.1.1.cmml" xref="S5.T3.st1.1.1.1.m1.1.1"><ci id="S5.T3.st1.1.1.1.m1.1.1.1.cmml" xref="S5.T3.st1.1.1.1.m1.1.1.1">:</ci><apply id="S5.T3.st1.1.1.1.m1.1.1.2.cmml" xref="S5.T3.st1.1.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="S5.T3.st1.1.1.1.m1.1.1.2.1.cmml" xref="S5.T3.st1.1.1.1.m1.1.1.2">subscript</csymbol><ci id="S5.T3.st1.1.1.1.m1.1.1.2.2.cmml" xref="S5.T3.st1.1.1.1.m1.1.1.2.2">𝛼</ci><ci id="S5.T3.st1.1.1.1.m1.1.1.2.3.cmml" xref="S5.T3.st1.1.1.1.m1.1.1.2.3">𝑎</ci></apply><apply id="S5.T3.st1.1.1.1.m1.1.1.3.cmml" xref="S5.T3.st1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T3.st1.1.1.1.m1.1.1.3.1.cmml" xref="S5.T3.st1.1.1.1.m1.1.1.3">subscript</csymbol><ci id="S5.T3.st1.1.1.1.m1.1.1.3.2.cmml" xref="S5.T3.st1.1.1.1.m1.1.1.3.2">𝛼</ci><ci id="S5.T3.st1.1.1.1.m1.1.1.3.3.cmml" xref="S5.T3.st1.1.1.1.m1.1.1.3.3">𝑟</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st1.1.1.1.m1.1c">\alpha_{a}:\alpha_{r}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st1.1.1.1.m1.1d">italic_α start_POSTSUBSCRIPT italic_a end_POSTSUBSCRIPT : italic_α start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st1.2.2.3">ZS<span class="ltx_text" id="S5.T3.st1.2.2.3.1" style="font-size:50%;">(%)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st1.2.2.2">RC<span class="ltx_text" id="S5.T3.st1.2.2.2.1" style="font-size:50%;">(rFID)<sub class="ltx_sub" id="S5.T3.st1.2.2.2.1.1">↓</sub></span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st1.2.2.4">RC<span class="ltx_text" id="S5.T3.st1.2.2.4.1" style="font-size:50%;">(PSNR)</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.st1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.st1.3.3.1"><math alttext="1:0" class="ltx_Math" display="inline" id="S5.T3.st1.3.3.1.m1.1"><semantics id="S5.T3.st1.3.3.1.m1.1a"><mrow id="S5.T3.st1.3.3.1.m1.1.1" xref="S5.T3.st1.3.3.1.m1.1.1.cmml"><mn id="S5.T3.st1.3.3.1.m1.1.1.2" xref="S5.T3.st1.3.3.1.m1.1.1.2.cmml">1</mn><mo id="S5.T3.st1.3.3.1.m1.1.1.1" lspace="0.278em" rspace="0.278em" xref="S5.T3.st1.3.3.1.m1.1.1.1.cmml">:</mo><mn id="S5.T3.st1.3.3.1.m1.1.1.3" xref="S5.T3.st1.3.3.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.st1.3.3.1.m1.1b"><apply id="S5.T3.st1.3.3.1.m1.1.1.cmml" xref="S5.T3.st1.3.3.1.m1.1.1"><ci id="S5.T3.st1.3.3.1.m1.1.1.1.cmml" xref="S5.T3.st1.3.3.1.m1.1.1.1">:</ci><cn id="S5.T3.st1.3.3.1.m1.1.1.2.cmml" type="integer" xref="S5.T3.st1.3.3.1.m1.1.1.2">1</cn><cn id="S5.T3.st1.3.3.1.m1.1.1.3.cmml" type="integer" xref="S5.T3.st1.3.3.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st1.3.3.1.m1.1c">1:0</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st1.3.3.1.m1.1d">1 : 0</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.st1.3.3.2">75.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.st1.3.3.3">367.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.st1.3.3.4">11.7</td>
</tr>
<tr class="ltx_tr" id="S5.T3.st1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.st1.4.4.1"><math alttext="1:1" class="ltx_Math" display="inline" id="S5.T3.st1.4.4.1.m1.1"><semantics id="S5.T3.st1.4.4.1.m1.1a"><mrow id="S5.T3.st1.4.4.1.m1.1.1" xref="S5.T3.st1.4.4.1.m1.1.1.cmml"><mn id="S5.T3.st1.4.4.1.m1.1.1.2" xref="S5.T3.st1.4.4.1.m1.1.1.2.cmml">1</mn><mo id="S5.T3.st1.4.4.1.m1.1.1.1" lspace="0.278em" rspace="0.278em" xref="S5.T3.st1.4.4.1.m1.1.1.1.cmml">:</mo><mn id="S5.T3.st1.4.4.1.m1.1.1.3" xref="S5.T3.st1.4.4.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.st1.4.4.1.m1.1b"><apply id="S5.T3.st1.4.4.1.m1.1.1.cmml" xref="S5.T3.st1.4.4.1.m1.1.1"><ci id="S5.T3.st1.4.4.1.m1.1.1.1.cmml" xref="S5.T3.st1.4.4.1.m1.1.1.1">:</ci><cn id="S5.T3.st1.4.4.1.m1.1.1.2.cmml" type="integer" xref="S5.T3.st1.4.4.1.m1.1.1.2">1</cn><cn id="S5.T3.st1.4.4.1.m1.1.1.3.cmml" type="integer" xref="S5.T3.st1.4.4.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st1.4.4.1.m1.1c">1:1</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st1.4.4.1.m1.1d">1 : 1</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T3.st1.4.4.2">75.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.st1.4.4.3">162.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.st1.4.4.4">17.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.st1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.st1.5.5.1"><math alttext="1:10^{2}" class="ltx_Math" display="inline" id="S5.T3.st1.5.5.1.m1.1"><semantics id="S5.T3.st1.5.5.1.m1.1a"><mrow id="S5.T3.st1.5.5.1.m1.1.1" xref="S5.T3.st1.5.5.1.m1.1.1.cmml"><mn id="S5.T3.st1.5.5.1.m1.1.1.2" xref="S5.T3.st1.5.5.1.m1.1.1.2.cmml">1</mn><mo id="S5.T3.st1.5.5.1.m1.1.1.1" lspace="0.278em" rspace="0.278em" xref="S5.T3.st1.5.5.1.m1.1.1.1.cmml">:</mo><msup id="S5.T3.st1.5.5.1.m1.1.1.3" xref="S5.T3.st1.5.5.1.m1.1.1.3.cmml"><mn id="S5.T3.st1.5.5.1.m1.1.1.3.2" xref="S5.T3.st1.5.5.1.m1.1.1.3.2.cmml">10</mn><mn id="S5.T3.st1.5.5.1.m1.1.1.3.3" xref="S5.T3.st1.5.5.1.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.st1.5.5.1.m1.1b"><apply id="S5.T3.st1.5.5.1.m1.1.1.cmml" xref="S5.T3.st1.5.5.1.m1.1.1"><ci id="S5.T3.st1.5.5.1.m1.1.1.1.cmml" xref="S5.T3.st1.5.5.1.m1.1.1.1">:</ci><cn id="S5.T3.st1.5.5.1.m1.1.1.2.cmml" type="integer" xref="S5.T3.st1.5.5.1.m1.1.1.2">1</cn><apply id="S5.T3.st1.5.5.1.m1.1.1.3.cmml" xref="S5.T3.st1.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T3.st1.5.5.1.m1.1.1.3.1.cmml" xref="S5.T3.st1.5.5.1.m1.1.1.3">superscript</csymbol><cn id="S5.T3.st1.5.5.1.m1.1.1.3.2.cmml" type="integer" xref="S5.T3.st1.5.5.1.m1.1.1.3.2">10</cn><cn id="S5.T3.st1.5.5.1.m1.1.1.3.3.cmml" type="integer" xref="S5.T3.st1.5.5.1.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st1.5.5.1.m1.1c">1:10^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st1.5.5.1.m1.1d">1 : 10 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T3.st1.5.5.2">74.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.st1.5.5.3">41.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.st1.5.5.4">22.5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.st1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.st1.6.6.1" style="background-color:#D4D4D4;"><math alttext="1:10^{3}" class="ltx_Math" display="inline" id="S5.T3.st1.6.6.1.m1.1"><semantics id="S5.T3.st1.6.6.1.m1.1a"><mrow id="S5.T3.st1.6.6.1.m1.1.1" xref="S5.T3.st1.6.6.1.m1.1.1.cmml"><mn id="S5.T3.st1.6.6.1.m1.1.1.2" mathbackground="#D4D4D4" xref="S5.T3.st1.6.6.1.m1.1.1.2.cmml">1</mn><mo id="S5.T3.st1.6.6.1.m1.1.1.1" lspace="0.278em" mathbackground="#D4D4D4" rspace="0.278em" xref="S5.T3.st1.6.6.1.m1.1.1.1.cmml">:</mo><msup id="S5.T3.st1.6.6.1.m1.1.1.3" xref="S5.T3.st1.6.6.1.m1.1.1.3.cmml"><mn id="S5.T3.st1.6.6.1.m1.1.1.3.2" mathbackground="#D4D4D4" xref="S5.T3.st1.6.6.1.m1.1.1.3.2.cmml">10</mn><mn id="S5.T3.st1.6.6.1.m1.1.1.3.3" mathbackground="#D4D4D4" xref="S5.T3.st1.6.6.1.m1.1.1.3.3.cmml">3</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.st1.6.6.1.m1.1b"><apply id="S5.T3.st1.6.6.1.m1.1.1.cmml" xref="S5.T3.st1.6.6.1.m1.1.1"><ci id="S5.T3.st1.6.6.1.m1.1.1.1.cmml" xref="S5.T3.st1.6.6.1.m1.1.1.1">:</ci><cn id="S5.T3.st1.6.6.1.m1.1.1.2.cmml" type="integer" xref="S5.T3.st1.6.6.1.m1.1.1.2">1</cn><apply id="S5.T3.st1.6.6.1.m1.1.1.3.cmml" xref="S5.T3.st1.6.6.1.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T3.st1.6.6.1.m1.1.1.3.1.cmml" xref="S5.T3.st1.6.6.1.m1.1.1.3">superscript</csymbol><cn id="S5.T3.st1.6.6.1.m1.1.1.3.2.cmml" type="integer" xref="S5.T3.st1.6.6.1.m1.1.1.3.2">10</cn><cn id="S5.T3.st1.6.6.1.m1.1.1.3.3.cmml" type="integer" xref="S5.T3.st1.6.6.1.m1.1.1.3.3">3</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st1.6.6.1.m1.1c">1:10^{3}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st1.6.6.1.m1.1d">1 : 10 start_POSTSUPERSCRIPT 3 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T3.st1.6.6.2" style="background-color:#D4D4D4;">74.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.st1.6.6.3" style="background-color:#D4D4D4;">35.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.st1.6.6.4" style="background-color:#D4D4D4;">24.5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.st1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.st1.7.7.1"><math alttext="1:10^{4}" class="ltx_Math" display="inline" id="S5.T3.st1.7.7.1.m1.1"><semantics id="S5.T3.st1.7.7.1.m1.1a"><mrow id="S5.T3.st1.7.7.1.m1.1.1" xref="S5.T3.st1.7.7.1.m1.1.1.cmml"><mn id="S5.T3.st1.7.7.1.m1.1.1.2" xref="S5.T3.st1.7.7.1.m1.1.1.2.cmml">1</mn><mo id="S5.T3.st1.7.7.1.m1.1.1.1" lspace="0.278em" rspace="0.278em" xref="S5.T3.st1.7.7.1.m1.1.1.1.cmml">:</mo><msup id="S5.T3.st1.7.7.1.m1.1.1.3" xref="S5.T3.st1.7.7.1.m1.1.1.3.cmml"><mn id="S5.T3.st1.7.7.1.m1.1.1.3.2" xref="S5.T3.st1.7.7.1.m1.1.1.3.2.cmml">10</mn><mn id="S5.T3.st1.7.7.1.m1.1.1.3.3" xref="S5.T3.st1.7.7.1.m1.1.1.3.3.cmml">4</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.st1.7.7.1.m1.1b"><apply id="S5.T3.st1.7.7.1.m1.1.1.cmml" xref="S5.T3.st1.7.7.1.m1.1.1"><ci id="S5.T3.st1.7.7.1.m1.1.1.1.cmml" xref="S5.T3.st1.7.7.1.m1.1.1.1">:</ci><cn id="S5.T3.st1.7.7.1.m1.1.1.2.cmml" type="integer" xref="S5.T3.st1.7.7.1.m1.1.1.2">1</cn><apply id="S5.T3.st1.7.7.1.m1.1.1.3.cmml" xref="S5.T3.st1.7.7.1.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T3.st1.7.7.1.m1.1.1.3.1.cmml" xref="S5.T3.st1.7.7.1.m1.1.1.3">superscript</csymbol><cn id="S5.T3.st1.7.7.1.m1.1.1.3.2.cmml" type="integer" xref="S5.T3.st1.7.7.1.m1.1.1.3.2">10</cn><cn id="S5.T3.st1.7.7.1.m1.1.1.3.3.cmml" type="integer" xref="S5.T3.st1.7.7.1.m1.1.1.3.3">4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st1.7.7.1.m1.1c">1:10^{4}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st1.7.7.1.m1.1d">1 : 10 start_POSTSUPERSCRIPT 4 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T3.st1.7.7.2">35.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.st1.7.7.3">35.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.st1.7.7.4">24.5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.st1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.st1.8.8.1"><math alttext="0:1" class="ltx_Math" display="inline" id="S5.T3.st1.8.8.1.m1.1"><semantics id="S5.T3.st1.8.8.1.m1.1a"><mrow id="S5.T3.st1.8.8.1.m1.1.1" xref="S5.T3.st1.8.8.1.m1.1.1.cmml"><mn id="S5.T3.st1.8.8.1.m1.1.1.2" xref="S5.T3.st1.8.8.1.m1.1.1.2.cmml">0</mn><mo id="S5.T3.st1.8.8.1.m1.1.1.1" lspace="0.278em" rspace="0.278em" xref="S5.T3.st1.8.8.1.m1.1.1.1.cmml">:</mo><mn id="S5.T3.st1.8.8.1.m1.1.1.3" xref="S5.T3.st1.8.8.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.st1.8.8.1.m1.1b"><apply id="S5.T3.st1.8.8.1.m1.1.1.cmml" xref="S5.T3.st1.8.8.1.m1.1.1"><ci id="S5.T3.st1.8.8.1.m1.1.1.1.cmml" xref="S5.T3.st1.8.8.1.m1.1.1.1">:</ci><cn id="S5.T3.st1.8.8.1.m1.1.1.2.cmml" type="integer" xref="S5.T3.st1.8.8.1.m1.1.1.2">0</cn><cn id="S5.T3.st1.8.8.1.m1.1.1.3.cmml" type="integer" xref="S5.T3.st1.8.8.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st1.8.8.1.m1.1c">0:1</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st1.8.8.1.m1.1d">0 : 1</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.st1.8.8.2">  0.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.st1.8.8.3">35.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.st1.8.8.4">24.5</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results on the training of QLIP by varying the balance between reconstruction and alignment objectives. It shows how different weightings (αr: αa) for the reconstruction loss (Lmse) and alignment loss (Lalign) impact the zero-shot classification accuracy (ZS) and reconstruction quality measured by rFID and PSNR.  Different ratios of αr: αa demonstrate the effect of emphasizing either reconstruction or alignment during training.
> <details>
> <summary>read the caption</summary>
> (a) Balancing Loss.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.st2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.st2.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.st2.2.1.1.1" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st2.2.1.1.1.1" style="font-size:90%;">Pretrain</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st2.2.1.1.2" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T3.st2.2.1.1.2.1" style="font-size:90%;">ZS</span><span class="ltx_text" id="S5.T3.st2.2.1.1.2.2" style="font-size:50%;">(%)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st2.2.1.1.3" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T3.st2.2.1.1.3.1" style="font-size:90%;">RC</span><span class="ltx_text" id="S5.T3.st2.2.1.1.3.2" style="font-size:50%;">(rFID)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st2.2.1.1.4" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T3.st2.2.1.1.4.1" style="font-size:90%;">RC</span><span class="ltx_text" id="S5.T3.st2.2.1.1.4.2" style="font-size:50%;">(PSNR)</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.st2.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.st2.2.2.1.1" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st2.2.2.1.1.1" style="font-size:90%;">None</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.st2.2.2.1.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st2.2.2.1.2.1" style="font-size:90%;">26.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.st2.2.2.1.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st2.2.2.1.3.1" style="font-size:90%;">35.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.st2.2.2.1.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st2.2.2.1.4.1" style="font-size:90%;">24.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.st2.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.st2.2.3.2.1" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T3.st2.2.3.2.1.1" style="font-size:90%;">MIM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.st2.2.3.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S5.T3.st2.2.3.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.st2.2.3.2.2" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st2.2.3.2.2.1" style="font-size:90%;">74.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.st2.2.3.2.3" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st2.2.3.2.3.1" style="font-size:90%;">35.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.st2.2.3.2.4" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st2.2.3.2.4.1" style="font-size:90%;">24.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.st2.2.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.st2.2.4.3.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T3.st2.2.4.3.1.1" style="font-size:90%;">CLIP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.st2.2.4.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a><span class="ltx_text" id="S5.T3.st2.2.4.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.st2.2.4.3.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st2.2.4.3.2.1" style="font-size:90%;">74.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.st2.2.4.3.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st2.2.4.3.3.1" style="font-size:90%;">41.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.st2.2.4.3.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st2.2.4.3.4.1" style="font-size:90%;">23.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study on different initialization methods for the visual encoder in the QLIP model. It compares the zero-shot classification accuracy (ZS) and reconstruction performance measured by FID (Frechet Inception Distance), PSNR (Peak Signal-to-Noise Ratio), and SSIM (Structural Similarity Index) across three different initialization strategies: None, Masked Image Modeling (MIM), and CLIP.  The results demonstrate the impact of various initialization techniques on the model's performance in both visual understanding and reconstruction tasks.
> <details>
> <summary>read the caption</summary>
> (b) Initialization.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.st3.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.st3.11.12.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.st3.11.12.1.1" style="padding:0.25pt 2.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.st3.11.12.1.2" style="padding:0.25pt 2.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st3.11.12.1.3" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T3.st3.11.12.1.3.1" style="font-size:90%;">ZS</span><span class="ltx_text" id="S5.T3.st3.11.12.1.3.2" style="font-size:50%;">(%)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st3.11.12.1.4" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T3.st3.11.12.1.4.1" style="font-size:90%;">RC</span><span class="ltx_text" id="S5.T3.st3.11.12.1.4.2" style="font-size:50%;">(rFID)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st3.11.12.1.5" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T3.st3.11.12.1.5.1" style="font-size:90%;">RC</span><span class="ltx_text" id="S5.T3.st3.11.12.1.5.2" style="font-size:50%;">(PSNR)</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.st3.4.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T3.st3.4.4.5" style="padding:0.25pt 2.0pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.st3.4.4.4" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T3.st3.4.4.4.1" style="font-size:90%;">(1) </span><math alttext="{\mathcal{E}}_{\mathrm{t}}" class="ltx_Math" display="inline" id="S5.T3.st3.1.1.1.m1.1"><semantics id="S5.T3.st3.1.1.1.m1.1a"><msub id="S5.T3.st3.1.1.1.m1.1.1" xref="S5.T3.st3.1.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T3.st3.1.1.1.m1.1.1.2" mathbackground="#D4D4D4" mathsize="90%" xref="S5.T3.st3.1.1.1.m1.1.1.2.cmml">ℰ</mi><mi id="S5.T3.st3.1.1.1.m1.1.1.3" mathbackground="#D4D4D4" mathsize="90%" mathvariant="normal" xref="S5.T3.st3.1.1.1.m1.1.1.3.cmml">t</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T3.st3.1.1.1.m1.1b"><apply id="S5.T3.st3.1.1.1.m1.1.1.cmml" xref="S5.T3.st3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.st3.1.1.1.m1.1.1.1.cmml" xref="S5.T3.st3.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T3.st3.1.1.1.m1.1.1.2.cmml" xref="S5.T3.st3.1.1.1.m1.1.1.2">ℰ</ci><ci id="S5.T3.st3.1.1.1.m1.1.1.3.cmml" xref="S5.T3.st3.1.1.1.m1.1.1.3">t</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st3.1.1.1.m1.1c">{\mathcal{E}}_{\mathrm{t}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st3.1.1.1.m1.1d">caligraphic_E start_POSTSUBSCRIPT roman_t end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T3.st3.4.4.4.2" style="font-size:90%;">, </span><math alttext="{\mathcal{E}}_{\mathrm{v}}" class="ltx_Math" display="inline" id="S5.T3.st3.2.2.2.m2.1"><semantics id="S5.T3.st3.2.2.2.m2.1a"><msub id="S5.T3.st3.2.2.2.m2.1.1" xref="S5.T3.st3.2.2.2.m2.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T3.st3.2.2.2.m2.1.1.2" mathbackground="#D4D4D4" mathsize="90%" xref="S5.T3.st3.2.2.2.m2.1.1.2.cmml">ℰ</mi><mi id="S5.T3.st3.2.2.2.m2.1.1.3" mathbackground="#D4D4D4" mathsize="90%" mathvariant="normal" xref="S5.T3.st3.2.2.2.m2.1.1.3.cmml">v</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T3.st3.2.2.2.m2.1b"><apply id="S5.T3.st3.2.2.2.m2.1.1.cmml" xref="S5.T3.st3.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S5.T3.st3.2.2.2.m2.1.1.1.cmml" xref="S5.T3.st3.2.2.2.m2.1.1">subscript</csymbol><ci id="S5.T3.st3.2.2.2.m2.1.1.2.cmml" xref="S5.T3.st3.2.2.2.m2.1.1.2">ℰ</ci><ci id="S5.T3.st3.2.2.2.m2.1.1.3.cmml" xref="S5.T3.st3.2.2.2.m2.1.1.3">v</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st3.2.2.2.m2.1c">{\mathcal{E}}_{\mathrm{v}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st3.2.2.2.m2.1d">caligraphic_E start_POSTSUBSCRIPT roman_v end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T3.st3.4.4.4.3" style="font-size:90%;">, </span><math alttext="{\mathcal{Q}}" class="ltx_Math" display="inline" id="S5.T3.st3.3.3.3.m3.1"><semantics id="S5.T3.st3.3.3.3.m3.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T3.st3.3.3.3.m3.1.1" mathbackground="#D4D4D4" mathsize="90%" xref="S5.T3.st3.3.3.3.m3.1.1.cmml">𝒬</mi><annotation-xml encoding="MathML-Content" id="S5.T3.st3.3.3.3.m3.1b"><ci id="S5.T3.st3.3.3.3.m3.1.1.cmml" xref="S5.T3.st3.3.3.3.m3.1.1">𝒬</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st3.3.3.3.m3.1c">{\mathcal{Q}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st3.3.3.3.m3.1d">caligraphic_Q</annotation></semantics></math><span class="ltx_text" id="S5.T3.st3.4.4.4.4" style="font-size:90%;">, </span><math alttext="{\mathcal{G}}" class="ltx_Math" display="inline" id="S5.T3.st3.4.4.4.m4.1"><semantics id="S5.T3.st3.4.4.4.m4.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T3.st3.4.4.4.m4.1.1" mathbackground="#D4D4D4" mathsize="90%" xref="S5.T3.st3.4.4.4.m4.1.1.cmml">𝒢</mi><annotation-xml encoding="MathML-Content" id="S5.T3.st3.4.4.4.m4.1b"><ci id="S5.T3.st3.4.4.4.m4.1.1.cmml" xref="S5.T3.st3.4.4.4.m4.1.1">𝒢</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st3.4.4.4.m4.1c">{\mathcal{G}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st3.4.4.4.m4.1d">caligraphic_G</annotation></semantics></math>
</th>
<td class="ltx_td ltx_border_t" id="S5.T3.st3.4.4.6" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.st3.4.4.7" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st3.4.4.7.1" style="font-size:90%;">35.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.st3.4.4.8" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st3.4.4.8.1" style="font-size:90%;">24.49</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.st3.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.st3.5.5.2" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st3.5.5.2.1" style="font-size:90%;">Recipe 1</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.st3.5.5.1" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T3.st3.5.5.1.1" style="font-size:90%;">(2) Finetune </span><math alttext="{\mathcal{G}}" class="ltx_Math" display="inline" id="S5.T3.st3.5.5.1.m1.1"><semantics id="S5.T3.st3.5.5.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T3.st3.5.5.1.m1.1.1" mathbackground="#D4D4D4" mathsize="90%" xref="S5.T3.st3.5.5.1.m1.1.1.cmml">𝒢</mi><annotation-xml encoding="MathML-Content" id="S5.T3.st3.5.5.1.m1.1b"><ci id="S5.T3.st3.5.5.1.m1.1.1.cmml" xref="S5.T3.st3.5.5.1.m1.1.1">𝒢</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st3.5.5.1.m1.1c">{\mathcal{G}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st3.5.5.1.m1.1d">caligraphic_G</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.st3.5.5.3" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T3.st3.5.5.3.1" style="font-size:90%;"></span><span class="ltx_text" id="S5.T3.st3.5.5.3.2" style="font-size:90%;">74.3</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.st3.5.5.4" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st3.5.5.4.1" style="font-size:90%;">3.21</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.st3.5.5.5" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st3.5.5.5.1" style="font-size:90%;">23.16</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.st3.6.6">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T3.st3.6.6.2" style="padding:0.25pt 2.0pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.st3.6.6.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T3.st3.6.6.1.1" style="font-size:90%;">(2)</span><sup class="ltx_sup" id="S5.T3.st3.6.6.1.2"><span class="ltx_text" id="S5.T3.st3.6.6.1.2.1" style="font-size:90%;">∗</span></sup><span class="ltx_text" id="S5.T3.st3.6.6.1.3" style="font-size:90%;"> (on IN-1k)</span>
</th>
<td class="ltx_td" id="S5.T3.st3.6.6.3" style="padding:0.25pt 2.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.st3.6.6.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st3.6.6.4.1" style="font-size:90%;">2.90</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.st3.6.6.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st3.6.6.5.1" style="font-size:90%;">23.33</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.st3.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T3.st3.9.9.4" rowspan="3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st3.9.9.4.1" style="font-size:90%;">Recipe 2</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.st3.9.9.3" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T3.st3.9.9.3.1" style="font-size:90%;">(1) </span><math alttext="{\mathcal{E}}_{\mathrm{t}}" class="ltx_Math" display="inline" id="S5.T3.st3.7.7.1.m1.1"><semantics id="S5.T3.st3.7.7.1.m1.1a"><msub id="S5.T3.st3.7.7.1.m1.1.1" xref="S5.T3.st3.7.7.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T3.st3.7.7.1.m1.1.1.2" mathsize="90%" xref="S5.T3.st3.7.7.1.m1.1.1.2.cmml">ℰ</mi><mi id="S5.T3.st3.7.7.1.m1.1.1.3" mathsize="90%" mathvariant="normal" xref="S5.T3.st3.7.7.1.m1.1.1.3.cmml">t</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T3.st3.7.7.1.m1.1b"><apply id="S5.T3.st3.7.7.1.m1.1.1.cmml" xref="S5.T3.st3.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.st3.7.7.1.m1.1.1.1.cmml" xref="S5.T3.st3.7.7.1.m1.1.1">subscript</csymbol><ci id="S5.T3.st3.7.7.1.m1.1.1.2.cmml" xref="S5.T3.st3.7.7.1.m1.1.1.2">ℰ</ci><ci id="S5.T3.st3.7.7.1.m1.1.1.3.cmml" xref="S5.T3.st3.7.7.1.m1.1.1.3">t</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st3.7.7.1.m1.1c">{\mathcal{E}}_{\mathrm{t}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st3.7.7.1.m1.1d">caligraphic_E start_POSTSUBSCRIPT roman_t end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T3.st3.9.9.3.2" style="font-size:90%;">, </span><math alttext="{\mathcal{E}}_{\mathrm{v}}" class="ltx_Math" display="inline" id="S5.T3.st3.8.8.2.m2.1"><semantics id="S5.T3.st3.8.8.2.m2.1a"><msub id="S5.T3.st3.8.8.2.m2.1.1" xref="S5.T3.st3.8.8.2.m2.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T3.st3.8.8.2.m2.1.1.2" mathsize="90%" xref="S5.T3.st3.8.8.2.m2.1.1.2.cmml">ℰ</mi><mi id="S5.T3.st3.8.8.2.m2.1.1.3" mathsize="90%" mathvariant="normal" xref="S5.T3.st3.8.8.2.m2.1.1.3.cmml">v</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T3.st3.8.8.2.m2.1b"><apply id="S5.T3.st3.8.8.2.m2.1.1.cmml" xref="S5.T3.st3.8.8.2.m2.1.1"><csymbol cd="ambiguous" id="S5.T3.st3.8.8.2.m2.1.1.1.cmml" xref="S5.T3.st3.8.8.2.m2.1.1">subscript</csymbol><ci id="S5.T3.st3.8.8.2.m2.1.1.2.cmml" xref="S5.T3.st3.8.8.2.m2.1.1.2">ℰ</ci><ci id="S5.T3.st3.8.8.2.m2.1.1.3.cmml" xref="S5.T3.st3.8.8.2.m2.1.1.3">v</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st3.8.8.2.m2.1c">{\mathcal{E}}_{\mathrm{v}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st3.8.8.2.m2.1d">caligraphic_E start_POSTSUBSCRIPT roman_v end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T3.st3.9.9.3.3" style="font-size:90%;">, </span><math alttext="{\mathcal{G}}" class="ltx_Math" display="inline" id="S5.T3.st3.9.9.3.m3.1"><semantics id="S5.T3.st3.9.9.3.m3.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T3.st3.9.9.3.m3.1.1" mathsize="90%" xref="S5.T3.st3.9.9.3.m3.1.1.cmml">𝒢</mi><annotation-xml encoding="MathML-Content" id="S5.T3.st3.9.9.3.m3.1b"><ci id="S5.T3.st3.9.9.3.m3.1.1.cmml" xref="S5.T3.st3.9.9.3.m3.1.1">𝒢</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st3.9.9.3.m3.1c">{\mathcal{G}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st3.9.9.3.m3.1d">caligraphic_G</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.st3.9.9.5" rowspan="3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st3.9.9.5.1" style="font-size:90%;">75.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.st3.9.9.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st3.9.9.6.1" style="font-size:90%;">17.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.st3.9.9.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st3.9.9.7.1" style="font-size:90%;">26.72</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.st3.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.st3.10.10.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T3.st3.10.10.1.1" style="font-size:90%;">(2) Train </span><math alttext="{\mathcal{Q}}" class="ltx_Math" display="inline" id="S5.T3.st3.10.10.1.m1.1"><semantics id="S5.T3.st3.10.10.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T3.st3.10.10.1.m1.1.1" mathsize="90%" xref="S5.T3.st3.10.10.1.m1.1.1.cmml">𝒬</mi><annotation-xml encoding="MathML-Content" id="S5.T3.st3.10.10.1.m1.1b"><ci id="S5.T3.st3.10.10.1.m1.1.1.cmml" xref="S5.T3.st3.10.10.1.m1.1.1">𝒬</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st3.10.10.1.m1.1c">{\mathcal{Q}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st3.10.10.1.m1.1d">caligraphic_Q</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.st3.10.10.2" rowspan="2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st3.10.10.2.1" style="font-size:90%;">13.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.st3.10.10.3" rowspan="2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T3.st3.10.10.3.1" style="font-size:90%;">23.34</span></td>
</tr>
</tbody>
<tfoot class="ltx_tfoot">
<tr class="ltx_tr" id="S5.T3.st3.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.st3.11.11.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T3.st3.11.11.1.1" style="font-size:90%;">+ Finetune </span><math alttext="{\mathcal{G}}" class="ltx_Math" display="inline" id="S5.T3.st3.11.11.1.m1.1"><semantics id="S5.T3.st3.11.11.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T3.st3.11.11.1.m1.1.1" mathsize="90%" xref="S5.T3.st3.11.11.1.m1.1.1.cmml">𝒢</mi><annotation-xml encoding="MathML-Content" id="S5.T3.st3.11.11.1.m1.1b"><ci id="S5.T3.st3.11.11.1.m1.1.1.cmml" xref="S5.T3.st3.11.11.1.m1.1.1">𝒢</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st3.11.11.1.m1.1c">{\mathcal{G}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st3.11.11.1.m1.1d">caligraphic_G</annotation></semantics></math>
</th>
</tr>
</tfoot>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation studies on training QLIP, focusing on different training recipes. It compares the zero-shot classification accuracy (ZS) and reconstruction quality (measured by FID and PSNR) under various conditions, including different combinations of loss functions (alignment, MSE, etc.), visual encoder initialization methods (random, MIM, CLIP), and whether or not a two-stage training process is used.  The results show the impact of each of these factors on the final performance, providing insights into the best training strategy for QLIP.
> <details>
> <summary>read the caption</summary>
> (c) Training Recipe.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.16.16">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.16.16.17.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T4.16.16.17.1.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.17.1.1.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T4.16.16.17.1.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.17.1.2.1" style="font-size:90%;">Vision Encoder</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T4.16.16.17.1.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.17.1.3.1" style="font-size:90%;">Res</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T4.16.16.17.1.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.17.1.4.1" style="font-size:90%;">LLM</span></th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.16.16.17.1.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.17.1.5.1" style="font-size:90%;">VQAv2</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.16.16.17.1.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.17.1.6.1" style="font-size:90%;">GQA</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.16.16.17.1.7" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.17.1.7.1" style="font-size:90%;">TextVQA</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.16.16.17.1.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.17.1.8.1" style="font-size:90%;">POPE</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.16.16.17.1.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.17.1.9.1" style="font-size:90%;">MME</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_tt" id="S5.T4.16.16.17.1.10" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_tt" id="S5.T4.16.16.17.1.11" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.17.1.11.1" style="font-size:90%;">MM-Vet</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.16.16.18.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.16.16.18.2.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.16.16.18.2.1.1" style="font-size:90%;">SEED-X </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.16.16.18.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a><span class="ltx_text" id="S5.T4.16.16.18.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.16.16.18.2.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.18.2.2.1" style="font-size:90%;">ViT-bigG-14</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.16.16.18.2.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.18.2.3.1" style="font-size:90%;">448</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.16.16.18.2.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.18.2.4.1" style="font-size:90%;">LLaMA-2-13B</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.16.16.18.2.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.18.2.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.16.16.18.2.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.18.2.6.1" style="font-size:90%;">47.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.16.16.18.2.7" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.18.2.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.16.16.18.2.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.18.2.8.1" style="font-size:90%;">84.2</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.16.16.18.2.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.18.2.9.1" style="font-size:90%;">1435.7</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_t" id="S5.T4.16.16.18.2.10" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_t" id="S5.T4.16.16.18.2.11" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.18.2.11.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.16.16.19.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.16.16.19.3.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.16.16.19.3.1.1" style="font-size:90%;">LaVIT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.16.16.19.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S5.T4.16.16.19.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.16.16.19.3.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.19.3.2.1" style="font-size:90%;">ViT-G</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.16.16.19.3.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.19.3.3.1" style="font-size:90%;">224</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.16.16.19.3.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.19.3.4.1" style="font-size:90%;">LLaMA-2-7B</span></th>
<td class="ltx_td ltx_align_left" id="S5.T4.16.16.19.3.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.19.3.5.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.16.16.19.3.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.19.3.6.1" style="font-size:90%;">48.0</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.16.16.19.3.7" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.19.3.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.16.16.19.3.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.19.3.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.16.16.19.3.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.19.3.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T4.16.16.19.3.10" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S5.T4.16.16.19.3.11" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.19.3.11.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.2.2.2.3" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.2.2.2.3.1" style="font-size:90%;">EVE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.2.2.2.3.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S5.T4.2.2.2.3.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.2.2.2.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.2.2.2.4.1" style="font-size:90%;">-</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.2.2.2.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.2.2.2.5.1" style="font-size:90%;">1344</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.2.2.2.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.2.2.2.6.1" style="font-size:90%;">Vicuna-1.5-7B</span></th>
<td class="ltx_td ltx_align_left" id="S5.T4.1.1.1.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.1.1.1.1.1" style="font-size:90%;">78.6</span><sup class="ltx_sup" id="S5.T4.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S5.T4.1.1.1.1.2.1" style="font-size:90%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.2.2.2.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.2.2.2.2.1" style="font-size:90%;">62.6</span><sup class="ltx_sup" id="S5.T4.2.2.2.2.2"><span class="ltx_text ltx_font_italic" id="S5.T4.2.2.2.2.2.1" style="font-size:90%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.2.2.2.7" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.2.2.2.7.1" style="font-size:90%;">56.8</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.2.2.2.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.2.2.2.8.1" style="font-size:90%;">85.0</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.2.2.2.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.2.2.2.9.1" style="font-size:90%;">1305.7</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T4.2.2.2.10" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S5.T4.2.2.2.11" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.2.2.2.11.1" style="font-size:90%;">25.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.16.16.20.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.16.16.20.4.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.20.4.1.1" style="font-size:90%;">Fuyu</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.16.16.20.4.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.20.4.2.1" style="font-size:90%;">-</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.16.16.20.4.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.20.4.3.1" style="font-size:90%;">1080</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.16.16.20.4.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.20.4.4.1" style="font-size:90%;">Persimmon-8B</span></th>
<td class="ltx_td ltx_align_left" id="S5.T4.16.16.20.4.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.20.4.5.1" style="font-size:90%;">74.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.16.16.20.4.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.20.4.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.16.16.20.4.7" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.20.4.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.16.16.20.4.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.20.4.8.1" style="font-size:90%;">74.1</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.16.16.20.4.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.20.4.9.1" style="font-size:90%;">728.6</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T4.16.16.20.4.10" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S5.T4.16.16.20.4.11" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.20.4.11.1" style="font-size:90%;">21.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.4.4.4.3" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.4.4.4.3.1" style="font-size:90%;">VILA-U </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.4.3.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib89" title=""><span class="ltx_text" style="font-size:90%;">89</span></a><span class="ltx_text" id="S5.T4.4.4.4.3.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.4.4.4.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.4.4.4.4.1" style="font-size:90%;">SigLIP-SO400M</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.4.4.4.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.4.4.4.5.1" style="font-size:90%;">384</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.4.4.4.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.4.4.4.6.1" style="font-size:90%;">LLaMA-2-7B</span></th>
<td class="ltx_td ltx_align_left" id="S5.T4.3.3.3.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.3.3.3.1.1" style="font-size:90%;">79.4</span><sup class="ltx_sup" id="S5.T4.3.3.3.1.2"><span class="ltx_text ltx_font_italic" id="S5.T4.3.3.3.1.2.1" style="font-size:90%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.4.4.4.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.4.4.4.2.1" style="font-size:90%;">60.8</span><sup class="ltx_sup" id="S5.T4.4.4.4.2.2"><span class="ltx_text ltx_font_italic" id="S5.T4.4.4.4.2.2.1" style="font-size:90%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.4.4.4.7" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.4.4.4.7.1" style="font-size:90%;">60.8</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.4.4.4.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.4.4.4.8.1" style="font-size:90%;">85.8</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.4.4.4.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.4.4.4.9.1" style="font-size:90%;">1401.8</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T4.4.4.4.10" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S5.T4.4.4.4.11" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.4.4.4.11.1" style="font-size:90%;">33.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.5.5.5.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.5.5.5.2.1" style="font-size:90%;">Chameleon </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.5.5.5.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib77" title=""><span class="ltx_text" style="font-size:90%;">77</span></a><span class="ltx_text" id="S5.T4.5.5.5.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.5.5.5.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.5.5.5.3.1" style="font-size:90%;">VQ-VAE</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.5.5.5.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.5.5.5.4.1" style="font-size:90%;">512</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.5.5.5.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.5.5.5.1.1" style="font-size:90%;">LLaMA-2-34B</span><sup class="ltx_sup" id="S5.T4.5.5.5.1.2"><span class="ltx_text ltx_font_italic" id="S5.T4.5.5.5.1.2.1" style="font-size:90%;">+</span></sup>
</th>
<td class="ltx_td ltx_align_left" id="S5.T4.5.5.5.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.5.5.5.5.1" style="font-size:90%;">69.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.5.5.5.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.5.5.5.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.5.5.5.7" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.5.5.5.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.5.5.5.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.5.5.5.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.5.5.5.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.5.5.5.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T4.5.5.5.10" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S5.T4.5.5.5.11" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.5.5.5.11.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.7.7.7.3" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.7.7.7.3.1" style="font-size:90%;">Show-o </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.7.7.7.3.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib90" title=""><span class="ltx_text" style="font-size:90%;">90</span></a><span class="ltx_text" id="S5.T4.7.7.7.3.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.7.7.7.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.7.7.7.4.1" style="font-size:90%;">MAGVIT-v2</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.7.7.7.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.7.7.7.5.1" style="font-size:90%;">256</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.7.7.7.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.7.7.7.6.1" style="font-size:90%;">Phi-1.5-1.3B</span></th>
<td class="ltx_td ltx_align_left" id="S5.T4.6.6.6.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.6.6.6.1.1" style="font-size:90%;">59.3</span><sup class="ltx_sup" id="S5.T4.6.6.6.1.2"><span class="ltx_text ltx_font_italic" id="S5.T4.6.6.6.1.2.1" style="font-size:90%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.7.7.7.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.7.7.7.2.1" style="font-size:90%;">48.7</span><sup class="ltx_sup" id="S5.T4.7.7.7.2.2"><span class="ltx_text ltx_font_italic" id="S5.T4.7.7.7.2.2.1" style="font-size:90%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.7.7.7.7" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.7.7.7.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.7.7.7.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.7.7.7.8.1" style="font-size:90%;">73.8</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.7.7.7.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.7.7.7.9.1" style="font-size:90%;">948.4</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T4.7.7.7.10" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S5.T4.7.7.7.11" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.7.7.7.11.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.10.10.10.4" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.10.10.10.4.1" style="font-size:90%;">Emu3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.10.10.10.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib85" title=""><span class="ltx_text" style="font-size:90%;">85</span></a><span class="ltx_text" id="S5.T4.10.10.10.4.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.10.10.10.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.10.10.10.5.1" style="font-size:90%;">MoVQGAN</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.10.10.10.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.10.10.10.6.1" style="font-size:90%;">512</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.8.8.8.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.8.8.8.1.1" style="font-size:90%;">LLaMA-2-8B</span><sup class="ltx_sup" id="S5.T4.8.8.8.1.2"><span class="ltx_text ltx_font_italic" id="S5.T4.8.8.8.1.2.1" style="font-size:90%;">+</span></sup>
</th>
<td class="ltx_td ltx_align_left" id="S5.T4.9.9.9.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.9.9.9.2.1" style="font-size:90%;">75.1</span><sup class="ltx_sup" id="S5.T4.9.9.9.2.2"><span class="ltx_text ltx_font_italic" id="S5.T4.9.9.9.2.2.1" style="font-size:90%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.10.10.10.3" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.10.10.10.3.1" style="font-size:90%;">60.3</span><sup class="ltx_sup" id="S5.T4.10.10.10.3.2"><span class="ltx_text ltx_font_italic" id="S5.T4.10.10.10.3.2.1" style="font-size:90%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.10.10.10.7" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.10.10.10.7.1" style="font-size:90%;">64.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.10.10.10.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.10.10.10.8.1" style="font-size:90%;">85.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.10.10.10.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.10.10.10.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_r" id="S5.T4.10.10.10.10" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S5.T4.10.10.10.11" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.10.10.10.11.1" style="font-size:90%;">37.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T4.12.12.12.3" rowspan="3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.12.12.12.3.1" style="font-size:90%;">LLaVA-1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.12.12.12.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.12.12.12.4.1" style="font-size:90%;">CLIP-Large (orig.)</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.12.12.12.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.12.12.12.5.1" style="font-size:90%;">336</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.12.12.12.6" rowspan="3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.12.12.12.6.1" style="font-size:90%;">Vicuna-1.5-7B</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.11.11.11.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.11.11.11.1.1" style="font-size:90%;">78.5</span><sup class="ltx_sup" id="S5.T4.11.11.11.1.2"><span class="ltx_text ltx_font_italic" id="S5.T4.11.11.11.1.2.1" style="font-size:90%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.12.12.12.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.12.12.12.2.1" style="font-size:90%;">62.0</span><sup class="ltx_sup" id="S5.T4.12.12.12.2.2"><span class="ltx_text ltx_font_italic" id="S5.T4.12.12.12.2.2.1" style="font-size:90%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.12.12.12.7" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.12.12.12.7.1" style="font-size:90%;">58.2</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.12.12.12.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.12.12.12.8.1" style="font-size:90%;">85.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.12.12.12.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.12.12.12.9.1" style="font-size:90%;">1510.7</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_t" id="S5.T4.12.12.12.10" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_t" id="S5.T4.12.12.12.11" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.12.12.12.11.1" style="font-size:90%;">30.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.14.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.14.14.14.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.14.14.14.3.1" style="font-size:90%;">CLIP-Large (repro.)</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.14.14.14.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.14.14.14.4.1" style="font-size:90%;">392</span></th>
<td class="ltx_td ltx_align_left" id="S5.T4.13.13.13.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.13.13.13.1.1" style="font-size:90%;">79.1</span><sup class="ltx_sup" id="S5.T4.13.13.13.1.2"><span class="ltx_text ltx_font_italic" id="S5.T4.13.13.13.1.2.1" style="font-size:90%;">∗</span></sup><span class="ltx_text ltx_font_bold" id="S5.T4.13.13.13.1.3" style="font-size:70%;color:#808080;">(+0.0)</span>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.14.14.14.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.14.14.14.2.1" style="font-size:90%;">62.3</span><sup class="ltx_sup" id="S5.T4.14.14.14.2.2"><span class="ltx_text ltx_font_italic" id="S5.T4.14.14.14.2.2.1" style="font-size:90%;">∗</span></sup><span class="ltx_text ltx_font_bold" id="S5.T4.14.14.14.2.3" style="font-size:70%;color:#808080;">(+0.0)</span>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.14.14.14.5" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.14.14.14.5.1" style="font-size:90%;">55.4</span><span class="ltx_text ltx_font_bold" id="S5.T4.14.14.14.5.2" style="font-size:70%;color:#808080;">(+0.0)</span>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.14.14.14.6" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.14.14.14.6.1" style="font-size:90%;">87.5</span><span class="ltx_text ltx_font_bold" id="S5.T4.14.14.14.6.2" style="font-size:70%;color:#808080;">(+0.0)</span>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.14.14.14.7" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.14.14.14.7.1" style="font-size:90%;">1484.9</span><span class="ltx_text ltx_font_bold" id="S5.T4.14.14.14.7.2" style="font-size:70%;color:#808080;">(+0.0)</span>
</td>
<td class="ltx_td ltx_nopad_r" id="S5.T4.14.14.14.8" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S5.T4.14.14.14.9" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.14.14.14.9.1" style="font-size:90%;">33.3</span><span class="ltx_text ltx_font_bold" id="S5.T4.14.14.14.9.2" style="font-size:70%;color:#808080;">(+0.0)</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.16.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.16.16.16.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.16.3.1" style="font-size:90%;">QLIP-Large (ours)</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.16.16.16.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T4.16.16.16.4.1" style="font-size:90%;">392</span></th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T4.15.15.15.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.15.15.15.1.1" style="font-size:90%;">78.3</span><sup class="ltx_sup" id="S5.T4.15.15.15.1.2"><span class="ltx_text ltx_font_italic" id="S5.T4.15.15.15.1.2.1" style="font-size:90%;">∗</span></sup><span class="ltx_text ltx_font_bold" id="S5.T4.15.15.15.1.3" style="font-size:70%;color:#8BBF9B;">(-0.8)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T4.16.16.16.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.16.16.16.2.1" style="font-size:90%;">61.8</span><sup class="ltx_sup" id="S5.T4.16.16.16.2.2"><span class="ltx_text ltx_font_italic" id="S5.T4.16.16.16.2.2.1" style="font-size:90%;">∗</span></sup><span class="ltx_text ltx_font_bold" id="S5.T4.16.16.16.2.3" style="font-size:70%;color:#8BBF9B;">(-0.5)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T4.16.16.16.5" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.16.16.16.5.1" style="font-size:90%;">55.2</span><span class="ltx_text ltx_font_bold" id="S5.T4.16.16.16.5.2" style="font-size:70%;color:#8BBF9B;">(-0.2)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T4.16.16.16.6" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.16.16.16.6.1" style="font-size:90%;">86.1</span><span class="ltx_text ltx_font_bold" id="S5.T4.16.16.16.6.2" style="font-size:70%;color:#8BBF9B;">(-1.4)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T4.16.16.16.7" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.16.16.16.7.1" style="font-size:90%;">1498.3</span><span class="ltx_text ltx_font_bold" id="S5.T4.16.16.16.7.2" style="font-size:70%;color:#1E90FF;">(+13.4)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_border_bb" id="S5.T4.16.16.16.8" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_bb" id="S5.T4.16.16.16.9" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T4.16.16.16.9.1" style="font-size:90%;">33.3</span><span class="ltx_text ltx_font_bold" id="S5.T4.16.16.16.9.2" style="font-size:70%;color:#1E90FF;">(+0.0)</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation studies performed on the Quantized Language-Image Pretraining (QLIP) model.  It examines the effects of various training strategies and hyperparameters on the model's performance, specifically focusing on zero-shot classification (ZS) accuracy and reconstruction quality (RC), measured by reconstruction FID (Fréchet Inception Distance) and PSNR (Peak Signal-to-Noise Ratio). The results help to understand the contribution of different components and training choices in achieving the final performance of QLIP.
> <details>
> <summary>read the caption</summary>
> Table 3:  Ablation studies of training QLIP. ZS: zero-shot classification; RC: reconstruction. We highlight the default setting.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.5.5.6.1">
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T5.5.5.6.1.1" style="padding:0.25pt 3.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T5.5.5.6.1.2" style="padding:0.25pt 3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="5" id="S5.T5.5.5.6.1.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.6.1.3.1" style="font-size:90%;">Text-only</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S5.T5.5.5.6.1.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.6.1.4.1" style="font-size:90%;">I2T (COCO-Karpathy)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T5.5.5.6.1.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.6.1.5.1" style="font-size:90%;">T2I (COCO-30k)</span></th>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S5.T5.2.2.2.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.3.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T5.2.2.2.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.4.1" style="font-size:90%;"># Params</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T5.2.2.2.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.5.1" style="font-size:90%;">ARC-C</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T5.2.2.2.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.6.1" style="font-size:90%;">Hellaswag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T5.2.2.2.7" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.7.1" style="font-size:90%;">PIQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T5.2.2.2.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.8.1" style="font-size:90%;">SIQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T5.2.2.2.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.9.1" style="font-size:90%;">Winogrande</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T5.2.2.2.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.10.1" style="font-size:90%;">BLEU@4</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T5.2.2.2.11" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.11.1" style="font-size:90%;">METEOR</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T5.2.2.2.12" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.12.1" style="font-size:90%;">CIDEr</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T5.1.1.1.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T5.1.1.1.1.1" style="font-size:90%;">gFID</span><sub class="ltx_sub" id="S5.T5.1.1.1.1.2"><span class="ltx_text" id="S5.T5.1.1.1.1.2.1" style="font-size:90%;">↓</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T5.2.2.2.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T5.2.2.2.2.1" style="font-size:90%;">CLIPScore</span><sub class="ltx_sub" id="S5.T5.2.2.2.2.2"><span class="ltx_text" id="S5.T5.2.2.2.2.2.1" style="font-size:90%;">↑</span></sub>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.5.5.7.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.5.7.1.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T5.5.5.7.1.1.1" style="font-size:90%;">Llama-3.2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.5.5.7.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="S5.T5.5.5.7.1.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.7.1.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.7.1.2.1" style="font-size:90%;">1.4B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.7.1.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.7.1.3.1" style="font-size:90%;">34.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.7.1.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.7.1.4.1" style="font-size:90%;">48.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.7.1.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.7.1.5.1" style="font-size:90%;">75.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.7.1.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.7.1.6.1" style="font-size:90%;">43.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.5.5.7.1.7" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.7.1.7.1" style="font-size:90%;">61.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.7.1.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.7.1.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.7.1.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.7.1.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.5.5.7.1.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.7.1.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.7.1.11" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.7.1.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.7.1.12" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.7.1.12.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.8.2">
<td class="ltx_td ltx_align_left" id="S5.T5.5.5.8.2.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T5.5.5.8.2.1.1" style="font-size:90%;">ZeroCap </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.5.5.8.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib79" title=""><span class="ltx_text" style="font-size:90%;">79</span></a><span class="ltx_text" id="S5.T5.5.5.8.2.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.8.2.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.8.2.2.1" style="font-size:90%;">0.5B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.8.2.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.8.2.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.8.2.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.8.2.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.8.2.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.8.2.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.8.2.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.8.2.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.5.5.8.2.7" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.8.2.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.8.2.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.8.2.8.1" style="font-size:90%;">2.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.8.2.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.8.2.9.1" style="font-size:90%;">11.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.5.5.8.2.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.8.2.10.1" style="font-size:90%;">14.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.8.2.11" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.8.2.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.8.2.12" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.8.2.12.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.4.4">
<td class="ltx_td ltx_align_left" id="S5.T5.4.4.4.3" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T5.4.4.4.3.1" style="font-size:90%;">LlamaGen </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.4.4.4.3.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib74" title=""><span class="ltx_text" style="font-size:90%;">74</span></a><span class="ltx_text" id="S5.T5.4.4.4.3.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.4.4.4.4.1" style="font-size:90%;">0.8B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.4.4.4.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.4.4.4.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.7" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.4.4.4.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.4.4.4.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.4.4.4.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.4.4.4.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.4.4.4.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.11" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.4.4.4.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.4.4.4.12" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.4.4.4.12.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.3.3.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T5.3.3.3.1.1" style="font-size:90%;">33.4</span><sup class="ltx_sup" id="S5.T5.3.3.3.1.2"><span class="ltx_text ltx_font_italic" id="S5.T5.3.3.3.1.2.1" style="font-size:90%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T5.4.4.4.2.1" style="font-size:90%;">0.257</span><sup class="ltx_sup" id="S5.T5.4.4.4.2.2"><span class="ltx_text ltx_font_italic" id="S5.T5.4.4.4.2.2.1" style="font-size:90%;">∗</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T5.5.5.5.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T5.5.5.5.1.1" style="font-size:90%;">UM</span><sup class="ltx_sup" id="S5.T5.5.5.5.1.2"><span class="ltx_text" id="S5.T5.5.5.5.1.2.1" style="font-size:90%;">3</span></sup><span class="ltx_text" id="S5.T5.5.5.5.1.3" style="font-size:90%;"> (Ours)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.5.5.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.5.2.1" style="font-size:90%;">1.5B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.5.5.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.5.3.1" style="font-size:90%;">34.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.5.5.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.5.4.1" style="font-size:90%;">45.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.5.5.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.5.5.1" style="font-size:90%;">74.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.5.5.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.5.6.1" style="font-size:90%;">43.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.5.5.5.7" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.5.7.1" style="font-size:90%;">54.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.5.5.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.5.8.1" style="font-size:90%;">8.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.5.5.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.5.9.1" style="font-size:90%;">20.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.5.5.5.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.5.10.1" style="font-size:90%;">17.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.5.5.11" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.5.11.1" style="font-size:90%;">44.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.5.5.12" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T5.5.5.5.12.1" style="font-size:90%;">0.250</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comparison of vision-language understanding performance between various models, including QLIP and LLaVA-1.5.  It evaluates models across multiple benchmark datasets (VQAv2, GQA, TextVQA, POPE, MME, MM-Vet) commonly used to assess vision-language capabilities.  The results highlight QLIP's performance in relation to established methods and shows that when using a controlled experimental setup with a reproduced CLIP-Large model, QLIP's encoder achieves comparable performance to LLaVA-1.5.
> <details>
> <summary>read the caption</summary>
> Table 4:  Comparison to vision-language modeling on vision-language understanding benchmarks. QLIP’s encoder works on par with LLaVA-1.5 with our reproduced CLIP-Large under a controlled experiment.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T6.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T6.1.1.1.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.1.2.1" style="font-size:90%;">Contra.</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.1.3.1" style="font-size:90%;">Recon.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.1.4.1" style="font-size:70%;">layer#</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.1" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.1.1.1" style="font-size:70%;">use <math alttext="{\mathcal{Q}}" class="ltx_Math" display="inline" id="S5.T6.1.1.1.1.1.m1.1"><semantics id="S5.T6.1.1.1.1.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T6.1.1.1.1.1.m1.1.1" xref="S5.T6.1.1.1.1.1.m1.1.1.cmml">𝒬</mi><annotation-xml encoding="MathML-Content" id="S5.T6.1.1.1.1.1.m1.1b"><ci id="S5.T6.1.1.1.1.1.m1.1.1.cmml" xref="S5.T6.1.1.1.1.1.m1.1.1">𝒬</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.1.1.1.1.1.m1.1c">{\mathcal{Q}}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.1.1.1.1.1.m1.1d">caligraphic_Q</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T6.1.1.1.5" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T6.1.1.1.5.1" style="font-size:90%;">ZS</span><span class="ltx_text" id="S5.T6.1.1.1.5.2" style="font-size:50%;">(%)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.1.6.1" style="font-size:90%;">GQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.1.7.1" style="font-size:90%;">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.1.8.1" style="font-size:90%;">POPE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.1.9.1" style="font-size:90%;">MME</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T6.1.1.2.1.1" style="padding:0.25pt 2.0pt;">
<span class="ltx_text" id="S5.T6.1.1.2.1.1.1" style="font-size:90%;">✓</span><span class="ltx_text" id="S5.T6.1.1.2.1.1.2" style="font-size:50%;">(CLIP-B)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.1.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.2.1.2.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.1.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.2.1.3.1" style="font-size:90%;">-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.1.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.2.1.4.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.1.1.2.1.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.2.1.5.1" style="font-size:90%;">68.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.1.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.2.1.6.1" style="font-size:90%;">59.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.1.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.2.1.7.1" style="font-size:90%;">51.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.1.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.2.1.8.1" style="font-size:90%;">84.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.1.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.2.1.9.1" style="font-size:90%;">1397.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T6.1.1.3.2.1" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.3.2.1.1" style="font-size:90%;">✓</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.3.2.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.3.2.2.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.3.2.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.3.2.3.1" style="font-size:90%;">-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.3.2.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.3.2.4.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.1.1.3.2.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.3.2.5.1" style="font-size:90%;">75.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.3.2.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.3.2.6.1" style="font-size:90%;">62.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.3.2.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.3.2.7.1" style="font-size:90%;">51.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.3.2.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.3.2.8.1" style="font-size:90%;">85.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.3.2.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.3.2.9.1" style="font-size:90%;">1411.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T6.1.1.4.3.1" rowspan="3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.4.3.1.1" style="font-size:90%;">✓</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.4.3.2" rowspan="3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.4.3.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.4.3.3" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.4.3.3.1" style="font-size:90%;">-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.4.3.4" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.4.3.4.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.1.1.4.3.5" rowspan="3" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.4.3.5.1" style="font-size:90%;">74.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.4.3.6" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.4.3.6.1" style="font-size:90%;">61.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.4.3.7" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.4.3.7.1" style="font-size:90%;">51.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.4.3.8" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.4.3.8.1" style="font-size:90%;">86.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.4.3.9" style="background-color:#D4D4D4;padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.4.3.9.1" style="font-size:90%;">1398.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.5.4">
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.4.1" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.5.4.1.1" style="font-size:90%;">-1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.4.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.5.4.2.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.4.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.5.4.3.1" style="font-size:90%;">50.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.4.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.5.4.4.1" style="font-size:90%;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.4.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.5.4.5.1" style="font-size:90%;">77.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.4.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.5.4.6.1" style="font-size:90%;">1077.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.6.5">
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.6.5.1" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.6.5.1.1" style="font-size:90%;">-1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.6.5.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.6.5.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.6.5.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.6.5.3.1" style="font-size:90%;">40.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.6.5.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.6.5.4.1" style="font-size:90%;">43.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.6.5.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.6.5.5.1" style="font-size:90%;">50.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.6.5.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.6.5.6.1" style="font-size:90%;">677.17</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T6.1.1.7.6.1" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.7.6.1.1" style="font-size:90%;">✗</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.1.1.7.6.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.7.6.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.1.1.7.6.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.7.6.3.1" style="font-size:90%;">-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.1.1.7.6.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.7.6.4.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T6.1.1.7.6.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.7.6.5.1" style="font-size:90%;">  0.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.1.1.7.6.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.7.6.6.1" style="font-size:90%;">50.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.1.1.7.6.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.7.6.7.1" style="font-size:90%;">43.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.1.1.7.6.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.7.6.8.1" style="font-size:90%;">78.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.1.1.7.6.9" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="S5.T6.1.1.7.6.9.1" style="font-size:90%;">1093.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Unified Multimodal Model (UM³) on various benchmarks.  It compares the UM³'s results on language-only tasks (ARC-Challenge, HellaSwag, PIQA, SocialIQA, Winogrande), image-to-text captioning (BLEU@4, METEOR, CIDEr), and text-to-image generation (FID, CLIPScore). The asterisk (*) indicates results obtained using a checkpoint trained with a similar number of image tokens (60 million image samples, or 30 billion visual tokens) as the primary UM³ model.
> <details>
> <summary>read the caption</summary>
> Table 5:  Results of the Unified Multi-modal Language Model. The number with ∗ is obtained using the checkpoint trained with a similar number of seen image tokens (60M image samples, or 30B visual tokens) as ours.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T7.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T7.4.4.5.1">
<th class="ltx_td ltx_nopad_l ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T7.4.4.5.1.1" rowspan="2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.5.1.1.1" style="font-size:90%;">Tokenizer</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T7.4.4.5.1.2" rowspan="2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.5.1.2.1" style="font-size:90%;"># Images</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T7.4.4.5.1.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.5.1.3.1" style="font-size:90%;">MS-COCO 30K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T7.4.4.5.1.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.5.1.4.1" style="font-size:90%;">GenEval</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T7.4.4.5.1.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.5.1.5.1" style="font-size:90%;">DPG-Bench</span></th>
</tr>
<tr class="ltx_tr" id="S5.T7.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T7.1.1.1.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T7.1.1.1.1.1" style="font-size:90%;">gFID</span><sub class="ltx_sub" id="S5.T7.1.1.1.1.2"><span class="ltx_text" id="S5.T7.1.1.1.1.2.1" style="font-size:90%;">↓</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T7.2.2.2.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T7.2.2.2.2.1" style="font-size:90%;">CLIPScore</span><sub class="ltx_sub" id="S5.T7.2.2.2.2.2"><span class="ltx_text" id="S5.T7.2.2.2.2.2.1" style="font-size:90%;">↑</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T7.3.3.3.3" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T7.3.3.3.3.1" style="font-size:90%;">Overall</span><sub class="ltx_sub" id="S5.T7.3.3.3.3.2"><span class="ltx_text" id="S5.T7.3.3.3.3.2.1" style="font-size:90%;">↑</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T7.4.4.4.4" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T7.4.4.4.4.1" style="font-size:90%;">Overall</span><sub class="ltx_sub" id="S5.T7.4.4.4.4.2"><span class="ltx_text" id="S5.T7.4.4.4.4.2.1" style="font-size:90%;">↑</span></sub>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T7.4.4.6.1">
<th class="ltx_td ltx_nopad_l ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T7.4.4.6.1.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="S5.T7.4.4.6.1.1.1" style="font-size:90%;">VQGAN (used in </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T7.4.4.6.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib74" title=""><span class="ltx_text" style="font-size:90%;">74</span></a><span class="ltx_text" id="S5.T7.4.4.6.1.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S5.T7.4.4.6.1.1.4" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S5.T7.4.4.6.1.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.6.1.2.1" style="font-size:90%;">50M</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.4.4.6.1.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.6.1.3.1" style="font-size:90%;">15.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.4.4.6.1.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.6.1.4.1" style="font-size:90%;">0.309</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.4.4.6.1.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.6.1.5.1" style="font-size:90%;">0.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.4.4.6.1.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.6.1.6.1" style="font-size:90%;">43.22</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.4.4.7.2">
<th class="ltx_td ltx_nopad_l ltx_align_left ltx_th ltx_th_row" id="S5.T7.4.4.7.2.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.7.2.1.1" style="font-size:90%;">BSQViT-B/16</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S5.T7.4.4.7.2.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.7.2.2.1" style="font-size:90%;">15M</span></th>
<td class="ltx_td ltx_align_center" id="S5.T7.4.4.7.2.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.7.2.3.1" style="font-size:90%;">19.03</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.4.4.7.2.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.7.2.4.1" style="font-size:90%;">0.303</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.4.4.7.2.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.7.2.5.1" style="font-size:90%;">0.31</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.4.4.7.2.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.7.2.6.1" style="font-size:90%;">34.03</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.4.4.8.3">
<th class="ltx_td ltx_nopad_l ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T7.4.4.8.3.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.8.3.1.1" style="font-size:90%;">QLIP-B/16</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="S5.T7.4.4.8.3.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="S5.T7.4.4.8.3.2.1" style="font-size:90%;">15M</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.4.4.8.3.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.4.4.8.3.3.1" style="font-size:90%;">15.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.4.4.8.3.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.4.4.8.3.4.1" style="font-size:90%;">0.316</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.4.4.8.3.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.4.4.8.3.5.1" style="font-size:90%;">0.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.4.4.8.3.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.4.4.8.3.6.1" style="font-size:90%;">78.17</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of various design choices within the QLIP model on vision-language understanding performance.  The table compares the original CLIP-B model (row 1) to several variants of the QLIP model (rows 2-7). These variations explore different aspects: the inclusion of the contrastive loss (✓ or ✗), the stage at which the quantizer is used (-1 or -2, indicating the layer before or after the quantizer is used), and whether the quantizer is employed (✓ or ✗).  Each row shows the zero-shot accuracy (ZS) and scores on the GQA, TextVQA, POPE, and MM-Vet benchmarks. This analysis helps determine the contribution of different components of the QLIP architecture to its overall effectiveness in vision-language understanding tasks.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablations studies on vision-language understanding benchmarks. The first row denotes the original CLIP-B model while all other rows are from our models. “use 𝒬𝒬{\mathcal{Q}}caligraphic_Q” means that the feature is after the quantizer.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T8.12.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.12.12.13.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.13.1.1">config</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.13.1.2">Stage 1</td>
<td class="ltx_td ltx_align_center" id="A1.T8.12.12.13.1.3">Stage 2</td>
</tr>
<tr class="ltx_tr" id="A1.T8.12.12.14.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.12.12.14.2.1">peak learning rate</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.12.12.14.2.2">5e-4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.12.12.14.2.3">5e-4</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.1.1.1.1">
<math alttext="{\mathcal{E}}_{\mathrm{v}}" class="ltx_Math" display="inline" id="A1.T8.1.1.1.1.m1.1"><semantics id="A1.T8.1.1.1.1.m1.1a"><msub id="A1.T8.1.1.1.1.m1.1.1" xref="A1.T8.1.1.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T8.1.1.1.1.m1.1.1.2" xref="A1.T8.1.1.1.1.m1.1.1.2.cmml">ℰ</mi><mi id="A1.T8.1.1.1.1.m1.1.1.3" mathvariant="normal" xref="A1.T8.1.1.1.1.m1.1.1.3.cmml">v</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T8.1.1.1.1.m1.1b"><apply id="A1.T8.1.1.1.1.m1.1.1.cmml" xref="A1.T8.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.1.1.1.1.m1.1.1.1.cmml" xref="A1.T8.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T8.1.1.1.1.m1.1.1.2.cmml" xref="A1.T8.1.1.1.1.m1.1.1.2">ℰ</ci><ci id="A1.T8.1.1.1.1.m1.1.1.3.cmml" xref="A1.T8.1.1.1.1.m1.1.1.3">v</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.1.1.1.1.m1.1c">{\mathcal{E}}_{\mathrm{v}}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.1.1.1.1.m1.1d">caligraphic_E start_POSTSUBSCRIPT roman_v end_POSTSUBSCRIPT</annotation></semantics></math> learning rate</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.1.1.1.2">2e-4</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.1.3">0</td>
</tr>
<tr class="ltx_tr" id="A1.T8.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.2.2.2.1">
<math alttext="{\mathcal{E}}_{\mathrm{t}}" class="ltx_Math" display="inline" id="A1.T8.2.2.2.1.m1.1"><semantics id="A1.T8.2.2.2.1.m1.1a"><msub id="A1.T8.2.2.2.1.m1.1.1" xref="A1.T8.2.2.2.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T8.2.2.2.1.m1.1.1.2" xref="A1.T8.2.2.2.1.m1.1.1.2.cmml">ℰ</mi><mi id="A1.T8.2.2.2.1.m1.1.1.3" mathvariant="normal" xref="A1.T8.2.2.2.1.m1.1.1.3.cmml">t</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T8.2.2.2.1.m1.1b"><apply id="A1.T8.2.2.2.1.m1.1.1.cmml" xref="A1.T8.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.2.2.2.1.m1.1.1.1.cmml" xref="A1.T8.2.2.2.1.m1.1.1">subscript</csymbol><ci id="A1.T8.2.2.2.1.m1.1.1.2.cmml" xref="A1.T8.2.2.2.1.m1.1.1.2">ℰ</ci><ci id="A1.T8.2.2.2.1.m1.1.1.3.cmml" xref="A1.T8.2.2.2.1.m1.1.1.3">t</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.2.2.2.1.m1.1c">{\mathcal{E}}_{\mathrm{t}}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.2.2.2.1.m1.1d">caligraphic_E start_POSTSUBSCRIPT roman_t end_POSTSUBSCRIPT</annotation></semantics></math> learning rate</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.2.2.2.2">2e-5</td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.2.2.3">0</td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.3.3.3.1">
<math alttext="{\mathcal{G}}" class="ltx_Math" display="inline" id="A1.T8.3.3.3.1.m1.1"><semantics id="A1.T8.3.3.3.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="A1.T8.3.3.3.1.m1.1.1" xref="A1.T8.3.3.3.1.m1.1.1.cmml">𝒢</mi><annotation-xml encoding="MathML-Content" id="A1.T8.3.3.3.1.m1.1b"><ci id="A1.T8.3.3.3.1.m1.1.1.cmml" xref="A1.T8.3.3.3.1.m1.1.1">𝒢</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.3.3.3.1.m1.1c">{\mathcal{G}}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.3.3.3.1.m1.1d">caligraphic_G</annotation></semantics></math> learning rate</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.3.3.3.2">2e-3</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.3.3.3">1e-4</td>
</tr>
<tr class="ltx_tr" id="A1.T8.12.12.15.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.15.3.1">learning rate schedule</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.15.3.2">cosine annealing</td>
<td class="ltx_td ltx_align_center" id="A1.T8.12.12.15.3.3">cosine annealing</td>
</tr>
<tr class="ltx_tr" id="A1.T8.12.12.16.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.16.4.1">optimizer</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.16.4.2">LAMB</td>
<td class="ltx_td ltx_align_center" id="A1.T8.12.12.16.4.3">AdamW</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.4.4.1">optimizer <math alttext="(\beta_{1},\beta_{2})" class="ltx_Math" display="inline" id="A1.T8.4.4.4.1.m1.2"><semantics id="A1.T8.4.4.4.1.m1.2a"><mrow id="A1.T8.4.4.4.1.m1.2.2.2" xref="A1.T8.4.4.4.1.m1.2.2.3.cmml"><mo id="A1.T8.4.4.4.1.m1.2.2.2.3" stretchy="false" xref="A1.T8.4.4.4.1.m1.2.2.3.cmml">(</mo><msub id="A1.T8.4.4.4.1.m1.1.1.1.1" xref="A1.T8.4.4.4.1.m1.1.1.1.1.cmml"><mi id="A1.T8.4.4.4.1.m1.1.1.1.1.2" xref="A1.T8.4.4.4.1.m1.1.1.1.1.2.cmml">β</mi><mn id="A1.T8.4.4.4.1.m1.1.1.1.1.3" xref="A1.T8.4.4.4.1.m1.1.1.1.1.3.cmml">1</mn></msub><mo id="A1.T8.4.4.4.1.m1.2.2.2.4" xref="A1.T8.4.4.4.1.m1.2.2.3.cmml">,</mo><msub id="A1.T8.4.4.4.1.m1.2.2.2.2" xref="A1.T8.4.4.4.1.m1.2.2.2.2.cmml"><mi id="A1.T8.4.4.4.1.m1.2.2.2.2.2" xref="A1.T8.4.4.4.1.m1.2.2.2.2.2.cmml">β</mi><mn id="A1.T8.4.4.4.1.m1.2.2.2.2.3" xref="A1.T8.4.4.4.1.m1.2.2.2.2.3.cmml">2</mn></msub><mo id="A1.T8.4.4.4.1.m1.2.2.2.5" stretchy="false" xref="A1.T8.4.4.4.1.m1.2.2.3.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A1.T8.4.4.4.1.m1.2b"><interval closure="open" id="A1.T8.4.4.4.1.m1.2.2.3.cmml" xref="A1.T8.4.4.4.1.m1.2.2.2"><apply id="A1.T8.4.4.4.1.m1.1.1.1.1.cmml" xref="A1.T8.4.4.4.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="A1.T8.4.4.4.1.m1.1.1.1.1.1.cmml" xref="A1.T8.4.4.4.1.m1.1.1.1.1">subscript</csymbol><ci id="A1.T8.4.4.4.1.m1.1.1.1.1.2.cmml" xref="A1.T8.4.4.4.1.m1.1.1.1.1.2">𝛽</ci><cn id="A1.T8.4.4.4.1.m1.1.1.1.1.3.cmml" type="integer" xref="A1.T8.4.4.4.1.m1.1.1.1.1.3">1</cn></apply><apply id="A1.T8.4.4.4.1.m1.2.2.2.2.cmml" xref="A1.T8.4.4.4.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="A1.T8.4.4.4.1.m1.2.2.2.2.1.cmml" xref="A1.T8.4.4.4.1.m1.2.2.2.2">subscript</csymbol><ci id="A1.T8.4.4.4.1.m1.2.2.2.2.2.cmml" xref="A1.T8.4.4.4.1.m1.2.2.2.2.2">𝛽</ci><cn id="A1.T8.4.4.4.1.m1.2.2.2.2.3.cmml" type="integer" xref="A1.T8.4.4.4.1.m1.2.2.2.2.3">2</cn></apply></interval></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.4.4.4.1.m1.2c">(\beta_{1},\beta_{2})</annotation><annotation encoding="application/x-llamapun" id="A1.T8.4.4.4.1.m1.2d">( italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.4.4.2">(0.9, 0.95)</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.4.3">(0.9, 0.95)</td>
</tr>
<tr class="ltx_tr" id="A1.T8.12.12.17.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.17.5.1">weight decay</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.17.5.2">0.05</td>
<td class="ltx_td ltx_align_center" id="A1.T8.12.12.17.5.3">0.05</td>
</tr>
<tr class="ltx_tr" id="A1.T8.12.12.18.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.18.6.1">gradient clip</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.18.6.2">5</td>
<td class="ltx_td ltx_align_center" id="A1.T8.12.12.18.6.3">1</td>
</tr>
<tr class="ltx_tr" id="A1.T8.12.12.19.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.19.7.1">input resolution</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.19.7.2">256</td>
<td class="ltx_td ltx_align_center" id="A1.T8.12.12.19.7.3">256</td>
</tr>
<tr class="ltx_tr" id="A1.T8.12.12.20.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.20.8.1">patch size</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.20.8.2">8</td>
<td class="ltx_td ltx_align_center" id="A1.T8.12.12.20.8.3">8</td>
</tr>
<tr class="ltx_tr" id="A1.T8.12.12.21.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.21.9.1">warm-up iterations</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.21.9.2">2,000</td>
<td class="ltx_td ltx_align_center" id="A1.T8.12.12.21.9.3">2,000</td>
</tr>
<tr class="ltx_tr" id="A1.T8.12.12.22.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.22.10.1">total iterations</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.22.10.2">120,000</td>
<td class="ltx_td ltx_align_center" id="A1.T8.12.12.22.10.3">120,000</td>
</tr>
<tr class="ltx_tr" id="A1.T8.12.12.23.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.23.11.1">batch size per device</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.23.11.2">512</td>
<td class="ltx_td ltx_align_center" id="A1.T8.12.12.23.11.3">128</td>
</tr>
<tr class="ltx_tr" id="A1.T8.12.12.24.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.24.12.1">total batch size</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.24.12.2">65,536</td>
<td class="ltx_td ltx_align_center" id="A1.T8.12.12.24.12.3">16,384</td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.5.5.5.1">
<math alttext="{\mathcal{D}}" class="ltx_Math" display="inline" id="A1.T8.5.5.5.1.m1.1"><semantics id="A1.T8.5.5.5.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="A1.T8.5.5.5.1.m1.1.1" xref="A1.T8.5.5.5.1.m1.1.1.cmml">𝒟</mi><annotation-xml encoding="MathML-Content" id="A1.T8.5.5.5.1.m1.1b"><ci id="A1.T8.5.5.5.1.m1.1.1.cmml" xref="A1.T8.5.5.5.1.m1.1.1">𝒟</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.5.5.5.1.m1.1c">{\mathcal{D}}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.5.5.5.1.m1.1d">caligraphic_D</annotation></semantics></math> optimizer</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.5.5.5.2">-</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.3">AdamW</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.6.6.1">
<math alttext="{\mathcal{D}}" class="ltx_Math" display="inline" id="A1.T8.6.6.6.1.m1.1"><semantics id="A1.T8.6.6.6.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="A1.T8.6.6.6.1.m1.1.1" xref="A1.T8.6.6.6.1.m1.1.1.cmml">𝒟</mi><annotation-xml encoding="MathML-Content" id="A1.T8.6.6.6.1.m1.1b"><ci id="A1.T8.6.6.6.1.m1.1.1.cmml" xref="A1.T8.6.6.6.1.m1.1.1">𝒟</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.6.6.6.1.m1.1c">{\mathcal{D}}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.6.6.6.1.m1.1d">caligraphic_D</annotation></semantics></math> learning rate</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.6.6.2">-</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.6.6.3">1e-4</td>
</tr>
<tr class="ltx_tr" id="A1.T8.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.7.7.7.1">reconstruction loss weight <math alttext="\alpha_{r}" class="ltx_Math" display="inline" id="A1.T8.7.7.7.1.m1.1"><semantics id="A1.T8.7.7.7.1.m1.1a"><msub id="A1.T8.7.7.7.1.m1.1.1" xref="A1.T8.7.7.7.1.m1.1.1.cmml"><mi id="A1.T8.7.7.7.1.m1.1.1.2" xref="A1.T8.7.7.7.1.m1.1.1.2.cmml">α</mi><mi id="A1.T8.7.7.7.1.m1.1.1.3" xref="A1.T8.7.7.7.1.m1.1.1.3.cmml">r</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T8.7.7.7.1.m1.1b"><apply id="A1.T8.7.7.7.1.m1.1.1.cmml" xref="A1.T8.7.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.7.7.7.1.m1.1.1.1.cmml" xref="A1.T8.7.7.7.1.m1.1.1">subscript</csymbol><ci id="A1.T8.7.7.7.1.m1.1.1.2.cmml" xref="A1.T8.7.7.7.1.m1.1.1.2">𝛼</ci><ci id="A1.T8.7.7.7.1.m1.1.1.3.cmml" xref="A1.T8.7.7.7.1.m1.1.1.3">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.7.7.7.1.m1.1c">\alpha_{r}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.7.7.7.1.m1.1d">italic_α start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.7.7.7.2">1e3</td>
<td class="ltx_td ltx_align_center" id="A1.T8.7.7.7.3">1</td>
</tr>
<tr class="ltx_tr" id="A1.T8.8.8.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.8.8.8.1">contrastive loss weight <math alttext="\alpha_{a}" class="ltx_Math" display="inline" id="A1.T8.8.8.8.1.m1.1"><semantics id="A1.T8.8.8.8.1.m1.1a"><msub id="A1.T8.8.8.8.1.m1.1.1" xref="A1.T8.8.8.8.1.m1.1.1.cmml"><mi id="A1.T8.8.8.8.1.m1.1.1.2" xref="A1.T8.8.8.8.1.m1.1.1.2.cmml">α</mi><mi id="A1.T8.8.8.8.1.m1.1.1.3" xref="A1.T8.8.8.8.1.m1.1.1.3.cmml">a</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T8.8.8.8.1.m1.1b"><apply id="A1.T8.8.8.8.1.m1.1.1.cmml" xref="A1.T8.8.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.8.8.8.1.m1.1.1.1.cmml" xref="A1.T8.8.8.8.1.m1.1.1">subscript</csymbol><ci id="A1.T8.8.8.8.1.m1.1.1.2.cmml" xref="A1.T8.8.8.8.1.m1.1.1.2">𝛼</ci><ci id="A1.T8.8.8.8.1.m1.1.1.3.cmml" xref="A1.T8.8.8.8.1.m1.1.1.3">𝑎</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.8.8.8.1.m1.1c">\alpha_{a}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.8.8.8.1.m1.1d">italic_α start_POSTSUBSCRIPT italic_a end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.8.8.8.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T8.8.8.8.3">0</td>
</tr>
<tr class="ltx_tr" id="A1.T8.9.9.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.9.9.9.1">quantization loss weight <math alttext="\alpha_{q}" class="ltx_Math" display="inline" id="A1.T8.9.9.9.1.m1.1"><semantics id="A1.T8.9.9.9.1.m1.1a"><msub id="A1.T8.9.9.9.1.m1.1.1" xref="A1.T8.9.9.9.1.m1.1.1.cmml"><mi id="A1.T8.9.9.9.1.m1.1.1.2" xref="A1.T8.9.9.9.1.m1.1.1.2.cmml">α</mi><mi id="A1.T8.9.9.9.1.m1.1.1.3" xref="A1.T8.9.9.9.1.m1.1.1.3.cmml">q</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T8.9.9.9.1.m1.1b"><apply id="A1.T8.9.9.9.1.m1.1.1.cmml" xref="A1.T8.9.9.9.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.9.9.9.1.m1.1.1.1.cmml" xref="A1.T8.9.9.9.1.m1.1.1">subscript</csymbol><ci id="A1.T8.9.9.9.1.m1.1.1.2.cmml" xref="A1.T8.9.9.9.1.m1.1.1.2">𝛼</ci><ci id="A1.T8.9.9.9.1.m1.1.1.3.cmml" xref="A1.T8.9.9.9.1.m1.1.1.3">𝑞</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.9.9.9.1.m1.1c">\alpha_{q}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.9.9.9.1.m1.1d">italic_α start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.9.9.9.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T8.9.9.9.3">1</td>
</tr>
<tr class="ltx_tr" id="A1.T8.10.10.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.10.10.10.1">perceptual loss weight <math alttext="\alpha_{p}" class="ltx_Math" display="inline" id="A1.T8.10.10.10.1.m1.1"><semantics id="A1.T8.10.10.10.1.m1.1a"><msub id="A1.T8.10.10.10.1.m1.1.1" xref="A1.T8.10.10.10.1.m1.1.1.cmml"><mi id="A1.T8.10.10.10.1.m1.1.1.2" xref="A1.T8.10.10.10.1.m1.1.1.2.cmml">α</mi><mi id="A1.T8.10.10.10.1.m1.1.1.3" xref="A1.T8.10.10.10.1.m1.1.1.3.cmml">p</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T8.10.10.10.1.m1.1b"><apply id="A1.T8.10.10.10.1.m1.1.1.cmml" xref="A1.T8.10.10.10.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.10.10.10.1.m1.1.1.1.cmml" xref="A1.T8.10.10.10.1.m1.1.1">subscript</csymbol><ci id="A1.T8.10.10.10.1.m1.1.1.2.cmml" xref="A1.T8.10.10.10.1.m1.1.1.2">𝛼</ci><ci id="A1.T8.10.10.10.1.m1.1.1.3.cmml" xref="A1.T8.10.10.10.1.m1.1.1.3">𝑝</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.10.10.10.1.m1.1c">\alpha_{p}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.10.10.10.1.m1.1d">italic_α start_POSTSUBSCRIPT italic_p end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.10.10.10.2">0</td>
<td class="ltx_td ltx_align_center" id="A1.T8.10.10.10.3">0.1</td>
</tr>
<tr class="ltx_tr" id="A1.T8.11.11.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.11.11.11.1">GAN loss weight <math alttext="\alpha_{g}" class="ltx_Math" display="inline" id="A1.T8.11.11.11.1.m1.1"><semantics id="A1.T8.11.11.11.1.m1.1a"><msub id="A1.T8.11.11.11.1.m1.1.1" xref="A1.T8.11.11.11.1.m1.1.1.cmml"><mi id="A1.T8.11.11.11.1.m1.1.1.2" xref="A1.T8.11.11.11.1.m1.1.1.2.cmml">α</mi><mi id="A1.T8.11.11.11.1.m1.1.1.3" xref="A1.T8.11.11.11.1.m1.1.1.3.cmml">g</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T8.11.11.11.1.m1.1b"><apply id="A1.T8.11.11.11.1.m1.1.1.cmml" xref="A1.T8.11.11.11.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.11.11.11.1.m1.1.1.1.cmml" xref="A1.T8.11.11.11.1.m1.1.1">subscript</csymbol><ci id="A1.T8.11.11.11.1.m1.1.1.2.cmml" xref="A1.T8.11.11.11.1.m1.1.1.2">𝛼</ci><ci id="A1.T8.11.11.11.1.m1.1.1.3.cmml" xref="A1.T8.11.11.11.1.m1.1.1.3">𝑔</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.11.11.11.1.m1.1c">\alpha_{g}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.11.11.11.1.m1.1d">italic_α start_POSTSUBSCRIPT italic_g end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.11.11.11.2">0</td>
<td class="ltx_td ltx_align_center" id="A1.T8.11.11.11.3">0.1</td>
</tr>
<tr class="ltx_tr" id="A1.T8.12.12.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.12.1">commitment loss weight <math alttext="\alpha_{z}" class="ltx_Math" display="inline" id="A1.T8.12.12.12.1.m1.1"><semantics id="A1.T8.12.12.12.1.m1.1a"><msub id="A1.T8.12.12.12.1.m1.1.1" xref="A1.T8.12.12.12.1.m1.1.1.cmml"><mi id="A1.T8.12.12.12.1.m1.1.1.2" xref="A1.T8.12.12.12.1.m1.1.1.2.cmml">α</mi><mi id="A1.T8.12.12.12.1.m1.1.1.3" xref="A1.T8.12.12.12.1.m1.1.1.3.cmml">z</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T8.12.12.12.1.m1.1b"><apply id="A1.T8.12.12.12.1.m1.1.1.cmml" xref="A1.T8.12.12.12.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.12.12.12.1.m1.1.1.1.cmml" xref="A1.T8.12.12.12.1.m1.1.1">subscript</csymbol><ci id="A1.T8.12.12.12.1.m1.1.1.2.cmml" xref="A1.T8.12.12.12.1.m1.1.1.2">𝛼</ci><ci id="A1.T8.12.12.12.1.m1.1.1.3.cmml" xref="A1.T8.12.12.12.1.m1.1.1.3">𝑧</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.12.12.12.1.m1.1c">\alpha_{z}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.12.12.12.1.m1.1d">italic_α start_POSTSUBSCRIPT italic_z end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.12.12.12.2">1.0</td>
<td class="ltx_td ltx_align_center" id="A1.T8.12.12.12.3">0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of zero-shot image generation performance using different visual tokenizers within the LlamaGen-XL framework.  It shows the FID (Fréchet Inception Distance) and CLIPScore metrics for image generation quality on three benchmark datasets: MS-COCO 30K, GenEval, and DPG-Bench.  Lower FID indicates better image quality, while higher CLIPScore indicates better alignment between generated images and their captions. The results allow for an evaluation of how different visual tokenization methods impact the overall quality and semantic consistency of the generated images.
> <details>
> <summary>read the caption</summary>
> Table 7:  Zero-shot generation results on MS-COCO 30K, GenEval [29], and DPG-Bench [36]. All use LlamaGen-XL [74].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T9.5.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T9.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T9.1.1.1.2">config</th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.1.1">Training UM<sup class="ltx_sup" id="A1.T9.1.1.1.1.1">3</sup>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.5.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T9.5.5.6.1.1">peak learning rate</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.5.5.6.1.2">1e-4</td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.5.7.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T9.5.5.7.2.1">learning rate schedule</th>
<td class="ltx_td ltx_align_center" id="A1.T9.5.5.7.2.2">cosine annealing</td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.5.8.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T9.5.5.8.3.1">optimizer</th>
<td class="ltx_td ltx_align_center" id="A1.T9.5.5.8.3.2">AdamW</td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T9.2.2.2.1">optimizer <math alttext="(\beta_{1},\beta_{2})" class="ltx_Math" display="inline" id="A1.T9.2.2.2.1.m1.2"><semantics id="A1.T9.2.2.2.1.m1.2a"><mrow id="A1.T9.2.2.2.1.m1.2.2.2" xref="A1.T9.2.2.2.1.m1.2.2.3.cmml"><mo id="A1.T9.2.2.2.1.m1.2.2.2.3" stretchy="false" xref="A1.T9.2.2.2.1.m1.2.2.3.cmml">(</mo><msub id="A1.T9.2.2.2.1.m1.1.1.1.1" xref="A1.T9.2.2.2.1.m1.1.1.1.1.cmml"><mi id="A1.T9.2.2.2.1.m1.1.1.1.1.2" xref="A1.T9.2.2.2.1.m1.1.1.1.1.2.cmml">β</mi><mn id="A1.T9.2.2.2.1.m1.1.1.1.1.3" xref="A1.T9.2.2.2.1.m1.1.1.1.1.3.cmml">1</mn></msub><mo id="A1.T9.2.2.2.1.m1.2.2.2.4" xref="A1.T9.2.2.2.1.m1.2.2.3.cmml">,</mo><msub id="A1.T9.2.2.2.1.m1.2.2.2.2" xref="A1.T9.2.2.2.1.m1.2.2.2.2.cmml"><mi id="A1.T9.2.2.2.1.m1.2.2.2.2.2" xref="A1.T9.2.2.2.1.m1.2.2.2.2.2.cmml">β</mi><mn id="A1.T9.2.2.2.1.m1.2.2.2.2.3" xref="A1.T9.2.2.2.1.m1.2.2.2.2.3.cmml">2</mn></msub><mo id="A1.T9.2.2.2.1.m1.2.2.2.5" stretchy="false" xref="A1.T9.2.2.2.1.m1.2.2.3.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A1.T9.2.2.2.1.m1.2b"><interval closure="open" id="A1.T9.2.2.2.1.m1.2.2.3.cmml" xref="A1.T9.2.2.2.1.m1.2.2.2"><apply id="A1.T9.2.2.2.1.m1.1.1.1.1.cmml" xref="A1.T9.2.2.2.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="A1.T9.2.2.2.1.m1.1.1.1.1.1.cmml" xref="A1.T9.2.2.2.1.m1.1.1.1.1">subscript</csymbol><ci id="A1.T9.2.2.2.1.m1.1.1.1.1.2.cmml" xref="A1.T9.2.2.2.1.m1.1.1.1.1.2">𝛽</ci><cn id="A1.T9.2.2.2.1.m1.1.1.1.1.3.cmml" type="integer" xref="A1.T9.2.2.2.1.m1.1.1.1.1.3">1</cn></apply><apply id="A1.T9.2.2.2.1.m1.2.2.2.2.cmml" xref="A1.T9.2.2.2.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="A1.T9.2.2.2.1.m1.2.2.2.2.1.cmml" xref="A1.T9.2.2.2.1.m1.2.2.2.2">subscript</csymbol><ci id="A1.T9.2.2.2.1.m1.2.2.2.2.2.cmml" xref="A1.T9.2.2.2.1.m1.2.2.2.2.2">𝛽</ci><cn id="A1.T9.2.2.2.1.m1.2.2.2.2.3.cmml" type="integer" xref="A1.T9.2.2.2.1.m1.2.2.2.2.3">2</cn></apply></interval></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.2.2.2.1.m1.2c">(\beta_{1},\beta_{2})</annotation><annotation encoding="application/x-llamapun" id="A1.T9.2.2.2.1.m1.2d">( italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="A1.T9.2.2.2.2">(0.9, 0.95)</td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.5.9.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T9.5.5.9.4.1">weight decay</th>
<td class="ltx_td ltx_align_center" id="A1.T9.5.5.9.4.2">0.1</td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.5.10.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T9.5.5.10.5.1">gradient clip</th>
<td class="ltx_td ltx_align_center" id="A1.T9.5.5.10.5.2">1</td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.5.11.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T9.5.5.11.6.1">warm-up iterations</th>
<td class="ltx_td ltx_align_center" id="A1.T9.5.5.11.6.2">2,000</td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.5.12.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T9.5.5.12.7.1">total iterations</th>
<td class="ltx_td ltx_align_center" id="A1.T9.5.5.12.7.2">600,000</td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.5.13.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T9.5.5.13.8.1">batch size per device</th>
<td class="ltx_td ltx_align_center" id="A1.T9.5.5.13.8.2">8</td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.5.14.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T9.5.5.14.9.1">total batch size</th>
<td class="ltx_td ltx_align_center" id="A1.T9.5.5.14.9.2">512</td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.5.15.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T9.5.5.15.10.1">sequence length</th>
<td class="ltx_td ltx_align_center" id="A1.T9.5.5.15.10.2">4,096</td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.5.16.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T9.5.5.16.11.1">calm-down steps</th>
<td class="ltx_td ltx_align_center" id="A1.T9.5.5.16.11.2">10,000</td>
</tr>
<tr class="ltx_tr" id="A1.T9.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T9.3.3.3.1">mix ratio (<math alttext="r_{\mathrm{text},0}:r_{\mathrm{i2t}}:r_{\mathrm{t2i}}" class="ltx_Math" display="inline" id="A1.T9.3.3.3.1.m1.2"><semantics id="A1.T9.3.3.3.1.m1.2a"><mrow id="A1.T9.3.3.3.1.m1.2.3" xref="A1.T9.3.3.3.1.m1.2.3.cmml"><msub id="A1.T9.3.3.3.1.m1.2.3.2" xref="A1.T9.3.3.3.1.m1.2.3.2.cmml"><mi id="A1.T9.3.3.3.1.m1.2.3.2.2" xref="A1.T9.3.3.3.1.m1.2.3.2.2.cmml">r</mi><mrow id="A1.T9.3.3.3.1.m1.2.2.2.4" xref="A1.T9.3.3.3.1.m1.2.2.2.3.cmml"><mi id="A1.T9.3.3.3.1.m1.1.1.1.1" xref="A1.T9.3.3.3.1.m1.1.1.1.1.cmml">text</mi><mo id="A1.T9.3.3.3.1.m1.2.2.2.4.1" xref="A1.T9.3.3.3.1.m1.2.2.2.3.cmml">,</mo><mn id="A1.T9.3.3.3.1.m1.2.2.2.2" xref="A1.T9.3.3.3.1.m1.2.2.2.2.cmml">0</mn></mrow></msub><mo id="A1.T9.3.3.3.1.m1.2.3.3" lspace="0.278em" rspace="0.278em" xref="A1.T9.3.3.3.1.m1.2.3.3.cmml">:</mo><msub id="A1.T9.3.3.3.1.m1.2.3.4" xref="A1.T9.3.3.3.1.m1.2.3.4.cmml"><mi id="A1.T9.3.3.3.1.m1.2.3.4.2" xref="A1.T9.3.3.3.1.m1.2.3.4.2.cmml">r</mi><mi id="A1.T9.3.3.3.1.m1.2.3.4.3" xref="A1.T9.3.3.3.1.m1.2.3.4.3.cmml">i2t</mi></msub><mo id="A1.T9.3.3.3.1.m1.2.3.5" lspace="0.278em" rspace="0.278em" xref="A1.T9.3.3.3.1.m1.2.3.5.cmml">:</mo><msub id="A1.T9.3.3.3.1.m1.2.3.6" xref="A1.T9.3.3.3.1.m1.2.3.6.cmml"><mi id="A1.T9.3.3.3.1.m1.2.3.6.2" xref="A1.T9.3.3.3.1.m1.2.3.6.2.cmml">r</mi><mi id="A1.T9.3.3.3.1.m1.2.3.6.3" xref="A1.T9.3.3.3.1.m1.2.3.6.3.cmml">t2i</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="A1.T9.3.3.3.1.m1.2b"><apply id="A1.T9.3.3.3.1.m1.2.3.cmml" xref="A1.T9.3.3.3.1.m1.2.3"><and id="A1.T9.3.3.3.1.m1.2.3a.cmml" xref="A1.T9.3.3.3.1.m1.2.3"></and><apply id="A1.T9.3.3.3.1.m1.2.3b.cmml" xref="A1.T9.3.3.3.1.m1.2.3"><ci id="A1.T9.3.3.3.1.m1.2.3.3.cmml" xref="A1.T9.3.3.3.1.m1.2.3.3">:</ci><apply id="A1.T9.3.3.3.1.m1.2.3.2.cmml" xref="A1.T9.3.3.3.1.m1.2.3.2"><csymbol cd="ambiguous" id="A1.T9.3.3.3.1.m1.2.3.2.1.cmml" xref="A1.T9.3.3.3.1.m1.2.3.2">subscript</csymbol><ci id="A1.T9.3.3.3.1.m1.2.3.2.2.cmml" xref="A1.T9.3.3.3.1.m1.2.3.2.2">𝑟</ci><list id="A1.T9.3.3.3.1.m1.2.2.2.3.cmml" xref="A1.T9.3.3.3.1.m1.2.2.2.4"><ci id="A1.T9.3.3.3.1.m1.1.1.1.1.cmml" xref="A1.T9.3.3.3.1.m1.1.1.1.1">text</ci><cn id="A1.T9.3.3.3.1.m1.2.2.2.2.cmml" type="integer" xref="A1.T9.3.3.3.1.m1.2.2.2.2">0</cn></list></apply><apply id="A1.T9.3.3.3.1.m1.2.3.4.cmml" xref="A1.T9.3.3.3.1.m1.2.3.4"><csymbol cd="ambiguous" id="A1.T9.3.3.3.1.m1.2.3.4.1.cmml" xref="A1.T9.3.3.3.1.m1.2.3.4">subscript</csymbol><ci id="A1.T9.3.3.3.1.m1.2.3.4.2.cmml" xref="A1.T9.3.3.3.1.m1.2.3.4.2">𝑟</ci><ci id="A1.T9.3.3.3.1.m1.2.3.4.3.cmml" xref="A1.T9.3.3.3.1.m1.2.3.4.3">i2t</ci></apply></apply><apply id="A1.T9.3.3.3.1.m1.2.3c.cmml" xref="A1.T9.3.3.3.1.m1.2.3"><ci id="A1.T9.3.3.3.1.m1.2.3.5.cmml" xref="A1.T9.3.3.3.1.m1.2.3.5">:</ci><share href="https://arxiv.org/html/2502.05178v1#A1.T9.3.3.3.1.m1.2.3.4.cmml" id="A1.T9.3.3.3.1.m1.2.3d.cmml" xref="A1.T9.3.3.3.1.m1.2.3"></share><apply id="A1.T9.3.3.3.1.m1.2.3.6.cmml" xref="A1.T9.3.3.3.1.m1.2.3.6"><csymbol cd="ambiguous" id="A1.T9.3.3.3.1.m1.2.3.6.1.cmml" xref="A1.T9.3.3.3.1.m1.2.3.6">subscript</csymbol><ci id="A1.T9.3.3.3.1.m1.2.3.6.2.cmml" xref="A1.T9.3.3.3.1.m1.2.3.6.2">𝑟</ci><ci id="A1.T9.3.3.3.1.m1.2.3.6.3.cmml" xref="A1.T9.3.3.3.1.m1.2.3.6.3">t2i</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.3.3.3.1.m1.2c">r_{\mathrm{text},0}:r_{\mathrm{i2t}}:r_{\mathrm{t2i}}</annotation><annotation encoding="application/x-llamapun" id="A1.T9.3.3.3.1.m1.2d">italic_r start_POSTSUBSCRIPT roman_text , 0 end_POSTSUBSCRIPT : italic_r start_POSTSUBSCRIPT i2t end_POSTSUBSCRIPT : italic_r start_POSTSUBSCRIPT t2i end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center" id="A1.T9.3.3.3.2">60:1:3</td>
</tr>
<tr class="ltx_tr" id="A1.T9.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T9.4.4.4.1">mix ratio (<math alttext="r_{\mathrm{text},T}:r_{\mathrm{i2t}}:r_{\mathrm{t2i}}" class="ltx_Math" display="inline" id="A1.T9.4.4.4.1.m1.2"><semantics id="A1.T9.4.4.4.1.m1.2a"><mrow id="A1.T9.4.4.4.1.m1.2.3" xref="A1.T9.4.4.4.1.m1.2.3.cmml"><msub id="A1.T9.4.4.4.1.m1.2.3.2" xref="A1.T9.4.4.4.1.m1.2.3.2.cmml"><mi id="A1.T9.4.4.4.1.m1.2.3.2.2" xref="A1.T9.4.4.4.1.m1.2.3.2.2.cmml">r</mi><mrow id="A1.T9.4.4.4.1.m1.2.2.2.4" xref="A1.T9.4.4.4.1.m1.2.2.2.3.cmml"><mi id="A1.T9.4.4.4.1.m1.1.1.1.1" xref="A1.T9.4.4.4.1.m1.1.1.1.1.cmml">text</mi><mo id="A1.T9.4.4.4.1.m1.2.2.2.4.1" xref="A1.T9.4.4.4.1.m1.2.2.2.3.cmml">,</mo><mi id="A1.T9.4.4.4.1.m1.2.2.2.2" xref="A1.T9.4.4.4.1.m1.2.2.2.2.cmml">T</mi></mrow></msub><mo id="A1.T9.4.4.4.1.m1.2.3.3" lspace="0.278em" rspace="0.278em" xref="A1.T9.4.4.4.1.m1.2.3.3.cmml">:</mo><msub id="A1.T9.4.4.4.1.m1.2.3.4" xref="A1.T9.4.4.4.1.m1.2.3.4.cmml"><mi id="A1.T9.4.4.4.1.m1.2.3.4.2" xref="A1.T9.4.4.4.1.m1.2.3.4.2.cmml">r</mi><mi id="A1.T9.4.4.4.1.m1.2.3.4.3" xref="A1.T9.4.4.4.1.m1.2.3.4.3.cmml">i2t</mi></msub><mo id="A1.T9.4.4.4.1.m1.2.3.5" lspace="0.278em" rspace="0.278em" xref="A1.T9.4.4.4.1.m1.2.3.5.cmml">:</mo><msub id="A1.T9.4.4.4.1.m1.2.3.6" xref="A1.T9.4.4.4.1.m1.2.3.6.cmml"><mi id="A1.T9.4.4.4.1.m1.2.3.6.2" xref="A1.T9.4.4.4.1.m1.2.3.6.2.cmml">r</mi><mi id="A1.T9.4.4.4.1.m1.2.3.6.3" xref="A1.T9.4.4.4.1.m1.2.3.6.3.cmml">t2i</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="A1.T9.4.4.4.1.m1.2b"><apply id="A1.T9.4.4.4.1.m1.2.3.cmml" xref="A1.T9.4.4.4.1.m1.2.3"><and id="A1.T9.4.4.4.1.m1.2.3a.cmml" xref="A1.T9.4.4.4.1.m1.2.3"></and><apply id="A1.T9.4.4.4.1.m1.2.3b.cmml" xref="A1.T9.4.4.4.1.m1.2.3"><ci id="A1.T9.4.4.4.1.m1.2.3.3.cmml" xref="A1.T9.4.4.4.1.m1.2.3.3">:</ci><apply id="A1.T9.4.4.4.1.m1.2.3.2.cmml" xref="A1.T9.4.4.4.1.m1.2.3.2"><csymbol cd="ambiguous" id="A1.T9.4.4.4.1.m1.2.3.2.1.cmml" xref="A1.T9.4.4.4.1.m1.2.3.2">subscript</csymbol><ci id="A1.T9.4.4.4.1.m1.2.3.2.2.cmml" xref="A1.T9.4.4.4.1.m1.2.3.2.2">𝑟</ci><list id="A1.T9.4.4.4.1.m1.2.2.2.3.cmml" xref="A1.T9.4.4.4.1.m1.2.2.2.4"><ci id="A1.T9.4.4.4.1.m1.1.1.1.1.cmml" xref="A1.T9.4.4.4.1.m1.1.1.1.1">text</ci><ci id="A1.T9.4.4.4.1.m1.2.2.2.2.cmml" xref="A1.T9.4.4.4.1.m1.2.2.2.2">𝑇</ci></list></apply><apply id="A1.T9.4.4.4.1.m1.2.3.4.cmml" xref="A1.T9.4.4.4.1.m1.2.3.4"><csymbol cd="ambiguous" id="A1.T9.4.4.4.1.m1.2.3.4.1.cmml" xref="A1.T9.4.4.4.1.m1.2.3.4">subscript</csymbol><ci id="A1.T9.4.4.4.1.m1.2.3.4.2.cmml" xref="A1.T9.4.4.4.1.m1.2.3.4.2">𝑟</ci><ci id="A1.T9.4.4.4.1.m1.2.3.4.3.cmml" xref="A1.T9.4.4.4.1.m1.2.3.4.3">i2t</ci></apply></apply><apply id="A1.T9.4.4.4.1.m1.2.3c.cmml" xref="A1.T9.4.4.4.1.m1.2.3"><ci id="A1.T9.4.4.4.1.m1.2.3.5.cmml" xref="A1.T9.4.4.4.1.m1.2.3.5">:</ci><share href="https://arxiv.org/html/2502.05178v1#A1.T9.4.4.4.1.m1.2.3.4.cmml" id="A1.T9.4.4.4.1.m1.2.3d.cmml" xref="A1.T9.4.4.4.1.m1.2.3"></share><apply id="A1.T9.4.4.4.1.m1.2.3.6.cmml" xref="A1.T9.4.4.4.1.m1.2.3.6"><csymbol cd="ambiguous" id="A1.T9.4.4.4.1.m1.2.3.6.1.cmml" xref="A1.T9.4.4.4.1.m1.2.3.6">subscript</csymbol><ci id="A1.T9.4.4.4.1.m1.2.3.6.2.cmml" xref="A1.T9.4.4.4.1.m1.2.3.6.2">𝑟</ci><ci id="A1.T9.4.4.4.1.m1.2.3.6.3.cmml" xref="A1.T9.4.4.4.1.m1.2.3.6.3">t2i</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.4.4.4.1.m1.2c">r_{\mathrm{text},T}:r_{\mathrm{i2t}}:r_{\mathrm{t2i}}</annotation><annotation encoding="application/x-llamapun" id="A1.T9.4.4.4.1.m1.2d">italic_r start_POSTSUBSCRIPT roman_text , italic_T end_POSTSUBSCRIPT : italic_r start_POSTSUBSCRIPT i2t end_POSTSUBSCRIPT : italic_r start_POSTSUBSCRIPT t2i end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center" id="A1.T9.4.4.4.2">12:1:3</td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.5.17.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T9.5.5.17.12.1">sampling temperature</th>
<td class="ltx_td ltx_align_center" id="A1.T9.5.5.17.12.2">1.0</td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T9.5.5.5.1">sampling top-<math alttext="p" class="ltx_Math" display="inline" id="A1.T9.5.5.5.1.m1.1"><semantics id="A1.T9.5.5.5.1.m1.1a"><mi id="A1.T9.5.5.5.1.m1.1.1" xref="A1.T9.5.5.5.1.m1.1.1.cmml">p</mi><annotation-xml encoding="MathML-Content" id="A1.T9.5.5.5.1.m1.1b"><ci id="A1.T9.5.5.5.1.m1.1.1.cmml" xref="A1.T9.5.5.5.1.m1.1.1">𝑝</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.5.5.5.1.m1.1c">p</annotation><annotation encoding="application/x-llamapun" id="A1.T9.5.5.5.1.m1.1d">italic_p</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="A1.T9.5.5.5.2">0.95</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used during the training of the Quantized Language-Image Pretraining (QLIP) model.  It shows the settings for both Stage 1 and Stage 2 of the training process.  Stage 1 focuses on joint optimization of alignment and reconstruction losses, while Stage 2 fine-tunes the model with a focus on reconstruction quality.  The table includes parameters such as learning rates for different components of the model (visual encoder, text encoder, decoder, and quantizer), optimization algorithm, weight decay, gradient clipping, batch sizes, and the number of training iterations.  Crucially, it also lists the weights assigned to the different loss functions (reconstruction, contrastive, and quantization losses) during each stage. Section 4 of the paper provides further details on these loss functions and their balancing.
> <details>
> <summary>read the caption</summary>
> Table 8: Hyperparamters for training QLIP. Please refer to Sec.4 for the notions of loss weights.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T10.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T10.2.2.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T10.2.2.3.1.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.3.1.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.2.2.3.1.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.3.1.2.1" style="font-size:90%;">Seen Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.2.2.3.1.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.3.1.3.1" style="font-size:90%;">Probing Pos.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.2.2.3.1.4" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A2.T10.2.2.3.1.4.1" style="font-size:90%;">IN-1k Acc.</span><span class="ltx_text" id="A2.T10.2.2.3.1.4.2" style="font-size:50%;">(%)</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.4.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="A2.T10.2.2.4.2.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="A2.T10.2.2.4.2.1.1" style="font-size:90%;">(Base backbone)</span></td>
<td class="ltx_td ltx_border_t" id="A2.T10.2.2.4.2.2" style="padding:0.25pt 3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.5.3">
<td class="ltx_td ltx_align_left" id="A2.T10.2.2.5.3.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A2.T10.2.2.5.3.1.1" style="font-size:90%;">VQVAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T10.2.2.5.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib83" title=""><span class="ltx_text" style="font-size:90%;">83</span></a><span class="ltx_text" id="A2.T10.2.2.5.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.5.3.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.5.3.2.1" style="font-size:90%;">IN-1k</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.5.3.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.5.3.3.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.5.3.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.5.3.4.1" style="font-size:90%;">18.4</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.6.4">
<td class="ltx_td ltx_align_left" id="A2.T10.2.2.6.4.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A2.T10.2.2.6.4.1.1" style="font-size:90%;">LQAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T10.2.2.6.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="A2.T10.2.2.6.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.6.4.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.6.4.2.1" style="font-size:90%;">IN-1k</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.6.4.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.6.4.3.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.6.4.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.6.4.4.1" style="font-size:90%;">39.7</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.7.5">
<td class="ltx_td ltx_align_left" id="A2.T10.2.2.7.5.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A2.T10.2.2.7.5.1.1" style="font-size:90%;">EVA-CLIP-B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T10.2.2.7.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a><span class="ltx_text" id="A2.T10.2.2.7.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.7.5.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.7.5.2.1" style="font-size:90%;">Merged-2B</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.7.5.3" style="padding:0.25pt 3.0pt;">
<span class="ltx_text ltx_font_italic" id="A2.T10.2.2.7.5.3.1" style="font-size:90%;">cls</span><span class="ltx_text" id="A2.T10.2.2.7.5.3.2" style="font-size:90%;">-token</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.7.5.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.7.5.4.1" style="font-size:90%;color:#808080;">82.7</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.1">
<td class="ltx_td ltx_align_left" id="A2.T10.1.1.1.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A2.T10.1.1.1.1.1" style="font-size:90%;">BSQViT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T10.1.1.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib98" title=""><span class="ltx_text" style="font-size:90%;">98</span></a><span class="ltx_text" id="A2.T10.1.1.1.1.3.2" style="font-size:90%;">]</span></cite><sup class="ltx_sup" id="A2.T10.1.1.1.1.4"><span class="ltx_text" id="A2.T10.1.1.1.1.4.1" style="font-size:90%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.1.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.1.1.1.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.1.3" style="padding:0.25pt 3.0pt;">
<span class="ltx_text ltx_font_italic" id="A2.T10.1.1.1.3.1" style="font-size:90%;">cls</span><span class="ltx_text" id="A2.T10.1.1.1.3.2" style="font-size:90%;">-token</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.1.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.1.1.1.4.1" style="font-size:90%;">29.3</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.2">
<td class="ltx_td ltx_align_left" id="A2.T10.2.2.2.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A2.T10.2.2.2.1.1" style="font-size:90%;">BSQViT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T10.2.2.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib98" title=""><span class="ltx_text" style="font-size:90%;">98</span></a><span class="ltx_text" id="A2.T10.2.2.2.1.3.2" style="font-size:90%;">]</span></cite><sup class="ltx_sup" id="A2.T10.2.2.2.1.4"><span class="ltx_text" id="A2.T10.2.2.2.1.4.1" style="font-size:90%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.2.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.2.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.2.3" style="padding:0.25pt 3.0pt;">
<span class="ltx_text ltx_font_italic" id="A2.T10.2.2.2.3.1" style="font-size:90%;">ft</span><span class="ltx_text" id="A2.T10.2.2.2.3.2" style="font-size:90%;"> (avg.)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.2.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.2.4.1" style="font-size:90%;">25.4</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.8.6">
<td class="ltx_td ltx_align_left" id="A2.T10.2.2.8.6.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.8.6.1.1" style="font-size:90%;">QLIP-B (ours)</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.8.6.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.8.6.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.8.6.3" style="padding:0.25pt 3.0pt;">
<span class="ltx_text ltx_font_italic" id="A2.T10.2.2.8.6.3.1" style="font-size:90%;">cls</span><span class="ltx_text" id="A2.T10.2.2.8.6.3.2" style="font-size:90%;">-token</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.8.6.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.8.6.4.1" style="font-size:90%;">81.8</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.9.7">
<td class="ltx_td ltx_align_left" id="A2.T10.2.2.9.7.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.9.7.1.1" style="font-size:90%;">QLIP-B (ours)</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.9.7.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.9.7.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.9.7.3" style="padding:0.25pt 3.0pt;">
<span class="ltx_text ltx_font_italic" id="A2.T10.2.2.9.7.3.1" style="font-size:90%;">ft</span><span class="ltx_text" id="A2.T10.2.2.9.7.3.2" style="font-size:90%;"> (avg.)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.9.7.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.9.7.4.1" style="font-size:90%;">77.7</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.10.8">
<td class="ltx_td ltx_align_left" id="A2.T10.2.2.10.8.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.10.8.1.1" style="font-size:90%;">QLIP-B (ours)</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.10.8.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.10.8.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.10.8.3" style="padding:0.25pt 3.0pt;">
<span class="ltx_text ltx_font_italic" id="A2.T10.2.2.10.8.3.1" style="font-size:90%;">cls</span><span class="ltx_text" id="A2.T10.2.2.10.8.3.2" style="font-size:90%;"> + </span><span class="ltx_text ltx_font_italic" id="A2.T10.2.2.10.8.3.3" style="font-size:90%;">ft</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.10.8.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.10.8.4.1" style="font-size:90%;">82.1</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.11.9">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="2" id="A2.T10.2.2.11.9.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="A2.T10.2.2.11.9.1.1" style="font-size:90%;">(Large backbone, high resolution)</span></td>
<td class="ltx_td ltx_border_t" id="A2.T10.2.2.11.9.2" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="A2.T10.2.2.11.9.3" style="padding:0.25pt 3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.12.10">
<td class="ltx_td ltx_align_left" id="A2.T10.2.2.12.10.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A2.T10.2.2.12.10.1.1" style="font-size:90%;">EVA-CLIP-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T10.2.2.12.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a><span class="ltx_text" id="A2.T10.2.2.12.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.12.10.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.12.10.2.1" style="font-size:90%;">Merged-2B</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.12.10.3" style="padding:0.25pt 3.0pt;">
<span class="ltx_text ltx_font_italic" id="A2.T10.2.2.12.10.3.1" style="font-size:90%;">cls</span><span class="ltx_text" id="A2.T10.2.2.12.10.3.2" style="font-size:90%;">-token</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.12.10.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.12.10.4.1" style="font-size:90%;color:#808080;">86.3</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.13.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T10.2.2.13.11.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.13.11.1.1" style="font-size:90%;">QLIP-L (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.2.2.13.11.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.13.11.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.2.2.13.11.3" style="padding:0.25pt 3.0pt;">
<span class="ltx_text ltx_font_italic" id="A2.T10.2.2.13.11.3.1" style="font-size:90%;">cls</span><span class="ltx_text" id="A2.T10.2.2.13.11.3.2" style="font-size:90%;">-token</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.2.2.13.11.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A2.T10.2.2.13.11.4.1" style="font-size:90%;">85.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for training the Unified Multimodal Model (UM³), a model that unifies understanding and generation across multiple modalities.  It details settings for various aspects of the training process, including optimizer choices, learning rates, scheduling strategies, batch sizes, and other relevant parameters. This configuration is crucial for the UM³ model's ability to handle text-only, image-to-text, and text-to-image tasks.
> <details>
> <summary>read the caption</summary>
> Table 9: Hyperparamters for training UM3.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T11.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T11.1.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T11.1.1.2.1.1">config</th>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.2.1.2">ImageNet linear probing</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T11.1.1.3.2.1">peak learning rate</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.3.2.2">0.2 / 1.0 (BSQViT)</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T11.1.1.4.3.1">learning rate schedule</th>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.4.3.2">cosine annealing</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T11.1.1.5.4.1">optimizer</th>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.5.4.2">AdamW</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T11.1.1.1.1">optimizer <math alttext="(\beta_{1},\beta_{2})" class="ltx_Math" display="inline" id="A2.T11.1.1.1.1.m1.2"><semantics id="A2.T11.1.1.1.1.m1.2a"><mrow id="A2.T11.1.1.1.1.m1.2.2.2" xref="A2.T11.1.1.1.1.m1.2.2.3.cmml"><mo id="A2.T11.1.1.1.1.m1.2.2.2.3" stretchy="false" xref="A2.T11.1.1.1.1.m1.2.2.3.cmml">(</mo><msub id="A2.T11.1.1.1.1.m1.1.1.1.1" xref="A2.T11.1.1.1.1.m1.1.1.1.1.cmml"><mi id="A2.T11.1.1.1.1.m1.1.1.1.1.2" xref="A2.T11.1.1.1.1.m1.1.1.1.1.2.cmml">β</mi><mn id="A2.T11.1.1.1.1.m1.1.1.1.1.3" xref="A2.T11.1.1.1.1.m1.1.1.1.1.3.cmml">1</mn></msub><mo id="A2.T11.1.1.1.1.m1.2.2.2.4" xref="A2.T11.1.1.1.1.m1.2.2.3.cmml">,</mo><msub id="A2.T11.1.1.1.1.m1.2.2.2.2" xref="A2.T11.1.1.1.1.m1.2.2.2.2.cmml"><mi id="A2.T11.1.1.1.1.m1.2.2.2.2.2" xref="A2.T11.1.1.1.1.m1.2.2.2.2.2.cmml">β</mi><mn id="A2.T11.1.1.1.1.m1.2.2.2.2.3" xref="A2.T11.1.1.1.1.m1.2.2.2.2.3.cmml">2</mn></msub><mo id="A2.T11.1.1.1.1.m1.2.2.2.5" stretchy="false" xref="A2.T11.1.1.1.1.m1.2.2.3.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T11.1.1.1.1.m1.2b"><interval closure="open" id="A2.T11.1.1.1.1.m1.2.2.3.cmml" xref="A2.T11.1.1.1.1.m1.2.2.2"><apply id="A2.T11.1.1.1.1.m1.1.1.1.1.cmml" xref="A2.T11.1.1.1.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="A2.T11.1.1.1.1.m1.1.1.1.1.1.cmml" xref="A2.T11.1.1.1.1.m1.1.1.1.1">subscript</csymbol><ci id="A2.T11.1.1.1.1.m1.1.1.1.1.2.cmml" xref="A2.T11.1.1.1.1.m1.1.1.1.1.2">𝛽</ci><cn id="A2.T11.1.1.1.1.m1.1.1.1.1.3.cmml" type="integer" xref="A2.T11.1.1.1.1.m1.1.1.1.1.3">1</cn></apply><apply id="A2.T11.1.1.1.1.m1.2.2.2.2.cmml" xref="A2.T11.1.1.1.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="A2.T11.1.1.1.1.m1.2.2.2.2.1.cmml" xref="A2.T11.1.1.1.1.m1.2.2.2.2">subscript</csymbol><ci id="A2.T11.1.1.1.1.m1.2.2.2.2.2.cmml" xref="A2.T11.1.1.1.1.m1.2.2.2.2.2">𝛽</ci><cn id="A2.T11.1.1.1.1.m1.2.2.2.2.3.cmml" type="integer" xref="A2.T11.1.1.1.1.m1.2.2.2.2.3">2</cn></apply></interval></annotation-xml><annotation encoding="application/x-tex" id="A2.T11.1.1.1.1.m1.2c">(\beta_{1},\beta_{2})</annotation><annotation encoding="application/x-llamapun" id="A2.T11.1.1.1.1.m1.2d">( italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.1.2">(0.9, 0.999)</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T11.1.1.6.5.1">weight decay</th>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.6.5.2">0.</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T11.1.1.7.6.1">input resolution</th>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.7.6.2">256 (QLIP-B) / 392 (QLIP-L)</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.8.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T11.1.1.8.7.1">patch size</th>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.8.7.2">16 (QLIP-B) / 14 (QLIP-L)</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.9.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T11.1.1.9.8.1">warm-up epochs</th>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.9.8.2">1</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.10.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T11.1.1.10.9.1">total epochs</th>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.10.9.2">10 / 20 (BSQViT)</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.11.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T11.1.1.11.10.1">batch size per device</th>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.11.10.2">128</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.12.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T11.1.1.12.11.1">total batch size</th>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.12.11.2">1,024</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a linear evaluation experiment on image classification.  It compares various visual encoder methods, including those based on VQ-VAE, LQAE, EVA-CLIP, BSQViT, and QLIP, to assess their performance on this task. The evaluation uses two probing positions for the features extracted by the visual encoders: either the [CLS] token or the average of all feature tokens. The table also includes a combination of both for comparison. The goal is to evaluate the quality of visual representations learned by different visual encoders and how well these representations generalize to downstream image classification tasks.
> <details>
> <summary>read the caption</summary>
> Table 10: Linear evaluation on image classification.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T12.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T12.2.1.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A3.T12.2.1.1.1.1" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.1.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A3.T12.2.1.1.1.2" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.1.1.2.1" style="font-size:90%;">Tokenizer</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T12.2.1.1.1.3" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.1.1.3.1" style="font-size:70%;">Overall</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T12.2.1.1.1.4" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.1.1.4.1" style="font-size:70%;">Single Obj.</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T12.2.1.1.1.5" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.1.1.5.1" style="font-size:70%;">Two Obj.</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T12.2.1.1.1.6" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.1.1.6.1" style="font-size:70%;">Counting</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T12.2.1.1.1.7" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.1.1.7.1" style="font-size:70%;">Colors</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T12.2.1.1.1.8" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.1.1.8.1" style="font-size:70%;">Position</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T12.2.1.1.1.9" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.1.1.9.1" style="font-size:70%;">Attribute</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T12.2.1.2.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T12.2.1.2.1.1" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.2.1.1.1" style="font-size:90%;">LlamaGen</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T12.2.1.2.1.2" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.2.1.2.1" style="font-size:90%;">VQGAN</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.2.1.2.1.3" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.2.1.3.1" style="font-size:90%;">0.32</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.2.1.2.1.4" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.2.1.4.1" style="font-size:90%;">0.69</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.2.1.2.1.5" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.2.1.5.1" style="font-size:90%;">0.36</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.2.1.2.1.6" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.2.1.6.1" style="font-size:90%;">0.20</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.2.1.2.1.7" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.2.1.7.1" style="font-size:90%;">0.57</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.2.1.2.1.8" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.2.1.8.1" style="font-size:90%;">0.06</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T12.2.1.2.1.9" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.2.1.9.1" style="font-size:90%;">0.02</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.2.1.3.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A3.T12.2.1.3.2.1" rowspan="2" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.3.2.1.1" style="font-size:90%;">(0.8B)</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T12.2.1.3.2.2" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.3.2.2.1" style="font-size:90%;">BSQ-ViT</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T12.2.1.3.2.3" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.3.2.3.1" style="font-size:90%;">0.31</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T12.2.1.3.2.4" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.3.2.4.1" style="font-size:90%;">0.77</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T12.2.1.3.2.5" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.3.2.5.1" style="font-size:90%;">0.26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T12.2.1.3.2.6" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.3.2.6.1" style="font-size:90%;">0.13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T12.2.1.3.2.7" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.3.2.7.1" style="font-size:90%;">0.56</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T12.2.1.3.2.8" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.3.2.8.1" style="font-size:90%;">0.05</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T12.2.1.3.2.9" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.3.2.9.1" style="font-size:90%;">0.06</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.2.1.4.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T12.2.1.4.3.1" style="padding:0.25pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T12.2.1.4.3.1.1" style="font-size:90%;">QLIP (Ours)</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T12.2.1.4.3.2" style="padding:0.25pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T12.2.1.4.3.2.1" style="font-size:90%;">0.48</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T12.2.1.4.3.3" style="padding:0.25pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T12.2.1.4.3.3.1" style="font-size:90%;">0.91</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T12.2.1.4.3.4" style="padding:0.25pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T12.2.1.4.3.4.1" style="font-size:90%;">0.59</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T12.2.1.4.3.5" style="padding:0.25pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T12.2.1.4.3.5.1" style="font-size:90%;">0.22</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T12.2.1.4.3.6" style="padding:0.25pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T12.2.1.4.3.6.1" style="font-size:90%;">0.80</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T12.2.1.4.3.7" style="padding:0.25pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T12.2.1.4.3.7.1" style="font-size:90%;">0.17</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T12.2.1.4.3.8" style="padding:0.25pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T12.2.1.4.3.8.1" style="font-size:90%;">0.24</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.2.1.5.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" colspan="2" id="A3.T12.2.1.5.4.1" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.5.4.1.1" style="font-size:90%;color:#808080;">SDv1.5 (0.9B)</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="A3.T12.2.1.5.4.2" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.5.4.2.1" style="font-size:90%;color:#808080;">0.43</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="A3.T12.2.1.5.4.3" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.5.4.3.1" style="font-size:90%;color:#808080;">0.97</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="A3.T12.2.1.5.4.4" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.5.4.4.1" style="font-size:90%;color:#808080;">0.38</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="A3.T12.2.1.5.4.5" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.5.4.5.1" style="font-size:90%;color:#808080;">0.35</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="A3.T12.2.1.5.4.6" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.5.4.6.1" style="font-size:90%;color:#808080;">0.76</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="A3.T12.2.1.5.4.7" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.5.4.7.1" style="font-size:90%;color:#808080;">0.04</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A3.T12.2.1.5.4.8" style="padding:0.25pt 1.0pt;"><span class="ltx_text" id="A3.T12.2.1.5.4.8.1" style="font-size:90%;color:#808080;">0.06</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for the ImageNet linear probing experiments.  It details settings for the learning rate, optimizer, weight decay, input resolution, patch size, training epochs, batch size, and other relevant parameters used in evaluating the performance of visual encoders through linear probing on the ImageNet dataset.  This is important for understanding how different configurations impact the model's performance on this specific task.
> <details>
> <summary>read the caption</summary>
> Table 11: Hyperparamters for ImageNet linear probing.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T13.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T13.2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A3.T13.2.1.1.1.1" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.1.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A3.T13.2.1.1.1.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.1.1.2.1" style="font-size:90%;">Tokenizer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T13.2.1.1.1.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.1.1.3.1" style="font-size:90%;">Average</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T13.2.1.1.1.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.1.1.4.1" style="font-size:90%;">Global</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T13.2.1.1.1.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.1.1.5.1" style="font-size:90%;">Entity</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T13.2.1.1.1.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.1.1.6.1" style="font-size:90%;">Attribute</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T13.2.1.1.1.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.1.1.7.1" style="font-size:90%;">Relation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T13.2.1.1.1.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.1.1.8.1" style="font-size:90%;">Other</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T13.2.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T13.2.1.2.1.1" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.2.1.1.1" style="font-size:90%;">LlamaGen</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T13.2.1.2.1.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.2.1.2.1" style="font-size:90%;">VQGAN</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T13.2.1.2.1.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.2.1.3.1" style="font-size:90%;">43.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T13.2.1.2.1.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.2.1.4.1" style="font-size:90%;">76.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T13.2.1.2.1.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.2.1.5.1" style="font-size:90%;">57.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T13.2.1.2.1.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.2.1.6.1" style="font-size:90%;">66.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T13.2.1.2.1.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.2.1.7.1" style="font-size:90%;">75.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.2.1.2.1.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.2.1.8.1" style="font-size:90%;">42.80</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.2.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A3.T13.2.1.3.2.1" rowspan="2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.3.2.1.1" style="font-size:90%;">(0.8B)</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T13.2.1.3.2.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.3.2.2.1" style="font-size:90%;">BSQ-ViT</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.2.1.3.2.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.3.2.3.1" style="font-size:90%;">34.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.2.1.3.2.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.3.2.4.1" style="font-size:90%;">68.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.2.1.3.2.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.3.2.5.1" style="font-size:90%;">47.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.2.1.3.2.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.3.2.6.1" style="font-size:90%;">63.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.2.1.3.2.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.3.2.7.1" style="font-size:90%;">73.77</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.2.1.3.2.8" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.3.2.8.1" style="font-size:90%;">33.60</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T13.2.1.4.3.1" style="padding:0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T13.2.1.4.3.1.1" style="font-size:90%;">QLIP (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.2.1.4.3.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T13.2.1.4.3.2.1" style="font-size:90%;">78.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.2.1.4.3.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T13.2.1.4.3.3.1" style="font-size:90%;">82.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.2.1.4.3.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T13.2.1.4.3.4.1" style="font-size:90%;">84.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.2.1.4.3.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T13.2.1.4.3.5.1" style="font-size:90%;">86.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.2.1.4.3.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T13.2.1.4.3.6.1" style="font-size:90%;">92.50</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.2.1.4.3.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T13.2.1.4.3.7.1" style="font-size:90%;">79.20</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.2.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" colspan="2" id="A3.T13.2.1.5.4.1" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.5.4.1.1" style="font-size:90%;color:#808080;">SDv1.5 (0.9B)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T13.2.1.5.4.2" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.5.4.2.1" style="font-size:90%;color:#808080;">63.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T13.2.1.5.4.3" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.5.4.3.1" style="font-size:90%;color:#808080;">74.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T13.2.1.5.4.4" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.5.4.4.1" style="font-size:90%;color:#808080;">74.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T13.2.1.5.4.5" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.5.4.5.1" style="font-size:90%;color:#808080;">75.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T13.2.1.5.4.6" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.5.4.6.1" style="font-size:90%;color:#808080;">73.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T13.2.1.5.4.7" style="padding:0.25pt 2.0pt;"><span class="ltx_text" id="A3.T13.2.1.5.4.7.1" style="font-size:90%;color:#808080;">67.81</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different visual tokenizers on the GenEval benchmark. GenEval is a comprehensive evaluation benchmark designed to assess various aspects of image generation models beyond standard metrics like FID.  It includes sub-scores for evaluating the generation of different types of images, including those with single objects, multiple objects, specific counts, colors, or other attributes. The table shows each model's overall performance and its performance broken down by these sub-categories to offer a more nuanced understanding of their strengths and weaknesses.
> <details>
> <summary>read the caption</summary>
> Table 12: Evaluation on GenEval.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T14.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T14.12.13.1">
<td class="ltx_td ltx_border_tt" colspan="3" id="A4.T14.12.13.1.1" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="A4.T14.12.13.1.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.13.1.2.1" style="font-size:90%;"># Param.</span></td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="A4.T14.12.13.1.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T14.12.13.1.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.13.1.4.1" style="font-size:90%;">Understanding</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r ltx_border_tt" id="A4.T14.12.13.1.5" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A4.T14.12.13.1.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.13.1.6.1" style="font-size:90%;">Reconstruction</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.5.5">
<td class="ltx_td" id="A4.T14.5.5.6" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T14.5.5.7" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.5.5.7.1" style="font-size:90%;">Seen Data</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.5.5.8" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.1.1.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.1.1.1.1" style="font-size:90%;">(</span><math alttext="|{\mathcal{E}}|+|{\mathcal{G}}|+|{\mathcal{Q}}|" class="ltx_Math" display="inline" id="A4.T14.1.1.1.m1.3"><semantics id="A4.T14.1.1.1.m1.3a"><mrow id="A4.T14.1.1.1.m1.3.4" xref="A4.T14.1.1.1.m1.3.4.cmml"><mrow id="A4.T14.1.1.1.m1.3.4.2.2" xref="A4.T14.1.1.1.m1.3.4.2.1.cmml"><mo id="A4.T14.1.1.1.m1.3.4.2.2.1" maxsize="90%" minsize="90%" xref="A4.T14.1.1.1.m1.3.4.2.1.1.cmml">|</mo><mi class="ltx_font_mathcaligraphic" id="A4.T14.1.1.1.m1.1.1" mathsize="90%" xref="A4.T14.1.1.1.m1.1.1.cmml">ℰ</mi><mo id="A4.T14.1.1.1.m1.3.4.2.2.2" maxsize="90%" minsize="90%" xref="A4.T14.1.1.1.m1.3.4.2.1.1.cmml">|</mo></mrow><mo id="A4.T14.1.1.1.m1.3.4.1" mathsize="90%" xref="A4.T14.1.1.1.m1.3.4.1.cmml">+</mo><mrow id="A4.T14.1.1.1.m1.3.4.3.2" xref="A4.T14.1.1.1.m1.3.4.3.1.cmml"><mo id="A4.T14.1.1.1.m1.3.4.3.2.1" maxsize="90%" minsize="90%" xref="A4.T14.1.1.1.m1.3.4.3.1.1.cmml">|</mo><mi class="ltx_font_mathcaligraphic" id="A4.T14.1.1.1.m1.2.2" mathsize="90%" xref="A4.T14.1.1.1.m1.2.2.cmml">𝒢</mi><mo id="A4.T14.1.1.1.m1.3.4.3.2.2" maxsize="90%" minsize="90%" xref="A4.T14.1.1.1.m1.3.4.3.1.1.cmml">|</mo></mrow><mo id="A4.T14.1.1.1.m1.3.4.1a" mathsize="90%" xref="A4.T14.1.1.1.m1.3.4.1.cmml">+</mo><mrow id="A4.T14.1.1.1.m1.3.4.4.2" xref="A4.T14.1.1.1.m1.3.4.4.1.cmml"><mo id="A4.T14.1.1.1.m1.3.4.4.2.1" maxsize="90%" minsize="90%" xref="A4.T14.1.1.1.m1.3.4.4.1.1.cmml">|</mo><mi class="ltx_font_mathcaligraphic" id="A4.T14.1.1.1.m1.3.3" mathsize="90%" xref="A4.T14.1.1.1.m1.3.3.cmml">𝒬</mi><mo id="A4.T14.1.1.1.m1.3.4.4.2.2" maxsize="90%" minsize="90%" xref="A4.T14.1.1.1.m1.3.4.4.1.1.cmml">|</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="A4.T14.1.1.1.m1.3b"><apply id="A4.T14.1.1.1.m1.3.4.cmml" xref="A4.T14.1.1.1.m1.3.4"><plus id="A4.T14.1.1.1.m1.3.4.1.cmml" xref="A4.T14.1.1.1.m1.3.4.1"></plus><apply id="A4.T14.1.1.1.m1.3.4.2.1.cmml" xref="A4.T14.1.1.1.m1.3.4.2.2"><abs id="A4.T14.1.1.1.m1.3.4.2.1.1.cmml" xref="A4.T14.1.1.1.m1.3.4.2.2.1"></abs><ci id="A4.T14.1.1.1.m1.1.1.cmml" xref="A4.T14.1.1.1.m1.1.1">ℰ</ci></apply><apply id="A4.T14.1.1.1.m1.3.4.3.1.cmml" xref="A4.T14.1.1.1.m1.3.4.3.2"><abs id="A4.T14.1.1.1.m1.3.4.3.1.1.cmml" xref="A4.T14.1.1.1.m1.3.4.3.2.1"></abs><ci id="A4.T14.1.1.1.m1.2.2.cmml" xref="A4.T14.1.1.1.m1.2.2">𝒢</ci></apply><apply id="A4.T14.1.1.1.m1.3.4.4.1.cmml" xref="A4.T14.1.1.1.m1.3.4.4.2"><abs id="A4.T14.1.1.1.m1.3.4.4.1.1.cmml" xref="A4.T14.1.1.1.m1.3.4.4.2.1"></abs><ci id="A4.T14.1.1.1.m1.3.3.cmml" xref="A4.T14.1.1.1.m1.3.3">𝒬</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.1.1.1.m1.3c">|{\mathcal{E}}|+|{\mathcal{G}}|+|{\mathcal{Q}}|</annotation><annotation encoding="application/x-llamapun" id="A4.T14.1.1.1.m1.3d">| caligraphic_E | + | caligraphic_G | + | caligraphic_Q |</annotation></semantics></math><span class="ltx_text" id="A4.T14.1.1.1.2" style="font-size:90%;">)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.5.5.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.5.5.9.1" style="font-size:90%;"># bits</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.2.2.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.2.2.2.1" style="font-size:90%;">0-shot Acc.</span><sub class="ltx_sub" id="A4.T14.2.2.2.2"><span class="ltx_text" id="A4.T14.2.2.2.2.1" style="font-size:90%;">↑</span></sub>
</td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.5.5.10" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.3.3.3" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.3.3.3.1" style="font-size:90%;">rFID</span><sub class="ltx_sub" id="A4.T14.3.3.3.2"><span class="ltx_text" id="A4.T14.3.3.3.2.1" style="font-size:90%;">↓</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.4.4.4" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.4.4.4.1" style="font-size:90%;">PSNR</span><sub class="ltx_sub" id="A4.T14.4.4.4.2"><span class="ltx_text" id="A4.T14.4.4.4.2.1" style="font-size:90%;">↑</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.5.5.5" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.5.5.5.1" style="font-size:90%;">SSIM</span><sub class="ltx_sub" id="A4.T14.5.5.5.2"><span class="ltx_text" id="A4.T14.5.5.5.2.1" style="font-size:90%;">↑</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.14.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="10" id="A4.T14.12.14.2.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="A4.T14.12.14.2.1.1" style="font-size:90%;">(Base backbone)</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.15.3">
<td class="ltx_td ltx_align_left" id="A4.T14.12.15.3.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.15.3.1.1" style="font-size:90%;">CLIP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.15.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="A4.T14.12.15.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.15.3.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.15.3.2.1" style="font-size:90%;">WIT-400M</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.15.3.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.15.3.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.15.3.4.1" style="font-size:90%;">87M+0+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.15.3.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.15.3.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.15.3.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.15.3.6.1" style="font-size:90%;">68.3</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.15.3.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.15.3.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.15.3.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.15.3.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.15.3.9.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.15.3.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.15.3.10.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.16.4">
<td class="ltx_td ltx_align_left" id="A4.T14.12.16.4.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.16.4.1.1" style="font-size:90%;">EVA-CLIP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.16.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a><span class="ltx_text" id="A4.T14.12.16.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.16.4.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.16.4.2.1" style="font-size:90%;">Merged-2B</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.16.4.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.16.4.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.16.4.4.1" style="font-size:90%;">87M+0+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.16.4.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.16.4.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.16.4.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.16.4.6.1" style="font-size:90%;">74.7</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.16.4.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.16.4.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.16.4.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.16.4.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.16.4.9.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.16.4.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.16.4.10.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.17.5">
<td class="ltx_td ltx_align_left" id="A4.T14.12.17.5.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.17.5.1.1" style="font-size:90%;">SigLIP-B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.17.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a><span class="ltx_text" id="A4.T14.12.17.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.17.5.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.17.5.2.1" style="font-size:90%;">WL-10B</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.17.5.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.17.5.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.17.5.4.1" style="font-size:90%;">87M+0+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.17.5.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.17.5.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.17.5.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.17.5.6.1" style="font-size:90%;">76.7</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.17.5.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.17.5.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.17.5.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.17.5.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.17.5.9.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.17.5.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.17.5.10.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.18.6">
<td class="ltx_td ltx_align_left" id="A4.T14.12.18.6.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.18.6.1.1" style="font-size:90%;">VQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.18.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="A4.T14.12.18.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.18.6.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.18.6.2.1" style="font-size:90%;">IN-1k</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.18.6.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.18.6.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.18.6.4.1" style="font-size:90%;">29M+42M+4M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.18.6.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.18.6.5.1" style="font-size:90%;">14</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.18.6.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.18.6.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.18.6.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.18.6.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.18.6.8.1" style="font-size:90%;">4.98</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.18.6.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.18.6.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.18.6.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.18.6.10.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.6.6">
<td class="ltx_td ltx_align_left" id="A4.T14.6.6.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.6.6.2.1" style="font-size:90%;">MoVQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.6.6.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib100" title=""><span class="ltx_text" style="font-size:90%;">100</span></a><span class="ltx_text" id="A4.T14.6.6.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.6.6.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.6.6.3.1" style="font-size:90%;">IN-1k</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.6.6.4" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.6.6.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.6.6.5.1" style="font-size:90%;">(82.7M)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.6.6.1" style="padding:0.25pt 3.0pt;">
<sup class="ltx_sup" id="A4.T14.6.6.1.1"><span class="ltx_text" id="A4.T14.6.6.1.1.1" style="font-size:90%;">&amp;</span></sup><span class="ltx_text" id="A4.T14.6.6.1.2" style="font-size:90%;">40</span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.6.6.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.6.6.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.6.6.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.6.6.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.6.6.8.1" style="font-size:90%;">1.12</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.6.6.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.6.6.9.1" style="font-size:90%;">22.42</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.6.6.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.6.6.10.1" style="font-size:90%;">0.6731</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.19.7">
<td class="ltx_td ltx_align_left" id="A4.T14.12.19.7.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.19.7.1.1" style="font-size:90%;">MaskGIT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.19.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="A4.T14.12.19.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.19.7.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.19.7.2.1" style="font-size:90%;">IN-1k</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.19.7.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.19.7.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.19.7.4.1" style="font-size:90%;">24M+30M+6k</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.19.7.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.19.7.5.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.19.7.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.19.7.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.19.7.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.19.7.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.19.7.8.1" style="font-size:90%;">1.98</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.19.7.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.19.7.9.1" style="font-size:90%;">18.63</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.19.7.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.19.7.10.1" style="font-size:90%;">0.4619</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.20.8">
<td class="ltx_td ltx_align_left" id="A4.T14.12.20.8.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.20.8.1.1" style="font-size:90%;">Open-MAGVIT2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.20.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib93" title=""><span class="ltx_text" style="font-size:90%;">93</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="A4.T14.12.20.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.20.8.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.20.8.2.1" style="font-size:90%;">IN-1k</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.20.8.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.20.8.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.20.8.4.1" style="font-size:90%;">25M+40M+18k</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.20.8.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.20.8.5.1" style="font-size:90%;">18</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.20.8.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.20.8.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.20.8.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.20.8.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.20.8.8.1" style="font-size:90%;">1.53</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.20.8.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.20.8.9.1" style="font-size:90%;">21.53</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.20.8.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.20.8.10.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.21.9">
<td class="ltx_td ltx_align_left" id="A4.T14.12.21.9.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.21.9.1.1" style="font-size:90%;">OpenCLIP-B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.21.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="A4.T14.12.21.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.21.9.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.21.9.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.21.9.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.21.9.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.21.9.4.1" style="font-size:90%;">87M+0+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.21.9.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.21.9.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.21.9.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.21.9.6.1" style="font-size:90%;">73.5</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.21.9.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.21.9.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.21.9.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.21.9.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.21.9.9.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.21.9.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.21.9.10.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.7.7">
<td class="ltx_td ltx_align_left" id="A4.T14.7.7.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.7.7.1.1" style="font-size:90%;">BSQViT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.7.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib98" title=""><span class="ltx_text" style="font-size:90%;">98</span></a><span class="ltx_text" id="A4.T14.7.7.1.3.2" style="font-size:90%;">]</span></cite><sup class="ltx_sup" id="A4.T14.7.7.1.4"><span class="ltx_text" id="A4.T14.7.7.1.4.1" style="font-size:90%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.7.7.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.7.7.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.7.7.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.7.7.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.7.7.4.1" style="font-size:90%;">87M+87M+1M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.7.7.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.7.7.5.1" style="font-size:90%;">28</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.7.7.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.7.7.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.7.7.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.7.7.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.7.7.8.1" style="font-size:90%;">3.81</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.7.7.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.7.7.9.1" style="font-size:90%;">24.12</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.7.7.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.7.7.10.1" style="font-size:90%;">0.6638</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.22.10">
<td class="ltx_td ltx_align_left" id="A4.T14.12.22.10.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.22.10.1.1" style="font-size:90%;">QLIP-B (ours)</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.22.10.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.22.10.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.22.10.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.22.10.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.22.10.4.1" style="font-size:90%;">87M+87M+1M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.22.10.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.22.10.5.1" style="font-size:90%;">28</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.22.10.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.22.10.6.1" style="font-size:90%;">74.3</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.22.10.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.22.10.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.22.10.8.1" style="font-size:90%;">3.21</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.22.10.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.22.10.9.1" style="font-size:90%;">23.16</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.22.10.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.22.10.10.1" style="font-size:90%;">0.6286</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.23.11">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="10" id="A4.T14.12.23.11.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="A4.T14.12.23.11.1.1" style="font-size:90%;">(Base backbone, Smaller patch)</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.24.12">
<td class="ltx_td ltx_align_left" id="A4.T14.12.24.12.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.24.12.1.1" style="font-size:90%;">SigLIP-B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.24.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a><span class="ltx_text" id="A4.T14.12.24.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.24.12.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.24.12.2.1" style="font-size:90%;">WL-10B</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.24.12.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.24.12.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.24.12.4.1" style="font-size:90%;">87M+0+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.24.12.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.24.12.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.24.12.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.24.12.6.1" style="font-size:90%;">79.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.24.12.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.24.12.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.24.12.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.24.12.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.24.12.9.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.24.12.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.24.12.10.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.25.13">
<td class="ltx_td ltx_align_left" id="A4.T14.12.25.13.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.25.13.1.1" style="font-size:90%;">DALL-E dVAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.25.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a><span class="ltx_text" id="A4.T14.12.25.13.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.25.13.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.25.13.2.1" style="font-size:70%;">CC3M+YF</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.25.13.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.25.13.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.25.13.4.1" style="font-size:90%;">54M+44M+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.25.13.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.25.13.5.1" style="font-size:90%;">13</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.25.13.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.25.13.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.25.13.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.25.13.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.25.13.8.1" style="font-size:90%;">32.63</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.25.13.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.25.13.9.1" style="font-size:90%;">27.31</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.25.13.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.25.13.10.1" style="font-size:90%;">0.7943</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.26.14">
<td class="ltx_td ltx_align_left" id="A4.T14.12.26.14.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.26.14.1.1" style="font-size:90%;">ViT-VQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.26.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib91" title=""><span class="ltx_text" style="font-size:90%;">91</span></a><span class="ltx_text" id="A4.T14.12.26.14.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.26.14.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.26.14.2.1" style="font-size:90%;">IN-1k</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.26.14.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.26.14.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.26.14.4.1" style="font-size:90%;">91M+91M+0.5M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.26.14.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.26.14.5.1" style="font-size:90%;">13</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.26.14.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.26.14.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.26.14.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.26.14.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.26.14.8.1" style="font-size:90%;">1.55</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.26.14.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.26.14.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.26.14.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.26.14.10.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.27.15">
<td class="ltx_td ltx_align_left" id="A4.T14.12.27.15.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.27.15.1.1" style="font-size:90%;">SD-VAE 1.x </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.27.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="A4.T14.12.27.15.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.27.15.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.27.15.2.1" style="font-size:90%;">OI-2M</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.27.15.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.27.15.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.27.15.4.1" style="font-size:90%;">34M+49M+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.27.15.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.27.15.5.1" style="font-size:90%;">14</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.27.15.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.27.15.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.27.15.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.27.15.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.27.15.8.1" style="font-size:90%;">1.40</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.27.15.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.27.15.9.1" style="font-size:90%;">23.65</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.27.15.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.27.15.10.1" style="font-size:90%;">0.6354</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.8.8">
<td class="ltx_td ltx_align_left" id="A4.T14.8.8.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.8.8.2.1" style="font-size:90%;">SD-VAE 2.x </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.8.8.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="A4.T14.8.8.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.8.8.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.8.8.3.1" style="font-size:70%;">OI-2M+LA-ae</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.8.8.4" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.8.8.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.8.8.5.1" style="font-size:90%;">34M+49M+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.8.8.1" style="padding:0.25pt 3.0pt;">
<sup class="ltx_sup" id="A4.T14.8.8.1.1"><span class="ltx_text" id="A4.T14.8.8.1.1.1" style="font-size:90%;">#</span></sup><span class="ltx_text" id="A4.T14.8.8.1.2" style="font-size:90%;">64</span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.8.8.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.8.8.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.8.8.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.8.8.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.8.8.8.1" style="font-size:90%;">0.70</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.8.8.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.8.8.9.1" style="font-size:90%;">26.90</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.8.8.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.8.8.10.1" style="font-size:90%;">0.7592</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.9.9">
<td class="ltx_td ltx_align_left" id="A4.T14.9.9.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.9.9.2.1" style="font-size:90%;">SDXL-VAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.9.9.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="A4.T14.9.9.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.9.9.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.9.9.3.1" style="font-size:70%;">OI-2M+LA-ae++</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.9.9.4" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.9.9.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.9.9.5.1" style="font-size:90%;">34M+49M+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.9.9.1" style="padding:0.25pt 3.0pt;">
<sup class="ltx_sup" id="A4.T14.9.9.1.1"><span class="ltx_text" id="A4.T14.9.9.1.1.1" style="font-size:90%;">#</span></sup><span class="ltx_text" id="A4.T14.9.9.1.2" style="font-size:90%;">64</span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.9.9.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.9.9.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.9.9.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.9.9.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.9.9.8.1" style="font-size:90%;">0.67</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.9.9.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.9.9.9.1" style="font-size:90%;">27.37</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.9.9.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.9.9.10.1" style="font-size:90%;">0.7814</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.28.16">
<td class="ltx_td ltx_align_left" id="A4.T14.12.28.16.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.28.16.1.1" style="font-size:90%;">SBER-MoVQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.28.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a><span class="ltx_text" id="A4.T14.12.28.16.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.28.16.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.28.16.2.1" style="font-size:70%;">LAHR-166M</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.28.16.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.28.16.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.28.16.4.1" style="font-size:90%;">29M+42M+4M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.28.16.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.28.16.5.1" style="font-size:90%;">14</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.28.16.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.28.16.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.28.16.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.28.16.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.28.16.8.1" style="font-size:90%;">0.96</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.28.16.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.28.16.9.1" style="font-size:90%;">26.45</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.28.16.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.28.16.10.1" style="font-size:90%;">0.7250</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.29.17">
<td class="ltx_td ltx_align_left" id="A4.T14.12.29.17.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.29.17.1.1" style="font-size:90%;">BSQViT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.29.17.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib98" title=""><span class="ltx_text" style="font-size:90%;">98</span></a><span class="ltx_text" id="A4.T14.12.29.17.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.29.17.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.29.17.2.1" style="font-size:90%;">IN-1k</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.29.17.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.29.17.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.29.17.4.1" style="font-size:90%;">87M+87M+28k</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.29.17.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.29.17.5.1" style="font-size:90%;">18</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.29.17.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.29.17.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.29.17.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.29.17.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.29.17.8.1" style="font-size:90%;">0.99</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.29.17.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.29.17.9.1" style="font-size:90%;">27.78</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.29.17.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.29.17.10.1" style="font-size:90%;">0.8171</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.10.10">
<td class="ltx_td ltx_align_left" id="A4.T14.10.10.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.10.10.1.1" style="font-size:90%;">EVA-CLIP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.10.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a><span class="ltx_text" id="A4.T14.10.10.1.3.2" style="font-size:90%;">]</span></cite><sup class="ltx_sup" id="A4.T14.10.10.1.4"><span class="ltx_text" id="A4.T14.10.10.1.4.1" style="font-size:90%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.10.10.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.10.10.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.10.10.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.10.10.4.1" style="font-size:90%;">87M+0+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.10.10.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.10.10.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.10.10.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.10.10.6.1" style="font-size:90%;">77.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.10.10.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.10.10.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.10.10.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.10.10.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.10.10.9.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.10.10.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.10.10.10.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.30.18">
<td class="ltx_td ltx_align_left" id="A4.T14.12.30.18.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.30.18.1.1" style="font-size:90%;">QLIP-B (ours)</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.30.18.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.30.18.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.30.18.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.30.18.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.30.18.4.1" style="font-size:90%;">87M+87M+1M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.30.18.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.30.18.5.1" style="font-size:90%;">28</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.30.18.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.30.18.6.1" style="font-size:90%;">75.6</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.30.18.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.30.18.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.30.18.8.1" style="font-size:90%;">0.70</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.30.18.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.30.18.9.1" style="font-size:90%;">26.79</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.30.18.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.30.18.10.1" style="font-size:90%;">0.7905</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.31.19">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="10" id="A4.T14.12.31.19.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="A4.T14.12.31.19.1.1" style="font-size:90%;">(Large backbone)</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.32.20">
<td class="ltx_td ltx_align_left" id="A4.T14.12.32.20.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.32.20.1.1" style="font-size:90%;">CLIP/f14 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.32.20.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="A4.T14.12.32.20.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.32.20.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.32.20.2.1" style="font-size:90%;">WIT-400M</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.32.20.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.32.20.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.32.20.4.1" style="font-size:90%;">304M+0+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.32.20.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.32.20.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.32.20.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.32.20.6.1" style="font-size:90%;">75.5</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.32.20.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.32.20.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.32.20.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.32.20.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.32.20.9.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.32.20.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.32.20.10.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.33.21">
<td class="ltx_td ltx_align_left" id="A4.T14.12.33.21.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.33.21.1.1" style="font-size:90%;">SigLIP-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.33.21.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a><span class="ltx_text" id="A4.T14.12.33.21.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.33.21.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.33.21.2.1" style="font-size:90%;">WL-10B</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.33.21.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.33.21.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.33.21.4.1" style="font-size:90%;">304M+0+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.33.21.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.33.21.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.33.21.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.33.21.6.1" style="font-size:90%;">80.5</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.33.21.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.33.21.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.33.21.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.33.21.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.33.21.9.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.33.21.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.33.21.10.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.34.22">
<td class="ltx_td ltx_align_left" id="A4.T14.12.34.22.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.34.22.1.1" style="font-size:90%;">OpenCLIP-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.34.22.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="A4.T14.12.34.22.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.34.22.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.34.22.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.34.22.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.34.22.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.34.22.4.1" style="font-size:90%;">304M+0+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.34.22.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.34.22.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.34.22.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.34.22.6.1" style="font-size:90%;">79.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.34.22.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.34.22.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.34.22.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.34.22.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.34.22.9.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.34.22.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.34.22.10.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.35.23">
<td class="ltx_td ltx_align_left" id="A4.T14.12.35.23.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.35.23.1.1" style="font-size:90%;">EVA-CLIP-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.35.23.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a><span class="ltx_text" id="A4.T14.12.35.23.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.35.23.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.35.23.2.1" style="font-size:90%;">Merged-2B</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.35.23.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.35.23.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.35.23.4.1" style="font-size:90%;">304M+0+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.35.23.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.35.23.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.35.23.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.35.23.6.1" style="font-size:90%;">79.8</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.35.23.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.35.23.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.35.23.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.35.23.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.35.23.9.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.35.23.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.35.23.10.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.36.24">
<td class="ltx_td ltx_align_left" id="A4.T14.12.36.24.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.36.24.1.1" style="font-size:90%;">Open-MAGVIT2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.36.24.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib93" title=""><span class="ltx_text" style="font-size:90%;">93</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="A4.T14.12.36.24.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.36.24.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.36.24.2.1" style="font-size:90%;">IN-1k</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.36.24.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.36.24.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.36.24.4.1" style="font-size:90%;">50M+65M+18k</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.36.24.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.36.24.5.1" style="font-size:90%;">18</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.36.24.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.36.24.6.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.36.24.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.36.24.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.36.24.8.1" style="font-size:90%;">1.17</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.36.24.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.36.24.9.1" style="font-size:90%;">21.90</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.36.24.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.36.24.10.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.11.11">
<td class="ltx_td ltx_align_left" id="A4.T14.11.11.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.11.11.2.1" style="font-size:90%;">VILA-U </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.11.11.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib89" title=""><span class="ltx_text" style="font-size:90%;">89</span></a><span class="ltx_text" id="A4.T14.11.11.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.11.11.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.11.11.3.1" style="font-size:70%;">WL-10B+CY-1B</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.11.11.4" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.11.11.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.11.11.5.1" style="font-size:90%;">316M+42M+134M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.11.11.1" style="padding:0.25pt 3.0pt;">
<sup class="ltx_sup" id="A4.T14.11.11.1.1"><span class="ltx_text" id="A4.T14.11.11.1.1.1" style="font-size:90%;">&amp;</span></sup><span class="ltx_text" id="A4.T14.11.11.1.2" style="font-size:90%;">56</span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.11.11.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.11.11.6.1" style="font-size:90%;">73.3</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.11.11.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.11.11.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.11.11.8.1" style="font-size:90%;">1.80</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.11.11.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.11.11.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.11.11.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.11.11.10.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.37.25">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="10" id="A4.T14.12.37.25.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="A4.T14.12.37.25.1.1" style="font-size:90%;">(Large backbone, high resolution)</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.38.26">
<td class="ltx_td ltx_align_left" id="A4.T14.12.38.26.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.38.26.1.1" style="font-size:90%;">CLIP/f14 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.38.26.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="A4.T14.12.38.26.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.38.26.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.38.26.2.1" style="font-size:90%;">WIT-400M</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.38.26.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.38.26.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.38.26.4.1" style="font-size:90%;">304M+0+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.38.26.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.38.26.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.38.26.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.38.26.6.1" style="font-size:90%;">76.6</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.38.26.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.38.26.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.38.26.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.38.26.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.38.26.9.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.38.26.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.38.26.10.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.39.27">
<td class="ltx_td ltx_align_left" id="A4.T14.12.39.27.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.39.27.1.1" style="font-size:90%;">SigLIP-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.39.27.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a><span class="ltx_text" id="A4.T14.12.39.27.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.39.27.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.39.27.2.1" style="font-size:90%;">WL-10B</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.39.27.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.39.27.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.39.27.4.1" style="font-size:90%;">304M+0+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.39.27.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.39.27.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.39.27.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.39.27.6.1" style="font-size:90%;">82.1</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.39.27.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.39.27.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.39.27.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.39.27.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.39.27.9.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.39.27.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.39.27.10.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.40.28">
<td class="ltx_td ltx_align_left" id="A4.T14.12.40.28.1" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.40.28.1.1" style="font-size:90%;">EVA-CLIP-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.40.28.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a><span class="ltx_text" id="A4.T14.12.40.28.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.40.28.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.40.28.2.1" style="font-size:90%;">Merged-2B</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.40.28.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.40.28.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.40.28.4.1" style="font-size:90%;">304M+0+0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.40.28.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.40.28.5.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.40.28.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.40.28.6.1" style="font-size:90%;">80.4</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.40.28.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.40.28.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.40.28.8.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.40.28.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.40.28.9.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.40.28.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.40.28.10.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.12">
<td class="ltx_td ltx_align_left" id="A4.T14.12.12.2" style="padding:0.25pt 3.0pt;">
<span class="ltx_text" id="A4.T14.12.12.2.1" style="font-size:90%;">VILA-U </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.12.12.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.05178v1#bib.bib89" title=""><span class="ltx_text" style="font-size:90%;">89</span></a><span class="ltx_text" id="A4.T14.12.12.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.12.3" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.12.3.1" style="font-size:70%;">WL-10B+CY-1B</span></td>
<td class="ltx_td ltx_nopad_r" id="A4.T14.12.12.4" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.12.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.12.5.1" style="font-size:90%;">428M+42M+537M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T14.12.12.1" style="padding:0.25pt 3.0pt;">
<sup class="ltx_sup" id="A4.T14.12.12.1.1"><span class="ltx_text" id="A4.T14.12.12.1.1.1" style="font-size:90%;">&amp;</span></sup><span class="ltx_text" id="A4.T14.12.12.1.2" style="font-size:90%;">224</span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.12.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.12.6.1" style="font-size:90%;">78.0</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="A4.T14.12.12.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.12.12.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.12.8.1" style="font-size:90%;">1.25</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.12.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.12.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.12.12.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.12.10.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.41.29">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T14.12.41.29.1" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.41.29.1.1" style="font-size:90%;">QLIP-L (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T14.12.41.29.2" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.41.29.2.1" style="font-size:90%;">DC-1B</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_bb" id="A4.T14.12.41.29.3" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="A4.T14.12.41.29.4" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.41.29.4.1" style="font-size:90%;">304M+304M+2M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T14.12.41.29.5" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.41.29.5.1" style="font-size:90%;">28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T14.12.41.29.6" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.41.29.6.1" style="font-size:90%;">79.1</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_bb ltx_border_r" id="A4.T14.12.41.29.7" style="padding:0.25pt 3.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="A4.T14.12.41.29.8" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.41.29.8.1" style="font-size:90%;">1.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T14.12.41.29.9" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.41.29.9.1" style="font-size:90%;">25.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T14.12.41.29.10" style="padding:0.25pt 3.0pt;"><span class="ltx_text" id="A4.T14.12.41.29.10.1" style="font-size:90%;">0.6903</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of different visual tokenizers on the DPG-Bench benchmark, specifically focusing on text-to-image generation.  The benchmark assesses performance across various aspects of image generation quality, including average global scores, entity, attribute, relation, and other aspects.  It allows for a comparison of different approaches in terms of how well-generated images align with given captions, and how effectively they represent details within the image.
> <details>
> <summary>read the caption</summary>
> Table 13: Evaluation on DPG-Bench.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.05178/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05178/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05178/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05178/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05178/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05178/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05178/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05178/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05178/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05178/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05178/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05178/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05178/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05178/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05178/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}