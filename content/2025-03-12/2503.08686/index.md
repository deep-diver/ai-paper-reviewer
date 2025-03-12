---
title: "OmniMamba: Efficient and Unified Multimodal Understanding and Generation via State Space Models"
summary: "OmniMamba: Efficient multimodal understanding and generation via SSMs, trained on 2M image-text pairs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Understanding", "🏢 Huazhong University of Science & Technology",]
showSummary: true
date: 2025-03-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.08686 {{< /keyword >}}
{{< keyword icon="writer" >}} Jialv Zou et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.08686" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.08686" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.08686/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Unified multimodal models face quadratic complexity & data dependence issues. Existing models are slow and impractical for real-time use due to computational demands. **OmniMamba uses Mamba-2’s efficiency**, extending it from text to multimodal generation via next-token prediction, reducing reliance on extensive training data and improves both training and inference. 



**OmniMamba** employs decoupled vocabularies for modality-specific generation, task-specific LoRA for adaptation, and a two-stage training strategy to balance data. It achieves comparable or superior performance with significantly reduced training data (2M image-text pairs) compared to existing models. Results show 119.2x speedup & 63% memory reduction for long sequences.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} OmniMamba is the first Mamba-based unified model for multimodal tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The model uses decoupled vocabularies and task-specific LoRA for efficient training and inference. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A novel two-stage training strategy addresses data imbalance, achieving state-of-the-art performance with fewer training data. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a new model overcoming the quadratic computational complexity & large-scale data dependency of current multimodal models, paving the way for more efficient & accessible research and applications.

------
#### Visual Insights



