---
title: "MotionStreamer: Streaming Motion Generation via Diffusion-based Autoregressive Model in Causal Latent Space"
summary: "MotionStreamer: Streaming motion generation w/ diffusion-based autoregressive model in causal latent space."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Action Recognition", "🏢 Zhejiang University",]
showSummary: true
date: 2025-03-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.15451 {{< /keyword >}}
{{< keyword icon="writer" >}} Lixing Xiao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.15451" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.15451" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.15451/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing text-conditioned streaming motion generation methods struggle with online response and long-term error accumulation. Diffusion models are limited by pre-defined motion lengths. GPT-based methods suffer from delayed responses and non-causal tokenization hinders performance. Thus, there's a need for continuous, causally-aware models that can adapt to real-time text input while maintaining motion coherence and minimizing errors. 



To address these issues, this paper presents **MotionStreamer**, a novel framework that uses a continuous causal latent space within a probabilistic autoregressive model. This mitigates information loss and reduces error accumulation. A causal motion compressor enables online decoding. Two new training strategies: Two-Forward training and Mixed training, address error accumulation and improve compositional learning. The method achieves SOTA performance and supports multi-round generation and dynamic motion composition.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces MotionStreamer, a new framework for streaming motion generation using diffusion models and causal latent spaces. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents a causal motion compressor that ensures online decoding and minimizes information loss. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates state-of-the-art performance and shows downstream applications like multi-round generation and dynamic motion composition. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel approach to streaming motion generation, enabling more realistic and responsive virtual characters. It has potential for real-time applications like games and robotics. The method of **continuous causal latent space** opens new avenues for research, potentially improving other generative tasks. It also provides benchmarks and downstream applications that can lead to further investigations.

------
#### Visual Insights



![](https://arxiv.org/html/2503.15451/x3.png)

> 🔼 This figure visualizes the process of online motion generation.  The system receives text input incrementally, meaning one word or phrase at a time, rather than a complete sentence or paragraph. As each piece of text is added, the model generates the corresponding portion of the motion sequence.  The five depicted poses illustrate how the model adapts to changes in text, creating a continuous, flowing motion that accurately reflects the text's meaning. This continuous update of both the text input and motion output is a key aspect of the 'streaming' approach.
> <details>
> <summary>read the caption</summary>
> Figure 1: Visualization of streaming motion generation process. Texts are incrementally inputted and motions are generated online.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.6.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.6.7.1" style="font-size:90%;">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T1.1.1.1.1" style="font-size:90%;">FID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T1.2.2.2.1" style="font-size:90%;">R@1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T1.3.3.3.1" style="font-size:90%;">R@2 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T1.4.4.4.1" style="font-size:90%;">R@3 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T1.5.5.5.1" style="font-size:90%;">MM-D </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T1.6.6.6.1" style="font-size:90%;">Div </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.m1.1a"><mo id="S4.T1.6.6.6.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.6.6.6.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.m1.1b"><ci id="S4.T1.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.m1.1d">→</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S4.T1.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T1.6.7.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.7.1.1.1" style="font-size:90%;">Real motion</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.7.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.7.1.2.1" style="font-size:90%;">0.002</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.7.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.7.1.3.1" style="font-size:90%;">0.711</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.7.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.7.1.4.1" style="font-size:90%;">0.851</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.7.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.7.1.5.1" style="font-size:90%;">0.903</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.7.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.7.1.6.1" style="font-size:90%;">15.805</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.7.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.7.1.7.1" style="font-size:90%;">27.670</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.6.8.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T1.6.8.1.1.1" style="font-size:90%;">MDM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.8.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15451v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a><span class="ltx_text" id="S4.T1.6.8.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.8.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.8.1.2.1" style="font-size:90%;">22.557</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.8.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.8.1.3.1" style="font-size:90%;">0.524</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.8.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.8.1.4.1" style="font-size:90%;">0.693</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.8.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.8.1.5.1" style="font-size:90%;">0.773</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.8.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.8.1.6.1" style="font-size:90%;">17.223</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.8.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.8.1.7.1" style="font-size:90%;">27.355</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.9.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T1.6.9.2.1.1" style="font-size:90%;">MLD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.9.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15451v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a><span class="ltx_text" id="S4.T1.6.9.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.9.2.2.1" style="font-size:90%;">17.226</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.9.2.3.1" style="font-size:90%;">0.548</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.9.2.4.1" style="font-size:90%;">0.732</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.9.2.5.1" style="font-size:90%;">0.805</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.9.2.6.1" style="font-size:90%;">16.338</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.9.2.7.1" style="font-size:90%;">26.551</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.10.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.10.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T1.6.10.3.1.1" style="font-size:90%;">T2M-GPT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.10.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15451v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a><span class="ltx_text" id="S4.T1.6.10.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.10.3.2.1" style="font-size:90%;">11.175</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.10.3.3.1" style="font-size:90%;">0.608</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.10.3.4.1" style="font-size:90%;">0.772</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.10.3.5.1" style="font-size:90%;">0.831</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.10.3.6.1" style="font-size:90%;">16.810</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.10.3.7.1" style="font-size:90%;">27.617</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.11.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.11.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T1.6.11.4.1.1" style="font-size:90%;">MotionGPT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.11.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15451v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="S4.T1.6.11.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.11.4.2.1" style="font-size:90%;">14.175</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.11.4.3.1" style="font-size:90%;">0.436</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.11.4.4.1" style="font-size:90%;">0.598</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.11.4.5.1" style="font-size:90%;">0.668</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.11.4.6.1" style="font-size:90%;">17.890</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.4.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.11.4.7.1" style="font-size:90%;">27.014</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.12.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.12.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T1.6.12.5.1.1" style="font-size:90%;">MoMask </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.12.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15451v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S4.T1.6.12.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.12.5.2.1" style="font-size:90%;">10.731</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.12.5.3.1" style="font-size:90%;">0.622</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.12.5.4.1" style="font-size:90%;">0.782</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.12.5.5.1" style="font-size:90%;">0.850</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.12.5.6.1" style="font-size:90%;">16.128</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.5.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.12.5.7.1" style="font-size:90%;">27.317</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.13.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.13.6.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T1.6.13.6.1.1" style="font-size:90%;">AttT2M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.13.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15451v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="S4.T1.6.13.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.13.6.2.1" style="font-size:90%;">15.438</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.13.6.3.1" style="font-size:90%;">0.590</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.13.6.4.1" style="font-size:90%;">0.767</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.13.6.5.1" style="font-size:90%;">0.837</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.13.6.6.1" style="font-size:90%;">15.734</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.13.6.7.1" style="font-size:90%;">26.680</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.14.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.6.14.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.6.14.7.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.14.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.7.2.1" style="font-size:90%;">10.724</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.14.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.7.3.1" style="font-size:90%;">0.631</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.14.7.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.7.4.1" style="font-size:90%;">0.784</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.14.7.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.7.5.1" style="font-size:90%;">0.851</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.14.7.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.14.7.6.1" style="font-size:90%;">16.639</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.14.7.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.7.7.1" style="font-size:90%;">27.657</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of MotionStreamer against several existing text-to-motion generation methods. The evaluation was performed on the HumanML3D [17] test set, using a variety of metrics to assess both the quality and diversity of generated motion sequences.  These metrics include FID (Frechet Inception Distance), which measures the similarity of generated motion distributions to real ones, R@k (Recall@k), indicating the top k retrieval accuracy of generated motions, MM-Dist (Multimodal Distance) showing the alignment between generated motion features and text features, and Div (Diversity), quantifying the diversity of generated motions.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with baseline text-to-motion generation methods on HumanML3D [17] test set. MM-D and Div denote MM-Dist and Diversity respectively.
> </details>





### In-depth insights


#### Causal Latents
Causal latents represent a significant advancement in sequence modeling, particularly for tasks requiring temporal coherence and online processing. Unlike traditional latent spaces that might treat each element in a sequence independently, **causal latents explicitly encode temporal dependencies**, ensuring that the latent representation at any given time step only depends on past information. This causality is crucial for applications like streaming generation, where future context is unavailable. **The use of continuous causal latents mitigates information loss** associated with discrete tokenization methods. By avoiding discretization, the model preserves fine-grained details and reduces error accumulation during long-term generation. Moreover, **enforcing causality in the latent space allows for online decoding**, enabling real-time responses to sequential inputs.

#### Online Response
Online response in motion generation implies real-time or near-real-time generation of human motions based on textual prompts. This is essential for interactive applications such as games and robotics. Achieving low latency is crucial, necessitating efficient architectures that minimize processing time. Traditional methods using discrete tokenization and full sequence decoding often struggle with online response due to delays in processing and decoding. Solutions involve causal models that can generate motions incrementally, leveraging continuous latent spaces to avoid information loss and reduce error accumulation. Techniques to reduce 'First-frame Latency' are also significant in evaluating the system. Additionally, strategies like **Two-Forward Training** and **Mixed Training** mitigate error accumulation, further improving the quality and stability of generated motions for online interactive scenarios.

#### Error Reduction
In addressing error reduction in streaming motion generation, several key areas need focus. First, **continuous latent spaces** can mitigate information loss inherent in discrete tokenization, a common source of error in autoregressive models. By maintaining continuous representations, the model avoids the accumulation of quantization errors over long sequences, leading to more coherent and stable motion generation. Temporal causal dependencies are crucial; establishing these dependencies allows the model to effectively integrate historical motion data with incoming textual conditions, enhancing the accuracy of online motion decoding. This involves designing architectures that explicitly model temporal causality, such as the proposed Causal Temporal AutoEncoder (Causal TAE), which ensures that predictions only depend on past information. Finally, training strategies play a vital role. **Two-forward training** and mixed training methodologies can mitigate exposure bias and improve generalization by blending ground truth and predicted motion latents during training. **Mixed training** combines atomic and contextual data to learn compositional semantics and handle diverse motion combinations, further reducing error accumulation and improving overall performance.

#### Mix Training
The 'Mix Training' approach addresses a critical challenge in streaming motion generation: **seamlessly transitioning between atomic (isolated text-motion pairs) and contextual data (text, history motion, and current motion triplets)**. By unifying these two types of training examples, the model learns to leverage both immediate text cues and long-range dependencies, potentially enhancing semantic consistency and generalization to unseen motion combinations. This integration likely involves carefully balancing the contribution of each data type during training, perhaps using a weighting scheme or curriculum learning approach. **The core benefit lies in its ability to foster compositional semantics learning**, meaning the model becomes proficient in assembling motion sequences from diverse sources, ultimately leading to more robust and versatile performance in real-world streaming scenarios. This is especially crucial where motion is interactively directed, and actions shift fluidly.

#### Stopping Cond.
The document addresses the challenge of determining when to stop generating motion in a streaming fashion. This is crucial for avoiding the generation of unrealistic or nonsensical movements beyond the intended action, a problem particularly relevant in scenarios with variable-length inputs. The document proposes a novel approach by embedding an "impossible pose", essentially a null state, into the latent space. The distance between the generated motion latent and this reference end latent serves as the criterion. **A threshold is defined, and when the distance falls below it, the generation halts**. This eliminates the need for a separate binary classifier and mitigates class imbalance issues. **This approach allows for more nuanced control over generation length and avoids abrupt, unnatural stops**. Further investigation might explore adaptive threshold based on text input.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.15451/extracted/6294214/figure/cfg.png)

