---
title: "Uni$\textbf{F}^2$ace: Fine-grained Face Understanding and Generation with Unified Multimodal Models"
summary: "UniFace: a novel UMM tailored for fine-grained face understanding and generation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Generation", "🏢 Peking University",]
showSummary: true
date: 2025-03-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.08120 {{< /keyword >}}
{{< keyword icon="writer" >}} Junzhe Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.08120" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.08120" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.08120/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Unified multimodal models (UMMs) show promise in computer vision, but face-specific research lags behind, especially in fine-grained details and generation. Current face methods often treat understanding and generation separately, limiting their effectiveness. To address this, a first UMM tailored specifically for face understanding and generation is introduced. The proposed model aims to train specifically for fine-grained face understanding and generation.



In response to the above issue, the paper proposes UniFace, trained on UniF²ace-130K, a new dataset with detailed image-text pairs and VQAs spanning facial attributes. A dual discrete diffusion (D3Diff) loss bridges masked generative models and score-based diffusion, improving face synthesis.  The results of extensive experiments demonstrate that UniFace outperforms existing UMMs and generative models and achieves superior performance across understanding and generation tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} UniFace: first UMM for simultaneous fine-grained face understanding and generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} UniF2ace-130K: A new dataset for face image-text research with detailed captions and VQAs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} D3Diff Loss: Bridges masked generative models and score-based diffusion for better face synthesis. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces UniFace and UniF2ace-130K, which represents a **significant advancement in face understanding and generation**. The research offers researchers a **robust platform** for investigating multimodal learning, prompting further investigation into specialized UMMs and refined facial analysis techniques.

------
#### Visual Insights