![](https://arxiv.org/html/2503.08686/x2.png)

> 🔼 Figure 1 presents a comprehensive comparison of OmniMamba against other state-of-the-art unified multimodal understanding and generation models.  Panel (a) highlights OmniMamba's data efficiency, trained on a mere 2 million image-text pairs—1000 times less data than Show-o. Panel (b) showcases OmniMamba's superior performance on various benchmarks, surpassing Show-o and achieving comparable results to JanusFlow despite its significantly smaller training dataset. Black metrics represent multimodal understanding, while blue represents visual generation tasks. Panels (c) and (d) demonstrate OmniMamba's speed and memory efficiency on a single NVIDIA A40 GPU, achieving up to a 119.2x speedup and a 63% memory reduction during long-sequence generation.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Comprehensive comparison between OmniMamba and other unified understanding and generation models. (a) Our OmniMamba is trained on only 2M image-text pairs, which is 1000 times less than Show-o. (b) With such limited data for training, our OmniMamba significantly outperforms Show-o across a wide range of benchmarks and achieves competitive performance with JanusFlow. Black metrics are for the multimodal understanding benchmark, while the blue metric is for the visual generation task. (c)-(d) We compare the speed and memory of OmniMamba with other unified models on the same single NVIDIA 4090 GPU. OmniMamba demonstrates up to a 119.2×\times× speedup and 63% GPU memory reduction for long-sequence generation.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.6.6.7" style="padding-left:3.5pt;padding-right:3.5pt;">Type</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.6.6.8" style="padding-left:3.5pt;padding-right:3.5pt;">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.6.6.9" style="padding-left:3.5pt;padding-right:3.5pt;">LLM Params</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.6.6.10" style="padding-left:3.5pt;padding-right:3.5pt;">Res.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1" style="padding-left:3.5pt;padding-right:3.5pt;">POPE<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.2.2" style="padding-left:3.5pt;padding-right:3.5pt;">MME-P<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.4.4.4" style="padding-left:3.5pt;padding-right:3.5pt;">VQAv2<sub class="ltx_sub" id="S3.T1.4.4.4.1"><span class="ltx_text ltx_font_italic" id="S3.T1.4.4.4.1.1">test</span></sub><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.m2.1"><semantics id="S3.T1.4.4.4.m2.1a"><mo id="S3.T1.4.4.4.m2.1.1" stretchy="false" xref="S3.T1.4.4.4.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.m2.1b"><ci id="S3.T1.4.4.4.m2.1.1.cmml" xref="S3.T1.4.4.4.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.5.5.5" style="padding-left:3.5pt;padding-right:3.5pt;">GQA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.m1.1a"><mo id="S3.T1.5.5.5.m1.1.1" stretchy="false" xref="S3.T1.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.6.6.6" style="padding-left:3.5pt;padding-right:3.5pt;">MMMU<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.6.6.6.m1.1"><semantics id="S3.T1.6.6.6.m1.1a"><mo id="S3.T1.6.6.6.m1.1.1" stretchy="false" xref="S3.T1.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.m1.1b"><ci id="S3.T1.6.6.6.m1.1.1.cmml" xref="S3.T1.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.6.7.1.1" rowspan="5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.7.1.1.1">Und. Only</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.6.7.1.2" style="padding-left:3.5pt;padding-right:3.5pt;">LLaVA-Phi <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib79" title=""><span class="ltx_text" style="font-size:90%;">79</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.6.7.1.3" style="padding-left:3.5pt;padding-right:3.5pt;">Phi-2-2.7B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.6.7.1.4" style="padding-left:3.5pt;padding-right:3.5pt;">336</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.7.1.5" style="padding-left:3.5pt;padding-right:3.5pt;">85.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.7.1.6" style="padding-left:3.5pt;padding-right:3.5pt;">1335.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.7.1.7" style="padding-left:3.5pt;padding-right:3.5pt;">71.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.7.1.8" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.7.1.9" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.8.2.1" style="padding-left:3.5pt;padding-right:3.5pt;">LLaVA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.8.2.2" style="padding-left:3.5pt;padding-right:3.5pt;">Vicuna-7B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.8.2.3" style="padding-left:3.5pt;padding-right:3.5pt;">224</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.8.2.4" style="padding-left:3.5pt;padding-right:3.5pt;">76.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.8.2.5" style="padding-left:3.5pt;padding-right:3.5pt;">809.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.8.2.6" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.8.2.7" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.8.2.8" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.9.3.1" style="padding-left:3.5pt;padding-right:3.5pt;">Emu3-Chat <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.9.3.2" style="padding-left:3.5pt;padding-right:3.5pt;">8B from scratch</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.9.3.3" style="padding-left:3.5pt;padding-right:3.5pt;">512</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.3.4" style="padding-left:3.5pt;padding-right:3.5pt;">85.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.3.5" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.3.6" style="padding-left:3.5pt;padding-right:3.5pt;">75.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.3.7" style="padding-left:3.5pt;padding-right:3.5pt;">60.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.3.8" style="padding-left:3.5pt;padding-right:3.5pt;">31.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.10.4.1" style="padding-left:3.5pt;padding-right:3.5pt;">LLaVA-v1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.10.4.2" style="padding-left:3.5pt;padding-right:3.5pt;">Vicuna-13B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.10.4.3" style="padding-left:3.5pt;padding-right:3.5pt;">448</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.10.4.4" style="padding-left:3.5pt;padding-right:3.5pt;">86.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.10.4.5" style="padding-left:3.5pt;padding-right:3.5pt;">1500.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.10.4.6" style="padding-left:3.5pt;padding-right:3.5pt;">81.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.10.4.7" style="padding-left:3.5pt;padding-right:3.5pt;">64.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.10.4.8" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.11.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.11.5.1" style="padding-left:3.5pt;padding-right:3.5pt;">InstructBLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.11.5.2" style="padding-left:3.5pt;padding-right:3.5pt;">Vicuna-13B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.11.5.3" style="padding-left:3.5pt;padding-right:3.5pt;">224</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.11.5.4" style="padding-left:3.5pt;padding-right:3.5pt;">78.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.11.5.5" style="padding-left:3.5pt;padding-right:3.5pt;">1212.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.11.5.6" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.11.5.7" style="padding-left:3.5pt;padding-right:3.5pt;">49.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.11.5.8" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.12.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.12.6.1" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_ERROR undefined" id="S3.T1.6.12.6.1.1">\cdashline</span>2-8</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.12.6.2" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.12.6.2.1" style="background-color:#F7F7FF;">MobileVLM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.12.6.3" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.12.6.3.1" style="background-color:#F7F7FF;">MobileLLaMA-1.4B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.12.6.4" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.12.6.4.1" style="background-color:#F7F7FF;">336</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.12.6.5" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.12.6.5.1" style="background-color:#F7F7FF;">84.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.12.6.6" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.12.6.6.1" style="background-color:#F7F7FF;">1196.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.12.6.7" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.12.6.7.1" style="background-color:#F7F7FF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.12.6.8" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.12.6.8.1" style="background-color:#F7F7FF;">56.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.12.6.9" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.12.6.9.1" style="background-color:#F7F7FF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.13.7">
<th class="ltx_td ltx_th ltx_th_row" id="S3.T1.6.13.7.1" style="padding-left:3.5pt;padding-right:3.5pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.13.7.2" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.13.7.2.1" style="background-color:#F7F7FF;">MobileVLM-V2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.13.7.3" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.13.7.3.1" style="background-color:#F7F7FF;">MobileLLaMA-1.4B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.13.7.4" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.13.7.4.1" style="background-color:#F7F7FF;">336</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.13.7.5" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.13.7.5.1" style="background-color:#F7F7FF;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.13.7.6" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.13.7.6.1" style="background-color:#F7F7FF;">1302.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.13.7.7" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.13.7.7.1" style="background-color:#F7F7FF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.13.7.8" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.13.7.8.1" style="background-color:#F7F7FF;">59.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.13.7.9" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.13.7.9.1" style="background-color:#F7F7FF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.14.8">
<th class="ltx_td ltx_th ltx_th_row" id="S3.T1.6.14.8.1" style="padding-left:3.5pt;padding-right:3.5pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.14.8.2" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.14.8.2.1" style="background-color:#F7F7FF;">LLaVA-v1.5-Phi-1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.14.8.3" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.14.8.3.1" style="background-color:#F7F7FF;">Phi-1.5-1.3B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.14.8.4" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.14.8.4.1" style="background-color:#F7F7FF;">336</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.14.8.5" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.14.8.5.1" style="background-color:#F7F7FF;">84.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.14.8.6" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.14.8.6.1" style="background-color:#F7F7FF;">1128.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.14.8.7" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.14.8.7.1" style="background-color:#F7F7FF;">75.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.14.8.8" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.14.8.8.1" style="background-color:#F7F7FF;">56.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.14.8.9" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.14.8.9.1" style="background-color:#F7F7FF;">30.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.15.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.6.15.9.1" rowspan="4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.15.9.1.1">Unified</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.6.15.9.2" style="padding-left:3.5pt;padding-right:3.5pt;">LWM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.6.15.9.3" style="padding-left:3.5pt;padding-right:3.5pt;">LLaMA2-7B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.6.15.9.4" style="padding-left:3.5pt;padding-right:3.5pt;">256</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.15.9.5" style="padding-left:3.5pt;padding-right:3.5pt;">75.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.15.9.6" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.15.9.7" style="padding-left:3.5pt;padding-right:3.5pt;">55.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.15.9.8" style="padding-left:3.5pt;padding-right:3.5pt;">44.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.15.9.9" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.16.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.16.10.1" style="padding-left:3.5pt;padding-right:3.5pt;">Chameleon <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.16.10.2" style="padding-left:3.5pt;padding-right:3.5pt;">7B from scratch</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.16.10.3" style="padding-left:3.5pt;padding-right:3.5pt;">512</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.16.10.4" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.16.10.5" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.16.10.6" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.16.10.7" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.16.10.8" style="padding-left:3.5pt;padding-right:3.5pt;">22.4</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.17.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.17.11.1" style="padding-left:3.5pt;padding-right:3.5pt;">LaVIT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.17.11.2" style="padding-left:3.5pt;padding-right:3.5pt;">7B from scratch</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.17.11.3" style="padding-left:3.5pt;padding-right:3.5pt;">256</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.17.11.4" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.17.11.5" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.17.11.6" style="padding-left:3.5pt;padding-right:3.5pt;">66.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.17.11.7" style="padding-left:3.5pt;padding-right:3.5pt;">46.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.17.11.8" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.18.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.18.12.1" style="padding-left:3.5pt;padding-right:3.5pt;">Emu3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.18.12.2" style="padding-left:3.5pt;padding-right:3.5pt;">8B from scratch</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.18.12.3" style="padding-left:3.5pt;padding-right:3.5pt;">512</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.18.12.4" style="padding-left:3.5pt;padding-right:3.5pt;">85.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.18.12.5" style="padding-left:3.5pt;padding-right:3.5pt;">1243.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.18.12.6" style="padding-left:3.5pt;padding-right:3.5pt;">75.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.18.12.7" style="padding-left:3.5pt;padding-right:3.5pt;">60.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.18.12.8" style="padding-left:3.5pt;padding-right:3.5pt;">31.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.19.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.19.13.1" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_ERROR undefined" id="S3.T1.6.19.13.1.1">\cdashline</span>2-8</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.19.13.2" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.19.13.2.1" style="background-color:#F7F7FF;">Janus <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.19.13.3" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.19.13.3.1" style="background-color:#F7F7FF;">DeepSeek-LLM-1.3B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.19.13.4" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.19.13.4.1" style="background-color:#F7F7FF;">384</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.19.13.5" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.19.13.5.1" style="background-color:#F7F7FF;">87.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.19.13.6" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.19.13.6.1" style="background-color:#F7F7FF;">1338.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.19.13.7" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.19.13.7.1" style="background-color:#F7F7FF;">77.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.19.13.8" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.19.13.8.1" style="background-color:#F7F7FF;">59.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.19.13.9" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.19.13.9.1" style="background-color:#F7F7FF;">30.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.20.14">
<th class="ltx_td ltx_th ltx_th_row" id="S3.T1.6.20.14.1" style="padding-left:3.5pt;padding-right:3.5pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.20.14.2" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.20.14.2.1" style="background-color:#F7F7FF;">JanusFlow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.20.14.3" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.20.14.3.1" style="background-color:#F7F7FF;">DeepSeek-LLM-1.3B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.20.14.4" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.20.14.4.1" style="background-color:#F7F7FF;">384</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.20.14.5" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.20.14.5.1" style="background-color:#F7F7FF;">88.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.20.14.6" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.20.14.6.1" style="background-color:#F7F7FF;">1333.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.20.14.7" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.20.14.7.1" style="background-color:#F7F7FF;">79.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.20.14.8" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.20.14.8.1" style="background-color:#F7F7FF;">60.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.20.14.9" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.20.14.9.1" style="background-color:#F7F7FF;">29.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.21.15">
<th class="ltx_td ltx_th ltx_th_row" id="S3.T1.6.21.15.1" style="padding-left:3.5pt;padding-right:3.5pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.21.15.2" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.21.15.2.1" style="background-color:#F7F7FF;">Show-o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.21.15.3" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.21.15.3.1" style="background-color:#F7F7FF;">Phi-1.5-1.3B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.21.15.4" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.21.15.4.1" style="background-color:#F7F7FF;">512</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.21.15.5" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.21.15.5.1" style="background-color:#F7F7FF;">80.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.21.15.6" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.21.15.6.1" style="background-color:#F7F7FF;">1097.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.21.15.7" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.21.15.7.1" style="background-color:#F7F7FF;">69.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.21.15.8" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.21.15.8.1" style="background-color:#F7F7FF;">58.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.21.15.9" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.21.15.9.1" style="background-color:#F7F7FF;">26.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.22.16">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="S3.T1.6.22.16.1" style="padding-left:3.5pt;padding-right:3.5pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.6.22.16.2" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.22.16.2.1" style="background-color:#F7F7FF;">OmniMamba</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S3.T1.6.22.16.3" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.22.16.3.1" style="background-color:#F7F7FF;">Mamba-2-1.3B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S3.T1.6.22.16.4" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.22.16.4.1" style="background-color:#F7F7FF;">384</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.22.16.5" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.22.16.5.1" style="background-color:#F7F7FF;">86.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.22.16.6" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.22.16.6.1" style="background-color:#F7F7FF;">1290.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.22.16.7" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.22.16.7.1" style="background-color:#F7F7FF;">77.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.22.16.8" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.22.16.8.1" style="background-color:#F7F7FF;">60.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.22.16.9" style="background-color:#F7F7FF;padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S3.T1.6.22.16.9.1" style="background-color:#F7F7FF;">30.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 compares the performance of OmniMamba with other multimodal understanding models, categorized into those focusing solely on understanding and those integrating understanding with generation.  It assesses performance across several benchmarks (POPE, MME-P, VQAv2test, GQA, and MMMU).  Models with a similar parameter count to OmniMamba are highlighted for easier comparison. The table primarily showcases OmniMamba's performance relative to other models with different architectural designs and training data scales in the context of multimodal understanding tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with other methods on multimodal understanding benchmarks. “Und. only” refers to models that only perform multimodal understanding task, while “Unified” refers to models that unify both multimodal understanding and visual generation tasks. Models with a similar number of parameters to ours are highlighted in light blue for emphasis.
> </details>





### In-depth insights


#### Mamba Efficiency
**Mamba's efficiency stems from its innovative selective state space model (SSM) architecture, achieving linear computational complexity**, a significant leap from the quadratic complexity of Transformers. This allows **Mamba to process long sequences with significantly reduced computational cost and memory footprint**. The selective mechanism enables **dynamic adaptation to relevant information within the sequence**, filtering out noise and irrelevant data, further boosting efficiency. Additionally, **Mamba's hardware-aware design optimizes memory access patterns and parallelization**, resulting in faster inference speeds and improved throughput. By addressing the limitations of Transformers, Mamba offers a promising avenue for efficient processing of sequential data in various applications.

#### Unified Gen Models
Unified generation models represent a significant leap in AI, **merging various generative tasks** like image and text creation into a single framework. This approach contrasts with traditional methods that treat each task separately. **The core benefit lies in shared learning**, where insights from one modality enhance the others, leading to more robust and efficient models. However, **challenges remain in balancing the complexities** of diverse data types and ensuring high-quality output across all modalities. The future of AI likely hinges on these unified models, promising more versatile and capable systems.

#### Decoupled Vocabs
**Decoupled Vocabularies** represent a strategic design choice in multimodal models. Instead of a unified vocabulary for all modalities, a separate vocabulary is created for each modality (e.g., text and images). This approach offers several key advantages such as **more efficient training** as the model doesn't need to learn modality distinctions from scratch; the vocabulary enforces a prior that guides generation, and **reduces ambiguity** and ensures relevant output for each modality. This strategy improves results, and the design ensures the correct output based on the modality.

#### LoRA Adaptation
**LoRA (Low-Rank Adaptation)** is a parameter-efficient fine-tuning technique. It freezes the pre-trained model weights and introduces a small number of trainable parameters through low-rank decomposition matrices. This drastically reduces the computational cost and memory footprint. LoRA can be selectively applied to specific layers or modules, allowing for targeted adaptation to new tasks or domains. The lightweight nature of LoRA enables rapid experimentation and deployment. It can be used to adapt multimodal models without retraining the entire model, significantly speeding up the process. The technique facilitates task-specific adaptation within unified models, improving efficiency. The low overhead makes it suitable for resource-constrained environments.

#### Limited Data Use
**Limited data use** is a critical consideration in modern machine learning. Training sophisticated models often requires vast datasets, raising concerns about **privacy**, **computational cost**, and **generalization ability**. Using smaller, more focused datasets can offer several advantages, such as: reducing the **risk of overfitting**, making model development more accessible to researchers with limited resources, and enabling faster training times. **Efficient data utilization** techniques like **transfer learning**, **data augmentation**, and **semi-supervised learning** can significantly improve the performance of models trained on limited data. The exploration of novel architectures optimized for low-data regimes is a promising area of research, potentially leading to more **robust and generalizable AI systems** with lower environmental impact.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.08686/x3.png)