> 🔼 MotionStreamer processes text input and previous motion information using an autoregressive (AR) model to predict the next motion latent in a streaming fashion.  This prediction is continuously updated with new text inputs and previous motion. A diffusion head helps refine the latent representation.  The predicted latent is instantly decoded to generate a frame of the motion sequence, allowing for online motion generation. The figure shows both the overall streaming process (a) and a detailed view of the AR model with the diffusion head (b).
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of MotionStreamer. During inference, the AR model streamingly predicts next motion latents conditioned on the current text and previous motion latents. Each latent can be decoded into motion frames online as soon as it is generated.
> </details>



![](https://arxiv.org/html/2503.15451/extracted/6294214/figure/ik_failure.jpg)

> 🔼 The figure illustrates the architecture of the Causal Temporal Autoencoder (Causal TAE), a key component of the MotionStreamer framework.  It shows a network with both a causal encoder and a causal decoder. The encoder takes in raw motion sequences as input and transforms them into a continuous latent space representation, using 1D causal convolutions.  These 1D causal convolutions ensure that only past data influences the representation of the current time step, respecting the temporal causality of motion data.  The decoder then takes the generated latents and reconstructs the motion sequence. The resulting continuous latent representations (z1:n) are crucial for mitigating information loss and error accumulation during streaming motion generation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Architecture of Causal TAE. 1D temporal causal convolution is applied in both the encoder and decoder. Variables z1:nsubscript𝑧:1𝑛z_{1:n}italic_z start_POSTSUBSCRIPT 1 : italic_n end_POSTSUBSCRIPT are sampled as continuous motion latent representations.
> </details>



![](https://arxiv.org/html/2503.15451/x6.png)

> 🔼 Figure 4 illustrates the first-frame latency for various motion generation methods.  The x-axis shows the number of frames generated, and the y-axis shows the time (in seconds) it took each method to produce its very first frame. This metric is crucial for evaluating the speed and responsiveness of real-time motion generation, particularly in streaming scenarios where immediate feedback is essential. The figure clearly demonstrates the significant performance advantage of MotionStreamer (Causal TAE) in terms of producing the initial frame much faster than other models, highlighting the efficiency of its causal approach.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison on the First-frame Latency of different methods. The horizontal axis represents the number of generated frames, while the vertical axis indicates the time required to produce the first output frame.
> </details>



![](https://arxiv.org/html/2503.15451/x7.png)

> 🔼 Figure 5 presents a comparison of MotionStreamer's motion generation capabilities against several baseline methods (T2M-GPT [60], MoMask [19], AttT2M [64], and FlowMDM [4]).  The figure is structured in three rows, each demonstrating a different aspect of motion generation. The first row showcases text-to-motion generation, comparing how accurately each method translates a single text prompt into a corresponding motion sequence. The second row focuses on long-term motion generation, where a series of text descriptions are used to generate a longer, continuous motion. This row highlights each algorithm's ability to maintain coherence and context across multiple text inputs. Finally, the third row shows dynamic motion composition. In this scenario, multiple, short motion sequences are combined in response to different prompts, demonstrating the system's ability to generate a seamless and natural-looking flow between diverse movements.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visualization results between our method and some baseline methods [60, 19, 64, 4]. The first row shows text-to-motion generation results, the second row shows long-term generation results and the third row shows the application of dynamic motion composition.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.8.9.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T2.8.9.1.1">Methods</th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T2.8.9.1.2">Subsequence</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T2.8.9.1.3">Transition</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.8.8.9"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1">R@3 <math alttext="\uparrow{}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\uparrow{}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2">FID <math alttext="\downarrow{}" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m1.1c">\downarrow{}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3">Div <math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.m1.1d">→</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4">MM-Dist <math alttext="\downarrow{}" class="ltx_Math" display="inline" id="S4.T2.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.m1.1c">\downarrow{}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5">FID <math alttext="\downarrow{}" class="ltx_Math" display="inline" id="S4.T2.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.m1.1c">\downarrow{}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.6">Div <math alttext="\rightarrow{}" class="ltx_Math" display="inline" id="S4.T2.6.6.6.m1.1"><semantics id="S4.T2.6.6.6.m1.1a"><mo id="S4.T2.6.6.6.m1.1.1" stretchy="false" xref="S4.T2.6.6.6.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.m1.1b"><ci id="S4.T2.6.6.6.m1.1.1.cmml" xref="S4.T2.6.6.6.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.m1.1c">\rightarrow{}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.m1.1d">→</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7">PJ <math alttext="\rightarrow{}" class="ltx_Math" display="inline" id="S4.T2.7.7.7.m1.1"><semantics id="S4.T2.7.7.7.m1.1a"><mo id="S4.T2.7.7.7.m1.1.1" stretchy="false" xref="S4.T2.7.7.7.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.m1.1b"><ci id="S4.T2.7.7.7.m1.1.1.cmml" xref="S4.T2.7.7.7.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.m1.1c">\rightarrow{}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.m1.1d">→</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.8">AUJ <math alttext="\downarrow{}" class="ltx_Math" display="inline" id="S4.T2.8.8.8.m1.1"><semantics id="S4.T2.8.8.8.m1.1a"><mo id="S4.T2.8.8.8.m1.1.1" stretchy="false" xref="S4.T2.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.m1.1b"><ci id="S4.T2.8.8.8.m1.1.1.cmml" xref="S4.T2.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.m1.1c">\downarrow{}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.10.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.8.10.2.1">GT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.10.2.2">0.634</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.10.2.3">0.000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.10.2.4">24.907</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.10.2.5">17.543</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.10.2.6">0.000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.10.2.7">21.472</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.10.2.8">0.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.10.2.9">0.00</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.11.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.8.11.3.1">DoubleTake <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.15451v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.11.3.2">0.452</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.11.3.3">23.937</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.11.3.4">22.732</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.11.3.5">21.783</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.11.3.6">51.232</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.11.3.7">18.892</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.11.3.8">0.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.11.3.9">1.83</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.12.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.8.12.4.1">FlowMDM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.15451v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.8.12.4.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.12.4.2.1">0.492</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.12.4.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.12.4.3.1">18.736</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.12.4.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.12.4.4.1">23.847</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.12.4.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.12.4.5.1">20.253</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.12.4.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.12.4.6.1">34.721</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.12.4.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.12.4.7.1">20.293</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.12.4.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.12.4.8.1">0.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.12.4.9"><span class="ltx_text ltx_font_bold" id="S4.T2.8.12.4.9.1">0.51</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.13.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.8.13.5.1">T2M-GPT* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.15451v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.8.13.5.2">0.364</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.13.5.3">39.482</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.13.5.4"><span class="ltx_text ltx_font_bold" id="S4.T2.8.13.5.4.1">24.317</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.13.5.5">20.692</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.13.5.6">43.823</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.13.5.7"><span class="ltx_text ltx_font_bold" id="S4.T2.8.13.5.7.1">20.797</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.13.5.8">0.12</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.13.5.9">1.43</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.14.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.8.14.6.1">VQ-LLaMA</th>
<td class="ltx_td ltx_align_center" id="S4.T2.8.14.6.2">0.383</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.14.6.3">24.342</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.14.6.4">19.329</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.14.6.5">38.285</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.14.6.6">36.293</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.14.6.7">19.932</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.14.6.8">0.08</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.14.6.9">1.20</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.15.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.8.15.7.1">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.15.7.2"><span class="ltx_text ltx_font_bold" id="S4.T2.8.15.7.2.1">0.568</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.15.7.3"><span class="ltx_text ltx_font_bold" id="S4.T2.8.15.7.3.1">15.743</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.15.7.4">23.546</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.15.7.5"><span class="ltx_text ltx_font_bold" id="S4.T2.8.15.7.5.1">15.397</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.15.7.6"><span class="ltx_text ltx_font_bold" id="S4.T2.8.15.7.6.1">32.888</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.15.7.7">19.986</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.15.7.8"><span class="ltx_text ltx_font_bold" id="S4.T2.8.15.7.8.1">0.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.15.7.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.15.7.9.1">0.90</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of various long-term motion generation methods on the BABEL dataset.  The metrics used are FID (Frechet Inception Distance), measuring the difference between the distribution of generated and real motions; Diversity, indicating the variety of generated motion sequences; MM-Dist (Multimodal Distance), representing the distance between generated motion and its corresponding text description; and R@3 (Recall@3), indicating the accuracy of top 3 retrieved motions.  Lower FID and MM-Dist, higher R@3 and Diversity values are preferred. The table also shows results for PJ (Peak Jerk) and AUJ (Area Under the Jerk), evaluating the smoothness of the generated motion, with lower scores indicating smoother motions.  The best and second-best results for each metric are bolded and underlined, respectively.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison with long-term motion generation methods on BABEL [43] dataset. Symbols ↑↑\uparrow↑, ↓↓\downarrow↓ and →→\rightarrow→ indicate the higher, lower and closer to Ground Truth are better. Bold and underline indicate the best and second best results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.6.7.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.6.7.1.1" rowspan="2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.7.1.1.1" style="font-size:90%;">Methods</span></th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.6.7.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.7.1.2.1" style="font-size:90%;">Reconstruction</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="4" id="S4.T3.6.7.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.7.1.3.1" style="font-size:90%;">Generation</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T3.1.1.1.1" style="font-size:90%;">FID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.2.2.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T3.2.2.2.1" style="font-size:90%;">MPJPE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.3.3.3" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T3.3.3.3.1" style="font-size:90%;">FID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.4.4.4" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T3.4.4.4.1" style="font-size:90%;">R@3 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.5.5.5" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T3.5.5.5.1" style="font-size:90%;">MM-D. </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.m1.1a"><mo id="S4.T3.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.m1.1b"><ci id="S4.T3.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.6.6.6" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T3.6.6.6.1" style="font-size:90%;">Div. </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.m1.1"><semantics id="S4.T3.6.6.6.m1.1a"><mo id="S4.T3.6.6.6.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.6.6.6.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.m1.1b"><ci id="S4.T3.6.6.6.m1.1.1.cmml" xref="S4.T3.6.6.6.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.m1.1d">→</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.8.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.6.8.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.8.2.1.1" style="font-size:90%;">Real motion</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.6.8.2.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.8.2.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.6.8.2.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.8.2.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.6.8.2.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.8.2.4.1" style="font-size:90%;">0.002</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.6.8.2.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.8.2.5.1" style="font-size:90%;">0.903</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.6.8.2.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.8.2.6.1" style="font-size:90%;">15.805</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.6.8.2.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.8.2.7.1" style="font-size:90%;">27.670</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.9.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.6.9.3.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.9.3.1.1" style="font-size:90%;">VQ-VAE</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.6.9.3.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.9.3.2.1" style="font-size:90%;">5.173</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.6.9.3.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.9.3.3.1" style="font-size:90%;">63.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.6.9.3.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.9.3.4.1" style="font-size:90%;">11.024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.6.9.3.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.9.3.5.1" style="font-size:90%;">0.834</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.6.9.3.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.9.3.6.1" style="font-size:90%;">16.792</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.6.9.3.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.9.3.7.1" style="font-size:90%;">27.614</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.10.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.6.10.4.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.10.4.1.1" style="font-size:90%;">AE</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.6.10.4.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.10.4.2.1" style="font-size:90%;">0.001</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.6.10.4.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.10.4.3.1" style="font-size:90%;">1.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.6.10.4.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.10.4.4.1" style="font-size:90%;">43.818</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.6.10.4.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.10.4.5.1" style="font-size:90%;">0.473</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.6.10.4.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.10.4.6.1" style="font-size:90%;">22.041</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.6.10.4.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.10.4.7.1" style="font-size:90%;">27.085</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.11.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.6.11.5.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.11.5.1.1" style="font-size:90%;">VAE</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.6.11.5.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.11.5.2.1" style="font-size:90%;">2.092</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.6.11.5.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.11.5.3.1" style="font-size:90%;">26.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.6.11.5.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.11.5.4.1" style="font-size:90%;">19.914</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.6.11.5.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.11.5.5.1" style="font-size:90%;">0.755</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.6.11.5.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.11.5.6.1" style="font-size:90%;">17.948</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.6.11.5.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.11.5.7.1" style="font-size:90%;">27.520</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.12.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.6.12.6.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T3.6.12.6.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.6.12.6.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.12.6.2.1" style="font-size:90%;">0.737</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.6.12.6.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.12.6.3.1" style="font-size:90%;">24.89</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.6.12.6.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.12.6.4.1" style="font-size:90%;">10.724</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.6.12.6.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.12.6.5.1" style="font-size:90%;">0.851</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.6.12.6.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.12.6.6.1" style="font-size:90%;">16.639</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.6.12.6.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.12.6.7.1" style="font-size:90%;">27.657</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study comparing different motion compression methods used in the MotionStreamer model. The study evaluates the performance of various methods on the HumanML3D dataset's test set.  The metrics used to assess the performance include FID (Frechet Inception Distance), MPJPE (Mean Per Joint Position Error), and other metrics reflecting the quality and diversity of the generated motion.  The goal of the ablation study is to determine which motion compression technique contributes most effectively to the overall performance of the MotionStreamer model.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation Study of different motion compressors on HumanML3D [17] test set. MPJPE is measured in millimeters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.4.5.1" style="font-size:90%;">AR Design choices</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.1.1.1.1" style="font-size:90%;">FID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.2.2.2.1" style="font-size:90%;">R@3 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.3.3.3.1" style="font-size:90%;">MM-Dist </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.4.4.4.1" style="font-size:90%;">Diversity </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.m1.1a"><mo id="S4.T4.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.4.4.4.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.m1.1b"><ci id="S4.T4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.m1.1d">→</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.4.5.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.5.1.1.1" style="font-size:90%;">w/o QK Norm</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.4.5.1.2.1" style="font-size:90%;">11.127</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.5.1.3.1" style="font-size:90%;">0.839</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.4.5.1.4.1" style="font-size:90%;">16.525</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.5.1.5.1" style="font-size:90%;">27.530</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.4.6.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.6.2.1.1" style="font-size:90%;">w/o Two-Forward</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.6.2.2.1" style="font-size:90%;">11.978</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.4.6.2.3.1" style="font-size:90%;">0.847</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.6.2.4.1" style="font-size:90%;">16.440</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.4.6.2.5.1" style="font-size:90%;">27.703</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.4.7.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.7.3.1.1" style="font-size:90%;">w/o Diffusion Head</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.7.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.7.3.2.1" style="font-size:90%;">59.195</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.7.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.7.3.3.1" style="font-size:90%;">0.361</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.7.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.7.3.4.1" style="font-size:90%;">22.884</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.7.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.7.3.5.1" style="font-size:90%;">26.825</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.4.8.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.8.4.1.1" style="font-size:90%;">CLIP</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.8.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.8.4.2.1" style="font-size:90%;">14.033</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.8.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.8.4.3.1" style="font-size:90%;">0.792</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.8.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.8.4.4.1" style="font-size:90%;">17.564</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.8.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.8.4.5.1" style="font-size:90%;">27.328</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.4.9.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.9.5.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.9.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.9.5.2.1" style="font-size:90%;">10.724</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.9.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.9.5.3.1" style="font-size:90%;">0.851</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.9.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.4.9.5.4.1" style="font-size:90%;">16.639</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.9.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.9.5.5.1" style="font-size:90%;">27.657</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of different architectural design choices within the autoregressive (AR) model component of MotionStreamer, specifically focusing on the HumanML3D dataset.  The design choices investigated include the inclusion or exclusion of Query-Key Normalization (QK Norm), the Two-Forward training strategy, the diffusion head, and the use of either the T5-XXL language model or the CLIP model for text encoding. The results, expressed in terms of FID, R@3, MM-Dist, and Diversity metrics, demonstrate the effect of these design decisions on the model's performance in motion generation tasks.
> <details>
> <summary>read the caption</summary>
> Table 4: Analysis of design choices of the AR model on HumanML3D [17] test set. CLIP indicates the use of CLIP model [44] as the text encoder to extract text features.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S1.T5.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T5.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S1.T5.1.1.1" style="padding:1.5pt 15.0pt;"><math alttext="\lambda" class="ltx_Math" display="inline" id="S1.T5.1.1.1.m1.1"><semantics id="S1.T5.1.1.1.m1.1a"><mi id="S1.T5.1.1.1.m1.1.1" xref="S1.T5.1.1.1.m1.1.1.cmml">λ</mi><annotation-xml encoding="MathML-Content" id="S1.T5.1.1.1.m1.1b"><ci id="S1.T5.1.1.1.m1.1.1.cmml" xref="S1.T5.1.1.1.m1.1.1">𝜆</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T5.1.1.1.m1.1c">\lambda</annotation><annotation encoding="application/x-llamapun" id="S1.T5.1.1.1.m1.1d">italic_λ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T5.2.2.2" style="padding:1.5pt 15.0pt;">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S1.T5.2.2.2.m1.1"><semantics id="S1.T5.2.2.2.m1.1a"><mo id="S1.T5.2.2.2.m1.1.1" stretchy="false" xref="S1.T5.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S1.T5.2.2.2.m1.1b"><ci id="S1.T5.2.2.2.m1.1.1.cmml" xref="S1.T5.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T5.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S1.T5.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T5.3.3.3" style="padding:1.5pt 15.0pt;">MPJPE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S1.T5.3.3.3.m1.1"><semantics id="S1.T5.3.3.3.m1.1a"><mo id="S1.T5.3.3.3.m1.1.1" stretchy="false" xref="S1.T5.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S1.T5.3.3.3.m1.1b"><ci id="S1.T5.3.3.3.m1.1.1.cmml" xref="S1.T5.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T5.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S1.T5.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T5.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T5.3.4.1.1" style="padding:1.5pt 15.0pt;">5.0</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T5.3.4.1.2" style="padding:1.5pt 15.0pt;">0.946</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T5.3.4.1.3" style="padding:1.5pt 15.0pt;">29.2</td>
</tr>
<tr class="ltx_tr" id="S1.T5.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T5.3.5.2.1" style="padding:1.5pt 15.0pt;">6.0</th>
<td class="ltx_td ltx_align_center" id="S1.T5.3.5.2.2" style="padding:1.5pt 15.0pt;">0.882</td>
<td class="ltx_td ltx_align_center" id="S1.T5.3.5.2.3" style="padding:1.5pt 15.0pt;">28.6</td>
</tr>
<tr class="ltx_tr" id="S1.T5.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T5.3.6.3.1" style="padding:1.5pt 15.0pt;">7.0</th>
<td class="ltx_td ltx_align_center" id="S1.T5.3.6.3.2" style="padding:1.5pt 15.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T5.3.6.3.2.1">0.838</span></td>
<td class="ltx_td ltx_align_center" id="S1.T5.3.6.3.3" style="padding:1.5pt 15.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T5.3.6.3.3.1">27.5</span></td>
</tr>
<tr class="ltx_tr" id="S1.T5.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T5.3.7.4.1" style="padding:1.5pt 15.0pt;">8.0</th>
<td class="ltx_td ltx_align_center" id="S1.T5.3.7.4.2" style="padding:1.5pt 15.0pt;">0.855</td>
<td class="ltx_td ltx_align_center" id="S1.T5.3.7.4.3" style="padding:1.5pt 15.0pt;">27.9</td>
</tr>
<tr class="ltx_tr" id="S1.T5.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S1.T5.3.8.5.1" style="padding:1.5pt 15.0pt;">9.0</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T5.3.8.5.2" style="padding:1.5pt 15.0pt;">0.962</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T5.3.8.5.3" style="padding:1.5pt 15.0pt;">29.4</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of the hyperparameter λ (lambda) on the performance of the MotionStreamer model.  Specifically, it shows how different values of λ affect the Frechet Inception Distance (FID) and Mean Per Joint Position Error (MPJPE) metrics on the HumanML3D [17] test dataset.  Lower FID and MPJPE values indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Analysis of λ𝜆\lambdaitalic_λ on the HumanML3D [17] test dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S1.T6.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T6.8.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S1.T6.8.9.1.1" rowspan="2"><span class="ltx_text" id="S1.T6.8.9.1.1.1">Methods</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S1.T6.8.9.1.2">Reconstruction</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S1.T6.8.9.1.3">Generation</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.1.1.1">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S1.T6.1.1.1.m1.1"><semantics id="S1.T6.1.1.1.m1.1a"><mo id="S1.T6.1.1.1.m1.1.1" stretchy="false" xref="S1.T6.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S1.T6.1.1.1.m1.1b"><ci id="S1.T6.1.1.1.m1.1.1.cmml" xref="S1.T6.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T6.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S1.T6.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.2.2.2">MPJPE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S1.T6.2.2.2.m1.1"><semantics id="S1.T6.2.2.2.m1.1a"><mo id="S1.T6.2.2.2.m1.1.1" stretchy="false" xref="S1.T6.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S1.T6.2.2.2.m1.1b"><ci id="S1.T6.2.2.2.m1.1.1.cmml" xref="S1.T6.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T6.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S1.T6.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.3.3.3">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S1.T6.3.3.3.m1.1"><semantics id="S1.T6.3.3.3.m1.1a"><mo id="S1.T6.3.3.3.m1.1.1" stretchy="false" xref="S1.T6.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S1.T6.3.3.3.m1.1b"><ci id="S1.T6.3.3.3.m1.1.1.cmml" xref="S1.T6.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T6.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S1.T6.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.4.4.4">R@1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S1.T6.4.4.4.m1.1"><semantics id="S1.T6.4.4.4.m1.1a"><mo id="S1.T6.4.4.4.m1.1.1" stretchy="false" xref="S1.T6.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S1.T6.4.4.4.m1.1b"><ci id="S1.T6.4.4.4.m1.1.1.cmml" xref="S1.T6.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T6.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S1.T6.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.5.5.5">R@2 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S1.T6.5.5.5.m1.1"><semantics id="S1.T6.5.5.5.m1.1a"><mo id="S1.T6.5.5.5.m1.1.1" stretchy="false" xref="S1.T6.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S1.T6.5.5.5.m1.1b"><ci id="S1.T6.5.5.5.m1.1.1.cmml" xref="S1.T6.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T6.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S1.T6.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.6.6.6">R@3 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S1.T6.6.6.6.m1.1"><semantics id="S1.T6.6.6.6.m1.1a"><mo id="S1.T6.6.6.6.m1.1.1" stretchy="false" xref="S1.T6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S1.T6.6.6.6.m1.1b"><ci id="S1.T6.6.6.6.m1.1.1.cmml" xref="S1.T6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S1.T6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.7.7.7">MM-Dist <math alttext="\downarrow" class="ltx_Math" display="inline" id="S1.T6.7.7.7.m1.1"><semantics id="S1.T6.7.7.7.m1.1a"><mo id="S1.T6.7.7.7.m1.1.1" stretchy="false" xref="S1.T6.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S1.T6.7.7.7.m1.1b"><ci id="S1.T6.7.7.7.m1.1.1.cmml" xref="S1.T6.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T6.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S1.T6.7.7.7.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.8.8">Diversity <math alttext="\rightarrow" class="ltx_Math" display="inline" id="S1.T6.8.8.8.m1.1"><semantics id="S1.T6.8.8.8.m1.1a"><mo id="S1.T6.8.8.8.m1.1.1" stretchy="false" xref="S1.T6.8.8.8.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S1.T6.8.8.8.m1.1b"><ci id="S1.T6.8.8.8.m1.1.1.cmml" xref="S1.T6.8.8.8.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T6.8.8.8.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S1.T6.8.8.8.m1.1d">→</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.10.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T6.8.10.2.1">Real motion</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.10.2.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.10.2.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.10.2.4">0.002</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.10.2.5">0.711</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.10.2.6">0.851</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.10.2.7">0.903</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.10.2.8">15.805</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.10.2.9">27.670</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.11.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T6.8.11.3.1">(12,512)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.11.3.2">8.862</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.11.3.3">38.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.11.3.4">21.078</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.11.3.5">0.600</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.11.3.6">0.759</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.11.3.7">0.827</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.11.3.8">17.143</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.11.3.9">27.755</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.12.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.12.4.1">(12,1024)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.12.4.2">1.710</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.12.4.3">31.2</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.12.4.4">12.778</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.12.4.5">0.628</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.12.4.6">0.779</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.12.4.7">0.845</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.12.4.8">16.756</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.12.4.9">27.408</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.13.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.13.5.1">(12,1280)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.13.5.2">2.035</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.13.5.3">32.9</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.13.5.4">12.872</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.13.5.5">0.642</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.13.5.6">0.785</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.13.5.7">0.854</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.13.5.8">16.587</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.13.5.9">27.455</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.14.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.14.6.1">(12,1792)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.14.6.2">1.563</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.14.6.3">28.3</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.14.6.4">11.916</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.14.6.5">0.635</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.14.6.6">0.782</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.14.6.7">0.854</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.14.6.8">16.468</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.14.6.9"><span class="ltx_text ltx_font_bold" id="S1.T6.8.14.6.9.1">27.661</span></td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.15.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.15.7.1">(12,2048)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.15.7.2">1.732</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.15.7.3">28.9</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.15.7.4">13.394</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.15.7.5">0.611</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.15.7.6">0.770</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.15.7.7">0.831</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.15.7.8">16.852</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.15.7.9">27.417</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.16.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T6.8.16.8.1">(14,512)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.16.8.2">2.902</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.16.8.3">33.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.16.8.4">16.612</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.16.8.5">0.607</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.16.8.6">0.772</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.16.8.7">0.836</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.16.8.8">16.947</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.16.8.9">27.328</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.17.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.17.9.1">(14,1024)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.17.9.2">0.838</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.17.9.3">27.5</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.17.9.4">11.933</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.17.9.5">0.627</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.17.9.6">0.778</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.17.9.7">0.840</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.17.9.8"><span class="ltx_text ltx_font_bold" id="S1.T6.8.17.9.8.1">16.593</span></td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.17.9.9">27.443</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.18.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.18.10.1">(14,1280)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.18.10.2">0.919</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.18.10.3">26.4</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.18.10.4">12.603</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.18.10.5">0.603</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.18.10.6">0.772</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.18.10.7">0.841</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.18.10.8">16.863</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.18.10.9">27.414</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.19.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.19.11.1">(14,1792)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.19.11.2">0.732</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.19.11.3">24.8</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.19.11.4">11.358</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.19.11.5">0.628</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.19.11.6">0.776</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.19.11.7">0.856</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.19.11.8">16.652</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.19.11.9">27.122</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.20.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.20.12.1">(14,2048)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.20.12.2">1.370</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.20.12.3">26.5</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.20.12.4">12.261</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.20.12.5">0.621</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.20.12.6">0.768</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.20.12.7">0.841</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.20.12.8">16.734</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.20.12.9">27.417</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.21.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T6.8.21.13.1">(16,512)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.21.13.2">1.300</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.21.13.3">30.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.21.13.4">14.096</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.21.13.5">0.605</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.21.13.6">0.770</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.21.13.7">0.839</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.21.13.8">16.882</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.21.13.9">27.306</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.22.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.22.14.1">(16,1024)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.22.14.2">0.737</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.22.14.3">24.89</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.22.14.4"><span class="ltx_text ltx_font_bold" id="S1.T6.8.22.14.4.1">10.724</span></td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.22.14.5"><span class="ltx_text ltx_font_bold" id="S1.T6.8.22.14.5.1">0.631</span></td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.22.14.6"><span class="ltx_text ltx_font_bold" id="S1.T6.8.22.14.6.1">0.784</span></td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.22.14.7"><span class="ltx_text ltx_font_bold" id="S1.T6.8.22.14.7.1">0.851</span></td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.22.14.8">16.639</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.22.14.9">27.657</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.23.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.23.15.1">(16,1280)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.23.15.2">1.087</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.23.15.3">25.0</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.23.15.4">12.975</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.23.15.5">0.598</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.23.15.6">0.761</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.23.15.7">0.831</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.23.15.8">17.002</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.23.15.9">27.403</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.24.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.24.16.1">(16,1792)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.24.16.2">0.540</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.24.16.3">22.0</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.24.16.4">11.192</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.24.16.5">0.632</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.24.16.6">0.767</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.24.16.7">0.859</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.24.16.8">16.644</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.24.16.9">27.419</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.25.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.25.17.1">(16,2048)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.25.17.2">1.547</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.25.17.3">26.2</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.25.17.4">12.778</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.25.17.5">0.604</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.25.17.6">0.755</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.25.17.7">0.824</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.25.17.8">16.897</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.25.17.9">27.306</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.26.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T6.8.26.18.1">(18,512)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.26.18.2">2.043</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.26.18.3">27.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.26.18.4">19.150</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.26.18.5">0.553</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.26.18.6">0.701</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.26.18.7">0.775</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.26.18.8">17.776</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.26.18.9">27.345</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.27.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.27.19.1">(18,1024)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.27.19.2">0.656</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.27.19.3">23.4</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.27.19.4">11.488</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.27.19.5">0.619</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.27.19.6">0.775</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.27.19.7">0.840</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.27.19.8">16.816</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.27.19.9">27.356</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.28.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.28.20.1">(18,1280)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.28.20.2">0.820</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.28.20.3">23.1</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.28.20.4">11.815</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.28.20.5">0.629</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.28.20.6">0.776</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.28.20.7">0.847</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.28.20.8">16.816</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.28.20.9">27.461</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.29.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.29.21.1">(18,1792)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.29.21.2">1.045</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.29.21.3">22.1</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.29.21.4">12.514</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.29.21.5">0.612</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.29.21.6">0.774</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.29.21.7">0.840</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.29.21.8">16.915</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.29.21.9">27.911</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.30.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.30.22.1">(18,2048)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.30.22.2">0.595</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.30.22.3">21.5</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.30.22.4">11.803</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.30.22.5">0.613</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.30.22.6">0.766</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.30.22.7">0.832</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.30.22.8">17.004</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.30.22.9">27.451</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.31.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T6.8.31.23.1">(20,512)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.31.23.2">0.531</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.31.23.3">24.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.31.23.4">12.247</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.31.23.5">0.613</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.31.23.6">0.765</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.31.23.7">0.832</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.31.23.8">16.920</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T6.8.31.23.9">27.277</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.32.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.32.24.1">(20,1024)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.32.24.2"><span class="ltx_text ltx_font_bold" id="S1.T6.8.32.24.2.1">0.379</span></td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.32.24.3"><span class="ltx_text ltx_font_bold" id="S1.T6.8.32.24.3.1">19.9</span></td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.32.24.4">11.010</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.32.24.5">0.630</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.32.24.6">0.765</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.32.24.7">0.847</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.32.24.8">16.802</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.32.24.9">27.485</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.33.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.33.25.1">(20,1280)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.33.25.2">0.429</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.33.25.3">20.11</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.33.25.4">16.465</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.33.25.5">0.557</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.33.25.6">0.705</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.33.25.7">0.774</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.33.25.8">17.680</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.33.25.9">27.490</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.34.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T6.8.34.26.1">(20,1792)</th>
<td class="ltx_td ltx_align_center" id="S1.T6.8.34.26.2">0.548</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.34.26.3">20.1</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.34.26.4">11.145</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.34.26.5">0.616</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.34.26.6">0.776</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.34.26.7">0.842</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.34.26.8">16.919</td>
<td class="ltx_td ltx_align_center" id="S1.T6.8.34.26.9">27.597</td>
</tr>
<tr class="ltx_tr" id="S1.T6.8.35.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S1.T6.8.35.27.1">(20,2048)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T6.8.35.27.2">0.690</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T6.8.35.27.3">20.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T6.8.35.27.4">11.910</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T6.8.35.27.5">0.625</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T6.8.35.27.6">0.782</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T6.8.35.27.7">0.844</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T6.8.35.27.8">16.785</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T6.8.35.27.9">27.542</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of MotionStreamer against other methods that use various motion tokenization techniques.  The performance is evaluated on the HumanML3D [17] test dataset using metrics such as Fréchet Inception Distance (FID), Mean Per Joint Position Error (MPJPE), and Recall@K (R@K).  The results are shown for different latent dimensions and hidden sizes of the Causal Temporal Autoencoder (Causal TAE) in MotionStreamer.  A lower FID indicates better generation quality, while a lower MPJPE signifies more accurate reconstruction. Higher Recall@K values demonstrate better retrieval accuracy.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison with baseline motion tokenizers on HumanML3D [17] test set. MPJPE is measured in millimeters. (16, 1024) indicates the latent dimension and hidden size of the Causal TAE.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T7.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T7.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T7.6.6.6.7" style="padding-left:12.0pt;padding-right:12.0pt;">AR. layers</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T7.6.6.6.8" style="padding-left:12.0pt;padding-right:12.0pt;">AR. heads</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T7.6.6.6.9" style="padding-left:12.0pt;padding-right:12.0pt;">AR. dim</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T7.6.6.6.10" style="padding-left:12.0pt;padding-right:12.0pt;">Diff. layers</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.1.1.1.1" style="padding-left:12.0pt;padding-right:12.0pt;">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T7.1.1.1.1.m1.1"><semantics id="S4.T7.1.1.1.1.m1.1a"><mo id="S4.T7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T7.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T7.1.1.1.1.m1.1b"><ci id="S4.T7.1.1.1.1.m1.1.1.cmml" xref="S4.T7.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.2.2.2.2" style="padding-left:12.0pt;padding-right:12.0pt;">R@1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.2.2.2.2.m1.1"><semantics id="S4.T7.2.2.2.2.m1.1a"><mo id="S4.T7.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T7.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.2.2.2.2.m1.1b"><ci id="S4.T7.2.2.2.2.m1.1.1.cmml" xref="S4.T7.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.3.3.3.3" style="padding-left:12.0pt;padding-right:12.0pt;">R@2 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.3.3.3.3.m1.1"><semantics id="S4.T7.3.3.3.3.m1.1a"><mo id="S4.T7.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T7.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.3.3.3.3.m1.1b"><ci id="S4.T7.3.3.3.3.m1.1.1.cmml" xref="S4.T7.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.4.4.4.4" style="padding-left:12.0pt;padding-right:12.0pt;">R@3 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.4.4.4.4.m1.1"><semantics id="S4.T7.4.4.4.4.m1.1a"><mo id="S4.T7.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T7.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.4.4.4.4.m1.1b"><ci id="S4.T7.4.4.4.4.m1.1.1.cmml" xref="S4.T7.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.5.5.5.5" style="padding-left:12.0pt;padding-right:12.0pt;">MM-Dist <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T7.5.5.5.5.m1.1"><semantics id="S4.T7.5.5.5.5.m1.1a"><mo id="S4.T7.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T7.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T7.5.5.5.5.m1.1b"><ci id="S4.T7.5.5.5.5.m1.1.1.cmml" xref="S4.T7.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.6.6.6.6" style="padding-left:12.0pt;padding-right:12.0pt;">Diversity <math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T7.6.6.6.6.m1.1"><semantics id="S4.T7.6.6.6.6.m1.1a"><mo id="S4.T7.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T7.6.6.6.6.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T7.6.6.6.6.m1.1b"><ci id="S4.T7.6.6.6.6.m1.1.1.cmml" xref="S4.T7.6.6.6.6.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.6.6.6.6.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.6.6.6.6.m1.1d">→</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T7.6.6.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T7.6.6.7.1.1" style="padding-left:12.0pt;padding-right:12.0pt;">8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T7.6.6.7.1.2" style="padding-left:12.0pt;padding-right:12.0pt;">8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T7.6.6.7.1.3" style="padding-left:12.0pt;padding-right:12.0pt;">512</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T7.6.6.7.1.4" style="padding-left:12.0pt;padding-right:12.0pt;">2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.6.7.1.5" style="padding-left:12.0pt;padding-right:12.0pt;">14.336</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.6.7.1.6" style="padding-left:12.0pt;padding-right:12.0pt;">0.598</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.6.7.1.7" style="padding-left:12.0pt;padding-right:12.0pt;">0.747</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.6.7.1.8" style="padding-left:12.0pt;padding-right:12.0pt;">0.802</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.6.7.1.9" style="padding-left:12.0pt;padding-right:12.0pt;">16.983</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.6.7.1.10" style="padding-left:12.0pt;padding-right:12.0pt;">27.787</td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6.8.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.8.2.1" style="padding-left:12.0pt;padding-right:12.0pt;">8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.8.2.2" style="padding-left:12.0pt;padding-right:12.0pt;">8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.8.2.3" style="padding-left:12.0pt;padding-right:12.0pt;">512</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.8.2.4" style="padding-left:12.0pt;padding-right:12.0pt;">3</th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.8.2.5" style="padding-left:12.0pt;padding-right:12.0pt;">13.764</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.8.2.6" style="padding-left:12.0pt;padding-right:12.0pt;">0.602</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.8.2.7" style="padding-left:12.0pt;padding-right:12.0pt;">0.758</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.8.2.8" style="padding-left:12.0pt;padding-right:12.0pt;">0.819</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.8.2.9" style="padding-left:12.0pt;padding-right:12.0pt;">16.972</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.8.2.10" style="padding-left:12.0pt;padding-right:12.0pt;">27.742</td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6.9.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.9.3.1" style="padding-left:12.0pt;padding-right:12.0pt;">8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.9.3.2" style="padding-left:12.0pt;padding-right:12.0pt;">8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.9.3.3" style="padding-left:12.0pt;padding-right:12.0pt;">512</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.9.3.4" style="padding-left:12.0pt;padding-right:12.0pt;">4</th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.9.3.5" style="padding-left:12.0pt;padding-right:12.0pt;">12.893</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.9.3.6" style="padding-left:12.0pt;padding-right:12.0pt;">0.608</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.9.3.7" style="padding-left:12.0pt;padding-right:12.0pt;">0.764</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.9.3.8" style="padding-left:12.0pt;padding-right:12.0pt;">0.828</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.9.3.9" style="padding-left:12.0pt;padding-right:12.0pt;">16.661</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.9.3.10" style="padding-left:12.0pt;padding-right:12.0pt;">27.351</td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6.10.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.10.4.1" style="padding-left:12.0pt;padding-right:12.0pt;">8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.10.4.2" style="padding-left:12.0pt;padding-right:12.0pt;">8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.10.4.3" style="padding-left:12.0pt;padding-right:12.0pt;">512</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.10.4.4" style="padding-left:12.0pt;padding-right:12.0pt;">9</th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.10.4.5" style="padding-left:12.0pt;padding-right:12.0pt;">11.721</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.10.4.6" style="padding-left:12.0pt;padding-right:12.0pt;">0.623</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.10.4.7" style="padding-left:12.0pt;padding-right:12.0pt;">0.772</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.10.4.8" style="padding-left:12.0pt;padding-right:12.0pt;">0.835</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.10.4.9" style="padding-left:12.0pt;padding-right:12.0pt;">16.655</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.10.4.10" style="padding-left:12.0pt;padding-right:12.0pt;">27.585</td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6.11.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.11.5.1" style="padding-left:12.0pt;padding-right:12.0pt;">8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.11.5.2" style="padding-left:12.0pt;padding-right:12.0pt;">8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.11.5.3" style="padding-left:12.0pt;padding-right:12.0pt;">512</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.11.5.4" style="padding-left:12.0pt;padding-right:12.0pt;">16</th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.11.5.5" style="padding-left:12.0pt;padding-right:12.0pt;">12.460</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.11.5.6" style="padding-left:12.0pt;padding-right:12.0pt;">0.621</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.11.5.7" style="padding-left:12.0pt;padding-right:12.0pt;">0.778</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.11.5.8" style="padding-left:12.0pt;padding-right:12.0pt;">0.849</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.11.5.9" style="padding-left:12.0pt;padding-right:12.0pt;">16.784</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.11.5.10" style="padding-left:12.0pt;padding-right:12.0pt;">27.410</td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6.12.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.12.6.1" style="padding-left:12.0pt;padding-right:12.0pt;">12</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.12.6.2" style="padding-left:12.0pt;padding-right:12.0pt;">12</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.12.6.3" style="padding-left:12.0pt;padding-right:12.0pt;">768</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.12.6.4" style="padding-left:12.0pt;padding-right:12.0pt;">2</th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.12.6.5" style="padding-left:12.0pt;padding-right:12.0pt;">11.899</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.12.6.6" style="padding-left:12.0pt;padding-right:12.0pt;">0.601</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.12.6.7" style="padding-left:12.0pt;padding-right:12.0pt;">0.763</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.12.6.8" style="padding-left:12.0pt;padding-right:12.0pt;">0.828</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.12.6.9" style="padding-left:12.0pt;padding-right:12.0pt;">16.952</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.12.6.10" style="padding-left:12.0pt;padding-right:12.0pt;">27.406</td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6.13.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.13.7.1" style="padding-left:12.0pt;padding-right:12.0pt;">12</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.13.7.2" style="padding-left:12.0pt;padding-right:12.0pt;">12</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.13.7.3" style="padding-left:12.0pt;padding-right:12.0pt;">768</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.13.7.4" style="padding-left:12.0pt;padding-right:12.0pt;">3</th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.13.7.5" style="padding-left:12.0pt;padding-right:12.0pt;">11.783</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.13.7.6" style="padding-left:12.0pt;padding-right:12.0pt;">0.632</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.13.7.7" style="padding-left:12.0pt;padding-right:12.0pt;">0.779</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.13.7.8" style="padding-left:12.0pt;padding-right:12.0pt;">0.844</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.13.7.9" style="padding-left:12.0pt;padding-right:12.0pt;">16.761</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.13.7.10" style="padding-left:12.0pt;padding-right:12.0pt;">27.482</td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6.14.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.14.8.1" style="padding-left:12.0pt;padding-right:12.0pt;">12</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.14.8.2" style="padding-left:12.0pt;padding-right:12.0pt;">12</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.14.8.3" style="padding-left:12.0pt;padding-right:12.0pt;">768</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.14.8.4" style="padding-left:12.0pt;padding-right:12.0pt;">4</th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.14.8.5" style="padding-left:12.0pt;padding-right:12.0pt;">12.051</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.14.8.6" style="padding-left:12.0pt;padding-right:12.0pt;">0.604</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.14.8.7" style="padding-left:12.0pt;padding-right:12.0pt;">0.762</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.14.8.8" style="padding-left:12.0pt;padding-right:12.0pt;">0.829</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.14.8.9" style="padding-left:12.0pt;padding-right:12.0pt;">16.940</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.14.8.10" style="padding-left:12.0pt;padding-right:12.0pt;">27.501</td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6.15.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.15.9.1" style="padding-left:12.0pt;padding-right:12.0pt;">12</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.15.9.2" style="padding-left:12.0pt;padding-right:12.0pt;">12</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.15.9.3" style="padding-left:12.0pt;padding-right:12.0pt;">768</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.15.9.4" style="padding-left:12.0pt;padding-right:12.0pt;">9</th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.15.9.5" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.6.6.15.9.5.1">10.724</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.15.9.6" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.6.6.15.9.6.1">0.631</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.15.9.7" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.6.6.15.9.7.1">0.784</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.15.9.8" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.6.6.15.9.8.1">0.851</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.15.9.9" style="padding-left:12.0pt;padding-right:12.0pt;">16.639</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.15.9.10" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.6.6.15.9.10.1">27.657</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6.16.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.16.10.1" style="padding-left:12.0pt;padding-right:12.0pt;">12</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.16.10.2" style="padding-left:12.0pt;padding-right:12.0pt;">12</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.16.10.3" style="padding-left:12.0pt;padding-right:12.0pt;">768</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.16.10.4" style="padding-left:12.0pt;padding-right:12.0pt;">16</th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.16.10.5" style="padding-left:12.0pt;padding-right:12.0pt;">11.825</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.16.10.6" style="padding-left:12.0pt;padding-right:12.0pt;">0.624</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.16.10.7" style="padding-left:12.0pt;padding-right:12.0pt;">0.773</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.16.10.8" style="padding-left:12.0pt;padding-right:12.0pt;">0.844</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.16.10.9" style="padding-left:12.0pt;padding-right:12.0pt;">16.757</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.16.10.10" style="padding-left:12.0pt;padding-right:12.0pt;">27.541</td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6.17.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.17.11.1" style="padding-left:12.0pt;padding-right:12.0pt;">16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.17.11.2" style="padding-left:12.0pt;padding-right:12.0pt;">16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.17.11.3" style="padding-left:12.0pt;padding-right:12.0pt;">1024</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.17.11.4" style="padding-left:12.0pt;padding-right:12.0pt;">2</th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.17.11.5" style="padding-left:12.0pt;padding-right:12.0pt;">12.836</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.17.11.6" style="padding-left:12.0pt;padding-right:12.0pt;">0.606</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.17.11.7" style="padding-left:12.0pt;padding-right:12.0pt;">0.765</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.17.11.8" style="padding-left:12.0pt;padding-right:12.0pt;">0.832</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.17.11.9" style="padding-left:12.0pt;padding-right:12.0pt;">16.901</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.17.11.10" style="padding-left:12.0pt;padding-right:12.0pt;">27.619</td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6.18.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.18.12.1" style="padding-left:12.0pt;padding-right:12.0pt;">16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.18.12.2" style="padding-left:12.0pt;padding-right:12.0pt;">16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.18.12.3" style="padding-left:12.0pt;padding-right:12.0pt;">1024</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.18.12.4" style="padding-left:12.0pt;padding-right:12.0pt;">3</th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.18.12.5" style="padding-left:12.0pt;padding-right:12.0pt;">12.436</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.18.12.6" style="padding-left:12.0pt;padding-right:12.0pt;">0.601</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.18.12.7" style="padding-left:12.0pt;padding-right:12.0pt;">0.761</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.18.12.8" style="padding-left:12.0pt;padding-right:12.0pt;">0.830</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.18.12.9" style="padding-left:12.0pt;padding-right:12.0pt;">16.919</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.18.12.10" style="padding-left:12.0pt;padding-right:12.0pt;">27.607</td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6.19.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.19.13.1" style="padding-left:12.0pt;padding-right:12.0pt;">16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.19.13.2" style="padding-left:12.0pt;padding-right:12.0pt;">16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.19.13.3" style="padding-left:12.0pt;padding-right:12.0pt;">1024</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.19.13.4" style="padding-left:12.0pt;padding-right:12.0pt;">4</th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.19.13.5" style="padding-left:12.0pt;padding-right:12.0pt;">13.005</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.19.13.6" style="padding-left:12.0pt;padding-right:12.0pt;">0.614</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.19.13.7" style="padding-left:12.0pt;padding-right:12.0pt;">0.763</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.19.13.8" style="padding-left:12.0pt;padding-right:12.0pt;">0.830</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.19.13.9" style="padding-left:12.0pt;padding-right:12.0pt;">16.967</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.19.13.10" style="padding-left:12.0pt;padding-right:12.0pt;">27.196</td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6.20.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.20.14.1" style="padding-left:12.0pt;padding-right:12.0pt;">16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.20.14.2" style="padding-left:12.0pt;padding-right:12.0pt;">16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.20.14.3" style="padding-left:12.0pt;padding-right:12.0pt;">1024</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.6.6.20.14.4" style="padding-left:12.0pt;padding-right:12.0pt;">9</th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.20.14.5" style="padding-left:12.0pt;padding-right:12.0pt;">12.093</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.20.14.6" style="padding-left:12.0pt;padding-right:12.0pt;">0.614</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.20.14.7" style="padding-left:12.0pt;padding-right:12.0pt;">0.778</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.20.14.8" style="padding-left:12.0pt;padding-right:12.0pt;">0.843</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.20.14.9" style="padding-left:12.0pt;padding-right:12.0pt;">16.850</td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.6.20.14.10" style="padding-left:12.0pt;padding-right:12.0pt;">27.508</td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6.21.15">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T7.6.6.21.15.1" style="padding-left:12.0pt;padding-right:12.0pt;">16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T7.6.6.21.15.2" style="padding-left:12.0pt;padding-right:12.0pt;">16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T7.6.6.21.15.3" style="padding-left:12.0pt;padding-right:12.0pt;">1024</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T7.6.6.21.15.4" style="padding-left:12.0pt;padding-right:12.0pt;">16</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.6.21.15.5" style="padding-left:12.0pt;padding-right:12.0pt;">11.411</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.6.21.15.6" style="padding-left:12.0pt;padding-right:12.0pt;">0.635</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.6.21.15.7" style="padding-left:12.0pt;padding-right:12.0pt;">0.780</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.6.21.15.8" style="padding-left:12.0pt;padding-right:12.0pt;">0.846</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.6.21.15.9" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.6.6.21.15.9.1">16.598</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.6.21.15.10" style="padding-left:12.0pt;padding-right:12.0pt;">27.586</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of different architectural choices within the Autoregressive (AR) model on the performance of motion generation.  The study focuses on the HumanML3D dataset, holding the Causal Temporal Autoencoder (TAE) constant across all model variations.  The results allow for comparison of metrics such as FID, R@K recall, and MM-Dist with varying numbers of AR layers, attention heads, hidden dimensions, and diffusion layers to determine the optimal AR model architecture.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation study of AR Model architecture on HumanML3D [17] test set. For each architecture, we use the same Causal TAE.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T8.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T8.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T8.4.5.1.1">Components</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T8.4.5.1.2">Architecture</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T8.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T8.1.1.2">Causal TAE Encoder</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T8.1.1.1">(0): CausalConv1D(<math alttext="D_{in}" class="ltx_Math" display="inline" id="S5.T8.1.1.1.m1.1"><semantics id="S5.T8.1.1.1.m1.1a"><msub id="S5.T8.1.1.1.m1.1.1" xref="S5.T8.1.1.1.m1.1.1.cmml"><mi id="S5.T8.1.1.1.m1.1.1.2" xref="S5.T8.1.1.1.m1.1.1.2.cmml">D</mi><mrow id="S5.T8.1.1.1.m1.1.1.3" xref="S5.T8.1.1.1.m1.1.1.3.cmml"><mi id="S5.T8.1.1.1.m1.1.1.3.2" xref="S5.T8.1.1.1.m1.1.1.3.2.cmml">i</mi><mo id="S5.T8.1.1.1.m1.1.1.3.1" xref="S5.T8.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S5.T8.1.1.1.m1.1.1.3.3" xref="S5.T8.1.1.1.m1.1.1.3.3.cmml">n</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T8.1.1.1.m1.1b"><apply id="S5.T8.1.1.1.m1.1.1.cmml" xref="S5.T8.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T8.1.1.1.m1.1.1.1.cmml" xref="S5.T8.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T8.1.1.1.m1.1.1.2.cmml" xref="S5.T8.1.1.1.m1.1.1.2">𝐷</ci><apply id="S5.T8.1.1.1.m1.1.1.3.cmml" xref="S5.T8.1.1.1.m1.1.1.3"><times id="S5.T8.1.1.1.m1.1.1.3.1.cmml" xref="S5.T8.1.1.1.m1.1.1.3.1"></times><ci id="S5.T8.1.1.1.m1.1.1.3.2.cmml" xref="S5.T8.1.1.1.m1.1.1.3.2">𝑖</ci><ci id="S5.T8.1.1.1.m1.1.1.3.3.cmml" xref="S5.T8.1.1.1.m1.1.1.3.3">𝑛</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.1.1.1.m1.1c">D_{in}</annotation><annotation encoding="application/x-llamapun" id="S5.T8.1.1.1.m1.1d">italic_D start_POSTSUBSCRIPT italic_i italic_n end_POSTSUBSCRIPT</annotation></semantics></math>, 1024, kernel_size=(3,), stride=(1,), dilation=(1,), padding=(2,))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.6.1">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.6.1.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.6.1.2">(1): ReLU()</td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.2.2.2"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.2.2.1">(2): 2 <math alttext="\times" class="ltx_Math" display="inline" id="S5.T8.2.2.1.m1.1"><semantics id="S5.T8.2.2.1.m1.1a"><mo id="S5.T8.2.2.1.m1.1.1" xref="S5.T8.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T8.2.2.1.m1.1b"><times id="S5.T8.2.2.1.m1.1.1.cmml" xref="S5.T8.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T8.2.2.1.m1.1d">×</annotation></semantics></math> Sequential(</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.7.2">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.7.2.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.7.2.2">      (0): CausalConv1D(1024, 1024, kernel_size=(4,), stride=(2,), dilation=(1,), padding=(2,))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.8.3">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.8.3.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.8.3.2">      (1): CausalResnet1D(</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.9.4">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.9.4.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.9.4.2">           (0): CausalResConv1DBlock(</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.10.5">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.10.5.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.10.5.2">               (activation1): ReLU()</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.11.6">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.11.6.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.11.6.2">               (conv1): CausalConv1D(1024, 1024, kernel_size=(3,), stride=(1,), dilation=(9,), padding=(18,))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.12.7">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.12.7.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.12.7.2">               (activation2): ReLU()</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.13.8">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.13.8.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.13.8.2">               (conv2): CausalConv1D(1024, 1024, kernel_size=(1,), stride=(1,), dilation=(1,), padding=(0,)))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.14.9">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.14.9.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.14.9.2">           (1): CausalResConv1DBlock(</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.15.10">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.15.10.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.15.10.2">               (activation1): ReLU()</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.16.11">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.16.11.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.16.11.2">               (conv1): CausalConv1D(1024, 1024, kernel_size=(3,), stride=(1,), dilation=(3,), padding=(6,))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.17.12">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.17.12.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.17.12.2">               (activation2): ReLU()</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.18.13">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.18.13.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.18.13.2">               (conv2): CausalConv1D(1024, 1024, kernel_size=(1,), stride=(1,), dilation=(1,), padding=(0,)))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.19.14">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.19.14.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.19.14.2">           (2): CausalResConv1DBlock(</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.20.15">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.20.15.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.20.15.2">               (activation1): ReLU()</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.21.16">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.21.16.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.21.16.2">               (conv1): CausalConv1D(1024, 1024, kernel_size=(3,), stride=(1,), dilation=(1,), padding=(2,))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.22.17">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.22.17.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.22.17.2">               (activation2): ReLU()</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.23.18">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.23.18.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.23.18.2">               (conv2): CausalConv1D(1024, 1024, kernel_size=(1,), stride=(1,), dilation=(1,), padding=(0,)))))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.24.19">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.24.19.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.24.19.2">(3): CausalConv1D(1024, 1024, kernel_size=(3,), stride=(1,), dilation=(1,), padding=(2,))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.25.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T8.4.25.20.1">Causal TAE Decoder</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T8.4.25.20.2">(0): CausalConv1D(1024, 1024, kernel_size=(3,), stride=(1,), dilation=(1,), padding=(2,))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.26.21">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.26.21.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.26.21.2">(1): ReLU()</td>
</tr>
<tr class="ltx_tr" id="S5.T8.3.3">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.3.3.2"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.3.3.1">(2): 2 <math alttext="\times" class="ltx_Math" display="inline" id="S5.T8.3.3.1.m1.1"><semantics id="S5.T8.3.3.1.m1.1a"><mo id="S5.T8.3.3.1.m1.1.1" xref="S5.T8.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T8.3.3.1.m1.1b"><times id="S5.T8.3.3.1.m1.1.1.cmml" xref="S5.T8.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T8.3.3.1.m1.1d">×</annotation></semantics></math> Sequential(</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.27.22">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.27.22.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.27.22.2">      (0): CausalResnet1D(</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.28.23">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.28.23.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.28.23.2">           (0): CausalResConv1DBlock(</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.29.24">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.29.24.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.29.24.2">               (activation1): ReLU()</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.30.25">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.30.25.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.30.25.2">               (conv1): CausalConv1D(1024, 1024, kernel_size=(3,), stride=(1,), dilation=(9,), padding=(18,))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.31.26">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.31.26.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.31.26.2">               (activation2): ReLU()</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.32.27">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.32.27.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.32.27.2">               (conv2): CausalConv1D(1024, 1024, kernel_size=(1,), stride=(1,), dilation=(1,), padding=(0,)))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.33.28">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.33.28.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.33.28.2">           (1): CausalResConv1DBlock(</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.34.29">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.34.29.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.34.29.2">               (activation1): ReLU()</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.35.30">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.35.30.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.35.30.2">               (conv1): CausalConv1D(1024, 1024, kernel_size=(3,), stride=(1,), dilation=(3,), padding=(6,))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.36.31">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.36.31.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.36.31.2">               (activation2): ReLU()</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.37.32">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.37.32.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.37.32.2">               (conv2): CausalConv1D(1024, 1024, kernel_size=(1,), stride=(1,), dilation=(1,), padding=(0,)))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.38.33">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.38.33.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.38.33.2">           (2): CausalResConv1DBlock(</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.39.34">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.39.34.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.39.34.2">               (activation1): ReLU()</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.40.35">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.40.35.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.40.35.2">               (conv1): CausalConv1D(1024, 1024, kernel_size=(3,), stride=(1,), dilation=(1,), padding=(2,))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.41.36">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.41.36.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.41.36.2">               (activation2): ReLU()</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.42.37">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.42.37.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.42.37.2">               (conv2): CausalConv1D(1024, 1024, kernel_size=(1,), stride=(1,), dilation=(1,), padding=(0,)))))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.43.38">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.43.38.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.43.38.2">      (1): Upsample(scale_factor=2.0, mode=nearest)</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.44.39">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.44.39.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.44.39.2">      (2): CausalConv1D(1024, 1024, kernel_size=(3,), stride=(1,), dilation=(1,), padding=(2,))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.45.40">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.45.40.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.45.40.2">(3) CausalConv1D(1024, 1024, kernel_size=(3,), stride=(1,), dilation=(1,), padding=(2,))</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.46.41">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T8.4.46.41.1"></th>
<td class="ltx_td ltx_align_left" id="S5.T8.4.46.41.2">(4): ReLU()</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="S5.T8.4.4.2"></th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T8.4.4.1">(5): CausalConv1D(1024, <math alttext="D_{in}" class="ltx_Math" display="inline" id="S5.T8.4.4.1.m1.1"><semantics id="S5.T8.4.4.1.m1.1a"><msub id="S5.T8.4.4.1.m1.1.1" xref="S5.T8.4.4.1.m1.1.1.cmml"><mi id="S5.T8.4.4.1.m1.1.1.2" xref="S5.T8.4.4.1.m1.1.1.2.cmml">D</mi><mrow id="S5.T8.4.4.1.m1.1.1.3" xref="S5.T8.4.4.1.m1.1.1.3.cmml"><mi id="S5.T8.4.4.1.m1.1.1.3.2" xref="S5.T8.4.4.1.m1.1.1.3.2.cmml">i</mi><mo id="S5.T8.4.4.1.m1.1.1.3.1" xref="S5.T8.4.4.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S5.T8.4.4.1.m1.1.1.3.3" xref="S5.T8.4.4.1.m1.1.1.3.3.cmml">n</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T8.4.4.1.m1.1b"><apply id="S5.T8.4.4.1.m1.1.1.cmml" xref="S5.T8.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T8.4.4.1.m1.1.1.1.cmml" xref="S5.T8.4.4.1.m1.1.1">subscript</csymbol><ci id="S5.T8.4.4.1.m1.1.1.2.cmml" xref="S5.T8.4.4.1.m1.1.1.2">𝐷</ci><apply id="S5.T8.4.4.1.m1.1.1.3.cmml" xref="S5.T8.4.4.1.m1.1.1.3"><times id="S5.T8.4.4.1.m1.1.1.3.1.cmml" xref="S5.T8.4.4.1.m1.1.1.3.1"></times><ci id="S5.T8.4.4.1.m1.1.1.3.2.cmml" xref="S5.T8.4.4.1.m1.1.1.3.2">𝑖</ci><ci id="S5.T8.4.4.1.m1.1.1.3.3.cmml" xref="S5.T8.4.4.1.m1.1.1.3.3">𝑛</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.4.4.1.m1.1c">D_{in}</annotation><annotation encoding="application/x-llamapun" id="S5.T8.4.4.1.m1.1d">italic_D start_POSTSUBSCRIPT italic_i italic_n end_POSTSUBSCRIPT</annotation></semantics></math>, kernel_size=(3,), stride=(1,), dilation=(1,), padding=(2,))</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 8 provides a detailed breakdown of the Causal Temporal AutoEncoder (Causal TAE) architecture, a key component of the MotionStreamer framework.  It outlines the specific layers, activation functions, and configurations used in both the encoder and decoder parts of the Causal TAE.  This level of detail is crucial for understanding how the model processes and compresses motion data into a continuous causal latent space, enabling efficient and temporally coherent streaming motion generation.
> <details>
> <summary>read the caption</summary>
> Table 8: Detail architecture of the proposed Causal TAE.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.15451/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15451/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15451/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15451/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15451/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15451/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15451/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15451/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15451/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15451/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15451/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15451/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15451/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15451/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15451/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15451/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}