![](https://arxiv.org/html/2503.08120/x1.png)

> 🔼 UniFace is a novel unified multimodal model designed for both fine-grained face understanding and generation.  It excels at tasks like visual question answering (VQA), where it can accurately describe detailed facial features from an image, and face image captioning, generating rich, descriptive captions.  Furthermore, it enables text-to-face image generation, producing high-quality images from textual descriptions with accurate fine-grained details. The figure showcases examples of its capabilities in each of these areas, demonstrating the model's ability to capture subtle facial attributes and nuances.
> <details>
> <summary>read the caption</summary>
> Figure 1: UniF2superscriptF2\textbf{F}^{2}F start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPTace is the first unified multimodal model specifically designed for face understanding and generation, encompassing tasks such as visual question answering, face image captioning and text-to-face image generation. The generated responses and images demonstrate UniF2superscriptF2\textbf{F}^{2}F start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPTace’s significant potential in capturing fine-grained face attributes.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.5.5">
<tr class="ltx_tr" id="S4.T1.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.4.4.4.5">Type</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.4.4.4.6">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.4.4.7">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.4.4.8"># Params</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">VQAscore-CF5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.2.1">VQAscore-LV<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.2.1.m1.1a"><mo id="S4.T1.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.1.m1.1b"><ci id="S4.T1.2.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.3.1">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.1.m1.1"><semantics id="S4.T1.3.3.3.3.1.m1.1a"><mo id="S4.T1.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.1.m1.1b"><ci id="S4.T1.3.3.3.3.1.m1.1.1.cmml" xref="S4.T1.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.4.1">VLM-score<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.1.m1.1"><semantics id="S4.T1.4.4.4.4.1.m1.1a"><mo id="S4.T1.4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.1.m1.1b"><ci id="S4.T1.4.4.4.4.1.m1.1.1.cmml" xref="S4.T1.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.5.5.6.1" rowspan="4"><span class="ltx_text" id="S4.T1.5.5.6.1.1">Gen. Only</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.5.5.6.2">LlamaGen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08120v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.3">AR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.4">0.8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.5">0.746</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.6">0.551</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.7">183.466</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.8">49.773</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.7">
<td class="ltx_td ltx_align_left" id="S4.T1.5.5.7.1">DALL-E 3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08120v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.2">AR</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.4">0.845</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.5">0.644</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.6">106.477</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.7">50.122</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.8">
<td class="ltx_td ltx_align_left" id="S4.T1.5.5.8.1">SD3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08120v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.2">Diff</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.3" style="background-color:#FFCCCC;"><span class="ltx_text" id="S4.T1.5.5.8.3.1" style="background-color:#FFCCCC;">2B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.4"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.8.4.1">0.903</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.5">0.671</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.6">93.471</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.7">75.944</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.9">
<td class="ltx_td ltx_align_left" id="S4.T1.5.5.9.1">SDXL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08120v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.2">Diff</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.3" style="background-color:#FFCCCC;"><span class="ltx_text" id="S4.T1.5.5.9.3.1" style="background-color:#FFCCCC;">2.6B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.4">0.876</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.5">0.660</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.6">123.095</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.7">72.764</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T1.5.5.10.1" rowspan="5"><span class="ltx_text" id="S4.T1.5.5.10.1.1">Und. and Gen.</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.5.5.10.2">TokenFlow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08120v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.10.3">AR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.10.4" style="background-color:#FFCCCC;"><span class="ltx_text" id="S4.T1.5.5.10.4.1" style="background-color:#FFCCCC;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.10.5">0.871</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.10.6">0.664</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.10.7">98.194</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.10.8">73.177</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.11">
<td class="ltx_td ltx_align_left" id="S4.T1.5.5.11.1">OmniFlow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08120v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.11.2">Diff</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.11.3" style="background-color:#FFCCCC;"><span class="ltx_text" id="S4.T1.5.5.11.3.1" style="background-color:#FFCCCC;">3.4B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.11.4">0.798</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.11.5">0.585</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.11.6">180.933</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.11.7">24.96</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.12">
<td class="ltx_td ltx_align_left" id="S4.T1.5.5.12.1">JanusFlow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08120v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.12.2">AR + Diff</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.12.3">1.3B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.12.4">0.881</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.12.5">0.653</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.12.6">72.825</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.12.7">61.593</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.13">
<td class="ltx_td ltx_align_left" id="S4.T1.5.5.13.1">Show-o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08120v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.13.2">AR + Diff</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.13.3">1.3B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.13.4">0.855</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.13.5">0.650</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.13.6">142.557</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.13.7">75.618</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.5.5.5.1"><span class="ltx_text" id="S4.T1.5.5.5.1.1" style="background-color:#E6E6E6;">Uni<math alttext="\textbf{F}^{2}" class="ltx_Math" display="inline" id="S4.T1.5.5.5.1.1.m1.1"><semantics id="S4.T1.5.5.5.1.1.m1.1a"><msup id="S4.T1.5.5.5.1.1.m1.1.1" xref="S4.T1.5.5.5.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S4.T1.5.5.5.1.1.m1.1.1.2" mathbackground="#E6E6E6" xref="S4.T1.5.5.5.1.1.m1.1.1.2a.cmml">F</mtext><mn id="S4.T1.5.5.5.1.1.m1.1.1.3" mathbackground="#E6E6E6" xref="S4.T1.5.5.5.1.1.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.1.1.m1.1b"><apply id="S4.T1.5.5.5.1.1.m1.1.1.cmml" xref="S4.T1.5.5.5.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.5.5.5.1.1.m1.1.1.1.cmml" xref="S4.T1.5.5.5.1.1.m1.1.1">superscript</csymbol><ci id="S4.T1.5.5.5.1.1.m1.1.1.2a.cmml" xref="S4.T1.5.5.5.1.1.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S4.T1.5.5.5.1.1.m1.1.1.2.cmml" mathbackground="#E6E6E6" xref="S4.T1.5.5.5.1.1.m1.1.1.2">F</mtext></ci><cn id="S4.T1.5.5.5.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.5.5.5.1.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.1.1.m1.1c">\textbf{F}^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.1.1.m1.1d">F start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math>ace(Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.5.2"><span class="ltx_text" id="S4.T1.5.5.5.2.1" style="background-color:#E6E6E6;">AR + Diff</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.5.3"><span class="ltx_text" id="S4.T1.5.5.5.3.1" style="background-color:#E6E6E6;">1.8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.5.5.5.4.1" style="background-color:#E6E6E6;">0.894</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.5.5"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S4.T1.5.5.5.5.1" style="background-color:#E6E6E6;">0.679</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.5.6"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S4.T1.5.5.5.6.1" style="background-color:#E6E6E6;">66.005</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.5.7"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S4.T1.5.5.5.7.1" style="background-color:#E6E6E6;">88.049</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 compares the performance of UniFace, a novel unified multimodal model for fine-grained face understanding and generation, against other state-of-the-art (SOTA) models.  It evaluates both generative capabilities (using metrics such as VQAscore-CF5, VQAscore-LV, FID, and VLM-score) and the model's parameter size. The results demonstrate that UniFace achieves the best overall performance among models with similar parameter counts and performs comparably to, or even better than, significantly larger models.  Bold values indicate the absolute best performance, and underlined values highlight the best performance within either the 'Generation Only' or 'Understanding and Generation' model categories.  Larger model sizes are indicated in red.
> <details>
> <summary>read the caption</summary>
> Table 1:  Comparing the generative capability of UniF2superscriptF2\textbf{F}^{2}F start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPTace with other generative and unified multimodal models, UniF2superscriptF2\textbf{F}^{2}F start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPTace achieves state-of-the-art performance for models of the same parameter size and delivers comparable or superior results against larger models. Bold indicates the best performance overall, while underlined denotes the best among Und. and Gen. types. We use red to highlight the larger model size than ours.
> </details>





### In-depth insights


#### UniFace: Face UMM
**UniFace: A Unified Multimodal Model (UMM) for Faces** represents a significant stride towards holistic face understanding and generation. The model's core strength lies in its ability to bridge the gap between understanding intricate facial details and generating high-fidelity face images from text. It underscores the growing importance of UMMS in AI, extending their utility to the nuanced realm of facial analysis. This approach streamlines different tasks, enhancing flexibility and performance, moving beyond traditional task-specific models. By unifying understanding and generation, **UniFace captures complex interdependencies between facial attributes and textual descriptions**, enabling more context-aware and human-like interactions. Its design likely incorporates mechanisms for fine-grained representation learning and cross-modal alignment, which is crucial for accurately interpreting and synthesizing facial features from diverse data sources. Potential architectures may include transformers or attention mechanisms. **UniFace not only advances the field but also establishes a robust platform for future research**, offering a unified framework for exploring the interplay between facial attributes and multimodal inputs.

#### MoE for fine detail
**Mixture of Experts (MoE)** is crucial for capturing the intricate details in a task, particularly in scenarios that require fine-grained understanding. The MoE architecture is beneficial to model subtle nuances, allowing different experts to specialize in distinct features. **Token/Sequence-level MoEs** enable the model to adaptively handle diverse attributes by dynamically selecting relevant experts. This results in efficient representation learning for both understanding and generation tasks. Through **selective information processing**, MoE aids in capturing minute facial nuances, improving overall model performance. By concentrating on essential details, MoEs facilitate enhanced feature extraction. This specialized approach is essential for intricate tasks.

#### D3Diff for realism
**D3Diff, or Dual Discrete Diffusion, emerges as a pivotal training strategy meticulously crafted to enhance the synthesis of fine-grained facial details.** By theoretically connecting masked generative models with score-based diffusion models, D3Diff facilitates the simultaneous optimization of evidence lower bounds (ELBOs). This is significant because typical masked generative losses rely solely on likelihood, whereas D3Diff optimizes two distinct upper bounds of maximum likelihood, leading to higher-fidelity face generation. D3Diff leverages the theory of score matching in discrete diffusion, thereby bolstering the synthesis of subtle facial attributes. This strategy ensures that the generative model is not just producing faces, but is meticulously capturing intricate details. D3Diff serves to meticulously synthesize facial details, enabling UMMs to capture more human-like nuances. It also guarantees superior performance in face generation tasks.

#### UniFace-130K Data
**UniFace-130K is a dataset** created to address the limitations of existing facial datasets for multimodal modeling. It contains **130K facial image-text pairs** with detailed captions, as well as **one million VQA pairs.** The dataset covers a wide range of facial attributes related to appearance, actions, and emotions. Images come from CelebV-HQ, FFHQ, and MM-CelebA-HQ datasets. A two-stage caption generation refines MLLM-generated captions with face attribute classifiers. GPT-40 then generates diverse VQAs based on these captions. This ensures fine-grained descriptions and enhanced VQAs. The dataset aims to advance facial image understanding and generation, providing a solid foundation for training and evaluating multimodal models.

#### AGI face research
**AGI face research** represents a pivotal frontier in artificial intelligence, aiming to develop systems capable of understanding and generating realistic, nuanced facial representations. This involves not only creating high-fidelity images but also enabling AI to interpret and respond to facial cues like expressions and micro-expressions. **The challenge lies in capturing the complexity of human faces** and behaviors, which requires advanced multimodal models that integrate visual and textual data. **Progress in this area can revolutionize human-computer interaction**, enabling more intuitive and empathetic AI systems. Overcoming limitations in existing models, creating specialized datasets, and innovating in network architectures are key to advancing AGI in face-related tasks.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.08120/x2.png)