> 🔼 OmniMamba processes text and image data using a unified next-token prediction approach.  Separate encoders and heads are used for multimodal understanding (MMU) and text-to-image (T2I) generation to handle their unique requirements: semantic extraction for MMU and high-fidelity image compression for T2I.  Decoupled vocabularies guide modality-specific generation, and task-specific Low-Rank Adaptation (LoRA) enhances parameter efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 2: Architecture of the proposed OmniMamba “MMU” refers to multimodal understanding, while “T2I” refers to text-to-image generation. OmniMamba employs a next-token prediction paradigm for both multimodal understanding and visual generation tasks. To address the distinct requirements of each task—semantic information extraction for multimodal understanding and high-fidelity image compression for visual generation, we utilize separate encoders and heads. Furthermore, we purpose decoupled vocabularies to guide modality-specific generation and task-specific LoRA for parameter-efficient adaptation.
> </details>



![](https://arxiv.org/html/2503.08686/x4.png)

> 🔼 This figure illustrates a Mamba-2 block, a core component of the OmniMamba model, enhanced with task-specific Low-Rank Adaptation (LoRA).  The original Mamba-2 architecture uses two input projectors, but the actual implementation merges feature dimensions from a single projector. This figure simplifies the diagram by showing only one input projector for clarity.  Crucially, the task-specific LoRA modules are applied to this entire input projection, enabling efficient task-specific adjustments within the Mamba-2 block. This is key to the model's ability to handle multimodal understanding and visual generation tasks efficiently.
> <details>
> <summary>read the caption</summary>
> Figure 3: The Mamba-2 block with task-specific LoRA. It is worth noting that while the Mamba-2 Block in the Mamba-2 paper has two input projectors, the actual code implementation separates the feature dimensions from a single projector output. For simplicity, we depict only one input projector in our illustration. Our task-specific LoRA is applied to this entire input projector.
> </details>



![](https://arxiv.org/html/2503.08686/x5.png)

> 🔼 This figure details OmniMamba's three-stage training process.  Stage 1 involves separate pre-training for multimodal understanding (MMU) and text-to-image (T2I) generation.  MMU pre-training focuses on aligning visual and textual representations, while T2I pre-training optimizes visual generation.  Note that only specific components (indicated by flame symbols) are trained in this stage, while others (snowflakes) remain frozen to facilitate efficient learning.  In Stage 2,  unified fine-tuning integrates both MMU and T2I tasks, enabling synergistic learning.  The dashed arrows represent the temporary disabling of certain paths during specific tasks.  Stage 3 is a continuation of Stage 2, further refining model capabilities across both modalities. The figure uses visual cues such as flames and snowflakes to effectively communicate which parts of the model are being updated during each training phase.
> <details>
> <summary>read the caption</summary>
> Figure 4: Training strategy of OmniMamba. The trainable components are indicated by a flame symbol, while the frozen ones are represented by snowflakes. The dashed arrows indicate that this route is temporarily dropped and does not participate in model training.
> </details>



![](https://arxiv.org/html/2503.08686/x6.png)

> 🔼 Figure 5 showcases example outputs from OmniMamba, demonstrating its capabilities in both multimodal understanding and visual generation.  The top row presents prompts (user requests) for image description and image generation tasks.  The bottom row displays OmniMamba's corresponding responses.  The multimodal understanding examples illustrate the model's ability to accurately and comprehensively describe images. The visual generation examples demonstrate the model's capacity to produce images aligned with the given prompts.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative results of OmniMamba on multimodal understanding and visual generation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.1.2" style="padding-left:1.5pt;padding-right:1.5pt;">Type</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.1.3" style="padding-left:1.5pt;padding-right:1.5pt;">Model</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.4" style="padding-left:1.5pt;padding-right:1.5pt;">Params</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.5" style="padding-left:1.5pt;padding-right:1.5pt;">Images</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">FID-30K<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.2.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.2.1.1" rowspan="7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.1.2.1.1.1">Gen. Only</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.2.1.2" style="padding-left:1.5pt;padding-right:1.5pt;">DALL·E <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.1.3" style="padding-left:1.5pt;padding-right:1.5pt;">12B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.1.4" style="padding-left:1.5pt;padding-right:1.5pt;">250M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.1.5" style="padding-left:1.5pt;padding-right:1.5pt;">27.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.3.2.1" style="padding-left:1.5pt;padding-right:1.5pt;">GLIDE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.3.2.2" style="padding-left:1.5pt;padding-right:1.5pt;">5B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.3.2.3" style="padding-left:1.5pt;padding-right:1.5pt;">250M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.3.2.4" style="padding-left:1.5pt;padding-right:1.5pt;">12.24</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.4.3.1" style="padding-left:1.5pt;padding-right:1.5pt;">DALL·E 2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.3.2" style="padding-left:1.5pt;padding-right:1.5pt;">6.5B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.3.3" style="padding-left:1.5pt;padding-right:1.5pt;">650M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.3.4" style="padding-left:1.5pt;padding-right:1.5pt;">10.39</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.5.4.1" style="padding-left:1.5pt;padding-right:1.5pt;">SDv1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.4.2" style="padding-left:1.5pt;padding-right:1.5pt;">0.9B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.4.3" style="padding-left:1.5pt;padding-right:1.5pt;">2000M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.4.4" style="padding-left:1.5pt;padding-right:1.5pt;">9.62</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.6.5.1" style="padding-left:1.5pt;padding-right:1.5pt;">PixArt <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.6.5.2" style="padding-left:1.5pt;padding-right:1.5pt;">0.6B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.6.5.3" style="padding-left:1.5pt;padding-right:1.5pt;">25M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.6.5.4" style="padding-left:1.5pt;padding-right:1.5pt;">7.32</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.7.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.7.6.1" style="padding-left:1.5pt;padding-right:1.5pt;">Imagen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.6.2" style="padding-left:1.5pt;padding-right:1.5pt;">7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.6.3" style="padding-left:1.5pt;padding-right:1.5pt;">960M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.6.4" style="padding-left:1.5pt;padding-right:1.5pt;">7.27</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.8.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.8.7.1" style="padding-left:1.5pt;padding-right:1.5pt;">Parti <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.7.2" style="padding-left:1.5pt;padding-right:1.5pt;">20B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.7.3" style="padding-left:1.5pt;padding-right:1.5pt;">4.8B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.7.4" style="padding-left:1.5pt;padding-right:1.5pt;">7.23</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.9.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row" id="S4.T2.1.9.8.1" style="padding-left:1.5pt;padding-right:1.5pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.9.8.2" style="padding-left:1.5pt;padding-right:1.5pt;">Re-Imagen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.8.3" style="padding-left:1.5pt;padding-right:1.5pt;">2.5B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.8.4" style="padding-left:1.5pt;padding-right:1.5pt;">50M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.8.5" style="padding-left:1.5pt;padding-right:1.5pt;">6.88</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.10.9">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row" id="S4.T2.1.10.9.1" style="padding-left:1.5pt;padding-right:1.5pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.10.9.2" style="padding-left:1.5pt;padding-right:1.5pt;">U-ViT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.9.3" style="padding-left:1.5pt;padding-right:1.5pt;">45M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.9.4" style="padding-left:1.5pt;padding-right:1.5pt;">83k(coco)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.9.5" style="padding-left:1.5pt;padding-right:1.5pt;">5.95</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.11.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.1.11.10.1" rowspan="7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.1.11.10.1.1">Unified</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.11.10.2" style="padding-left:1.5pt;padding-right:1.5pt;">CoDI <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.11.10.3" style="padding-left:1.5pt;padding-right:1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.11.10.4" style="padding-left:1.5pt;padding-right:1.5pt;">400M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.11.10.5" style="padding-left:1.5pt;padding-right:1.5pt;">22.26</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.12.11">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.12.11.1" style="padding-left:1.5pt;padding-right:1.5pt;">SEED-X <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.11.2" style="padding-left:1.5pt;padding-right:1.5pt;">17B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.11.3" style="padding-left:1.5pt;padding-right:1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.11.4" style="padding-left:1.5pt;padding-right:1.5pt;">14.99</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.13.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.13.12.1" style="padding-left:1.5pt;padding-right:1.5pt;">LWM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.12.2" style="padding-left:1.5pt;padding-right:1.5pt;">7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.12.3" style="padding-left:1.5pt;padding-right:1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.12.4" style="padding-left:1.5pt;padding-right:1.5pt;">12.68</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.14.13">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.14.13.1" style="padding-left:1.5pt;padding-right:1.5pt;">DreamLLM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.13.2" style="padding-left:1.5pt;padding-right:1.5pt;">7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.13.3" style="padding-left:1.5pt;padding-right:1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.13.4" style="padding-left:1.5pt;padding-right:1.5pt;">8.76</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.15.14">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.15.14.1" style="padding-left:1.5pt;padding-right:1.5pt;">Show-o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.14.2" style="padding-left:1.5pt;padding-right:1.5pt;">1.3B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.14.3" style="padding-left:1.5pt;padding-right:1.5pt;">35M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.14.4" style="padding-left:1.5pt;padding-right:1.5pt;">9.24</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.16.15">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.1.16.15.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.16.15.1.1">OmniMamba</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.16.15.2" style="padding-left:1.5pt;padding-right:1.5pt;">1.3B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.16.15.3" style="padding-left:1.5pt;padding-right:1.5pt;">83k(coco)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.16.15.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.16.15.4.1">5.50</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the visual generation capabilities of various models on the MS-COCO validation dataset.  It separates models into two categories: those focused solely on visual generation ('Gen. only') and those that perform both visual generation and multimodal understanding ('Unified'). The comparison is based on the FID (Fréchet Inception Distance) score, a lower score indicating better image quality. The table shows the model name, number of parameters, the number of images used for training, and the FID-30K score achieved.
> <details>
> <summary>read the caption</summary>
> Table 2: Compare visual generation capability with other methods on MS-COCO validation dataset. “Gen. only” refers to models that only perform visual generation task, while “Unified” refers to models that unify both multimodal understanding and visual generation tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.2.2.3">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1">
<math alttext="Gen_{avg}" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mrow id="S4.T3.1.1.1.m1.1.1" xref="S4.T3.1.1.1.m1.1.1.cmml"><mi id="S4.T3.1.1.1.m1.1.1.2" xref="S4.T3.1.1.1.m1.1.1.2.cmml">G</mi><mo id="S4.T3.1.1.1.m1.1.1.1" xref="S4.T3.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T3.1.1.1.m1.1.1.3" xref="S4.T3.1.1.1.m1.1.1.3.cmml">e</mi><mo id="S4.T3.1.1.1.m1.1.1.1a" xref="S4.T3.1.1.1.m1.1.1.1.cmml">⁢</mo><msub id="S4.T3.1.1.1.m1.1.1.4" xref="S4.T3.1.1.1.m1.1.1.4.cmml"><mi id="S4.T3.1.1.1.m1.1.1.4.2" xref="S4.T3.1.1.1.m1.1.1.4.2.cmml">n</mi><mrow id="S4.T3.1.1.1.m1.1.1.4.3" xref="S4.T3.1.1.1.m1.1.1.4.3.cmml"><mi id="S4.T3.1.1.1.m1.1.1.4.3.2" xref="S4.T3.1.1.1.m1.1.1.4.3.2.cmml">a</mi><mo id="S4.T3.1.1.1.m1.1.1.4.3.1" xref="S4.T3.1.1.1.m1.1.1.4.3.1.cmml">⁢</mo><mi id="S4.T3.1.1.1.m1.1.1.4.3.3" xref="S4.T3.1.1.1.m1.1.1.4.3.3.cmml">v</mi><mo id="S4.T3.1.1.1.m1.1.1.4.3.1a" xref="S4.T3.1.1.1.m1.1.1.4.3.1.cmml">⁢</mo><mi id="S4.T3.1.1.1.m1.1.1.4.3.4" xref="S4.T3.1.1.1.m1.1.1.4.3.4.cmml">g</mi></mrow></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1"><times id="S4.T3.1.1.1.m1.1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1.1"></times><ci id="S4.T3.1.1.1.m1.1.1.2.cmml" xref="S4.T3.1.1.1.m1.1.1.2">𝐺</ci><ci id="S4.T3.1.1.1.m1.1.1.3.cmml" xref="S4.T3.1.1.1.m1.1.1.3">𝑒</ci><apply id="S4.T3.1.1.1.m1.1.1.4.cmml" xref="S4.T3.1.1.1.m1.1.1.4"><csymbol cd="ambiguous" id="S4.T3.1.1.1.m1.1.1.4.1.cmml" xref="S4.T3.1.1.1.m1.1.1.4">subscript</csymbol><ci id="S4.T3.1.1.1.m1.1.1.4.2.cmml" xref="S4.T3.1.1.1.m1.1.1.4.2">𝑛</ci><apply id="S4.T3.1.1.1.m1.1.1.4.3.cmml" xref="S4.T3.1.1.1.m1.1.1.4.3"><times id="S4.T3.1.1.1.m1.1.1.4.3.1.cmml" xref="S4.T3.1.1.1.m1.1.1.4.3.1"></times><ci id="S4.T3.1.1.1.m1.1.1.4.3.2.cmml" xref="S4.T3.1.1.1.m1.1.1.4.3.2">𝑎</ci><ci id="S4.T3.1.1.1.m1.1.1.4.3.3.cmml" xref="S4.T3.1.1.1.m1.1.1.4.3.3">𝑣</ci><ci id="S4.T3.1.1.1.m1.1.1.4.3.4.cmml" xref="S4.T3.1.1.1.m1.1.1.4.3.4">𝑔</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">Gen_{avg}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">italic_G italic_e italic_n start_POSTSUBSCRIPT italic_a italic_v italic_g end_POSTSUBSCRIPT</annotation></semantics></math> (Image/s)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2">
<math alttext="Total" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mrow id="S4.T3.2.2.2.m1.1.1" xref="S4.T3.2.2.2.m1.1.1.cmml"><mi id="S4.T3.2.2.2.m1.1.1.2" xref="S4.T3.2.2.2.m1.1.1.2.cmml">T</mi><mo id="S4.T3.2.2.2.m1.1.1.1" xref="S4.T3.2.2.2.m1.1.1.1.cmml">⁢</mo><mi id="S4.T3.2.2.2.m1.1.1.3" xref="S4.T3.2.2.2.m1.1.1.3.cmml">o</mi><mo id="S4.T3.2.2.2.m1.1.1.1a" xref="S4.T3.2.2.2.m1.1.1.1.cmml">⁢</mo><mi id="S4.T3.2.2.2.m1.1.1.4" xref="S4.T3.2.2.2.m1.1.1.4.cmml">t</mi><mo id="S4.T3.2.2.2.m1.1.1.1b" xref="S4.T3.2.2.2.m1.1.1.1.cmml">⁢</mo><mi id="S4.T3.2.2.2.m1.1.1.5" xref="S4.T3.2.2.2.m1.1.1.5.cmml">a</mi><mo id="S4.T3.2.2.2.m1.1.1.1c" xref="S4.T3.2.2.2.m1.1.1.1.cmml">⁢</mo><mi id="S4.T3.2.2.2.m1.1.1.6" xref="S4.T3.2.2.2.m1.1.1.6.cmml">l</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><apply id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1"><times id="S4.T3.2.2.2.m1.1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1.1"></times><ci id="S4.T3.2.2.2.m1.1.1.2.cmml" xref="S4.T3.2.2.2.m1.1.1.2">𝑇</ci><ci id="S4.T3.2.2.2.m1.1.1.3.cmml" xref="S4.T3.2.2.2.m1.1.1.3">𝑜</ci><ci id="S4.T3.2.2.2.m1.1.1.4.cmml" xref="S4.T3.2.2.2.m1.1.1.4">𝑡</ci><ci id="S4.T3.2.2.2.m1.1.1.5.cmml" xref="S4.T3.2.2.2.m1.1.1.5">𝑎</ci><ci id="S4.T3.2.2.2.m1.1.1.6.cmml" xref="S4.T3.2.2.2.m1.1.1.6">𝑙</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">Total</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">italic_T italic_o italic_t italic_a italic_l</annotation></semantics></math> (s)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.2.3.1.1">Show-o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.1.2">0.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.1.3">19.66</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.4.2.1">JanusFlow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08686v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.4.2.2">1.02</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.4.2.3">15.64</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.2.5.3.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.5.3.1.1">OmniMamba</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.5.3.2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.5.3.2.1">5.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.5.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.2.5.3.3.1">2.81</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the speed of image generation for three different models: OmniMamba, Show-o, and JanusFlow.  The speed is measured in images per second (imgs/s) and total time taken to generate images in seconds (s).  OmniMamba demonstrates a significant speed advantage, generating images 7 times faster than Show-o and 5.6 times faster than JanusFlow.
> <details>
> <summary>read the caption</summary>
> Table 3: Image Generation Speed in Visual Generation Task. OmniMamba achieves 7.0 ×\times× faster image generation speed compared to Show-o and 5.6 ×\times× faster compared to JanusFlow.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.4.4.5">#Exp</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.4.6">Decoupling Vocabularies</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.4.7">Task Specific LoRA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1">POPE<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.2.2.2">MME<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3">GQA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.4.4">FID-30K<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.m1.1a"><mo id="S4.T4.4.4.4.m1.1.1" stretchy="false" xref="S4.T4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.m1.1b"><ci id="S4.T4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.4.5.1.1">1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.1.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.1.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.1.4">80.8</td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.4.5.1.5">1036</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.1.6">53.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.1.7">19.1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.4.6.2.1">2</th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.2.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.2.3">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.2.4">81.2</td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.4.6.2.5">1003</th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.2.6">54.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.2.7">14.4</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T4.4.7.3.1">3</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.7.3.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.7.3.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.7.3.4"><span class="ltx_text ltx_font_bold" id="S4.T4.4.7.3.4.1">81.9</span></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T4.4.7.3.5"><span class="ltx_text ltx_font_bold" id="S4.T4.4.7.3.5.1">1100</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.7.3.6"><span class="ltx_text ltx_font_bold" id="S4.T4.4.7.3.6.1">55.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.7.3.7"><span class="ltx_text ltx_font_bold" id="S4.T4.4.7.3.7.1">10.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted on OmniMamba to evaluate the impact of two key design choices: using separate vocabularies for multimodal understanding and visual generation tasks, and employing task-specific Low-Rank Adaptation (LoRA).  The table shows the performance metrics (POPE, MME, GQA, and FID-30K) achieved under different experimental conditions, enabling a comparison of the model's performance with and without each of these design choices, demonstrating their individual and combined effects on the overall effectiveness of OmniMamba.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation studies on decoupling Vocabularies and task specific LoRA in OmniMamba
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.2.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A1.T5.2.1.1.1" style="padding-left:2.5pt;padding-right:2.5pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.2.1.1.2" style="padding-left:2.5pt;padding-right:2.5pt;">Stage 1: MMU</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.2.1.1.3" style="padding-left:2.5pt;padding-right:2.5pt;">Stage 1: T2I</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.2.1.1.4" style="padding-left:2.5pt;padding-right:2.5pt;">Stage 2: Unify</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.2.2.2.1" style="padding-left:2.5pt;padding-right:2.5pt;">Learning Rate</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.2.2" style="padding-left:2.5pt;padding-right:2.5pt;">1e-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.2.3" style="padding-left:2.5pt;padding-right:2.5pt;">8e-4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.2.4" style="padding-left:2.5pt;padding-right:2.5pt;">1e-4</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.2.3.3.1" style="padding-left:2.5pt;padding-right:2.5pt;">Warm-up Steps</th>
<td class="ltx_td ltx_align_center" id="A1.T5.2.3.3.2" style="padding-left:2.5pt;padding-right:2.5pt;">100</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.3.3.3" style="padding-left:2.5pt;padding-right:2.5pt;">1000</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.3.3.4" style="padding-left:2.5pt;padding-right:2.5pt;">0</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.2.4.4.1" style="padding-left:2.5pt;padding-right:2.5pt;">Training Steps</th>
<td class="ltx_td ltx_align_center" id="A1.T5.2.4.4.2" style="padding-left:2.5pt;padding-right:2.5pt;">5k</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.4.4.3" style="padding-left:2.5pt;padding-right:2.5pt;">100k</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.4.4.4" style="padding-left:2.5pt;padding-right:2.5pt;">150k</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T5.2.5.5.1" style="padding-left:2.5pt;padding-right:2.5pt;">Batch Size</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.2.5.5.2" style="padding-left:2.5pt;padding-right:2.5pt;">256:0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.2.5.5.3" style="padding-left:2.5pt;padding-right:2.5pt;">0:720</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.2.5.5.4" style="padding-left:2.5pt;padding-right:2.5pt;">3:48</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5 details the hyperparameters used during the training of the OmniMamba model.  It breaks down the settings for three distinct training stages: MMU pre-training (multimodal understanding), T2I pre-training (text-to-image), and unified fine-tuning. For each stage, it lists the learning rate, warm-up steps (the initial period of training with a gradually increasing learning rate), total number of training steps, and the batch size ratio. The batch size ratio is a crucial parameter indicating the proportion of training data allocated to multimodal understanding versus image generation.  This ratio reflects a strategy to address the imbalance in the volume of data available for each task. The table provides a precise and comprehensive view of the training configuration, enabling reproducibility and facilitating analysis of the impact of hyperparameters on model performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Hyper-parameters of OmniMamba. The batch size ratio refers to the proportion between multimodal understanding data and visual generation data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.SS1.1.1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.SS1.1.1.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" colspan="2" id="A3.SS1.1.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A3.SS1.1.1.1.1.2.1.1.1">Spatial Reasoning:</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.SS1.1.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="A3.SS1.1.1.1.1.1.2"></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.SS1.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.SS1.1.1.1.1.1.1.1">
<span class="ltx_p" id="A3.SS1.1.1.1.1.1.1.1.1" style="width:213.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="138" id="A3.SS1.1.1.1.1.1.1.1.1.g1" src="extracted/6270528/figure/dog_bicycle.jpg" width="207"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.1.1.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.SS1.1.1.1.1.3.1.1">User</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.SS1.1.1.1.1.3.1.2">
<span class="ltx_inline-block ltx_align_top" id="A3.SS1.1.1.1.1.3.1.2.1">
<span class="ltx_p" id="A3.SS1.1.1.1.1.3.1.2.1.1" style="width:213.4pt;">Is the bicycle parked to the right of the dog in this image?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.1.1.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.SS1.1.1.1.1.4.2.1">OmniMamba</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.SS1.1.1.1.1.4.2.2">
<span class="ltx_inline-block ltx_align_top" id="A3.SS1.1.1.1.1.4.2.2.1">
<span class="ltx_p" id="A3.SS1.1.1.1.1.4.2.2.1.1" style="width:213.4pt;">The bicycle is actually parked to the left of the dog, not to the right.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.1.1.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.SS1.1.1.1.1.5.3.1">Show-o</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.SS1.1.1.1.1.5.3.2">
<span class="ltx_inline-block ltx_align_top" id="A3.SS1.1.1.1.1.5.3.2.1">
<span class="ltx_p" id="A3.SS1.1.1.1.1.5.3.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="A3.SS1.1.1.1.1.5.3.2.1.1.1" style="color:#FF0000;">Yes</span>, the bicycle is parked to the <span class="ltx_text" id="A3.SS1.1.1.1.1.5.3.2.1.1.2" style="color:#FF0000;">left</span> of the dog.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.1.1.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A3.SS1.1.1.1.1.6.4.1">JanusFlow</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A3.SS1.1.1.1.1.6.4.2">
<span class="ltx_inline-block ltx_align_top" id="A3.SS1.1.1.1.1.6.4.2.1">
<span class="ltx_p" id="A3.SS1.1.1.1.1.6.4.2.1.1" style="width:213.4pt;">No.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comparison of three different vision-language models (OmniMamba, JanusFlow, and Show-o) on a spatial reasoning task.  The task involves determining the relative spatial positions of objects within an image. The results show that OmniMamba correctly identifies the spatial relationship, while JanusFlow provides a correct but overly brief response.  Show-o, however, fails to demonstrate any understanding of the spatial relationships, highlighting the superior spatial reasoning capabilities of OmniMamba.
> <details>
> <summary>read the caption</summary>
> Table 6: OmniMamba can accurately determine spatial positions, JanusFlow made the correct judgment, but its response was overly concise, while Show-o lacks spatial reasoning capabilities, as indicated by the red text.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.SS1.2.1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.SS1.2.1.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" colspan="2" id="A3.SS1.2.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A3.SS1.2.1.1.1.2.1.1.1">Counting with Tricky Questions:</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.SS1.2.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="A3.SS1.2.1.1.1.1.2"></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.SS1.2.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.SS1.2.1.1.1.1.1.1">
<span class="ltx_p" id="A3.SS1.2.1.1.1.1.1.1.1" style="width:213.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="138" id="A3.SS1.2.1.1.1.1.1.1.1.g1" src="extracted/6270528/figure/sheep.jpg" width="226"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.2.1.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.SS1.2.1.1.1.3.1.1">User</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.SS1.2.1.1.1.3.1.2">
<span class="ltx_inline-block ltx_align_top" id="A3.SS1.2.1.1.1.3.1.2.1">
<span class="ltx_p" id="A3.SS1.2.1.1.1.3.1.2.1.1" style="width:213.4pt;">The animals in the picture look like cows. How many are there?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.2.1.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.SS1.2.1.1.1.4.2.1">OmniMamba</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.SS1.2.1.1.1.4.2.2">
<span class="ltx_inline-block ltx_align_top" id="A3.SS1.2.1.1.1.4.2.2.1">
<span class="ltx_p" id="A3.SS1.2.1.1.1.4.2.2.1.1" style="width:213.4pt;">There are three goats in the image, not cows.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.2.1.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.SS1.2.1.1.1.5.3.1">Show-o</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.SS1.2.1.1.1.5.3.2">
<span class="ltx_inline-block ltx_align_top" id="A3.SS1.2.1.1.1.5.3.2.1">
<span class="ltx_p" id="A3.SS1.2.1.1.1.5.3.2.1.1" style="width:213.4pt;">There are three <span class="ltx_text" id="A3.SS1.2.1.1.1.5.3.2.1.1.1" style="color:#FF0000;">cows</span> in the image.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.2.1.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A3.SS1.2.1.1.1.6.4.1">JanusFlow</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A3.SS1.2.1.1.1.6.4.2">
<span class="ltx_inline-block ltx_align_top" id="A3.SS1.2.1.1.1.6.4.2.1">
<span class="ltx_p" id="A3.SS1.2.1.1.1.6.4.2.1.1" style="width:213.4pt;">There are three animals in the picture.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 7 shows a comparison of three different models' responses to a question designed to test their ability to count objects while avoiding misleading information. OmniMamba correctly identifies the number of goats in the image and avoids the trap of the question phrasing, demonstrating accurate counting ability and resistance to misleading information.  In contrast, Show-o correctly counts the objects but is misled by the question's phrasing, showcasing vulnerability to deceptive questioning.  JanusFlow's answer lacks precision and isn't fully accurate.
> <details>
> <summary>read the caption</summary>
> Table 7: OmniMamba correctly outputs the quantity while avoiding the user’s trap question, whereas Show-o, despite counting correctly, was misled by the question, as indicated by the red text. On the other hand, JanusFlow’s response was not accurate enough.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.SS1.3.1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.SS1.3.1.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" colspan="2" id="A3.SS1.3.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A3.SS1.3.1.1.1.2.1.1.1">Scene Description:</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.SS1.3.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="A3.SS1.3.1.1.1.1.2"></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.SS1.3.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.SS1.3.1.1.1.1.1.1">
<span class="ltx_p" id="A3.SS1.3.1.1.1.1.1.1.1" style="width:213.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="138" id="A3.SS1.3.1.1.1.1.1.1.1.g1" src="extracted/6270528/figure/dog_and_cat.png" width="220"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.3.1.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.SS1.3.1.1.1.3.1.1">User</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.SS1.3.1.1.1.3.1.2">
<span class="ltx_inline-block ltx_align_top" id="A3.SS1.3.1.1.1.3.1.2.1">
<span class="ltx_p" id="A3.SS1.3.1.1.1.3.1.2.1.1" style="width:213.4pt;">Please describe it in detail.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.3.1.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.SS1.3.1.1.1.4.2.1">OmniMamba</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.SS1.3.1.1.1.4.2.2">
<span class="ltx_inline-block ltx_align_top" id="A3.SS1.3.1.1.1.4.2.2.1">
<span class="ltx_p" id="A3.SS1.3.1.1.1.4.2.2.1.1" style="width:213.4pt;">The image depicts a serene scene of a cat and a dog sharing a peaceful moment together. The cat, exhibiting a gray and white coat, is curled up comfortably, its head resting on the dog’s body. The dog, with its brown fur, is curled up in a similar position, with its head resting on the cat’s back. Their eyes are gently closed, signifying a deep sleep. The background is a blurred white, allowing the focus to remain on the sleeping feline and its canine friend. The image exudes warmth and affection, showcasing the close bond between the two animals.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.3.1.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A3.SS1.3.1.1.1.5.3.1">Show-o</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A3.SS1.3.1.1.1.5.3.2">
<span class="ltx_inline-block ltx_align_top" id="A3.SS1.3.1.1.1.5.3.2.1">
<span class="ltx_p" id="A3.SS1.3.1.1.1.5.3.2.1.1" style="width:213.4pt;">The image features a white and <span class="ltx_text" id="A3.SS1.3.1.1.1.5.3.2.1.1.1" style="color:#FF0000;">brown</span> cat lying on a bed, curled up and sleeping. The cat is resting its head on a <span class="ltx_text" id="A3.SS1.3.1.1.1.5.3.2.1.1.2" style="color:#FF0000;">stuffed animal, which is a teddy bear. The teddy bear is positioned on the right side of the cat, with its head resting on the cat’s back. The scene captures a peaceful and cozy moment between the cat and the stuffed animal</span>.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents a qualitative comparison of scene descriptions generated by OmniMamba and Show-o.  OmniMamba accurately describes a scene depicting a cat and dog sleeping together, correctly identifying their colors and postures.  In contrast, Show-o makes errors, misidentifying the dog as a teddy bear and incorrectly describing the cat's coloring.  The caption highlights OmniMamba's superior performance in accurately interpreting and describing visual scenes.
> <details>
> <summary>read the caption</summary>
> Table 8: OmniMamba can accurately describe the information in the scene, whereas Show-o made a mistake about the color of the cat and misidentified the dog as a teddy bear, as indicated by the red text.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.08686/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08686/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08686/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08686/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08686/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08686/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08686/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08686/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08686/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08686/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08686/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08686/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08686/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08686/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}