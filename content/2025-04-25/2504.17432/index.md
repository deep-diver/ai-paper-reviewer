---
title: "Breaking the Modality Barrier: Universal Embedding Learning with Multimodal LLMs"
summary: "UniME: Breaking the modality barrier via universal multimodal embeddings with MLLMs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 University of Sydney",]
showSummary: true
date: 2025-04-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.17432 {{< /keyword >}}
{{< keyword icon="writer" >}} Tiancheng Gu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.17432" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.17432" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.17432/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Contrastive Language-Image Pre-training (CLIP) excels in image-text retrieval, but its effectiveness is limited by text token truncation, isolated image-text encoding and deficient compositionality. Recent Multimodal Large Language Models (MLLMs) show vision-language understanding progress, their potential for transferable multimodal representations remains underexplored. Thus, there is a need for multimodal representation that are more robust and transferable.



This paper presents UniME (Universal Multimodal Embedding), a two-stage framework that leverages MLLMs to learn discriminative representations for diverse tasks. In the first stage, textual discriminative knowledge distillation is performed, enhancing the language component of MLLMs. The second stage introduces hard negative enhanced instruction tuning, further advancing representation learning. Experiments on the MMEB benchmark and multiple retrieval tasks demonstrate UniME's consistent performance improvement and superior capabilities.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} UniME, a two-stage framework, enhances discriminative power and instruction-following ability of MLLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Textual knowledge distillation from LLMs improves MLLM's language component. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Hard negative enhanced instruction tuning advances representation learning by filtering false negatives. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper matters because it tackles a crucial issue: **enhancing multimodal representation learning for diverse downstream tasks**. By improving discriminative and compositional capabilities, this work paves the way for more robust and versatile AI systems that can better understand and process complex visual-linguistic information. UniME offers a novel approach and sets a new standard for future research in multimodal learning and applications.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.9.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.9.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.9.5.6.1.1" rowspan="2" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.6.1.1.1" style="font-size:90%;">Models</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.9.5.6.1.2" rowspan="2" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.6.1.2.1" style="font-size:90%;">#Parameters</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S3.T1.9.5.6.1.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.6.1.3.1" style="font-size:90%;">Per Meta-Task Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.9.5.6.1.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.6.1.4.1" style="font-size:90%;">Average Score</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.7.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.7.2.1" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.7.2.1.1" style="font-size:90%;">Classification</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.7.2.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.7.2.2.1" style="font-size:90%;">VQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.7.2.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.7.2.3.1" style="font-size:90%;">Retrieval</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.7.2.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.7.2.4.1" style="font-size:90%;">Grounding</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.7.2.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.7.2.5.1" style="font-size:90%;">IND</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.7.2.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.7.2.6.1" style="font-size:90%;">OOD</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.7.2.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.7.2.7.1" style="font-size:90%;">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.5.1.1.1" style="padding:0.9pt 7.0pt;">
<span class="ltx_text" id="S3.T1.5.1.1.1.1" style="font-size:90%;"># of Datasets </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S3.T1.5.1.1.1.m1.1"><semantics id="S3.T1.5.1.1.1.m1.1a"><mo id="S3.T1.5.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.5.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.1.1.1.m1.1b"><ci id="S3.T1.5.1.1.1.m1.1.1.cmml" xref="S3.T1.5.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.1.1.1.m1.1d">→</annotation></semantics></math>
</th>
<td class="ltx_td ltx_border_t" id="S3.T1.5.1.1.2" style="padding:0.9pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.1.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.5.1.1.3.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.1.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.5.1.1.4.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.1.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.5.1.1.5.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.1.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.5.1.1.6.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.1.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.5.1.1.7.1" style="font-size:90%;">20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.1.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.5.1.1.8.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.1.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.5.1.1.9.1" style="font-size:90%;">36</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.8.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="9" id="S3.T1.9.5.8.3.1" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T1.9.5.8.3.1.1" style="font-size:90%;color:#000000;">Zero-shot on MMEB</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.9.5.9.4.1" style="padding:0.9pt 7.0pt;">
<span class="ltx_text" id="S3.T1.9.5.9.4.1.1" style="font-size:90%;">CLIP(ViT-L) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.9.5.9.4.1.2.1" style="font-size:90%;">(</span>Jiang et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.9.5.9.4.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib23" title="">2025</a><span class="ltx_text" id="S3.T1.9.5.9.4.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.9.4.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.9.4.2.1" style="font-size:90%;">0.4B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.9.4.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.9.4.3.1" style="font-size:90%;">42.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.9.4.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.9.4.4.1" style="font-size:90%;">9.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.9.4.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.9.4.5.1" style="font-size:90%;">53.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.9.4.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.9.4.6.1" style="font-size:90%;">51.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.9.4.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.9.4.7.1" style="font-size:90%;">37.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.9.4.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.9.4.8.1" style="font-size:90%;">38.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.9.4.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.9.4.9.1" style="font-size:90%;">39.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.5.10.5.1" style="padding:0.9pt 7.0pt;">
<span class="ltx_text" id="S3.T1.9.5.10.5.1.1" style="font-size:90%;">OpenCLIP(ViT-L) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.9.5.10.5.1.2.1" style="font-size:90%;">(</span>Radford et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.9.5.10.5.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib43" title="">2021</a><span class="ltx_text" id="S3.T1.9.5.10.5.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.10.5.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.10.5.2.1" style="font-size:90%;">0.4B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.10.5.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.10.5.3.1" style="font-size:90%;">41.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.10.5.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.10.5.4.1" style="font-size:90%;">6.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.10.5.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.10.5.5.1" style="font-size:90%;">44.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.10.5.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.10.5.6.1" style="font-size:90%;">53.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.10.5.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.10.5.7.1" style="font-size:90%;">32.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.10.5.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.10.5.8.1" style="font-size:90%;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.10.5.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.10.5.9.1" style="font-size:90%;">36.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.5.11.6.1" style="padding:0.9pt 7.0pt;">
<span class="ltx_text" id="S3.T1.9.5.11.6.1.1" style="font-size:90%;">Magiclens(ViT-L) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.9.5.11.6.1.2.1" style="font-size:90%;">(</span>Zhang et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.9.5.11.6.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib65" title="">2024b</a><span class="ltx_text" id="S3.T1.9.5.11.6.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.11.6.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.11.6.2.1" style="font-size:90%;">0.4B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.11.6.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.11.6.3.1" style="font-size:90%;">38.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.11.6.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.11.6.4.1" style="font-size:90%;">8.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.11.6.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.11.6.5.1" style="font-size:90%;">35.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.11.6.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.11.6.6.1" style="font-size:90%;">26.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.11.6.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.11.6.7.1" style="font-size:90%;">31.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.11.6.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.11.6.8.1" style="font-size:90%;">23.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.11.6.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.11.6.9.1" style="font-size:90%;">27.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.5.12.7.1" style="padding:0.9pt 7.0pt;">
<span class="ltx_text" id="S3.T1.9.5.12.7.1.1" style="font-size:90%;">SigLIP(So/14) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.9.5.12.7.1.2.1" style="font-size:90%;">(</span>Zhai et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.9.5.12.7.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib62" title="">2023</a><span class="ltx_text" id="S3.T1.9.5.12.7.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.12.7.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.12.7.2.1" style="font-size:90%;">0.9B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.12.7.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.12.7.3.1" style="font-size:90%;">40.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.12.7.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.12.7.4.1" style="font-size:90%;">8.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.12.7.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.12.7.5.1" style="font-size:90%;">31.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.12.7.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.12.7.6.1" style="font-size:90%;">59.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.12.7.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.12.7.7.1" style="font-size:90%;">32.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.12.7.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.12.7.8.1" style="font-size:90%;">38.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.12.7.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.12.7.9.1" style="font-size:90%;">35.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.13.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.5.13.8.1" style="padding:0.9pt 7.0pt;">
<span class="ltx_text" id="S3.T1.9.5.13.8.1.1" style="font-size:90%;">BLIP2(ViT-L) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.9.5.13.8.1.2.1" style="font-size:90%;">(</span>Li et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.9.5.13.8.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib29" title="">2023</a><span class="ltx_text" id="S3.T1.9.5.13.8.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.13.8.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.13.8.2.1" style="font-size:90%;">1.2B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.13.8.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.13.8.3.1" style="font-size:90%;">27.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.13.8.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.13.8.4.1" style="font-size:90%;">4.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.13.8.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.13.8.5.1" style="font-size:90%;">33.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.13.8.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.13.8.6.1" style="font-size:90%;">47.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.13.8.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.13.8.7.1" style="font-size:90%;">25.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.13.8.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.13.8.8.1" style="font-size:90%;">25.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.13.8.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.13.8.9.1" style="font-size:90%;">28.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.14.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.5.14.9.1" style="padding:0.9pt 7.0pt;">
<span class="ltx_text" id="S3.T1.9.5.14.9.1.1" style="font-size:90%;">CLIP(ViT-BigG/14) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.9.5.14.9.1.2.1" style="font-size:90%;">(</span>Cherti et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.9.5.14.9.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib9" title="">2022</a><span class="ltx_text" id="S3.T1.9.5.14.9.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.14.9.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.14.9.2.1" style="font-size:90%;">2.5B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.14.9.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.14.9.3.1" style="font-size:90%;">52.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.14.9.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.14.9.4.1" style="font-size:90%;">14.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.14.9.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.14.9.5.1" style="font-size:90%;">50.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.14.9.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.14.9.6.1" style="font-size:90%;">60.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.14.9.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.14.9.7.1" style="font-size:90%;">38.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.14.9.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.14.9.8.1" style="font-size:90%;">45.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.14.9.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.14.9.9.1" style="font-size:90%;">44.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.15.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.5.15.10.1" style="padding:0.9pt 7.0pt;">
<span class="ltx_text" id="S3.T1.9.5.15.10.1.1" style="font-size:90%;">EVA-CLIP </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.9.5.15.10.1.2.1" style="font-size:90%;">(</span>Sun et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.9.5.15.10.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib49" title="">2023b</a><span class="ltx_text" id="S3.T1.9.5.15.10.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.15.10.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.15.10.2.1" style="font-size:90%;">8B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.15.10.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.15.10.3.1" style="font-size:90%;">56.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.15.10.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.15.10.4.1" style="font-size:90%;">10.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.15.10.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.15.10.5.1" style="font-size:90%;">49.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.15.10.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.15.10.6.1" style="font-size:90%;">58.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.15.10.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.15.10.7.1" style="font-size:90%;">38.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.15.10.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.15.10.8.1" style="font-size:90%;">45.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.15.10.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.15.10.9.1" style="font-size:90%;">43.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.16.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.5.16.11.1" style="padding:0.9pt 7.0pt;">
<span class="ltx_ERROR undefined" id="S3.T1.9.5.16.11.1.1">\hdashline</span><span class="ltx_text" id="S3.T1.9.5.16.11.1.2" style="font-size:90%;">E5-V(Phi3.5-V) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.9.5.16.11.1.3.1" style="font-size:90%;">(</span>Jiang et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.9.5.16.11.1.4.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib22" title="">2024b</a><span class="ltx_text" id="S3.T1.9.5.16.11.1.5.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.16.11.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.16.11.2.1" style="font-size:90%;">4.2B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.16.11.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.16.11.3.1" style="font-size:90%;">39.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.16.11.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.16.11.4.1" style="font-size:90%;">9.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.16.11.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.16.11.5.1" style="font-size:90%;">38.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.16.11.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.16.11.6.1" style="font-size:90%;">57.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.16.11.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.16.11.7.1" style="font-size:90%;">33.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.16.11.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.16.11.8.1" style="font-size:90%;">31.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.16.11.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.16.11.9.1" style="font-size:90%;">36.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.17.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.5.17.12.1" style="padding:0.9pt 7.0pt;">
<span class="ltx_text" id="S3.T1.9.5.17.12.1.1" style="font-size:90%;">E5-V(LLaVA-1.6) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.9.5.17.12.1.2.1" style="font-size:90%;">(</span>Jiang et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.9.5.17.12.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib22" title="">2024b</a><span class="ltx_text" id="S3.T1.9.5.17.12.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.17.12.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.17.12.2.1" style="font-size:90%;">7B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.17.12.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.17.12.3.1" style="font-size:90%;">39.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.17.12.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.17.12.4.1" style="font-size:90%;">10.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.17.12.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.17.12.5.1" style="font-size:90%;">39.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.17.12.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.17.12.6.1" style="font-size:90%;">60.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.17.12.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.17.12.7.1" style="font-size:90%;">34.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.17.12.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.17.12.8.1" style="font-size:90%;">33.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.17.12.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.17.12.9.1" style="font-size:90%;">37.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.2.2" style="background-color:#EDEDED;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.2.2.1" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.6.2.2.1.1" style="font-size:90%;background-color:#EDEDED;">UniME<sup class="ltx_sup" id="S3.T1.6.2.2.1.1.1">†</sup>(Phi3.5-V)</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.2.2.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.6.2.2.2.1" style="font-size:90%;background-color:#EDEDED;">4.2B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.2.2.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.6.2.2.3.1" style="font-size:90%;background-color:#EDEDED;">42.5(<span class="ltx_text" id="S3.T1.6.2.2.3.1.1" style="color:#1AB333;">+3.4</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.2.2.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.6.2.2.4.1" style="font-size:90%;background-color:#EDEDED;">18.3(<span class="ltx_text" id="S3.T1.6.2.2.4.1.1" style="color:#1AB333;">+8.7</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.2.2.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.6.2.2.5.1" style="font-size:90%;background-color:#EDEDED;">40.5(<span class="ltx_text" id="S3.T1.6.2.2.5.1.1" style="color:#1AB333;">+2.5</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.2.2.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.6.2.2.6.1" style="font-size:90%;background-color:#EDEDED;">59.9(<span class="ltx_text" id="S3.T1.6.2.2.6.1.1" style="color:#1AB333;">+2.3</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.2.2.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.6.2.2.7.1" style="font-size:90%;background-color:#EDEDED;">36.0(<span class="ltx_text" id="S3.T1.6.2.2.7.1.1" style="color:#1AB333;">+2.9</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.2.2.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.6.2.2.8.1" style="font-size:90%;background-color:#EDEDED;">38.3(<span class="ltx_text" id="S3.T1.6.2.2.8.1.1" style="color:#1AB333;">+6.4</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.2.2.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.6.2.2.9.1" style="font-size:90%;background-color:#EDEDED;">40.3(<span class="ltx_text" id="S3.T1.6.2.2.9.1.1" style="color:#1AB333;">+4.2</span>)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.3.3" style="background-color:#EDEDED;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.7.3.3.1" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.7.3.3.1.1" style="font-size:90%;background-color:#EDEDED;">UniME<sup class="ltx_sup" id="S3.T1.7.3.3.1.1.1">†</sup>(LLaVA-1.6)</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.7.3.3.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.7.3.3.2.1" style="font-size:90%;background-color:#EDEDED;">7B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.3.3.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.7.3.3.3.1" style="font-size:90%;background-color:#EDEDED;">43.0(<span class="ltx_text" id="S3.T1.7.3.3.3.1.1" style="color:#1AB333;">+3.3</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.3.3.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.7.3.3.4.1" style="font-size:90%;background-color:#EDEDED;">17.7(<span class="ltx_text" id="S3.T1.7.3.3.4.1.1" style="color:#1AB333;">+6.9</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.3.3.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.7.3.3.5.1" style="font-size:90%;background-color:#EDEDED;">42.5(<span class="ltx_text" id="S3.T1.7.3.3.5.1.1" style="color:#1AB333;">+3.1</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.3.3.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.7.3.3.6.1" style="font-size:90%;background-color:#EDEDED;">63.2(<span class="ltx_text" id="S3.T1.7.3.3.6.1.1" style="color:#1AB333;">+3.0</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.3.3.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.7.3.3.7.1" style="font-size:90%;background-color:#EDEDED;">37.6(<span class="ltx_text" id="S3.T1.7.3.3.7.1.1" style="color:#1AB333;">+3.4</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.3.3.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.7.3.3.8.1" style="font-size:90%;background-color:#EDEDED;">38.6(<span class="ltx_text" id="S3.T1.7.3.3.8.1.1" style="color:#1AB333;">+5.2</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.3.3.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.7.3.3.9.1" style="font-size:90%;background-color:#EDEDED;">41.6(<span class="ltx_text" id="S3.T1.7.3.3.9.1.1" style="color:#1AB333;">+4.1</span>)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.18.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="9" id="S3.T1.9.5.18.13.1" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T1.9.5.18.13.1.1" style="font-size:90%;color:#000000;">Fine-tuning on MMEB</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.19.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.9.5.19.14.1" style="padding:0.9pt 7.0pt;">
<span class="ltx_text" id="S3.T1.9.5.19.14.1.1" style="font-size:90%;">CLIP(ViT-L) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.9.5.19.14.1.2.1" style="font-size:90%;">(</span>Jiang et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.9.5.19.14.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib23" title="">2025</a><span class="ltx_text" id="S3.T1.9.5.19.14.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.19.14.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.19.14.2.1" style="font-size:90%;">0.4B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.19.14.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.19.14.3.1" style="font-size:90%;">55.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.19.14.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.19.14.4.1" style="font-size:90%;">19.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.19.14.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.19.14.5.1" style="font-size:90%;">53.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.19.14.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.19.14.6.1" style="font-size:90%;">62.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.19.14.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.19.14.7.1" style="font-size:90%;">47.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.19.14.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.19.14.8.1" style="font-size:90%;">42.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.19.14.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.19.14.9.1" style="font-size:90%;">47.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.20.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.5.20.15.1" style="padding:0.9pt 7.0pt;">
<span class="ltx_ERROR undefined" id="S3.T1.9.5.20.15.1.1">\hdashline</span><span class="ltx_text" id="S3.T1.9.5.20.15.1.2" style="font-size:90%;">VLM2Vec(Phi3.5-V) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.9.5.20.15.1.3.1" style="font-size:90%;">(</span>Jiang et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.9.5.20.15.1.4.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib23" title="">2025</a><span class="ltx_text" id="S3.T1.9.5.20.15.1.5.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.20.15.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.20.15.2.1" style="font-size:90%;">4.2B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.20.15.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.20.15.3.1" style="font-size:90%;">54.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.20.15.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.20.15.4.1" style="font-size:90%;">54.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.20.15.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.20.15.5.1" style="font-size:90%;">62.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.20.15.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.20.15.6.1" style="font-size:90%;">79.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.20.15.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.20.15.7.1" style="font-size:90%;">66.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.20.15.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.20.15.8.1" style="font-size:90%;">52.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.20.15.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.20.15.9.1" style="font-size:90%;">62.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.21.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.5.21.16.1" style="padding:0.9pt 7.0pt;">
<span class="ltx_text" id="S3.T1.9.5.21.16.1.1" style="font-size:90%;">VLM2Vec(LLaVA-1.6) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.9.5.21.16.1.2.1" style="font-size:90%;">(</span>Jiang et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.9.5.21.16.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib23" title="">2025</a><span class="ltx_text" id="S3.T1.9.5.21.16.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.21.16.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.21.16.2.1" style="font-size:90%;">7B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.21.16.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.21.16.3.1" style="font-size:90%;">56.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.21.16.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.21.16.4.1" style="font-size:90%;">50.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.21.16.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.21.16.5.1" style="font-size:90%;">63.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.21.16.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.21.16.6.1" style="font-size:90%;">82.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.21.16.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.21.16.7.1" style="font-size:90%;">64.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.21.16.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.21.16.8.1" style="font-size:90%;">53.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.21.16.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.21.16.9.1" style="font-size:90%;">63.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.4.4" style="background-color:#EDEDED;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.4.4.1" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.8.4.4.1.1" style="font-size:90%;background-color:#EDEDED;">UniME<sup class="ltx_sup" id="S3.T1.8.4.4.1.1.1">‡</sup>(Phi3.5-V)</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.4.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.8.4.4.2.1" style="font-size:90%;background-color:#EDEDED;">4.2B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.4.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.8.4.4.3.1" style="font-size:90%;background-color:#EDEDED;">54.8(<span class="ltx_text" id="S3.T1.8.4.4.3.1.1" style="color:#1AB333;">+0.0</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.4.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.4.4.4.1" style="font-size:90%;background-color:#EDEDED;">55.9<span class="ltx_text ltx_font_medium" id="S3.T1.8.4.4.4.1.1">(<span class="ltx_text" id="S3.T1.8.4.4.4.1.1.1" style="color:#1AB333;">+1.0</span>)</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.4.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.8.4.4.5.1" style="font-size:90%;background-color:#EDEDED;">64.5(<span class="ltx_text" id="S3.T1.8.4.4.5.1.1" style="color:#1AB333;">+2.2</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.4.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.8.4.4.6.1" style="font-size:90%;background-color:#EDEDED;">81.8(<span class="ltx_text" id="S3.T1.8.4.4.6.1.1" style="color:#1AB333;">+2.3</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.4.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.8.4.4.7.1" style="font-size:90%;background-color:#EDEDED;">68.2(<span class="ltx_text" id="S3.T1.8.4.4.7.1.1" style="color:#1AB333;">+1.7</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.4.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.8.4.4.8.1" style="font-size:90%;background-color:#EDEDED;">52.7(<span class="ltx_text" id="S3.T1.8.4.4.8.1.1" style="color:#1AB333;">+0.7</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.4.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.8.4.4.9.1" style="font-size:90%;background-color:#EDEDED;">64.2(<span class="ltx_text" id="S3.T1.8.4.4.9.1.1" style="color:#1AB333;">+1.3</span>)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.5" style="background-color:#EDEDED;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.9.5.5.1" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.5.1.1" style="font-size:90%;background-color:#EDEDED;">UniME<sup class="ltx_sup" id="S3.T1.9.5.5.1.1.1">‡</sup>(LLaVA-1.6)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.5.5.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.5.2.1" style="font-size:90%;background-color:#EDEDED;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.5.5.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.5.3.1" style="font-size:90%;background-color:#EDEDED;">60.6<span class="ltx_text ltx_font_medium" id="S3.T1.9.5.5.3.1.1">(<span class="ltx_text" id="S3.T1.9.5.5.3.1.1.1" style="color:#1AB333;">+3.8</span>)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.5.5.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S3.T1.9.5.5.4.1" style="font-size:90%;background-color:#EDEDED;">52.9(<span class="ltx_text" id="S3.T1.9.5.5.4.1.1" style="color:#1AB333;">+2.5</span>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.5.5.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.5.5.1" style="font-size:90%;background-color:#EDEDED;">67.9<span class="ltx_text ltx_font_medium" id="S3.T1.9.5.5.5.1.1">(<span class="ltx_text" id="S3.T1.9.5.5.5.1.1.1" style="color:#1AB333;">+4.6</span>)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.5.5.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.5.6.1" style="font-size:90%;background-color:#EDEDED;">85.1<span class="ltx_text ltx_font_medium" id="S3.T1.9.5.5.6.1.1">(<span class="ltx_text" id="S3.T1.9.5.5.6.1.1.1" style="color:#1AB333;">+2.5</span>)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.5.5.7" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.5.7.1" style="font-size:90%;background-color:#EDEDED;">68.4<span class="ltx_text ltx_font_medium" id="S3.T1.9.5.5.7.1.1">(<span class="ltx_text" id="S3.T1.9.5.5.7.1.1.1" style="color:#1AB333;">+3.5</span>)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.5.5.8" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.5.8.1" style="font-size:90%;background-color:#EDEDED;">57.9<span class="ltx_text ltx_font_medium" id="S3.T1.9.5.5.8.1.1">(<span class="ltx_text" id="S3.T1.9.5.5.8.1.1.1" style="color:#1AB333;">+4.0</span>)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.5.5.9" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.5.9.1" style="font-size:90%;background-color:#EDEDED;">66.6<span class="ltx_text ltx_font_medium" id="S3.T1.9.5.5.9.1.1">(<span class="ltx_text" id="S3.T1.9.5.5.9.1.1.1" style="color:#1AB333;">+3.3</span>)</span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents the results of the Massive Multimodal Embedding Benchmark (MMEB).  The benchmark consists of in-distribution (IND) and out-of-distribution (OOD) datasets, evaluating the performance of different models on various multimodal tasks. The scores reported are the average Precision@1, which measures the proportion of correctly retrieved items ranked first, for each dataset.  UniME's performance is shown with and without the hard negative enhanced instruction tuning stage.  Bold values indicate the best-performing models for each task.
> <details>
> <summary>read the caption</summary>
> Table 1. Results on the MMEB benchmark. IND represents the in-distribution dataset, and OOD represents the out-of-distribution dataset. The reported scores are the average Precision@1 over the corresponding datasets. The best results are marked in bold. †: UniME with textual discrimination distillation only. ‡: UniME with both textual discrimination distillation and hard negative enhanced instruction tuning.
> </details>