> 🔼 This figure illustrates the creation of the UniF2ace-130K dataset.  The left panel details a three-step pipeline: Step 1 involves collecting high-quality facial images; Step 2 uses GPT-40 and a fine-grained face attribute classification model to generate detailed captions, correcting and enhancing initial captions; and Step 3 creates visual question-answering (VQA) pairs using GPT-4. The right panel showcases examples demonstrating how this process refines GPT-40 generated captions, resulting in more accurate, comprehensive descriptions that include corrected attributes (e.g., gender), enhanced details (e.g., bags under eyes), and inferred information (e.g., a person is talking and seems slightly tired).
> <details>
> <summary>read the caption</summary>
> Figure 2: Pipeline and examples of UniF2superscriptF2\textbf{F}^{2}F start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPTace-130K construction. Left: A three-stage pipeline for building UniF2superscriptF2\textbf{F}^{2}F start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPTace-130K. Step-1: High-quality face images are collected. Step-2: Detailed captions are generated by GPT-4o with a face attribute model trained to classify fine-grained appearance, action, and emotion. Step-3: Question-answering pairs are created. These stages collectively refine GPT-4o-generated captions and produce fine-grained descriptions for VQAs generation. Right: A representative example showcasing UniF2superscriptF2\textbf{F}^{2}F start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPTace-130K’s ability to correct (e.g., gender), enhance (e.g., bags under eyes), and reason (e.g., talking, slight tiredness) in GPT-4o-generated captions.
> </details>



