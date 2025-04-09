---
title: "Sparse Autoencoders Learn Monosemantic Features in Vision-Language Models"
summary: "SAEs enhance monosemanticity in Vision-Language Models, enabling interpretable control without modifying the underlying model."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Technical University of Munich",]
showSummary: true
date: 2025-04-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.02821 {{< /keyword >}}
{{< keyword icon="writer" >}} Mateusz Pach et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.02821" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.02821" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.02821/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Vision-Language Models (VLMs)**, are powerful but lack understanding of inner workings. **Sparse Autoencoders (SAEs)**, can discover concepts efficiently. Existing VLM analysis with SAEs is limited. There is a need for better understanding for safe usage and scalable control.



This paper trains SAEs on VLMs, enhancing neuron monosemanticity and hierarchical representations. It introduces a **Monosemanticity Score (MS)** for vision tasks. SAE intervention on CLIP vision encoders enables steering multimodal LLMs. The work emphasizes SAE practicality for interpreting and controlling VLMs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Sparse Autoencoders can significantly enhance the monosemanticity of neurons in Vision-Language Models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Applying SAEs to intervene on a CLIP vision encoder allows direct steering of multimodal LLM outputs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed Monosemanticity Score (MS) provides a quantitative measure for evaluating the interpretability of SAEs in vision tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a **new method for enhancing the interpretability** and control of Vision-Language Models (VLMs) using Sparse Autoencoders (SAEs). By improving the monosemanticity of VLMs, this research **opens doors for more reliable and steerable AI systems**, paving the way for further advancements in multimodal understanding and generation.

------
#### Visual Insights



![](https://arxiv.org/html/2504.02821/x1.png)

> 🔼 This figure illustrates the effect of training sparse autoencoders (SAEs) on a vision-language model (VLM), such as CLIP. The top panel shows that a neuron in a pretrained VLM's layer responds to a variety of semantically dissimilar images (polysemantic). In contrast, the bottom panel demonstrates that after training an SAE to reconstruct the same layer of the VLM, the corresponding neuron in the SAE now primarily activates for images that are semantically similar (monosemantic), as indicated by a higher monosemanticity score (MS). This signifies that SAEs can enhance the interpretability of VLMs by making the representation of individual neurons clearer and more focused.
> <details>
> <summary>read the caption</summary>
> Figure 1: Training Sparse Autoencoders (SAEs) over VLMs (e.g. CLIP): The highly activating images of a neuron in a given layer of a pretrained VLM are polysemantic (top), and a neuron in an SAE trained to reconstruct the same layer is more monosemantic (bottom, with higher Monosemanticity Score (MS))
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.6.7.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.6.7.1.1.1">SAE type</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.6.7.1.2" rowspan="2"><span class="ltx_text" id="S4.T1.6.7.1.2.1">Layer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.7.1.3" rowspan="2"><span class="ltx_text" id="S4.T1.6.7.1.3.1">No SAE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="S4.T1.6.7.1.4">Expansion factor</th>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><times id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">×</annotation></semantics></math>1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.2.2">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.m1.1.1" xref="S4.T1.2.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><times id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">×</annotation></semantics></math>2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.3.3.3">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.m1.1.1" xref="S4.T1.3.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><times id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">×</annotation></semantics></math>4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.4.4">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.m1.1.1" xref="S4.T1.4.4.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><times id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">×</annotation></semantics></math>8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.5.5.5">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.m1.1.1" xref="S4.T1.5.5.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.m1.1b"><times id="S4.T1.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.m1.1d">×</annotation></semantics></math>16</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.6.6">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.m1.1a"><mo id="S4.T1.6.6.6.m1.1.1" xref="S4.T1.6.6.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.m1.1b"><times id="S4.T1.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.m1.1d">×</annotation></semantics></math>64</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.6.8.1.1" rowspan="5"><span class="ltx_text" id="S4.T1.6.8.1.1.1">BatchTopK <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02821v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.6.8.1.2">11</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.8.1.3">
<span class="ltx_text" id="S4.T1.6.8.1.3.1" style="color:#00E000;">0.50</span> / <span class="ltx_text" id="S4.T1.6.8.1.3.2" style="color:#B80000;">0.47</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.8.1.4">
<span class="ltx_text" id="S4.T1.6.8.1.4.1" style="color:#00E000;">0.80</span> / <span class="ltx_text" id="S4.T1.6.8.1.4.2" style="color:#B80000;">0.41</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.8.1.5">
<span class="ltx_text" id="S4.T1.6.8.1.5.1" style="color:#00E000;">0.87</span> / <span class="ltx_text" id="S4.T1.6.8.1.5.2" style="color:#B80000;">0.38</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.8.1.6">
<span class="ltx_text" id="S4.T1.6.8.1.6.1" style="color:#00E000;">0.90</span> / <span class="ltx_text" id="S4.T1.6.8.1.6.2" style="color:#B80000;">0.28</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.8.1.7">
<span class="ltx_text" id="S4.T1.6.8.1.7.1" style="color:#00E000;">0.91</span> / <span class="ltx_text" id="S4.T1.6.8.1.7.2" style="color:#B80000;">0.27</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.8.1.8">
<span class="ltx_text" id="S4.T1.6.8.1.8.1" style="color:#00E000;">0.95</span> / <span class="ltx_text" id="S4.T1.6.8.1.8.2" style="color:#B80000;">0.24</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.6.8.1.9">
<span class="ltx_text" id="S4.T1.6.8.1.9.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="S4.T1.6.8.1.9.2" style="color:#B80000;">0.20</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.9.2.1">17</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.2.2">
<span class="ltx_text" id="S4.T1.6.9.2.2.1" style="color:#00E000;">0.50</span> / <span class="ltx_text" id="S4.T1.6.9.2.2.2" style="color:#B80000;">0.47</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.2.3">
<span class="ltx_text" id="S4.T1.6.9.2.3.1" style="color:#00E000;">0.84</span> / <span class="ltx_text" id="S4.T1.6.9.2.3.2" style="color:#B80000;">0.37</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.2.4">
<span class="ltx_text" id="S4.T1.6.9.2.4.1" style="color:#00E000;">0.87</span> / <span class="ltx_text" id="S4.T1.6.9.2.4.2" style="color:#B80000;">0.33</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.2.5">
<span class="ltx_text" id="S4.T1.6.9.2.5.1" style="color:#00E000;">0.94</span> / <span class="ltx_text" id="S4.T1.6.9.2.5.2" style="color:#B80000;">0.35</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.2.6">
<span class="ltx_text" id="S4.T1.6.9.2.6.1" style="color:#00E000;">0.94</span> / <span class="ltx_text" id="S4.T1.6.9.2.6.2" style="color:#B80000;">0.28</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.2.7">
<span class="ltx_text" id="S4.T1.6.9.2.7.1" style="color:#00E000;">0.96</span> / <span class="ltx_text" id="S4.T1.6.9.2.7.2" style="color:#B80000;">0.24</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.9.2.8">
<span class="ltx_text" id="S4.T1.6.9.2.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="S4.T1.6.9.2.8.2" style="color:#B80000;">0.14</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.10.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.10.3.1">22</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.3.2">
<span class="ltx_text" id="S4.T1.6.10.3.2.1" style="color:#00E000;">0.50</span> / <span class="ltx_text" id="S4.T1.6.10.3.2.2" style="color:#B80000;">0.47</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.3.3">
<span class="ltx_text" id="S4.T1.6.10.3.3.1" style="color:#00E000;">0.82</span> / <span class="ltx_text" id="S4.T1.6.10.3.3.2" style="color:#B80000;">0.39</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.3.4">
<span class="ltx_text" id="S4.T1.6.10.3.4.1" style="color:#00E000;">0.85</span> / <span class="ltx_text" id="S4.T1.6.10.3.4.2" style="color:#B80000;">0.38</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.3.5">
<span class="ltx_text" id="S4.T1.6.10.3.5.1" style="color:#00E000;">0.89</span> / <span class="ltx_text" id="S4.T1.6.10.3.5.2" style="color:#B80000;">0.37</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.3.6">
<span class="ltx_text" id="S4.T1.6.10.3.6.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="S4.T1.6.10.3.6.2" style="color:#B80000;">0.29</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.3.7">
<span class="ltx_text" id="S4.T1.6.10.3.7.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="S4.T1.6.10.3.7.2" style="color:#B80000;">0.15</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.10.3.8">
<span class="ltx_text" id="S4.T1.6.10.3.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="S4.T1.6.10.3.8.2" style="color:#B80000;">0.15</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.11.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.11.4.1">23</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.4.2">
<span class="ltx_text" id="S4.T1.6.11.4.2.1" style="color:#00E000;">0.50</span> / <span class="ltx_text" id="S4.T1.6.11.4.2.2" style="color:#B80000;">0.47</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.4.3">
<span class="ltx_text" id="S4.T1.6.11.4.3.1" style="color:#00E000;">0.81</span> / <span class="ltx_text" id="S4.T1.6.11.4.3.2" style="color:#B80000;">0.41</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.4.4">
<span class="ltx_text" id="S4.T1.6.11.4.4.1" style="color:#00E000;">0.84</span> / <span class="ltx_text" id="S4.T1.6.11.4.4.2" style="color:#B80000;">0.40</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.4.5">
<span class="ltx_text" id="S4.T1.6.11.4.5.1" style="color:#00E000;">0.89</span> / <span class="ltx_text" id="S4.T1.6.11.4.5.2" style="color:#B80000;">0.35</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.4.6">
<span class="ltx_text" id="S4.T1.6.11.4.6.1" style="color:#00E000;">0.91</span> / <span class="ltx_text" id="S4.T1.6.11.4.6.2" style="color:#B80000;">0.27</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.4.7">
<span class="ltx_text" id="S4.T1.6.11.4.7.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="S4.T1.6.11.4.7.2" style="color:#B80000;">0.24</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.11.4.8">
<span class="ltx_text" id="S4.T1.6.11.4.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="S4.T1.6.11.4.8.2" style="color:#B80000;">0.08</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.12.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.12.5.1">last</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.5.2">
<span class="ltx_text" id="S4.T1.6.12.5.2.1" style="color:#00E000;">0.50</span> / <span class="ltx_text" id="S4.T1.6.12.5.2.2" style="color:#B80000;">0.47</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.5.3">
<span class="ltx_text" id="S4.T1.6.12.5.3.1" style="color:#00E000;">0.80</span> / <span class="ltx_text" id="S4.T1.6.12.5.3.2" style="color:#B80000;">0.40</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.5.4">
<span class="ltx_text" id="S4.T1.6.12.5.4.1" style="color:#00E000;">0.84</span> / <span class="ltx_text" id="S4.T1.6.12.5.4.2" style="color:#B80000;">0.40</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.5.5">
<span class="ltx_text" id="S4.T1.6.12.5.5.1" style="color:#00E000;">0.87</span> / <span class="ltx_text" id="S4.T1.6.12.5.5.2" style="color:#B80000;">0.36</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.5.6">
<span class="ltx_text" id="S4.T1.6.12.5.6.1" style="color:#00E000;">0.87</span> / <span class="ltx_text" id="S4.T1.6.12.5.6.2" style="color:#B80000;">0.31</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.5.7">
<span class="ltx_text" id="S4.T1.6.12.5.7.1" style="color:#00E000;">0.89</span> / <span class="ltx_text" id="S4.T1.6.12.5.7.2" style="color:#B80000;">0.25</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.12.5.8">
<span class="ltx_text" id="S4.T1.6.12.5.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="S4.T1.6.12.5.8.2" style="color:#B80000;">0.17</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.13.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T1.6.13.6.1" rowspan="5"><span class="ltx_text" id="S4.T1.6.13.6.1.1">Matryoshka <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02821v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2504.02821v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.6.13.6.2">11</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.13.6.3">
<span class="ltx_text" id="S4.T1.6.13.6.3.1" style="color:#00E000;">0.50</span> / <span class="ltx_text" id="S4.T1.6.13.6.3.2" style="color:#B80000;">0.47</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.13.6.4">
<span class="ltx_text" id="S4.T1.6.13.6.4.1" style="color:#00E000;">0.90</span> / <span class="ltx_text" id="S4.T1.6.13.6.4.2" style="color:#B80000;">0.39</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.13.6.5">
<span class="ltx_text" id="S4.T1.6.13.6.5.1" style="color:#00E000;">0.95</span> / <span class="ltx_text" id="S4.T1.6.13.6.5.2" style="color:#B80000;">0.31</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.13.6.6">
<span class="ltx_text" id="S4.T1.6.13.6.6.1" style="color:#00E000;">0.97</span> / <span class="ltx_text" id="S4.T1.6.13.6.6.2" style="color:#B80000;">0.23</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.13.6.7">
<span class="ltx_text" id="S4.T1.6.13.6.7.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="S4.T1.6.13.6.7.2" style="color:#B80000;">0.22</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.13.6.8">
<span class="ltx_text" id="S4.T1.6.13.6.8.1" style="color:#00E000;">0.94</span> / <span class="ltx_text" id="S4.T1.6.13.6.8.2" style="color:#B80000;">0.18</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.6.13.6.9">
<span class="ltx_text" id="S4.T1.6.13.6.9.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="S4.T1.6.13.6.9.2" style="color:#B80000;">0.19</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.14.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.14.7.1">17</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.7.2">
<span class="ltx_text" id="S4.T1.6.14.7.2.1" style="color:#00E000;">0.50</span> / <span class="ltx_text" id="S4.T1.6.14.7.2.2" style="color:#B80000;">0.47</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.7.3">
<span class="ltx_text" id="S4.T1.6.14.7.3.1" style="color:#00E000;">0.94</span> / <span class="ltx_text" id="S4.T1.6.14.7.3.2" style="color:#B80000;">0.33</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.7.4">
<span class="ltx_text" id="S4.T1.6.14.7.4.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="S4.T1.6.14.7.4.2" style="color:#B80000;">0.35</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.7.5">
<span class="ltx_text" id="S4.T1.6.14.7.5.1" style="color:#00E000;">0.96</span> / <span class="ltx_text" id="S4.T1.6.14.7.5.2" style="color:#B80000;">0.29</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.7.6">
<span class="ltx_text" id="S4.T1.6.14.7.6.1" style="color:#00E000;">0.96</span> / <span class="ltx_text" id="S4.T1.6.14.7.6.2" style="color:#B80000;">0.22</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.7.7">
<span class="ltx_text" id="S4.T1.6.14.7.7.1" style="color:#00E000;">0.97</span> / <span class="ltx_text" id="S4.T1.6.14.7.7.2" style="color:#B80000;">0.14</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.14.7.8">
<span class="ltx_text" id="S4.T1.6.14.7.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="S4.T1.6.14.7.8.2" style="color:#B80000;">0.11</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.15.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.15.8.1">22</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.15.8.2">
<span class="ltx_text" id="S4.T1.6.15.8.2.1" style="color:#00E000;">0.50</span> / <span class="ltx_text" id="S4.T1.6.15.8.2.2" style="color:#B80000;">0.47</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.15.8.3">
<span class="ltx_text" id="S4.T1.6.15.8.3.1" style="color:#00E000;">0.88</span> / <span class="ltx_text" id="S4.T1.6.15.8.3.2" style="color:#B80000;">0.40</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.15.8.4">
<span class="ltx_text" id="S4.T1.6.15.8.4.1" style="color:#00E000;">0.87</span> / <span class="ltx_text" id="S4.T1.6.15.8.4.2" style="color:#B80000;">0.33</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.15.8.5">
<span class="ltx_text" id="S4.T1.6.15.8.5.1" style="color:#00E000;">0.89</span> / <span class="ltx_text" id="S4.T1.6.15.8.5.2" style="color:#B80000;">0.29</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.15.8.6">
<span class="ltx_text" id="S4.T1.6.15.8.6.1" style="color:#00E000;">0.94</span> / <span class="ltx_text" id="S4.T1.6.15.8.6.2" style="color:#B80000;">0.23</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.15.8.7">
<span class="ltx_text" id="S4.T1.6.15.8.7.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="S4.T1.6.15.8.7.2" style="color:#B80000;">0.15</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.15.8.8">
<span class="ltx_text" id="S4.T1.6.15.8.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="S4.T1.6.15.8.8.2" style="color:#B80000;">0.06</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.16.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.16.9.1">23</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.16.9.2">
<span class="ltx_text" id="S4.T1.6.16.9.2.1" style="color:#00E000;">0.50</span> / <span class="ltx_text" id="S4.T1.6.16.9.2.2" style="color:#B80000;">0.47</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.16.9.3">
<span class="ltx_text" id="S4.T1.6.16.9.3.1" style="color:#00E000;">0.85</span> / <span class="ltx_text" id="S4.T1.6.16.9.3.2" style="color:#B80000;">0.40</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.16.9.4">
<span class="ltx_text" id="S4.T1.6.16.9.4.1" style="color:#00E000;">0.86</span> / <span class="ltx_text" id="S4.T1.6.16.9.4.2" style="color:#B80000;">0.35</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.16.9.5">
<span class="ltx_text" id="S4.T1.6.16.9.5.1" style="color:#00E000;">0.90</span> / <span class="ltx_text" id="S4.T1.6.16.9.5.2" style="color:#B80000;">0.35</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.16.9.6">
<span class="ltx_text" id="S4.T1.6.16.9.6.1" style="color:#00E000;">0.91</span> / <span class="ltx_text" id="S4.T1.6.16.9.6.2" style="color:#B80000;">0.19</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.16.9.7">
<span class="ltx_text" id="S4.T1.6.16.9.7.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="S4.T1.6.16.9.7.2" style="color:#B80000;">0.17</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.16.9.8">
<span class="ltx_text" id="S4.T1.6.16.9.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="S4.T1.6.16.9.8.2" style="color:#B80000;">0.14</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.17.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.6.17.10.1">last</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.17.10.2">
<span class="ltx_text" id="S4.T1.6.17.10.2.1" style="color:#00E000;">0.50</span> / <span class="ltx_text" id="S4.T1.6.17.10.2.2" style="color:#B80000;">0.47</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.17.10.3">
<span class="ltx_text" id="S4.T1.6.17.10.3.1" style="color:#00E000;">0.85</span> / <span class="ltx_text" id="S4.T1.6.17.10.3.2" style="color:#B80000;">0.41</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.17.10.4">
<span class="ltx_text" id="S4.T1.6.17.10.4.1" style="color:#00E000;">0.88</span> / <span class="ltx_text" id="S4.T1.6.17.10.4.2" style="color:#B80000;">0.40</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.17.10.5">
<span class="ltx_text" id="S4.T1.6.17.10.5.1" style="color:#00E000;">0.89</span> / <span class="ltx_text" id="S4.T1.6.17.10.5.2" style="color:#B80000;">0.31</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.17.10.6">
<span class="ltx_text" id="S4.T1.6.17.10.6.1" style="color:#00E000;">0.91</span> / <span class="ltx_text" id="S4.T1.6.17.10.6.2" style="color:#B80000;">0.26</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.17.10.7">
<span class="ltx_text" id="S4.T1.6.17.10.7.1" style="color:#00E000;">0.92</span> / <span class="ltx_text" id="S4.T1.6.17.10.7.2" style="color:#B80000;">0.17</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.6.17.10.8">
<span class="ltx_text" id="S4.T1.6.17.10.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="S4.T1.6.17.10.8.2" style="color:#B80000;">0.09</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the best and worst monosemanticity scores achieved by two different Sparse Autoencoder (SAE) methods: BatchTopK and Matryoshka.  The monosemanticity score, a metric introduced in this paper, measures how focused a neuron's activation is on a single concept.  The comparison is made across various SAE widths (achieved by varying the expansion factor), and different layers of a CLIP ViT-Large model.  The table shows how the best-performing and worst-performing neurons of each SAE configuration behave, demonstrating the effectiveness of SAEs in enhancing the interpretability of vision-language models.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of the best / worst monosemanticity of neurons as measured by our proposed metric, for two recent SAE methods and different widths, applied on different layers of a CLIP ViT-Large [31] model.
> </details>





### In-depth insights


#### SAE for VLMs
SAEs for VLMs represent a compelling avenue for enhancing model interpretability and control. By applying SAEs to VLM activations, the entangled concepts within neurons are disentangled, resulting in **more monosemantic representations**. This approach allows for targeted interventions, enabling steering of model outputs towards specific concepts. The use of a Monosemanticity Score(MS) offers a quantitative way to validate improved concept separation, potentially revealing **hierarchical relationships**. Future work involves exploring applications beyond vision, potentially **benefiting other modalities** within VLMs by extending the framework to other representation types.

#### Monosemanticity
**Monosemanticity** in neural networks, especially in vision-language models (VLMs), refers to the degree to which a single neuron represents a single, clear concept. A highly monosemantic neuron will consistently activate for similar inputs, indicating a focused understanding of a specific feature. The lack of it suggests **polysemanticity**, where neurons respond to diverse, unrelated concepts, hindering interpretability. Improving monosemanticity enhances a model's **transparency and control**, allowing for more targeted interventions and steering of outputs. Techniques like Sparse Autoencoders (SAEs) are crucial for disentangling representations and promoting monosemanticity, leading to more understandable and steerable AI systems by separating entangled concepts.

#### Steering MLLMs
**Steering Multimodal Language Models (MLLMs)** is a promising area that allows influencing the behavior of these models in a more controlled and interpretable manner. The paper explores how Sparse Autoencoders (SAEs) can be leveraged to achieve this goal. By attaching SAEs to the vision encoder of an MLLM, it becomes possible to intervene on specific neuron activations and steer the model's output towards desired concepts. This is particularly interesting because it offers a way to **modify the model's behavior without directly altering its parameters**, which is highly useful. The approach involves first training an SAE on the vision encoder's activations to discover disentangled concepts. Then, during inference, the activation of a chosen SAE neuron is manipulated, which effectively biases the visual information fed into the LLM component of the MLLM. The results demonstrate that this technique can successfully steer the MLLM's output towards the concept represented by the intervened neuron, even if that concept is not explicitly present in the input image.  This opens up exciting possibilities for **fine-grained control over MLLMs** and could have significant implications for various applications where precise and interpretable model behavior is crucial.

#### MS evaluation
Evaluating monosemanticity through the proposed MS metric allows for a quantitative assessment of how well individual neurons within SAEs disentangle concepts. **The MS metric facilitates the comparison of neuron specialization, both within SAEs and against original VLM neurons.** High MS values indicate neurons are consistently activated by similar images, suggesting focused concept representation. The metric facilitates analysis of the impact of factors like expansion factor and sparsity on monosemanticity. **By evaluating across different SAE configurations, the effectiveness of various architectural choices in promoting concept disentanglement can be quantified.** It aids in assessing hierarchical structure learning, showing an alignment with expert-defined taxonomies.

#### iNat hierarchy
The 'iNat hierarchy,' seemingly referring to the iNaturalist taxonomy, plays a crucial role in the study. It acts as an **expert-defined structure** against which learned representations are evaluated. The alignment between concepts discovered by Matryoshka SAEs and the iNaturalist taxonomy suggests the SAEs effectively capture **real-world, hierarchical relationships**. The ability of the model to mirror this pre-existing organization indicates a level of interpretability and semantic grounding beyond simple feature extraction. Further more, the comparison between learned representations and the 'iNat hierarchy' provides a means of **quantifying the granularity** of the discovered concepts. Analyzing the mapping of neurons to different levels reveals how the model organizes information. The results indicate that the most specialized neurons are found in the lower levels which allows interpretable results.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.02821/x2.png)

> 🔼 Figure 2 illustrates the calculation of the Monosemanticity Score (MS), a metric designed to quantify the monosemanticity of individual neurons in a Sparse Autoencoder (SAE).  The process is broken down into three steps: (A) Image embeddings and neuron activations are extracted from a set of input images using a pre-trained image encoder. (B) A pairwise similarity matrix is computed, reflecting the semantic similarity between pairs of images, and a matrix representing pairwise neuron activations is created. (C) The MS is then computed by averaging these pairwise image similarities, with each similarity weighted by the corresponding neuron activations. This weighted average provides a measure of how similar the images are that strongly activate a particular neuron.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of the computation of our Monosemanticity Score (MS). (A) We extract embeddings and activations from a given set of images, (B) then compute the pairwise embedding similarities and pairwise neuron activations. (C) MS is equal to the average of embedding similarities weighted by the neuron activations.
> </details>