### In-depth insights


#### MLLM's Barriers
MLLMs face several barriers. **Data scarcity** is a significant hurdle, limiting the models' ability to generalize across diverse tasks. The **high computational cost** for training and inference makes it difficult for researchers and practitioners with limited resources to engage in developing or using MLLMs. **Modality alignment** is another challenge; effectively integrating and processing information from different modalities (vision, language, audio) requires sophisticated techniques. MLLMs often exhibit **hallucination issues**, generating content that is factually incorrect or inconsistent with the input data, potentially undermining their reliability. Furthermore, **robustness** is a concern, as MLLMs can be sensitive to adversarial attacks or variations in input data, leading to performance degradation. Lastly, the **lack of interpretability** in MLLMs makes it challenging to understand their decision-making processes, hindering trust and accountability.

#### UniME Framework
The UniME framework is a **novel approach** designed to enhance multimodal embedding learning, particularly leveraging Multimodal Large Language Models (MLLMs). It seems to address limitations of existing methods like CLIP by incorporating **textual discriminative knowledge distillation** and **hard negative enhanced instruction tuning**. The initial stage focuses on improving the language component of MLLMs, while the subsequent stage refines discriminative representation learning, **mitigating false negatives**. This multi-faceted strategy aims to learn universal representations applicable to various downstream tasks, promising improved performance and compositional capabilities.

#### Distillation Stage
Knowledge distillation is a pivotal technique for enhancing smaller models by transferring knowledge from larger, more complex ones. The **distillation stage** is crucial, focusing on aligning the student model's output with the teacher model's, often using methods like minimizing KL divergence. **Effective distillation** involves careful selection of both teacher and student architectures, as well as designing appropriate loss functions and training strategies. The quality of the teacher model directly impacts the student's performance, hence, choosing a pre-trained teacher with strong generalization is critical. **Regularization techniques** can also be incorporated to prevent overfitting and improve the student's ability to generalize to unseen data. This stage is crucial for effective learning.

#### Hard Negatives
Hard negative mining is a critical aspect of contrastive learning, particularly in multimodal settings. The core idea revolves around **identifying challenging negative samples** within a batch, which are similar to the query but have different labels. These **'hard' negatives contribute significantly to the learning process** by pushing the model to refine its ability to discriminate between subtle differences. Efficiently sampling these negatives is key; a naive approach can lead to computational bottlenecks. Furthermore, **careful consideration must be given to filtering out false negatives**, as their inclusion can degrade performance. The success of hard negative mining is highly dependent on the quality of the features and the similarity metric used to identify challenging samples. By focusing on these difficult cases, the model learns more robust and discriminative embeddings, improving performance on downstream tasks.

