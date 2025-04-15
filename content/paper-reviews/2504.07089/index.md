---
title: "OmniCaptioner: One Captioner to Rule Them All"
summary: "OmniCaptioner: One Captioner to Rule Them All! The paper introduces a versatile framework for generating fine-grained image descriptions across diverse visual domains."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Shanghai Artificial Intelligence Laboratory",]
showSummary: true
date: 2025-04-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.07089 {{< /keyword >}}
{{< keyword icon="writer" >}} Yiting Lu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.07089" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.07089" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.07089/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Multimodal Large Language Models** (MLLMs) have made significant strides in image captioning and visual question answering, but they still struggle with perceptual accuracy in visual-text and structured image domains, especially with synthesized images. Recent research highlights the importance of image captioning in aligning modalities during multimodal pretraining and enhancing perception and reasoning. However, there is a need for a unified framework that can handle diverse visual domains, as current MLLMs often fall short of textual reasoning abilities compared to text-only LLMs. To solve the issues, OMNICAPTIONER is proposed. 



OMNICAPTIONER generates fine-grained textual descriptions across diverse visual domains, **bridging the gap between visual and textual modalities**. It converts low-level pixel information into semantically rich textual representations, preserving crucial visual details. This framework enhances visual reasoning with LLMs, improves image generation, and enables efficient supervised fine-tuning with less data. OMNICAPTIONER has a diverse visual domain coverage including natural images, visual text images and structured images. By using this versatile framework, it offers a new perspective for bridging the gap between language and visual modalities.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} OmniCaptioner provides a unified approach to captioning natural images, visual text, and structured visuals. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework enhances visual reasoning in LLMs without additional fine-tuning by converting pixel data to detailed textual descriptions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Comprehensive evaluations show improvements in visual reasoning, image generation, and supervised fine-tuning tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers aiming to **enhance visual-language understanding and multimodal pretraining**. It offers a practical, scalable framework that leverages diverse data sources, caption formulas, and system prompts. The open-source nature and comprehensive benchmark evaluations make it a valuable resource for future research in this area.

------
#### Visual Insights