![](https://arxiv.org/html/2503.08120/x3.png)

> 🔼 UniFace, a unified multimodal model, processes both text and image inputs to perform Text-to-Image (T2I) and Multimodal Understanding (MMU) tasks.  Text is tokenized, and images are encoded using VQGAN.  These are combined into a single sequence. A noise scheduler then masks a portion of the image tokens.  The masked tokens are fed through a Transformer network containing Mixture-of-Experts (MoE) layers.  The MoEs are divided into generation and understanding groups.  The first group of MoEs operates at the token level, using both shared and routed experts, while the second group operates at the sequence level and incorporates domain-specific features. This hierarchical architecture allows for fine-grained processing of facial features. The model's training objective combines a D3Diff loss (based on the noise scheduler's output p<sub>t</sub>(x<sub>t</sub>|x<sub>0</sub>)) and a text autoregressive loss.
> <details>
> <summary>read the caption</summary>
> Figure 3: Our UniF2superscriptF2\textbf{F}^{2}F start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPTace architecture integrates Text-to-Image (T2I) and Multimodal Understanding (MMU) tasks. Text inputs are encoded via a tokenizer, while input images are processed through a VQGAN encoder, merging into a unified token sequence. A noise scheduler masks a subset of image tokens, which are then processed by a Transformer with Mixture-of-Experts (MoE) layers. These MoE layers are grouped for generation and understanding tasks, with the first operating at the token level using shared and routed experts, and the second incorporating domain-specific features at the sequence level. This hierarchical design enables fine-grained facial feature processing. The noise scheduler outputs pt⁢(𝐱t|𝐱0)subscript𝑝𝑡conditionalsubscript𝐱𝑡subscript𝐱0p_{t}(\mathbf{x}_{t}|\mathbf{x}_{0})italic_p start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ( bold_x start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT | bold_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT ) for D3Diff loss computation, combined with text autoregressive loss to form the training objective.
> </details>