#### Future Scaling
In considering the future scaling of multimodal embedding learning, several avenues emerge. **Expanding the diversity and volume of training data** is paramount, incorporating more modalities beyond just image and text, such as audio, video, and 3D data. **Advancements in model architecture** will be crucial, moving beyond current MLLMs to designs that can handle more complex relationships between modalities efficiently. **Exploration of different training paradigms**, such as self-supervised learning and continual learning, could unlock greater generalization and adaptability. Furthermore, **addressing the computational challenges** of scaling these models, through techniques like model parallelism and quantization, will be essential for broader accessibility and deployment. **Focusing on interpretability and explainability** of multimodal embeddings will become increasingly important, ensuring that these models are not only powerful but also transparent and trustworthy.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.16.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.16.12.13.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T2.16.12.13.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S3.T2.16.12.13.1.1.1" style="font-size:90%;">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.16.12.13.1.2" rowspan="3"><span class="ltx_text ltx_font_bold" id="S3.T2.16.12.13.1.2.1" style="font-size:90%;">#Parameters</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S3.T2.16.12.13.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.16.12.13.1.3.1" style="font-size:90%;">Short Caption Retrieval</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S3.T2.16.12.13.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.16.12.13.1.4.1" style="font-size:90%;">Long Caption Retrieval</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T2.16.12.13.1.5"><span class="ltx_text ltx_font_bold" id="S3.T2.16.12.13.1.5.1" style="font-size:90%;">Compositional Retrieval</span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.16.12.14.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S3.T2.16.12.14.2.1"><span class="ltx_text" id="S3.T2.16.12.14.2.1.1" style="font-size:90%;">Flickr30K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S3.T2.16.12.14.2.2"><span class="ltx_text" id="S3.T2.16.12.14.2.2.1" style="font-size:90%;">COCO</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S3.T2.16.12.14.2.3"><span class="ltx_text" id="S3.T2.16.12.14.2.3.1" style="font-size:90%;">ShareGPT4V</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S3.T2.16.12.14.2.4"><span class="ltx_text" id="S3.T2.16.12.14.2.4.1" style="font-size:90%;">Urban1K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="3" id="S3.T2.16.12.14.2.5"><span class="ltx_text" id="S3.T2.16.12.14.2.5.1" style="font-size:90%;">SugarCrepe</span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.12.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.5.1.1.1"><math alttext="q^{i}\rightarrow c^{t}" class="ltx_Math" display="inline" id="S3.T2.5.1.1.1.m1.1"><semantics id="S3.T2.5.1.1.1.m1.1a"><mrow id="S3.T2.5.1.1.1.m1.1.1" xref="S3.T2.5.1.1.1.m1.1.1.cmml"><msup id="S3.T2.5.1.1.1.m1.1.1.2" xref="S3.T2.5.1.1.1.m1.1.1.2.cmml"><mi id="S3.T2.5.1.1.1.m1.1.1.2.2" mathsize="90%" xref="S3.T2.5.1.1.1.m1.1.1.2.2.cmml">q</mi><mi id="S3.T2.5.1.1.1.m1.1.1.2.3" mathsize="90%" xref="S3.T2.5.1.1.1.m1.1.1.2.3.cmml">i</mi></msup><mo id="S3.T2.5.1.1.1.m1.1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.5.1.1.1.m1.1.1.1.cmml">→</mo><msup id="S3.T2.5.1.1.1.m1.1.1.3" xref="S3.T2.5.1.1.1.m1.1.1.3.cmml"><mi id="S3.T2.5.1.1.1.m1.1.1.3.2" mathsize="90%" xref="S3.T2.5.1.1.1.m1.1.1.3.2.cmml">c</mi><mi id="S3.T2.5.1.1.1.m1.1.1.3.3" mathsize="90%" xref="S3.T2.5.1.1.1.m1.1.1.3.3.cmml">t</mi></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.5.1.1.1.m1.1b"><apply id="S3.T2.5.1.1.1.m1.1.1.cmml" xref="S3.T2.5.1.1.1.m1.1.1"><ci id="S3.T2.5.1.1.1.m1.1.1.1.cmml" xref="S3.T2.5.1.1.1.m1.1.1.1">→</ci><apply id="S3.T2.5.1.1.1.m1.1.1.2.cmml" xref="S3.T2.5.1.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.5.1.1.1.m1.1.1.2.1.cmml" xref="S3.T2.5.1.1.1.m1.1.1.2">superscript</csymbol><ci id="S3.T2.5.1.1.1.m1.1.1.2.2.cmml" xref="S3.T2.5.1.1.1.m1.1.1.2.2">𝑞</ci><ci id="S3.T2.5.1.1.1.m1.1.1.2.3.cmml" xref="S3.T2.5.1.1.1.m1.1.1.2.3">𝑖</ci></apply><apply id="S3.T2.5.1.1.1.m1.1.1.3.cmml" xref="S3.T2.5.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T2.5.1.1.1.m1.1.1.3.1.cmml" xref="S3.T2.5.1.1.1.m1.1.1.3">superscript</csymbol><ci id="S3.T2.5.1.1.1.m1.1.1.3.2.cmml" xref="S3.T2.5.1.1.1.m1.1.1.3.2">𝑐</ci><ci id="S3.T2.5.1.1.1.m1.1.1.3.3.cmml" xref="S3.T2.5.1.1.1.m1.1.1.3.3">𝑡</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.1.1.1.m1.1c">q^{i}\rightarrow c^{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.1.1.1.m1.1d">italic_q start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT → italic_c start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.6.2.2.2"><math alttext="q^{t}\rightarrow c^{i}" class="ltx_Math" display="inline" id="S3.T2.6.2.2.2.m1.1"><semantics id="S3.T2.6.2.2.2.m1.1a"><mrow id="S3.T2.6.2.2.2.m1.1.1" xref="S3.T2.6.2.2.2.m1.1.1.cmml"><msup id="S3.T2.6.2.2.2.m1.1.1.2" xref="S3.T2.6.2.2.2.m1.1.1.2.cmml"><mi id="S3.T2.6.2.2.2.m1.1.1.2.2" mathsize="90%" xref="S3.T2.6.2.2.2.m1.1.1.2.2.cmml">q</mi><mi id="S3.T2.6.2.2.2.m1.1.1.2.3" mathsize="90%" xref="S3.T2.6.2.2.2.m1.1.1.2.3.cmml">t</mi></msup><mo id="S3.T2.6.2.2.2.m1.1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.6.2.2.2.m1.1.1.1.cmml">→</mo><msup id="S3.T2.6.2.2.2.m1.1.1.3" xref="S3.T2.6.2.2.2.m1.1.1.3.cmml"><mi id="S3.T2.6.2.2.2.m1.1.1.3.2" mathsize="90%" xref="S3.T2.6.2.2.2.m1.1.1.3.2.cmml">c</mi><mi id="S3.T2.6.2.2.2.m1.1.1.3.3" mathsize="90%" xref="S3.T2.6.2.2.2.m1.1.1.3.3.cmml">i</mi></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.6.2.2.2.m1.1b"><apply id="S3.T2.6.2.2.2.m1.1.1.cmml" xref="S3.T2.6.2.2.2.m1.1.1"><ci id="S3.T2.6.2.2.2.m1.1.1.1.cmml" xref="S3.T2.6.2.2.2.m1.1.1.1">→</ci><apply id="S3.T2.6.2.2.2.m1.1.1.2.cmml" xref="S3.T2.6.2.2.2.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.6.2.2.2.m1.1.1.2.1.cmml" xref="S3.T2.6.2.2.2.m1.1.1.2">superscript</csymbol><ci id="S3.T2.6.2.2.2.m1.1.1.2.2.cmml" xref="S3.T2.6.2.2.2.m1.1.1.2.2">𝑞</ci><ci id="S3.T2.6.2.2.2.m1.1.1.2.3.cmml" xref="S3.T2.6.2.2.2.m1.1.1.2.3">𝑡</ci></apply><apply id="S3.T2.6.2.2.2.m1.1.1.3.cmml" xref="S3.T2.6.2.2.2.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T2.6.2.2.2.m1.1.1.3.1.cmml" xref="S3.T2.6.2.2.2.m1.1.1.3">superscript</csymbol><ci id="S3.T2.6.2.2.2.m1.1.1.3.2.cmml" xref="S3.T2.6.2.2.2.m1.1.1.3.2">𝑐</ci><ci id="S3.T2.6.2.2.2.m1.1.1.3.3.cmml" xref="S3.T2.6.2.2.2.m1.1.1.3.3">𝑖</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.2.2.2.m1.1c">q^{t}\rightarrow c^{i}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.2.2.2.m1.1d">italic_q start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT → italic_c start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.7.3.3.3"><math alttext="q^{i}\rightarrow c^{t}" class="ltx_Math" display="inline" id="S3.T2.7.3.3.3.m1.1"><semantics id="S3.T2.7.3.3.3.m1.1a"><mrow id="S3.T2.7.3.3.3.m1.1.1" xref="S3.T2.7.3.3.3.m1.1.1.cmml"><msup id="S3.T2.7.3.3.3.m1.1.1.2" xref="S3.T2.7.3.3.3.m1.1.1.2.cmml"><mi id="S3.T2.7.3.3.3.m1.1.1.2.2" mathsize="90%" xref="S3.T2.7.3.3.3.m1.1.1.2.2.cmml">q</mi><mi id="S3.T2.7.3.3.3.m1.1.1.2.3" mathsize="90%" xref="S3.T2.7.3.3.3.m1.1.1.2.3.cmml">i</mi></msup><mo id="S3.T2.7.3.3.3.m1.1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.7.3.3.3.m1.1.1.1.cmml">→</mo><msup id="S3.T2.7.3.3.3.m1.1.1.3" xref="S3.T2.7.3.3.3.m1.1.1.3.cmml"><mi id="S3.T2.7.3.3.3.m1.1.1.3.2" mathsize="90%" xref="S3.T2.7.3.3.3.m1.1.1.3.2.cmml">c</mi><mi id="S3.T2.7.3.3.3.m1.1.1.3.3" mathsize="90%" xref="S3.T2.7.3.3.3.m1.1.1.3.3.cmml">t</mi></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.7.3.3.3.m1.1b"><apply id="S3.T2.7.3.3.3.m1.1.1.cmml" xref="S3.T2.7.3.3.3.m1.1.1"><ci id="S3.T2.7.3.3.3.m1.1.1.1.cmml" xref="S3.T2.7.3.3.3.m1.1.1.1">→</ci><apply id="S3.T2.7.3.3.3.m1.1.1.2.cmml" xref="S3.T2.7.3.3.3.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.7.3.3.3.m1.1.1.2.1.cmml" xref="S3.T2.7.3.3.3.m1.1.1.2">superscript</csymbol><ci id="S3.T2.7.3.3.3.m1.1.1.2.2.cmml" xref="S3.T2.7.3.3.3.m1.1.1.2.2">𝑞</ci><ci id="S3.T2.7.3.3.3.m1.1.1.2.3.cmml" xref="S3.T2.7.3.3.3.m1.1.1.2.3">𝑖</ci></apply><apply id="S3.T2.7.3.3.3.m1.1.1.3.cmml" xref="S3.T2.7.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T2.7.3.3.3.m1.1.1.3.1.cmml" xref="S3.T2.7.3.3.3.m1.1.1.3">superscript</csymbol><ci id="S3.T2.7.3.3.3.m1.1.1.3.2.cmml" xref="S3.T2.7.3.3.3.m1.1.1.3.2">𝑐</ci><ci id="S3.T2.7.3.3.3.m1.1.1.3.3.cmml" xref="S3.T2.7.3.3.3.m1.1.1.3.3">𝑡</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.3.3.3.m1.1c">q^{i}\rightarrow c^{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.3.3.3.m1.1d">italic_q start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT → italic_c start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.8.4.4.4"><math alttext="q^{t}\rightarrow c^{i}" class="ltx_Math" display="inline" id="S3.T2.8.4.4.4.m1.1"><semantics id="S3.T2.8.4.4.4.m1.1a"><mrow id="S3.T2.8.4.4.4.m1.1.1" xref="S3.T2.8.4.4.4.m1.1.1.cmml"><msup id="S3.T2.8.4.4.4.m1.1.1.2" xref="S3.T2.8.4.4.4.m1.1.1.2.cmml"><mi id="S3.T2.8.4.4.4.m1.1.1.2.2" mathsize="90%" xref="S3.T2.8.4.4.4.m1.1.1.2.2.cmml">q</mi><mi id="S3.T2.8.4.4.4.m1.1.1.2.3" mathsize="90%" xref="S3.T2.8.4.4.4.m1.1.1.2.3.cmml">t</mi></msup><mo id="S3.T2.8.4.4.4.m1.1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.8.4.4.4.m1.1.1.1.cmml">→</mo><msup id="S3.T2.8.4.4.4.m1.1.1.3" xref="S3.T2.8.4.4.4.m1.1.1.3.cmml"><mi id="S3.T2.8.4.4.4.m1.1.1.3.2" mathsize="90%" xref="S3.T2.8.4.4.4.m1.1.1.3.2.cmml">c</mi><mi id="S3.T2.8.4.4.4.m1.1.1.3.3" mathsize="90%" xref="S3.T2.8.4.4.4.m1.1.1.3.3.cmml">i</mi></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.8.4.4.4.m1.1b"><apply id="S3.T2.8.4.4.4.m1.1.1.cmml" xref="S3.T2.8.4.4.4.m1.1.1"><ci id="S3.T2.8.4.4.4.m1.1.1.1.cmml" xref="S3.T2.8.4.4.4.m1.1.1.1">→</ci><apply id="S3.T2.8.4.4.4.m1.1.1.2.cmml" xref="S3.T2.8.4.4.4.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.8.4.4.4.m1.1.1.2.1.cmml" xref="S3.T2.8.4.4.4.m1.1.1.2">superscript</csymbol><ci id="S3.T2.8.4.4.4.m1.1.1.2.2.cmml" xref="S3.T2.8.4.4.4.m1.1.1.2.2">𝑞</ci><ci id="S3.T2.8.4.4.4.m1.1.1.2.3.cmml" xref="S3.T2.8.4.4.4.m1.1.1.2.3">𝑡</ci></apply><apply id="S3.T2.8.4.4.4.m1.1.1.3.cmml" xref="S3.T2.8.4.4.4.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T2.8.4.4.4.m1.1.1.3.1.cmml" xref="S3.T2.8.4.4.4.m1.1.1.3">superscript</csymbol><ci id="S3.T2.8.4.4.4.m1.1.1.3.2.cmml" xref="S3.T2.8.4.4.4.m1.1.1.3.2">𝑐</ci><ci id="S3.T2.8.4.4.4.m1.1.1.3.3.cmml" xref="S3.T2.8.4.4.4.m1.1.1.3.3">𝑖</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.4.4.4.m1.1c">q^{t}\rightarrow c^{i}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.4.4.4.m1.1d">italic_q start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT → italic_c start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.9.5.5.5"><math alttext="q^{i}\rightarrow c^{t}" class="ltx_Math" display="inline" id="S3.T2.9.5.5.5.m1.1"><semantics id="S3.T2.9.5.5.5.m1.1a"><mrow id="S3.T2.9.5.5.5.m1.1.1" xref="S3.T2.9.5.5.5.m1.1.1.cmml"><msup id="S3.T2.9.5.5.5.m1.1.1.2" xref="S3.T2.9.5.5.5.m1.1.1.2.cmml"><mi id="S3.T2.9.5.5.5.m1.1.1.2.2" mathsize="90%" xref="S3.T2.9.5.5.5.m1.1.1.2.2.cmml">q</mi><mi id="S3.T2.9.5.5.5.m1.1.1.2.3" mathsize="90%" xref="S3.T2.9.5.5.5.m1.1.1.2.3.cmml">i</mi></msup><mo id="S3.T2.9.5.5.5.m1.1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.9.5.5.5.m1.1.1.1.cmml">→</mo><msup id="S3.T2.9.5.5.5.m1.1.1.3" xref="S3.T2.9.5.5.5.m1.1.1.3.cmml"><mi id="S3.T2.9.5.5.5.m1.1.1.3.2" mathsize="90%" xref="S3.T2.9.5.5.5.m1.1.1.3.2.cmml">c</mi><mi id="S3.T2.9.5.5.5.m1.1.1.3.3" mathsize="90%" xref="S3.T2.9.5.5.5.m1.1.1.3.3.cmml">t</mi></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.9.5.5.5.m1.1b"><apply id="S3.T2.9.5.5.5.m1.1.1.cmml" xref="S3.T2.9.5.5.5.m1.1.1"><ci id="S3.T2.9.5.5.5.m1.1.1.1.cmml" xref="S3.T2.9.5.5.5.m1.1.1.1">→</ci><apply id="S3.T2.9.5.5.5.m1.1.1.2.cmml" xref="S3.T2.9.5.5.5.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.9.5.5.5.m1.1.1.2.1.cmml" xref="S3.T2.9.5.5.5.m1.1.1.2">superscript</csymbol><ci id="S3.T2.9.5.5.5.m1.1.1.2.2.cmml" xref="S3.T2.9.5.5.5.m1.1.1.2.2">𝑞</ci><ci id="S3.T2.9.5.5.5.m1.1.1.2.3.cmml" xref="S3.T2.9.5.5.5.m1.1.1.2.3">𝑖</ci></apply><apply id="S3.T2.9.5.5.5.m1.1.1.3.cmml" xref="S3.T2.9.5.5.5.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T2.9.5.5.5.m1.1.1.3.1.cmml" xref="S3.T2.9.5.5.5.m1.1.1.3">superscript</csymbol><ci id="S3.T2.9.5.5.5.m1.1.1.3.2.cmml" xref="S3.T2.9.5.5.5.m1.1.1.3.2">𝑐</ci><ci id="S3.T2.9.5.5.5.m1.1.1.3.3.cmml" xref="S3.T2.9.5.5.5.m1.1.1.3.3">𝑡</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.5.5.5.m1.1c">q^{i}\rightarrow c^{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.5.5.5.m1.1d">italic_q start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT → italic_c start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.10.6.6.6"><math alttext="q^{t}\rightarrow c^{i}" class="ltx_Math" display="inline" id="S3.T2.10.6.6.6.m1.1"><semantics id="S3.T2.10.6.6.6.m1.1a"><mrow id="S3.T2.10.6.6.6.m1.1.1" xref="S3.T2.10.6.6.6.m1.1.1.cmml"><msup id="S3.T2.10.6.6.6.m1.1.1.2" xref="S3.T2.10.6.6.6.m1.1.1.2.cmml"><mi id="S3.T2.10.6.6.6.m1.1.1.2.2" mathsize="90%" xref="S3.T2.10.6.6.6.m1.1.1.2.2.cmml">q</mi><mi id="S3.T2.10.6.6.6.m1.1.1.2.3" mathsize="90%" xref="S3.T2.10.6.6.6.m1.1.1.2.3.cmml">t</mi></msup><mo id="S3.T2.10.6.6.6.m1.1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.10.6.6.6.m1.1.1.1.cmml">→</mo><msup id="S3.T2.10.6.6.6.m1.1.1.3" xref="S3.T2.10.6.6.6.m1.1.1.3.cmml"><mi id="S3.T2.10.6.6.6.m1.1.1.3.2" mathsize="90%" xref="S3.T2.10.6.6.6.m1.1.1.3.2.cmml">c</mi><mi id="S3.T2.10.6.6.6.m1.1.1.3.3" mathsize="90%" xref="S3.T2.10.6.6.6.m1.1.1.3.3.cmml">i</mi></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.10.6.6.6.m1.1b"><apply id="S3.T2.10.6.6.6.m1.1.1.cmml" xref="S3.T2.10.6.6.6.m1.1.1"><ci id="S3.T2.10.6.6.6.m1.1.1.1.cmml" xref="S3.T2.10.6.6.6.m1.1.1.1">→</ci><apply id="S3.T2.10.6.6.6.m1.1.1.2.cmml" xref="S3.T2.10.6.6.6.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.10.6.6.6.m1.1.1.2.1.cmml" xref="S3.T2.10.6.6.6.m1.1.1.2">superscript</csymbol><ci id="S3.T2.10.6.6.6.m1.1.1.2.2.cmml" xref="S3.T2.10.6.6.6.m1.1.1.2.2">𝑞</ci><ci id="S3.T2.10.6.6.6.m1.1.1.2.3.cmml" xref="S3.T2.10.6.6.6.m1.1.1.2.3">𝑡</ci></apply><apply id="S3.T2.10.6.6.6.m1.1.1.3.cmml" xref="S3.T2.10.6.6.6.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T2.10.6.6.6.m1.1.1.3.1.cmml" xref="S3.T2.10.6.6.6.m1.1.1.3">superscript</csymbol><ci id="S3.T2.10.6.6.6.m1.1.1.3.2.cmml" xref="S3.T2.10.6.6.6.m1.1.1.3.2">𝑐</ci><ci id="S3.T2.10.6.6.6.m1.1.1.3.3.cmml" xref="S3.T2.10.6.6.6.m1.1.1.3.3">𝑖</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.10.6.6.6.m1.1c">q^{t}\rightarrow c^{i}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.10.6.6.6.m1.1d">italic_q start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT → italic_c start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.11.7.7.7"><math alttext="q^{i}\rightarrow c^{t}" class="ltx_Math" display="inline" id="S3.T2.11.7.7.7.m1.1"><semantics id="S3.T2.11.7.7.7.m1.1a"><mrow id="S3.T2.11.7.7.7.m1.1.1" xref="S3.T2.11.7.7.7.m1.1.1.cmml"><msup id="S3.T2.11.7.7.7.m1.1.1.2" xref="S3.T2.11.7.7.7.m1.1.1.2.cmml"><mi id="S3.T2.11.7.7.7.m1.1.1.2.2" mathsize="90%" xref="S3.T2.11.7.7.7.m1.1.1.2.2.cmml">q</mi><mi id="S3.T2.11.7.7.7.m1.1.1.2.3" mathsize="90%" xref="S3.T2.11.7.7.7.m1.1.1.2.3.cmml">i</mi></msup><mo id="S3.T2.11.7.7.7.m1.1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.11.7.7.7.m1.1.1.1.cmml">→</mo><msup id="S3.T2.11.7.7.7.m1.1.1.3" xref="S3.T2.11.7.7.7.m1.1.1.3.cmml"><mi id="S3.T2.11.7.7.7.m1.1.1.3.2" mathsize="90%" xref="S3.T2.11.7.7.7.m1.1.1.3.2.cmml">c</mi><mi id="S3.T2.11.7.7.7.m1.1.1.3.3" mathsize="90%" xref="S3.T2.11.7.7.7.m1.1.1.3.3.cmml">t</mi></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.11.7.7.7.m1.1b"><apply id="S3.T2.11.7.7.7.m1.1.1.cmml" xref="S3.T2.11.7.7.7.m1.1.1"><ci id="S3.T2.11.7.7.7.m1.1.1.1.cmml" xref="S3.T2.11.7.7.7.m1.1.1.1">→</ci><apply id="S3.T2.11.7.7.7.m1.1.1.2.cmml" xref="S3.T2.11.7.7.7.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.11.7.7.7.m1.1.1.2.1.cmml" xref="S3.T2.11.7.7.7.m1.1.1.2">superscript</csymbol><ci id="S3.T2.11.7.7.7.m1.1.1.2.2.cmml" xref="S3.T2.11.7.7.7.m1.1.1.2.2">𝑞</ci><ci id="S3.T2.11.7.7.7.m1.1.1.2.3.cmml" xref="S3.T2.11.7.7.7.m1.1.1.2.3">𝑖</ci></apply><apply id="S3.T2.11.7.7.7.m1.1.1.3.cmml" xref="S3.T2.11.7.7.7.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T2.11.7.7.7.m1.1.1.3.1.cmml" xref="S3.T2.11.7.7.7.m1.1.1.3">superscript</csymbol><ci id="S3.T2.11.7.7.7.m1.1.1.3.2.cmml" xref="S3.T2.11.7.7.7.m1.1.1.3.2">𝑐</ci><ci id="S3.T2.11.7.7.7.m1.1.1.3.3.cmml" xref="S3.T2.11.7.7.7.m1.1.1.3.3">𝑡</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.11.7.7.7.m1.1c">q^{i}\rightarrow c^{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.11.7.7.7.m1.1d">italic_q start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT → italic_c start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.12.8.8.8"><math alttext="q^{t}\rightarrow c^{i}" class="ltx_Math" display="inline" id="S3.T2.12.8.8.8.m1.1"><semantics id="S3.T2.12.8.8.8.m1.1a"><mrow id="S3.T2.12.8.8.8.m1.1.1" xref="S3.T2.12.8.8.8.m1.1.1.cmml"><msup id="S3.T2.12.8.8.8.m1.1.1.2" xref="S3.T2.12.8.8.8.m1.1.1.2.cmml"><mi id="S3.T2.12.8.8.8.m1.1.1.2.2" mathsize="90%" xref="S3.T2.12.8.8.8.m1.1.1.2.2.cmml">q</mi><mi id="S3.T2.12.8.8.8.m1.1.1.2.3" mathsize="90%" xref="S3.T2.12.8.8.8.m1.1.1.2.3.cmml">t</mi></msup><mo id="S3.T2.12.8.8.8.m1.1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.12.8.8.8.m1.1.1.1.cmml">→</mo><msup id="S3.T2.12.8.8.8.m1.1.1.3" xref="S3.T2.12.8.8.8.m1.1.1.3.cmml"><mi id="S3.T2.12.8.8.8.m1.1.1.3.2" mathsize="90%" xref="S3.T2.12.8.8.8.m1.1.1.3.2.cmml">c</mi><mi id="S3.T2.12.8.8.8.m1.1.1.3.3" mathsize="90%" xref="S3.T2.12.8.8.8.m1.1.1.3.3.cmml">i</mi></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.12.8.8.8.m1.1b"><apply id="S3.T2.12.8.8.8.m1.1.1.cmml" xref="S3.T2.12.8.8.8.m1.1.1"><ci id="S3.T2.12.8.8.8.m1.1.1.1.cmml" xref="S3.T2.12.8.8.8.m1.1.1.1">→</ci><apply id="S3.T2.12.8.8.8.m1.1.1.2.cmml" xref="S3.T2.12.8.8.8.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.12.8.8.8.m1.1.1.2.1.cmml" xref="S3.T2.12.8.8.8.m1.1.1.2">superscript</csymbol><ci id="S3.T2.12.8.8.8.m1.1.1.2.2.cmml" xref="S3.T2.12.8.8.8.m1.1.1.2.2">𝑞</ci><ci id="S3.T2.12.8.8.8.m1.1.1.2.3.cmml" xref="S3.T2.12.8.8.8.m1.1.1.2.3">𝑡</ci></apply><apply id="S3.T2.12.8.8.8.m1.1.1.3.cmml" xref="S3.T2.12.8.8.8.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T2.12.8.8.8.m1.1.1.3.1.cmml" xref="S3.T2.12.8.8.8.m1.1.1.3">superscript</csymbol><ci id="S3.T2.12.8.8.8.m1.1.1.3.2.cmml" xref="S3.T2.12.8.8.8.m1.1.1.3.2">𝑐</ci><ci id="S3.T2.12.8.8.8.m1.1.1.3.3.cmml" xref="S3.T2.12.8.8.8.m1.1.1.3.3">𝑖</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.12.8.8.8.m1.1c">q^{t}\rightarrow c^{i}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.12.8.8.8.m1.1d">italic_q start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT → italic_c start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.12.8.8.9"><span class="ltx_text" id="S3.T2.12.8.8.9.1" style="font-size:90%;">Replace</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.12.8.8.10"><span class="ltx_text" id="S3.T2.12.8.8.10.1" style="font-size:90%;">Swap</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.12.8.8.11"><span class="ltx_text" id="S3.T2.12.8.8.11.1" style="font-size:90%;">Add</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.16.12.15.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.16.12.15.1.1">
<span class="ltx_text" id="S3.T2.16.12.15.1.1.1" style="font-size:90%;">OpenCLIP(ViT-L) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.16.12.15.1.1.2.1" style="font-size:90%;">(</span>Radford et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T2.16.12.15.1.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib43" title="">2021</a><span class="ltx_text" id="S3.T2.16.12.15.1.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.16.12.15.1.2"><span class="ltx_text" id="S3.T2.16.12.15.1.2.1" style="font-size:90%;">0.4B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.16.12.15.1.3"><span class="ltx_text" id="S3.T2.16.12.15.1.3.1" style="font-size:90%;">67.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.16.12.15.1.4"><span class="ltx_text" id="S3.T2.16.12.15.1.4.1" style="font-size:90%;">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.16.12.15.1.5"><span class="ltx_text" id="S3.T2.16.12.15.1.5.1" style="font-size:90%;">37.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.16.12.15.1.6"><span class="ltx_text" id="S3.T2.16.12.15.1.6.1" style="font-size:90%;">58.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.16.12.15.1.7"><span class="ltx_text" id="S3.T2.16.12.15.1.7.1" style="font-size:90%;">81.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.16.12.15.1.8"><span class="ltx_text" id="S3.T2.16.12.15.1.8.1" style="font-size:90%;">84.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.16.12.15.1.9"><span class="ltx_text" id="S3.T2.16.12.15.1.9.1" style="font-size:90%;">47.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.16.12.15.1.10"><span class="ltx_text" id="S3.T2.16.12.15.1.10.1" style="font-size:90%;">47.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.16.12.15.1.11"><span class="ltx_text" id="S3.T2.16.12.15.1.11.1" style="font-size:90%;">79.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.16.12.15.1.12"><span class="ltx_text" id="S3.T2.16.12.15.1.12.1" style="font-size:90%;">62.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.16.12.15.1.13"><span class="ltx_text" id="S3.T2.16.12.15.1.13.1" style="font-size:90%;">74.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.16.12.16.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.16.12.16.2.1">
<span class="ltx_text" id="S3.T2.16.12.16.2.1.1" style="font-size:90%;">CLIP(ViT-BigG/14) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.16.12.16.2.1.2.1" style="font-size:90%;">(</span>Cherti et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T2.16.12.16.2.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib9" title="">2022</a><span class="ltx_text" id="S3.T2.16.12.16.2.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.16.2.2"><span class="ltx_text" id="S3.T2.16.12.16.2.2.1" style="font-size:90%;">2.5B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.16.2.3"><span class="ltx_text" id="S3.T2.16.12.16.2.3.1" style="font-size:90%;">79.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.16.2.4"><span class="ltx_text" id="S3.T2.16.12.16.2.4.1" style="font-size:90%;">92.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.16.2.5"><span class="ltx_text" id="S3.T2.16.12.16.2.5.1" style="font-size:90%;">51.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.16.2.6"><span class="ltx_text" id="S3.T2.16.12.16.2.6.1" style="font-size:90%;">67.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.16.2.7"><span class="ltx_text" id="S3.T2.16.12.16.2.7.1" style="font-size:90%;">90.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.16.2.8"><span class="ltx_text" id="S3.T2.16.12.16.2.8.1" style="font-size:90%;">93.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.16.2.9"><span class="ltx_text" id="S3.T2.16.12.16.2.9.1" style="font-size:90%;">77.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.16.2.10"><span class="ltx_text" id="S3.T2.16.12.16.2.10.1" style="font-size:90%;">80.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.16.2.11"><span class="ltx_text" id="S3.T2.16.12.16.2.11.1" style="font-size:90%;">86.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.16.2.12"><span class="ltx_text" id="S3.T2.16.12.16.2.12.1" style="font-size:90%;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.16.2.13"><span class="ltx_text" id="S3.T2.16.12.16.2.13.1" style="font-size:90%;">88.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.16.12.17.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.16.12.17.3.1">
<span class="ltx_text" id="S3.T2.16.12.17.3.1.1" style="font-size:90%;">EVA-CLIP </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.16.12.17.3.1.2.1" style="font-size:90%;">(</span>Sun et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T2.16.12.17.3.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib49" title="">2023b</a><span class="ltx_text" id="S3.T2.16.12.17.3.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.17.3.2"><span class="ltx_text" id="S3.T2.16.12.17.3.2.1" style="font-size:90%;">8B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.17.3.3"><span class="ltx_text" id="S3.T2.16.12.17.3.3.1" style="font-size:90%;">80.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.17.3.4"><span class="ltx_text ltx_font_bold" id="S3.T2.16.12.17.3.4.1" style="font-size:90%;">94.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.17.3.5"><span class="ltx_text" id="S3.T2.16.12.17.3.5.1" style="font-size:90%;">52.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.17.3.6"><span class="ltx_text" id="S3.T2.16.12.17.3.6.1" style="font-size:90%;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.17.3.7"><span class="ltx_text" id="S3.T2.16.12.17.3.7.1" style="font-size:90%;">93.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.17.3.8"><span class="ltx_text" id="S3.T2.16.12.17.3.8.1" style="font-size:90%;">91.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.17.3.9"><span class="ltx_text" id="S3.T2.16.12.17.3.9.1" style="font-size:90%;">80.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.17.3.10"><span class="ltx_text" id="S3.T2.16.12.17.3.10.1" style="font-size:90%;">77.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.17.3.11"><span class="ltx_text" id="S3.T2.16.12.17.3.11.1" style="font-size:90%;">85.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.17.3.12"><span class="ltx_text" id="S3.T2.16.12.17.3.12.1" style="font-size:90%;">70.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.17.3.13"><span class="ltx_text" id="S3.T2.16.12.17.3.13.1" style="font-size:90%;">86.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.16.12.18.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.16.12.18.4.1">
<span class="ltx_ERROR undefined" id="S3.T2.16.12.18.4.1.1">\hdashline</span><span class="ltx_text" id="S3.T2.16.12.18.4.1.2" style="font-size:90%;">E5-V(Phi3.5-V) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.16.12.18.4.1.3.1" style="font-size:90%;">(</span>Jiang et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T2.16.12.18.4.1.4.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib22" title="">2024b</a><span class="ltx_text" id="S3.T2.16.12.18.4.1.5.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.18.4.2"><span class="ltx_text" id="S3.T2.16.12.18.4.2.1" style="font-size:90%;">4.2B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.18.4.3"><span class="ltx_text" id="S3.T2.16.12.18.4.3.1" style="font-size:90%;">72.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.18.4.4"><span class="ltx_text" id="S3.T2.16.12.18.4.4.1" style="font-size:90%;">79.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.18.4.5"><span class="ltx_text" id="S3.T2.16.12.18.4.5.1" style="font-size:90%;">44.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.18.4.6"><span class="ltx_text" id="S3.T2.16.12.18.4.6.1" style="font-size:90%;">53.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.18.4.7"><span class="ltx_text" id="S3.T2.16.12.18.4.7.1" style="font-size:90%;">86.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.18.4.8"><span class="ltx_text" id="S3.T2.16.12.18.4.8.1" style="font-size:90%;">88.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.18.4.9"><span class="ltx_text" id="S3.T2.16.12.18.4.9.1" style="font-size:90%;">83.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.18.4.10"><span class="ltx_text" id="S3.T2.16.12.18.4.10.1" style="font-size:90%;">83.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.18.4.11"><span class="ltx_text" id="S3.T2.16.12.18.4.11.1" style="font-size:90%;">88.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.18.4.12"><span class="ltx_text" id="S3.T2.16.12.18.4.12.1" style="font-size:90%;">66.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.18.4.13"><span class="ltx_text" id="S3.T2.16.12.18.4.13.1" style="font-size:90%;">75.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.16.12.19.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.16.12.19.5.1">
<span class="ltx_text" id="S3.T2.16.12.19.5.1.1" style="font-size:90%;">E5-V(LLaVA-1.6) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.16.12.19.5.1.2.1" style="font-size:90%;">(</span>Jiang et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T2.16.12.19.5.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib22" title="">2024b</a><span class="ltx_text" id="S3.T2.16.12.19.5.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.19.5.2"><span class="ltx_text" id="S3.T2.16.12.19.5.2.1" style="font-size:90%;">7B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.19.5.3"><span class="ltx_text" id="S3.T2.16.12.19.5.3.1" style="font-size:90%;">77.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.19.5.4"><span class="ltx_text" id="S3.T2.16.12.19.5.4.1" style="font-size:90%;">85.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.19.5.5"><span class="ltx_text" id="S3.T2.16.12.19.5.5.1" style="font-size:90%;">49.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.19.5.6"><span class="ltx_text" id="S3.T2.16.12.19.5.6.1" style="font-size:90%;">57.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.19.5.7"><span class="ltx_text" id="S3.T2.16.12.19.5.7.1" style="font-size:90%;">85.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.19.5.8"><span class="ltx_text" id="S3.T2.16.12.19.5.8.1" style="font-size:90%;">82.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.19.5.9"><span class="ltx_text" id="S3.T2.16.12.19.5.9.1" style="font-size:90%;">88.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.19.5.10"><span class="ltx_text" id="S3.T2.16.12.19.5.10.1" style="font-size:90%;">83.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.19.5.11"><span class="ltx_text" id="S3.T2.16.12.19.5.11.1" style="font-size:90%;">86.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.19.5.12"><span class="ltx_text" id="S3.T2.16.12.19.5.12.1" style="font-size:90%;">68.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.19.5.13"><span class="ltx_text" id="S3.T2.16.12.19.5.13.1" style="font-size:90%;">66.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.9.9" style="background-color:#EDEDED;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.13.9.9.1"><span class="ltx_text" id="S3.T2.13.9.9.1.1" style="font-size:90%;background-color:#EDEDED;">UniME<sup class="ltx_sup" id="S3.T2.13.9.9.1.1.1">†</sup>(Phi3.5-V)</span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.13.9.9.2"><span class="ltx_text" id="S3.T2.13.9.9.2.1" style="font-size:90%;background-color:#EDEDED;">4.2B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.9.9.3"><span class="ltx_text" id="S3.T2.13.9.9.3.1" style="font-size:90%;background-color:#EDEDED;">72.0(<span class="ltx_text" id="S3.T2.13.9.9.3.1.1" style="color:#8A0000;background-color:#EDEDED;">-0.2</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.9.9.4"><span class="ltx_text" id="S3.T2.13.9.9.4.1" style="font-size:90%;background-color:#EDEDED;">80.6(<span class="ltx_text" id="S3.T2.13.9.9.4.1.1" style="color:#1AB333;">+1.0</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.9.9.5"><span class="ltx_text" id="S3.T2.13.9.9.5.1" style="font-size:90%;background-color:#EDEDED;">44.9(<span class="ltx_text" id="S3.T2.13.9.9.5.1.1" style="color:#1AB333;">+0.2</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.9.9.6"><span class="ltx_text" id="S3.T2.13.9.9.6.1" style="font-size:90%;background-color:#EDEDED;">57.2(<span class="ltx_text" id="S3.T2.13.9.9.6.1.1" style="color:#1AB333;">+0.8</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.9.9.7"><span class="ltx_text" id="S3.T2.13.9.9.7.1" style="font-size:90%;background-color:#EDEDED;">86.8(<span class="ltx_text" id="S3.T2.13.9.9.7.1.1" style="color:#1AB333;">+3.8</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.9.9.8"><span class="ltx_text" id="S3.T2.13.9.9.8.1" style="font-size:90%;background-color:#EDEDED;">92.3(<span class="ltx_text" id="S3.T2.13.9.9.8.1.1" style="color:#1AB333;">+1.3</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.9.9.9"><span class="ltx_text" id="S3.T2.13.9.9.9.1" style="font-size:90%;background-color:#EDEDED;">85.1(<span class="ltx_text" id="S3.T2.13.9.9.9.1.1" style="color:#1AB333;">+2.3</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.9.9.10"><span class="ltx_text" id="S3.T2.13.9.9.10.1" style="font-size:90%;background-color:#EDEDED;">86.9(<span class="ltx_text" id="S3.T2.13.9.9.10.1.1" style="color:#1AB333;">+3.3</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.9.9.11"><span class="ltx_text ltx_font_bold" id="S3.T2.13.9.9.11.1" style="font-size:90%;background-color:#EDEDED;">90.2<span class="ltx_text ltx_font_medium" id="S3.T2.13.9.9.11.1.1">(<span class="ltx_text" id="S3.T2.13.9.9.11.1.1.1" style="color:#1AB333;">+2.0</span>)</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.9.9.12"><span class="ltx_text" id="S3.T2.13.9.9.12.1" style="font-size:90%;background-color:#EDEDED;">67.6(<span class="ltx_text" id="S3.T2.13.9.9.12.1.1" style="color:#1AB333;">+1.0</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.9.9.13"><span class="ltx_text" id="S3.T2.13.9.9.13.1" style="font-size:90%;background-color:#EDEDED;">91.2(<span class="ltx_text" id="S3.T2.13.9.9.13.1.1" style="color:#1AB333;">+15.9</span>)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.14.10.10" style="background-color:#EDEDED;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.14.10.10.1"><span class="ltx_text" id="S3.T2.14.10.10.1.1" style="font-size:90%;background-color:#EDEDED;">UniME<sup class="ltx_sup" id="S3.T2.14.10.10.1.1.1">†</sup>(LLaVA-1.6)</span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.14.10.10.2"><span class="ltx_text" id="S3.T2.14.10.10.2.1" style="font-size:90%;background-color:#EDEDED;">7B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.14.10.10.3"><span class="ltx_text" id="S3.T2.14.10.10.3.1" style="font-size:90%;background-color:#EDEDED;">77.2(<span class="ltx_text" id="S3.T2.14.10.10.3.1.1" style="color:#8A0000;background-color:#EDEDED;">-0.1</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.14.10.10.4"><span class="ltx_text" id="S3.T2.14.10.10.4.1" style="font-size:90%;background-color:#EDEDED;">84.6(<span class="ltx_text" id="S3.T2.14.10.10.4.1.1" style="color:#8A0000;background-color:#EDEDED;">-1.1</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.14.10.10.5"><span class="ltx_text" id="S3.T2.14.10.10.5.1" style="font-size:90%;background-color:#EDEDED;">51.0(<span class="ltx_text" id="S3.T2.14.10.10.5.1.1" style="color:#1AB333;">+1.9</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.14.10.10.6"><span class="ltx_text" id="S3.T2.14.10.10.6.1" style="font-size:90%;background-color:#EDEDED;">56.4(<span class="ltx_text" id="S3.T2.14.10.10.6.1.1" style="color:#8A0000;background-color:#EDEDED;">-1.2</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.14.10.10.7"><span class="ltx_text" id="S3.T2.14.10.10.7.1" style="font-size:90%;background-color:#EDEDED;">89.8(<span class="ltx_text" id="S3.T2.14.10.10.7.1.1" style="color:#1AB333;">+4.7</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.14.10.10.8"><span class="ltx_text" id="S3.T2.14.10.10.8.1" style="font-size:90%;background-color:#EDEDED;">86.9(<span class="ltx_text" id="S3.T2.14.10.10.8.1.1" style="color:#1AB333;">+4.8</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.14.10.10.9"><span class="ltx_text" id="S3.T2.14.10.10.9.1" style="font-size:90%;background-color:#EDEDED;">91.3(<span class="ltx_text" id="S3.T2.14.10.10.9.1.1" style="color:#1AB333;">+2.4</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.14.10.10.10"><span class="ltx_text" id="S3.T2.14.10.10.10.1" style="font-size:90%;background-color:#EDEDED;">82.4(<span class="ltx_text" id="S3.T2.14.10.10.10.1.1" style="color:#8A0000;background-color:#EDEDED;">-0.8</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.14.10.10.11"><span class="ltx_text" id="S3.T2.14.10.10.11.1" style="font-size:90%;background-color:#EDEDED;">89.5(<span class="ltx_text" id="S3.T2.14.10.10.11.1.1" style="color:#1AB333;">+3.2</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.14.10.10.12"><span class="ltx_text" id="S3.T2.14.10.10.12.1" style="font-size:90%;background-color:#EDEDED;">64.8(<span class="ltx_text" id="S3.T2.14.10.10.12.1.1" style="color:#8A0000;background-color:#EDEDED;">-3.9</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.14.10.10.13"><span class="ltx_text" id="S3.T2.14.10.10.13.1" style="font-size:90%;background-color:#EDEDED;">94.2(<span class="ltx_text" id="S3.T2.14.10.10.13.1.1" style="color:#1AB333;">+27.3</span>)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.16.12.20.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.16.12.20.6.1">
<span class="ltx_ERROR undefined" id="S3.T2.16.12.20.6.1.1">\hdashline</span><span class="ltx_text" id="S3.T2.16.12.20.6.1.2" style="font-size:90%;">VLM2Vec(Phi3.5-V) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.16.12.20.6.1.3.1" style="font-size:90%;">(</span>Jiang et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T2.16.12.20.6.1.4.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib23" title="">2025</a><span class="ltx_text" id="S3.T2.16.12.20.6.1.5.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.20.6.2"><span class="ltx_text" id="S3.T2.16.12.20.6.2.1" style="font-size:90%;">4.2B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.20.6.3"><span class="ltx_text" id="S3.T2.16.12.20.6.3.1" style="font-size:90%;">68.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.20.6.4"><span class="ltx_text" id="S3.T2.16.12.20.6.4.1" style="font-size:90%;">83.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.20.6.5"><span class="ltx_text" id="S3.T2.16.12.20.6.5.1" style="font-size:90%;">43.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.20.6.6"><span class="ltx_text" id="S3.T2.16.12.20.6.6.1" style="font-size:90%;">59.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.20.6.7"><span class="ltx_text" id="S3.T2.16.12.20.6.7.1" style="font-size:90%;">90.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.20.6.8"><span class="ltx_text" id="S3.T2.16.12.20.6.8.1" style="font-size:90%;">92.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.20.6.9"><span class="ltx_text" id="S3.T2.16.12.20.6.9.1" style="font-size:90%;">87.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.20.6.10"><span class="ltx_text" id="S3.T2.16.12.20.6.10.1" style="font-size:90%;">86.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.20.6.11"><span class="ltx_text" id="S3.T2.16.12.20.6.11.1" style="font-size:90%;">86.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.20.6.12"><span class="ltx_text" id="S3.T2.16.12.20.6.12.1" style="font-size:90%;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.20.6.13"><span class="ltx_text" id="S3.T2.16.12.20.6.13.1" style="font-size:90%;">84.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.16.12.21.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.16.12.21.7.1">
<span class="ltx_text" id="S3.T2.16.12.21.7.1.1" style="font-size:90%;">VLM2Vec(LLaVA-1.6) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.16.12.21.7.1.2.1" style="font-size:90%;">(</span>Jiang et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T2.16.12.21.7.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib23" title="">2025</a><span class="ltx_text" id="S3.T2.16.12.21.7.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.21.7.2"><span class="ltx_text" id="S3.T2.16.12.21.7.2.1" style="font-size:90%;">7B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.21.7.3"><span class="ltx_text" id="S3.T2.16.12.21.7.3.1" style="font-size:90%;">76.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.21.7.4"><span class="ltx_text" id="S3.T2.16.12.21.7.4.1" style="font-size:90%;">90.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.21.7.5"><span class="ltx_text" id="S3.T2.16.12.21.7.5.1" style="font-size:90%;">46.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.21.7.6"><span class="ltx_text" id="S3.T2.16.12.21.7.6.1" style="font-size:90%;">66.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.21.7.7"><span class="ltx_text" id="S3.T2.16.12.21.7.7.1" style="font-size:90%;">85.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.21.7.8"><span class="ltx_text" id="S3.T2.16.12.21.7.8.1" style="font-size:90%;">90.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.21.7.9"><span class="ltx_text" id="S3.T2.16.12.21.7.9.1" style="font-size:90%;">84.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.21.7.10"><span class="ltx_text" id="S3.T2.16.12.21.7.10.1" style="font-size:90%;">90.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.21.7.11"><span class="ltx_text" id="S3.T2.16.12.21.7.11.1" style="font-size:90%;">85.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.21.7.12"><span class="ltx_text" id="S3.T2.16.12.21.7.12.1" style="font-size:90%;">66.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.12.21.7.13"><span class="ltx_text" id="S3.T2.16.12.21.7.13.1" style="font-size:90%;">86.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.15.11.11" style="background-color:#EDEDED;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.15.11.11.1"><span class="ltx_text" id="S3.T2.15.11.11.1.1" style="font-size:90%;background-color:#EDEDED;">UniME<sup class="ltx_sup" id="S3.T2.15.11.11.1.1.1">‡</sup> (Phi3.5-V)</span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.15.11.11.2"><span class="ltx_text" id="S3.T2.15.11.11.2.1" style="font-size:90%;background-color:#EDEDED;">4.2B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.11.11.3"><span class="ltx_text" id="S3.T2.15.11.11.3.1" style="font-size:90%;background-color:#EDEDED;">77.0(<span class="ltx_text" id="S3.T2.15.11.11.3.1.1" style="color:#1AB333;">+11.3</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.11.11.4"><span class="ltx_text" id="S3.T2.15.11.11.4.1" style="font-size:90%;background-color:#EDEDED;">88.2(<span class="ltx_text" id="S3.T2.15.11.11.4.1.1" style="color:#1AB333;">+5.2</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.11.11.5"><span class="ltx_text" id="S3.T2.15.11.11.5.1" style="font-size:90%;background-color:#EDEDED;">49.8(<span class="ltx_text" id="S3.T2.15.11.11.5.1.1" style="color:#1AB333;">+6.1</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.11.11.6"><span class="ltx_text" id="S3.T2.15.11.11.6.1" style="font-size:90%;background-color:#EDEDED;">66.8(<span class="ltx_text" id="S3.T2.15.11.11.6.1.1" style="color:#1AB333;">+7.0</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.11.11.7"><span class="ltx_text" id="S3.T2.15.11.11.7.1" style="font-size:90%;background-color:#EDEDED;">92.1(<span class="ltx_text" id="S3.T2.15.11.11.7.1.1" style="color:#1AB333;">+2.0</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.11.11.8"><span class="ltx_text" id="S3.T2.15.11.11.8.1" style="font-size:90%;background-color:#EDEDED;">96.4(<span class="ltx_text" id="S3.T2.15.11.11.8.1.1" style="color:#1AB333;">+4.4</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.11.11.9"><span class="ltx_text" id="S3.T2.15.11.11.9.1" style="font-size:90%;background-color:#EDEDED;">92.7(<span class="ltx_text" id="S3.T2.15.11.11.9.1.1" style="color:#1AB333;">+4.8</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.11.11.10"><span class="ltx_text" id="S3.T2.15.11.11.10.1" style="font-size:90%;background-color:#EDEDED;">95.1(<span class="ltx_text" id="S3.T2.15.11.11.10.1.1" style="color:#1AB333;">+8.3</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.11.11.11"><span class="ltx_text" id="S3.T2.15.11.11.11.1" style="font-size:90%;background-color:#EDEDED;">90.1(<span class="ltx_text" id="S3.T2.15.11.11.11.1.1" style="color:#1AB333;">+3.9</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.11.11.12"><span class="ltx_text" id="S3.T2.15.11.11.12.1" style="font-size:90%;background-color:#EDEDED;">70.9(<span class="ltx_text" id="S3.T2.15.11.11.12.1.1" style="color:#1AB333;">+4.2</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.11.11.13"><span class="ltx_text" id="S3.T2.15.11.11.13.1" style="font-size:90%;background-color:#EDEDED;">93.3(<span class="ltx_text" id="S3.T2.15.11.11.13.1.1" style="color:#1AB333;">+9.1</span>)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.16.12.12" style="background-color:#EDEDED;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.16.12.12.1"><span class="ltx_text" id="S3.T2.16.12.12.1.1" style="font-size:90%;background-color:#EDEDED;">UniME<sup class="ltx_sup" id="S3.T2.16.12.12.1.1.1">‡</sup> (LLaVA-1.6)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.16.12.12.2"><span class="ltx_text" id="S3.T2.16.12.12.2.1" style="font-size:90%;background-color:#EDEDED;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.16.12.12.3"><span class="ltx_text ltx_font_bold" id="S3.T2.16.12.12.3.1" style="font-size:90%;background-color:#EDEDED;">81.9<span class="ltx_text ltx_font_medium" id="S3.T2.16.12.12.3.1.1">(<span class="ltx_text" id="S3.T2.16.12.12.3.1.1.1" style="color:#1AB333;">+5.9</span>)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.16.12.12.4"><span class="ltx_text" id="S3.T2.16.12.12.4.1" style="font-size:90%;background-color:#EDEDED;">93.4(<span class="ltx_text" id="S3.T2.16.12.12.4.1.1" style="color:#1AB333;">+2.8</span>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.16.12.12.5"><span class="ltx_text ltx_font_bold" id="S3.T2.16.12.12.5.1" style="font-size:90%;background-color:#EDEDED;">53.7<span class="ltx_text ltx_font_medium" id="S3.T2.16.12.12.5.1.1">(<span class="ltx_text" id="S3.T2.16.12.12.5.1.1.1" style="color:#1AB333;">+6.1</span>)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.16.12.12.6"><span class="ltx_text ltx_font_bold" id="S3.T2.16.12.12.6.1" style="font-size:90%;background-color:#EDEDED;">70.1<span class="ltx_text ltx_font_medium" id="S3.T2.16.12.12.6.1.1">(<span class="ltx_text" id="S3.T2.16.12.12.6.1.1.1" style="color:#1AB333;">+3.5</span>)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.16.12.12.7"><span class="ltx_text ltx_font_bold" id="S3.T2.16.12.12.7.1" style="font-size:90%;background-color:#EDEDED;">93.9<span class="ltx_text ltx_font_medium" id="S3.T2.16.12.12.7.1.1">(<span class="ltx_text" id="S3.T2.16.12.12.7.1.1.1" style="color:#1AB333;">+8.1</span>)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.16.12.12.8"><span class="ltx_text ltx_font_bold" id="S3.T2.16.12.12.8.1" style="font-size:90%;background-color:#EDEDED;">97.2<span class="ltx_text ltx_font_medium" id="S3.T2.16.12.12.8.1.1">(<span class="ltx_text" id="S3.T2.16.12.12.8.1.1.1" style="color:#1AB333;">+6.5</span>)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.16.12.12.9"><span class="ltx_text ltx_font_bold" id="S3.T2.16.12.12.9.1" style="font-size:90%;background-color:#EDEDED;">95.2<span class="ltx_text ltx_font_medium" id="S3.T2.16.12.12.9.1.1">(<span class="ltx_text" id="S3.T2.16.12.12.9.1.1.1" style="color:#1AB333;">+10.5</span>)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.16.12.12.10"><span class="ltx_text ltx_font_bold" id="S3.T2.16.12.12.10.1" style="font-size:90%;background-color:#EDEDED;">95.9<span class="ltx_text ltx_font_medium" id="S3.T2.16.12.12.10.1.1">(<span class="ltx_text" id="S3.T2.16.12.12.10.1.1.1" style="color:#1AB333;">+5.1</span>)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.16.12.12.11"><span class="ltx_text" id="S3.T2.16.12.12.11.1" style="font-size:90%;background-color:#EDEDED;">89.0(<span class="ltx_text" id="S3.T2.16.12.12.11.1.1" style="color:#1AB333;">+3.2</span>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.16.12.12.12"><span class="ltx_text ltx_font_bold" id="S3.T2.16.12.12.12.1" style="font-size:90%;background-color:#EDEDED;">71.5<span class="ltx_text ltx_font_medium" id="S3.T2.16.12.12.12.1.1">(<span class="ltx_text" id="S3.T2.16.12.12.12.1.1.1" style="color:#1AB333;">+5.2</span>)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.16.12.12.13"><span class="ltx_text ltx_font_bold" id="S3.T2.16.12.12.13.1" style="font-size:90%;background-color:#EDEDED;">94.4<span class="ltx_text ltx_font_medium" id="S3.T2.16.12.12.13.1.1">(<span class="ltx_text" id="S3.T2.16.12.12.13.1.1.1" style="color:#1AB333;">+7.9</span>)</span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the zero-shot text-image retrieval performance of different models on various datasets.  It assesses the models' ability to retrieve relevant images given text descriptions, categorized by caption length (short or long) and task type (standard retrieval or compositional retrieval).  Short caption datasets include Flickr30K and MS-COCO, while long caption datasets are ShareGPT4V and Urban1K. SugarCrepe serves as the compositional retrieval benchmark. The metric used is average Recall@1, indicating the percentage of correctly retrieved images within the top-ranked results.  The table highlights the performance of UniME under two training scenarios: with textual discrimination distillation only, and with both textual discrimination distillation and hard negative enhanced instruction tuning.
> <details>
> <summary>read the caption</summary>
> Table 2. Results of zero-shot text-image retrieval on short caption datasets (Flickr30K and MS-COCO), long caption datasets (ShareGPT4V and Urban1K) and compositional benchmark (SugarCrepe). The reported scores are the average Recall@1 over the corresponding datasets. The best results are marked in bold. †: UniME with textual discrimination distillation only. ‡: UniME with both textual discrimination distillation and hard negative enhanced instruction tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.3.3.4" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.3.4.1" style="font-size:90%;">Stage1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.3.3.5" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.3.5.1" style="font-size:90%;">Stage2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.3.3.6" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.3.6.1" style="font-size:90%;">MMEB</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1" style="padding:0.9pt 8.0pt;"><math alttext="\text{R}_{\text{Short}}" class="ltx_Math" display="inline" id="S5.T3.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.m1.1a"><msub id="S5.T3.1.1.1.m1.1.1" xref="S5.T3.1.1.1.m1.1.1.cmml"><mtext id="S5.T3.1.1.1.m1.1.1.2" mathsize="90%" xref="S5.T3.1.1.1.m1.1.1.2a.cmml">R</mtext><mtext id="S5.T3.1.1.1.m1.1.1.3" mathsize="90%" xref="S5.T3.1.1.1.m1.1.1.3a.cmml">Short</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.m1.1b"><apply id="S5.T3.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.1.1.1.m1.1.1.1.cmml" xref="S5.T3.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T3.1.1.1.m1.1.1.2a.cmml" xref="S5.T3.1.1.1.m1.1.1.2"><mtext id="S5.T3.1.1.1.m1.1.1.2.cmml" mathsize="90%" xref="S5.T3.1.1.1.m1.1.1.2">R</mtext></ci><ci id="S5.T3.1.1.1.m1.1.1.3a.cmml" xref="S5.T3.1.1.1.m1.1.1.3"><mtext id="S5.T3.1.1.1.m1.1.1.3.cmml" mathsize="63%" xref="S5.T3.1.1.1.m1.1.1.3">Short</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.m1.1c">\text{R}_{\text{Short}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.m1.1d">R start_POSTSUBSCRIPT Short end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.2.2" style="padding:0.9pt 8.0pt;"><math alttext="\text{R}_{\text{Long}}" class="ltx_Math" display="inline" id="S5.T3.2.2.2.m1.1"><semantics id="S5.T3.2.2.2.m1.1a"><msub id="S5.T3.2.2.2.m1.1.1" xref="S5.T3.2.2.2.m1.1.1.cmml"><mtext id="S5.T3.2.2.2.m1.1.1.2" mathsize="90%" xref="S5.T3.2.2.2.m1.1.1.2a.cmml">R</mtext><mtext id="S5.T3.2.2.2.m1.1.1.3" mathsize="90%" xref="S5.T3.2.2.2.m1.1.1.3a.cmml">Long</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.m1.1b"><apply id="S5.T3.2.2.2.m1.1.1.cmml" xref="S5.T3.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.2.2.2.m1.1.1.1.cmml" xref="S5.T3.2.2.2.m1.1.1">subscript</csymbol><ci id="S5.T3.2.2.2.m1.1.1.2a.cmml" xref="S5.T3.2.2.2.m1.1.1.2"><mtext id="S5.T3.2.2.2.m1.1.1.2.cmml" mathsize="90%" xref="S5.T3.2.2.2.m1.1.1.2">R</mtext></ci><ci id="S5.T3.2.2.2.m1.1.1.3a.cmml" xref="S5.T3.2.2.2.m1.1.1.3"><mtext id="S5.T3.2.2.2.m1.1.1.3.cmml" mathsize="63%" xref="S5.T3.2.2.2.m1.1.1.3">Long</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.m1.1c">\text{R}_{\text{Long}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.m1.1d">R start_POSTSUBSCRIPT Long end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.3.3" style="padding:0.9pt 8.0pt;"><math alttext="\text{R}_{\text{Compos}}" class="ltx_Math" display="inline" id="S5.T3.3.3.3.m1.1"><semantics id="S5.T3.3.3.3.m1.1a"><msub id="S5.T3.3.3.3.m1.1.1" xref="S5.T3.3.3.3.m1.1.1.cmml"><mtext id="S5.T3.3.3.3.m1.1.1.2" mathsize="90%" xref="S5.T3.3.3.3.m1.1.1.2a.cmml">R</mtext><mtext id="S5.T3.3.3.3.m1.1.1.3" mathsize="90%" xref="S5.T3.3.3.3.m1.1.1.3a.cmml">Compos</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.m1.1b"><apply id="S5.T3.3.3.3.m1.1.1.cmml" xref="S5.T3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.3.3.3.m1.1.1.1.cmml" xref="S5.T3.3.3.3.m1.1.1">subscript</csymbol><ci id="S5.T3.3.3.3.m1.1.1.2a.cmml" xref="S5.T3.3.3.3.m1.1.1.2"><mtext id="S5.T3.3.3.3.m1.1.1.2.cmml" mathsize="90%" xref="S5.T3.3.3.3.m1.1.1.2">R</mtext></ci><ci id="S5.T3.3.3.3.m1.1.1.3a.cmml" xref="S5.T3.3.3.3.m1.1.1.3"><mtext id="S5.T3.3.3.3.m1.1.1.3.cmml" mathsize="63%" xref="S5.T3.3.3.3.m1.1.1.3">Compos</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.m1.1c">\text{R}_{\text{Compos}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.m1.1d">R start_POSTSUBSCRIPT Compos end_POSTSUBSCRIPT</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T3.3.4.1.1" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.4.1.1.1" style="font-size:90%;">✘</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T3.3.4.1.2" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.4.1.2.1" style="font-size:90%;">✘</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T3.3.4.1.3" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.4.1.3.1" style="font-size:90%;">25.3</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.4.1.4" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.4.1.4.1" style="font-size:90%;">44.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.4.1.5" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.4.1.5.1" style="font-size:90%;">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.4.1.6" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.4.1.6.1" style="font-size:90%;">63.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T3.3.5.2.1" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.5.2.1.1" style="font-size:90%;">✔</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T3.3.5.2.2" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.5.2.2.1" style="font-size:90%;">✘</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T3.3.5.2.3" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.5.2.3.1" style="font-size:90%;">40.3</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.5.2.4" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.5.2.4.1" style="font-size:90%;">63.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.5.2.5" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.5.2.5.1" style="font-size:90%;">87.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.5.2.6" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.5.2.6.1" style="font-size:90%;">83.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T3.3.6.3.1" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.6.3.1.1" style="font-size:90%;">✘</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T3.3.6.3.2" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.6.3.2.1" style="font-size:90%;">✔</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T3.3.6.3.3" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.6.3.3.1" style="font-size:90%;">63.8</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.6.3.4" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.6.3.4.1" style="font-size:90%;">61.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.6.3.5" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.6.3.5.1" style="font-size:90%;">84.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.6.3.6" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.6.3.6.1" style="font-size:90%;">77.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.7.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T3.3.7.4.1" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.7.4.1.1" style="font-size:90%;">✔</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T3.3.7.4.2" style="padding:0.9pt 8.0pt;"><span class="ltx_text" id="S5.T3.3.7.4.2.1" style="font-size:90%;">✔</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T3.3.7.4.3" style="padding:0.9pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.7.4.3.1" style="font-size:90%;">64.2</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.7.4.4" style="padding:0.9pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.7.4.4.1" style="font-size:90%;">70.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.7.4.5" style="padding:0.9pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.7.4.5.1" style="font-size:90%;">94.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.7.4.6" style="padding:0.9pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.7.4.6.1" style="font-size:90%;">84.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different training stages on the performance of the UniME model.  It shows the mean scores achieved on four categories of tasks: the Massive Multimodal Embedding Benchmark (MMEB), short-caption cross-modal retrieval, long-caption cross-modal retrieval, and compositional cross-modal retrieval.  The table allows for comparison of results when only the first training stage is used (textual discriminative knowledge distillation), only the second stage is used (hard negative enhanced instruction tuning), neither stage is used, and when both stages are used. This helps to understand the contribution of each stage to the overall model performance.
> <details>
> <summary>read the caption</summary>
> Table 3. Ablation study of different training stages. We report the mean scores on the MMEB benchmark, short and long cross-modal retrieval, as well as compositional cross-modal retrieval.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.3.1.2" rowspan="2" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.1.2.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.3.1.1" rowspan="2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.1.1.1" style="font-size:90%;"><math alttext="\beta" class="ltx_Math" display="inline" id="S5.T4.3.1.1.1.m1.1"><semantics id="S5.T4.3.1.1.1.m1.1a"><mi id="S5.T4.3.1.1.1.m1.1.1" xref="S5.T4.3.1.1.1.m1.1.1.cmml">β</mi><annotation-xml encoding="MathML-Content" id="S5.T4.3.1.1.1.m1.1b"><ci id="S5.T4.3.1.1.1.m1.1.1.cmml" xref="S5.T4.3.1.1.1.m1.1.1">𝛽</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.1.1.1.m1.1c">\beta</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.1.1.1.m1.1d">italic_β</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.3.1.3" rowspan="2" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.1.3.1" style="font-size:90%;">FalseNeg(%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T4.3.1.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.1.4.1" style="font-size:90%;">Average Score</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.3.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.3.2.1.1" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.2.1.1.1" style="font-size:90%;">IND</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.3.2.1.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.2.1.2.1" style="font-size:90%;">OOD</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.3.2.1.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.2.1.3.1" style="font-size:90%;">Overall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.3.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T4.3.3.1.1" rowspan="5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.3.1.1.1" style="font-size:90%;">Phi3.5-V</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.1.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.3.1.2.1" style="font-size:90%;">-0.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.1.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.3.1.3.1" style="font-size:90%;">81.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.1.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.3.1.4.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.1.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.3.1.5.1" style="font-size:90%;">43.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.1.6" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.3.1.6.1" style="font-size:90%;">55.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.4.2">
<td class="ltx_td ltx_align_center" id="S5.T4.3.4.2.1" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.4.2.1.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.4.2.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.4.2.2.1" style="font-size:90%;">53.2%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.4.2.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.4.2.3.1" style="font-size:90%;">66.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.4.2.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.4.2.4.1" style="font-size:90%;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.4.2.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.4.2.5.1" style="font-size:90%;">61.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.5.3">
<td class="ltx_td ltx_align_center" id="S5.T4.3.5.3.1" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.5.3.1.1" style="font-size:90%;">0.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.5.3.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.5.3.2.1" style="font-size:90%;">22.9%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.5.3.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.5.3.3.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.5.3.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.5.3.4.1" style="font-size:90%;">52.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.5.3.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.5.3.5.1" style="font-size:90%;">64.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.6.4">
<td class="ltx_td ltx_align_center" id="S5.T4.3.6.4.1" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.6.4.1.1" style="font-size:90%;">0.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.6.4.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.6.4.2.1" style="font-size:90%;">18.2%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.6.4.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.6.4.3.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.6.4.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.6.4.4.1" style="font-size:90%;">51.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.6.4.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.6.4.5.1" style="font-size:90%;">63.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.7.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.7.5.1" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.7.5.1.1" style="font-size:90%;">0.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.7.5.2" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.7.5.2.1" style="font-size:90%;">13.1%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.7.5.3" style="padding:0.9pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.7.5.3.1" style="font-size:90%;">68.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.7.5.4" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.7.5.4.1" style="font-size:90%;">52.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.7.5.5" style="padding:0.9pt 7.0pt;"><span class="ltx_text" id="S5.T4.3.7.5.5.1" style="font-size:90%;">63.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of the false negative filtering threshold (β) on the model's performance.  The table shows how varying the threshold affects the percentage of samples where false negatives are filtered out and the overall average model performance (across in-distribution and out-of-distribution datasets).  A higher β value implies a more lenient threshold, allowing more samples to pass through the filter, which may affect the balance between filtering out false negatives and preserving hard negatives needed for effective training.
> <details>
> <summary>read the caption</summary>
> Table 4. Ablation study of the false negative filtering threshold β𝛽\betaitalic_β. FalseNeg(%): proportion of samples which filtered false negatives.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T5.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.3.1.2" rowspan="2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.2.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.3.1.1" rowspan="2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.1.1" style="font-size:90%;">Top-<math alttext="k" class="ltx_Math" display="inline" id="S5.T5.3.1.1.1.1.m1.1"><semantics id="S5.T5.3.1.1.1.1.m1.1a"><mi id="S5.T5.3.1.1.1.1.m1.1.1" xref="S5.T5.3.1.1.1.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="S5.T5.3.1.1.1.1.m1.1b"><ci id="S5.T5.3.1.1.1.1.m1.1.1.cmml" xref="S5.T5.3.1.1.1.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.1.1.1.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.1.1.1.1.m1.1d">italic_k</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.3.1.3" rowspan="2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.3.1" style="font-size:90%;">HardNeg(%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T5.3.1.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.4.1" style="font-size:90%;">Average Score</span></th>
</tr>
<tr class="ltx_tr" id="S5.T5.3.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.3.2.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.2.1.1.1" style="font-size:90%;">IND</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.3.2.1.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.2.1.2.1" style="font-size:90%;">OOD</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.3.2.1.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.2.1.3.1" style="font-size:90%;">Overall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.3.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T5.3.3.1.1" rowspan="5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.3.1.1.1" style="font-size:90%;">Phi3.5-V</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T5.3.3.1.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.3.1.2.1" style="font-size:90%;">4</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.1.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.3.1.3.1" style="font-size:90%;">0.4%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.1.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.3.1.4.1" style="font-size:90%;">67.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.1.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.3.1.5.1" style="font-size:90%;">52.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.1.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.3.1.6.1" style="font-size:90%;">63.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.3.4.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.4.2.1.1" style="font-size:90%;">8</span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.3.4.2.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.4.2.2.1" style="font-size:90%;">0.8%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.4.2.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.4.2.3.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.4.2.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.3.4.2.4.1" style="font-size:90%;">52.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.4.2.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.3.4.2.5.1" style="font-size:90%;">64.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.3.5.3.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.5.3.1.1" style="font-size:90%;">16</span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.3.5.3.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.5.3.2.1" style="font-size:90%;">1.6%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.5.3.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.5.3.3.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.5.3.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.5.3.4.1" style="font-size:90%;">51.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.5.3.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.5.3.5.1" style="font-size:90%;">63.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.3.6.4.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.6.4.1.1" style="font-size:90%;">32</span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.3.6.4.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.6.4.2.1" style="font-size:90%;">3.2%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.6.4.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.3.6.4.3.1" style="font-size:90%;">68.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.6.4.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.6.4.4.1" style="font-size:90%;">51.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.6.4.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.6.4.5.1" style="font-size:90%;">63.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.7.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T5.3.7.5.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.7.5.1.1" style="font-size:90%;">64</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.7.5.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.7.5.2.1" style="font-size:90%;">6.4%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.7.5.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.7.5.3.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.7.5.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.7.5.4.1" style="font-size:90%;">51.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.7.5.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.T5.3.7.5.5.1" style="font-size:90%;">63.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of varying the number of hard negative samples (k) used during the hard negative enhanced instruction tuning stage of the UniME model.  It shows how the average performance scores (IND, OOD, and Overall) change as the proportion of hard negatives in each batch is adjusted. This helps determine the optimal number of hard negatives for maximizing model performance.
> <details>
> <summary>read the caption</summary>
> Table 5. Ablation study of the number k𝑘kitalic_k of the hard negatives. HardNeg(%): proportion of hard negative samples within a batch.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A0.T6.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A0.T6.8.9.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="A0.T6.8.9.1.1"><span class="ltx_text ltx_font_bold" id="A0.T6.8.9.1.1.1">Hyperparameter</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A0.T6.8.9.1.2"><span class="ltx_text ltx_font_bold" id="A0.T6.8.9.1.2.1">UniME(Phi3.5-V)</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A0.T6.8.9.1.3"><span class="ltx_text ltx_font_bold" id="A0.T6.8.9.1.3.1">UniME(LLaVA-1.6)</span></td>
</tr>
<tr class="ltx_tr" id="A0.T6.8.10.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="3" id="A0.T6.8.10.2.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A0.T6.8.10.2.1.1">Stage 1:Textual Discriminative Knowledge Distillation</span></th>
</tr>
<tr class="ltx_tr" id="A0.T6.8.11.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A0.T6.8.11.3.1">Training samples</th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A0.T6.8.11.3.2">273K</td>
</tr>
<tr class="ltx_tr" id="A0.T6.8.12.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.8.12.4.1">Batch size</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A0.T6.8.12.4.2">768</td>
</tr>
<tr class="ltx_tr" id="A0.T6.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.2.2.3">Learning rate</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A0.T6.2.2.2">5<math alttext="\times" class="ltx_Math" display="inline" id="A0.T6.1.1.1.m1.1"><semantics id="A0.T6.1.1.1.m1.1a"><mo id="A0.T6.1.1.1.m1.1.1" xref="A0.T6.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A0.T6.1.1.1.m1.1b"><times id="A0.T6.1.1.1.m1.1.1.cmml" xref="A0.T6.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A0.T6.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A0.T6.1.1.1.m1.1d">×</annotation></semantics></math>10<sup class="ltx_sup" id="A0.T6.2.2.2.1"><span class="ltx_text ltx_font_italic" id="A0.T6.2.2.2.1.1">-4</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="A0.T6.8.13.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.8.13.5.1">LoRA rank</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A0.T6.8.13.5.2">32</td>
</tr>
<tr class="ltx_tr" id="A0.T6.8.14.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.8.14.6.1">Epochs</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A0.T6.8.14.6.2">2</td>
</tr>
<tr class="ltx_tr" id="A0.T6.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.3.3.2">GPU configuration</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A0.T6.3.3.1">8<math alttext="\times" class="ltx_Math" display="inline" id="A0.T6.3.3.1.m1.1"><semantics id="A0.T6.3.3.1.m1.1a"><mo id="A0.T6.3.3.1.m1.1.1" xref="A0.T6.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A0.T6.3.3.1.m1.1b"><times id="A0.T6.3.3.1.m1.1.1.cmml" xref="A0.T6.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A0.T6.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A0.T6.3.3.1.m1.1d">×</annotation></semantics></math>A100</td>
</tr>
<tr class="ltx_tr" id="A0.T6.8.15.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.8.15.7.1">Precision</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A0.T6.8.15.7.2">FP16</td>
</tr>
<tr class="ltx_tr" id="A0.T6.8.16.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.8.16.8.1">Training time</th>
<td class="ltx_td ltx_align_center" id="A0.T6.8.16.8.2">1 hour</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A0.T6.8.16.8.3">2 hours</td>
</tr>
<tr class="ltx_tr" id="A0.T6.8.17.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="3" id="A0.T6.8.17.9.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A0.T6.8.17.9.1.1">Stage 2: Hard Negative Enhanced Instruction Tuning</span></th>
</tr>
<tr class="ltx_tr" id="A0.T6.8.18.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A0.T6.8.18.10.1">Training samples</th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A0.T6.8.18.10.2">662K</td>
</tr>
<tr class="ltx_tr" id="A0.T6.8.19.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.8.19.11.1">Batch size</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A0.T6.8.19.11.2">1024</td>
</tr>
<tr class="ltx_tr" id="A0.T6.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.7.7.5">Learning rate</th>
<td class="ltx_td ltx_align_center" id="A0.T6.5.5.2">1<math alttext="\times" class="ltx_Math" display="inline" id="A0.T6.4.4.1.m1.1"><semantics id="A0.T6.4.4.1.m1.1a"><mo id="A0.T6.4.4.1.m1.1.1" xref="A0.T6.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A0.T6.4.4.1.m1.1b"><times id="A0.T6.4.4.1.m1.1.1.cmml" xref="A0.T6.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A0.T6.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A0.T6.4.4.1.m1.1d">×</annotation></semantics></math>10<sup class="ltx_sup" id="A0.T6.5.5.2.1"><span class="ltx_text ltx_font_italic" id="A0.T6.5.5.2.1.1">-4</span></sup>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A0.T6.7.7.4">2<math alttext="\times" class="ltx_Math" display="inline" id="A0.T6.6.6.3.m1.1"><semantics id="A0.T6.6.6.3.m1.1a"><mo id="A0.T6.6.6.3.m1.1.1" xref="A0.T6.6.6.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A0.T6.6.6.3.m1.1b"><times id="A0.T6.6.6.3.m1.1.1.cmml" xref="A0.T6.6.6.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A0.T6.6.6.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A0.T6.6.6.3.m1.1d">×</annotation></semantics></math>10<sup class="ltx_sup" id="A0.T6.7.7.4.1"><span class="ltx_text ltx_font_italic" id="A0.T6.7.7.4.1.1">-5</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="A0.T6.8.20.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.8.20.12.1">LoRA rank</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A0.T6.8.20.12.2">16</td>
</tr>
<tr class="ltx_tr" id="A0.T6.8.21.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.8.21.13.1">Training steps</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A0.T6.8.21.13.2">1000</td>
</tr>
<tr class="ltx_tr" id="A0.T6.8.22.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.8.22.14.1">Optimizer</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A0.T6.8.22.14.2">AdamW</td>
</tr>
<tr class="ltx_tr" id="A0.T6.8.23.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.8.23.15.1">DeepSpeed stage</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A0.T6.8.23.15.2">2</td>
</tr>
<tr class="ltx_tr" id="A0.T6.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.8.8.2">GPU configuration</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A0.T6.8.8.1">8<math alttext="\times" class="ltx_Math" display="inline" id="A0.T6.8.8.1.m1.1"><semantics id="A0.T6.8.8.1.m1.1a"><mo id="A0.T6.8.8.1.m1.1.1" xref="A0.T6.8.8.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A0.T6.8.8.1.m1.1b"><times id="A0.T6.8.8.1.m1.1.1.cmml" xref="A0.T6.8.8.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A0.T6.8.8.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A0.T6.8.8.1.m1.1d">×</annotation></semantics></math>A100</td>
</tr>
<tr class="ltx_tr" id="A0.T6.8.24.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.8.24.16.1">Precision</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A0.T6.8.24.16.2">BF16</td>
</tr>
<tr class="ltx_tr" id="A0.T6.8.25.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A0.T6.8.25.17.1">Training time</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A0.T6.8.25.17.2">26 hours</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A0.T6.8.25.17.3">37 hours</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used and the computational resources required during the training process for the UniME model using two different large language models: Phi-3.5-V and LLaVA-1.6.  It breaks down the specifications for each stage of the training (Textual Discriminative Knowledge Distillation and Hard Negative Enhanced Instruction Tuning) including the number of training samples, batch size, learning rate, LoRA rank, number of epochs, GPU configuration, precision, and the overall training time for each model.
> <details>
> <summary>read the caption</summary>
> Table 6. Training hyperparameters and computational requirements for UniME(Phi3.5-V) and UniME(LLaVA-1.6).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T7.7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.7.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T7.7.1.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.7.1.1.1.1.1" style="font-size:50%;">Benchmark</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.7.1.1.1.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.7.1.1.1.2.1" style="font-size:50%;">Zero-shot</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.7.1.1.1.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.7.1.1.1.3.1" style="font-size:50%;">#Queries</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.7.1.1.1.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.7.1.1.1.4.1" style="font-size:50%;">#Candidates</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.7.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.7.1.2.1.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<span class="ltx_text" id="A1.T7.7.1.2.1.1.1" style="font-size:50%;">Flickr30K </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A1.T7.7.1.2.1.1.2.1" style="font-size:50%;">(</span>Plummer et al<span class="ltx_text">.</span><span class="ltx_text" id="A1.T7.7.1.2.1.1.3.2.1.1" style="font-size:50%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib42" title="">2015</a><span class="ltx_text" id="A1.T7.7.1.2.1.1.4.3" style="font-size:50%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.1.2.1.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A1.T7.7.1.2.1.2.1" style="font-size:50%;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.1.2.1.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A1.T7.7.1.2.1.3.1" style="font-size:50%;">1K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.1.2.1.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A1.T7.7.1.2.1.4.1" style="font-size:50%;">5K</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.7.1.3.2.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<span class="ltx_text" id="A1.T7.7.1.3.2.1.1" style="font-size:50%;">COCO </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A1.T7.7.1.3.2.1.2.1" style="font-size:50%;">(</span>Lin et al<span class="ltx_text">.</span><span class="ltx_text" id="A1.T7.7.1.3.2.1.3.2.1.1" style="font-size:50%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib31" title="">2014</a><span class="ltx_text" id="A1.T7.7.1.3.2.1.4.3" style="font-size:50%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T7.7.1.3.2.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A1.T7.7.1.3.2.2.1" style="font-size:50%;">✔</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.1.3.2.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A1.T7.7.1.3.2.3.1" style="font-size:50%;">5K</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.1.3.2.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A1.T7.7.1.3.2.4.1" style="font-size:50%;">25K</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.7.1.4.3.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<span class="ltx_text" id="A1.T7.7.1.4.3.1.1" style="font-size:50%;">ShareGPT4V </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A1.T7.7.1.4.3.1.2.1" style="font-size:50%;">(</span>Chen et al<span class="ltx_text">.</span><span class="ltx_text" id="A1.T7.7.1.4.3.1.3.2.1.1" style="font-size:50%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib8" title="">2024</a><span class="ltx_text" id="A1.T7.7.1.4.3.1.4.3" style="font-size:50%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T7.7.1.4.3.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A1.T7.7.1.4.3.2.1" style="font-size:50%;">✔</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.1.4.3.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A1.T7.7.1.4.3.3.1" style="font-size:50%;">1K</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.1.4.3.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A1.T7.7.1.4.3.4.1" style="font-size:50%;">1K</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.7.1.5.4.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<span class="ltx_text" id="A1.T7.7.1.5.4.1.1" style="font-size:50%;">Urban1K </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A1.T7.7.1.5.4.1.2.1" style="font-size:50%;">(</span>Zhang et al<span class="ltx_text">.</span><span class="ltx_text" id="A1.T7.7.1.5.4.1.3.2.1.1" style="font-size:50%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib63" title="">2024c</a><span class="ltx_text" id="A1.T7.7.1.5.4.1.4.3" style="font-size:50%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T7.7.1.5.4.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A1.T7.7.1.5.4.2.1" style="font-size:50%;">✔</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.1.5.4.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A1.T7.7.1.5.4.3.1" style="font-size:50%;">1K</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.1.5.4.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A1.T7.7.1.5.4.4.1" style="font-size:50%;">1K</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T7.7.1.6.5.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<span class="ltx_text" id="A1.T7.7.1.6.5.1.1" style="font-size:50%;">SugarCrepe </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A1.T7.7.1.6.5.1.2.1" style="font-size:50%;">(</span>Hsieh et al<span class="ltx_text">.</span><span class="ltx_text" id="A1.T7.7.1.6.5.1.3.2.1.1" style="font-size:50%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.17432v1#bib.bib19" title="">2023</a><span class="ltx_text" id="A1.T7.7.1.6.5.1.4.3" style="font-size:50%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.7.1.6.5.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A1.T7.7.1.6.5.2.1" style="font-size:50%;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.7.1.6.5.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A1.T7.7.1.6.5.3.1" style="font-size:50%;">7.5K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.7.1.6.5.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A1.T7.7.1.6.5.4.1" style="font-size:50%;">2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table summarizes the datasets used for evaluating the UniME model's performance on various multimodal tasks.  It lists each benchmark dataset, indicating whether it's used for zero-shot evaluation and specifying the number of queries and candidate samples involved in the testing process.  This provides context on the scale and diversity of the evaluation.
> <details>
> <summary>read the caption</summary>
> Table 7. Summary of the evaluation benchmarks. # Queries represents the number of test queries, and # Candidates denotes the number of test candidates per query.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T8.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T8.4.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T8.4.1.1.1" rowspan="2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.1.1.1.1">Stage</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T8.4.1.1.2" rowspan="2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.1.1.2.1">LoRA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A2.T8.4.1.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.1.1.3.1">Average Score</span></th>
</tr>
<tr class="ltx_tr" id="A2.T8.4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T8.4.2.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.2.2.1.1">IND</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T8.4.2.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.2.2.2.1">OOD</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T8.4.2.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.2.2.3.1">Overall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T8.4.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T8.4.3.1.1" rowspan="5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A2.T8.4.3.1.1.1">Stage1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A2.T8.4.3.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">4</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.3.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">36.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.3.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">37.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.3.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">40.0</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T8.4.4.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</th>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">35.8</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">37.8</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">39.9</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T8.4.5.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">16</th>
<td class="ltx_td ltx_align_center" id="A2.T8.4.5.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">35.9</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.5.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">38.0</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.5.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">40.0</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T8.4.6.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">32</th>
<td class="ltx_td ltx_align_center" id="A2.T8.4.6.4.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.6.4.2.1">36.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.6.4.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.6.4.3.1">38.3</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.6.4.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.6.4.4.1">40.3</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.7.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T8.4.7.5.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">64</th>
<td class="ltx_td ltx_align_center" id="A2.T8.4.7.5.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">35.6</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.7.5.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">37.8</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.7.5.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">39.9</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A2.T8.4.8.6.1" rowspan="5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A2.T8.4.8.6.1.1">Stage2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A2.T8.4.8.6.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">4</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.8.6.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">67.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.8.6.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">51.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.8.6.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">62.6</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.9.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T8.4.9.7.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</th>
<td class="ltx_td ltx_align_center" id="A2.T8.4.9.7.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">68.2</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.9.7.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">51.0</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.9.7.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">63.8</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.10.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T8.4.10.8.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">16</th>
<td class="ltx_td ltx_align_center" id="A2.T8.4.10.8.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.10.8.2.1">68.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.10.8.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.10.8.3.1">52.7</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.10.8.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.10.8.4.1">64.2</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.11.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T8.4.11.9.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">32</th>
<td class="ltx_td ltx_align_center" id="A2.T8.4.11.9.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">67.6</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.11.9.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">51.8</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.11.9.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">63.2</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.12.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A2.T8.4.12.10.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">64</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.4.12.10.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">67.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.4.12.10.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">51.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.4.12.10.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">62.7</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of different LoRA (Low-Rank Adaptation) ranks within the UniME model.  The comparison is done across two distinct training stages:  Stage 1 (Textual Discriminative Knowledge Distillation) and Stage 2 (Hard Negative Enhanced Instruction Tuning). The performance is measured using average scores for in-domain (IND) and out-of-domain (OOD) tasks.  This allows for an evaluation of how different LoRA rank sizes impact the model's performance on different types of tasks during different stages of training.
> <details>
> <summary>read the caption</summary>
> Table 8. Performance comparison of different LoRA ranks under two training stages (IND: In-Domain, OOD: Out-Of-Domain)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T9.4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T9.4.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A3.T9.4.1.1.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T9.4.1.1.1.2.1" style="background-color:#D9D9D9;">CLIP</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T9.4.1.1.1.3.1" style="background-color:#D9D9D9;">SigLIP</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T9.4.1.1.1.4.1" style="background-color:#D9D9D9;">BLIP2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T9.4.1.1.1.5.1" style="background-color:#D9D9D9;">MagicLens</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A3.T9.4.1.1.1.6.1" style="background-color:#D9D9D9;">EVA-CLIP</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A3.T9.4.1.1.1.7.1" style="background-color:#D9D9D9;">E5-V</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A3.T9.4.1.1.1.8.1" style="background-color:#D9D9D9;">VLM2Vec</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A3.T9.4.1.1.1.9.1" style="background-color:#D9D9D9;">UniME</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.2.2" style="background-color:#FFD9B3;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T9.4.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A3.T9.4.1.2.2.1.1" style="background-color:#FFD9B3;">Classification (10 tasks)</span></th>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.2.2.2"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.2.2.3"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.2.2.4"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.2.2.5"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.2.2.6"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.2.2.7"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.2.2.8"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.2.2.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.3.3.1">ImageNet-1K</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.3.3.2">55.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.3.3.3">45.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.3.3.4">10.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.3.3.5">48.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.3.3.6">75.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.3.3.7">40.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.3.3.8">66.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.3.3.9">71.3</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.4.4.1">N24News</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.4.4.2">34.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.4.4.3">13.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.4.4.4">36.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.4.4.5">33.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.4.4.6">33.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.4.4.7">31.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.4.4.8">76.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.4.4.9">79.5</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.5.5.1">HatefulMemes</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.5.5.2">51.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.5.5.3">47.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.5.5.4">49.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.5.5.5">49.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.5.5.6">49.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.5.5.7">49.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.5.5.8">60.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.5.5.9">64.6</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.6.6.1">VOC2007</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.6.6.2">50.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.6.6.3">64.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.6.6.4">52.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.6.6.5">51.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.6.6.6">44.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.6.6.7">76.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.6.6.8">84.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.6.6.9">90.4</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.7.7.1">SUN397</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.7.7.2">43.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.7.7.3">39.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.7.7.4">34.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.7.7.5">57.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.7.7.6">62.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.7.7.7">52.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.7.7.8">73.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.7.7.9">75.9</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.8.8" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.8.8.1"><span class="ltx_text" id="A3.T9.4.1.8.8.1.1" style="background-color:#FFFFD9;">Place365</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.8.8.2"><span class="ltx_text" id="A3.T9.4.1.8.8.2.1" style="background-color:#FFFFD9;">28.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.8.8.3"><span class="ltx_text" id="A3.T9.4.1.8.8.3.1" style="background-color:#FFFFD9;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.8.8.4"><span class="ltx_text" id="A3.T9.4.1.8.8.4.1" style="background-color:#FFFFD9;">21.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.8.8.5"><span class="ltx_text" id="A3.T9.4.1.8.8.5.1" style="background-color:#FFFFD9;">31.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.8.8.6"><span class="ltx_text" id="A3.T9.4.1.8.8.6.1" style="background-color:#FFFFD9;">38.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.8.8.7"><span class="ltx_text" id="A3.T9.4.1.8.8.7.1" style="background-color:#FFFFD9;">32.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.8.8.8"><span class="ltx_text" id="A3.T9.4.1.8.8.8.1" style="background-color:#FFFFD9;">42.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.8.8.9"><span class="ltx_text" id="A3.T9.4.1.8.8.9.1" style="background-color:#FFFFD9;">45.6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.9.9" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.9.9.1"><span class="ltx_text" id="A3.T9.4.1.9.9.1.1" style="background-color:#FFFFD9;">ImageNet-A</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.9.9.2"><span class="ltx_text" id="A3.T9.4.1.9.9.2.1" style="background-color:#FFFFD9;">25.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.9.9.3"><span class="ltx_text" id="A3.T9.4.1.9.9.3.1" style="background-color:#FFFFD9;">42.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.9.9.4"><span class="ltx_text" id="A3.T9.4.1.9.9.4.1" style="background-color:#FFFFD9;">3.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.9.9.5"><span class="ltx_text" id="A3.T9.4.1.9.9.5.1" style="background-color:#FFFFD9;">8.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.9.9.6"><span class="ltx_text" id="A3.T9.4.1.9.9.6.1" style="background-color:#FFFFD9;">54.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.9.9.7"><span class="ltx_text" id="A3.T9.4.1.9.9.7.1" style="background-color:#FFFFD9;">18.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.9.9.8"><span class="ltx_text" id="A3.T9.4.1.9.9.8.1" style="background-color:#FFFFD9;">39.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.9.9.9"><span class="ltx_text" id="A3.T9.4.1.9.9.9.1" style="background-color:#FFFFD9;">45.5</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.10.10" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.10.10.1"><span class="ltx_text" id="A3.T9.4.1.10.10.1.1" style="background-color:#FFFFD9;">ImageNet-R</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.10.10.2"><span class="ltx_text" id="A3.T9.4.1.10.10.2.1" style="background-color:#FFFFD9;">75.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.10.10.3"><span class="ltx_text" id="A3.T9.4.1.10.10.3.1" style="background-color:#FFFFD9;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.10.10.4"><span class="ltx_text" id="A3.T9.4.1.10.10.4.1" style="background-color:#FFFFD9;">39.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.10.10.5"><span class="ltx_text" id="A3.T9.4.1.10.10.5.1" style="background-color:#FFFFD9;">70.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.10.10.6"><span class="ltx_text" id="A3.T9.4.1.10.10.6.1" style="background-color:#FFFFD9;">95.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.10.10.7"><span class="ltx_text" id="A3.T9.4.1.10.10.7.1" style="background-color:#FFFFD9;">56.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.10.10.8"><span class="ltx_text" id="A3.T9.4.1.10.10.8.1" style="background-color:#FFFFD9;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.10.10.9"><span class="ltx_text" id="A3.T9.4.1.10.10.9.1" style="background-color:#FFFFD9;">78.4</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.11.11" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.11.11.1"><span class="ltx_text" id="A3.T9.4.1.11.11.1.1" style="background-color:#FFFFD9;">ObjectNet</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.11.11.2"><span class="ltx_text" id="A3.T9.4.1.11.11.2.1" style="background-color:#FFFFD9;">43.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.11.11.3"><span class="ltx_text" id="A3.T9.4.1.11.11.3.1" style="background-color:#FFFFD9;">40.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.11.11.4"><span class="ltx_text" id="A3.T9.4.1.11.11.4.1" style="background-color:#FFFFD9;">20.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.11.11.5"><span class="ltx_text" id="A3.T9.4.1.11.11.5.1" style="background-color:#FFFFD9;">31.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.11.11.6"><span class="ltx_text" id="A3.T9.4.1.11.11.6.1" style="background-color:#FFFFD9;">67.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.11.11.7"><span class="ltx_text" id="A3.T9.4.1.11.11.7.1" style="background-color:#FFFFD9;">34.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.11.11.8"><span class="ltx_text" id="A3.T9.4.1.11.11.8.1" style="background-color:#FFFFD9;">34.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.11.11.9"><span class="ltx_text" id="A3.T9.4.1.11.11.9.1" style="background-color:#FFFFD9;">36.4</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.12.12" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.12.12.1"><span class="ltx_text" id="A3.T9.4.1.12.12.1.1" style="background-color:#FFFFD9;">Country-211</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.12.12.2"><span class="ltx_text" id="A3.T9.4.1.12.12.2.1" style="background-color:#FFFFD9;">19.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.12.12.3"><span class="ltx_text" id="A3.T9.4.1.12.12.3.1" style="background-color:#FFFFD9;">14.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.12.12.4"><span class="ltx_text" id="A3.T9.4.1.12.12.4.1" style="background-color:#FFFFD9;">2.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.12.12.5"><span class="ltx_text" id="A3.T9.4.1.12.12.5.1" style="background-color:#FFFFD9;">6.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.12.12.6"><span class="ltx_text" id="A3.T9.4.1.12.12.6.1" style="background-color:#FFFFD9;">38.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.12.12.7"><span class="ltx_text" id="A3.T9.4.1.12.12.7.1" style="background-color:#FFFFD9;">5.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.12.12.8"><span class="ltx_text" id="A3.T9.4.1.12.12.8.1" style="background-color:#FFFFD9;">16.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.12.12.9"><span class="ltx_text" id="A3.T9.4.1.12.12.9.1" style="background-color:#FFFFD9;">18.7</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.13.13.1"><span class="ltx_text ltx_font_italic" id="A3.T9.4.1.13.13.1.1">All Classification</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.13.13.2">42.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.13.13.3">40.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.13.13.4">27.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.13.13.5">38.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.13.13.6">56.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.13.13.7">39.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.13.13.8">56.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.13.13.9">60.6</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.14.14" style="background-color:#B3B3FF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T9.4.1.14.14.1"><span class="ltx_text ltx_font_bold" id="A3.T9.4.1.14.14.1.1" style="background-color:#B3B3FF;">VQA (10 tasks)</span></th>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.14.14.2"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.14.14.3"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.14.14.4"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.14.14.5"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.14.14.6"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.14.14.7"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.14.14.8"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.14.14.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.15.15.1">OK-VQA</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.15.15.2">7.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.15.15.3">2.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.15.15.4">8.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.15.15.5">12.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.15.15.6">9.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.15.15.7">15.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.15.15.8">66.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.15.15.9">68.3</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.16.16.1">A-OKVQA</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.16.16.2">3.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.16.16.3">1.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.16.16.4">3.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.16.16.5">2.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.16.16.6">2.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.16.16.7">4.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.16.16.8">54.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.16.16.9">58.7</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.17.17.1">DocVQA</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.17.17.2">4.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.17.17.3">4.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.17.17.4">2.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.17.17.5">3.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.17.17.6">7.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.17.17.7">9.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.17.17.8">64.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.17.17.9">67.6</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.18.18.1">InfographicsVQA</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.18.18.2">4.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.18.18.3">2.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.18.18.4">2.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.18.18.5">5.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.18.18.6">6.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.18.18.7">8.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.18.18.8">34.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.18.18.9">37.0</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.19.19.1">ChartQA</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.19.19.2">1.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.19.19.3">3.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.19.19.4">0.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.19.19.5">0.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.19.19.6">1.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.19.19.7">4.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.19.19.8">33.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.19.19.9">33.4</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.20.20.1">Visual7W</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.20.20.2">4.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.20.20.3">1.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.20.20.4">1.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.20.20.5">2.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.20.20.6">2.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.20.20.7">4.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.20.20.8">49.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.20.20.9">51.7</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.21.21" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.21.21.1"><span class="ltx_text" id="A3.T9.4.1.21.21.1.1" style="background-color:#FFFFD9;">ScienceQA</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.21.21.2"><span class="ltx_text" id="A3.T9.4.1.21.21.2.1" style="background-color:#FFFFD9;">9.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.21.21.3"><span class="ltx_text" id="A3.T9.4.1.21.21.3.1" style="background-color:#FFFFD9;">7.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.21.21.4"><span class="ltx_text" id="A3.T9.4.1.21.21.4.1" style="background-color:#FFFFD9;">6.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.21.21.5"><span class="ltx_text" id="A3.T9.4.1.21.21.5.1" style="background-color:#FFFFD9;">5.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.21.21.6"><span class="ltx_text" id="A3.T9.4.1.21.21.6.1" style="background-color:#FFFFD9;">14.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.21.21.7"><span class="ltx_text" id="A3.T9.4.1.21.21.7.1" style="background-color:#FFFFD9;">9.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.21.21.8"><span class="ltx_text" id="A3.T9.4.1.21.21.8.1" style="background-color:#FFFFD9;">37.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.21.21.9"><span class="ltx_text" id="A3.T9.4.1.21.21.9.1" style="background-color:#FFFFD9;">40.5</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.22.22" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.22.22.1"><span class="ltx_text" id="A3.T9.4.1.22.22.1.1" style="background-color:#FFFFD9;">VizWiz</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.22.22.2"><span class="ltx_text" id="A3.T9.4.1.22.22.2.1" style="background-color:#FFFFD9;">8.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.22.22.3"><span class="ltx_text" id="A3.T9.4.1.22.22.3.1" style="background-color:#FFFFD9;">2.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.22.22.4"><span class="ltx_text" id="A3.T9.4.1.22.22.4.1" style="background-color:#FFFFD9;">4.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.22.22.5"><span class="ltx_text" id="A3.T9.4.1.22.22.5.1" style="background-color:#FFFFD9;">1.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.22.22.6"><span class="ltx_text" id="A3.T9.4.1.22.22.6.1" style="background-color:#FFFFD9;">4.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.22.22.7"><span class="ltx_text" id="A3.T9.4.1.22.22.7.1" style="background-color:#FFFFD9;">8.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.22.22.8"><span class="ltx_text" id="A3.T9.4.1.22.22.8.1" style="background-color:#FFFFD9;">39.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.22.22.9"><span class="ltx_text" id="A3.T9.4.1.22.22.9.1" style="background-color:#FFFFD9;">42.7</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.23.23" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.23.23.1"><span class="ltx_text" id="A3.T9.4.1.23.23.1.1" style="background-color:#FFFFD9;">GQA</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.23.23.2"><span class="ltx_text" id="A3.T9.4.1.23.23.2.1" style="background-color:#FFFFD9;">41.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.23.23.3"><span class="ltx_text" id="A3.T9.4.1.23.23.3.1" style="background-color:#FFFFD9;">57.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.23.23.4"><span class="ltx_text" id="A3.T9.4.1.23.23.4.1" style="background-color:#FFFFD9;">9.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.23.23.5"><span class="ltx_text" id="A3.T9.4.1.23.23.5.1" style="background-color:#FFFFD9;">43.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.23.23.6"><span class="ltx_text" id="A3.T9.4.1.23.23.6.1" style="background-color:#FFFFD9;">44.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.23.23.7"><span class="ltx_text" id="A3.T9.4.1.23.23.7.1" style="background-color:#FFFFD9;">34.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.23.23.8"><span class="ltx_text" id="A3.T9.4.1.23.23.8.1" style="background-color:#FFFFD9;">57.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.23.23.9"><span class="ltx_text" id="A3.T9.4.1.23.23.9.1" style="background-color:#FFFFD9;">63.6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.24.24" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.24.24.1"><span class="ltx_text" id="A3.T9.4.1.24.24.1.1" style="background-color:#FFFFD9;">TextVQA</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.24.24.2"><span class="ltx_text" id="A3.T9.4.1.24.24.2.1" style="background-color:#FFFFD9;">7.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.24.24.3"><span class="ltx_text" id="A3.T9.4.1.24.24.3.1" style="background-color:#FFFFD9;">1.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.24.24.4"><span class="ltx_text" id="A3.T9.4.1.24.24.4.1" style="background-color:#FFFFD9;">3.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.24.24.5"><span class="ltx_text" id="A3.T9.4.1.24.24.5.1" style="background-color:#FFFFD9;">4.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.24.24.6"><span class="ltx_text" id="A3.T9.4.1.24.24.6.1" style="background-color:#FFFFD9;">10.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.24.24.7"><span class="ltx_text" id="A3.T9.4.1.24.24.7.1" style="background-color:#FFFFD9;">9.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.24.24.8"><span class="ltx_text" id="A3.T9.4.1.24.24.8.1" style="background-color:#FFFFD9;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.24.24.9"><span class="ltx_text" id="A3.T9.4.1.24.24.9.1" style="background-color:#FFFFD9;">65.2</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.25.25.1"><span class="ltx_text ltx_font_italic" id="A3.T9.4.1.25.25.1.1">All VQA</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.25.25.2">9.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.25.25.3">8.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.25.25.4">4.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.25.25.5">8.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.25.25.6">10.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.25.25.7">10.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.25.25.8">50.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.25.25.9">52.9</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.26.26" style="background-color:#B3FFB3;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T9.4.1.26.26.1"><span class="ltx_text ltx_font_bold" id="A3.T9.4.1.26.26.1.1" style="background-color:#B3FFB3;">Retrieval (12 tasks)</span></th>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.26.26.2"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.26.26.3"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.26.26.4"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.26.26.5"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.26.26.6"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.26.26.7"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.26.26.8"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.26.26.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.27.27.1">VisDial</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.27.27.2">30.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.27.27.3">21.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.27.27.4">18.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.27.27.5">24.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.27.27.6">20.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.27.27.7">57.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.27.27.8">75.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.27.27.9">79.7</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.28.28.1">CIRR</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.28.28.2">12.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.28.28.3">15.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.28.28.4">9.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.28.28.5">39.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.28.28.6">36.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.28.28.7">41.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.28.28.8">51.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.28.28.9">52.2</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.29.29.1">VisualNews_t2i</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.29.29.2">78.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.29.29.3">51.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.29.29.4">48.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.29.29.5">50.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.29.29.6">82.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.29.29.7">43.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.29.29.8">70.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.29.29.9">74.8</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.30.30.1">VisualNews_i2t</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.30.30.2">79.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.30.30.3">52.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.30.30.4">13.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.30.30.5">21.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.30.30.6">88.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.30.30.7">46.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.30.30.8">75.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.30.30.9">78.8</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.31.31.1">MSCOCO_t2i</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.31.31.2">59.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.31.31.3">58.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.31.31.4">53.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.31.31.5">54.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.31.31.6">65.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.31.31.7">68.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.31.31.8">69.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.31.31.9">74.9</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.32.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.32.32.1">MSCOCO_i2t</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.32.32.2">57.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.32.32.3">55.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.32.32.4">20.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.32.32.5">40.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.32.32.6">67.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.32.32.7">54.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.32.32.8">67.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.32.32.9">73.8</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.33.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.33.33.1">NIGHTS</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.33.33.2">60.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.33.33.3">62.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.33.33.4">56.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.33.33.5">58.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.33.33.6">0.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.33.33.7">0.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.33.33.8">63.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.33.33.9">66.2</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.34.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.34.34.1">WebQA</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.34.34.2">67.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.34.34.3">58.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.34.34.4">55.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.34.34.5">43.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.34.34.6">70.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.34.34.7">33.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.34.34.8">83.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.34.34.9">89.8</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.35.35" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.35.35.1"><span class="ltx_text" id="A3.T9.4.1.35.35.1.1" style="background-color:#FFFFD9;">FashionIQ</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.35.35.2"><span class="ltx_text" id="A3.T9.4.1.35.35.2.1" style="background-color:#FFFFD9;">11.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.35.35.3"><span class="ltx_text" id="A3.T9.4.1.35.35.3.1" style="background-color:#FFFFD9;">20.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.35.35.4"><span class="ltx_text" id="A3.T9.4.1.35.35.4.1" style="background-color:#FFFFD9;">9.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.35.35.5"><span class="ltx_text" id="A3.T9.4.1.35.35.5.1" style="background-color:#FFFFD9;">11.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.35.35.6"><span class="ltx_text" id="A3.T9.4.1.35.35.6.1" style="background-color:#FFFFD9;">16.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.35.35.7"><span class="ltx_text" id="A3.T9.4.1.35.35.7.1" style="background-color:#FFFFD9;">11.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.35.35.8"><span class="ltx_text" id="A3.T9.4.1.35.35.8.1" style="background-color:#FFFFD9;">15.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.35.35.9"><span class="ltx_text" id="A3.T9.4.1.35.35.9.1" style="background-color:#FFFFD9;">16.5</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.36.36" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.36.36.1"><span class="ltx_text" id="A3.T9.4.1.36.36.1.1" style="background-color:#FFFFD9;">Wiki-SS-NQ</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.36.36.2"><span class="ltx_text" id="A3.T9.4.1.36.36.2.1" style="background-color:#FFFFD9;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.36.36.3"><span class="ltx_text" id="A3.T9.4.1.36.36.3.1" style="background-color:#FFFFD9;">55.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.36.36.4"><span class="ltx_text" id="A3.T9.4.1.36.36.4.1" style="background-color:#FFFFD9;">28.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.36.36.5"><span class="ltx_text" id="A3.T9.4.1.36.36.5.1" style="background-color:#FFFFD9;">18.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.36.36.6"><span class="ltx_text" id="A3.T9.4.1.36.36.6.1" style="background-color:#FFFFD9;">46.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.36.36.7"><span class="ltx_text" id="A3.T9.4.1.36.36.7.1" style="background-color:#FFFFD9;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.36.36.8"><span class="ltx_text" id="A3.T9.4.1.36.36.8.1" style="background-color:#FFFFD9;">63.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.36.36.9"><span class="ltx_text" id="A3.T9.4.1.36.36.9.1" style="background-color:#FFFFD9;">66.6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.37.37" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.37.37.1"><span class="ltx_text" id="A3.T9.4.1.37.37.1.1" style="background-color:#FFFFD9;">OVEN</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.37.37.2"><span class="ltx_text" id="A3.T9.4.1.37.37.2.1" style="background-color:#FFFFD9;">41.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.37.37.3"><span class="ltx_text" id="A3.T9.4.1.37.37.3.1" style="background-color:#FFFFD9;">56.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.37.37.4"><span class="ltx_text" id="A3.T9.4.1.37.37.4.1" style="background-color:#FFFFD9;">39.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.37.37.5"><span class="ltx_text" id="A3.T9.4.1.37.37.5.1" style="background-color:#FFFFD9;">1.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.37.37.6"><span class="ltx_text" id="A3.T9.4.1.37.37.6.1" style="background-color:#FFFFD9;">1.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.37.37.7"><span class="ltx_text" id="A3.T9.4.1.37.37.7.1" style="background-color:#FFFFD9;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.37.37.8"><span class="ltx_text" id="A3.T9.4.1.37.37.8.1" style="background-color:#FFFFD9;">49.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.37.37.9"><span class="ltx_text" id="A3.T9.4.1.37.37.9.1" style="background-color:#FFFFD9;">55.7</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.38.38" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.38.38.1"><span class="ltx_text" id="A3.T9.4.1.38.38.1.1" style="background-color:#FFFFD9;">EDIS</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.38.38.2"><span class="ltx_text" id="A3.T9.4.1.38.38.2.1" style="background-color:#FFFFD9;">81.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.38.38.3"><span class="ltx_text" id="A3.T9.4.1.38.38.3.1" style="background-color:#FFFFD9;">23.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.38.38.4"><span class="ltx_text" id="A3.T9.4.1.38.38.4.1" style="background-color:#FFFFD9;">54.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.38.38.5"><span class="ltx_text" id="A3.T9.4.1.38.38.5.1" style="background-color:#FFFFD9;">62.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.38.38.6"><span class="ltx_text" id="A3.T9.4.1.38.38.6.1" style="background-color:#FFFFD9;">95.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.38.38.7"><span class="ltx_text" id="A3.T9.4.1.38.38.7.1" style="background-color:#FFFFD9;">53.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.38.38.8"><span class="ltx_text" id="A3.T9.4.1.38.38.8.1" style="background-color:#FFFFD9;">73.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.38.38.9"><span class="ltx_text" id="A3.T9.4.1.38.38.9.1" style="background-color:#FFFFD9;">86.2</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.39.39">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.39.39.1"><span class="ltx_text ltx_font_italic" id="A3.T9.4.1.39.39.1.1">All Retrieval</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.39.39.2">53.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.39.39.3">31.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.39.39.4">33.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.39.39.5">35.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.39.39.6">49.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.39.39.7">39.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.39.39.8">63.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.39.39.9">67.9</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.40.40" style="background-color:#ECB3C6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T9.4.1.40.40.1"><span class="ltx_text ltx_font_bold" id="A3.T9.4.1.40.40.1.1" style="background-color:#ECB3C6;">Visual Grounding (4 tasks)</span></th>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.40.40.2"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.40.40.3"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.40.40.4"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.40.40.5"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.40.40.6"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.40.40.7"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.40.40.8"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.40.40.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.41.41">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.41.41.1">MSCOCO</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.41.41.2">33.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.41.41.3">46.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.41.41.4">28.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.41.41.5">22.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.41.41.6">35.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.41.41.7">41.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.41.41.8">77.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.41.41.9">76.5</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.42.42" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.42.42.1"><span class="ltx_text" id="A3.T9.4.1.42.42.1.1" style="background-color:#FFFFD9;">RefCOCO</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.42.42.2"><span class="ltx_text" id="A3.T9.4.1.42.42.2.1" style="background-color:#FFFFD9;">56.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.42.42.3"><span class="ltx_text" id="A3.T9.4.1.42.42.3.1" style="background-color:#FFFFD9;">70.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.42.42.4"><span class="ltx_text" id="A3.T9.4.1.42.42.4.1" style="background-color:#FFFFD9;">47.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.42.42.5"><span class="ltx_text" id="A3.T9.4.1.42.42.5.1" style="background-color:#FFFFD9;">22.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.42.42.6"><span class="ltx_text" id="A3.T9.4.1.42.42.6.1" style="background-color:#FFFFD9;">59.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.42.42.7"><span class="ltx_text" id="A3.T9.4.1.42.42.7.1" style="background-color:#FFFFD9;">62.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.42.42.8"><span class="ltx_text" id="A3.T9.4.1.42.42.8.1" style="background-color:#FFFFD9;">85.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.42.42.9"><span class="ltx_text" id="A3.T9.4.1.42.42.9.1" style="background-color:#FFFFD9;">89.3</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.43.43" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.43.43.1"><span class="ltx_text" id="A3.T9.4.1.43.43.1.1" style="background-color:#FFFFD9;">RefCOCO-matching</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.43.43.2"><span class="ltx_text" id="A3.T9.4.1.43.43.2.1" style="background-color:#FFFFD9;">61.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.43.43.3"><span class="ltx_text" id="A3.T9.4.1.43.43.3.1" style="background-color:#FFFFD9;">50.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.43.43.4"><span class="ltx_text" id="A3.T9.4.1.43.43.4.1" style="background-color:#FFFFD9;">59.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.43.43.5"><span class="ltx_text" id="A3.T9.4.1.43.43.5.1" style="background-color:#FFFFD9;">35.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.43.43.6"><span class="ltx_text" id="A3.T9.4.1.43.43.6.1" style="background-color:#FFFFD9;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.43.43.7"><span class="ltx_text" id="A3.T9.4.1.43.43.7.1" style="background-color:#FFFFD9;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.43.43.8"><span class="ltx_text" id="A3.T9.4.1.43.43.8.1" style="background-color:#FFFFD9;">83.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.43.43.9"><span class="ltx_text" id="A3.T9.4.1.43.43.9.1" style="background-color:#FFFFD9;">90.6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.44.44" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.44.44.1"><span class="ltx_text" id="A3.T9.4.1.44.44.1.1" style="background-color:#FFFFD9;">Visual7W-pointing</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.44.44.2"><span class="ltx_text" id="A3.T9.4.1.44.44.2.1" style="background-color:#FFFFD9;">55.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.44.44.3"><span class="ltx_text" id="A3.T9.4.1.44.44.3.1" style="background-color:#FFFFD9;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.44.44.4"><span class="ltx_text" id="A3.T9.4.1.44.44.4.1" style="background-color:#FFFFD9;">52.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.44.44.5"><span class="ltx_text" id="A3.T9.4.1.44.44.5.1" style="background-color:#FFFFD9;">23.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.44.44.6"><span class="ltx_text" id="A3.T9.4.1.44.44.6.1" style="background-color:#FFFFD9;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.44.44.7"><span class="ltx_text" id="A3.T9.4.1.44.44.7.1" style="background-color:#FFFFD9;">61.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.44.44.8"><span class="ltx_text" id="A3.T9.4.1.44.44.8.1" style="background-color:#FFFFD9;">83.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.44.44.9"><span class="ltx_text" id="A3.T9.4.1.44.44.9.1" style="background-color:#FFFFD9;">84.1</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.45.45">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.45.45.1"><span class="ltx_text ltx_font_italic" id="A3.T9.4.1.45.45.1.1">All Visual Grounding</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.45.45.2">51.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.45.45.3">59.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.45.45.4">47.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.45.45.5">26.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.45.45.6">58.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.45.45.7">60.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.45.45.8">82.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.45.45.9">85.1</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.46.46" style="background-color:#D9FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T9.4.1.46.46.1"><span class="ltx_text ltx_font_bold" id="A3.T9.4.1.46.46.1.1" style="background-color:#D9FFFF;">Final Score (36 tasks)</span></th>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.46.46.2"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.46.46.3"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.46.46.4"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.46.46.5"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.46.46.6"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.46.46.7"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.46.46.8"></td>
<td class="ltx_td ltx_border_t" id="A3.T9.4.1.46.46.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.47.47">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.47.47.1">All</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.47.47.2">39.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.47.47.3">35.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.47.47.4">28.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.47.47.5">27.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.47.47.6">43.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.47.47.7">37.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.47.47.8">63.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.47.47.9">66.6</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.48.48">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.4.1.48.48.1">All IND</th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.48.48.2">37.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.48.48.3">32.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.48.48.4">25.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.48.48.5">31.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.48.48.6">38.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.48.48.7">34.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.48.48.8">64.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.1.48.48.9">68.4</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.1.49.49">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A3.T9.4.1.49.49.1">All OOD</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.1.49.49.2">38.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.1.49.49.3">38.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.1.49.49.4">25.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.1.49.49.5">23.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.1.49.49.6">45.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.1.49.49.7">33.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.1.49.49.8">53.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.1.49.49.9">57.9</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 9 presents a comprehensive comparison of different vision-language models' performance on the Massive Multimodal Embedding Benchmark (MMEB).  MMEB consists of 36 datasets, categorized into in-distribution (20) and out-of-distribution (16) sets, each testing various capabilities (classification, VQA, retrieval, and visual grounding). The table showcases the performance (Precision@1) of several baseline models (CLIP, SigLIP, BLIP2, MagicLens, EVA-CLIP, and E5-V) alongside the proposed UniME model.  To ensure a fair comparison, only the best-performing configurations of UniME, E5-V, and VLM2Vec (all using the LLaVA-1.6 backbone) are included. Out-of-distribution datasets are visually distinguished in the table by a yellow background.
> <details>
> <summary>read the caption</summary>
> Table 9. The detailed results of the baselines and our UniMEon MMEB, which includes 20 in-distribution datasets and 16 out-of-distribution datasets. The out-of-distribution datasets are highlighted with a yellow background in the table. We only introduce the best version of UniME, E5-V and VLM2Vec in the table, which uses LLaVA-1.6 as backone.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.17432/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17432/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17432/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17432/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17432/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17432/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17432/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17432/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17432/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17432/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17432/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17432/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17432/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}