![](https://arxiv.org/html/2504.02821/x3.png)

> 🔼 Figure 3 visually demonstrates the relationship between a neuron's Monosemanticity Score (MS) and the similarity of its highest-activating images.  The figure presents a series of images, each set corresponding to a different neuron within a Sparse Autoencoder (SAE).  Moving from left to right, the MS decreases. Concurrently, the visual similarity among images within each set diminishes.  For example, neurons with high MS values (left side) activate primarily on visually similar images, indicating a strong focus on a single semantic concept.  In contrast, neurons with lower MS values (right side) exhibit a greater variety in the images they activate, reflecting a more polysemantic response—the neuron responds to a wider range of concepts. This visual progression underscores the correlation between a neuron's MS and its monosemanticity, or degree of semantic specificity.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative examples of highest activating images for different neurons from high (left) to low (right) Monosemanticity Scores (MS). As the score gets higher, images become more similar, illustrating the correlation with monosemanticity.
> </details>



![](https://arxiv.org/html/2504.02821/x4.png)

> 🔼 Figure 4 presents a comparison of monosemanticity scores across neurons, normalized by the width of the layer.  The results are displayed for the last layer of a model with and without the application of Sparse Autoencoders (SAEs). The 'No SAE' line (black dashed line) represents the monosemanticity scores for the original model's neurons. The colored lines represent the results obtained using SAEs with different expansion factors (ε).  Specifically, the figure shows the results for expansion factors of 1, 4, and 16, illustrating how increasing the expansion factor affects the monosemanticity of the learned features. The x-axis represents the normalized neuron index, and the y-axis represents the monosemanticity score.
> <details>
> <summary>read the caption</summary>
> Figure 4: Monosemanticity Scores in decreasing order across neurons, normalized by width. Results are shown for the last layer of the model, without SAE (“No SAE”, in black dashed line), and with SAE using different expansion factors (in straight lines,  for ε=1𝜀1\varepsilon=1italic_ε = 1,  for ε=4𝜀4\varepsilon=4italic_ε = 4 and  for ε=16𝜀16\varepsilon=16italic_ε = 16).
> </details>



![](https://arxiv.org/html/2504.02821/x5.png)

> 🔼 This figure shows how the sparsity factor (K) in the sparse autoencoder (SAE) affects the monosemanticity scores of the resulting neurons.  Monosemanticity, in this context, measures how focused a neuron is on a single concept. The SAE was trained on the last layer of a vision-language model with an expansion factor (ε) of 1. Four different sparsity levels are tested (K=1, 10, 20, 50), and their monosemanticity scores are plotted against a normalized neuron index.  The scores from the original neurons (before applying the SAE) are also shown for comparison, demonstrating the improved monosemanticity achieved by the SAE.
> <details>
> <summary>read the caption</summary>
> Figure 5: Impact of sparsity factor K𝐾Kitalic_K on Monosemanticity Scores across neurons extracted from SAEs trained on the last layer of the model with expansion factor ε=1𝜀1\varepsilon=1italic_ε = 1. Results are shown for different sparsity levels, with straight lines  for K=1𝐾1K=1italic_K = 1,  for K=10𝐾10K=10italic_K = 10,  for K=20𝐾20K=20italic_K = 20, and  for K=50𝐾50K=50italic_K = 50. Scores of the original neurons (“No SAE”, in black dashed lines) are added for comparison.
> </details>



![](https://arxiv.org/html/2504.02821/x6.png)

> 🔼 Figure 6 demonstrates the ability to control the output of a large language model (LLM) called LLaVA by manipulating the activation of a specific neuron within a sparse autoencoder (SAE). The SAE is trained on a vision-language model (VLM), specifically CLIP.  The experiment focuses on a neuron identified as representing the concept of a 'pencil'.  The image input is a plain white image.  When the activation of the 'pencil' neuron in the SAE is increased ('intervention weight α'), the LLaVA's response changes from a poem unrelated to pencils to a poem that increasingly focuses on pencils, starting with descriptions of pencil attributes and ultimately mentioning only 'pencil'. This showcases how carefully controlling SAE neuron activations can effectively steer the LLM output in an unsupervised manner, showcasing a novel method for controlling the output of such models.
> <details>
> <summary>read the caption</summary>
> Figure 6: We steer the outputs of LLaVA by clamping the activation values of a chosen neuron, i.e. Neuron ##\##39 = pencil neuron, in the CLIP SAE. We observe that while initially the poem follows the instruction (the prompt + white image) strongly, the outputs become more and more influenced by the concept that this neuron represents with increasing intervention weight α𝛼\alphaitalic_α, talking about attributes of pencil first, and then just the concept pencil. This shows that our interventions enable new capabilities for the unsupervised steering of these models.
> </details>



![](https://arxiv.org/html/2504.02821/x7.png)

> 🔼 This figure demonstrates the impact of manipulating specific neurons within a Sparse Autoencoder (SAE) on the output of a Multimodal Large Language Model (MLLM).  Three different intervention strengths (0, medium, high) are applied to three separate SAE neurons. Each neuron is associated with a specific concept, represented by the images shown next to it: polka dots, shipwreck, and rainbow. The prompt given to the MLLM in each case is: 'Generate a scientific article title.'  By changing the strength of the intervention, the generated titles shift to reflect the specific concept associated with the manipulated neuron more strongly. This highlights the ability to steer the MLLM's output towards desired concepts by subtly altering neuron activations in the SAE without modifying the underlying language model.
> <details>
> <summary>read the caption</summary>
> Figure 7: Effects of neuron interventions on MLLM-generated scientific article titles. Steering magnitudes are categorized as “0”, “medium”, and “high” based on the intervention strength. The neurons are visualized with the highest activating images from which we deduce their associated concepts: “polka dots”, “shipwreck”, and “rainbow”.
> </details>



![](https://arxiv.org/html/2504.02821/x8.png)

> 🔼 This figure demonstrates how a sparse autoencoder (SAE) can be used to steer the output of a large language model (LLM) by manipulating its visual input.  A LLaVA-like model is shown, which combines image and text inputs to generate a text output.  An SAE is attached to the model's vision encoder. By selectively activating a specific neuron in the SAE that corresponds to a desired concept (in this case, a panda), the model's response can be subtly altered. Even if the concept is not present in the original image, the SAE's intervention guides the LLM's interpretation to incorporate it. This illustrates the ability to control and enhance the LLM's outputs in a precise way, which is facilitated by the rich conceptual representation discovered by the SAE.
> <details>
> <summary>read the caption</summary>
> Figure A1: LLaVA-like models can be steered towards seeing a concept (e.g. panda) not present in the input image 𝐱𝐱\mathbf{x}bold_x. By attaching SAE after vision encoder and intervening on its neuron representing that concept, we effectively manipulate the LLM’s response. Such flexible and precise steering is possible thanks to the extensive concept dictionary identified through the SAE.
> </details>



![](https://arxiv.org/html/2504.02821/x9.png)

> 🔼 Figure A2 presents a comparative analysis of monosemanticity scores across neurons.  The x-axis represents the index of neurons ordered by decreasing monosemanticity score, while the y-axis displays the monosemanticity score itself.  Multiple lines are plotted, each representing a different condition: one line shows the scores for the layer without a Sparse Autoencoder (SAE), and other lines illustrate scores for the layer with an SAE, trained with different expansion factors (1x, 4x, and 16x). This visualization helps in understanding the impact of SAEs and varying expansion factors on the monosemanticity of the learned features.  Higher scores indicate greater monosemanticity, meaning that the neuron responds more consistently to semantically similar inputs.
> <details>
> <summary>read the caption</summary>
> Figure A2: MS in decreasing order across neurons. Results are shown for a layer without SAE (“No SAE”), and with SAE using different expansion factors (×1,×4\times 1,\times 4× 1 , × 4 and ×16absent16\times 16× 16).
> </details>



![](https://arxiv.org/html/2504.02821/x10.png)

> 🔼 This figure shows the monosemanticity scores of neurons in a CLIP ViT-L model.  Monosemanticity measures how well a neuron represents a single, clear concept.  The x-axis represents the neurons ordered by their monosemanticity scores (from high to low), while the y-axis shows the monosemanticity score itself. The graph compares neurons from the original CLIP ViT-L model (No SAE) to neurons obtained after applying Sparse Autoencoders (SAEs).  Specifically, it illustrates the improved monosemanticity (more focused concepts) achieved by the SAEs, with different expansion factors representing variations in the size of the SAE's latent space (i.e. the number of neurons). CLIP ViT-B acted as the image encoder used to compute the monosemanticity scores. The results demonstrate the effectiveness of SAEs in improving the clarity and interpretability of the vision model.
> <details>
> <summary>read the caption</summary>
> (a) Neurons of CLIP ViT-L evaluated with CLIP ViT-B as the image encoder E𝐸Eitalic_E
> </details>



![](https://arxiv.org/html/2504.02821/x11.png)

> 🔼 This figure displays the results of evaluating the monosemanticity of CLIP ViT-L model neurons using DINOv2 ViT-B as the image encoder. Monosemanticity, a measure of how focused a neuron's response is on a single concept, is assessed.  The figure likely shows a graph or chart comparing the monosemanticity scores of neurons in the CLIP ViT-L model (with the original image features) to those obtained when using the features extracted by DINOv2 ViT-B. This comparison helps understand the impact of different image encoders on the interpretability and concept clarity of neurons in vision-language models.
> <details>
> <summary>read the caption</summary>
> (b) Neurons of CLIP ViT-L evaluated with DINOv2 ViT-B as the image encoder E𝐸Eitalic_E
> </details>



![](https://arxiv.org/html/2504.02821/x12.png)

> 🔼 This figure shows the monosemanticity scores of neurons in the SigLIP SoViT-400m model.  The monosemanticity was calculated using the CLIP ViT-B model as the image encoder. The figure likely displays a graph or chart visualizing how monosemantic the neurons are across different layers of the model, potentially comparing the SigLIP SoViT-400m model's neurons to those of other models or comparing different configurations within the SigLIP SoViT-400m model itself. This information is helpful to understand the quality of learned representations and how well-separated different concepts are in the model's neurons.
> <details>
> <summary>read the caption</summary>
> (c) Neurons of SigLIP SoViT-400m evaluated with CLIP ViT-B as the image encoder E𝐸Eitalic_E
> </details>



![](https://arxiv.org/html/2504.02821/extracted/6333825/pencil_neuron.png)

> 🔼 Figure A3 presents a comparative analysis of monosemanticity scores (MS) across neurons.  It displays the MS values for neurons in the final layer of two distinct vision-language models: one without a Sparse Autoencoder (SAE) and another with an SAE trained using an expansion factor of 1. The key comparison is the distribution of MS values between these two models, illustrating how the SAE influences the monosemanticity of the resulting neuron representations. Furthermore, the figure highlights the impact of using different image encoders (E) for calculating MS, demonstrating the robustness or sensitivity of the monosemanticity measure to the choice of encoder.
> <details>
> <summary>read the caption</summary>
> Figure A3: MS in decreasing order across neurons. Results are shown for the last layers of two different models, without SAE (black dashed line), and with SAE being trained with expansion factor 1111 ( green solid line). MS is computed with distinct image encoders E𝐸Eitalic_E.
> </details>



![](https://arxiv.org/html/2504.02821/x13.png)

> 🔼 Figure A4 shows a set of images that strongly activate a specific neuron within a Sparse Autoencoder (SAE). This neuron, manually labeled as the 'Pencil Neuron', is part of a larger SAE trained on vision data to enhance interpretability in vision-language models. The images displayed in Figure A4 are those most strongly associated with this particular neuron, illustrating its monosemantic nature. Because the images shown are all related to pencils, the figure helps to demonstrate how the SAE is able to learn concepts that improve both interpretability and control of vision-language models.
> <details>
> <summary>read the caption</summary>
> Figure A4: Images highly activating the neuron we intervene on in Figure 6, which we manually labeled as “Pencil Neuron”.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.4.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" colspan="2" id="S4.T2.4.1.1.1.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.1.1.1">Level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.1.2.1">0</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.1.3.1">1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.1.4.1">2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.1.5.1">3</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.1.6.1">4</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.4.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" colspan="2" id="S4.T2.4.1.2.2.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.2.2.1.1">Depth</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.4.1.2.2.2" style="padding-left:8.0pt;padding-right:8.0pt;">3.33</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.4.1.2.2.3" style="padding-left:8.0pt;padding-right:8.0pt;">2.92</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.4.1.2.2.4" style="padding-left:8.0pt;padding-right:8.0pt;">3.85</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.4.1.2.2.5" style="padding-left:8.0pt;padding-right:8.0pt;">3.86</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.4.1.2.2.6" style="padding-left:8.0pt;padding-right:8.0pt;">4.06</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.4.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.4.1.3.1.1" rowspan="3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.3.1.1.1">MS</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.1.3.1.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.3.1.2.1">Avg.</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.3.1.3" style="padding-left:8.0pt;padding-right:8.0pt;">0.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.3.1.4" style="padding-left:8.0pt;padding-right:8.0pt;">0.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.3.1.5" style="padding-left:8.0pt;padding-right:8.0pt;">0.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.3.1.6" style="padding-left:8.0pt;padding-right:8.0pt;">0.73</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.4.1.3.1.7" style="padding-left:8.0pt;padding-right:8.0pt;">0.74</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.4.1.4.2.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.4.2.1.1">Max.</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.2.2" style="padding-left:8.0pt;padding-right:8.0pt;">0.69</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.2.3" style="padding-left:8.0pt;padding-right:8.0pt;">0.75</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.2.4" style="padding-left:8.0pt;padding-right:8.0pt;">0.78</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.2.5" style="padding-left:8.0pt;padding-right:8.0pt;">0.85</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.4.1.4.2.6" style="padding-left:8.0pt;padding-right:8.0pt;">0.89</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.4.1.5.3.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.5.3.1.1">Min.</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.3.2" style="padding-left:8.0pt;padding-right:8.0pt;">0.66</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.3.3" style="padding-left:8.0pt;padding-right:8.0pt;">0.64</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.3.4" style="padding-left:8.0pt;padding-right:8.0pt;">0.63</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.3.5" style="padding-left:8.0pt;padding-right:8.0pt;">0.61</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.3.6" style="padding-left:8.0pt;padding-right:8.0pt;">0.43</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average lowest common ancestor (LCA) depth and monosemanticity scores for neurons at each level within the Matryoshka nested dictionary.  The LCA depth reflects the hierarchical level of concepts represented by each neuron in the iNaturalist taxonomy, while the monosemanticity score measures the degree to which neurons respond to similar images.  The table shows how these two metrics change across different levels of the hierarchy, providing insights into the hierarchical organization of concepts learned by the Matryoshka SAEs.
> <details>
> <summary>read the caption</summary>
> Table 2: Average LCA depth and monosemanticity (MS) scores across neurons at each level in the Matryoshka nested dictionary.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.8.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.8.5.1.1">Steering</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.8.5.1.2">White Image</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.8.5.1.3">ImageNet</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.6.2.3"><span class="ltx_text" id="S4.T3.6.2.3.1" style="color:#11B526;">✓</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.1">0.259 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.5.1.1.1.m1.1"><semantics id="S4.T3.5.1.1.1.m1.1a"><mo id="S4.T3.5.1.1.1.m1.1.1" xref="S4.T3.5.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.1.1.1.m1.1b"><csymbol cd="latexml" id="S4.T3.5.1.1.1.m1.1.1.cmml" xref="S4.T3.5.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.1.1.1.m1.1d">±</annotation></semantics></math> 0.036</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.6.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.6.2.2.1">0.263 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.6.2.2.1.m1.1"><semantics id="S4.T3.6.2.2.1.m1.1a"><mo id="S4.T3.6.2.2.1.m1.1.1" xref="S4.T3.6.2.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.2.2.1.m1.1b"><csymbol cd="latexml" id="S4.T3.6.2.2.1.m1.1.1.cmml" xref="S4.T3.6.2.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.2.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.2.2.1.m1.1d">±</annotation></semantics></math> 0.037</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.8.4.3"><span class="ltx_text" id="S4.T3.8.4.3.1" style="color:#CE1126;">✗</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.3.1">0.212 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.7.3.1.m1.1"><semantics id="S4.T3.7.3.1.m1.1a"><mo id="S4.T3.7.3.1.m1.1.1" xref="S4.T3.7.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.3.1.m1.1b"><csymbol cd="latexml" id="S4.T3.7.3.1.m1.1.1.cmml" xref="S4.T3.7.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.3.1.m1.1d">±</annotation></semantics></math> 0.021</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.8.4.2">0.211 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.8.4.2.m1.1"><semantics id="S4.T3.8.4.2.m1.1a"><mo id="S4.T3.8.4.2.m1.1.1" xref="S4.T3.8.4.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.4.2.m1.1b"><csymbol cd="latexml" id="S4.T3.8.4.2.m1.1.1.cmml" xref="S4.T3.8.4.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.4.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.4.2.m1.1d">±</annotation></semantics></math> 0.028</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average similarity scores between the highly activating images of neurons and the generated output words from a multimodal language model. The similarity is measured using cosine similarity.  Two experimental conditions are compared: one using a plain white image as input, and another using random images from the ImageNet dataset.  For both conditions, similarity scores are reported with and without applying a steering intervention on the model. The table also provides upper and lower bound scores representing the expected similarity range. The upper bound is obtained using correct image-text pairs, and the lower bound uses random image-text pairs. These results demonstrate the effectiveness of the steering technique in aligning the model's output with specific concepts.
> <details>
> <summary>read the caption</summary>
> Table 3: Average similarity between neurons’ highly activating images and output word, with and without steering, using a white input image or random images from ImageNet. Upper-bound score with correct image and class name text pairs is 0.283±0.034plus-or-minus0.2830.0340.283\pm 0.0340.283 ± 0.034, while lower-bound with random image and class name text pair is 0.185±0.028plus-or-minus0.1850.0280.185\pm 0.0280.185 ± 0.028.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T1.72.70">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T1.72.70.71.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T1.72.70.71.1.1" rowspan="2"><span class="ltx_text" id="A2.T1.72.70.71.1.1.1">SAE type</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T1.72.70.71.1.2" rowspan="2"><span class="ltx_text" id="A2.T1.72.70.71.1.2.1">Layer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T1.72.70.71.1.3" rowspan="2"><span class="ltx_text" id="A2.T1.72.70.71.1.3.1">No SAE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="A2.T1.72.70.71.1.4">Expansion factor</th>
</tr>
<tr class="ltx_tr" id="A2.T1.72.70.72.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T1.72.70.72.2.1">x1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T1.72.70.72.2.2">x2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T1.72.70.72.2.3">x4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T1.72.70.72.2.4">x8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T1.72.70.72.2.5">x16</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T1.72.70.72.2.6">x64</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T1.9.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T1.9.7.7.8" rowspan="5"><span class="ltx_text" id="A2.T1.9.7.7.8.1">BatchTopK</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T1.9.7.7.9">11</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.3.1.1.1">0.4837 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.3.1.1.1.m1.1"><semantics id="A2.T1.3.1.1.1.m1.1a"><mo id="A2.T1.3.1.1.1.m1.1.1" xref="A2.T1.3.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.3.1.1.1.m1.1b"><csymbol cd="latexml" id="A2.T1.3.1.1.1.m1.1.1.cmml" xref="A2.T1.3.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.3.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.3.1.1.1.m1.1d">±</annotation></semantics></math> 0.0067</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.4.2.2.2">0.52 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.4.2.2.2.m1.1"><semantics id="A2.T1.4.2.2.2.m1.1a"><mo id="A2.T1.4.2.2.2.m1.1.1" xref="A2.T1.4.2.2.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.4.2.2.2.m1.1b"><csymbol cd="latexml" id="A2.T1.4.2.2.2.m1.1.1.cmml" xref="A2.T1.4.2.2.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.4.2.2.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.4.2.2.2.m1.1d">±</annotation></semantics></math> 0.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.5.3.3.3">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.5.3.3.3.m1.1"><semantics id="A2.T1.5.3.3.3.m1.1a"><mo id="A2.T1.5.3.3.3.m1.1.1" xref="A2.T1.5.3.3.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.5.3.3.3.m1.1b"><csymbol cd="latexml" id="A2.T1.5.3.3.3.m1.1.1.cmml" xref="A2.T1.5.3.3.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.5.3.3.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.5.3.3.3.m1.1d">±</annotation></semantics></math> 0.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.6.4.4.4">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.6.4.4.4.m1.1"><semantics id="A2.T1.6.4.4.4.m1.1a"><mo id="A2.T1.6.4.4.4.m1.1.1" xref="A2.T1.6.4.4.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.6.4.4.4.m1.1b"><csymbol cd="latexml" id="A2.T1.6.4.4.4.m1.1.1.cmml" xref="A2.T1.6.4.4.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.6.4.4.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.6.4.4.4.m1.1d">±</annotation></semantics></math> 0.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.7.5.5.5">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.7.5.5.5.m1.1"><semantics id="A2.T1.7.5.5.5.m1.1a"><mo id="A2.T1.7.5.5.5.m1.1.1" xref="A2.T1.7.5.5.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.7.5.5.5.m1.1b"><csymbol cd="latexml" id="A2.T1.7.5.5.5.m1.1.1.cmml" xref="A2.T1.7.5.5.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.7.5.5.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.7.5.5.5.m1.1d">±</annotation></semantics></math> 0.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.8.6.6.6">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.8.6.6.6.m1.1"><semantics id="A2.T1.8.6.6.6.m1.1a"><mo id="A2.T1.8.6.6.6.m1.1.1" xref="A2.T1.8.6.6.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.8.6.6.6.m1.1b"><csymbol cd="latexml" id="A2.T1.8.6.6.6.m1.1.1.cmml" xref="A2.T1.8.6.6.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.8.6.6.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.8.6.6.6.m1.1d">±</annotation></semantics></math> 0.05</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T1.9.7.7.7">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.9.7.7.7.m1.1"><semantics id="A2.T1.9.7.7.7.m1.1a"><mo id="A2.T1.9.7.7.7.m1.1.1" xref="A2.T1.9.7.7.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.9.7.7.7.m1.1b"><csymbol cd="latexml" id="A2.T1.9.7.7.7.m1.1.1.cmml" xref="A2.T1.9.7.7.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.9.7.7.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.9.7.7.7.m1.1d">±</annotation></semantics></math> 0.06</td>
</tr>
<tr class="ltx_tr" id="A2.T1.16.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T1.16.14.14.8">17</th>
<td class="ltx_td ltx_align_center" id="A2.T1.10.8.8.1">0.4840 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.10.8.8.1.m1.1"><semantics id="A2.T1.10.8.8.1.m1.1a"><mo id="A2.T1.10.8.8.1.m1.1.1" xref="A2.T1.10.8.8.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.10.8.8.1.m1.1b"><csymbol cd="latexml" id="A2.T1.10.8.8.1.m1.1.1.cmml" xref="A2.T1.10.8.8.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.10.8.8.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.10.8.8.1.m1.1d">±</annotation></semantics></math> 0.0079</td>
<td class="ltx_td ltx_align_center" id="A2.T1.11.9.9.2">0.55 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.11.9.9.2.m1.1"><semantics id="A2.T1.11.9.9.2.m1.1a"><mo id="A2.T1.11.9.9.2.m1.1.1" xref="A2.T1.11.9.9.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.11.9.9.2.m1.1b"><csymbol cd="latexml" id="A2.T1.11.9.9.2.m1.1.1.cmml" xref="A2.T1.11.9.9.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.11.9.9.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.11.9.9.2.m1.1d">±</annotation></semantics></math> 0.07</td>
<td class="ltx_td ltx_align_center" id="A2.T1.12.10.10.3">0.56 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.12.10.10.3.m1.1"><semantics id="A2.T1.12.10.10.3.m1.1a"><mo id="A2.T1.12.10.10.3.m1.1.1" xref="A2.T1.12.10.10.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.12.10.10.3.m1.1b"><csymbol cd="latexml" id="A2.T1.12.10.10.3.m1.1.1.cmml" xref="A2.T1.12.10.10.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.12.10.10.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.12.10.10.3.m1.1d">±</annotation></semantics></math> 0.08</td>
<td class="ltx_td ltx_align_center" id="A2.T1.13.11.11.4">0.57 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.13.11.11.4.m1.1"><semantics id="A2.T1.13.11.11.4.m1.1a"><mo id="A2.T1.13.11.11.4.m1.1.1" xref="A2.T1.13.11.11.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.13.11.11.4.m1.1b"><csymbol cd="latexml" id="A2.T1.13.11.11.4.m1.1.1.cmml" xref="A2.T1.13.11.11.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.13.11.11.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.13.11.11.4.m1.1d">±</annotation></semantics></math> 0.08</td>
<td class="ltx_td ltx_align_center" id="A2.T1.14.12.12.5">0.56 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.14.12.12.5.m1.1"><semantics id="A2.T1.14.12.12.5.m1.1a"><mo id="A2.T1.14.12.12.5.m1.1.1" xref="A2.T1.14.12.12.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.14.12.12.5.m1.1b"><csymbol cd="latexml" id="A2.T1.14.12.12.5.m1.1.1.cmml" xref="A2.T1.14.12.12.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.14.12.12.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.14.12.12.5.m1.1d">±</annotation></semantics></math> 0.05</td>
<td class="ltx_td ltx_align_center" id="A2.T1.15.13.13.6">0.56 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.15.13.13.6.m1.1"><semantics id="A2.T1.15.13.13.6.m1.1a"><mo id="A2.T1.15.13.13.6.m1.1.1" xref="A2.T1.15.13.13.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.15.13.13.6.m1.1b"><csymbol cd="latexml" id="A2.T1.15.13.13.6.m1.1.1.cmml" xref="A2.T1.15.13.13.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.15.13.13.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.15.13.13.6.m1.1d">±</annotation></semantics></math> 0.08</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T1.16.14.14.7">0.56 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.16.14.14.7.m1.1"><semantics id="A2.T1.16.14.14.7.m1.1a"><mo id="A2.T1.16.14.14.7.m1.1.1" xref="A2.T1.16.14.14.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.16.14.14.7.m1.1b"><csymbol cd="latexml" id="A2.T1.16.14.14.7.m1.1.1.cmml" xref="A2.T1.16.14.14.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.16.14.14.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.16.14.14.7.m1.1d">±</annotation></semantics></math> 0.09</td>
</tr>
<tr class="ltx_tr" id="A2.T1.23.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T1.23.21.21.8">22</th>
<td class="ltx_td ltx_align_center" id="A2.T1.17.15.15.1">0.4816 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.17.15.15.1.m1.1"><semantics id="A2.T1.17.15.15.1.m1.1a"><mo id="A2.T1.17.15.15.1.m1.1.1" xref="A2.T1.17.15.15.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.17.15.15.1.m1.1b"><csymbol cd="latexml" id="A2.T1.17.15.15.1.m1.1.1.cmml" xref="A2.T1.17.15.15.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.17.15.15.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.17.15.15.1.m1.1d">±</annotation></semantics></math> 0.0053</td>
<td class="ltx_td ltx_align_center" id="A2.T1.18.16.16.2">0.60 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.18.16.16.2.m1.1"><semantics id="A2.T1.18.16.16.2.m1.1a"><mo id="A2.T1.18.16.16.2.m1.1.1" xref="A2.T1.18.16.16.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.18.16.16.2.m1.1b"><csymbol cd="latexml" id="A2.T1.18.16.16.2.m1.1.1.cmml" xref="A2.T1.18.16.16.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.18.16.16.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.18.16.16.2.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center" id="A2.T1.19.17.17.3">0.61 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.19.17.17.3.m1.1"><semantics id="A2.T1.19.17.17.3.m1.1a"><mo id="A2.T1.19.17.17.3.m1.1.1" xref="A2.T1.19.17.17.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.19.17.17.3.m1.1b"><csymbol cd="latexml" id="A2.T1.19.17.17.3.m1.1.1.cmml" xref="A2.T1.19.17.17.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.19.17.17.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.19.17.17.3.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center" id="A2.T1.20.18.18.4">0.62 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.20.18.18.4.m1.1"><semantics id="A2.T1.20.18.18.4.m1.1a"><mo id="A2.T1.20.18.18.4.m1.1.1" xref="A2.T1.20.18.18.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.20.18.18.4.m1.1b"><csymbol cd="latexml" id="A2.T1.20.18.18.4.m1.1.1.cmml" xref="A2.T1.20.18.18.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.20.18.18.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.20.18.18.4.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center" id="A2.T1.21.19.19.5">0.63 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.21.19.19.5.m1.1"><semantics id="A2.T1.21.19.19.5.m1.1a"><mo id="A2.T1.21.19.19.5.m1.1.1" xref="A2.T1.21.19.19.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.21.19.19.5.m1.1b"><csymbol cd="latexml" id="A2.T1.21.19.19.5.m1.1.1.cmml" xref="A2.T1.21.19.19.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.21.19.19.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.21.19.19.5.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center" id="A2.T1.22.20.20.6">0.62 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.22.20.20.6.m1.1"><semantics id="A2.T1.22.20.20.6.m1.1a"><mo id="A2.T1.22.20.20.6.m1.1.1" xref="A2.T1.22.20.20.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.22.20.20.6.m1.1b"><csymbol cd="latexml" id="A2.T1.22.20.20.6.m1.1.1.cmml" xref="A2.T1.22.20.20.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.22.20.20.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.22.20.20.6.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T1.23.21.21.7">0.60 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.23.21.21.7.m1.1"><semantics id="A2.T1.23.21.21.7.m1.1a"><mo id="A2.T1.23.21.21.7.m1.1.1" xref="A2.T1.23.21.21.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.23.21.21.7.m1.1b"><csymbol cd="latexml" id="A2.T1.23.21.21.7.m1.1.1.cmml" xref="A2.T1.23.21.21.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.23.21.21.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.23.21.21.7.m1.1d">±</annotation></semantics></math> 0.11</td>
</tr>
<tr class="ltx_tr" id="A2.T1.30.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T1.30.28.28.8">23</th>
<td class="ltx_td ltx_align_center" id="A2.T1.24.22.22.1">0.4814 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.24.22.22.1.m1.1"><semantics id="A2.T1.24.22.22.1.m1.1a"><mo id="A2.T1.24.22.22.1.m1.1.1" xref="A2.T1.24.22.22.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.24.22.22.1.m1.1b"><csymbol cd="latexml" id="A2.T1.24.22.22.1.m1.1.1.cmml" xref="A2.T1.24.22.22.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.24.22.22.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.24.22.22.1.m1.1d">±</annotation></semantics></math> 0.0045</td>
<td class="ltx_td ltx_align_center" id="A2.T1.25.23.23.2">0.60 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.25.23.23.2.m1.1"><semantics id="A2.T1.25.23.23.2.m1.1a"><mo id="A2.T1.25.23.23.2.m1.1.1" xref="A2.T1.25.23.23.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.25.23.23.2.m1.1b"><csymbol cd="latexml" id="A2.T1.25.23.23.2.m1.1.1.cmml" xref="A2.T1.25.23.23.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.25.23.23.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.25.23.23.2.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center" id="A2.T1.26.24.24.3">0.61 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.26.24.24.3.m1.1"><semantics id="A2.T1.26.24.24.3.m1.1a"><mo id="A2.T1.26.24.24.3.m1.1.1" xref="A2.T1.26.24.24.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.26.24.24.3.m1.1b"><csymbol cd="latexml" id="A2.T1.26.24.24.3.m1.1.1.cmml" xref="A2.T1.26.24.24.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.26.24.24.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.26.24.24.3.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center" id="A2.T1.27.25.25.4">0.62 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.27.25.25.4.m1.1"><semantics id="A2.T1.27.25.25.4.m1.1a"><mo id="A2.T1.27.25.25.4.m1.1.1" xref="A2.T1.27.25.25.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.27.25.25.4.m1.1b"><csymbol cd="latexml" id="A2.T1.27.25.25.4.m1.1.1.cmml" xref="A2.T1.27.25.25.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.27.25.25.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.27.25.25.4.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center" id="A2.T1.28.26.26.5">0.62 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.28.26.26.5.m1.1"><semantics id="A2.T1.28.26.26.5.m1.1a"><mo id="A2.T1.28.26.26.5.m1.1.1" xref="A2.T1.28.26.26.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.28.26.26.5.m1.1b"><csymbol cd="latexml" id="A2.T1.28.26.26.5.m1.1.1.cmml" xref="A2.T1.28.26.26.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.28.26.26.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.28.26.26.5.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center" id="A2.T1.29.27.27.6">0.61 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.29.27.27.6.m1.1"><semantics id="A2.T1.29.27.27.6.m1.1a"><mo id="A2.T1.29.27.27.6.m1.1.1" xref="A2.T1.29.27.27.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.29.27.27.6.m1.1b"><csymbol cd="latexml" id="A2.T1.29.27.27.6.m1.1.1.cmml" xref="A2.T1.29.27.27.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.29.27.27.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.29.27.27.6.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T1.30.28.28.7">0.59 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.30.28.28.7.m1.1"><semantics id="A2.T1.30.28.28.7.m1.1a"><mo id="A2.T1.30.28.28.7.m1.1.1" xref="A2.T1.30.28.28.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.30.28.28.7.m1.1b"><csymbol cd="latexml" id="A2.T1.30.28.28.7.m1.1.1.cmml" xref="A2.T1.30.28.28.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.30.28.28.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.30.28.28.7.m1.1d">±</annotation></semantics></math> 0.12</td>
</tr>
<tr class="ltx_tr" id="A2.T1.37.35.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T1.37.35.35.8">last</th>
<td class="ltx_td ltx_align_center" id="A2.T1.31.29.29.1">0.4812 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.31.29.29.1.m1.1"><semantics id="A2.T1.31.29.29.1.m1.1a"><mo id="A2.T1.31.29.29.1.m1.1.1" xref="A2.T1.31.29.29.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.31.29.29.1.m1.1b"><csymbol cd="latexml" id="A2.T1.31.29.29.1.m1.1.1.cmml" xref="A2.T1.31.29.29.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.31.29.29.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.31.29.29.1.m1.1d">±</annotation></semantics></math> 0.0042</td>
<td class="ltx_td ltx_align_center" id="A2.T1.32.30.30.2">0.59 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.32.30.30.2.m1.1"><semantics id="A2.T1.32.30.30.2.m1.1a"><mo id="A2.T1.32.30.30.2.m1.1.1" xref="A2.T1.32.30.30.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.32.30.30.2.m1.1b"><csymbol cd="latexml" id="A2.T1.32.30.30.2.m1.1.1.cmml" xref="A2.T1.32.30.30.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.32.30.30.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.32.30.30.2.m1.1d">±</annotation></semantics></math> 0.08</td>
<td class="ltx_td ltx_align_center" id="A2.T1.33.31.31.3">0.60 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.33.31.31.3.m1.1"><semantics id="A2.T1.33.31.31.3.m1.1a"><mo id="A2.T1.33.31.31.3.m1.1.1" xref="A2.T1.33.31.31.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.33.31.31.3.m1.1b"><csymbol cd="latexml" id="A2.T1.33.31.31.3.m1.1.1.cmml" xref="A2.T1.33.31.31.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.33.31.31.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.33.31.31.3.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center" id="A2.T1.34.32.32.4">0.61 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.34.32.32.4.m1.1"><semantics id="A2.T1.34.32.32.4.m1.1a"><mo id="A2.T1.34.32.32.4.m1.1.1" xref="A2.T1.34.32.32.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.34.32.32.4.m1.1b"><csymbol cd="latexml" id="A2.T1.34.32.32.4.m1.1.1.cmml" xref="A2.T1.34.32.32.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.34.32.32.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.34.32.32.4.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center" id="A2.T1.35.33.33.5">0.61 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.35.33.33.5.m1.1"><semantics id="A2.T1.35.33.33.5.m1.1a"><mo id="A2.T1.35.33.33.5.m1.1.1" xref="A2.T1.35.33.33.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.35.33.33.5.m1.1b"><csymbol cd="latexml" id="A2.T1.35.33.33.5.m1.1.1.cmml" xref="A2.T1.35.33.33.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.35.33.33.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.35.33.33.5.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center" id="A2.T1.36.34.34.6">0.59 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.36.34.34.6.m1.1"><semantics id="A2.T1.36.34.34.6.m1.1a"><mo id="A2.T1.36.34.34.6.m1.1.1" xref="A2.T1.36.34.34.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.36.34.34.6.m1.1b"><csymbol cd="latexml" id="A2.T1.36.34.34.6.m1.1.1.cmml" xref="A2.T1.36.34.34.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.36.34.34.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.36.34.34.6.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T1.37.35.35.7">0.56 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.37.35.35.7.m1.1"><semantics id="A2.T1.37.35.35.7.m1.1a"><mo id="A2.T1.37.35.35.7.m1.1.1" xref="A2.T1.37.35.35.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.37.35.35.7.m1.1b"><csymbol cd="latexml" id="A2.T1.37.35.35.7.m1.1.1.cmml" xref="A2.T1.37.35.35.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.37.35.35.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.37.35.35.7.m1.1d">±</annotation></semantics></math> 0.10</td>
</tr>
<tr class="ltx_tr" id="A2.T1.44.42.42">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A2.T1.44.42.42.8" rowspan="5"><span class="ltx_text" id="A2.T1.44.42.42.8.1">Matryoshka</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T1.44.42.42.9">11</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.38.36.36.1">0.4837 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.38.36.36.1.m1.1"><semantics id="A2.T1.38.36.36.1.m1.1a"><mo id="A2.T1.38.36.36.1.m1.1.1" xref="A2.T1.38.36.36.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.38.36.36.1.m1.1b"><csymbol cd="latexml" id="A2.T1.38.36.36.1.m1.1.1.cmml" xref="A2.T1.38.36.36.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.38.36.36.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.38.36.36.1.m1.1d">±</annotation></semantics></math> 0.0067</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.39.37.37.2">0.54 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.39.37.37.2.m1.1"><semantics id="A2.T1.39.37.37.2.m1.1a"><mo id="A2.T1.39.37.37.2.m1.1.1" xref="A2.T1.39.37.37.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.39.37.37.2.m1.1b"><csymbol cd="latexml" id="A2.T1.39.37.37.2.m1.1.1.cmml" xref="A2.T1.39.37.37.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.39.37.37.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.39.37.37.2.m1.1d">±</annotation></semantics></math> 0.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.40.38.38.3">0.55 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.40.38.38.3.m1.1"><semantics id="A2.T1.40.38.38.3.m1.1a"><mo id="A2.T1.40.38.38.3.m1.1.1" xref="A2.T1.40.38.38.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.40.38.38.3.m1.1b"><csymbol cd="latexml" id="A2.T1.40.38.38.3.m1.1.1.cmml" xref="A2.T1.40.38.38.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.40.38.38.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.40.38.38.3.m1.1d">±</annotation></semantics></math> 0.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.41.39.39.4">0.55 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.41.39.39.4.m1.1"><semantics id="A2.T1.41.39.39.4.m1.1a"><mo id="A2.T1.41.39.39.4.m1.1.1" xref="A2.T1.41.39.39.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.41.39.39.4.m1.1b"><csymbol cd="latexml" id="A2.T1.41.39.39.4.m1.1.1.cmml" xref="A2.T1.41.39.39.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.41.39.39.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.41.39.39.4.m1.1d">±</annotation></semantics></math> 0.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.42.40.40.5">0.54 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.42.40.40.5.m1.1"><semantics id="A2.T1.42.40.40.5.m1.1a"><mo id="A2.T1.42.40.40.5.m1.1.1" xref="A2.T1.42.40.40.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.42.40.40.5.m1.1b"><csymbol cd="latexml" id="A2.T1.42.40.40.5.m1.1.1.cmml" xref="A2.T1.42.40.40.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.42.40.40.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.42.40.40.5.m1.1d">±</annotation></semantics></math> 0.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.43.41.41.6">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.43.41.41.6.m1.1"><semantics id="A2.T1.43.41.41.6.m1.1a"><mo id="A2.T1.43.41.41.6.m1.1.1" xref="A2.T1.43.41.41.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.43.41.41.6.m1.1b"><csymbol cd="latexml" id="A2.T1.43.41.41.6.m1.1.1.cmml" xref="A2.T1.43.41.41.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.43.41.41.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.43.41.41.6.m1.1d">±</annotation></semantics></math> 0.07</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T1.44.42.42.7">0.52 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.44.42.42.7.m1.1"><semantics id="A2.T1.44.42.42.7.m1.1a"><mo id="A2.T1.44.42.42.7.m1.1.1" xref="A2.T1.44.42.42.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.44.42.42.7.m1.1b"><csymbol cd="latexml" id="A2.T1.44.42.42.7.m1.1.1.cmml" xref="A2.T1.44.42.42.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.44.42.42.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.44.42.42.7.m1.1d">±</annotation></semantics></math> 0.06</td>
</tr>
<tr class="ltx_tr" id="A2.T1.51.49.49">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T1.51.49.49.8">17</th>
<td class="ltx_td ltx_align_center" id="A2.T1.45.43.43.1">0.4840 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.45.43.43.1.m1.1"><semantics id="A2.T1.45.43.43.1.m1.1a"><mo id="A2.T1.45.43.43.1.m1.1.1" xref="A2.T1.45.43.43.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.45.43.43.1.m1.1b"><csymbol cd="latexml" id="A2.T1.45.43.43.1.m1.1.1.cmml" xref="A2.T1.45.43.43.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.45.43.43.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.45.43.43.1.m1.1d">±</annotation></semantics></math> 0.0079</td>
<td class="ltx_td ltx_align_center" id="A2.T1.46.44.44.2">0.57 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.46.44.44.2.m1.1"><semantics id="A2.T1.46.44.44.2.m1.1a"><mo id="A2.T1.46.44.44.2.m1.1.1" xref="A2.T1.46.44.44.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.46.44.44.2.m1.1b"><csymbol cd="latexml" id="A2.T1.46.44.44.2.m1.1.1.cmml" xref="A2.T1.46.44.44.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.46.44.44.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.46.44.44.2.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center" id="A2.T1.47.45.45.3">0.58 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.47.45.45.3.m1.1"><semantics id="A2.T1.47.45.45.3.m1.1a"><mo id="A2.T1.47.45.45.3.m1.1.1" xref="A2.T1.47.45.45.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.47.45.45.3.m1.1b"><csymbol cd="latexml" id="A2.T1.47.45.45.3.m1.1.1.cmml" xref="A2.T1.47.45.45.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.47.45.45.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.47.45.45.3.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center" id="A2.T1.48.46.46.4">0.58 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.48.46.46.4.m1.1"><semantics id="A2.T1.48.46.46.4.m1.1a"><mo id="A2.T1.48.46.46.4.m1.1.1" xref="A2.T1.48.46.46.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.48.46.46.4.m1.1b"><csymbol cd="latexml" id="A2.T1.48.46.46.4.m1.1.1.cmml" xref="A2.T1.48.46.46.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.48.46.46.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.48.46.46.4.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center" id="A2.T1.49.47.47.5">0.58 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.49.47.47.5.m1.1"><semantics id="A2.T1.49.47.47.5.m1.1a"><mo id="A2.T1.49.47.47.5.m1.1.1" xref="A2.T1.49.47.47.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.49.47.47.5.m1.1b"><csymbol cd="latexml" id="A2.T1.49.47.47.5.m1.1.1.cmml" xref="A2.T1.49.47.47.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.49.47.47.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.49.47.47.5.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center" id="A2.T1.50.48.48.6">0.57 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.50.48.48.6.m1.1"><semantics id="A2.T1.50.48.48.6.m1.1a"><mo id="A2.T1.50.48.48.6.m1.1.1" xref="A2.T1.50.48.48.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.50.48.48.6.m1.1b"><csymbol cd="latexml" id="A2.T1.50.48.48.6.m1.1.1.cmml" xref="A2.T1.50.48.48.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.50.48.48.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.50.48.48.6.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T1.51.49.49.7">0.54 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.51.49.49.7.m1.1"><semantics id="A2.T1.51.49.49.7.m1.1a"><mo id="A2.T1.51.49.49.7.m1.1.1" xref="A2.T1.51.49.49.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.51.49.49.7.m1.1b"><csymbol cd="latexml" id="A2.T1.51.49.49.7.m1.1.1.cmml" xref="A2.T1.51.49.49.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.51.49.49.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.51.49.49.7.m1.1d">±</annotation></semantics></math> 0.09</td>
</tr>
<tr class="ltx_tr" id="A2.T1.58.56.56">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T1.58.56.56.8">22</th>
<td class="ltx_td ltx_align_center" id="A2.T1.52.50.50.1">0.4816 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.52.50.50.1.m1.1"><semantics id="A2.T1.52.50.50.1.m1.1a"><mo id="A2.T1.52.50.50.1.m1.1.1" xref="A2.T1.52.50.50.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.52.50.50.1.m1.1b"><csymbol cd="latexml" id="A2.T1.52.50.50.1.m1.1.1.cmml" xref="A2.T1.52.50.50.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.52.50.50.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.52.50.50.1.m1.1d">±</annotation></semantics></math> 0.0053</td>
<td class="ltx_td ltx_align_center" id="A2.T1.53.51.51.2">0.61 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.53.51.51.2.m1.1"><semantics id="A2.T1.53.51.51.2.m1.1a"><mo id="A2.T1.53.51.51.2.m1.1.1" xref="A2.T1.53.51.51.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.53.51.51.2.m1.1b"><csymbol cd="latexml" id="A2.T1.53.51.51.2.m1.1.1.cmml" xref="A2.T1.53.51.51.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.53.51.51.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.53.51.51.2.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center" id="A2.T1.54.52.52.3">0.62 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.54.52.52.3.m1.1"><semantics id="A2.T1.54.52.52.3.m1.1a"><mo id="A2.T1.54.52.52.3.m1.1.1" xref="A2.T1.54.52.52.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.54.52.52.3.m1.1b"><csymbol cd="latexml" id="A2.T1.54.52.52.3.m1.1.1.cmml" xref="A2.T1.54.52.52.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.54.52.52.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.54.52.52.3.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center" id="A2.T1.55.53.53.4">0.63 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.55.53.53.4.m1.1"><semantics id="A2.T1.55.53.53.4.m1.1a"><mo id="A2.T1.55.53.53.4.m1.1.1" xref="A2.T1.55.53.53.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.55.53.53.4.m1.1b"><csymbol cd="latexml" id="A2.T1.55.53.53.4.m1.1.1.cmml" xref="A2.T1.55.53.53.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.55.53.53.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.55.53.53.4.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center" id="A2.T1.56.54.54.5">0.62 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.56.54.54.5.m1.1"><semantics id="A2.T1.56.54.54.5.m1.1a"><mo id="A2.T1.56.54.54.5.m1.1.1" xref="A2.T1.56.54.54.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.56.54.54.5.m1.1b"><csymbol cd="latexml" id="A2.T1.56.54.54.5.m1.1.1.cmml" xref="A2.T1.56.54.54.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.56.54.54.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.56.54.54.5.m1.1d">±</annotation></semantics></math> 0.11</td>
<td class="ltx_td ltx_align_center" id="A2.T1.57.55.55.6">0.62 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.57.55.55.6.m1.1"><semantics id="A2.T1.57.55.55.6.m1.1a"><mo id="A2.T1.57.55.55.6.m1.1.1" xref="A2.T1.57.55.55.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.57.55.55.6.m1.1b"><csymbol cd="latexml" id="A2.T1.57.55.55.6.m1.1.1.cmml" xref="A2.T1.57.55.55.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.57.55.55.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.57.55.55.6.m1.1d">±</annotation></semantics></math> 0.11</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T1.58.56.56.7">0.59 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.58.56.56.7.m1.1"><semantics id="A2.T1.58.56.56.7.m1.1a"><mo id="A2.T1.58.56.56.7.m1.1.1" xref="A2.T1.58.56.56.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.58.56.56.7.m1.1b"><csymbol cd="latexml" id="A2.T1.58.56.56.7.m1.1.1.cmml" xref="A2.T1.58.56.56.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.58.56.56.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.58.56.56.7.m1.1d">±</annotation></semantics></math> 0.12</td>
</tr>
<tr class="ltx_tr" id="A2.T1.65.63.63">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T1.65.63.63.8">23</th>
<td class="ltx_td ltx_align_center" id="A2.T1.59.57.57.1">0.4814 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.59.57.57.1.m1.1"><semantics id="A2.T1.59.57.57.1.m1.1a"><mo id="A2.T1.59.57.57.1.m1.1.1" xref="A2.T1.59.57.57.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.59.57.57.1.m1.1b"><csymbol cd="latexml" id="A2.T1.59.57.57.1.m1.1.1.cmml" xref="A2.T1.59.57.57.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.59.57.57.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.59.57.57.1.m1.1d">±</annotation></semantics></math> 0.0045</td>
<td class="ltx_td ltx_align_center" id="A2.T1.60.58.58.2">0.60 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.60.58.58.2.m1.1"><semantics id="A2.T1.60.58.58.2.m1.1a"><mo id="A2.T1.60.58.58.2.m1.1.1" xref="A2.T1.60.58.58.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.60.58.58.2.m1.1b"><csymbol cd="latexml" id="A2.T1.60.58.58.2.m1.1.1.cmml" xref="A2.T1.60.58.58.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.60.58.58.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.60.58.58.2.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center" id="A2.T1.61.59.59.3">0.62 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.61.59.59.3.m1.1"><semantics id="A2.T1.61.59.59.3.m1.1a"><mo id="A2.T1.61.59.59.3.m1.1.1" xref="A2.T1.61.59.59.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.61.59.59.3.m1.1b"><csymbol cd="latexml" id="A2.T1.61.59.59.3.m1.1.1.cmml" xref="A2.T1.61.59.59.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.61.59.59.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.61.59.59.3.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center" id="A2.T1.62.60.60.4">0.62 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.62.60.60.4.m1.1"><semantics id="A2.T1.62.60.60.4.m1.1a"><mo id="A2.T1.62.60.60.4.m1.1.1" xref="A2.T1.62.60.60.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.62.60.60.4.m1.1b"><csymbol cd="latexml" id="A2.T1.62.60.60.4.m1.1.1.cmml" xref="A2.T1.62.60.60.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.62.60.60.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.62.60.60.4.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center" id="A2.T1.63.61.61.5">0.61 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.63.61.61.5.m1.1"><semantics id="A2.T1.63.61.61.5.m1.1a"><mo id="A2.T1.63.61.61.5.m1.1.1" xref="A2.T1.63.61.61.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.63.61.61.5.m1.1b"><csymbol cd="latexml" id="A2.T1.63.61.61.5.m1.1.1.cmml" xref="A2.T1.63.61.61.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.63.61.61.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.63.61.61.5.m1.1d">±</annotation></semantics></math> 0.11</td>
<td class="ltx_td ltx_align_center" id="A2.T1.64.62.62.6">0.60 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.64.62.62.6.m1.1"><semantics id="A2.T1.64.62.62.6.m1.1a"><mo id="A2.T1.64.62.62.6.m1.1.1" xref="A2.T1.64.62.62.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.64.62.62.6.m1.1b"><csymbol cd="latexml" id="A2.T1.64.62.62.6.m1.1.1.cmml" xref="A2.T1.64.62.62.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.64.62.62.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.64.62.62.6.m1.1d">±</annotation></semantics></math> 0.11</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T1.65.63.63.7">0.54 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.65.63.63.7.m1.1"><semantics id="A2.T1.65.63.63.7.m1.1a"><mo id="A2.T1.65.63.63.7.m1.1.1" xref="A2.T1.65.63.63.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.65.63.63.7.m1.1b"><csymbol cd="latexml" id="A2.T1.65.63.63.7.m1.1.1.cmml" xref="A2.T1.65.63.63.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.65.63.63.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.65.63.63.7.m1.1d">±</annotation></semantics></math> 0.11</td>
</tr>
<tr class="ltx_tr" id="A2.T1.72.70.70">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T1.72.70.70.8">last</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T1.66.64.64.1">0.4812 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.66.64.64.1.m1.1"><semantics id="A2.T1.66.64.64.1.m1.1a"><mo id="A2.T1.66.64.64.1.m1.1.1" xref="A2.T1.66.64.64.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.66.64.64.1.m1.1b"><csymbol cd="latexml" id="A2.T1.66.64.64.1.m1.1.1.cmml" xref="A2.T1.66.64.64.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.66.64.64.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.66.64.64.1.m1.1d">±</annotation></semantics></math> 0.0042</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T1.67.65.65.2">0.59 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.67.65.65.2.m1.1"><semantics id="A2.T1.67.65.65.2.m1.1a"><mo id="A2.T1.67.65.65.2.m1.1.1" xref="A2.T1.67.65.65.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.67.65.65.2.m1.1b"><csymbol cd="latexml" id="A2.T1.67.65.65.2.m1.1.1.cmml" xref="A2.T1.67.65.65.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.67.65.65.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.67.65.65.2.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T1.68.66.66.3">0.61 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.68.66.66.3.m1.1"><semantics id="A2.T1.68.66.66.3.m1.1a"><mo id="A2.T1.68.66.66.3.m1.1.1" xref="A2.T1.68.66.66.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.68.66.66.3.m1.1b"><csymbol cd="latexml" id="A2.T1.68.66.66.3.m1.1.1.cmml" xref="A2.T1.68.66.66.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.68.66.66.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.68.66.66.3.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T1.69.67.67.4">0.62 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.69.67.67.4.m1.1"><semantics id="A2.T1.69.67.67.4.m1.1a"><mo id="A2.T1.69.67.67.4.m1.1.1" xref="A2.T1.69.67.67.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.69.67.67.4.m1.1b"><csymbol cd="latexml" id="A2.T1.69.67.67.4.m1.1.1.cmml" xref="A2.T1.69.67.67.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.69.67.67.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.69.67.67.4.m1.1d">±</annotation></semantics></math> 0.11</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T1.70.68.68.5">0.61 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.70.68.68.5.m1.1"><semantics id="A2.T1.70.68.68.5.m1.1a"><mo id="A2.T1.70.68.68.5.m1.1.1" xref="A2.T1.70.68.68.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.70.68.68.5.m1.1b"><csymbol cd="latexml" id="A2.T1.70.68.68.5.m1.1.1.cmml" xref="A2.T1.70.68.68.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.70.68.68.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.70.68.68.5.m1.1d">±</annotation></semantics></math> 0.11</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T1.71.69.69.6">0.59 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.71.69.69.6.m1.1"><semantics id="A2.T1.71.69.69.6.m1.1a"><mo id="A2.T1.71.69.69.6.m1.1.1" xref="A2.T1.71.69.69.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.71.69.69.6.m1.1b"><csymbol cd="latexml" id="A2.T1.71.69.69.6.m1.1.1.cmml" xref="A2.T1.71.69.69.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.71.69.69.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.71.69.69.6.m1.1d">±</annotation></semantics></math> 0.12</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T1.72.70.70.7">0.54 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T1.72.70.70.7.m1.1"><semantics id="A2.T1.72.70.70.7.m1.1a"><mo id="A2.T1.72.70.70.7.m1.1.1" xref="A2.T1.72.70.70.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T1.72.70.70.7.m1.1b"><csymbol cd="latexml" id="A2.T1.72.70.70.7.m1.1.1.cmml" xref="A2.T1.72.70.70.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.72.70.70.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T1.72.70.70.7.m1.1d">±</annotation></semantics></math> 0.12</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average monosemanticity scores (MS) for neurons in a CLIP ViT-L model.  The MS is calculated separately for neurons without Sparse Autoencoders (SAEs; 'No SAE') and for neurons within SAEs of varying expansion factors (1x, 2x, 4x, 8x, 16x, and 64x).  It shows the average MS and its standard deviation for each condition. Two SAE types (BatchTopK and Matryoshka) are evaluated across different layers (11, 17, 22, 23, and last) of the CLIP ViT-L model.  CLIP ViT-B acted as the image encoder for MS calculation. The table quantifies the impact of using SAEs and different expansion factors on the monosemanticity of neurons within a vision-language model.
> <details>
> <summary>read the caption</summary>
> Table A1:  The average MS of neurons in a CLIP ViT-L model. CLIP ViT-B is used as the image encoder E𝐸Eitalic_E.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T2.72.70">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T2.72.70.71.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T2.72.70.71.1.1" rowspan="2"><span class="ltx_text" id="A2.T2.72.70.71.1.1.1">SAE type</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T2.72.70.71.1.2" rowspan="2"><span class="ltx_text" id="A2.T2.72.70.71.1.2.1">Layer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T2.72.70.71.1.3" rowspan="2"><span class="ltx_text" id="A2.T2.72.70.71.1.3.1">No SAE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="A2.T2.72.70.71.1.4">Expansion factor</th>
</tr>
<tr class="ltx_tr" id="A2.T2.72.70.72.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T2.72.70.72.2.1">x1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T2.72.70.72.2.2">x2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T2.72.70.72.2.3">x4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T2.72.70.72.2.4">x8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T2.72.70.72.2.5">x16</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T2.72.70.72.2.6">x64</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T2.9.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T2.9.7.7.8" rowspan="5"><span class="ltx_text" id="A2.T2.9.7.7.8.1">BatchTopK</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T2.9.7.7.9">11</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.3.1.1.1">0.0135 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.3.1.1.1.m1.1"><semantics id="A2.T2.3.1.1.1.m1.1a"><mo id="A2.T2.3.1.1.1.m1.1.1" xref="A2.T2.3.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.3.1.1.1.m1.1b"><csymbol cd="latexml" id="A2.T2.3.1.1.1.m1.1.1.cmml" xref="A2.T2.3.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.3.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.3.1.1.1.m1.1d">±</annotation></semantics></math> 0.0003</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.4.2.2.2">0.03 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.4.2.2.2.m1.1"><semantics id="A2.T2.4.2.2.2.m1.1a"><mo id="A2.T2.4.2.2.2.m1.1.1" xref="A2.T2.4.2.2.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.4.2.2.2.m1.1b"><csymbol cd="latexml" id="A2.T2.4.2.2.2.m1.1.1.cmml" xref="A2.T2.4.2.2.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.4.2.2.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.4.2.2.2.m1.1d">±</annotation></semantics></math> 0.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.5.3.3.3">0.04 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.5.3.3.3.m1.1"><semantics id="A2.T2.5.3.3.3.m1.1a"><mo id="A2.T2.5.3.3.3.m1.1.1" xref="A2.T2.5.3.3.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.5.3.3.3.m1.1b"><csymbol cd="latexml" id="A2.T2.5.3.3.3.m1.1.1.cmml" xref="A2.T2.5.3.3.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.5.3.3.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.5.3.3.3.m1.1d">±</annotation></semantics></math> 0.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.6.4.4.4">0.04 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.6.4.4.4.m1.1"><semantics id="A2.T2.6.4.4.4.m1.1a"><mo id="A2.T2.6.4.4.4.m1.1.1" xref="A2.T2.6.4.4.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.6.4.4.4.m1.1b"><csymbol cd="latexml" id="A2.T2.6.4.4.4.m1.1.1.cmml" xref="A2.T2.6.4.4.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.6.4.4.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.6.4.4.4.m1.1d">±</annotation></semantics></math> 0.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.7.5.5.5">0.03 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.7.5.5.5.m1.1"><semantics id="A2.T2.7.5.5.5.m1.1a"><mo id="A2.T2.7.5.5.5.m1.1.1" xref="A2.T2.7.5.5.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.7.5.5.5.m1.1b"><csymbol cd="latexml" id="A2.T2.7.5.5.5.m1.1.1.cmml" xref="A2.T2.7.5.5.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.7.5.5.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.7.5.5.5.m1.1d">±</annotation></semantics></math> 0.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.8.6.6.6">0.03 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.8.6.6.6.m1.1"><semantics id="A2.T2.8.6.6.6.m1.1a"><mo id="A2.T2.8.6.6.6.m1.1.1" xref="A2.T2.8.6.6.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.8.6.6.6.m1.1b"><csymbol cd="latexml" id="A2.T2.8.6.6.6.m1.1.1.cmml" xref="A2.T2.8.6.6.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.8.6.6.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.8.6.6.6.m1.1d">±</annotation></semantics></math> 0.05</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T2.9.7.7.7">0.03 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.9.7.7.7.m1.1"><semantics id="A2.T2.9.7.7.7.m1.1a"><mo id="A2.T2.9.7.7.7.m1.1.1" xref="A2.T2.9.7.7.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.9.7.7.7.m1.1b"><csymbol cd="latexml" id="A2.T2.9.7.7.7.m1.1.1.cmml" xref="A2.T2.9.7.7.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.9.7.7.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.9.7.7.7.m1.1d">±</annotation></semantics></math> 0.05</td>
</tr>
<tr class="ltx_tr" id="A2.T2.16.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T2.16.14.14.8">17</th>
<td class="ltx_td ltx_align_center" id="A2.T2.10.8.8.1">0.0135 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.10.8.8.1.m1.1"><semantics id="A2.T2.10.8.8.1.m1.1a"><mo id="A2.T2.10.8.8.1.m1.1.1" xref="A2.T2.10.8.8.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.10.8.8.1.m1.1b"><csymbol cd="latexml" id="A2.T2.10.8.8.1.m1.1.1.cmml" xref="A2.T2.10.8.8.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.10.8.8.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.10.8.8.1.m1.1d">±</annotation></semantics></math> 0.0004</td>
<td class="ltx_td ltx_align_center" id="A2.T2.11.9.9.2">0.05 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.11.9.9.2.m1.1"><semantics id="A2.T2.11.9.9.2.m1.1a"><mo id="A2.T2.11.9.9.2.m1.1.1" xref="A2.T2.11.9.9.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.11.9.9.2.m1.1b"><csymbol cd="latexml" id="A2.T2.11.9.9.2.m1.1.1.cmml" xref="A2.T2.11.9.9.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.11.9.9.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.11.9.9.2.m1.1d">±</annotation></semantics></math> 0.07</td>
<td class="ltx_td ltx_align_center" id="A2.T2.12.10.10.3">0.07 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.12.10.10.3.m1.1"><semantics id="A2.T2.12.10.10.3.m1.1a"><mo id="A2.T2.12.10.10.3.m1.1.1" xref="A2.T2.12.10.10.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.12.10.10.3.m1.1b"><csymbol cd="latexml" id="A2.T2.12.10.10.3.m1.1.1.cmml" xref="A2.T2.12.10.10.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.12.10.10.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.12.10.10.3.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center" id="A2.T2.13.11.11.4">0.08 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.13.11.11.4.m1.1"><semantics id="A2.T2.13.11.11.4.m1.1a"><mo id="A2.T2.13.11.11.4.m1.1.1" xref="A2.T2.13.11.11.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.13.11.11.4.m1.1b"><csymbol cd="latexml" id="A2.T2.13.11.11.4.m1.1.1.cmml" xref="A2.T2.13.11.11.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.13.11.11.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.13.11.11.4.m1.1d">±</annotation></semantics></math> 0.11</td>
<td class="ltx_td ltx_align_center" id="A2.T2.14.12.12.5">0.07 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.14.12.12.5.m1.1"><semantics id="A2.T2.14.12.12.5.m1.1a"><mo id="A2.T2.14.12.12.5.m1.1.1" xref="A2.T2.14.12.12.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.14.12.12.5.m1.1b"><csymbol cd="latexml" id="A2.T2.14.12.12.5.m1.1.1.cmml" xref="A2.T2.14.12.12.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.14.12.12.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.14.12.12.5.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center" id="A2.T2.15.13.13.6">0.07 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.15.13.13.6.m1.1"><semantics id="A2.T2.15.13.13.6.m1.1a"><mo id="A2.T2.15.13.13.6.m1.1.1" xref="A2.T2.15.13.13.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.15.13.13.6.m1.1b"><csymbol cd="latexml" id="A2.T2.15.13.13.6.m1.1.1.cmml" xref="A2.T2.15.13.13.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.15.13.13.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.15.13.13.6.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T2.16.14.14.7">0.06 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.16.14.14.7.m1.1"><semantics id="A2.T2.16.14.14.7.m1.1a"><mo id="A2.T2.16.14.14.7.m1.1.1" xref="A2.T2.16.14.14.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.16.14.14.7.m1.1b"><csymbol cd="latexml" id="A2.T2.16.14.14.7.m1.1.1.cmml" xref="A2.T2.16.14.14.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.16.14.14.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.16.14.14.7.m1.1d">±</annotation></semantics></math> 0.10</td>
</tr>
<tr class="ltx_tr" id="A2.T2.23.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T2.23.21.21.8">22</th>
<td class="ltx_td ltx_align_center" id="A2.T2.17.15.15.1">0.0135 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.17.15.15.1.m1.1"><semantics id="A2.T2.17.15.15.1.m1.1a"><mo id="A2.T2.17.15.15.1.m1.1.1" xref="A2.T2.17.15.15.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.17.15.15.1.m1.1b"><csymbol cd="latexml" id="A2.T2.17.15.15.1.m1.1.1.cmml" xref="A2.T2.17.15.15.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.17.15.15.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.17.15.15.1.m1.1d">±</annotation></semantics></math> 0.0003</td>
<td class="ltx_td ltx_align_center" id="A2.T2.18.16.16.2">0.14 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.18.16.16.2.m1.1"><semantics id="A2.T2.18.16.16.2.m1.1a"><mo id="A2.T2.18.16.16.2.m1.1.1" xref="A2.T2.18.16.16.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.18.16.16.2.m1.1b"><csymbol cd="latexml" id="A2.T2.18.16.16.2.m1.1.1.cmml" xref="A2.T2.18.16.16.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.18.16.16.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.18.16.16.2.m1.1d">±</annotation></semantics></math> 0.12</td>
<td class="ltx_td ltx_align_center" id="A2.T2.19.17.17.3">0.18 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.19.17.17.3.m1.1"><semantics id="A2.T2.19.17.17.3.m1.1a"><mo id="A2.T2.19.17.17.3.m1.1.1" xref="A2.T2.19.17.17.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.19.17.17.3.m1.1b"><csymbol cd="latexml" id="A2.T2.19.17.17.3.m1.1.1.cmml" xref="A2.T2.19.17.17.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.19.17.17.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.19.17.17.3.m1.1d">±</annotation></semantics></math> 0.15</td>
<td class="ltx_td ltx_align_center" id="A2.T2.20.18.18.4">0.20 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.20.18.18.4.m1.1"><semantics id="A2.T2.20.18.18.4.m1.1a"><mo id="A2.T2.20.18.18.4.m1.1.1" xref="A2.T2.20.18.18.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.20.18.18.4.m1.1b"><csymbol cd="latexml" id="A2.T2.20.18.18.4.m1.1.1.cmml" xref="A2.T2.20.18.18.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.20.18.18.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.20.18.18.4.m1.1d">±</annotation></semantics></math> 0.17</td>
<td class="ltx_td ltx_align_center" id="A2.T2.21.19.19.5">0.21 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.21.19.19.5.m1.1"><semantics id="A2.T2.21.19.19.5.m1.1a"><mo id="A2.T2.21.19.19.5.m1.1.1" xref="A2.T2.21.19.19.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.21.19.19.5.m1.1b"><csymbol cd="latexml" id="A2.T2.21.19.19.5.m1.1.1.cmml" xref="A2.T2.21.19.19.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.21.19.19.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.21.19.19.5.m1.1d">±</annotation></semantics></math> 0.17</td>
<td class="ltx_td ltx_align_center" id="A2.T2.22.20.20.6">0.21 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.22.20.20.6.m1.1"><semantics id="A2.T2.22.20.20.6.m1.1a"><mo id="A2.T2.22.20.20.6.m1.1.1" xref="A2.T2.22.20.20.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.22.20.20.6.m1.1b"><csymbol cd="latexml" id="A2.T2.22.20.20.6.m1.1.1.cmml" xref="A2.T2.22.20.20.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.22.20.20.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.22.20.20.6.m1.1d">±</annotation></semantics></math> 0.18</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T2.23.21.21.7">0.17 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.23.21.21.7.m1.1"><semantics id="A2.T2.23.21.21.7.m1.1a"><mo id="A2.T2.23.21.21.7.m1.1.1" xref="A2.T2.23.21.21.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.23.21.21.7.m1.1b"><csymbol cd="latexml" id="A2.T2.23.21.21.7.m1.1.1.cmml" xref="A2.T2.23.21.21.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.23.21.21.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.23.21.21.7.m1.1d">±</annotation></semantics></math> 0.18</td>
</tr>
<tr class="ltx_tr" id="A2.T2.30.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T2.30.28.28.8">23</th>
<td class="ltx_td ltx_align_center" id="A2.T2.24.22.22.1">0.0135 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.24.22.22.1.m1.1"><semantics id="A2.T2.24.22.22.1.m1.1a"><mo id="A2.T2.24.22.22.1.m1.1.1" xref="A2.T2.24.22.22.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.24.22.22.1.m1.1b"><csymbol cd="latexml" id="A2.T2.24.22.22.1.m1.1.1.cmml" xref="A2.T2.24.22.22.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.24.22.22.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.24.22.22.1.m1.1d">±</annotation></semantics></math> 0.0003</td>
<td class="ltx_td ltx_align_center" id="A2.T2.25.23.23.2">0.15 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.25.23.23.2.m1.1"><semantics id="A2.T2.25.23.23.2.m1.1a"><mo id="A2.T2.25.23.23.2.m1.1.1" xref="A2.T2.25.23.23.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.25.23.23.2.m1.1b"><csymbol cd="latexml" id="A2.T2.25.23.23.2.m1.1.1.cmml" xref="A2.T2.25.23.23.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.25.23.23.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.25.23.23.2.m1.1d">±</annotation></semantics></math> 0.13</td>
<td class="ltx_td ltx_align_center" id="A2.T2.26.24.24.3">0.18 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.26.24.24.3.m1.1"><semantics id="A2.T2.26.24.24.3.m1.1a"><mo id="A2.T2.26.24.24.3.m1.1.1" xref="A2.T2.26.24.24.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.26.24.24.3.m1.1b"><csymbol cd="latexml" id="A2.T2.26.24.24.3.m1.1.1.cmml" xref="A2.T2.26.24.24.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.26.24.24.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.26.24.24.3.m1.1d">±</annotation></semantics></math> 0.16</td>
<td class="ltx_td ltx_align_center" id="A2.T2.27.25.25.4">0.20 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.27.25.25.4.m1.1"><semantics id="A2.T2.27.25.25.4.m1.1a"><mo id="A2.T2.27.25.25.4.m1.1.1" xref="A2.T2.27.25.25.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.27.25.25.4.m1.1b"><csymbol cd="latexml" id="A2.T2.27.25.25.4.m1.1.1.cmml" xref="A2.T2.27.25.25.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.27.25.25.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.27.25.25.4.m1.1d">±</annotation></semantics></math> 0.17</td>
<td class="ltx_td ltx_align_center" id="A2.T2.28.26.26.5">0.21 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.28.26.26.5.m1.1"><semantics id="A2.T2.28.26.26.5.m1.1a"><mo id="A2.T2.28.26.26.5.m1.1.1" xref="A2.T2.28.26.26.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.28.26.26.5.m1.1b"><csymbol cd="latexml" id="A2.T2.28.26.26.5.m1.1.1.cmml" xref="A2.T2.28.26.26.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.28.26.26.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.28.26.26.5.m1.1d">±</annotation></semantics></math> 0.17</td>
<td class="ltx_td ltx_align_center" id="A2.T2.29.27.27.6">0.20 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.29.27.27.6.m1.1"><semantics id="A2.T2.29.27.27.6.m1.1a"><mo id="A2.T2.29.27.27.6.m1.1.1" xref="A2.T2.29.27.27.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.29.27.27.6.m1.1b"><csymbol cd="latexml" id="A2.T2.29.27.27.6.m1.1.1.cmml" xref="A2.T2.29.27.27.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.29.27.27.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.29.27.27.6.m1.1d">±</annotation></semantics></math> 0.18</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T2.30.28.28.7">0.17 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.30.28.28.7.m1.1"><semantics id="A2.T2.30.28.28.7.m1.1a"><mo id="A2.T2.30.28.28.7.m1.1.1" xref="A2.T2.30.28.28.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.30.28.28.7.m1.1b"><csymbol cd="latexml" id="A2.T2.30.28.28.7.m1.1.1.cmml" xref="A2.T2.30.28.28.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.30.28.28.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.30.28.28.7.m1.1d">±</annotation></semantics></math> 0.18</td>
</tr>
<tr class="ltx_tr" id="A2.T2.37.35.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T2.37.35.35.8">last</th>
<td class="ltx_td ltx_align_center" id="A2.T2.31.29.29.1">0.0135 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.31.29.29.1.m1.1"><semantics id="A2.T2.31.29.29.1.m1.1a"><mo id="A2.T2.31.29.29.1.m1.1.1" xref="A2.T2.31.29.29.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.31.29.29.1.m1.1b"><csymbol cd="latexml" id="A2.T2.31.29.29.1.m1.1.1.cmml" xref="A2.T2.31.29.29.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.31.29.29.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.31.29.29.1.m1.1d">±</annotation></semantics></math> 0.0002</td>
<td class="ltx_td ltx_align_center" id="A2.T2.32.30.30.2">0.12 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.32.30.30.2.m1.1"><semantics id="A2.T2.32.30.30.2.m1.1a"><mo id="A2.T2.32.30.30.2.m1.1.1" xref="A2.T2.32.30.30.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.32.30.30.2.m1.1b"><csymbol cd="latexml" id="A2.T2.32.30.30.2.m1.1.1.cmml" xref="A2.T2.32.30.30.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.32.30.30.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.32.30.30.2.m1.1d">±</annotation></semantics></math> 0.11</td>
<td class="ltx_td ltx_align_center" id="A2.T2.33.31.31.3">0.17 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.33.31.31.3.m1.1"><semantics id="A2.T2.33.31.31.3.m1.1a"><mo id="A2.T2.33.31.31.3.m1.1.1" xref="A2.T2.33.31.31.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.33.31.31.3.m1.1b"><csymbol cd="latexml" id="A2.T2.33.31.31.3.m1.1.1.cmml" xref="A2.T2.33.31.31.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.33.31.31.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.33.31.31.3.m1.1d">±</annotation></semantics></math> 0.15</td>
<td class="ltx_td ltx_align_center" id="A2.T2.34.32.32.4">0.19 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.34.32.32.4.m1.1"><semantics id="A2.T2.34.32.32.4.m1.1a"><mo id="A2.T2.34.32.32.4.m1.1.1" xref="A2.T2.34.32.32.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.34.32.32.4.m1.1b"><csymbol cd="latexml" id="A2.T2.34.32.32.4.m1.1.1.cmml" xref="A2.T2.34.32.32.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.34.32.32.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.34.32.32.4.m1.1d">±</annotation></semantics></math> 0.17</td>
<td class="ltx_td ltx_align_center" id="A2.T2.35.33.33.5">0.19 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.35.33.33.5.m1.1"><semantics id="A2.T2.35.33.33.5.m1.1a"><mo id="A2.T2.35.33.33.5.m1.1.1" xref="A2.T2.35.33.33.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.35.33.33.5.m1.1b"><csymbol cd="latexml" id="A2.T2.35.33.33.5.m1.1.1.cmml" xref="A2.T2.35.33.33.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.35.33.33.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.35.33.33.5.m1.1d">±</annotation></semantics></math> 0.16</td>
<td class="ltx_td ltx_align_center" id="A2.T2.36.34.34.6">0.16 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.36.34.34.6.m1.1"><semantics id="A2.T2.36.34.34.6.m1.1a"><mo id="A2.T2.36.34.34.6.m1.1.1" xref="A2.T2.36.34.34.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.36.34.34.6.m1.1b"><csymbol cd="latexml" id="A2.T2.36.34.34.6.m1.1.1.cmml" xref="A2.T2.36.34.34.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.36.34.34.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.36.34.34.6.m1.1d">±</annotation></semantics></math> 0.16</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T2.37.35.35.7">0.13 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.37.35.35.7.m1.1"><semantics id="A2.T2.37.35.35.7.m1.1a"><mo id="A2.T2.37.35.35.7.m1.1.1" xref="A2.T2.37.35.35.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.37.35.35.7.m1.1b"><csymbol cd="latexml" id="A2.T2.37.35.35.7.m1.1.1.cmml" xref="A2.T2.37.35.35.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.37.35.35.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.37.35.35.7.m1.1d">±</annotation></semantics></math> 0.15</td>
</tr>
<tr class="ltx_tr" id="A2.T2.44.42.42">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A2.T2.44.42.42.8" rowspan="5"><span class="ltx_text" id="A2.T2.44.42.42.8.1">Matryoshka</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T2.44.42.42.9">11</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.38.36.36.1">0.0135 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.38.36.36.1.m1.1"><semantics id="A2.T2.38.36.36.1.m1.1a"><mo id="A2.T2.38.36.36.1.m1.1.1" xref="A2.T2.38.36.36.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.38.36.36.1.m1.1b"><csymbol cd="latexml" id="A2.T2.38.36.36.1.m1.1.1.cmml" xref="A2.T2.38.36.36.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.38.36.36.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.38.36.36.1.m1.1d">±</annotation></semantics></math> 0.0003</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.39.37.37.2">0.05 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.39.37.37.2.m1.1"><semantics id="A2.T2.39.37.37.2.m1.1a"><mo id="A2.T2.39.37.37.2.m1.1.1" xref="A2.T2.39.37.37.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.39.37.37.2.m1.1b"><csymbol cd="latexml" id="A2.T2.39.37.37.2.m1.1.1.cmml" xref="A2.T2.39.37.37.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.39.37.37.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.39.37.37.2.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.40.38.38.3">0.06 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.40.38.38.3.m1.1"><semantics id="A2.T2.40.38.38.3.m1.1a"><mo id="A2.T2.40.38.38.3.m1.1.1" xref="A2.T2.40.38.38.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.40.38.38.3.m1.1b"><csymbol cd="latexml" id="A2.T2.40.38.38.3.m1.1.1.cmml" xref="A2.T2.40.38.38.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.40.38.38.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.40.38.38.3.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.41.39.39.4">0.05 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.41.39.39.4.m1.1"><semantics id="A2.T2.41.39.39.4.m1.1a"><mo id="A2.T2.41.39.39.4.m1.1.1" xref="A2.T2.41.39.39.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.41.39.39.4.m1.1b"><csymbol cd="latexml" id="A2.T2.41.39.39.4.m1.1.1.cmml" xref="A2.T2.41.39.39.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.41.39.39.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.41.39.39.4.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.42.40.40.5">0.05 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.42.40.40.5.m1.1"><semantics id="A2.T2.42.40.40.5.m1.1a"><mo id="A2.T2.42.40.40.5.m1.1.1" xref="A2.T2.42.40.40.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.42.40.40.5.m1.1b"><csymbol cd="latexml" id="A2.T2.42.40.40.5.m1.1.1.cmml" xref="A2.T2.42.40.40.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.42.40.40.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.42.40.40.5.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.43.41.41.6">0.04 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.43.41.41.6.m1.1"><semantics id="A2.T2.43.41.41.6.m1.1a"><mo id="A2.T2.43.41.41.6.m1.1.1" xref="A2.T2.43.41.41.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.43.41.41.6.m1.1b"><csymbol cd="latexml" id="A2.T2.43.41.41.6.m1.1.1.cmml" xref="A2.T2.43.41.41.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.43.41.41.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.43.41.41.6.m1.1d">±</annotation></semantics></math> 0.08</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T2.44.42.42.7">0.03 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.44.42.42.7.m1.1"><semantics id="A2.T2.44.42.42.7.m1.1a"><mo id="A2.T2.44.42.42.7.m1.1.1" xref="A2.T2.44.42.42.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.44.42.42.7.m1.1b"><csymbol cd="latexml" id="A2.T2.44.42.42.7.m1.1.1.cmml" xref="A2.T2.44.42.42.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.44.42.42.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.44.42.42.7.m1.1d">±</annotation></semantics></math> 0.06</td>
</tr>
<tr class="ltx_tr" id="A2.T2.51.49.49">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T2.51.49.49.8">17</th>
<td class="ltx_td ltx_align_center" id="A2.T2.45.43.43.1">0.0135 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.45.43.43.1.m1.1"><semantics id="A2.T2.45.43.43.1.m1.1a"><mo id="A2.T2.45.43.43.1.m1.1.1" xref="A2.T2.45.43.43.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.45.43.43.1.m1.1b"><csymbol cd="latexml" id="A2.T2.45.43.43.1.m1.1.1.cmml" xref="A2.T2.45.43.43.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.45.43.43.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.45.43.43.1.m1.1d">±</annotation></semantics></math> 0.0004</td>
<td class="ltx_td ltx_align_center" id="A2.T2.46.44.44.2">0.09 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.46.44.44.2.m1.1"><semantics id="A2.T2.46.44.44.2.m1.1a"><mo id="A2.T2.46.44.44.2.m1.1.1" xref="A2.T2.46.44.44.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.46.44.44.2.m1.1b"><csymbol cd="latexml" id="A2.T2.46.44.44.2.m1.1.1.cmml" xref="A2.T2.46.44.44.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.46.44.44.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.46.44.44.2.m1.1d">±</annotation></semantics></math> 0.14</td>
<td class="ltx_td ltx_align_center" id="A2.T2.47.45.45.3">0.10 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.47.45.45.3.m1.1"><semantics id="A2.T2.47.45.45.3.m1.1a"><mo id="A2.T2.47.45.45.3.m1.1.1" xref="A2.T2.47.45.45.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.47.45.45.3.m1.1b"><csymbol cd="latexml" id="A2.T2.47.45.45.3.m1.1.1.cmml" xref="A2.T2.47.45.45.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.47.45.45.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.47.45.45.3.m1.1d">±</annotation></semantics></math> 0.15</td>
<td class="ltx_td ltx_align_center" id="A2.T2.48.46.46.4">0.11 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.48.46.46.4.m1.1"><semantics id="A2.T2.48.46.46.4.m1.1a"><mo id="A2.T2.48.46.46.4.m1.1.1" xref="A2.T2.48.46.46.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.48.46.46.4.m1.1b"><csymbol cd="latexml" id="A2.T2.48.46.46.4.m1.1.1.cmml" xref="A2.T2.48.46.46.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.48.46.46.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.48.46.46.4.m1.1d">±</annotation></semantics></math> 0.16</td>
<td class="ltx_td ltx_align_center" id="A2.T2.49.47.47.5">0.11 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.49.47.47.5.m1.1"><semantics id="A2.T2.49.47.47.5.m1.1a"><mo id="A2.T2.49.47.47.5.m1.1.1" xref="A2.T2.49.47.47.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.49.47.47.5.m1.1b"><csymbol cd="latexml" id="A2.T2.49.47.47.5.m1.1.1.cmml" xref="A2.T2.49.47.47.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.49.47.47.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.49.47.47.5.m1.1d">±</annotation></semantics></math> 0.15</td>
<td class="ltx_td ltx_align_center" id="A2.T2.50.48.48.6">0.10 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.50.48.48.6.m1.1"><semantics id="A2.T2.50.48.48.6.m1.1a"><mo id="A2.T2.50.48.48.6.m1.1.1" xref="A2.T2.50.48.48.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.50.48.48.6.m1.1b"><csymbol cd="latexml" id="A2.T2.50.48.48.6.m1.1.1.cmml" xref="A2.T2.50.48.48.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.50.48.48.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.50.48.48.6.m1.1d">±</annotation></semantics></math> 0.15</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T2.51.49.49.7">0.06 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.51.49.49.7.m1.1"><semantics id="A2.T2.51.49.49.7.m1.1a"><mo id="A2.T2.51.49.49.7.m1.1.1" xref="A2.T2.51.49.49.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.51.49.49.7.m1.1b"><csymbol cd="latexml" id="A2.T2.51.49.49.7.m1.1.1.cmml" xref="A2.T2.51.49.49.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.51.49.49.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.51.49.49.7.m1.1d">±</annotation></semantics></math> 0.10</td>
</tr>
<tr class="ltx_tr" id="A2.T2.58.56.56">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T2.58.56.56.8">22</th>
<td class="ltx_td ltx_align_center" id="A2.T2.52.50.50.1">0.0135 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.52.50.50.1.m1.1"><semantics id="A2.T2.52.50.50.1.m1.1a"><mo id="A2.T2.52.50.50.1.m1.1.1" xref="A2.T2.52.50.50.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.52.50.50.1.m1.1b"><csymbol cd="latexml" id="A2.T2.52.50.50.1.m1.1.1.cmml" xref="A2.T2.52.50.50.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.52.50.50.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.52.50.50.1.m1.1d">±</annotation></semantics></math> 0.0003</td>
<td class="ltx_td ltx_align_center" id="A2.T2.53.51.51.2">0.17 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.53.51.51.2.m1.1"><semantics id="A2.T2.53.51.51.2.m1.1a"><mo id="A2.T2.53.51.51.2.m1.1.1" xref="A2.T2.53.51.51.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.53.51.51.2.m1.1b"><csymbol cd="latexml" id="A2.T2.53.51.51.2.m1.1.1.cmml" xref="A2.T2.53.51.51.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.53.51.51.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.53.51.51.2.m1.1d">±</annotation></semantics></math> 0.17</td>
<td class="ltx_td ltx_align_center" id="A2.T2.54.52.52.3">0.21 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.54.52.52.3.m1.1"><semantics id="A2.T2.54.52.52.3.m1.1a"><mo id="A2.T2.54.52.52.3.m1.1.1" xref="A2.T2.54.52.52.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.54.52.52.3.m1.1b"><csymbol cd="latexml" id="A2.T2.54.52.52.3.m1.1.1.cmml" xref="A2.T2.54.52.52.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.54.52.52.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.54.52.52.3.m1.1d">±</annotation></semantics></math> 0.18</td>
<td class="ltx_td ltx_align_center" id="A2.T2.55.53.53.4">0.23 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.55.53.53.4.m1.1"><semantics id="A2.T2.55.53.53.4.m1.1a"><mo id="A2.T2.55.53.53.4.m1.1.1" xref="A2.T2.55.53.53.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.55.53.53.4.m1.1b"><csymbol cd="latexml" id="A2.T2.55.53.53.4.m1.1.1.cmml" xref="A2.T2.55.53.53.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.55.53.53.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.55.53.53.4.m1.1d">±</annotation></semantics></math> 0.19</td>
<td class="ltx_td ltx_align_center" id="A2.T2.56.54.54.5">0.23 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.56.54.54.5.m1.1"><semantics id="A2.T2.56.54.54.5.m1.1a"><mo id="A2.T2.56.54.54.5.m1.1.1" xref="A2.T2.56.54.54.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.56.54.54.5.m1.1b"><csymbol cd="latexml" id="A2.T2.56.54.54.5.m1.1.1.cmml" xref="A2.T2.56.54.54.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.56.54.54.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.56.54.54.5.m1.1d">±</annotation></semantics></math> 0.19</td>
<td class="ltx_td ltx_align_center" id="A2.T2.57.55.55.6">0.23 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.57.55.55.6.m1.1"><semantics id="A2.T2.57.55.55.6.m1.1a"><mo id="A2.T2.57.55.55.6.m1.1.1" xref="A2.T2.57.55.55.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.57.55.55.6.m1.1b"><csymbol cd="latexml" id="A2.T2.57.55.55.6.m1.1.1.cmml" xref="A2.T2.57.55.55.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.57.55.55.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.57.55.55.6.m1.1d">±</annotation></semantics></math> 0.19</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T2.58.56.56.7">0.18 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.58.56.56.7.m1.1"><semantics id="A2.T2.58.56.56.7.m1.1a"><mo id="A2.T2.58.56.56.7.m1.1.1" xref="A2.T2.58.56.56.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.58.56.56.7.m1.1b"><csymbol cd="latexml" id="A2.T2.58.56.56.7.m1.1.1.cmml" xref="A2.T2.58.56.56.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.58.56.56.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.58.56.56.7.m1.1d">±</annotation></semantics></math> 0.19</td>
</tr>
<tr class="ltx_tr" id="A2.T2.65.63.63">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T2.65.63.63.8">23</th>
<td class="ltx_td ltx_align_center" id="A2.T2.59.57.57.1">0.0135 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.59.57.57.1.m1.1"><semantics id="A2.T2.59.57.57.1.m1.1a"><mo id="A2.T2.59.57.57.1.m1.1.1" xref="A2.T2.59.57.57.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.59.57.57.1.m1.1b"><csymbol cd="latexml" id="A2.T2.59.57.57.1.m1.1.1.cmml" xref="A2.T2.59.57.57.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.59.57.57.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.59.57.57.1.m1.1d">±</annotation></semantics></math> 0.0003</td>
<td class="ltx_td ltx_align_center" id="A2.T2.60.58.58.2">0.17 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.60.58.58.2.m1.1"><semantics id="A2.T2.60.58.58.2.m1.1a"><mo id="A2.T2.60.58.58.2.m1.1.1" xref="A2.T2.60.58.58.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.60.58.58.2.m1.1b"><csymbol cd="latexml" id="A2.T2.60.58.58.2.m1.1.1.cmml" xref="A2.T2.60.58.58.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.60.58.58.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.60.58.58.2.m1.1d">±</annotation></semantics></math> 0.16</td>
<td class="ltx_td ltx_align_center" id="A2.T2.61.59.59.3">0.21 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.61.59.59.3.m1.1"><semantics id="A2.T2.61.59.59.3.m1.1a"><mo id="A2.T2.61.59.59.3.m1.1.1" xref="A2.T2.61.59.59.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.61.59.59.3.m1.1b"><csymbol cd="latexml" id="A2.T2.61.59.59.3.m1.1.1.cmml" xref="A2.T2.61.59.59.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.61.59.59.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.61.59.59.3.m1.1d">±</annotation></semantics></math> 0.19</td>
<td class="ltx_td ltx_align_center" id="A2.T2.62.60.60.4">0.22 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.62.60.60.4.m1.1"><semantics id="A2.T2.62.60.60.4.m1.1a"><mo id="A2.T2.62.60.60.4.m1.1.1" xref="A2.T2.62.60.60.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.62.60.60.4.m1.1b"><csymbol cd="latexml" id="A2.T2.62.60.60.4.m1.1.1.cmml" xref="A2.T2.62.60.60.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.62.60.60.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.62.60.60.4.m1.1d">±</annotation></semantics></math> 0.18</td>
<td class="ltx_td ltx_align_center" id="A2.T2.63.61.61.5">0.22 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.63.61.61.5.m1.1"><semantics id="A2.T2.63.61.61.5.m1.1a"><mo id="A2.T2.63.61.61.5.m1.1.1" xref="A2.T2.63.61.61.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.63.61.61.5.m1.1b"><csymbol cd="latexml" id="A2.T2.63.61.61.5.m1.1.1.cmml" xref="A2.T2.63.61.61.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.63.61.61.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.63.61.61.5.m1.1d">±</annotation></semantics></math> 0.18</td>
<td class="ltx_td ltx_align_center" id="A2.T2.64.62.62.6">0.20 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.64.62.62.6.m1.1"><semantics id="A2.T2.64.62.62.6.m1.1a"><mo id="A2.T2.64.62.62.6.m1.1.1" xref="A2.T2.64.62.62.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.64.62.62.6.m1.1b"><csymbol cd="latexml" id="A2.T2.64.62.62.6.m1.1.1.cmml" xref="A2.T2.64.62.62.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.64.62.62.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.64.62.62.6.m1.1d">±</annotation></semantics></math> 0.18</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T2.65.63.63.7">0.12 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.65.63.63.7.m1.1"><semantics id="A2.T2.65.63.63.7.m1.1a"><mo id="A2.T2.65.63.63.7.m1.1.1" xref="A2.T2.65.63.63.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.65.63.63.7.m1.1b"><csymbol cd="latexml" id="A2.T2.65.63.63.7.m1.1.1.cmml" xref="A2.T2.65.63.63.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.65.63.63.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.65.63.63.7.m1.1d">±</annotation></semantics></math> 0.16</td>
</tr>
<tr class="ltx_tr" id="A2.T2.72.70.70">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T2.72.70.70.8">last</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T2.66.64.64.1">0.0135 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.66.64.64.1.m1.1"><semantics id="A2.T2.66.64.64.1.m1.1a"><mo id="A2.T2.66.64.64.1.m1.1.1" xref="A2.T2.66.64.64.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.66.64.64.1.m1.1b"><csymbol cd="latexml" id="A2.T2.66.64.64.1.m1.1.1.cmml" xref="A2.T2.66.64.64.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.66.64.64.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.66.64.64.1.m1.1d">±</annotation></semantics></math> 0.0002</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T2.67.65.65.2">0.16 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.67.65.65.2.m1.1"><semantics id="A2.T2.67.65.65.2.m1.1a"><mo id="A2.T2.67.65.65.2.m1.1.1" xref="A2.T2.67.65.65.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.67.65.65.2.m1.1b"><csymbol cd="latexml" id="A2.T2.67.65.65.2.m1.1.1.cmml" xref="A2.T2.67.65.65.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.67.65.65.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.67.65.65.2.m1.1d">±</annotation></semantics></math> 0.17</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T2.68.66.66.3">0.20 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.68.66.66.3.m1.1"><semantics id="A2.T2.68.66.66.3.m1.1a"><mo id="A2.T2.68.66.66.3.m1.1.1" xref="A2.T2.68.66.66.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.68.66.66.3.m1.1b"><csymbol cd="latexml" id="A2.T2.68.66.66.3.m1.1.1.cmml" xref="A2.T2.68.66.66.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.68.66.66.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.68.66.66.3.m1.1d">±</annotation></semantics></math> 0.18</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T2.69.67.67.4">0.23 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.69.67.67.4.m1.1"><semantics id="A2.T2.69.67.67.4.m1.1a"><mo id="A2.T2.69.67.67.4.m1.1.1" xref="A2.T2.69.67.67.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.69.67.67.4.m1.1b"><csymbol cd="latexml" id="A2.T2.69.67.67.4.m1.1.1.cmml" xref="A2.T2.69.67.67.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.69.67.67.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.69.67.67.4.m1.1d">±</annotation></semantics></math> 0.19</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T2.70.68.68.5">0.22 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.70.68.68.5.m1.1"><semantics id="A2.T2.70.68.68.5.m1.1a"><mo id="A2.T2.70.68.68.5.m1.1.1" xref="A2.T2.70.68.68.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.70.68.68.5.m1.1b"><csymbol cd="latexml" id="A2.T2.70.68.68.5.m1.1.1.cmml" xref="A2.T2.70.68.68.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.70.68.68.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.70.68.68.5.m1.1d">±</annotation></semantics></math> 0.19</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T2.71.69.69.6">0.19 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.71.69.69.6.m1.1"><semantics id="A2.T2.71.69.69.6.m1.1a"><mo id="A2.T2.71.69.69.6.m1.1.1" xref="A2.T2.71.69.69.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.71.69.69.6.m1.1b"><csymbol cd="latexml" id="A2.T2.71.69.69.6.m1.1.1.cmml" xref="A2.T2.71.69.69.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.71.69.69.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.71.69.69.6.m1.1d">±</annotation></semantics></math> 0.19</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T2.72.70.70.7">0.13 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T2.72.70.70.7.m1.1"><semantics id="A2.T2.72.70.70.7.m1.1a"><mo id="A2.T2.72.70.70.7.m1.1.1" xref="A2.T2.72.70.70.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T2.72.70.70.7.m1.1b"><csymbol cd="latexml" id="A2.T2.72.70.70.7.m1.1.1.cmml" xref="A2.T2.72.70.70.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.72.70.70.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T2.72.70.70.7.m1.1d">±</annotation></semantics></math> 0.16</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average monosemanticity scores (MS) for neurons in a CLIP ViT-Large model.  The scores are calculated separately for each layer of the model and for different expansion factors used when training the Sparse Autoencoders (SAEs). The image encoder used for calculating MS is DINOv2 ViT-B.  The table allows comparison of monosemanticity across layers and different SAE configurations.
> <details>
> <summary>read the caption</summary>
> Table A2: The average MS of neurons in a CLIP ViT-L model. DINOv2 ViT-B is used as the image encoder E𝐸Eitalic_E.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T3.58.56">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T3.58.56.57.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T3.58.56.57.1.1" rowspan="2"><span class="ltx_text" id="A2.T3.58.56.57.1.1.1">SAE type</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T3.58.56.57.1.2" rowspan="2"><span class="ltx_text" id="A2.T3.58.56.57.1.2.1">Layer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T3.58.56.57.1.3" rowspan="2"><span class="ltx_text" id="A2.T3.58.56.57.1.3.1">No SAE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="A2.T3.58.56.57.1.4">Expansion factor</th>
</tr>
<tr class="ltx_tr" id="A2.T3.58.56.58.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T3.58.56.58.2.1">x1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T3.58.56.58.2.2">x2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T3.58.56.58.2.3">x4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T3.58.56.58.2.4">x8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T3.58.56.58.2.5">x16</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T3.58.56.58.2.6">x64</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T3.9.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T3.9.7.7.8" rowspan="4"><span class="ltx_text" id="A2.T3.9.7.7.8.1">BatchTopK</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T3.9.7.7.9">11</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.3.1.1.1">0.4805 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.3.1.1.1.m1.1"><semantics id="A2.T3.3.1.1.1.m1.1a"><mo id="A2.T3.3.1.1.1.m1.1.1" xref="A2.T3.3.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.3.1.1.1.m1.1b"><csymbol cd="latexml" id="A2.T3.3.1.1.1.m1.1.1.cmml" xref="A2.T3.3.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.3.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.3.1.1.1.m1.1d">±</annotation></semantics></math> 0.0014</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.4.2.2.2">0.50 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.4.2.2.2.m1.1"><semantics id="A2.T3.4.2.2.2.m1.1a"><mo id="A2.T3.4.2.2.2.m1.1.1" xref="A2.T3.4.2.2.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.4.2.2.2.m1.1b"><csymbol cd="latexml" id="A2.T3.4.2.2.2.m1.1.1.cmml" xref="A2.T3.4.2.2.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.4.2.2.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.4.2.2.2.m1.1d">±</annotation></semantics></math> 0.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.5.3.3.3">0.51 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.5.3.3.3.m1.1"><semantics id="A2.T3.5.3.3.3.m1.1a"><mo id="A2.T3.5.3.3.3.m1.1.1" xref="A2.T3.5.3.3.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.5.3.3.3.m1.1b"><csymbol cd="latexml" id="A2.T3.5.3.3.3.m1.1.1.cmml" xref="A2.T3.5.3.3.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.5.3.3.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.5.3.3.3.m1.1d">±</annotation></semantics></math> 0.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.6.4.4.4">0.51 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.6.4.4.4.m1.1"><semantics id="A2.T3.6.4.4.4.m1.1a"><mo id="A2.T3.6.4.4.4.m1.1.1" xref="A2.T3.6.4.4.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.6.4.4.4.m1.1b"><csymbol cd="latexml" id="A2.T3.6.4.4.4.m1.1.1.cmml" xref="A2.T3.6.4.4.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.6.4.4.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.6.4.4.4.m1.1d">±</annotation></semantics></math> 0.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.7.5.5.5">0.51 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.7.5.5.5.m1.1"><semantics id="A2.T3.7.5.5.5.m1.1a"><mo id="A2.T3.7.5.5.5.m1.1.1" xref="A2.T3.7.5.5.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.7.5.5.5.m1.1b"><csymbol cd="latexml" id="A2.T3.7.5.5.5.m1.1.1.cmml" xref="A2.T3.7.5.5.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.7.5.5.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.7.5.5.5.m1.1d">±</annotation></semantics></math> 0.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.8.6.6.6">0.52 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.8.6.6.6.m1.1"><semantics id="A2.T3.8.6.6.6.m1.1a"><mo id="A2.T3.8.6.6.6.m1.1.1" xref="A2.T3.8.6.6.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.8.6.6.6.m1.1b"><csymbol cd="latexml" id="A2.T3.8.6.6.6.m1.1.1.cmml" xref="A2.T3.8.6.6.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.8.6.6.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.8.6.6.6.m1.1d">±</annotation></semantics></math> 0.06</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T3.9.7.7.7">0.52 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.9.7.7.7.m1.1"><semantics id="A2.T3.9.7.7.7.m1.1a"><mo id="A2.T3.9.7.7.7.m1.1.1" xref="A2.T3.9.7.7.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.9.7.7.7.m1.1b"><csymbol cd="latexml" id="A2.T3.9.7.7.7.m1.1.1.cmml" xref="A2.T3.9.7.7.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.9.7.7.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.9.7.7.7.m1.1d">±</annotation></semantics></math> 0.07</td>
</tr>
<tr class="ltx_tr" id="A2.T3.16.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.16.14.14.8">16</th>
<td class="ltx_td ltx_align_center" id="A2.T3.10.8.8.1">0.4809 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.10.8.8.1.m1.1"><semantics id="A2.T3.10.8.8.1.m1.1a"><mo id="A2.T3.10.8.8.1.m1.1.1" xref="A2.T3.10.8.8.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.10.8.8.1.m1.1b"><csymbol cd="latexml" id="A2.T3.10.8.8.1.m1.1.1.cmml" xref="A2.T3.10.8.8.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.10.8.8.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.10.8.8.1.m1.1d">±</annotation></semantics></math> 0.0024</td>
<td class="ltx_td ltx_align_center" id="A2.T3.11.9.9.2">0.51 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.11.9.9.2.m1.1"><semantics id="A2.T3.11.9.9.2.m1.1a"><mo id="A2.T3.11.9.9.2.m1.1.1" xref="A2.T3.11.9.9.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.11.9.9.2.m1.1b"><csymbol cd="latexml" id="A2.T3.11.9.9.2.m1.1.1.cmml" xref="A2.T3.11.9.9.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.11.9.9.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.11.9.9.2.m1.1d">±</annotation></semantics></math> 0.04</td>
<td class="ltx_td ltx_align_center" id="A2.T3.12.10.10.3">0.52 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.12.10.10.3.m1.1"><semantics id="A2.T3.12.10.10.3.m1.1a"><mo id="A2.T3.12.10.10.3.m1.1.1" xref="A2.T3.12.10.10.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.12.10.10.3.m1.1b"><csymbol cd="latexml" id="A2.T3.12.10.10.3.m1.1.1.cmml" xref="A2.T3.12.10.10.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.12.10.10.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.12.10.10.3.m1.1d">±</annotation></semantics></math> 0.05</td>
<td class="ltx_td ltx_align_center" id="A2.T3.13.11.11.4">0.52 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.13.11.11.4.m1.1"><semantics id="A2.T3.13.11.11.4.m1.1a"><mo id="A2.T3.13.11.11.4.m1.1.1" xref="A2.T3.13.11.11.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.13.11.11.4.m1.1b"><csymbol cd="latexml" id="A2.T3.13.11.11.4.m1.1.1.cmml" xref="A2.T3.13.11.11.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.13.11.11.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.13.11.11.4.m1.1d">±</annotation></semantics></math> 0.06</td>
<td class="ltx_td ltx_align_center" id="A2.T3.14.12.12.5">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.14.12.12.5.m1.1"><semantics id="A2.T3.14.12.12.5.m1.1a"><mo id="A2.T3.14.12.12.5.m1.1.1" xref="A2.T3.14.12.12.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.14.12.12.5.m1.1b"><csymbol cd="latexml" id="A2.T3.14.12.12.5.m1.1.1.cmml" xref="A2.T3.14.12.12.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.14.12.12.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.14.12.12.5.m1.1d">±</annotation></semantics></math> 0.07</td>
<td class="ltx_td ltx_align_center" id="A2.T3.15.13.13.6">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.15.13.13.6.m1.1"><semantics id="A2.T3.15.13.13.6.m1.1a"><mo id="A2.T3.15.13.13.6.m1.1.1" xref="A2.T3.15.13.13.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.15.13.13.6.m1.1b"><csymbol cd="latexml" id="A2.T3.15.13.13.6.m1.1.1.cmml" xref="A2.T3.15.13.13.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.15.13.13.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.15.13.13.6.m1.1d">±</annotation></semantics></math> 0.07</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T3.16.14.14.7">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.16.14.14.7.m1.1"><semantics id="A2.T3.16.14.14.7.m1.1a"><mo id="A2.T3.16.14.14.7.m1.1.1" xref="A2.T3.16.14.14.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.16.14.14.7.m1.1b"><csymbol cd="latexml" id="A2.T3.16.14.14.7.m1.1.1.cmml" xref="A2.T3.16.14.14.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.16.14.14.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.16.14.14.7.m1.1d">±</annotation></semantics></math> 0.08</td>
</tr>
<tr class="ltx_tr" id="A2.T3.23.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.23.21.21.8">21</th>
<td class="ltx_td ltx_align_center" id="A2.T3.17.15.15.1">0.4810 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.17.15.15.1.m1.1"><semantics id="A2.T3.17.15.15.1.m1.1a"><mo id="A2.T3.17.15.15.1.m1.1.1" xref="A2.T3.17.15.15.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.17.15.15.1.m1.1b"><csymbol cd="latexml" id="A2.T3.17.15.15.1.m1.1.1.cmml" xref="A2.T3.17.15.15.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.17.15.15.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.17.15.15.1.m1.1d">±</annotation></semantics></math> 0.0052</td>
<td class="ltx_td ltx_align_center" id="A2.T3.18.16.16.2">0.52 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.18.16.16.2.m1.1"><semantics id="A2.T3.18.16.16.2.m1.1a"><mo id="A2.T3.18.16.16.2.m1.1.1" xref="A2.T3.18.16.16.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.18.16.16.2.m1.1b"><csymbol cd="latexml" id="A2.T3.18.16.16.2.m1.1.1.cmml" xref="A2.T3.18.16.16.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.18.16.16.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.18.16.16.2.m1.1d">±</annotation></semantics></math> 0.05</td>
<td class="ltx_td ltx_align_center" id="A2.T3.19.17.17.3">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.19.17.17.3.m1.1"><semantics id="A2.T3.19.17.17.3.m1.1a"><mo id="A2.T3.19.17.17.3.m1.1.1" xref="A2.T3.19.17.17.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.19.17.17.3.m1.1b"><csymbol cd="latexml" id="A2.T3.19.17.17.3.m1.1.1.cmml" xref="A2.T3.19.17.17.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.19.17.17.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.19.17.17.3.m1.1d">±</annotation></semantics></math> 0.06</td>
<td class="ltx_td ltx_align_center" id="A2.T3.20.18.18.4">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.20.18.18.4.m1.1"><semantics id="A2.T3.20.18.18.4.m1.1a"><mo id="A2.T3.20.18.18.4.m1.1.1" xref="A2.T3.20.18.18.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.20.18.18.4.m1.1b"><csymbol cd="latexml" id="A2.T3.20.18.18.4.m1.1.1.cmml" xref="A2.T3.20.18.18.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.20.18.18.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.20.18.18.4.m1.1d">±</annotation></semantics></math> 0.06</td>
<td class="ltx_td ltx_align_center" id="A2.T3.21.19.19.5">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.21.19.19.5.m1.1"><semantics id="A2.T3.21.19.19.5.m1.1a"><mo id="A2.T3.21.19.19.5.m1.1.1" xref="A2.T3.21.19.19.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.21.19.19.5.m1.1b"><csymbol cd="latexml" id="A2.T3.21.19.19.5.m1.1.1.cmml" xref="A2.T3.21.19.19.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.21.19.19.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.21.19.19.5.m1.1d">±</annotation></semantics></math> 0.07</td>
<td class="ltx_td ltx_align_center" id="A2.T3.22.20.20.6">0.54 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.22.20.20.6.m1.1"><semantics id="A2.T3.22.20.20.6.m1.1a"><mo id="A2.T3.22.20.20.6.m1.1.1" xref="A2.T3.22.20.20.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.22.20.20.6.m1.1b"><csymbol cd="latexml" id="A2.T3.22.20.20.6.m1.1.1.cmml" xref="A2.T3.22.20.20.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.22.20.20.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.22.20.20.6.m1.1d">±</annotation></semantics></math> 0.08</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T3.23.21.21.7">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.23.21.21.7.m1.1"><semantics id="A2.T3.23.21.21.7.m1.1a"><mo id="A2.T3.23.21.21.7.m1.1.1" xref="A2.T3.23.21.21.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.23.21.21.7.m1.1b"><csymbol cd="latexml" id="A2.T3.23.21.21.7.m1.1.1.cmml" xref="A2.T3.23.21.21.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.23.21.21.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.23.21.21.7.m1.1d">±</annotation></semantics></math> 0.08</td>
</tr>
<tr class="ltx_tr" id="A2.T3.30.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.30.28.28.8">last</th>
<td class="ltx_td ltx_align_center" id="A2.T3.24.22.22.1">0.4811 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.24.22.22.1.m1.1"><semantics id="A2.T3.24.22.22.1.m1.1a"><mo id="A2.T3.24.22.22.1.m1.1.1" xref="A2.T3.24.22.22.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.24.22.22.1.m1.1b"><csymbol cd="latexml" id="A2.T3.24.22.22.1.m1.1.1.cmml" xref="A2.T3.24.22.22.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.24.22.22.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.24.22.22.1.m1.1d">±</annotation></semantics></math> 0.0048</td>
<td class="ltx_td ltx_align_center" id="A2.T3.25.23.23.2">0.61 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.25.23.23.2.m1.1"><semantics id="A2.T3.25.23.23.2.m1.1a"><mo id="A2.T3.25.23.23.2.m1.1.1" xref="A2.T3.25.23.23.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.25.23.23.2.m1.1b"><csymbol cd="latexml" id="A2.T3.25.23.23.2.m1.1.1.cmml" xref="A2.T3.25.23.23.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.25.23.23.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.25.23.23.2.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center" id="A2.T3.26.24.24.3">0.61 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.26.24.24.3.m1.1"><semantics id="A2.T3.26.24.24.3.m1.1a"><mo id="A2.T3.26.24.24.3.m1.1.1" xref="A2.T3.26.24.24.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.26.24.24.3.m1.1b"><csymbol cd="latexml" id="A2.T3.26.24.24.3.m1.1.1.cmml" xref="A2.T3.26.24.24.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.26.24.24.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.26.24.24.3.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center" id="A2.T3.27.25.25.4">0.62 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.27.25.25.4.m1.1"><semantics id="A2.T3.27.25.25.4.m1.1a"><mo id="A2.T3.27.25.25.4.m1.1.1" xref="A2.T3.27.25.25.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.27.25.25.4.m1.1b"><csymbol cd="latexml" id="A2.T3.27.25.25.4.m1.1.1.cmml" xref="A2.T3.27.25.25.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.27.25.25.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.27.25.25.4.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center" id="A2.T3.28.26.26.5">0.62 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.28.26.26.5.m1.1"><semantics id="A2.T3.28.26.26.5.m1.1a"><mo id="A2.T3.28.26.26.5.m1.1.1" xref="A2.T3.28.26.26.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.28.26.26.5.m1.1b"><csymbol cd="latexml" id="A2.T3.28.26.26.5.m1.1.1.cmml" xref="A2.T3.28.26.26.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.28.26.26.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.28.26.26.5.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center" id="A2.T3.29.27.27.6">0.62 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.29.27.27.6.m1.1"><semantics id="A2.T3.29.27.27.6.m1.1a"><mo id="A2.T3.29.27.27.6.m1.1.1" xref="A2.T3.29.27.27.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.29.27.27.6.m1.1b"><csymbol cd="latexml" id="A2.T3.29.27.27.6.m1.1.1.cmml" xref="A2.T3.29.27.27.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.29.27.27.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.29.27.27.6.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T3.30.28.28.7">0.60 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.30.28.28.7.m1.1"><semantics id="A2.T3.30.28.28.7.m1.1a"><mo id="A2.T3.30.28.28.7.m1.1.1" xref="A2.T3.30.28.28.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.30.28.28.7.m1.1b"><csymbol cd="latexml" id="A2.T3.30.28.28.7.m1.1.1.cmml" xref="A2.T3.30.28.28.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.30.28.28.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.30.28.28.7.m1.1d">±</annotation></semantics></math> 0.11</td>
</tr>
<tr class="ltx_tr" id="A2.T3.37.35.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A2.T3.37.35.35.8" rowspan="4"><span class="ltx_text" id="A2.T3.37.35.35.8.1">Matryoshka</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T3.37.35.35.9">11</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.31.29.29.1">0.4805 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.31.29.29.1.m1.1"><semantics id="A2.T3.31.29.29.1.m1.1a"><mo id="A2.T3.31.29.29.1.m1.1.1" xref="A2.T3.31.29.29.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.31.29.29.1.m1.1b"><csymbol cd="latexml" id="A2.T3.31.29.29.1.m1.1.1.cmml" xref="A2.T3.31.29.29.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.31.29.29.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.31.29.29.1.m1.1d">±</annotation></semantics></math> 0.0014</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.32.30.30.2">0.50 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.32.30.30.2.m1.1"><semantics id="A2.T3.32.30.30.2.m1.1a"><mo id="A2.T3.32.30.30.2.m1.1.1" xref="A2.T3.32.30.30.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.32.30.30.2.m1.1b"><csymbol cd="latexml" id="A2.T3.32.30.30.2.m1.1.1.cmml" xref="A2.T3.32.30.30.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.32.30.30.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.32.30.30.2.m1.1d">±</annotation></semantics></math> 0.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.33.31.31.3">0.50 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.33.31.31.3.m1.1"><semantics id="A2.T3.33.31.31.3.m1.1a"><mo id="A2.T3.33.31.31.3.m1.1.1" xref="A2.T3.33.31.31.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.33.31.31.3.m1.1b"><csymbol cd="latexml" id="A2.T3.33.31.31.3.m1.1.1.cmml" xref="A2.T3.33.31.31.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.33.31.31.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.33.31.31.3.m1.1d">±</annotation></semantics></math> 0.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.34.32.32.4">0.50 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.34.32.32.4.m1.1"><semantics id="A2.T3.34.32.32.4.m1.1a"><mo id="A2.T3.34.32.32.4.m1.1.1" xref="A2.T3.34.32.32.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.34.32.32.4.m1.1b"><csymbol cd="latexml" id="A2.T3.34.32.32.4.m1.1.1.cmml" xref="A2.T3.34.32.32.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.34.32.32.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.34.32.32.4.m1.1d">±</annotation></semantics></math> 0.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.35.33.33.5">0.50 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.35.33.33.5.m1.1"><semantics id="A2.T3.35.33.33.5.m1.1a"><mo id="A2.T3.35.33.33.5.m1.1.1" xref="A2.T3.35.33.33.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.35.33.33.5.m1.1b"><csymbol cd="latexml" id="A2.T3.35.33.33.5.m1.1.1.cmml" xref="A2.T3.35.33.33.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.35.33.33.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.35.33.33.5.m1.1d">±</annotation></semantics></math> 0.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.36.34.34.6">0.51 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.36.34.34.6.m1.1"><semantics id="A2.T3.36.34.34.6.m1.1a"><mo id="A2.T3.36.34.34.6.m1.1.1" xref="A2.T3.36.34.34.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.36.34.34.6.m1.1b"><csymbol cd="latexml" id="A2.T3.36.34.34.6.m1.1.1.cmml" xref="A2.T3.36.34.34.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.36.34.34.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.36.34.34.6.m1.1d">±</annotation></semantics></math> 0.07</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T3.37.35.35.7">0.51 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.37.35.35.7.m1.1"><semantics id="A2.T3.37.35.35.7.m1.1a"><mo id="A2.T3.37.35.35.7.m1.1.1" xref="A2.T3.37.35.35.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.37.35.35.7.m1.1b"><csymbol cd="latexml" id="A2.T3.37.35.35.7.m1.1.1.cmml" xref="A2.T3.37.35.35.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.37.35.35.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.37.35.35.7.m1.1d">±</annotation></semantics></math> 0.07</td>
</tr>
<tr class="ltx_tr" id="A2.T3.44.42.42">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.44.42.42.8">16</th>
<td class="ltx_td ltx_align_center" id="A2.T3.38.36.36.1">0.4809 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.38.36.36.1.m1.1"><semantics id="A2.T3.38.36.36.1.m1.1a"><mo id="A2.T3.38.36.36.1.m1.1.1" xref="A2.T3.38.36.36.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.38.36.36.1.m1.1b"><csymbol cd="latexml" id="A2.T3.38.36.36.1.m1.1.1.cmml" xref="A2.T3.38.36.36.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.38.36.36.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.38.36.36.1.m1.1d">±</annotation></semantics></math> 0.0024</td>
<td class="ltx_td ltx_align_center" id="A2.T3.39.37.37.2">0.51 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.39.37.37.2.m1.1"><semantics id="A2.T3.39.37.37.2.m1.1a"><mo id="A2.T3.39.37.37.2.m1.1.1" xref="A2.T3.39.37.37.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.39.37.37.2.m1.1b"><csymbol cd="latexml" id="A2.T3.39.37.37.2.m1.1.1.cmml" xref="A2.T3.39.37.37.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.39.37.37.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.39.37.37.2.m1.1d">±</annotation></semantics></math> 0.05</td>
<td class="ltx_td ltx_align_center" id="A2.T3.40.38.38.3">0.52 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.40.38.38.3.m1.1"><semantics id="A2.T3.40.38.38.3.m1.1a"><mo id="A2.T3.40.38.38.3.m1.1.1" xref="A2.T3.40.38.38.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.40.38.38.3.m1.1b"><csymbol cd="latexml" id="A2.T3.40.38.38.3.m1.1.1.cmml" xref="A2.T3.40.38.38.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.40.38.38.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.40.38.38.3.m1.1d">±</annotation></semantics></math> 0.06</td>
<td class="ltx_td ltx_align_center" id="A2.T3.41.39.39.4">0.52 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.41.39.39.4.m1.1"><semantics id="A2.T3.41.39.39.4.m1.1a"><mo id="A2.T3.41.39.39.4.m1.1.1" xref="A2.T3.41.39.39.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.41.39.39.4.m1.1b"><csymbol cd="latexml" id="A2.T3.41.39.39.4.m1.1.1.cmml" xref="A2.T3.41.39.39.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.41.39.39.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.41.39.39.4.m1.1d">±</annotation></semantics></math> 0.07</td>
<td class="ltx_td ltx_align_center" id="A2.T3.42.40.40.5">0.52 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.42.40.40.5.m1.1"><semantics id="A2.T3.42.40.40.5.m1.1a"><mo id="A2.T3.42.40.40.5.m1.1.1" xref="A2.T3.42.40.40.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.42.40.40.5.m1.1b"><csymbol cd="latexml" id="A2.T3.42.40.40.5.m1.1.1.cmml" xref="A2.T3.42.40.40.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.42.40.40.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.42.40.40.5.m1.1d">±</annotation></semantics></math> 0.07</td>
<td class="ltx_td ltx_align_center" id="A2.T3.43.41.41.6">0.52 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.43.41.41.6.m1.1"><semantics id="A2.T3.43.41.41.6.m1.1a"><mo id="A2.T3.43.41.41.6.m1.1.1" xref="A2.T3.43.41.41.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.43.41.41.6.m1.1b"><csymbol cd="latexml" id="A2.T3.43.41.41.6.m1.1.1.cmml" xref="A2.T3.43.41.41.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.43.41.41.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.43.41.41.6.m1.1d">±</annotation></semantics></math> 0.07</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T3.44.42.42.7">0.51 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.44.42.42.7.m1.1"><semantics id="A2.T3.44.42.42.7.m1.1a"><mo id="A2.T3.44.42.42.7.m1.1.1" xref="A2.T3.44.42.42.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.44.42.42.7.m1.1b"><csymbol cd="latexml" id="A2.T3.44.42.42.7.m1.1.1.cmml" xref="A2.T3.44.42.42.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.44.42.42.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.44.42.42.7.m1.1d">±</annotation></semantics></math> 0.07</td>
</tr>
<tr class="ltx_tr" id="A2.T3.51.49.49">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.51.49.49.8">21</th>
<td class="ltx_td ltx_align_center" id="A2.T3.45.43.43.1">0.4810 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.45.43.43.1.m1.1"><semantics id="A2.T3.45.43.43.1.m1.1a"><mo id="A2.T3.45.43.43.1.m1.1.1" xref="A2.T3.45.43.43.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.45.43.43.1.m1.1b"><csymbol cd="latexml" id="A2.T3.45.43.43.1.m1.1.1.cmml" xref="A2.T3.45.43.43.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.45.43.43.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.45.43.43.1.m1.1d">±</annotation></semantics></math> 0.0052</td>
<td class="ltx_td ltx_align_center" id="A2.T3.46.44.44.2">0.52 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.46.44.44.2.m1.1"><semantics id="A2.T3.46.44.44.2.m1.1a"><mo id="A2.T3.46.44.44.2.m1.1.1" xref="A2.T3.46.44.44.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.46.44.44.2.m1.1b"><csymbol cd="latexml" id="A2.T3.46.44.44.2.m1.1.1.cmml" xref="A2.T3.46.44.44.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.46.44.44.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.46.44.44.2.m1.1d">±</annotation></semantics></math> 0.05</td>
<td class="ltx_td ltx_align_center" id="A2.T3.47.45.45.3">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.47.45.45.3.m1.1"><semantics id="A2.T3.47.45.45.3.m1.1a"><mo id="A2.T3.47.45.45.3.m1.1.1" xref="A2.T3.47.45.45.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.47.45.45.3.m1.1b"><csymbol cd="latexml" id="A2.T3.47.45.45.3.m1.1.1.cmml" xref="A2.T3.47.45.45.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.47.45.45.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.47.45.45.3.m1.1d">±</annotation></semantics></math> 0.06</td>
<td class="ltx_td ltx_align_center" id="A2.T3.48.46.46.4">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.48.46.46.4.m1.1"><semantics id="A2.T3.48.46.46.4.m1.1a"><mo id="A2.T3.48.46.46.4.m1.1.1" xref="A2.T3.48.46.46.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.48.46.46.4.m1.1b"><csymbol cd="latexml" id="A2.T3.48.46.46.4.m1.1.1.cmml" xref="A2.T3.48.46.46.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.48.46.46.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.48.46.46.4.m1.1d">±</annotation></semantics></math> 0.06</td>
<td class="ltx_td ltx_align_center" id="A2.T3.49.47.47.5">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.49.47.47.5.m1.1"><semantics id="A2.T3.49.47.47.5.m1.1a"><mo id="A2.T3.49.47.47.5.m1.1.1" xref="A2.T3.49.47.47.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.49.47.47.5.m1.1b"><csymbol cd="latexml" id="A2.T3.49.47.47.5.m1.1.1.cmml" xref="A2.T3.49.47.47.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.49.47.47.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.49.47.47.5.m1.1d">±</annotation></semantics></math> 0.07</td>
<td class="ltx_td ltx_align_center" id="A2.T3.50.48.48.6">0.52 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.50.48.48.6.m1.1"><semantics id="A2.T3.50.48.48.6.m1.1a"><mo id="A2.T3.50.48.48.6.m1.1.1" xref="A2.T3.50.48.48.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.50.48.48.6.m1.1b"><csymbol cd="latexml" id="A2.T3.50.48.48.6.m1.1.1.cmml" xref="A2.T3.50.48.48.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.50.48.48.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.50.48.48.6.m1.1d">±</annotation></semantics></math> 0.07</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T3.51.49.49.7">0.51 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.51.49.49.7.m1.1"><semantics id="A2.T3.51.49.49.7.m1.1a"><mo id="A2.T3.51.49.49.7.m1.1.1" xref="A2.T3.51.49.49.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.51.49.49.7.m1.1b"><csymbol cd="latexml" id="A2.T3.51.49.49.7.m1.1.1.cmml" xref="A2.T3.51.49.49.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.51.49.49.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.51.49.49.7.m1.1d">±</annotation></semantics></math> 0.07</td>
</tr>
<tr class="ltx_tr" id="A2.T3.58.56.56">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T3.58.56.56.8">last</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T3.52.50.50.1">0.4811 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.52.50.50.1.m1.1"><semantics id="A2.T3.52.50.50.1.m1.1a"><mo id="A2.T3.52.50.50.1.m1.1.1" xref="A2.T3.52.50.50.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.52.50.50.1.m1.1b"><csymbol cd="latexml" id="A2.T3.52.50.50.1.m1.1.1.cmml" xref="A2.T3.52.50.50.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.52.50.50.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.52.50.50.1.m1.1d">±</annotation></semantics></math> 0.0048</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T3.53.51.51.2">0.61 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.53.51.51.2.m1.1"><semantics id="A2.T3.53.51.51.2.m1.1a"><mo id="A2.T3.53.51.51.2.m1.1.1" xref="A2.T3.53.51.51.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.53.51.51.2.m1.1b"><csymbol cd="latexml" id="A2.T3.53.51.51.2.m1.1.1.cmml" xref="A2.T3.53.51.51.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.53.51.51.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.53.51.51.2.m1.1d">±</annotation></semantics></math> 0.09</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T3.54.52.52.3">0.62 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.54.52.52.3.m1.1"><semantics id="A2.T3.54.52.52.3.m1.1a"><mo id="A2.T3.54.52.52.3.m1.1.1" xref="A2.T3.54.52.52.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.54.52.52.3.m1.1b"><csymbol cd="latexml" id="A2.T3.54.52.52.3.m1.1.1.cmml" xref="A2.T3.54.52.52.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.54.52.52.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.54.52.52.3.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T3.55.53.53.4">0.62 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.55.53.53.4.m1.1"><semantics id="A2.T3.55.53.53.4.m1.1a"><mo id="A2.T3.55.53.53.4.m1.1.1" xref="A2.T3.55.53.53.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.55.53.53.4.m1.1b"><csymbol cd="latexml" id="A2.T3.55.53.53.4.m1.1.1.cmml" xref="A2.T3.55.53.53.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.55.53.53.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.55.53.53.4.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T3.56.54.54.5">0.62 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.56.54.54.5.m1.1"><semantics id="A2.T3.56.54.54.5.m1.1a"><mo id="A2.T3.56.54.54.5.m1.1.1" xref="A2.T3.56.54.54.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.56.54.54.5.m1.1b"><csymbol cd="latexml" id="A2.T3.56.54.54.5.m1.1.1.cmml" xref="A2.T3.56.54.54.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.56.54.54.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.56.54.54.5.m1.1d">±</annotation></semantics></math> 0.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T3.57.55.55.6">0.60 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.57.55.55.6.m1.1"><semantics id="A2.T3.57.55.55.6.m1.1a"><mo id="A2.T3.57.55.55.6.m1.1.1" xref="A2.T3.57.55.55.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.57.55.55.6.m1.1b"><csymbol cd="latexml" id="A2.T3.57.55.55.6.m1.1.1.cmml" xref="A2.T3.57.55.55.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.57.55.55.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.57.55.55.6.m1.1d">±</annotation></semantics></math> 0.11</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T3.58.56.56.7">0.58 <math alttext="\pm" class="ltx_Math" display="inline" id="A2.T3.58.56.56.7.m1.1"><semantics id="A2.T3.58.56.56.7.m1.1a"><mo id="A2.T3.58.56.56.7.m1.1.1" xref="A2.T3.58.56.56.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A2.T3.58.56.56.7.m1.1b"><csymbol cd="latexml" id="A2.T3.58.56.56.7.m1.1.1.cmml" xref="A2.T3.58.56.56.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.58.56.56.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A2.T3.58.56.56.7.m1.1d">±</annotation></semantics></math> 0.11</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average monosemanticity scores (MS) achieved by neurons in a SigLIP SoViT-400m model.  The MS metric quantifies how well a neuron's activations are focused on a single concept.  The table shows the average MS for different layers of the model ('layer'),  and for different expansion factors (width of the SAE latent space). 'No SAE' indicates the MS before applying Sparse Autoencoders (SAEs), while the other columns (x1, x2, x4, x8, x16, x64) represent the average MS after applying SAEs with varying latent dimensions.  The image encoder used for calculating the MS was CLIP ViT-B.  This table allows for a comparison of the effectiveness of SAEs in improving monosemanticity at various layers and latent dimensions of the model.
> <details>
> <summary>read the caption</summary>
> Table A3: The average MS of neurons in a SigLIP SoViT-400m model. CLIP ViT-B is used as the image encoder E𝐸Eitalic_E.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T4.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T4.8.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T4.8.7.1.1" rowspan="2"><span class="ltx_text" id="A2.T4.8.7.1.1.1">SAE type</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T4.8.7.1.2" rowspan="2"><span class="ltx_text" id="A2.T4.8.7.1.2.1">Layer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.8.7.1.3" rowspan="2"><span class="ltx_text" id="A2.T4.8.7.1.3.1">No SAE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="A2.T4.8.7.1.4">Expansion factor</th>
</tr>
<tr class="ltx_tr" id="A2.T4.8.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.3.1.1">
<math alttext="\times" class="ltx_Math" display="inline" id="A2.T4.3.1.1.m1.1"><semantics id="A2.T4.3.1.1.m1.1a"><mo id="A2.T4.3.1.1.m1.1.1" xref="A2.T4.3.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T4.3.1.1.m1.1b"><times id="A2.T4.3.1.1.m1.1.1.cmml" xref="A2.T4.3.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.3.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T4.3.1.1.m1.1d">×</annotation></semantics></math>1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.4.2.2">
<math alttext="\times" class="ltx_Math" display="inline" id="A2.T4.4.2.2.m1.1"><semantics id="A2.T4.4.2.2.m1.1a"><mo id="A2.T4.4.2.2.m1.1.1" xref="A2.T4.4.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T4.4.2.2.m1.1b"><times id="A2.T4.4.2.2.m1.1.1.cmml" xref="A2.T4.4.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.4.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T4.4.2.2.m1.1d">×</annotation></semantics></math>2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.5.3.3">
<math alttext="\times" class="ltx_Math" display="inline" id="A2.T4.5.3.3.m1.1"><semantics id="A2.T4.5.3.3.m1.1a"><mo id="A2.T4.5.3.3.m1.1.1" xref="A2.T4.5.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T4.5.3.3.m1.1b"><times id="A2.T4.5.3.3.m1.1.1.cmml" xref="A2.T4.5.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.5.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T4.5.3.3.m1.1d">×</annotation></semantics></math>4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.6.4.4">
<math alttext="\times" class="ltx_Math" display="inline" id="A2.T4.6.4.4.m1.1"><semantics id="A2.T4.6.4.4.m1.1a"><mo id="A2.T4.6.4.4.m1.1.1" xref="A2.T4.6.4.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T4.6.4.4.m1.1b"><times id="A2.T4.6.4.4.m1.1.1.cmml" xref="A2.T4.6.4.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.6.4.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T4.6.4.4.m1.1d">×</annotation></semantics></math>8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.7.5.5">
<math alttext="\times" class="ltx_Math" display="inline" id="A2.T4.7.5.5.m1.1"><semantics id="A2.T4.7.5.5.m1.1a"><mo id="A2.T4.7.5.5.m1.1.1" xref="A2.T4.7.5.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T4.7.5.5.m1.1b"><times id="A2.T4.7.5.5.m1.1.1.cmml" xref="A2.T4.7.5.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.7.5.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T4.7.5.5.m1.1d">×</annotation></semantics></math>16</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.8.6.6">
<math alttext="\times" class="ltx_Math" display="inline" id="A2.T4.8.6.6.m1.1"><semantics id="A2.T4.8.6.6.m1.1a"><mo id="A2.T4.8.6.6.m1.1.1" xref="A2.T4.8.6.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T4.8.6.6.m1.1b"><times id="A2.T4.8.6.6.m1.1.1.cmml" xref="A2.T4.8.6.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.8.6.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T4.8.6.6.m1.1d">×</annotation></semantics></math>64</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T4.8.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T4.8.8.1.1" rowspan="5"><span class="ltx_text" id="A2.T4.8.8.1.1.1">BatchTopK</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T4.8.8.1.2">11</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.8.8.1.3">
<span class="ltx_text" id="A2.T4.8.8.1.3.1" style="color:#00E000;">0.01</span> / <span class="ltx_text" id="A2.T4.8.8.1.3.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.8.8.1.4">
<span class="ltx_text" id="A2.T4.8.8.1.4.1" style="color:#00E000;">0.61</span> / <span class="ltx_text" id="A2.T4.8.8.1.4.2" style="color:#B80000;">-0.02</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.8.8.1.5">
<span class="ltx_text" id="A2.T4.8.8.1.5.1" style="color:#00E000;">0.73</span> / <span class="ltx_text" id="A2.T4.8.8.1.5.2" style="color:#B80000;">-0.08</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.8.8.1.6">
<span class="ltx_text" id="A2.T4.8.8.1.6.1" style="color:#00E000;">0.71</span> / <span class="ltx_text" id="A2.T4.8.8.1.6.2" style="color:#B80000;">-0.06</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.8.8.1.7">
<span class="ltx_text" id="A2.T4.8.8.1.7.1" style="color:#00E000;">0.87</span> / <span class="ltx_text" id="A2.T4.8.8.1.7.2" style="color:#B80000;">-0.07</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.8.8.1.8">
<span class="ltx_text" id="A2.T4.8.8.1.8.1" style="color:#00E000;">0.90</span> / <span class="ltx_text" id="A2.T4.8.8.1.8.2" style="color:#B80000;">-0.10</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T4.8.8.1.9">
<span class="ltx_text" id="A2.T4.8.8.1.9.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T4.8.8.1.9.2" style="color:#B80000;">-0.11</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.8.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.8.9.2.1">17</th>
<td class="ltx_td ltx_align_center" id="A2.T4.8.9.2.2">
<span class="ltx_text" id="A2.T4.8.9.2.2.1" style="color:#00E000;">0.01</span> / <span class="ltx_text" id="A2.T4.8.9.2.2.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.9.2.3">
<span class="ltx_text" id="A2.T4.8.9.2.3.1" style="color:#00E000;">0.65</span> / <span class="ltx_text" id="A2.T4.8.9.2.3.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.9.2.4">
<span class="ltx_text" id="A2.T4.8.9.2.4.1" style="color:#00E000;">0.79</span> / <span class="ltx_text" id="A2.T4.8.9.2.4.2" style="color:#B80000;">-0.02</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.9.2.5">
<span class="ltx_text" id="A2.T4.8.9.2.5.1" style="color:#00E000;">0.86</span> / <span class="ltx_text" id="A2.T4.8.9.2.5.2" style="color:#B80000;">-0.07</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.9.2.6">
<span class="ltx_text" id="A2.T4.8.9.2.6.1" style="color:#00E000;">0.86</span> / <span class="ltx_text" id="A2.T4.8.9.2.6.2" style="color:#B80000;">-0.08</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.9.2.7">
<span class="ltx_text" id="A2.T4.8.9.2.7.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="A2.T4.8.9.2.7.2" style="color:#B80000;">-0.08</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T4.8.9.2.8">
<span class="ltx_text" id="A2.T4.8.9.2.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T4.8.9.2.8.2" style="color:#B80000;">-0.12</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.8.10.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.8.10.3.1">22</th>
<td class="ltx_td ltx_align_center" id="A2.T4.8.10.3.2">
<span class="ltx_text" id="A2.T4.8.10.3.2.1" style="color:#00E000;">0.01</span> / <span class="ltx_text" id="A2.T4.8.10.3.2.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.10.3.3">
<span class="ltx_text" id="A2.T4.8.10.3.3.1" style="color:#00E000;">0.66</span> / <span class="ltx_text" id="A2.T4.8.10.3.3.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.10.3.4">
<span class="ltx_text" id="A2.T4.8.10.3.4.1" style="color:#00E000;">0.79</span> / <span class="ltx_text" id="A2.T4.8.10.3.4.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.10.3.5">
<span class="ltx_text" id="A2.T4.8.10.3.5.1" style="color:#00E000;">0.80</span> / <span class="ltx_text" id="A2.T4.8.10.3.5.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.10.3.6">
<span class="ltx_text" id="A2.T4.8.10.3.6.1" style="color:#00E000;">0.88</span> / <span class="ltx_text" id="A2.T4.8.10.3.6.2" style="color:#B80000;">-0.08</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.10.3.7">
<span class="ltx_text" id="A2.T4.8.10.3.7.1" style="color:#00E000;">0.92</span> / <span class="ltx_text" id="A2.T4.8.10.3.7.2" style="color:#B80000;">-0.06</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T4.8.10.3.8">
<span class="ltx_text" id="A2.T4.8.10.3.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T4.8.10.3.8.2" style="color:#B80000;">-0.11</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.8.11.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.8.11.4.1">23</th>
<td class="ltx_td ltx_align_center" id="A2.T4.8.11.4.2">
<span class="ltx_text" id="A2.T4.8.11.4.2.1" style="color:#00E000;">0.01</span> / <span class="ltx_text" id="A2.T4.8.11.4.2.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.11.4.3">
<span class="ltx_text" id="A2.T4.8.11.4.3.1" style="color:#00E000;">0.73</span> / <span class="ltx_text" id="A2.T4.8.11.4.3.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.11.4.4">
<span class="ltx_text" id="A2.T4.8.11.4.4.1" style="color:#00E000;">0.72</span> / <span class="ltx_text" id="A2.T4.8.11.4.4.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.11.4.5">
<span class="ltx_text" id="A2.T4.8.11.4.5.1" style="color:#00E000;">0.83</span> / <span class="ltx_text" id="A2.T4.8.11.4.5.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.11.4.6">
<span class="ltx_text" id="A2.T4.8.11.4.6.1" style="color:#00E000;">0.89</span> / <span class="ltx_text" id="A2.T4.8.11.4.6.2" style="color:#B80000;">-0.02</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.11.4.7">
<span class="ltx_text" id="A2.T4.8.11.4.7.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="A2.T4.8.11.4.7.2" style="color:#B80000;">-0.06</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T4.8.11.4.8">
<span class="ltx_text" id="A2.T4.8.11.4.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T4.8.11.4.8.2" style="color:#B80000;">-0.10</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.8.12.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.8.12.5.1">last</th>
<td class="ltx_td ltx_align_center" id="A2.T4.8.12.5.2">
<span class="ltx_text" id="A2.T4.8.12.5.2.1" style="color:#00E000;">0.01</span> / <span class="ltx_text" id="A2.T4.8.12.5.2.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.12.5.3">
<span class="ltx_text" id="A2.T4.8.12.5.3.1" style="color:#00E000;">0.57</span> / <span class="ltx_text" id="A2.T4.8.12.5.3.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.12.5.4">
<span class="ltx_text" id="A2.T4.8.12.5.4.1" style="color:#00E000;">0.78</span> / <span class="ltx_text" id="A2.T4.8.12.5.4.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.12.5.5">
<span class="ltx_text" id="A2.T4.8.12.5.5.1" style="color:#00E000;">0.78</span> / <span class="ltx_text" id="A2.T4.8.12.5.5.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.12.5.6">
<span class="ltx_text" id="A2.T4.8.12.5.6.1" style="color:#00E000;">0.81</span> / <span class="ltx_text" id="A2.T4.8.12.5.6.2" style="color:#B80000;">-0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.12.5.7">
<span class="ltx_text" id="A2.T4.8.12.5.7.1" style="color:#00E000;">0.85</span> / <span class="ltx_text" id="A2.T4.8.12.5.7.2" style="color:#B80000;">-0.04</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T4.8.12.5.8">
<span class="ltx_text" id="A2.T4.8.12.5.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T4.8.12.5.8.2" style="color:#B80000;">-0.10</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.8.13.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A2.T4.8.13.6.1" rowspan="5"><span class="ltx_text" id="A2.T4.8.13.6.1.1">Matryoshka</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T4.8.13.6.2">11</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.8.13.6.3">
<span class="ltx_text" id="A2.T4.8.13.6.3.1" style="color:#00E000;">0.01</span> / <span class="ltx_text" id="A2.T4.8.13.6.3.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.8.13.6.4">
<span class="ltx_text" id="A2.T4.8.13.6.4.1" style="color:#00E000;">0.84</span> / <span class="ltx_text" id="A2.T4.8.13.6.4.2" style="color:#B80000;">-0.06</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.8.13.6.5">
<span class="ltx_text" id="A2.T4.8.13.6.5.1" style="color:#00E000;">0.90</span> / <span class="ltx_text" id="A2.T4.8.13.6.5.2" style="color:#B80000;">-0.07</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.8.13.6.6">
<span class="ltx_text" id="A2.T4.8.13.6.6.1" style="color:#00E000;">0.95</span> / <span class="ltx_text" id="A2.T4.8.13.6.6.2" style="color:#B80000;">-0.08</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.8.13.6.7">
<span class="ltx_text" id="A2.T4.8.13.6.7.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T4.8.13.6.7.2" style="color:#B80000;">-0.11</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.8.13.6.8">
<span class="ltx_text" id="A2.T4.8.13.6.8.1" style="color:#00E000;">0.89</span> / <span class="ltx_text" id="A2.T4.8.13.6.8.2" style="color:#B80000;">-0.10</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T4.8.13.6.9">
<span class="ltx_text" id="A2.T4.8.13.6.9.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T4.8.13.6.9.2" style="color:#B80000;">-0.10</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.8.14.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.8.14.7.1">17</th>
<td class="ltx_td ltx_align_center" id="A2.T4.8.14.7.2">
<span class="ltx_text" id="A2.T4.8.14.7.2.1" style="color:#00E000;">0.01</span> / <span class="ltx_text" id="A2.T4.8.14.7.2.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.14.7.3">
<span class="ltx_text" id="A2.T4.8.14.7.3.1" style="color:#00E000;">0.86</span> / <span class="ltx_text" id="A2.T4.8.14.7.3.2" style="color:#B80000;">-0.04</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.14.7.4">
<span class="ltx_text" id="A2.T4.8.14.7.4.1" style="color:#00E000;">0.84</span> / <span class="ltx_text" id="A2.T4.8.14.7.4.2" style="color:#B80000;">-0.05</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.14.7.5">
<span class="ltx_text" id="A2.T4.8.14.7.5.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="A2.T4.8.14.7.5.2" style="color:#B80000;">-0.07</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.14.7.6">
<span class="ltx_text" id="A2.T4.8.14.7.6.1" style="color:#00E000;">0.94</span> / <span class="ltx_text" id="A2.T4.8.14.7.6.2" style="color:#B80000;">-0.08</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.14.7.7">
<span class="ltx_text" id="A2.T4.8.14.7.7.1" style="color:#00E000;">0.96</span> / <span class="ltx_text" id="A2.T4.8.14.7.7.2" style="color:#B80000;">-0.08</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T4.8.14.7.8">
<span class="ltx_text" id="A2.T4.8.14.7.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T4.8.14.7.8.2" style="color:#B80000;">-0.14</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.8.15.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.8.15.8.1">22</th>
<td class="ltx_td ltx_align_center" id="A2.T4.8.15.8.2">
<span class="ltx_text" id="A2.T4.8.15.8.2.1" style="color:#00E000;">0.01</span> / <span class="ltx_text" id="A2.T4.8.15.8.2.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.15.8.3">
<span class="ltx_text" id="A2.T4.8.15.8.3.1" style="color:#00E000;">0.83</span> / <span class="ltx_text" id="A2.T4.8.15.8.3.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.15.8.4">
<span class="ltx_text" id="A2.T4.8.15.8.4.1" style="color:#00E000;">0.83</span> / <span class="ltx_text" id="A2.T4.8.15.8.4.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.15.8.5">
<span class="ltx_text" id="A2.T4.8.15.8.5.1" style="color:#00E000;">0.87</span> / <span class="ltx_text" id="A2.T4.8.15.8.5.2" style="color:#B80000;">-0.02</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.15.8.6">
<span class="ltx_text" id="A2.T4.8.15.8.6.1" style="color:#00E000;">0.94</span> / <span class="ltx_text" id="A2.T4.8.15.8.6.2" style="color:#B80000;">-0.06</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.15.8.7">
<span class="ltx_text" id="A2.T4.8.15.8.7.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T4.8.15.8.7.2" style="color:#B80000;">-0.11</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T4.8.15.8.8">
<span class="ltx_text" id="A2.T4.8.15.8.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T4.8.15.8.8.2" style="color:#B80000;">-0.11</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.8.16.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.8.16.9.1">23</th>
<td class="ltx_td ltx_align_center" id="A2.T4.8.16.9.2">
<span class="ltx_text" id="A2.T4.8.16.9.2.1" style="color:#00E000;">0.01</span> / <span class="ltx_text" id="A2.T4.8.16.9.2.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.16.9.3">
<span class="ltx_text" id="A2.T4.8.16.9.3.1" style="color:#00E000;">0.82</span> / <span class="ltx_text" id="A2.T4.8.16.9.3.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.16.9.4">
<span class="ltx_text" id="A2.T4.8.16.9.4.1" style="color:#00E000;">0.84</span> / <span class="ltx_text" id="A2.T4.8.16.9.4.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.16.9.5">
<span class="ltx_text" id="A2.T4.8.16.9.5.1" style="color:#00E000;">0.89</span> / <span class="ltx_text" id="A2.T4.8.16.9.5.2" style="color:#B80000;">-0.04</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.16.9.6">
<span class="ltx_text" id="A2.T4.8.16.9.6.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="A2.T4.8.16.9.6.2" style="color:#B80000;">-0.04</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.8.16.9.7">
<span class="ltx_text" id="A2.T4.8.16.9.7.1" style="color:#00E000;">0.96</span> / <span class="ltx_text" id="A2.T4.8.16.9.7.2" style="color:#B80000;">-0.06</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T4.8.16.9.8">
<span class="ltx_text" id="A2.T4.8.16.9.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T4.8.16.9.8.2" style="color:#B80000;">-0.11</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.8.17.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T4.8.17.10.1">last</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.8.17.10.2">
<span class="ltx_text" id="A2.T4.8.17.10.2.1" style="color:#00E000;">0.01</span> / <span class="ltx_text" id="A2.T4.8.17.10.2.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.8.17.10.3">
<span class="ltx_text" id="A2.T4.8.17.10.3.1" style="color:#00E000;">0.82</span> / <span class="ltx_text" id="A2.T4.8.17.10.3.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.8.17.10.4">
<span class="ltx_text" id="A2.T4.8.17.10.4.1" style="color:#00E000;">0.91</span> / <span class="ltx_text" id="A2.T4.8.17.10.4.2" style="color:#B80000;">0.01</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.8.17.10.5">
<span class="ltx_text" id="A2.T4.8.17.10.5.1" style="color:#00E000;">0.89</span> / <span class="ltx_text" id="A2.T4.8.17.10.5.2" style="color:#B80000;">-0.03</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.8.17.10.6">
<span class="ltx_text" id="A2.T4.8.17.10.6.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="A2.T4.8.17.10.6.2" style="color:#B80000;">-0.05</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.8.17.10.7">
<span class="ltx_text" id="A2.T4.8.17.10.7.1" style="color:#00E000;">0.91</span> / <span class="ltx_text" id="A2.T4.8.17.10.7.2" style="color:#B80000;">-0.07</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T4.8.17.10.8">
<span class="ltx_text" id="A2.T4.8.17.10.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T4.8.17.10.8.2" style="color:#B80000;">-0.12</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the best and worst monosemanticity scores (MS) achieved by neurons in a CLIP ViT-Large model.  The comparison is made across different expansion factors (1, 2, 4, 8, 16, 64) for two types of sparse autoencoders (SAEs): BatchTopK and Matryoshka. The table displays the MS for each SAE type and layer, indicating how well the SAEs separate and disentangle concepts within the neurons.  The image encoder used for calculating the MS is DINOv2 ViT-B.
> <details>
> <summary>read the caption</summary>
> Table A4: Comparison of the best / worst MS of neurons in a CLIP ViT-L model. DINOv2 ViT-B is used as the image encoder E𝐸Eitalic_E.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T5.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T5.8.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T5.8.7.1.1" rowspan="2"><span class="ltx_text" id="A2.T5.8.7.1.1.1">SAE type</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T5.8.7.1.2" rowspan="2"><span class="ltx_text" id="A2.T5.8.7.1.2.1">Layer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T5.8.7.1.3" rowspan="2"><span class="ltx_text" id="A2.T5.8.7.1.3.1">No SAE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="A2.T5.8.7.1.4">Expansion factor</th>
</tr>
<tr class="ltx_tr" id="A2.T5.8.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T5.3.1.1">
<math alttext="\times" class="ltx_Math" display="inline" id="A2.T5.3.1.1.m1.1"><semantics id="A2.T5.3.1.1.m1.1a"><mo id="A2.T5.3.1.1.m1.1.1" xref="A2.T5.3.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T5.3.1.1.m1.1b"><times id="A2.T5.3.1.1.m1.1.1.cmml" xref="A2.T5.3.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.3.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T5.3.1.1.m1.1d">×</annotation></semantics></math>1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T5.4.2.2">
<math alttext="\times" class="ltx_Math" display="inline" id="A2.T5.4.2.2.m1.1"><semantics id="A2.T5.4.2.2.m1.1a"><mo id="A2.T5.4.2.2.m1.1.1" xref="A2.T5.4.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T5.4.2.2.m1.1b"><times id="A2.T5.4.2.2.m1.1.1.cmml" xref="A2.T5.4.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.4.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T5.4.2.2.m1.1d">×</annotation></semantics></math>2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T5.5.3.3">
<math alttext="\times" class="ltx_Math" display="inline" id="A2.T5.5.3.3.m1.1"><semantics id="A2.T5.5.3.3.m1.1a"><mo id="A2.T5.5.3.3.m1.1.1" xref="A2.T5.5.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T5.5.3.3.m1.1b"><times id="A2.T5.5.3.3.m1.1.1.cmml" xref="A2.T5.5.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.5.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T5.5.3.3.m1.1d">×</annotation></semantics></math>4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T5.6.4.4">
<math alttext="\times" class="ltx_Math" display="inline" id="A2.T5.6.4.4.m1.1"><semantics id="A2.T5.6.4.4.m1.1a"><mo id="A2.T5.6.4.4.m1.1.1" xref="A2.T5.6.4.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T5.6.4.4.m1.1b"><times id="A2.T5.6.4.4.m1.1.1.cmml" xref="A2.T5.6.4.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.6.4.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T5.6.4.4.m1.1d">×</annotation></semantics></math>8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T5.7.5.5">
<math alttext="\times" class="ltx_Math" display="inline" id="A2.T5.7.5.5.m1.1"><semantics id="A2.T5.7.5.5.m1.1a"><mo id="A2.T5.7.5.5.m1.1.1" xref="A2.T5.7.5.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T5.7.5.5.m1.1b"><times id="A2.T5.7.5.5.m1.1.1.cmml" xref="A2.T5.7.5.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.7.5.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T5.7.5.5.m1.1d">×</annotation></semantics></math>16</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T5.8.6.6">
<math alttext="\times" class="ltx_Math" display="inline" id="A2.T5.8.6.6.m1.1"><semantics id="A2.T5.8.6.6.m1.1a"><mo id="A2.T5.8.6.6.m1.1.1" xref="A2.T5.8.6.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T5.8.6.6.m1.1b"><times id="A2.T5.8.6.6.m1.1.1.cmml" xref="A2.T5.8.6.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.8.6.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T5.8.6.6.m1.1d">×</annotation></semantics></math>64</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T5.8.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T5.8.8.1.1" rowspan="4"><span class="ltx_text" id="A2.T5.8.8.1.1.1">BatchTopK</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T5.8.8.1.2">11</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.8.8.1.3">
<span class="ltx_text" id="A2.T5.8.8.1.3.1" style="color:#00E000;">0.49</span> / <span class="ltx_text" id="A2.T5.8.8.1.3.2" style="color:#B80000;">0.48</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.8.8.1.4">
<span class="ltx_text" id="A2.T5.8.8.1.4.1" style="color:#00E000;">0.61</span> / <span class="ltx_text" id="A2.T5.8.8.1.4.2" style="color:#B80000;">0.41</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.8.8.1.5">
<span class="ltx_text" id="A2.T5.8.8.1.5.1" style="color:#00E000;">0.83</span> / <span class="ltx_text" id="A2.T5.8.8.1.5.2" style="color:#B80000;">0.29</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.8.8.1.6">
<span class="ltx_text" id="A2.T5.8.8.1.6.1" style="color:#00E000;">0.88</span> / <span class="ltx_text" id="A2.T5.8.8.1.6.2" style="color:#B80000;">0.27</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.8.8.1.7">
<span class="ltx_text" id="A2.T5.8.8.1.7.1" style="color:#00E000;">0.90</span> / <span class="ltx_text" id="A2.T5.8.8.1.7.2" style="color:#B80000;">0.23</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.8.8.1.8">
<span class="ltx_text" id="A2.T5.8.8.1.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T5.8.8.1.8.2" style="color:#B80000;">0.12</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.8.8.1.9">
<span class="ltx_text" id="A2.T5.8.8.1.9.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T5.8.8.1.9.2" style="color:#B80000;">0.15</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.8.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.8.9.2.1">16</th>
<td class="ltx_td ltx_align_center" id="A2.T5.8.9.2.2">
<span class="ltx_text" id="A2.T5.8.9.2.2.1" style="color:#00E000;">0.53</span> / <span class="ltx_text" id="A2.T5.8.9.2.2.2" style="color:#B80000;">0.47</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.9.2.3">
<span class="ltx_text" id="A2.T5.8.9.2.3.1" style="color:#00E000;">0.74</span> / <span class="ltx_text" id="A2.T5.8.9.2.3.2" style="color:#B80000;">0.38</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.9.2.4">
<span class="ltx_text" id="A2.T5.8.9.2.4.1" style="color:#00E000;">0.75</span> / <span class="ltx_text" id="A2.T5.8.9.2.4.2" style="color:#B80000;">0.34</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.9.2.5">
<span class="ltx_text" id="A2.T5.8.9.2.5.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="A2.T5.8.9.2.5.2" style="color:#B80000;">0.25</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.9.2.6">
<span class="ltx_text" id="A2.T5.8.9.2.6.1" style="color:#00E000;">0.94</span> / <span class="ltx_text" id="A2.T5.8.9.2.6.2" style="color:#B80000;">0.20</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.9.2.7">
<span class="ltx_text" id="A2.T5.8.9.2.7.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="A2.T5.8.9.2.7.2" style="color:#B80000;">0.22</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.8.9.2.8">
<span class="ltx_text" id="A2.T5.8.9.2.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T5.8.9.2.8.2" style="color:#B80000;">0.18</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.8.10.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.8.10.3.1">21</th>
<td class="ltx_td ltx_align_center" id="A2.T5.8.10.3.2">
<span class="ltx_text" id="A2.T5.8.10.3.2.1" style="color:#00E000;">0.54</span> / <span class="ltx_text" id="A2.T5.8.10.3.2.2" style="color:#B80000;">0.47</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.10.3.3">
<span class="ltx_text" id="A2.T5.8.10.3.3.1" style="color:#00E000;">0.76</span> / <span class="ltx_text" id="A2.T5.8.10.3.3.2" style="color:#B80000;">0.38</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.10.3.4">
<span class="ltx_text" id="A2.T5.8.10.3.4.1" style="color:#00E000;">0.77</span> / <span class="ltx_text" id="A2.T5.8.10.3.4.2" style="color:#B80000;">0.35</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.10.3.5">
<span class="ltx_text" id="A2.T5.8.10.3.5.1" style="color:#00E000;">0.83</span> / <span class="ltx_text" id="A2.T5.8.10.3.5.2" style="color:#B80000;">0.25</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.10.3.6">
<span class="ltx_text" id="A2.T5.8.10.3.6.1" style="color:#00E000;">0.89</span> / <span class="ltx_text" id="A2.T5.8.10.3.6.2" style="color:#B80000;">0.17</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.10.3.7">
<span class="ltx_text" id="A2.T5.8.10.3.7.1" style="color:#00E000;">0.95</span> / <span class="ltx_text" id="A2.T5.8.10.3.7.2" style="color:#B80000;">0.20</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.8.10.3.8">
<span class="ltx_text" id="A2.T5.8.10.3.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T5.8.10.3.8.2" style="color:#B80000;">0.11</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.8.11.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.8.11.4.1">last</th>
<td class="ltx_td ltx_align_center" id="A2.T5.8.11.4.2">
<span class="ltx_text" id="A2.T5.8.11.4.2.1" style="color:#00E000;">0.50</span> / <span class="ltx_text" id="A2.T5.8.11.4.2.2" style="color:#B80000;">0.47</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.11.4.3">
<span class="ltx_text" id="A2.T5.8.11.4.3.1" style="color:#00E000;">0.83</span> / <span class="ltx_text" id="A2.T5.8.11.4.3.2" style="color:#B80000;">0.41</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.11.4.4">
<span class="ltx_text" id="A2.T5.8.11.4.4.1" style="color:#00E000;">0.86</span> / <span class="ltx_text" id="A2.T5.8.11.4.4.2" style="color:#B80000;">0.40</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.11.4.5">
<span class="ltx_text" id="A2.T5.8.11.4.5.1" style="color:#00E000;">0.88</span> / <span class="ltx_text" id="A2.T5.8.11.4.5.2" style="color:#B80000;">0.37</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.11.4.6">
<span class="ltx_text" id="A2.T5.8.11.4.6.1" style="color:#00E000;">0.92</span> / <span class="ltx_text" id="A2.T5.8.11.4.6.2" style="color:#B80000;">0.33</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.11.4.7">
<span class="ltx_text" id="A2.T5.8.11.4.7.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="A2.T5.8.11.4.7.2" style="color:#B80000;">0.20</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.8.11.4.8">
<span class="ltx_text" id="A2.T5.8.11.4.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T5.8.11.4.8.2" style="color:#B80000;">0.11</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.8.12.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A2.T5.8.12.5.1" rowspan="4"><span class="ltx_text" id="A2.T5.8.12.5.1.1">Matryoshka</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T5.8.12.5.2">11</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.8.12.5.3">
<span class="ltx_text" id="A2.T5.8.12.5.3.1" style="color:#00E000;">0.49</span> / <span class="ltx_text" id="A2.T5.8.12.5.3.2" style="color:#B80000;">0.48</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.8.12.5.4">
<span class="ltx_text" id="A2.T5.8.12.5.4.1" style="color:#00E000;">0.70</span> / <span class="ltx_text" id="A2.T5.8.12.5.4.2" style="color:#B80000;">0.40</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.8.12.5.5">
<span class="ltx_text" id="A2.T5.8.12.5.5.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="A2.T5.8.12.5.5.2" style="color:#B80000;">0.29</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.8.12.5.6">
<span class="ltx_text" id="A2.T5.8.12.5.6.1" style="color:#00E000;">0.77</span> / <span class="ltx_text" id="A2.T5.8.12.5.6.2" style="color:#B80000;">0.27</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.8.12.5.7">
<span class="ltx_text" id="A2.T5.8.12.5.7.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="A2.T5.8.12.5.7.2" style="color:#B80000;">0.18</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.8.12.5.8">
<span class="ltx_text" id="A2.T5.8.12.5.8.1" style="color:#00E000;">0.91</span> / <span class="ltx_text" id="A2.T5.8.12.5.8.2" style="color:#B80000;">0.22</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.8.12.5.9">
<span class="ltx_text" id="A2.T5.8.12.5.9.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T5.8.12.5.9.2" style="color:#B80000;">0.16</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.8.13.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.8.13.6.1">16</th>
<td class="ltx_td ltx_align_center" id="A2.T5.8.13.6.2">
<span class="ltx_text" id="A2.T5.8.13.6.2.1" style="color:#00E000;">0.53</span> / <span class="ltx_text" id="A2.T5.8.13.6.2.2" style="color:#B80000;">0.47</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.13.6.3">
<span class="ltx_text" id="A2.T5.8.13.6.3.1" style="color:#00E000;">0.78</span> / <span class="ltx_text" id="A2.T5.8.13.6.3.2" style="color:#B80000;">0.40</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.13.6.4">
<span class="ltx_text" id="A2.T5.8.13.6.4.1" style="color:#00E000;">0.84</span> / <span class="ltx_text" id="A2.T5.8.13.6.4.2" style="color:#B80000;">0.29</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.13.6.5">
<span class="ltx_text" id="A2.T5.8.13.6.5.1" style="color:#00E000;">0.91</span> / <span class="ltx_text" id="A2.T5.8.13.6.5.2" style="color:#B80000;">0.19</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.13.6.6">
<span class="ltx_text" id="A2.T5.8.13.6.6.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="A2.T5.8.13.6.6.2" style="color:#B80000;">0.18</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.13.6.7">
<span class="ltx_text" id="A2.T5.8.13.6.7.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T5.8.13.6.7.2" style="color:#B80000;">0.19</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.8.13.6.8">
<span class="ltx_text" id="A2.T5.8.13.6.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T5.8.13.6.8.2" style="color:#B80000;">0.16</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.8.14.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.8.14.7.1">21</th>
<td class="ltx_td ltx_align_center" id="A2.T5.8.14.7.2">
<span class="ltx_text" id="A2.T5.8.14.7.2.1" style="color:#00E000;">0.54</span> / <span class="ltx_text" id="A2.T5.8.14.7.2.2" style="color:#B80000;">0.47</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.14.7.3">
<span class="ltx_text" id="A2.T5.8.14.7.3.1" style="color:#00E000;">0.85</span> / <span class="ltx_text" id="A2.T5.8.14.7.3.2" style="color:#B80000;">0.39</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.14.7.4">
<span class="ltx_text" id="A2.T5.8.14.7.4.1" style="color:#00E000;">0.81</span> / <span class="ltx_text" id="A2.T5.8.14.7.4.2" style="color:#B80000;">0.37</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.14.7.5">
<span class="ltx_text" id="A2.T5.8.14.7.5.1" style="color:#00E000;">0.83</span> / <span class="ltx_text" id="A2.T5.8.14.7.5.2" style="color:#B80000;">0.25</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.14.7.6">
<span class="ltx_text" id="A2.T5.8.14.7.6.1" style="color:#00E000;">0.93</span> / <span class="ltx_text" id="A2.T5.8.14.7.6.2" style="color:#B80000;">0.24</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.8.14.7.7">
<span class="ltx_text" id="A2.T5.8.14.7.7.1" style="color:#00E000;">0.94</span> / <span class="ltx_text" id="A2.T5.8.14.7.7.2" style="color:#B80000;">0.21</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.8.14.7.8">
<span class="ltx_text" id="A2.T5.8.14.7.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T5.8.14.7.8.2" style="color:#B80000;">0.15</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.8.15.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T5.8.15.8.1">last</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.8.15.8.2">
<span class="ltx_text" id="A2.T5.8.15.8.2.1" style="color:#00E000;">0.50</span> / <span class="ltx_text" id="A2.T5.8.15.8.2.2" style="color:#B80000;">0.47</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.8.15.8.3">
<span class="ltx_text" id="A2.T5.8.15.8.3.1" style="color:#00E000;">0.87</span> / <span class="ltx_text" id="A2.T5.8.15.8.3.2" style="color:#B80000;">0.40</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.8.15.8.4">
<span class="ltx_text" id="A2.T5.8.15.8.4.1" style="color:#00E000;">0.87</span> / <span class="ltx_text" id="A2.T5.8.15.8.4.2" style="color:#B80000;">0.38</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.8.15.8.5">
<span class="ltx_text" id="A2.T5.8.15.8.5.1" style="color:#00E000;">0.89</span> / <span class="ltx_text" id="A2.T5.8.15.8.5.2" style="color:#B80000;">0.30</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.8.15.8.6">
<span class="ltx_text" id="A2.T5.8.15.8.6.1" style="color:#00E000;">0.91</span> / <span class="ltx_text" id="A2.T5.8.15.8.6.2" style="color:#B80000;">0.25</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.8.15.8.7">
<span class="ltx_text" id="A2.T5.8.15.8.7.1" style="color:#00E000;">0.94</span> / <span class="ltx_text" id="A2.T5.8.15.8.7.2" style="color:#B80000;">0.15</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T5.8.15.8.8">
<span class="ltx_text" id="A2.T5.8.15.8.8.1" style="color:#00E000;">1.00</span> / <span class="ltx_text" id="A2.T5.8.15.8.8.2" style="color:#B80000;">0.15</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the best and worst monosemanticity scores (MS) achieved by neurons in a SigLIP SoViT-400m model.  Monosemanticity refers to how focused a neuron's activation is on a single concept.  The table shows these scores for two different SAE (Sparse Autoencoder) methods (BatchTopK and Matryoshka), across various layers of the model and different expansion factors. The image encoder used for calculating MS is CLIP ViT-L. Higher MS indicates better concept separation and thus higher interpretability.
> <details>
> <summary>read the caption</summary>
> Table A5: Comparison of the best / worst MS of neurons in a SigLIP SoViT-400m model. CLIP ViT-L is used as the image encoder E𝐸Eitalic_E.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T6.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T6.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T6.5.1.1.1.1" rowspan="2"><span class="ltx_text" id="A3.T6.5.1.1.1.1.1">SAE type</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T6.5.1.1.1.2" rowspan="2"><span class="ltx_text" id="A3.T6.5.1.1.1.2.1">Layer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T6.5.1.1.1.3" rowspan="2"><span class="ltx_text" id="A3.T6.5.1.1.1.3.1">No SAE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="A3.T6.5.1.1.1.4">Expansion factor</th>
</tr>
<tr class="ltx_tr" id="A3.T6.5.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T6.5.1.2.2.1">x1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T6.5.1.2.2.2">x2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T6.5.1.2.2.3">x4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T6.5.1.2.2.4">x8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T6.5.1.2.2.5">x16</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T6.5.1.2.2.6">x64</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T6.5.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T6.5.1.3.1.1" rowspan="5"><span class="ltx_text" id="A3.T6.5.1.3.1.1.1">BatchTopK</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T6.5.1.3.1.2">11</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A3.T6.5.1.3.1.3">100</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.1.3.1.4">74.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.1.3.1.5">75.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.1.3.1.6">75.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.1.3.1.7">75.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.1.3.1.8">74.7</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T6.5.1.3.1.9">73.5</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T6.5.1.4.2.1">17</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T6.5.1.4.2.2">100</th>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.4.2.3">70.4</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.4.2.4">71.9</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.4.2.5">72.6</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.4.2.6">72.9</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.4.2.7">72.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.1.4.2.8">72.5</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T6.5.1.5.3.1">22</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T6.5.1.5.3.2">100</th>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.5.3.3">68.7</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.5.3.4">72.6</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.5.3.5">74.9</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.5.3.6">76.0</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.5.3.7">76.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.1.5.3.8">77.4</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T6.5.1.6.4.1">23</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T6.5.1.6.4.2">100</th>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.6.4.3">67.2</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.6.4.4">71.5</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.6.4.5">74.0</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.6.4.6">75.3</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.6.4.7">76.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.1.6.4.8">76.8</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T6.5.1.7.5.1">last</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T6.5.1.7.5.2">100</th>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.7.5.3">70.1</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.7.5.4">74.6</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.7.5.5">77.1</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.7.5.6">78.2</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.7.5.7">78.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.1.7.5.8">79.1</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A3.T6.5.1.8.6.1" rowspan="5"><span class="ltx_text" id="A3.T6.5.1.8.6.1.1">Matryoshka</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T6.5.1.8.6.2">11</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A3.T6.5.1.8.6.3">100</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.1.8.6.4">72.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.1.8.6.5">73.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.1.8.6.6">74.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.1.8.6.7">75.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.1.8.6.8">75.2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T6.5.1.8.6.9">74.5</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T6.5.1.9.7.1">17</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T6.5.1.9.7.2">100</th>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.9.7.3">67.3</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.9.7.4">69.5</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.9.7.5">70.7</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.9.7.6">71.8</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.9.7.7">72.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.1.9.7.8">72.7</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T6.5.1.10.8.1">22</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T6.5.1.10.8.2">100</th>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.10.8.3">65.5</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.10.8.4">69.6</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.10.8.5">71.5</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.10.8.6">74.0</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.10.8.7">75.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.1.10.8.8">76.6</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T6.5.1.11.9.1">23</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T6.5.1.11.9.2">100</th>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.11.9.3">63.9</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.11.9.4">68.5</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.11.9.5">71.0</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.11.9.6">73.1</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.1.11.9.7">74.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.1.11.9.8">74.6</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A3.T6.5.1.12.10.1">last</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A3.T6.5.1.12.10.2">100</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.1.12.10.3">66.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.1.12.10.4">71.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.1.12.10.5">74.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.1.12.10.6">76.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.1.12.10.7">77.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A3.T6.5.1.12.10.8">78.2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Fraction of Variance Explained (FVE) achieved by different Sparse Autoencoders (SAEs) when trained on a CLIP ViT-L model.  The SAEs are all configured with a sparsity parameter (K) set to 20.  The table compares the FVE for different SAE architectures (BatchTopK and Matryoshka) across various layers of the CLIP model and different expansion factors (the width of the latent layer in the SAE).  The FVE values indicate the proportion of variance in the original CLIP activations that the SAE can reconstruct. Higher FVE values suggest that the SAE is more effectively capturing the information present in the original data.
> <details>
> <summary>read the caption</summary>
> Table A6: Comparison of Fraction of Variance Explained (FVE) by different SAEs trained with K=20𝐾20K=20italic_K = 20 for a CLIP ViT-L model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T7.7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T7.7.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T7.7.1.1.1.1" rowspan="2"><span class="ltx_text" id="A3.T7.7.1.1.1.1.1">SAE type</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T7.7.1.1.1.2" rowspan="2"><span class="ltx_text" id="A3.T7.7.1.1.1.2.1">Layer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T7.7.1.1.1.3" rowspan="2"><span class="ltx_text" id="A3.T7.7.1.1.1.3.1">No SAE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="A3.T7.7.1.1.1.4">Expansion factor</th>
</tr>
<tr class="ltx_tr" id="A3.T7.7.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T7.7.1.2.2.1">x1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T7.7.1.2.2.2">x2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T7.7.1.2.2.3">x4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T7.7.1.2.2.4">x8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T7.7.1.2.2.5">x16</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T7.7.1.2.2.6">x64</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T7.7.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T7.7.1.3.1.1" rowspan="5"><span class="ltx_text" id="A3.T7.7.1.3.1.1.1">BatchTopK</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T7.7.1.3.1.2">11</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A3.T7.7.1.3.1.3">1024</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.7.1.3.1.4">19.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.7.1.3.1.5">19.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.7.1.3.1.6">19.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.7.1.3.1.7">19.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.7.1.3.1.8">20.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T7.7.1.3.1.9">22.9</td>
</tr>
<tr class="ltx_tr" id="A3.T7.7.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T7.7.1.4.2.1">17</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T7.7.1.4.2.2">1024</th>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.4.2.3">19.4</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.4.2.4">19.4</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.4.2.5">19.2</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.4.2.6">19.6</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.4.2.7">19.5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.7.1.4.2.8">22.3</td>
</tr>
<tr class="ltx_tr" id="A3.T7.7.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T7.7.1.5.3.1">22</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T7.7.1.5.3.2">1024</th>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.5.3.3">19.6</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.5.3.4">19.7</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.5.3.5">19.7</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.5.3.6">19.8</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.5.3.7">20.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.7.1.5.3.8">23.0</td>
</tr>
<tr class="ltx_tr" id="A3.T7.7.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T7.7.1.6.4.1">23</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T7.7.1.6.4.2">1024</th>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.6.4.3">19.8</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.6.4.4">19.8</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.6.4.5">19.9</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.6.4.6">20.1</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.6.4.7">20.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.7.1.6.4.8">22.2</td>
</tr>
<tr class="ltx_tr" id="A3.T7.7.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T7.7.1.7.5.1">last</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T7.7.1.7.5.2">768</th>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.7.5.3">19.9</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.7.5.4">19.9</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.7.5.5">19.9</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.7.5.6">20.1</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.7.5.7">20.2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.7.1.7.5.8">22.2</td>
</tr>
<tr class="ltx_tr" id="A3.T7.7.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A3.T7.7.1.8.6.1" rowspan="5"><span class="ltx_text" id="A3.T7.7.1.8.6.1.1">Matryoshka</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T7.7.1.8.6.2">11</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A3.T7.7.1.8.6.3">1024</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.7.1.8.6.4">19.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.7.1.8.6.5">19.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.7.1.8.6.6">19.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.7.1.8.6.7">19.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.7.1.8.6.8">19.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T7.7.1.8.6.9">21.3</td>
</tr>
<tr class="ltx_tr" id="A3.T7.7.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T7.7.1.9.7.1">17</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T7.7.1.9.7.2">1024</th>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.9.7.3">19.3</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.9.7.4">19.3</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.9.7.5">19.3</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.9.7.6">19.4</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.9.7.7">19.5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.7.1.9.7.8">20.5</td>
</tr>
<tr class="ltx_tr" id="A3.T7.7.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T7.7.1.10.8.1">22</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T7.7.1.10.8.2">1024</th>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.10.8.3">19.7</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.10.8.4">19.7</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.10.8.5">19.6</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.10.8.6">19.8</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.10.8.7">19.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.7.1.10.8.8">22.0</td>
</tr>
<tr class="ltx_tr" id="A3.T7.7.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T7.7.1.11.9.1">23</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T7.7.1.11.9.2">1024</th>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.11.9.3">19.7</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.11.9.4">19.8</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.11.9.5">19.8</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.11.9.6">19.9</td>
<td class="ltx_td ltx_align_center" id="A3.T7.7.1.11.9.7">20.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.7.1.11.9.8">25.1</td>
</tr>
<tr class="ltx_tr" id="A3.T7.7.1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A3.T7.7.1.12.10.1">last</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A3.T7.7.1.12.10.2">768</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.7.1.12.10.3">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.7.1.12.10.4">19.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.7.1.12.10.5">19.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.7.1.12.10.6">19.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.7.1.12.10.7">20.2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A3.T7.7.1.12.10.8">22.5</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A7 presents a comparison of the true sparsity levels achieved by different Sparse Autoencoders (SAEs) when trained on a CLIP ViT-L model.  The sparsity is measured using the L0-norm, a metric that counts the number of non-zero elements in a vector.  The table shows the results for various SAEs (BatchTopK and Matryoshka) across different layers of the model, each trained with a sparsity constraint K=20, and across different expansion factors.
> <details>
> <summary>read the caption</summary>
> Table A7: Comparison of true sparsity measured by L0⁢-normsubscript𝐿0-normL_{0}\text{-norm}italic_L start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT -norm for different SAEs trained with K=20𝐾20K=20italic_K = 20 for a CLIP ViT-L model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T8.12.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T8.7.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T8.5.1.1.1" rowspan="2"><span class="ltx_text" id="A3.T8.5.1.1.1.1"><math alttext="K" class="ltx_Math" display="inline" id="A3.T8.5.1.1.1.1.m1.1"><semantics id="A3.T8.5.1.1.1.1.m1.1a"><mi id="A3.T8.5.1.1.1.1.m1.1.1" xref="A3.T8.5.1.1.1.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="A3.T8.5.1.1.1.1.m1.1b"><ci id="A3.T8.5.1.1.1.1.m1.1.1.cmml" xref="A3.T8.5.1.1.1.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.5.1.1.1.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="A3.T8.5.1.1.1.1.m1.1d">italic_K</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T8.6.2.2.2" rowspan="2"><span class="ltx_text" id="A3.T8.6.2.2.2.1"><math alttext="L_{0}" class="ltx_Math" display="inline" id="A3.T8.6.2.2.2.1.m1.1"><semantics id="A3.T8.6.2.2.2.1.m1.1a"><msub id="A3.T8.6.2.2.2.1.m1.1.1" xref="A3.T8.6.2.2.2.1.m1.1.1.cmml"><mi id="A3.T8.6.2.2.2.1.m1.1.1.2" xref="A3.T8.6.2.2.2.1.m1.1.1.2.cmml">L</mi><mn id="A3.T8.6.2.2.2.1.m1.1.1.3" xref="A3.T8.6.2.2.2.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T8.6.2.2.2.1.m1.1b"><apply id="A3.T8.6.2.2.2.1.m1.1.1.cmml" xref="A3.T8.6.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T8.6.2.2.2.1.m1.1.1.1.cmml" xref="A3.T8.6.2.2.2.1.m1.1.1">subscript</csymbol><ci id="A3.T8.6.2.2.2.1.m1.1.1.2.cmml" xref="A3.T8.6.2.2.2.1.m1.1.1.2">𝐿</ci><cn id="A3.T8.6.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="A3.T8.6.2.2.2.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.6.2.2.2.1.m1.1c">L_{0}</annotation><annotation encoding="application/x-llamapun" id="A3.T8.6.2.2.2.1.m1.1d">italic_L start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T8.7.3.3.3" rowspan="2"><span class="ltx_text" id="A3.T8.7.3.3.3.1">FVE <math alttext="(\%)" class="ltx_math_unparsed" display="inline" id="A3.T8.7.3.3.3.1.m1.1"><semantics id="A3.T8.7.3.3.3.1.m1.1a"><mrow id="A3.T8.7.3.3.3.1.m1.1b"><mo id="A3.T8.7.3.3.3.1.m1.1.1" stretchy="false">(</mo><mo id="A3.T8.7.3.3.3.1.m1.1.2">%</mo><mo id="A3.T8.7.3.3.3.1.m1.1.3" stretchy="false">)</mo></mrow><annotation encoding="application/x-tex" id="A3.T8.7.3.3.3.1.m1.1c">(\%)</annotation><annotation encoding="application/x-llamapun" id="A3.T8.7.3.3.3.1.m1.1d">( % )</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A3.T8.7.3.3.4">MS</th>
</tr>
<tr class="ltx_tr" id="A3.T8.12.8.9.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T8.12.8.9.1.1">Min</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T8.12.8.9.1.2">Max</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T8.12.8.9.1.3">Mean</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T8.8.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.8.4.4.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.8.4.4.3">0.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.8.4.4.4">31.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.8.4.4.5">0.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.8.4.4.6">0.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.8.4.4.1">0.70 <math alttext="\pm" class="ltx_Math" display="inline" id="A3.T8.8.4.4.1.m1.1"><semantics id="A3.T8.8.4.4.1.m1.1a"><mo id="A3.T8.8.4.4.1.m1.1.1" xref="A3.T8.8.4.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T8.8.4.4.1.m1.1b"><csymbol cd="latexml" id="A3.T8.8.4.4.1.m1.1.1.cmml" xref="A3.T8.8.4.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.8.4.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T8.8.4.4.1.m1.1d">±</annotation></semantics></math> 0.08</td>
</tr>
<tr class="ltx_tr" id="A3.T8.9.5.5">
<td class="ltx_td ltx_align_center" id="A3.T8.9.5.5.2">10</td>
<td class="ltx_td ltx_align_center" id="A3.T8.9.5.5.3">9.9</td>
<td class="ltx_td ltx_align_center" id="A3.T8.9.5.5.4">60.6</td>
<td class="ltx_td ltx_align_center" id="A3.T8.9.5.5.5">0.40</td>
<td class="ltx_td ltx_align_center" id="A3.T8.9.5.5.6">0.85</td>
<td class="ltx_td ltx_align_center" id="A3.T8.9.5.5.1">0.61 <math alttext="\pm" class="ltx_Math" display="inline" id="A3.T8.9.5.5.1.m1.1"><semantics id="A3.T8.9.5.5.1.m1.1a"><mo id="A3.T8.9.5.5.1.m1.1.1" xref="A3.T8.9.5.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T8.9.5.5.1.m1.1b"><csymbol cd="latexml" id="A3.T8.9.5.5.1.m1.1.1.cmml" xref="A3.T8.9.5.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.9.5.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T8.9.5.5.1.m1.1d">±</annotation></semantics></math> 0.09</td>
</tr>
<tr class="ltx_tr" id="A3.T8.10.6.6">
<td class="ltx_td ltx_align_center" id="A3.T8.10.6.6.2">20</td>
<td class="ltx_td ltx_align_center" id="A3.T8.10.6.6.3">20.0</td>
<td class="ltx_td ltx_align_center" id="A3.T8.10.6.6.4">66.8</td>
<td class="ltx_td ltx_align_center" id="A3.T8.10.6.6.5">0.41</td>
<td class="ltx_td ltx_align_center" id="A3.T8.10.6.6.6">0.85</td>
<td class="ltx_td ltx_align_center" id="A3.T8.10.6.6.1">0.59 <math alttext="\pm" class="ltx_Math" display="inline" id="A3.T8.10.6.6.1.m1.1"><semantics id="A3.T8.10.6.6.1.m1.1a"><mo id="A3.T8.10.6.6.1.m1.1.1" xref="A3.T8.10.6.6.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T8.10.6.6.1.m1.1b"><csymbol cd="latexml" id="A3.T8.10.6.6.1.m1.1.1.cmml" xref="A3.T8.10.6.6.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.10.6.6.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T8.10.6.6.1.m1.1d">±</annotation></semantics></math> 0.09</td>
</tr>
<tr class="ltx_tr" id="A3.T8.11.7.7">
<td class="ltx_td ltx_align_center" id="A3.T8.11.7.7.2">50</td>
<td class="ltx_td ltx_align_center" id="A3.T8.11.7.7.3">50.1</td>
<td class="ltx_td ltx_align_center" id="A3.T8.11.7.7.4">74.9</td>
<td class="ltx_td ltx_align_center" id="A3.T8.11.7.7.5">0.41</td>
<td class="ltx_td ltx_align_center" id="A3.T8.11.7.7.6">0.81</td>
<td class="ltx_td ltx_align_center" id="A3.T8.11.7.7.1">0.53 <math alttext="\pm" class="ltx_Math" display="inline" id="A3.T8.11.7.7.1.m1.1"><semantics id="A3.T8.11.7.7.1.m1.1a"><mo id="A3.T8.11.7.7.1.m1.1.1" xref="A3.T8.11.7.7.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T8.11.7.7.1.m1.1b"><csymbol cd="latexml" id="A3.T8.11.7.7.1.m1.1.1.cmml" xref="A3.T8.11.7.7.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.11.7.7.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T8.11.7.7.1.m1.1d">±</annotation></semantics></math> 0.07</td>
</tr>
<tr class="ltx_tr" id="A3.T8.12.8.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T8.12.8.8.2">No SAE</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T8.12.8.8.3">–</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T8.12.8.8.4">–</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T8.12.8.8.5">0.47</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T8.12.8.8.6">0.50</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T8.12.8.8.1">0.48 <math alttext="\pm" class="ltx_Math" display="inline" id="A3.T8.12.8.8.1.m1.1"><semantics id="A3.T8.12.8.8.1.m1.1a"><mo id="A3.T8.12.8.8.1.m1.1.1" xref="A3.T8.12.8.8.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T8.12.8.8.1.m1.1b"><csymbol cd="latexml" id="A3.T8.12.8.8.1.m1.1.1.cmml" xref="A3.T8.12.8.8.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.12.8.8.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T8.12.8.8.1.m1.1d">±</annotation></semantics></math> 0.00</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A8 presents a detailed statistical analysis of Sparse Autoencoders (SAEs) trained with varying sparsity constraints (K).  It compares the performance of SAEs with different K values against a baseline of using raw activations (no SAE).  The analysis focuses on the last layer of the model, using an expansion factor of 16. The table provides key metrics to evaluate the effectiveness of the SAEs in terms of reconstruction quality (Fraction of Variance Explained, or FVE), sparsity (L1 norm), and the Monosemanticity Score (MS) which measures how well the neurons focus on single concepts.  The MS is further broken down into minimum, maximum, and average values, along with standard deviation, providing a comprehensive evaluation of the impact of different sparsity levels on the quality of the learned representations.
> <details>
> <summary>read the caption</summary>
> Table A8: Statistics for SAEs trained with different sparsity constraint K𝐾Kitalic_K on activations of the last layer with expansion factor 16161616. “No SAE” row contains results for raw activations before attaching the SAE.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.02821/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02821/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02821/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02821/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02821/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02821/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02821/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02821/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02821/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02821/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02821/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02821/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02821/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02821/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02821/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02821/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}