![](https://arxiv.org/html/2503.08120/ICCV2025-Author-Kit/figures/t2i_demo_results_v1.pdf)

> 🔼 Figure 4 presents a comparison of face image generation results from five different models: SDXL, TokenFlow, OmniFlow, Show-o, and UniFace.  The goal is to showcase UniFace's superior ability to generate high-fidelity images that accurately reflect the details specified in text prompts. Each model is given the same prompt, and the resulting images are displayed alongside the prompt used to generate them.  By comparing the generated images, one can observe that UniFace produces images with significantly more detail and accuracy in capturing fine-grained attributes (such as hair color, clothing, and facial features) compared to the other models. The highlighted attributes in the figure emphasize UniFace's strength in this area.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparative analysis of face images generation quality across SDXL [43], TokenFlow [44], OmniFlow [23], Show-o [67], and UniF2superscriptF2\textbf{F}^{2}F start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPTace. Our proposed UniF2superscriptF2\textbf{F}^{2}F start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPTace effectively captures more detailed information from prompts. We highlight fine-grained attributes.
> </details>



![](https://arxiv.org/html/2503.08120/x4.png)

> 🔼 This figure visualizes the activation frequencies of the Mixture-of-Experts (MoE) layers within the UniFace model.  It's broken down into token-level and sequence-level MoE activations for both understanding and generation tasks. The size of the circles in the heatmaps directly corresponds to the frequency of activation for each expert within each layer. Larger circles represent more frequent activation. The left column shows the understanding tasks (image-to-text), while the right column shows the generation tasks (text-to-image).  This allows for a visual comparison of expert usage patterns between the two main tasks and across different layers of the network.
> <details>
> <summary>read the caption</summary>
> Figure 5: Activation frequency of Token-Level and Sequence-Level MoE in different layers. The left column corresponds to understanding tasks, while the right column corresponds to generation tasks. Larger circles indicate experts that are activated more frequently.
> </details>



![](https://arxiv.org/html/2503.08120/x5.png)

> 🔼 Figure 6 presents a comparison of visual question answering (VQA) performance between UniFace and other state-of-the-art models.  UniFace excels at generating detailed and accurate answers to complex questions about facial features.  The figure demonstrates UniFace's ability to capture and express subtle nuances of facial attributes such as hairstyles, earrings, or expressions, offering a superior level of detail and accuracy compared to alternative approaches.  GPT-40 scores are also included to provide a benchmark against a powerful large language model.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison of visual question-answering results and GPT-4o-based scores.
> </details>



![](https://arxiv.org/html/2503.08120/x6.png)

> 🔼 This figure shows a comparison of face images generated by different models: SDXL, TokenFlow, OmniFlow, Show-o, and UniFace (the authors' model).  For each model, several example images are displayed alongside a textual description of the generated face. This visual comparison highlights the differences in image quality, detail, and adherence to the prompt across various models.  UniFace demonstrates a higher level of detail and accuracy in capturing fine-grained features compared to other models.
> <details>
> <summary>read the caption</summary>
> Figure 1: More comparison of generated face images with other models.
> </details>



![](https://arxiv.org/html/2503.08120/x7.png)

> 🔼 This figure showcases additional examples of faces generated by the UniFace model.  It demonstrates the model's ability to produce diverse and high-quality images of faces with varying attributes and characteristics.
> <details>
> <summary>read the caption</summary>
> Figure 2: More face images generated by UniF2superscriptF2\textbf{F}^{2}F start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPTace
> </details>



![](https://arxiv.org/html/2503.08120/x8.png)

> 🔼 Figure 3 showcases a comparison of captioning results from various models, specifically highlighting fine-grained facial attributes.  The figure directly compares the captions generated by different models against a ground truth.  Blue highlights indicate correctly identified fine-grained attributes, while red highlights indicate errors or omissions. This allows for a visual assessment of each model's capability in capturing nuanced facial details and the accuracy of their descriptions.  Each model's caption is presented alongside a numerical score reflecting its performance. This visual representation aids in understanding the relative strengths and weaknesses of each model concerning fine-grained detail in facial attribute identification and description.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of captioning results and DeepSeeek-v3-based scores. We highlight fine-grained attributes with blue and errors in answers with red.
> </details>



![](https://arxiv.org/html/2503.08120/x9.png)

> 🔼 Figure 4 details the prompts used to create the UniF2ace-130K dataset.  The process involved three steps. First, a prompt was given to GPT-40 to generate initial captions describing facial attributes.  If the image had existing captions (as in the MM-CelebA-HQ dataset), those were incorporated into the prompt. Second, another prompt was used to refine those captions using additional fine-grained attributes. Third, a prompt was given to GPT-4 to generate visual question-answering (VQA) pairs based on the refined captions, aiming for a detailed understanding of facial attributes.
> <details>
> <summary>read the caption</summary>
> Figure 4: Prompts for building dataset. The first and second prompts are to GPT-4o, while the last prompt is to GPT-4. In the first prompt, the content in “[]” is used only when the image data includes built-in captions, such as in MM-CelebA-HQ dataset.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.5.5">
<tr class="ltx_tr" id="S4.T2.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.4.4.4.5">Type</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.4.4.4.6">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.4.4.7">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.4.4.8"># Params</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Desc-GPT<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.2.1">Conv-GPT<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.1.m1.1"><semantics id="S4.T2.2.2.2.2.1.m1.1a"><mo id="S4.T2.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.1.m1.1b"><ci id="S4.T2.2.2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.3.1">Desc-DS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.3.1.m1.1a"><mo id="S4.T2.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.1.m1.1b"><ci id="S4.T2.3.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.4.1">Conv-DS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.4.1.m1.1a"><mo id="S4.T2.4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.1.m1.1b"><ci id="S4.T2.4.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.5.5.6.1" rowspan="4"><span class="ltx_text" id="S4.T2.5.5.6.1.1">Und. Only</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.5.5.6.2">VILA1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08120v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.3">AR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.4" style="background-color:#FFCCCC;"><span class="ltx_text" id="S4.T2.5.5.6.4.1" style="background-color:#FFCCCC;">3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.5">4.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.6">5.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.7">6.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.8">6.54</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.7">
<td class="ltx_td ltx_align_left" id="S4.T2.5.5.7.1">Qwen2-VL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08120v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.2">AR</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.3" style="background-color:#FFCCCC;"><span class="ltx_text" id="S4.T2.5.5.7.3.1" style="background-color:#FFCCCC;">7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.4">5.16</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.5">6.27</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.6">5.50</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.7">6.86</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.8">
<td class="ltx_td ltx_align_left" id="S4.T2.5.5.8.1">LLaVA-v1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08120v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.2">AR</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.3" style="background-color:#FFCCCC;"><span class="ltx_text" id="S4.T2.5.5.8.3.1" style="background-color:#FFCCCC;">7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.4">4.28</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.5">5.48</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.6">4.84</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.7">6.20</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.9">
<td class="ltx_td ltx_align_left" id="S4.T2.5.5.9.1">InternVL2.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08120v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.2">AR</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.3" style="background-color:#FFCCCC;"><span class="ltx_text" id="S4.T2.5.5.9.3.1" style="background-color:#FFCCCC;">8B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.4">5.62</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.5">5.89</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.6">6.30</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.7">6.55</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.5.5.10.1" rowspan="5"><span class="ltx_text" id="S4.T2.5.5.10.1.1">Und. and Gen.</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.5.5.10.2">TokenFlow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08120v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.10.3">AR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.10.4" style="background-color:#FFCCCC;"><span class="ltx_text" id="S4.T2.5.5.10.4.1" style="background-color:#FFCCCC;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.10.5">5.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.10.6">5.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.10.7">5.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.10.8">6.39</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.11">
<td class="ltx_td ltx_align_left" id="S4.T2.5.5.11.1">OmniFlow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08120v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.2">Diff</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.3" style="background-color:#FFCCCC;"><span class="ltx_text" id="S4.T2.5.5.11.3.1" style="background-color:#FFCCCC;">3.4B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.4">1.62</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.6">1.90</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.7">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.12">
<td class="ltx_td ltx_align_left" id="S4.T2.5.5.12.1">JanusFlow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08120v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.12.2">AR + Diff</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.12.3">1.3B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.12.4">4.88</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.12.5">6.06</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.12.6">5.42</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.12.7">6.77</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.13">
<td class="ltx_td ltx_align_left" id="S4.T2.5.5.13.1">Show-o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08120v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.13.2">AR + Diff</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.13.3">1.3B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.13.4">3.88</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.13.5">4.17</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.13.6">5.24</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.13.7">4.90</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.5.5.5.1"><span class="ltx_text" id="S4.T2.5.5.5.1.1" style="background-color:#E6E6E6;">Uni<math alttext="\textbf{F}^{2}" class="ltx_Math" display="inline" id="S4.T2.5.5.5.1.1.m1.1"><semantics id="S4.T2.5.5.5.1.1.m1.1a"><msup id="S4.T2.5.5.5.1.1.m1.1.1" xref="S4.T2.5.5.5.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S4.T2.5.5.5.1.1.m1.1.1.2" mathbackground="#E6E6E6" xref="S4.T2.5.5.5.1.1.m1.1.1.2a.cmml">F</mtext><mn id="S4.T2.5.5.5.1.1.m1.1.1.3" mathbackground="#E6E6E6" xref="S4.T2.5.5.5.1.1.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.1.1.m1.1b"><apply id="S4.T2.5.5.5.1.1.m1.1.1.cmml" xref="S4.T2.5.5.5.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.5.5.5.1.1.m1.1.1.1.cmml" xref="S4.T2.5.5.5.1.1.m1.1.1">superscript</csymbol><ci id="S4.T2.5.5.5.1.1.m1.1.1.2a.cmml" xref="S4.T2.5.5.5.1.1.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S4.T2.5.5.5.1.1.m1.1.1.2.cmml" mathbackground="#E6E6E6" xref="S4.T2.5.5.5.1.1.m1.1.1.2">F</mtext></ci><cn id="S4.T2.5.5.5.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.5.5.5.1.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.1.1.m1.1c">\textbf{F}^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.1.1.m1.1d">F start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math>ace(Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.5.2"><span class="ltx_text" id="S4.T2.5.5.5.2.1" style="background-color:#E6E6E6;">AR + Diff</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.5.3"><span class="ltx_text" id="S4.T2.5.5.5.3.1" style="background-color:#E6E6E6;">1.8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.5.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.4.1" style="background-color:#E6E6E6;">6.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.5.1" style="background-color:#E6E6E6;">6.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.5.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.6.1" style="background-color:#E6E6E6;">7.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.5.7"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.7.1" style="background-color:#E6E6E6;">7.29</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of UniFace's performance on face understanding tasks against several state-of-the-art multimodal models, including both advanced models focusing solely on understanding and unified multimodal models capable of both understanding and generation.  The metrics used assess the model's ability to extract and analyze detailed facial features from images. UniFace significantly outperforms all other models across all evaluation metrics, showcasing its superior capabilities in fine-grained face understanding.
> <details>
> <summary>read the caption</summary>
> Table 2:  Evaluation on face understanding tasks compared with advanced multimodal models and unified multimodal models. Our UniF2superscriptF2\textbf{F}^{2}F start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPTace achieves the highest scores across all metrics, demonstrating superior ability to extract and analyze features from face images.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.5.5">
<tr class="ltx_tr" id="S4.T3.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.5.6"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.6.1" style="font-size:298%;">Loss Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1" style="font-size:298%;">Weight <math alttext="\alpha" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.m1.1a"><mi id="S4.T3.1.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.m1.1d">italic_α</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.2.1" style="font-size:298%;">VQAscore-CF5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.2.1.m1.1a"><mo id="S4.T3.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.1.m1.1b"><ci id="S4.T3.2.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.3.1" style="font-size:298%;">VQAscore-LV<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.1.m1.1"><semantics id="S4.T3.3.3.3.3.1.m1.1a"><mo id="S4.T3.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.1.m1.1b"><ci id="S4.T3.3.3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.4.1" style="font-size:298%;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.1.m1.1"><semantics id="S4.T3.4.4.4.4.1.m1.1a"><mo id="S4.T3.4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.1.m1.1b"><ci id="S4.T3.4.4.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.5.1" style="font-size:298%;">VLM-score<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.5.1.m1.1"><semantics id="S4.T3.5.5.5.5.1.m1.1a"><mo id="S4.T3.5.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T3.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.5.1.m1.1b"><ci id="S4.T3.5.5.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.6.1" rowspan="3"><span class="ltx_text" id="S4.T3.5.5.6.1.1" style="font-size:298%;">D3Diff</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.6.2"><span class="ltx_text" id="S4.T3.5.5.6.2.1" style="font-size:298%;">0.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.6.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.5.5.6.3.1" style="font-size:298%;">0.887</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.6.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.5.5.6.4.1" style="font-size:298%;">0.673</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.6.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.5.5.6.5.1" style="font-size:298%;">68.903</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.6.6"><span class="ltx_text" id="S4.T3.5.5.6.6.1" style="font-size:298%;">86.378</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.7">
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.1"><span class="ltx_text" id="S4.T3.5.5.7.1.1" style="font-size:298%;">0.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.2"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.7.2.1" style="font-size:298%;">0.894</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.7.3.1" style="font-size:298%;">0.679</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.7.4.1" style="font-size:298%;">66.005</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.5.5.7.5.1" style="font-size:298%;">88.049</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.8">
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.1"><span class="ltx_text" id="S4.T3.5.5.8.1.1" style="font-size:298%;">0.001</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.2"><span class="ltx_text" id="S4.T3.5.5.8.2.1" style="font-size:298%;">0.884</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.3"><span class="ltx_text" id="S4.T3.5.5.8.3.1" style="font-size:298%;">0.668</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.4"><span class="ltx_text" id="S4.T3.5.5.8.4.1" style="font-size:298%;">72.736</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.8.5.1" style="font-size:298%;">89.220</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.9.1"><span class="ltx_text" id="S4.T3.5.5.9.1.1" style="font-size:298%;">Only Mask</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.9.2"><span class="ltx_text" id="S4.T3.5.5.9.2.1" style="font-size:298%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.9.3"><span class="ltx_text" id="S4.T3.5.5.9.3.1" style="font-size:298%;">0.879</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.9.4"><span class="ltx_text" id="S4.T3.5.5.9.4.1" style="font-size:298%;">0.661</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.9.5"><span class="ltx_text" id="S4.T3.5.5.9.5.1" style="font-size:298%;">77.463</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.9.6"><span class="ltx_text" id="S4.T3.5.5.9.6.1" style="font-size:298%;">85.993</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.10">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.5.10.1"><span class="ltx_text" id="S4.T3.5.5.10.1.1" style="font-size:298%;">Only Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.5.10.2"><span class="ltx_text" id="S4.T3.5.5.10.2.1" style="font-size:298%;">0.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.5.10.3"><span class="ltx_text" id="S4.T3.5.5.10.3.1" style="font-size:298%;">0.886</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.5.10.4"><span class="ltx_text" id="S4.T3.5.5.10.4.1" style="font-size:298%;">0.670</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.5.10.5"><span class="ltx_text" id="S4.T3.5.5.10.5.1" style="font-size:298%;">69.694</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.5.10.6"><span class="ltx_text" id="S4.T3.5.5.10.6.1" style="font-size:298%;">87.951</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing the performance of the UniFace model trained with different loss functions.  The primary loss function used is D3Diff (Dual Discrete Diffusion), which combines elements of score-matching and masked generative losses.  The table shows the results when training with only the score matching loss, only the masked generative loss, and varying the weighting coefficient (α) in the D3Diff loss. Metrics evaluated include VQAscore-CF5, VQAscore-LV, FID, and VLM-score. The best overall results (bold) are achieved with α = 0.01 in the D3Diff loss function, indicating the effectiveness of the dual loss approach. The second-best results (underlined) provide further context for the relative performance of alternative loss functions.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance comparison with different loss. Considering all metrics, the optimal result is achieved with α=0.01𝛼0.01\alpha=0.01italic_α = 0.01 in D3Diff. Bold: Best performance. Underlined: Second best performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.5.5">
<tr class="ltx_tr" id="S4.T4.5.5.6">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.5.5.6.1" rowspan="2"><span class="ltx_text" id="S4.T4.5.5.6.1.1" style="font-size:298%;"><span class="ltx_text" id="S4.T4.5.5.6.1.1.1"></span> <span class="ltx_text" id="S4.T4.5.5.6.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.5.5.6.1.1.2.1">
<span class="ltx_tr" id="S4.T4.5.5.6.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.5.5.6.1.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.6.1.1.2.1.1.1.1">Token</span></span></span>
<span class="ltx_tr" id="S4.T4.5.5.6.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.5.5.6.1.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.6.1.1.2.1.2.1.1">MoE</span></span></span>
</span></span> <span class="ltx_text" id="S4.T4.5.5.6.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.5.5.6.2" rowspan="2"><span class="ltx_text" id="S4.T4.5.5.6.2.1" style="font-size:298%;"><span class="ltx_text" id="S4.T4.5.5.6.2.1.1"></span> <span class="ltx_text" id="S4.T4.5.5.6.2.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.5.5.6.2.1.2.1">
<span class="ltx_tr" id="S4.T4.5.5.6.2.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.5.5.6.2.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.6.2.1.2.1.1.1.1">Sequence</span></span></span>
<span class="ltx_tr" id="S4.T4.5.5.6.2.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.5.5.6.2.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.6.2.1.2.1.2.1.1">MoE</span></span></span>
</span></span> <span class="ltx_text" id="S4.T4.5.5.6.2.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.5.5.6.3">
<span class="ltx_text ltx_font_bold" id="S4.T4.5.5.6.3.1" style="font-size:298%;">Generation</span><span class="ltx_text" id="S4.T4.5.5.6.3.2" style="font-size:298%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T4.5.5.6.4">
<span class="ltx_text ltx_font_bold" id="S4.T4.5.5.6.4.1" style="font-size:298%;">Understanding</span><span class="ltx_text" id="S4.T4.5.5.6.4.2" style="font-size:298%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1" style="font-size:298%;">VQAscore<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.2.1" style="font-size:298%;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.2.1.m1.1a"><mo id="S4.T4.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.1.m1.1b"><ci id="S4.T4.2.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.3.1" style="font-size:298%;">VLM-score<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.1.m1.1"><semantics id="S4.T4.3.3.3.3.1.m1.1a"><mo id="S4.T4.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.1.m1.1b"><ci id="S4.T4.3.3.3.3.1.m1.1.1.cmml" xref="S4.T4.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.4.4.1" style="font-size:298%;">Desc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.1.m1.1"><semantics id="S4.T4.4.4.4.4.1.m1.1a"><mo id="S4.T4.4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T4.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.1.m1.1b"><ci id="S4.T4.4.4.4.4.1.m1.1.1.cmml" xref="S4.T4.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.5.5.1" style="font-size:298%;">Conv<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.5.5.5.5.1.m1.1"><semantics id="S4.T4.5.5.5.5.1.m1.1a"><mo id="S4.T4.5.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T4.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.5.1.m1.1b"><ci id="S4.T4.5.5.5.5.1.m1.1.1.cmml" xref="S4.T4.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.7.1"><span class="ltx_text" id="S4.T4.5.5.7.1.1" style="font-size:298%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.7.2"><span class="ltx_text" id="S4.T4.5.5.7.2.1" style="font-size:298%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.7.3"><span class="ltx_text" id="S4.T4.5.5.7.3.1" style="font-size:298%;">0.878</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.7.4"><span class="ltx_text" id="S4.T4.5.5.7.4.1" style="font-size:298%;">72.877</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.7.5"><span class="ltx_text" id="S4.T4.5.5.7.5.1" style="font-size:298%;">84.432</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.7.6"><span class="ltx_text" id="S4.T4.5.5.7.6.1" style="font-size:298%;">4.988</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.7.7"><span class="ltx_text" id="S4.T4.5.5.7.7.1" style="font-size:298%;">6.031</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.8">
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.8.1"><span class="ltx_text" id="S4.T4.5.5.8.1.1" style="font-size:298%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.8.2"><span class="ltx_text" id="S4.T4.5.5.8.2.1" style="font-size:298%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.8.3"><span class="ltx_text" id="S4.T4.5.5.8.3.1" style="font-size:298%;">0.887</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.8.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.5.5.8.4.1" style="font-size:298%;">67.415</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.8.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.5.5.8.5.1" style="font-size:298%;">87.917</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.8.6"><span class="ltx_text" id="S4.T4.5.5.8.6.1" style="font-size:298%;">5.678</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.8.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.5.5.8.7.1" style="font-size:298%;">6.495</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.9">
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.9.1"><span class="ltx_text" id="S4.T4.5.5.9.1.1" style="font-size:298%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.9.2"><span class="ltx_text" id="S4.T4.5.5.9.2.1" style="font-size:298%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.9.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.5.5.9.3.1" style="font-size:298%;">0.889</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.9.4"><span class="ltx_text" id="S4.T4.5.5.9.4.1" style="font-size:298%;">69.312</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.9.5"><span class="ltx_text" id="S4.T4.5.5.9.5.1" style="font-size:298%;">86.790</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.9.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.5.5.9.6.1" style="font-size:298%;">5.864</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.9.7"><span class="ltx_text" id="S4.T4.5.5.9.7.1" style="font-size:298%;">6.247</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.10">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.5.10.1"><span class="ltx_text" id="S4.T4.5.5.10.1.1" style="font-size:298%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.5.10.2"><span class="ltx_text" id="S4.T4.5.5.10.2.1" style="font-size:298%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.5.10.3"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.10.3.1" style="font-size:298%;">0.894</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.5.10.4"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.10.4.1" style="font-size:298%;">66.005</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.5.10.5"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.10.5.1" style="font-size:298%;">88.049</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.5.10.6"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.10.6.1" style="font-size:298%;">6.023</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.5.10.7"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.10.7.1" style="font-size:298%;">6.532</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating the impact of token-level and sequence-level Mixture-of-Experts (MoEs) on the UniFace model's performance.  It shows the results of experiments where each type of MoE was removed individually to measure their contribution to overall performance.  The results demonstrate that both token-level and sequence-level MoEs significantly improve the model's performance across multiple metrics.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance impact of token-level and sequence-level MoE in UniF2superscriptF2\textbf{F}^{2}F start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPTace through ablation study. Both MoEs contribute significant performance improvements.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.08120/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08120/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}