![](https://arxiv.org/html/2504.07089/x3.png)

> 🔼 The figure showcases OmniCaptioner's versatility in handling diverse visual data types, ranging from natural images and visual text (like posters and UIs) to structured visuals (tables, charts, and diagrams).  The top part visually demonstrates this capability across various domains. The bottom part illustrates three key applications: visual reasoning (leveraging the power of LLMs), image generation (integrated with text-to-image models), and efficient supervised fine-tuning (SFT) for downstream tasks. This highlights OmniCaptioner's ability to bridge the gap between visual and textual modalities.
> <details>
> <summary>read the caption</summary>
> Figure 1: OmniCaptioner: the top section demonstrates its capability to process diverse visual domains. The bottom section highlights its applications in visual reasoning (associated with reasoning LLM), image generation (integrated with T2I generation models), and efficient downstream SFT tasks adaptation.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.7.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.7.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T1.7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T1.7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.1.2.1" style="font-size:90%;">MME</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.1.3.1" style="font-size:90%;">MMMU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.1.4.1" style="font-size:90%;">MathVision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.1.5.1" style="font-size:90%;">MathVerse</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.1.6.1" style="font-size:90%;">Olympiad</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T1.7.1.2.2.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.7.1.2.2.1.1" style="font-size:90%;">Frontier Models</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.3.3.1"><span class="ltx_text" id="S4.T1.7.1.3.3.1.1" style="font-size:90%;">GPT-4V</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.3.3.2"><span class="ltx_text" id="S4.T1.7.1.3.3.2.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.3.3.3"><span class="ltx_text" id="S4.T1.7.1.3.3.3.1" style="font-size:90%;">63.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.3.3.4"><span class="ltx_text" id="S4.T1.7.1.3.3.4.1" style="font-size:90%;">24.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.3.3.5"><span class="ltx_text" id="S4.T1.7.1.3.3.5.1" style="font-size:90%;">32.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.3.3.6"><span class="ltx_text" id="S4.T1.7.1.3.3.6.1" style="font-size:90%;">18.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.4.4.1"><span class="ltx_text" id="S4.T1.7.1.4.4.1.1" style="font-size:90%;">GPT-4o (2024-05)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.4.4.2"><span class="ltx_text" id="S4.T1.7.1.4.4.2.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.4.4.3"><span class="ltx_text" id="S4.T1.7.1.4.4.3.1" style="font-size:90%;">69.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.4.4.4"><span class="ltx_text" id="S4.T1.7.1.4.4.4.1" style="font-size:90%;">30.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.4.4.5"><span class="ltx_text" id="S4.T1.7.1.4.4.5.1" style="font-size:90%;">50.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.4.4.6"><span class="ltx_text" id="S4.T1.7.1.4.4.6.1" style="font-size:90%;">25.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.5.5.1"><span class="ltx_text" id="S4.T1.7.1.5.5.1.1" style="font-size:90%;">Claude3.5-Sonnet</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.5.5.2"><span class="ltx_text" id="S4.T1.7.1.5.5.2.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.5.5.3"><span class="ltx_text" id="S4.T1.7.1.5.5.3.1" style="font-size:90%;">68.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.5.5.4"><span class="ltx_text" id="S4.T1.7.1.5.5.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.5.5.5"><span class="ltx_text" id="S4.T1.7.1.5.5.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.5.5.6"><span class="ltx_text" id="S4.T1.7.1.5.5.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T1.7.1.6.6.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.7.1.6.6.1.1" style="font-size:90%;">3B-Level Models</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.7.7.1">
<span class="ltx_text" id="S4.T1.7.1.7.7.1.1" style="font-size:90%;">Qwen2-VL-2B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.1.7.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S4.T1.7.1.7.7.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.7.7.2"><span class="ltx_text" id="S4.T1.7.1.7.7.2.1" style="font-size:90%;">1872</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.7.7.3"><span class="ltx_text" id="S4.T1.7.1.7.7.3.1" style="font-size:90%;">41.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.7.7.4"><span class="ltx_text" id="S4.T1.7.1.7.7.4.1" style="font-size:90%;">12.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.7.7.5"><span class="ltx_text" id="S4.T1.7.1.7.7.5.1" style="font-size:90%;">21.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.7.7.6"><span class="ltx_text" id="S4.T1.7.1.7.7.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.8.8.1">
<span class="ltx_text" id="S4.T1.7.1.8.8.1.1" style="font-size:90%;">InternVL2-2B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.1.8.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S4.T1.7.1.8.8.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.8.8.2"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.8.8.2.1" style="font-size:90%;">1876</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.8.8.3"><span class="ltx_text" id="S4.T1.7.1.8.8.3.1" style="font-size:90%;">36.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.8.8.4"><span class="ltx_text" id="S4.T1.7.1.8.8.4.1" style="font-size:90%;">12.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.8.8.5"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.8.8.5.1" style="font-size:90%;">25.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.8.8.6"><span class="ltx_text" id="S4.T1.7.1.8.8.6.1" style="font-size:90%;">0.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.9.9.1">
<span class="ltx_text" id="S4.T1.7.1.9.9.1.1" style="font-size:90%;">MinniCPM-V2.0 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.1.9.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a><span class="ltx_text" id="S4.T1.7.1.9.9.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.9.9.2"><span class="ltx_text" id="S4.T1.7.1.9.9.2.1" style="font-size:90%;">1808</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.9.9.3"><span class="ltx_text" id="S4.T1.7.1.9.9.3.1" style="font-size:90%;">38.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.9.9.4"><span class="ltx_text" id="S4.T1.7.1.9.9.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.9.9.5"><span class="ltx_text" id="S4.T1.7.1.9.9.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.9.9.6"><span class="ltx_text" id="S4.T1.7.1.9.9.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.10.10" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.10.10.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.7.1.10.10.1.1" style="font-size:90%;background-color:#D9D9D9;">OmniCaptioner<span class="ltx_text ltx_font_upright" id="S4.T1.7.1.10.10.1.1.1"> + Qwen2.5-3B-Instruct</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.10.10.2"><span class="ltx_text" id="S4.T1.7.1.10.10.2.1" style="font-size:90%;background-color:#D9D9D9;">1599</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.10.10.3"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.10.10.3.1" style="font-size:90%;background-color:#D9D9D9;">43.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.10.10.4"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.10.10.4.1" style="font-size:90%;background-color:#D9D9D9;">16.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.10.10.5"><span class="ltx_text" id="S4.T1.7.1.10.10.5.1" style="font-size:90%;background-color:#D9D9D9;">22.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.10.10.6"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.10.10.6.1" style="font-size:90%;background-color:#D9D9D9;">7.24</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.11.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T1.7.1.11.11.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.7.1.11.11.1.1" style="font-size:90%;">7B-Level Models</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.12.12.1">
<span class="ltx_text" id="S4.T1.7.1.12.12.1.1" style="font-size:90%;">Qwen2-VL-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.1.12.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S4.T1.7.1.12.12.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.12.12.2"><span class="ltx_text" id="S4.T1.7.1.12.12.2.1" style="font-size:90%;">2327</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.12.12.3"><span class="ltx_text" id="S4.T1.7.1.12.12.3.1" style="font-size:90%;">54.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.12.12.4"><span class="ltx_text" id="S4.T1.7.1.12.12.4.1" style="font-size:90%;">16.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.12.12.5"><span class="ltx_text" id="S4.T1.7.1.12.12.5.1" style="font-size:90%;">31.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.12.12.6"><span class="ltx_text" id="S4.T1.7.1.12.12.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.13.13.1">
<span class="ltx_text" id="S4.T1.7.1.13.13.1.1" style="font-size:90%;">InternVL2-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.1.13.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S4.T1.7.1.13.13.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.13.13.2"><span class="ltx_text" id="S4.T1.7.1.13.13.2.1" style="font-size:90%;">2210</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.13.13.3"><span class="ltx_text" id="S4.T1.7.1.13.13.3.1" style="font-size:90%;">52.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.13.13.4"><span class="ltx_text" id="S4.T1.7.1.13.13.4.1" style="font-size:90%;">18.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.13.13.5"><span class="ltx_text" id="S4.T1.7.1.13.13.5.1" style="font-size:90%;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.13.13.6"><span class="ltx_text" id="S4.T1.7.1.13.13.6.1" style="font-size:90%;">1.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.14.14.1">
<span class="ltx_text" id="S4.T1.7.1.14.14.1.1" style="font-size:90%;">MiniCPM-Llama-V-2.5-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.1.14.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a><span class="ltx_text" id="S4.T1.7.1.14.14.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S4.T1.7.1.14.14.1.4" style="font-size:90%;"> 2024</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.14.14.2"><span class="ltx_text" id="S4.T1.7.1.14.14.2.1" style="font-size:90%;">45.8</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.14.14.3"><span class="ltx_text" id="S4.T1.7.1.14.14.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.14.14.4"><span class="ltx_text" id="S4.T1.7.1.14.14.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.14.14.5"><span class="ltx_text" id="S4.T1.7.1.14.14.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.14.14.6"><span class="ltx_text" id="S4.T1.7.1.14.14.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.15.15.1">
<span class="ltx_text" id="S4.T1.7.1.15.15.1.1" style="font-size:90%;">Cambrain-1-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.1.15.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S4.T1.7.1.15.15.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.15.15.2"><span class="ltx_text" id="S4.T1.7.1.15.15.2.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.15.15.3"><span class="ltx_text" id="S4.T1.7.1.15.15.3.1" style="font-size:90%;">42.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.15.15.4"><span class="ltx_text" id="S4.T1.7.1.15.15.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.15.15.5"><span class="ltx_text" id="S4.T1.7.1.15.15.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.15.15.6"><span class="ltx_text" id="S4.T1.7.1.15.15.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.16.16.1">
<span class="ltx_text" id="S4.T1.7.1.16.16.1.1" style="font-size:90%;">LLava-Onevision-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.1.16.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S4.T1.7.1.16.16.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.16.16.2"><span class="ltx_text" id="S4.T1.7.1.16.16.2.1" style="font-size:90%;">1998</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.16.16.3"><span class="ltx_text" id="S4.T1.7.1.16.16.3.1" style="font-size:90%;">48.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.16.16.4"><span class="ltx_text" id="S4.T1.7.1.16.16.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.16.16.5"><span class="ltx_text" id="S4.T1.7.1.16.16.5.1" style="font-size:90%;">26.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.16.16.6"><span class="ltx_text" id="S4.T1.7.1.16.16.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.17.17.1">
<span class="ltx_text" id="S4.T1.7.1.17.17.1.1" style="font-size:90%;">MiniCPM-V2.6 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.1.17.17.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a><span class="ltx_text" id="S4.T1.7.1.17.17.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.17.17.2"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.17.17.2.1" style="font-size:90%;">2348</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.17.17.3"><span class="ltx_text" id="S4.T1.7.1.17.17.3.1" style="font-size:90%;">49.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.17.17.4"><span class="ltx_text" id="S4.T1.7.1.17.17.4.1" style="font-size:90%;">18.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.17.17.5"><span class="ltx_text" id="S4.T1.7.1.17.17.5.1" style="font-size:90%;">25.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.17.17.6"><span class="ltx_text" id="S4.T1.7.1.17.17.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.18.18" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.18.18.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.7.1.18.18.1.1" style="font-size:90%;background-color:#D9D9D9;">OmniCaptioner<span class="ltx_text ltx_font_upright" id="S4.T1.7.1.18.18.1.1.1"> + Qwen2.5-7B-Instruct</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.18.18.2"><span class="ltx_text" id="S4.T1.7.1.18.18.2.1" style="font-size:90%;background-color:#D9D9D9;">1824</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.18.18.3"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.18.18.3.1" style="font-size:90%;background-color:#D9D9D9;">54.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.18.18.4"><span class="ltx_text" id="S4.T1.7.1.18.18.4.1" style="font-size:90%;background-color:#D9D9D9;">26.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.18.18.5"><span class="ltx_text" id="S4.T1.7.1.18.18.5.1" style="font-size:90%;background-color:#D9D9D9;">37.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.18.18.6"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.18.18.6.1" style="font-size:90%;background-color:#D9D9D9;">10.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.19.19" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.19.19.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.7.1.19.19.1.1" style="font-size:90%;background-color:#D9D9D9;">OmniCaptioner<span class="ltx_text ltx_font_upright" id="S4.T1.7.1.19.19.1.1.1"> + DS-R1-Distill-Qwen-7B</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.19.19.2"><span class="ltx_text" id="S4.T1.7.1.19.19.2.1" style="font-size:90%;background-color:#D9D9D9;">1942</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.19.19.3"><span class="ltx_text" id="S4.T1.7.1.19.19.3.1" style="font-size:90%;background-color:#D9D9D9;">47.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.19.19.4"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.19.19.4.1" style="font-size:90%;background-color:#D9D9D9;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.19.19.5"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.19.19.5.1" style="font-size:90%;background-color:#D9D9D9;">40.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.19.19.6"><span class="ltx_text" id="S4.T1.7.1.19.19.6.1" style="font-size:90%;background-color:#D9D9D9;">7.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.20.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T1.7.1.20.20.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.7.1.20.20.1.1" style="font-size:90%;">32B-Level Models</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.21.21.1">
<span class="ltx_text" id="S4.T1.7.1.21.21.1.1" style="font-size:90%;">InternVL-Chat-V1.5 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.1.21.21.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S4.T1.7.1.21.21.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.21.21.2"><span class="ltx_text" id="S4.T1.7.1.21.21.2.1" style="font-size:90%;">2194</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.21.21.3"><span class="ltx_text" id="S4.T1.7.1.21.21.3.1" style="font-size:90%;">46.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.21.21.4"><span class="ltx_text" id="S4.T1.7.1.21.21.4.1" style="font-size:90%;">15.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.21.21.5"><span class="ltx_text" id="S4.T1.7.1.21.21.5.1" style="font-size:90%;">28.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.21.21.6"><span class="ltx_text" id="S4.T1.7.1.21.21.6.1" style="font-size:90%;">0.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.22.22.1">
<span class="ltx_text" id="S4.T1.7.1.22.22.1.1" style="font-size:90%;">InternVL2-26B 
</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.1.22.22.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S4.T1.7.1.22.22.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.22.22.2"><span class="ltx_text" id="S4.T1.7.1.22.22.2.1" style="font-size:90%;">2260</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.22.22.3"><span class="ltx_text" id="S4.T1.7.1.22.22.3.1" style="font-size:90%;">51.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.22.22.4"><span class="ltx_text" id="S4.T1.7.1.22.22.4.1" style="font-size:90%;">17.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.22.22.5"><span class="ltx_text" id="S4.T1.7.1.22.22.5.1" style="font-size:90%;">31.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.22.22.6"><span class="ltx_text" id="S4.T1.7.1.22.22.6.1" style="font-size:90%;">3.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.23.23.1">
<span class="ltx_text" id="S4.T1.7.1.23.23.1.1" style="font-size:90%;">Cambrian-34B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.1.23.23.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S4.T1.7.1.23.23.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.23.23.2"><span class="ltx_text" id="S4.T1.7.1.23.23.2.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.23.23.3"><span class="ltx_text" id="S4.T1.7.1.23.23.3.1" style="font-size:90%;">49.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.23.23.4"><span class="ltx_text" id="S4.T1.7.1.23.23.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.23.23.5"><span class="ltx_text" id="S4.T1.7.1.23.23.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.23.23.6"><span class="ltx_text" id="S4.T1.7.1.23.23.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.24.24.1"><span class="ltx_text" id="S4.T1.7.1.24.24.1.1" style="font-size:90%;">VILA-1.5-40B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.24.24.2"><span class="ltx_text" id="S4.T1.7.1.24.24.2.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.24.24.3"><span class="ltx_text" id="S4.T1.7.1.24.24.3.1" style="font-size:90%;">55.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.24.24.4"><span class="ltx_text" id="S4.T1.7.1.24.24.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.24.24.5"><span class="ltx_text" id="S4.T1.7.1.24.24.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.24.24.6"><span class="ltx_text" id="S4.T1.7.1.24.24.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.25.25.1"><span class="ltx_text" id="S4.T1.7.1.25.25.1.1" style="font-size:90%;">InternVL2-40B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.25.25.2"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.25.25.2.1" style="font-size:90%;">2307</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.25.25.3"><span class="ltx_text" id="S4.T1.7.1.25.25.3.1" style="font-size:90%;">55.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.25.25.4"><span class="ltx_text" id="S4.T1.7.1.25.25.4.1" style="font-size:90%;">16.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.25.25.5"><span class="ltx_text" id="S4.T1.7.1.25.25.5.1" style="font-size:90%;">36.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.25.25.6"><span class="ltx_text" id="S4.T1.7.1.25.25.6.1" style="font-size:90%;">3.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.26.26" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.26.26.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.7.1.26.26.1.1" style="font-size:90%;background-color:#D9D9D9;">OmniCaptioner<span class="ltx_text ltx_font_upright" id="S4.T1.7.1.26.26.1.1.1"> + Qwen2.5-32B-Instruct</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.26.26.2"><span class="ltx_text" id="S4.T1.7.1.26.26.2.1" style="font-size:90%;background-color:#D9D9D9;">1831</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.26.26.3"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.26.26.3.1" style="font-size:90%;background-color:#D9D9D9;">59.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.26.26.4"><span class="ltx_text" id="S4.T1.7.1.26.26.4.1" style="font-size:90%;background-color:#D9D9D9;">32.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.26.26.5"><span class="ltx_text" id="S4.T1.7.1.26.26.5.1" style="font-size:90%;background-color:#D9D9D9;">39.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.26.26.6"><span class="ltx_text" id="S4.T1.7.1.26.26.6.1" style="font-size:90%;background-color:#D9D9D9;">13.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.27.27" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.27.27.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.7.1.27.27.1.1" style="font-size:90%;background-color:#D9D9D9;">OmniCaptioner<span class="ltx_text ltx_font_upright" id="S4.T1.7.1.27.27.1.1.1"> + DS-R1-Distill-Qwen-32B</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.27.27.2"><span class="ltx_text" id="S4.T1.7.1.27.27.2.1" style="font-size:90%;background-color:#D9D9D9;">2007</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.27.27.3"><span class="ltx_text" id="S4.T1.7.1.27.27.3.1" style="font-size:90%;background-color:#D9D9D9;">59.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.27.27.4"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.27.27.4.1" style="font-size:90%;background-color:#D9D9D9;">43.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.27.27.5"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.27.27.5.1" style="font-size:90%;background-color:#D9D9D9;">43.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.27.27.6"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.27.27.6.1" style="font-size:90%;background-color:#D9D9D9;">13.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.28.28">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T1.7.1.28.28.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.7.1.28.28.1.1" style="font-size:90%;">72B-Level Models</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.29.29.1">
<span class="ltx_text" id="S4.T1.7.1.29.29.1.1" style="font-size:90%;">Qwen2-VL-72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.1.29.29.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S4.T1.7.1.29.29.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.29.29.2"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.29.29.2.1" style="font-size:90%;">2482</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.29.29.3"><span class="ltx_text" id="S4.T1.7.1.29.29.3.1" style="font-size:90%;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.29.29.4"><span class="ltx_text" id="S4.T1.7.1.29.29.4.1" style="font-size:90%;">25.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.29.29.5"><span class="ltx_text" id="S4.T1.7.1.29.29.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.29.29.6"><span class="ltx_text" id="S4.T1.7.1.29.29.6.1" style="font-size:90%;">11.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.30.30.1">
<span class="ltx_text" id="S4.T1.7.1.30.30.1.1" style="font-size:90%;">InternVL2-76B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.1.30.30.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S4.T1.7.1.30.30.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.30.30.2"><span class="ltx_text" id="S4.T1.7.1.30.30.2.1" style="font-size:90%;">2414</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.30.30.3"><span class="ltx_text" id="S4.T1.7.1.30.30.3.1" style="font-size:90%;">62.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.30.30.4"><span class="ltx_text" id="S4.T1.7.1.30.30.4.1" style="font-size:90%;">23.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.30.30.5"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.30.30.5.1" style="font-size:90%;">42.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.30.30.6"><span class="ltx_text" id="S4.T1.7.1.30.30.6.1" style="font-size:90%;">5.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.1.31.31.1">
<span class="ltx_text" id="S4.T1.7.1.31.31.1.1" style="font-size:90%;">LLaVA-OneVision-72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.1.31.31.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S4.T1.7.1.31.31.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.1.31.31.2"><span class="ltx_text" id="S4.T1.7.1.31.31.2.1" style="font-size:90%;">2261</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.31.31.3"><span class="ltx_text" id="S4.T1.7.1.31.31.3.1" style="font-size:90%;">56.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.31.31.4"><span class="ltx_text" id="S4.T1.7.1.31.31.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.31.31.5"><span class="ltx_text" id="S4.T1.7.1.31.31.5.1" style="font-size:90%;">39.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.31.31.6"><span class="ltx_text" id="S4.T1.7.1.31.31.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.32.32" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.7.1.32.32.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.7.1.32.32.1.1" style="font-size:90%;background-color:#D9D9D9;">OmniCaptioner<span class="ltx_text ltx_font_upright" id="S4.T1.7.1.32.32.1.1.1"> + DS-R1-Distill-Llama-70B</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T1.7.1.32.32.2"><span class="ltx_text" id="S4.T1.7.1.32.32.2.1" style="font-size:90%;background-color:#D9D9D9;">2025</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.1.32.32.3"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.32.32.3.1" style="font-size:90%;background-color:#D9D9D9;">64.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.1.32.32.4"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.32.32.4.1" style="font-size:90%;background-color:#D9D9D9;">42.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.1.32.32.5"><span class="ltx_text" id="S4.T1.7.1.32.32.5.1" style="font-size:90%;background-color:#D9D9D9;">42.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.1.32.32.6"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.32.32.6.1" style="font-size:90%;background-color:#D9D9D9;">13.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of Large Language Models (LLMs) enhanced with OmniCaptioner against state-of-the-art Multimodal Large Language Models (MLLMs) across various visual benchmarks.  The key finding is that by using OmniCaptioner to generate detailed captions, standard LLMs can achieve performance on par with or exceeding that of MLLMs, without the need for extensive fine-tuning or specialized training data. This improvement is particularly notable in mathematical reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison on various visual benchmarks between our OmniCaptioner-inserted LLMs and previous SOTA MLLMs. We would like to emphasize that by utilizing OmniCaptioner, LLMs can function as MLLMs without requiring additional training. Moreover, we have observed that, particularly in mathematical scenarios, caption-integrated LLMs surpasses MLLMs with comparable parameter sizes, where MLLMs have undergone rigorous data preparation and GPU-intensive training.
> </details>





### In-depth insights


#### Versatile Vision
The notion of "Versatile Vision" encapsulates the crucial capability of AI systems to process and interpret information from a multitude of visual sources. This versatility is not merely about handling diverse image formats or resolutions but also about **understanding the semantic content across different visual domains**. A truly versatile vision system should be adept at recognizing objects, scenes, and patterns in photographs, charts, diagrams, and even abstract visual representations. This requires robust feature extraction, effective contextual reasoning, and the ability to **adapt to new and unseen visual inputs**. Furthermore, versatile vision implies **seamless integration with other modalities**, enabling AI to leverage visual information for tasks like natural language understanding, decision-making, and creative content generation. Such a system holds immense potential for applications spanning robotics, autonomous driving, medical imaging, and more.

#### Pixel-to-Text
**Pixel-to-Text mapping** is a critical aspect of enabling machines to understand and interact with the visual world. The core idea is to transform raw pixel data into a structured, semantically rich textual representation. This process involves techniques such as **OCR**, scene understanding, and object recognition.  By converting images into text, we unlock capabilities like visual question answering, image captioning, and content-based image retrieval.  The accuracy and granularity of this conversion are paramount, as they directly impact the performance of downstream tasks. Current research focuses on improving the robustness of pixel-to-text models to handle noisy or ambiguous images and creating text descriptions that capture not just the objects present, but also their relationships and context. Essentially, it bridges **the visual and linguistic domains**, allowing AI to reason about and describe visual information.

#### LLM Reasoning
**LLMs' reasoning capabilities** hinge on their ability to extrapolate patterns from vast datasets. This involves complex tasks like logical inference, problem-solving, and commonsense reasoning. **Fine-tuning LLMs** with diverse datasets that enhance reasoning are an area of ongoing research.  Understanding how LLMs internalize and apply reasoning principles remains a key challenge. Furthermore, developing methods to reliably evaluate LLM reasoning skills and mitigate potential biases is crucial for ensuring their responsible deployment.

#### Diverse Domains
The essence of **diverse domains** lies in their potential to revolutionize machine learning by enabling models to generalize across varied data landscapes. The challenge, however, is two-fold: acquiring sufficient data from each domain and designing architectures that can effectively learn shared representations. **Domain adaptation** and **transfer learning** become crucial strategies, allowing models to leverage knowledge from well-resourced domains to improve performance in data-scarce settings. **Multimodal learning**, integrating information from different modalities, could further enrich domain representations. **Evaluation metrics** must also evolve to capture nuanced performance differences. Ultimately, diverse domains pave the way for more robust and practical AI systems.

#### Accurate Captions
The concept of "Accurate Captions" underscores the critical role of precision in visual understanding. **High-quality captions enhance tasks like image generation**, visual reasoning, and accessibility. **Inaccurate captions weaken vision-language alignment in T2I models.** Accuracy requires minimizing hallucinations, maintaining stylistic output flexibility, and logical consistency. **Detailed descriptions convert low-level visual pixel details to semantic representation**, bridging the visual-textual modality gap. **Robust captions improves visual reasoning with LLMs**, benefiting multimodal tasks. **Overall, accurate captions are essential for versatile AI, particularly in multimodal models.** Accurate captions helps in better understanding and processing of images/visuals by LLMs and other AI models, thereby improving overall efficiency.

#### SFT Efficiency
**SFT efficiency** is crucial, but often overlooked in multimodal learning. This paper's approach using OMNICAPTIONER leverages a **versatile visual captioning framework** during pretraining. This framework creates **rich and diverse textual descriptions** that are used in the **Supervised Fine-Tuning (SFT)** stage. By having models pretrained on this data, it **reduces the SFT data required** and can lead to **faster convergence**. The pretraining equips the model with substantial domain knowledge. In essence, it facilitates swift adaptation during the SFT phase, ultimately enhancing the model's performance across various tasks like visual reasoning and image generation. Prioritizing the richness and breadth of data used at the pretraining stage ensures not just efficiency, but also superior outcomes in the long run.

#### Beyond Natural
It seems there's no section titled 'Beyond Natural' in the provided document. However, the paper presents **OmniCaptioner**, a framework that advances visual captioning **beyond** just **natural** images. It tackles diverse data like charts, equations, UIs, and more. This 'beyond' aspect suggests a significant shift, potentially impacting multimodal learning and visual reasoning. The ability to move captioning **beyond** the standard image datasets will offer improvements in downstream tasks. By focusing on a diverse set of visuals, the potential to enhance visual reasoning, particularly in models driven by large language models (LLMs) makes it more powerful.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.07089/x4.png)

> 🔼 This figure showcases a performance comparison of various Large Language Models (LLMs) and Multimodal Large Language Models (MLLMs), all with 7 billion parameters, across several visual reasoning benchmarks.  The models are tested both with and without direct pixel-level visual input.  The key takeaway is the performance difference between models that receive raw visual data (Qwen2-VL-Instruct, indicated by dashed borders) and those that only receive textual descriptions of the visual data or no visual input at all (Qwen2-VL-Ins.(NA) means no visual data, only the question). The MME scores are scaled down by a factor of 100 for consistency across all benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Performance comparison across different visual benchmarks for different LLMs/MLLMs (7B) with or without visual input. The bar with dashed borders denotes Qwen2-VL-Instruct, indicating it has pixel-level visual input, while others do not. Qwen2-VL-Ins.(NA) refers to a setting where only the question is provided as input. We divide the MME score by 100 to have the same scale as other benchmarks.
> </details>



![](https://arxiv.org/html/2504.07089/x5.png)

> 🔼 Figure 3 demonstrates OmniCaptioner's versatility and effectiveness in three key areas: visual reasoning, image generation, and non-natural image captioning.  (a) showcases OmniCaptioner's enhanced visual reasoning capabilities by integrating it with LLMs (Large Language Models).  Detailed captions generated by OmniCaptioner allow LLMs to effectively solve complex visual reasoning problems. (b) illustrates the importance of accurate image captions for successful image generation.  Using inaccurate or hallucinated captions (like those from LLaVA-OneVision-7B) results in poor image generation due to weakened alignment between the text and visual modalities. (c) compares OmniCaptioner's and LLaVA-OneVision-7B's performance on non-natural images. OmniCaptioner significantly outperforms LLaVA-OneVision-7B, providing more accurate image descriptions and reducing hallucinations because OmniCaptioner was trained with a wider variety of visual domains during pretraining.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of OmniCaptioner’s plug-and-play applications (Sub-figure a, b) and comparison between OmniCaptioner and LLava-OneVision-7B on non-natural image captioning (Sub-figure c). Sub-figure (a) shows that OmniCaptioner leverages LLMs’ strong reasoning abilities to perform multimodal reasoning tasks. Sub-figure (b) highlights how hallucinated or inaccurate captions—like those from LLava-OneVision-7B can lead to inconsistent image conversion, revealing weakened alignment capabilities in text-to-image models when captions don’t faithfully represent the original content. Sub-figure (c) highlights that LLaVA-OneVision-7B, due to limited exposure to non-natural images during pretraining, struggles with perception in such domains, often leading to hallucinations, whereas OmniCaptioner provides more accurate descriptions.
> </details>



![](https://arxiv.org/html/2504.07089/x6.png)

> 🔼 OmniCaptioner employs a two-stage visual captioning pipeline.  First, Seed-Caption Generation creates initial, highly accurate captions by mapping image pixels to words. This stage uses a large language model (LLM) to generate comprehensive descriptions for various visual data types, including natural images and structured images. The second stage, Caption Extension, refines and diversifies these captions, generating multiple caption styles (e.g., short, detailed, tagged, bilingual) to be suitable for a wide range of downstream tasks such as image generation and visual reasoning with LLMs. The entire process utilizes a large-scale, multi-domain dataset (21 million captions) that goes beyond typical natural image datasets. This dataset encompasses various visual data modalities including natural images, structured data (e.g., tables, charts), and visual text (e.g., posters, UI).  More detail on dataset composition is available in Figure 7 of Appendix A.
> <details>
> <summary>read the caption</summary>
> Figure 4: OmniCaptioner’s diverse visual captioning pipeline. The pipeline consists of Seed-Caption Generation to ensure precise pixel-to-word mapping, and Caption Extension to enrich caption styles to support image generation and visual reasoning tasks. OmniCaptioner utilizes a 21M-caption dataset, covering diverse domains beyond natural images, enabling more comprehensive captioning capabilities. For further details about dataset composition, please refer to Fig. 7 in Appendix A.
> </details>



![](https://arxiv.org/html/2504.07089/x7.png)

> 🔼 Figure 5 shows the performance of integrating OmniCaptioner with different versions of LLMs on various multimodal tasks.  The graph displays how the model's performance (likely measured by accuracy or a similar metric) improves as more advanced LLMs are used. This demonstrates OmniCaptioner's ability to enhance the performance of LLMs across different model sizes and complexities, making them better suited for complex tasks that involve both visual and textual information. The x-axis likely represents different LLM versions or sizes, while the y-axis depicts the performance metric.
> <details>
> <summary>read the caption</summary>
> Figure 5: Integrate OmniCaptioner into different versions of LLMs, enabling them to handle tasks in multimodal scenarios.
> </details>



![](https://arxiv.org/html/2504.07089/extracted/6349016/Figures/token_len_dis.jpg)

> 🔼 This figure shows the distribution of token lengths across different caption types for natural images.  The x-axis represents the token length, and the y-axis represents the frequency of captions with that length.  Separate bars are shown for different caption styles: 'Detailed Caption', 'Medium Caption', 'Short Caption', and 'Tag'. This visualization helps to understand the range of caption lengths generated and the relative frequency of each caption style within the OMNICAPTIONER dataset.
> <details>
> <summary>read the caption</summary>
> Figure 6: Token length distribution for natural images.
> </details>



![](https://arxiv.org/html/2504.07089/x8.png)

> 🔼 Figure 7 of the paper visualizes the composition of the OmniCaptioner dataset used for pre-training the model.  The dataset is a large-scale multimodal benchmark covering a diverse range of visual data types, including natural images, structured images (tables, charts, equations, geometric diagrams), visual text images (posters, UIs, textbooks), and videos. The figure likely shows the distribution of these data types within the dataset, perhaps illustrating the number of samples per category or the relative proportions.  The goal is to demonstrate the breadth and diversity of visual data included in the training process to support OmniCaptioner's ability to generate captions for a wide array of visual inputs.
> <details>
> <summary>read the caption</summary>
> Figure 7: Dataset composition for pretraining OmniCaptioner.
> </details>



![](https://arxiv.org/html/2504.07089/x9.png)

> 🔼 Figure 8 shows different system prompts used to guide OmniCaptioner's caption generation for various image types (natural images, visual text images, and structured images).  These prompts specify the desired caption style (detailed, medium, short, tag, or to LaTeX/Markdown), and guide the model to provide specific details such as visual style, spatial relationships, or object descriptions.  The prompts are categorized by image type, providing examples of how the prompts are tailored for diverse visual inputs.  The figure is crucial in illustrating how OmniCaptioner's versatility is achieved through careful prompt engineering.
> <details>
> <summary>read the caption</summary>
> Figure 8: Different system prompts used for OmniCaptioner.
> </details>



![](https://arxiv.org/html/2504.07089/x10.png)

> 🔼 This figure showcases examples of natural image captions generated by the OmniCaptioner model.  It demonstrates the model's ability to produce captions with varying levels of detail (short, medium, detailed, and tag captions) across diverse image subjects. Each image is accompanied by several captions illustrating different styles and levels of detail, highlighting the model's versatility and comprehensive understanding of the visual content.  These captions range from short and concise summaries to long, detailed descriptions covering multiple aspects, such as visual style, composition, and background elements, and are presented in both English and Chinese, showcasing the model's multilingual capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 9: Natural image captioning.
> </details>



![](https://arxiv.org/html/2504.07089/x11.png)

> 🔼 Figure 10 shows examples of captions generated for table and chart images.  The top example shows a caption for a table listing various racing teams, chassis types, engines, tire brands, and drivers. The caption includes a detailed breakdown of the table's columns, a description of the data, observations about trends in the data, and a summary of the key findings. The bottom example shows a caption for a line chart illustrating the accuracy of two different methods ('Few-Shot-CoT' and 'Auto-CoT') as the number of steps in an algorithm increases. The caption explains the axes labels and data series, provides observations about the trends in the data, and offers conclusions on the results.
> <details>
> <summary>read the caption</summary>
> Figure 10: Table/Chart image captioning.
> </details>



![](https://arxiv.org/html/2504.07089/x12.png)

> 🔼 Figure 11 presents example outputs from the OmniCaptioner model for visual-text images.  The figure shows two examples of posters, each with both English and Chinese captions generated by the OmniCaptioner in different captioning styles (detailed and OCR). These examples demonstrate OmniCaptioner's capability to handle diverse visual-text inputs and generate both detailed descriptions and textual extractions (like OCR).
> <details>
> <summary>read the caption</summary>
> Figure 11: Visual-Text image captioning.
> </details>



![](https://arxiv.org/html/2504.07089/x13.png)

> 🔼 Figure 12 presents examples of math image captioning.  It shows three different mathematical expressions or diagrams and the corresponding captions generated by the OmniCaptioner system.  The first example is a complex equation incorporating trigonometric functions and integrals. The second example includes a geometric figure illustrating a triangle inscribed in a circle, and the third is another geometric illustration of two similar triangles. The captions demonstrate the system's ability to generate detailed, accurate descriptions of mathematical content in images.
> <details>
> <summary>read the caption</summary>
> Figure 12: Math image captioning.
> </details>



![](https://arxiv.org/html/2504.07089/x14.png)

> 🔼 The figure displays a screenshot of a Hugging Face profile page for the DeepSeek organization.  The page shows details like their AI and ML interests, recent activities (model updates), a list of their model collections, and team members. The design is clean and user-friendly, using clear labels and organization to present information concisely.  Interactive elements such as buttons, links, and expandable sections allow for a deeper dive into DeepSeek's work.
> <details>
> <summary>read the caption</summary>
> Figure 13: UI captioning.
> </details>



![](https://arxiv.org/html/2504.07089/x15.png)

> 🔼 Figure 14 presents example outputs from the OMNICAPTIONER model applied to PDF documents.  The figure demonstrates the model's ability to generate captions for diverse PDF content, including diagrams, text, and tables.  Each example shows a snippet of a PDF page alongside the generated caption, highlighting the model's ability to extract relevant information and create detailed and accurate descriptions.  The captions showcase both short and detailed options, illustrating the model's adaptability to different output styles.
> <details>
> <summary>read the caption</summary>
> Figure 14: PDF captioning.
> </details>



![](https://arxiv.org/html/2504.07089/x16.png)

> 🔼 Figure 15 shows examples of video captioning results from the OMNICAPTIONER model.  The figure displays two example video clips, each with detailed captions. The captions demonstrate the model's ability to generate descriptions that encompass short, background, main object, reference, standard summary, style, and key tags and camera information.  These captions are comprehensive and detailed, capturing various aspects of the visual content, including the scene, objects, actions, and overall mood.
> <details>
> <summary>read the caption</summary>
> Figure 15: Video captioning.
> </details>



![](https://arxiv.org/html/2504.07089/x17.png)

> 🔼 Figure 16 showcases examples of natural image captioning using different system prompts within the OmniCaptioner framework.  It demonstrates how variations in the prompt engineering (detailed, detailed_natural, UI, OCR_textqa) result in different caption styles and levels of detail for the same image.  This highlights OmniCaptioner's ability to generate varied and contextually appropriate descriptions based on user-specified prompt characteristics.
> <details>
> <summary>read the caption</summary>
> Figure 16: Natural image captioning with different system prompts.
> </details>



![](https://arxiv.org/html/2504.07089/x18.png)

> 🔼 Figure 17 presents three examples of structured image captioning using different system prompts.  Each example shows a different type of structured image: an electrical circuit diagram, a mathematical function graph, and a mechanical system diagram. The captions generated by the OMNICAPTIONER model provide highly detailed descriptions of these diagrams, illustrating the model's ability to understand and translate complex visual information into rich textual descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 17: Structured image captioning with different system prompts.
> </details>



![](https://arxiv.org/html/2504.07089/x19.png)

> 🔼 Figure 18 presents three examples of how the OmniCaptioner model processes natural images and generates captions.  Each example shows the image, the generated caption by OmniCaptioner, the question posed, and the model's step-by-step reasoning process (thought bubbles) leading to the final answer.  The examples demonstrate OmniCaptioner's ability to perform visual reasoning tasks with diverse image content and question types.
> <details>
> <summary>read the caption</summary>
> Figure 18: Visualization of thinking process with OmniCaptioner for natural images.
> </details>



![](https://arxiv.org/html/2504.07089/x20.png)

> 🔼 Figure 19 visualizes the reasoning process of DeepSeek-R1-Distill-Qwen-70B and DeepSeek-R1-Distill-LLama-70B when answering questions related to images.  The figure displays the step-by-step thinking process of each LLM to solve three different problems (one natural image, one structured image, one visual-text image). For each problem, the figure presents the initial question, the detailed caption generated by OmniCaptioner, and the LLM's step-by-step reasoning process, displayed in text, leading to a final answer.  The visualization aims to demonstrate how OmniCaptioner's detailed captions enhance the performance and reasoning ability of LLMs on visual reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Figure 19: Visualization of thinking process with OmniCaptioner.
> </details>



![](https://arxiv.org/html/2504.07089/x21.png)

> 🔼 Figure 20 presents a visualization of how the OmniCaptioner model approaches math-related image understanding.  It shows the step-by-step reasoning process employed by the model when presented with a geometry problem (calculating a tree's height using similar triangles). The figure displays the original problem image and the model's detailed thought process (in English), which involves recognizing geometric properties, formulating equations, solving for the unknown, and identifying the correct option (from multiple-choice answers). This figure highlights the model's ability to break down complex problems, reason logically, and arrive at the correct solution, mimicking human problem-solving strategies.
> <details>
> <summary>read the caption</summary>
> Figure 20: Visualization of thinking process with OmniCaptioner for math images.
> </details>



![](https://arxiv.org/html/2504.07089/x22.png)

> 🔼 This figure demonstrates the impact of detailed image captions generated by OmniCaptioner on the quality of images generated by a text-to-image model (SANA 1.0).  The top row shows example images and captions. Each image was generated from a text prompt paired with a detailed caption from OmniCaptioner.  The bottom row shows the images generated by the SANA 1.0 model when using only the original prompt without the added OmniCaptioner caption.  The comparison reveals that OmniCaptioner's detailed captions significantly improve the alignment of the generated image with the prompt's intent, providing accurate reflection of concepts, attributes, and relationships mentioned in the prompt.
> <details>
> <summary>read the caption</summary>
> Figure 21: The detailed caption from OmniCaptioner enhances the alignment capability of text-to-image generation by providing precise descriptions, ensuring that the generated image accurately reflects the intended concepts, attributes, and relationships. The generation model here is fine-tuned on images labeled by OmniCaptioner, using the SANA 1.0 model with 1.6B parameters.
> </details>



![](https://arxiv.org/html/2504.07089/x23.png)

> 🔼 This figure showcases examples of image generation using the SANA-1.0 model fine-tuned with captions generated by OmniCaptioner.  The left column shows the original images, the middle column displays the detailed captions generated by OmniCaptioner which are rich in detail and semantic information, and the right column shows the images generated by SANA-1.0 based on these detailed captions. The results demonstrate that OmniCaptioner's detailed captions improve the accuracy and semantic alignment of the generated images, ensuring that they closely reflect the content and style described in the captions. This highlights the effectiveness of OmniCaptioner in bridging the gap between visual and textual modalities in image generation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 22: Image Conversion through OmniCaptioner and SANA-1.0. The generation model, SANA-1.0, is fine-tuned on images annotated by OmniCaptioner, enabling more accurate and semantically aligned image generation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T2.3.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.3.1.1.2.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="S5.T2.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.3.1.1.1.1">GenEval <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.3.1.1.1.1.m1.1"><semantics id="S5.T2.3.1.1.1.1.m1.1a"><mo id="S5.T2.3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.1.1.1.1.m1.1b"><ci id="S5.T2.3.1.1.1.1.m1.1.1.cmml" xref="S5.T2.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.3.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.3.1.2.1.1">Color Attri.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.3.1.2.1.2">Sin. Obj.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.3.1.2.1.3">Pos.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.3.1.2.1.4">Colors</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.3.1.2.1.5">Counting</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.3.1.2.1.6">Overall</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.3.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.3.1.3.1.1">SANA-1.0-1.6B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.1.3.1.2">38.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.1.3.1.3">98.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.1.3.1.4">21.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.1.3.1.5">86.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.1.3.1.6"><span class="ltx_text ltx_font_bold" id="S5.T2.3.1.3.1.6.1">65.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.1.3.1.7">64.61</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.3.1.4.2.1">SANA-1.0-1.6B + Qwen2-VL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T2.3.1.4.2.2">44.29</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.1.4.2.3">98.44</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.1.4.2.4">26.64</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.1.4.2.5"><span class="ltx_text ltx_font_bold" id="S5.T2.3.1.4.2.5.1">86.97</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.1.4.2.6">57.81</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.1.4.2.7">65.27</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.1.5.3" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T2.3.1.5.3.1"><span class="ltx_text" id="S5.T2.3.1.5.3.1.1" style="background-color:#D9D9D9;">SANA-1.0-1.6B + <span class="ltx_text ltx_font_smallcaps" id="S5.T2.3.1.5.3.1.1.1">OmniCaptioner</span></span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.1.5.3.2"><span class="ltx_text ltx_font_bold" id="S5.T2.3.1.5.3.2.1" style="background-color:#D9D9D9;">46.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.1.5.3.3"><span class="ltx_text ltx_font_bold" id="S5.T2.3.1.5.3.3.1" style="background-color:#D9D9D9;">99.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.1.5.3.4"><span class="ltx_text ltx_font_bold" id="S5.T2.3.1.5.3.4.1" style="background-color:#D9D9D9;">29.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.1.5.3.5"><span class="ltx_text" id="S5.T2.3.1.5.3.5.1" style="background-color:#D9D9D9;">84.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.1.5.3.6"><span class="ltx_text" id="S5.T2.3.1.5.3.6.1" style="background-color:#D9D9D9;">64.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.1.5.3.7"><span class="ltx_text ltx_font_bold" id="S5.T2.3.1.5.3.7.1" style="background-color:#D9D9D9;">67.58</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the performance achieved by several models when trained using different captioning techniques. The models were evaluated using the GenEval benchmark [12], a widely recognized metric for assessing the quality of image generation models. Specifically, the comparison focuses on the impact of using different captioners during the model training process. The resolution of images used during the evaluation was 1024 x 1024 pixels.  The results are presented across various GenEval sub-metrics, likely providing insights into the model's proficiency in generating images that accurately reflect attributes like color, object positions, and counts. The table aids in understanding how the choice of captioner affects the performance of the image generation model.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison of models trained with different captioners on GenEval [12] (Resolution: 1024 ×\times× 1024).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.1.1" style="font-size:90%;">SFT Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.2.1" style="font-size:90%;">Data</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.3.1" style="font-size:90%;">MME</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.4.1" style="font-size:90%;">MMMU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.5.1" style="font-size:90%;">MathVerse</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.6.1" style="font-size:90%;">MathVista</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.7.1" style="font-size:90%;">DocVQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.8.1" style="font-size:90%;">ChartQA</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.3.1.2.1.1">
<span class="ltx_text" id="S5.T3.3.1.2.1.1.1" style="font-size:90%;">LLaVA-OV-7B (SI) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.3.1.2.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S5.T3.3.1.2.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T3.3.1.2.1.2"><span class="ltx_text" id="S5.T3.3.1.2.1.2.1" style="font-size:90%;">3.2M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T3.3.1.2.1.3"><span class="ltx_text" id="S5.T3.3.1.2.1.3.1" style="font-size:90%;">2109</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.2.1.4"><span class="ltx_text" id="S5.T3.3.1.2.1.4.1" style="font-size:90%;">47.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.2.1.5"><span class="ltx_text" id="S5.T3.3.1.2.1.5.1" style="font-size:90%;">26.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.2.1.6"><span class="ltx_text" id="S5.T3.3.1.2.1.6.1" style="font-size:90%;">56.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.2.1.7"><span class="ltx_text" id="S5.T3.3.1.2.1.7.1" style="font-size:90%;">89.3/86.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.2.1.8"><span class="ltx_text" id="S5.T3.3.1.2.1.8.1" style="font-size:90%;">78.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.3.1.3.2.1">
<span class="ltx_text" id="S5.T3.3.1.3.2.1.1" style="font-size:90%;">LLaVA-OV-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.3.1.3.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07089v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S5.T3.3.1.3.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T3.3.1.3.2.2"><span class="ltx_text" id="S5.T3.3.1.3.2.2.1" style="font-size:90%;">4.8M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T3.3.1.3.2.3"><span class="ltx_text" id="S5.T3.3.1.3.2.3.1" style="font-size:90%;">1998</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.3.2.4"><span class="ltx_text" id="S5.T3.3.1.3.2.4.1" style="font-size:90%;">48.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.3.2.5"><span class="ltx_text" id="S5.T3.3.1.3.2.5.1" style="font-size:90%;">26.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.3.2.6"><span class="ltx_text" id="S5.T3.3.1.3.2.6.1" style="font-size:90%;">63.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.3.2.7"><span class="ltx_text" id="S5.T3.3.1.3.2.7.1" style="font-size:90%;">90.2/87.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.3.2.8"><span class="ltx_text" id="S5.T3.3.1.3.2.8.1" style="font-size:90%;">80.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.3.1.4.3.1"><span class="ltx_text" id="S5.T3.3.1.4.3.1.1" style="font-size:90%;">Qwen2-VL-Base+OV SFT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T3.3.1.4.3.2"><span class="ltx_text" id="S5.T3.3.1.4.3.2.1" style="font-size:90%;">1.6M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T3.3.1.4.3.3"><span class="ltx_text" id="S5.T3.3.1.4.3.3.1" style="font-size:90%;">1905</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.4.3.4"><span class="ltx_text" id="S5.T3.3.1.4.3.4.1" style="font-size:90%;">44.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.4.3.5"><span class="ltx_text" id="S5.T3.3.1.4.3.5.1" style="font-size:90%;">24.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.4.3.6"><span class="ltx_text" id="S5.T3.3.1.4.3.6.1" style="font-size:90%;">53.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.4.3.7"><span class="ltx_text" id="S5.T3.3.1.4.3.7.1" style="font-size:90%;">84.2/-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.4.3.8"><span class="ltx_text" id="S5.T3.3.1.4.3.8.1" style="font-size:90%;">53.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.5.4" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.3.1.5.4.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.3.1.5.4.1.1" style="font-size:90%;background-color:#D9D9D9;">OmniCaptioner<span class="ltx_text ltx_font_upright" id="S5.T3.3.1.5.4.1.1.1">+OV SFT</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T3.3.1.5.4.2"><span class="ltx_text" id="S5.T3.3.1.5.4.2.1" style="font-size:90%;background-color:#D9D9D9;">1.6M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T3.3.1.5.4.3"><span class="ltx_text" id="S5.T3.3.1.5.4.3.1" style="font-size:90%;background-color:#D9D9D9;">2045</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.1.5.4.4"><span class="ltx_text" id="S5.T3.3.1.5.4.4.1" style="font-size:90%;background-color:#D9D9D9;">46.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.1.5.4.5"><span class="ltx_text" id="S5.T3.3.1.5.4.5.1" style="font-size:90%;background-color:#D9D9D9;">25.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.1.5.4.6"><span class="ltx_text" id="S5.T3.3.1.5.4.6.1" style="font-size:90%;background-color:#D9D9D9;">57.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.1.5.4.7"><span class="ltx_text" id="S5.T3.3.1.5.4.7.1" style="font-size:90%;background-color:#D9D9D9;">91.2/-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.1.5.4.8"><span class="ltx_text" id="S5.T3.3.1.5.4.8.1" style="font-size:90%;background-color:#D9D9D9;">79.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of Supervised Fine-Tuning (SFT) performance across various visual benchmarks.  Three models are compared: OmniCaptioner + OV SFT (a model fine-tuned using the OmniCaptioner framework), Qwen2-VL-base + OV SFT (a model fine-tuned using the Qwen2-VL-Base framework), and LLaVA-OV-7B (SI) (a model trained with single-image data from the LLaVA-OneVision framework). The benchmarks assess performance on various tasks related to visual understanding and reasoning.  The table shows the amount of data used in the fine-tuning process for each model and resulting scores across multiple metrics (MME, MMMU, MathVerse, MathVista, DocVQA, ChartQA).  This allows for an assessment of the effectiveness of different model architectures and training data on downstream tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: SFT performance comparison across diverse evaluation benchmarks. OmniCaptioner + OV SFT denotes the SFT model based on OmniCaptioner, while Qwen2-VL-base + OV SFT is based on Qwen2-VL-Base. LLaVA-OV-7B (SI) represents the model after the single-image training in LLaVA-OneVision [18].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1.1.1" style="font-size:90%;">Captioner Selection</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1.2.1" style="font-size:90%;">LLM</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1.3.1" style="font-size:90%;">MME</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1.4.1" style="font-size:90%;">MMMU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1.5.1" style="font-size:90%;">MathVision</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1.6.1" style="font-size:90%;">MathVerse</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.1.2.1.1"><span class="ltx_text" id="S5.T4.1.1.2.1.1.1" style="font-size:90%;">llava-onevision-qwen2-7b-ov</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.1.2.1.2"><span class="ltx_text" id="S5.T4.1.1.2.1.2.1" style="font-size:90%;">DS-R1-Distill-Qwen-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.1.2.1.3"><span class="ltx_text" id="S5.T4.1.1.2.1.3.1" style="font-size:90%;">1646</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2.1.4"><span class="ltx_text" id="S5.T4.1.1.2.1.4.1" style="font-size:90%;">22.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2.1.5"><span class="ltx_text" id="S5.T4.1.1.2.1.5.1" style="font-size:90%;">31.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2.1.6"><span class="ltx_text" id="S5.T4.1.1.2.1.6.1" style="font-size:90%;">36.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.3.2.1"><span class="ltx_text" id="S5.T4.1.1.3.2.1.1" style="font-size:90%;">InternVL2-8B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.3.2.2"><span class="ltx_text" id="S5.T4.1.1.3.2.2.1" style="font-size:90%;">DS-R1-Distill-Qwen-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T4.1.1.3.2.3"><span class="ltx_text" id="S5.T4.1.1.3.2.3.1" style="font-size:90%;">1789</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.3.2.4"><span class="ltx_text" id="S5.T4.1.1.3.2.4.1" style="font-size:90%;">23.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.3.2.5"><span class="ltx_text" id="S5.T4.1.1.3.2.5.1" style="font-size:90%;">34.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.3.2.6"><span class="ltx_text" id="S5.T4.1.1.3.2.6.1" style="font-size:90%;">39.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.4.3.1"><span class="ltx_text" id="S5.T4.1.1.4.3.1.1" style="font-size:90%;">Qwen2-VL-7B-Instruct</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.4.3.2"><span class="ltx_text" id="S5.T4.1.1.4.3.2.1" style="font-size:90%;">DS-R1-Distill-Qwen-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T4.1.1.4.3.3"><span class="ltx_text" id="S5.T4.1.1.4.3.3.1" style="font-size:90%;">1914</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.3.4"><span class="ltx_text" id="S5.T4.1.1.4.3.4.1" style="font-size:90%;">42.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.3.5"><span class="ltx_text" id="S5.T4.1.1.4.3.5.1" style="font-size:90%;">31.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.3.6"><span class="ltx_text" id="S5.T4.1.1.4.3.6.1" style="font-size:90%;">33.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.5.4" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.1.1.5.4.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T4.1.1.5.4.1.1" style="font-size:90%;background-color:#D9D9D9;">OmniCaptioner<span class="ltx_text ltx_font_upright" id="S5.T4.1.1.5.4.1.1.1"> (ours)</span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.1.1.5.4.2"><span class="ltx_text" id="S5.T4.1.1.5.4.2.1" style="font-size:90%;background-color:#D9D9D9;">DS-R1-Distill-Qwen-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T4.1.1.5.4.3"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.5.4.3.1" style="font-size:90%;background-color:#D9D9D9;">1942</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.5.4.4"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.5.4.4.1" style="font-size:90%;background-color:#D9D9D9;">47.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.5.4.5"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.5.4.5.1" style="font-size:90%;background-color:#D9D9D9;">36.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.5.4.6"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.5.4.6.1" style="font-size:90%;background-color:#D9D9D9;">40.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of different captioning methods used in conjunction with a Large Language Model (LLM).  The comparison is conducted across multiple visual benchmarks, evaluating the effectiveness of each captioning approach on various visual reasoning tasks.  The results provide insights into which captioning methods are best suited for different types of visual data and LLM architectures.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparing different captioners through experiments with captioner-inserted LLM on multiple visual benchmarks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.07089/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07089/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}