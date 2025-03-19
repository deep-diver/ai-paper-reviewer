---
title: "MM-Spatial: Exploring 3D Spatial Understanding in Multimodal LLMs"
summary: "MM-Spatial enhances multimodal LLMs with 3D spatial reasoning via a novel dataset and benchmark, improving performance on spatial understanding tasks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Apple",]
showSummary: true
date: 2025-03-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.13111 {{< /keyword >}}
{{< keyword icon="writer" >}} Erik Daxberger et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.13111" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.13111" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.13111/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current Multimodal Large Language Models(MLLMs) are not good at reasoning 3D space, even though the ability to reason about 3D scenes is important for real world applications like robotics and AR/VR. The current methods also do not use depth and multi-view images effectively. The paper addresses this limitation by introducing high-quality 3D scene data with annotations to enable MLLMs to better understand 3D space and use multi-view images and depth information effectively. 



The paper has 2 major contributions: The researchers introduce a novel dataset called Cubify Anything VQA (CA-VQA) and create a new evaluation benchmark, focused on indoor scenes. The new dataset covers diverse spatial tasks like predicting spatial relations and predicting metric size. It also uses metric depth and multi-view inputs. The paper also introduces MM-Spatial, a generalist MLLM that excels at 3D spatial understanding and achieves state-of-the-art performance on 3D spatial understanding benchmarks, including the benchmark created in this paper.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces CA-VQA, a new dataset and benchmark for 3D spatial understanding in indoor scenes. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MM-Spatial, a generalist MLLM, achieves state-of-the-art performance on 3D spatial understanding benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates that multi-view and depth inputs significantly enhance 3D understanding in MLLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research offers a **new 3D spatial understanding dataset and benchmark**, enabling MLLMs to reason effectively about 3D environments. It **improves performance** and **opens new avenues** for research in robotics, AR/VR, and general visual comprehension by better understanding multi-view and depth information.

------
#### Visual Insights



![](https://arxiv.org/html/2503.13111/extracted/6286766/figures/Dataset_Sample.png)

> 🔼 Figure 1 illustrates the two main contributions of the paper. The left panel showcases the Cubify Anything VQA (CA-VQA) dataset and benchmark.  CA-VQA is designed to evaluate 3D spatial reasoning abilities in multimodal large language models (MLLMs). It offers diverse input modalities, including single images, sensor-based and estimated depth maps, and multiple views or frames.  The benchmark covers a wide array of spatial understanding tasks such as predicting relative spatial relationships between objects, estimating distances and sizes, and performing 3D object grounding. The right panel describes MM-Spatial, a novel multimodal LLM developed by the authors, which excels at 3D spatial understanding. MM-Spatial uses a chain-of-thought (CoT) reasoning process. It leverages 2D object grounding and depth estimation capabilities to answer complex spatial queries, and can even incorporate depth input through tool-use. 
> <details>
> <summary>read the caption</summary>
> Figure 1:  (Left) We generate the Cubify Anything VQA (CA-VQA) dataset and benchmark, covering various 1) input signals: single image, metric depth (sensor-based and estimated), multi-frame/-view, and 2) spatial understanding tasks: e.g., relationship prediction, metric estimation, 3D grounding. (Right) We train MM-Spatial, a generalist multimodal LLM that excels at 3D spatial understanding. It supports Chain-of-Thought spatial reasoning involving 2D grounding and depth estimation, and can also leverage depth input via tool-use.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.1">
<tr class="ltx_tr" id="S1.T1.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S1.T1.2.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S1.T1.2.1.1.2" rowspan="3"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.2.1">Data source(s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.1.3" rowspan="3"><span class="ltx_text" id="S1.T1.2.1.1.3.1"><span class="ltx_text" id="S1.T1.2.1.1.3.1.1"></span> <span class="ltx_text" id="S1.T1.2.1.1.3.1.2">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.1.3.1.2.1">
<span class="ltx_tr" id="S1.T1.2.1.1.3.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.3.1.2.1.1.1">High-quality</span></span>
<span class="ltx_tr" id="S1.T1.2.1.1.3.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.3.1.2.1.2.1">3D Ground-truth</span></span>
</span></span> <span class="ltx_text" id="S1.T1.2.1.1.3.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S1.T1.2.1.1.4">Depth maps</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.1.5" rowspan="3"><span class="ltx_text" id="S1.T1.2.1.1.5.1"><span class="ltx_text" id="S1.T1.2.1.1.5.1.1"></span> <span class="ltx_text" id="S1.T1.2.1.1.5.1.2">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.1.5.1.2.1">
<span class="ltx_tr" id="S1.T1.2.1.1.5.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.5.1.2.1.1.1">Multi-view</span></span>
<span class="ltx_tr" id="S1.T1.2.1.1.5.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.5.1.2.1.2.1">images</span></span>
</span></span> <span class="ltx_text" id="S1.T1.2.1.1.5.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S1.T1.2.1.1.6">Tasks</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S1.T1.2.1.1.7">Splits</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.1.8" rowspan="3"><span class="ltx_text" id="S1.T1.2.1.1.8.1">Public</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.2.1">Sensor</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.2.2">Monoc.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.2.3">Relation</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.2.4">Metric</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.2.5">3D Ground.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.2.6">Train</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.2.7">Eval</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.3.1"><span class="ltx_text ltx_font_italic" id="S1.T1.2.1.3.1.1">Training Datasets</span></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.3.2"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.3.3"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.3.4"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.3.5"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.3.6"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.3.7"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.3.8"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.1.4.1">OpenSpatialDataset <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S1.T1.2.1.4.2">OpenImages <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.4.3"><span class="ltx_text" id="S1.T1.2.1.4.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.4.4"><span class="ltx_text" id="S1.T1.2.1.4.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.4.5"><span class="ltx_text" id="S1.T1.2.1.4.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.4.6"><span class="ltx_text" id="S1.T1.2.1.4.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.4.7"><span class="ltx_text" id="S1.T1.2.1.4.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.4.8"><span class="ltx_text" id="S1.T1.2.1.4.8.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.4.9"><span class="ltx_text" id="S1.T1.2.1.4.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.4.10"><span class="ltx_text" id="S1.T1.2.1.4.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.4.11"><span class="ltx_text" id="S1.T1.2.1.4.11.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.4.12"><span class="ltx_text" id="S1.T1.2.1.4.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.5">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.5.1">SpatialQA-E <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.2.1.5.2">Robot manipulation images <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.3"><span class="ltx_text" id="S1.T1.2.1.5.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.4"><span class="ltx_text" id="S1.T1.2.1.5.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.5"><span class="ltx_text" id="S1.T1.2.1.5.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.6"><span class="ltx_text" id="S1.T1.2.1.5.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.7"><span class="ltx_text" id="S1.T1.2.1.5.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.8"><span class="ltx_text" id="S1.T1.2.1.5.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.9"><span class="ltx_text" id="S1.T1.2.1.5.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.10"><span class="ltx_text" id="S1.T1.2.1.5.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.11"><span class="ltx_text" id="S1.T1.2.1.5.11.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.12"><span class="ltx_text" id="S1.T1.2.1.5.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.6">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.6.1">OpenSpaces <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.2.1.6.2">The Cauldron <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.3"><span class="ltx_text" id="S1.T1.2.1.6.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.4"><span class="ltx_text" id="S1.T1.2.1.6.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.5"><span class="ltx_text" id="S1.T1.2.1.6.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.6"><span class="ltx_text" id="S1.T1.2.1.6.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.7"><span class="ltx_text" id="S1.T1.2.1.6.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.8"><span class="ltx_text" id="S1.T1.2.1.6.8.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.9"><span class="ltx_text" id="S1.T1.2.1.6.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.10"><span class="ltx_text" id="S1.T1.2.1.6.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.11"><span class="ltx_text" id="S1.T1.2.1.6.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.12"><span class="ltx_text" id="S1.T1.2.1.6.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.7">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.7.1">Spatial Aptitude Training <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib92" title=""><span class="ltx_text" style="font-size:90%;">92</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.2.1.7.2">ProcTHOR-10K <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.7.3">synthetic</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.7.4"><span class="ltx_text" id="S1.T1.2.1.7.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.7.5"><span class="ltx_text" id="S1.T1.2.1.7.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.7.6"><span class="ltx_text" id="S1.T1.2.1.7.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.7.7"><span class="ltx_text" id="S1.T1.2.1.7.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.7.8"><span class="ltx_text" id="S1.T1.2.1.7.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.7.9"><span class="ltx_text" id="S1.T1.2.1.7.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.7.10"><span class="ltx_text" id="S1.T1.2.1.7.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.7.11"><span class="ltx_text" id="S1.T1.2.1.7.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.7.12"><span class="ltx_text" id="S1.T1.2.1.7.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.8">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.8.1">RoboSpatial <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib98" title=""><span class="ltx_text" style="font-size:90%;">98</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.2.1.8.2">Multiple 3D datasets <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib108" title=""><span class="ltx_text" style="font-size:90%;">108</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib107" title=""><span class="ltx_text" style="font-size:90%;">107</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib109" title=""><span class="ltx_text" style="font-size:90%;">109</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.8.3"><span class="ltx_text" id="S1.T1.2.1.8.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.8.4"><span class="ltx_text" id="S1.T1.2.1.8.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.8.5"><span class="ltx_text" id="S1.T1.2.1.8.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.8.6"><span class="ltx_text" id="S1.T1.2.1.8.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.8.7"><span class="ltx_text" id="S1.T1.2.1.8.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.8.8"><span class="ltx_text" id="S1.T1.2.1.8.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.8.9"><span class="ltx_text" id="S1.T1.2.1.8.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.8.10"><span class="ltx_text" id="S1.T1.2.1.8.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.8.11"><span class="ltx_text" id="S1.T1.2.1.8.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.8.12"><span class="ltx_text" id="S1.T1.2.1.8.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.9">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.9.1">EmbSpatial <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.2.1.9.2">Multiple 3D datasets <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.9.3"><span class="ltx_text" id="S1.T1.2.1.9.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.9.4"><span class="ltx_text" id="S1.T1.2.1.9.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.9.5"><span class="ltx_text" id="S1.T1.2.1.9.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.9.6"><span class="ltx_text" id="S1.T1.2.1.9.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.9.7"><span class="ltx_text" id="S1.T1.2.1.9.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.9.8"><span class="ltx_text" id="S1.T1.2.1.9.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.9.9"><span class="ltx_text" id="S1.T1.2.1.9.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.9.10"><span class="ltx_text" id="S1.T1.2.1.9.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.9.11"><span class="ltx_text" id="S1.T1.2.1.9.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.9.12"><span class="ltx_text" id="S1.T1.2.1.9.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.10" style="background-color:#D4D4D4;">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.10.1"><span class="ltx_text" id="S1.T1.2.1.10.1.1" style="background-color:#D4D4D4;">SpatialQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.2.1.10.2"><span class="ltx_text" id="S1.T1.2.1.10.2.1" style="background-color:#D4D4D4;">Multiple image datasets</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.10.3"><span class="ltx_text" id="S1.T1.2.1.10.3.1" style="background-color:#D4D4D4;">subset</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.10.4"><span class="ltx_text" id="S1.T1.2.1.10.4.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.10.5"><span class="ltx_text" id="S1.T1.2.1.10.5.1" style="color:#00FF00;background-color:#D4D4D4;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.10.6"><span class="ltx_text" id="S1.T1.2.1.10.6.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.10.7"><span class="ltx_text" id="S1.T1.2.1.10.7.1" style="color:#00FF00;background-color:#D4D4D4;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.10.8"><span class="ltx_text" id="S1.T1.2.1.10.8.1" style="color:#00FF00;background-color:#D4D4D4;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.10.9"><span class="ltx_text" id="S1.T1.2.1.10.9.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.10.10"><span class="ltx_text" id="S1.T1.2.1.10.10.1" style="color:#00FF00;background-color:#D4D4D4;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.10.11"><span class="ltx_text" id="S1.T1.2.1.10.11.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.10.12"><span class="ltx_text" id="S1.T1.2.1.10.12.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.11" style="background-color:#D4D4D4;">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.11.1"><span class="ltx_text" id="S1.T1.2.1.11.1.1" style="background-color:#D4D4D4;">Spatial-VQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.2.1.11.2"><span class="ltx_text" id="S1.T1.2.1.11.2.1" style="background-color:#D4D4D4;">Web-crawled images</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.11.3"><span class="ltx_text" id="S1.T1.2.1.11.3.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.11.4"><span class="ltx_text" id="S1.T1.2.1.11.4.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.11.5"><span class="ltx_text" id="S1.T1.2.1.11.5.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.11.6"><span class="ltx_text" id="S1.T1.2.1.11.6.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.11.7"><span class="ltx_text" id="S1.T1.2.1.11.7.1" style="color:#00FF00;background-color:#D4D4D4;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.11.8"><span class="ltx_text" id="S1.T1.2.1.11.8.1" style="color:#00FF00;background-color:#D4D4D4;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.11.9"><span class="ltx_text" id="S1.T1.2.1.11.9.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.11.10"><span class="ltx_text" id="S1.T1.2.1.11.10.1" style="color:#00FF00;background-color:#D4D4D4;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.11.11"><span class="ltx_text" id="S1.T1.2.1.11.11.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.11.12"><span class="ltx_text" id="S1.T1.2.1.11.12.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.12" style="background-color:#D4D4D4;">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.12.1"><span class="ltx_text" id="S1.T1.2.1.12.1.1" style="background-color:#D4D4D4;">LV3D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.2.1.12.2"><span class="ltx_text" id="S1.T1.2.1.12.2.1" style="background-color:#D4D4D4;">Multiple datasets</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.12.3"><span class="ltx_text" id="S1.T1.2.1.12.3.1" style="background-color:#D4D4D4;">subset</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.12.4"><span class="ltx_text" id="S1.T1.2.1.12.4.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.12.5"><span class="ltx_text" id="S1.T1.2.1.12.5.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.12.6"><span class="ltx_text" id="S1.T1.2.1.12.6.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.12.7"><span class="ltx_text" id="S1.T1.2.1.12.7.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.12.8"><span class="ltx_text" id="S1.T1.2.1.12.8.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.12.9"><span class="ltx_text" id="S1.T1.2.1.12.9.1" style="color:#00FF00;background-color:#D4D4D4;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.12.10"><span class="ltx_text" id="S1.T1.2.1.12.10.1" style="color:#00FF00;background-color:#D4D4D4;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.12.11"><span class="ltx_text" id="S1.T1.2.1.12.11.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.12.12"><span class="ltx_text" id="S1.T1.2.1.12.12.1" style="color:#FF0000;background-color:#D4D4D4;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.13.1"><span class="ltx_text ltx_font_italic" id="S1.T1.2.1.13.1.1">Evaluation Benchmarks</span></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.13.2"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.13.3"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.13.4"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.13.5"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.13.6"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.13.7"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.13.8"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.13.9"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.13.10"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.13.11"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.1.13.12"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.1.14.1">SpatialRGPT-Bench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S1.T1.2.1.14.2">Omni3D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.14.3"><span class="ltx_text" id="S1.T1.2.1.14.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.14.4"><span class="ltx_text" id="S1.T1.2.1.14.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.14.5"><span class="ltx_text" id="S1.T1.2.1.14.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.14.6"><span class="ltx_text" id="S1.T1.2.1.14.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.14.7"><span class="ltx_text" id="S1.T1.2.1.14.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.14.8"><span class="ltx_text" id="S1.T1.2.1.14.8.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.14.9"><span class="ltx_text" id="S1.T1.2.1.14.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.14.10"><span class="ltx_text" id="S1.T1.2.1.14.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.14.11"><span class="ltx_text" id="S1.T1.2.1.14.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.14.12"><span class="ltx_text" id="S1.T1.2.1.14.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.15">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.15.1">CV-Bench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib104" title=""><span class="ltx_text" style="font-size:90%;">104</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.2.1.15.2">ADE20k <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib136" title=""><span class="ltx_text" style="font-size:90%;">136</span></a>]</cite>, COCO <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib77" title=""><span class="ltx_text" style="font-size:90%;">77</span></a>]</cite>, Omni3D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.15.3">subset</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.15.4"><span class="ltx_text" id="S1.T1.2.1.15.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.15.5"><span class="ltx_text" id="S1.T1.2.1.15.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.15.6"><span class="ltx_text" id="S1.T1.2.1.15.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.15.7"><span class="ltx_text" id="S1.T1.2.1.15.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.15.8"><span class="ltx_text" id="S1.T1.2.1.15.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.15.9"><span class="ltx_text" id="S1.T1.2.1.15.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.15.10"><span class="ltx_text" id="S1.T1.2.1.15.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.15.11"><span class="ltx_text" id="S1.T1.2.1.15.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.15.12"><span class="ltx_text" id="S1.T1.2.1.15.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.16">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.16.1">3DSRBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib82" title=""><span class="ltx_text" style="font-size:90%;">82</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.2.1.16.2">COCO <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib77" title=""><span class="ltx_text" style="font-size:90%;">77</span></a>]</cite>, HSSD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.16.3">synthetic</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.16.4"><span class="ltx_text" id="S1.T1.2.1.16.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.16.5"><span class="ltx_text" id="S1.T1.2.1.16.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.16.6"><span class="ltx_text" id="S1.T1.2.1.16.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.16.7"><span class="ltx_text" id="S1.T1.2.1.16.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.16.8"><span class="ltx_text" id="S1.T1.2.1.16.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.16.9"><span class="ltx_text" id="S1.T1.2.1.16.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.16.10"><span class="ltx_text" id="S1.T1.2.1.16.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.16.11"><span class="ltx_text" id="S1.T1.2.1.16.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.16.12"><span class="ltx_text" id="S1.T1.2.1.16.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.17">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.17.1">VSI-Bench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib116" title=""><span class="ltx_text" style="font-size:90%;">116</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.2.1.17.2">ScanNet/++ <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib121" title=""><span class="ltx_text" style="font-size:90%;">121</span></a>]</cite>, ARKitScenes <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.17.3"><span class="ltx_text" id="S1.T1.2.1.17.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.17.4"><span class="ltx_text" id="S1.T1.2.1.17.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.17.5"><span class="ltx_text" id="S1.T1.2.1.17.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.17.6"><span class="ltx_text" id="S1.T1.2.1.17.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.17.7"><span class="ltx_text" id="S1.T1.2.1.17.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.17.8"><span class="ltx_text" id="S1.T1.2.1.17.8.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.17.9"><span class="ltx_text" id="S1.T1.2.1.17.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.17.10"><span class="ltx_text" id="S1.T1.2.1.17.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.17.11"><span class="ltx_text" id="S1.T1.2.1.17.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.17.12"><span class="ltx_text" id="S1.T1.2.1.17.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.18">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.18.1">Q-Spatial <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.2.1.18.2">ScanNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.18.3"><span class="ltx_text" id="S1.T1.2.1.18.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.18.4"><span class="ltx_text" id="S1.T1.2.1.18.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.18.5"><span class="ltx_text" id="S1.T1.2.1.18.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.18.6"><span class="ltx_text" id="S1.T1.2.1.18.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.18.7"><span class="ltx_text" id="S1.T1.2.1.18.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.18.8"><span class="ltx_text" id="S1.T1.2.1.18.8.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.18.9"><span class="ltx_text" id="S1.T1.2.1.18.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.18.10"><span class="ltx_text" id="S1.T1.2.1.18.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.18.11"><span class="ltx_text" id="S1.T1.2.1.18.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.18.12"><span class="ltx_text" id="S1.T1.2.1.18.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.19">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.19.1">ScanRefer <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.2.1.19.2">ScanNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.19.3"><span class="ltx_text" id="S1.T1.2.1.19.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.19.4"><span class="ltx_text" id="S1.T1.2.1.19.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.19.5"><span class="ltx_text" id="S1.T1.2.1.19.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.19.6"><span class="ltx_text" id="S1.T1.2.1.19.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.19.7"><span class="ltx_text" id="S1.T1.2.1.19.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.19.8"><span class="ltx_text" id="S1.T1.2.1.19.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.19.9"><span class="ltx_text" id="S1.T1.2.1.19.9.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.19.10"><span class="ltx_text" id="S1.T1.2.1.19.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.19.11"><span class="ltx_text" id="S1.T1.2.1.19.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.19.12"><span class="ltx_text" id="S1.T1.2.1.19.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.20">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.20.1">Nr3D / Sr3D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.2.1.20.2">ScanNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.20.3"><span class="ltx_text" id="S1.T1.2.1.20.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.20.4"><span class="ltx_text" id="S1.T1.2.1.20.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.20.5"><span class="ltx_text" id="S1.T1.2.1.20.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.20.6"><span class="ltx_text" id="S1.T1.2.1.20.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.20.7"><span class="ltx_text" id="S1.T1.2.1.20.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.20.8"><span class="ltx_text" id="S1.T1.2.1.20.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.20.9"><span class="ltx_text" id="S1.T1.2.1.20.9.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.20.10"><span class="ltx_text" id="S1.T1.2.1.20.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.20.11"><span class="ltx_text" id="S1.T1.2.1.20.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.20.12"><span class="ltx_text" id="S1.T1.2.1.20.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.21">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.21.1">SpatialBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.2.1.21.2">subset is from MME <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.21.3"><span class="ltx_text" id="S1.T1.2.1.21.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.21.4"><span class="ltx_text" id="S1.T1.2.1.21.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.21.5"><span class="ltx_text" id="S1.T1.2.1.21.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.21.6"><span class="ltx_text" id="S1.T1.2.1.21.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.21.7"><span class="ltx_text" id="S1.T1.2.1.21.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.21.8"><span class="ltx_text" id="S1.T1.2.1.21.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.21.9"><span class="ltx_text" id="S1.T1.2.1.21.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.21.10"><span class="ltx_text" id="S1.T1.2.1.21.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.21.11"><span class="ltx_text" id="S1.T1.2.1.21.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.21.12"><span class="ltx_text" id="S1.T1.2.1.21.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.22">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.22.1">Rel3D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.2.1.22.2">ShapeNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>, YCB <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.22.3"><span class="ltx_text" id="S1.T1.2.1.22.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.22.4"><span class="ltx_text" id="S1.T1.2.1.22.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.22.5"><span class="ltx_text" id="S1.T1.2.1.22.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.22.6"><span class="ltx_text" id="S1.T1.2.1.22.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.22.7"><span class="ltx_text" id="S1.T1.2.1.22.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.22.8"><span class="ltx_text" id="S1.T1.2.1.22.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.22.9"><span class="ltx_text" id="S1.T1.2.1.22.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.22.10"><span class="ltx_text" id="S1.T1.2.1.22.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.22.11"><span class="ltx_text" id="S1.T1.2.1.22.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.22.12"><span class="ltx_text" id="S1.T1.2.1.22.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.23" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S1.T1.2.1.23.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.23.1.1" style="background-color:#F8FCF4;">CA-VQA (ours)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S1.T1.2.1.23.2"><span class="ltx_text" id="S1.T1.2.1.23.2.1" style="background-color:#F8FCF4;">CA-1M <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite> / ARKitScenes <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.23.3"><span class="ltx_text" id="S1.T1.2.1.23.3.1" style="color:#00FF00;background-color:#F8FCF4;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.23.4"><span class="ltx_text" id="S1.T1.2.1.23.4.1" style="color:#00FF00;background-color:#F8FCF4;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.23.5"><span class="ltx_text" id="S1.T1.2.1.23.5.1" style="color:#00FF00;background-color:#F8FCF4;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.23.6"><span class="ltx_text" id="S1.T1.2.1.23.6.1" style="color:#00FF00;background-color:#F8FCF4;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.23.7"><span class="ltx_text" id="S1.T1.2.1.23.7.1" style="color:#00FF00;background-color:#F8FCF4;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.23.8"><span class="ltx_text" id="S1.T1.2.1.23.8.1" style="color:#00FF00;background-color:#F8FCF4;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.23.9"><span class="ltx_text" id="S1.T1.2.1.23.9.1" style="color:#00FF00;background-color:#F8FCF4;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.23.10"><span class="ltx_text" id="S1.T1.2.1.23.10.1" style="color:#00FF00;background-color:#F8FCF4;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.23.11"><span class="ltx_text" id="S1.T1.2.1.23.11.1" style="color:#00FF00;background-color:#F8FCF4;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.23.12"><span class="ltx_text" id="S1.T1.2.1.23.12.1" style="color:#00FF00;background-color:#F8FCF4;">✓</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 provides a comprehensive comparison of existing object-centric 3D spatial datasets designed for training and evaluating Multimodal Large Language Models (MLLMs).  It highlights the unique features of each dataset, including data sources, the availability of 3D ground truth information, the types of depth maps provided (sensor-based or monocular estimates), whether multi-view images are included, the range of spatial tasks supported (relationship prediction, metric estimation, 3D bounding box prediction), the availability of training and evaluation splits, and finally, whether the dataset is publicly available.  The table emphasizes the novelty of the Cubify Anything VQA (CA-VQA) dataset, which stands out due to its high-quality 3D ground truth, inclusion of diverse depth maps and multi-view images, coverage of various spatial tasks, and availability as both an SFT dataset and a benchmark for MLLM evaluation.  This allows researchers to compare their 3D spatial reasoning models against a comprehensive and challenging benchmark.
> <details>
> <summary>read the caption</summary>
> Table 1: 3D Spatial Dataset Overview. Comparison of object-centric 3D spatial MLLM datasets to CA-VQA (in gray: non-public ones). CA-VQA is the first dataset that is based on high-quality 3D ground truth, includes depth maps (both from sensors and monocular) and multi-view images, covers a variety of tasks (relationships, metric estimation, 3D grounding), and has both an SFT dataset and benchmark.
> </details>





### In-depth insights


#### MM-Spatial LLM
Based on the context, MM-Spatial LLM seems to be a **multimodal large language model tailored for 3D spatial understanding.** It likely excels at tasks requiring spatial reasoning, like distance estimation or 3D grounding. The research probably investigates how to train such a model using datasets like CA-VQA and how to leverage input signals like **depth maps** and **multi-view images** to enhance its performance. The core idea is to bridge the gap in MLLMs' ability to understand and reason about 3D space.

#### CA-VQA Dataset
The **CA-VQA dataset** is a key contribution, designed to push the boundaries of 3D spatial understanding in MLLMs. It uniquely incorporates high-quality 3D scene data with open-set annotations, enabling supervised fine-tuning and evaluation. The dataset's strength lies in its diversity, covering spatial relationships, metric size/distance estimation, and 3D grounding within indoor scenes. It sets itself apart by including multi-view images and various depth maps, **both sensor-based and estimated**. This allows for a more comprehensive assessment of depth perception and multi-view reasoning abilities. The dataset's construction leverages careful QA pair generation using 3D and semantic annotations. Crucially, the dataset also incorporates **blind filtering** to mitigate language priors, ensuring that models truly rely on visual understanding rather than linguistic cues.

#### 3D Understanding
3D understanding in multimodal learning focuses on **interpreting complex visual scenes by reasoning about object locations and spatial relationships**. While MLLMs excel in 2D tasks, 3D perception lags behind, hindering applications in robotics and AR/VR. Research addresses this gap by creating datasets and benchmarks emphasizing spatial tasks like **relative depth estimation, metric size/distance prediction, and 3D bounding box localization**. Datasets often include diverse input signals such as multi-view images and depth maps (sensor-based and estimated), improving model performance. Models leveraging **chain-of-thought reasoning** and tool use, such as depth estimation, achieve state-of-the-art results. The goal is to develop generalist MLLMs capable of robust 3D spatial reasoning without compromising performance on other tasks, ultimately **bridging the gap between 2D visual understanding and comprehensive 3D scene interpretation**.

#### Tool-use Depth
Tool-use depth involves employing external tools to acquire depth information, enabling the model to focus on higher-level reasoning. This method leverages modularity, as the depth estimation task is handled separately, reducing the complexity for the main model. **By querying a depth estimation tool for specific regions**, the MLLM can access accurate depth values without needing to process the entire depth map. The Chain-of-Thought method, in contrast, generates depth predictions directly, fostering an integrated approach. Ultimately, the best method depends on factors like the trade-off between resource usage, model size, and accuracy requirements. **Tool-use Depth could reduce the computational burden**, enhancing its effectiveness when dealing with complex real-world scenarios. The model might make precise and effective use of outside knowledge, when it is most needed.

#### Indoor Bias
**Indoor bias** is a significant factor in visual understanding, especially for models trained and evaluated primarily on **indoor datasets**. This bias arises from the specific characteristics of indoor environments, such as constrained lighting, fixed object arrangements, and limited viewpoint variations. Models trained predominantly on indoor scenes may struggle to generalize to outdoor environments due to the stark differences in these attributes. Addressing this bias requires strategies like **domain adaptation**, **data augmentation with outdoor scenes**, and **training with datasets that offer a balanced representation** of both indoor and outdoor settings. Understanding and mitigating the indoor bias is crucial for developing robust and versatile visual understanding systems that can effectively operate in diverse real-world scenarios. Additionally, scaling and resolution issues can be problematic for spatial understanding in outdoor scenes.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.13111/extracted/6286766/figures/Depth_Tool-Use.png)

> 🔼 This figure shows a sample from the Cubify Anything VQA (CA-VQA) dataset.  It illustrates the multiple data modalities included in the dataset for each image.  A main reference image is shown, along with up to four additional support frames from slightly different viewpoints. Each frame (both reference and support) provides three depth maps: one from a high-accuracy FARO laser scanner (ground truth), one from Apple's ARKit (LiDAR-fused), and one from a monocular depth estimation model (DepthPro).  For each support frame, relative pose information (showing its position and orientation relative to the reference frame) and camera intrinsic parameters are also included.
> <details>
> <summary>read the caption</summary>
> Figure 2: CA-VQA Data Example. Example of a single sample from our dataset. Each reference frame has between 0-4 multi-view support frames. All frames (reference and support) come with three metric depth maps: Ground truth (FARO laser), ARKit Depth (LiDAR-fused) and Monocular (DepthPro). Each support frame contains the relative pose from the reference image, along with camera intrinsics.
> </details>



![](https://arxiv.org/html/2503.13111/extracted/6286766/figures/Qualitative_Example.png)

> 🔼 This figure illustrates the process of using depth information to answer spatial questions.  The model first identifies objects in an image and determines their 2D bounding boxes.  Then, it queries a 'tool' (a function that extracts depth information) for the median depth value within each bounding box. This depth information is then used by the model in a chain-of-thought reasoning process to answer a question involving spatial relationships, such as 'Is the pillow behind the television?'
> <details>
> <summary>read the caption</summary>
> Figure 3: Example of leveraging depth maps via tool-use. The model predicts the objects’ 2D bounding boxes and function calls, receives the tool outputs (which is the median depth value within the box, marked with an ×\mathbf{\times}×), and finally reasons about the answer.
> </details>



![](https://arxiv.org/html/2503.13111/extracted/6286766/figures/QA_Examples.png)

> 🔼 Figure 4 presents a qualitative comparison of different models' performance on a complex spatial reasoning task from the CA-VQA benchmark.  It highlights the superior performance of the MM-Spatial model. The figure shows that while strong commercial and research models fail to accurately answer the question, MM-Spatial provides a much better response.  Further improvements are observed when using Chain-of-Thought (CoT) reasoning and ground truth depth, demonstrating the model's ability to ground objects in 2D space, estimate depth accurately, and reason spatially. The use of monocular depth estimation, while also helpful, is shown to be less accurate than ground truth depth.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative Example. We show the predictions of various models on a challenging example from our CA-VQA benchmark. Strong commercial (2a&b) and research models (2c&d) fail. MM-Spatial (1a) is much better, and even more so with CoT enabled (1b), demonstrating our model’s strong object grounding (see predicted 2D boxes in the image), depth estimation, and spatial reasoning ability. Accuracy improves further when leveraging ground-truth depth via tool-use (1c), although our CoT model’s (1b) predictions are very close to that, for both the intermediate depth values and final answer; monocular estimated depth (1d) is less accurate and yields a worse result.
> </details>



![](https://arxiv.org/html/2503.13111/extracted/6286766/figures/Spatial_Category_Examples_1.png)

> 🔼 Figure 5 showcases example question-answer pairs from the Cubify Anything VQA (CA-VQA) dataset.  CA-VQA is designed to improve 3D spatial reasoning capabilities in multimodal large language models (MLLMs). It leverages high-quality 3D ground truth annotations from the CA-1M dataset to create diverse spatial perception questions. These questions cover a wide range of tasks including relative spatial relationships between objects, metric measurements (distances and sizes), and 3D object bounding box identification.  The figure visually demonstrates the variety of question types and the dataset's focus on detailed 3D spatial understanding.
> <details>
> <summary>read the caption</summary>
> Figure 5:  CA-VQA Overview. Example QA pairs from our Cubify Anything VQA (CA-VQA) dataset, aiming to unlock object-centric 3D spatial understanding in MLLMs. Using high-quality 3D ground truth annotations from CA-1M [61], we generate spatial perception questions across a variety of different tasks, e.g., involving relative relationships, metric measurements, and 3D object bounding boxes.
> </details>



![](https://arxiv.org/html/2503.13111/extracted/6286766/figures/Spatial_Category_Examples_2.png)

> 🔼 Figure 6 presents example questions and answers from the CA-VQA dataset, categorized into Binary, Counting, and Multi-choice question types.  The Binary examples showcase questions about spatial relationships (e.g., Is object A in front of object B?), relative object sizes, and object presence. Counting questions involve counting the number of objects of a specific type in the image.  Multi-choice examples combine different question types into a multiple-choice format. The figure visually demonstrates the variety of question formats and types of spatial reasoning tasks included in the CA-VQA dataset.
> <details>
> <summary>read the caption</summary>
> Figure 6: Examples of CA-VQA data samples from the Binary, Counting and Multi-choice categories.
> </details>



![](https://arxiv.org/html/2503.13111/extracted/6286766/figures/AABB_vs_OBB.png)

> 🔼 Figure 7 shows example questions and answers from the CA-VQA dataset that belong to two categories: Regression (Metric Estimation) and 2D Grounding.  The Regression examples demonstrate questions that require estimating distances (e.g., how far away is an object, distance between two objects) and sizes (e.g., height, length) of objects.  The 2D Grounding examples showcase questions that ask for the 2D image coordinates of objects given either their names or material properties.  The figure illustrates the diversity of questions and the types of answers expected in CA-VQA.
> <details>
> <summary>read the caption</summary>
> Figure 7: Examples of CA-VQA data samples from the Regression (Metric Estimation) and 2D Grounding categories.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.2.1">
<tr class="ltx_tr" id="S5.T2.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T2.2.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S5.T2.2.1.1.2">Benchmark Category Averages</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.2.1">Spatial</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.2.2">General</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.2.3">Knowl.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.2.4">Text-rich</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.5">Ref./Ground</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.2.6"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.6.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.3" style="background-color:#DFEBF7;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.2.1.3.1"><span class="ltx_text" id="S5.T2.2.1.3.1.1" style="background-color:#DFEBF7;">MM1.5-3B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib128" title=""><span class="ltx_text" style="font-size:90%;">128</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.3.2"><span class="ltx_text" id="S5.T2.2.1.3.2.1" style="background-color:#DFEBF7;">39.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.3.3"><span class="ltx_text" id="S5.T2.2.1.3.3.1" style="background-color:#DFEBF7;">64.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.3.4"><span class="ltx_text" id="S5.T2.2.1.3.4.1" style="background-color:#DFEBF7;">46.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.3.5"><span class="ltx_text" id="S5.T2.2.1.3.5.1" style="background-color:#DFEBF7;">62.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.6"><span class="ltx_text" id="S5.T2.2.1.3.6.1" style="background-color:#DFEBF7;">77.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.3.7"><span class="ltx_text" id="S5.T2.2.1.3.7.1" style="background-color:#DFEBF7;">58.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.4" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T2.2.1.4.1"><span class="ltx_text" id="S5.T2.2.1.4.1.1" style="background-color:#F8FCF4;">MM-Spatial-3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.1.4.2"><span class="ltx_text" id="S5.T2.2.1.4.2.1" style="background-color:#F8FCF4;">70.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.1.4.3"><span class="ltx_text" id="S5.T2.2.1.4.3.1" style="background-color:#F8FCF4;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.1.4.4"><span class="ltx_text" id="S5.T2.2.1.4.4.1" style="background-color:#F8FCF4;">46.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.1.4.5"><span class="ltx_text" id="S5.T2.2.1.4.5.1" style="background-color:#F8FCF4;">62.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.4.6"><span class="ltx_text" id="S5.T2.2.1.4.6.1" style="background-color:#F8FCF4;">79.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.1.4.7"><span class="ltx_text" id="S5.T2.2.1.4.7.1" style="background-color:#F8FCF4;">64.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a performance comparison between the MM-Spatial model and the MM1.5 baseline model across various benchmark categories.  It highlights that MM-Spatial significantly improves performance in the 'Spatial' category while maintaining competitive performance with MM1.5 in other categories such as General, Knowledge, Text-rich, and Referring/Grounding. This demonstrates MM-Spatial's effectiveness as a generalist multimodal large language model (MLLM) that excels in spatial reasoning without sacrificing performance on other tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: Benchmark Category Results MM-Spatial is a generalist MLLM that improves strongly on the Spatial category while rivaling the MM1.5 baseline across the other task categories.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.24.24">
<tr class="ltx_tr" id="S5.T3.24.24.25">
<td class="ltx_td ltx_border_tt" id="S5.T3.24.24.25.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T3.24.24.25.2" rowspan="3"><span class="ltx_text ltx_font_bold" id="S5.T3.24.24.25.2.1">Model</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T3.24.24.25.3" rowspan="2"><span class="ltx_text" id="S5.T3.24.24.25.3.1">Binary</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T3.24.24.25.4" rowspan="2"><span class="ltx_text" id="S5.T3.24.24.25.4.1">Count.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.24.24.25.5">Grounding</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T3.24.24.25.6" rowspan="2"><span class="ltx_text" id="S5.T3.24.24.25.6.1">Multi-c.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S5.T3.24.24.25.7">Regression (Metric Estimation)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.24.24.25.8" rowspan="3"><span class="ltx_text ltx_font_bold" id="S5.T3.24.24.25.8.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.24.24.26">
<td class="ltx_td" id="S5.T3.24.24.26.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.24.24.26.2">2D</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.24.24.26.3">3D</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.24.24.26.4">Ego-Dist.</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.24.24.26.5">Obj.-Dist.</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T3.24.24.26.6">Obj.-Size</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1">
<td class="ltx_td" id="S5.T3.1.1.1.2"></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.1.3">Acc</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.1.4">Acc</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.1.5">AP@50</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.1.6">AP@15</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.1.7">Acc</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="S5.T3.1.1.1.1">Acc @ 10% Relative Error (<math alttext="\ell_{1}" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><msub id="S5.T3.1.1.1.1.m1.1.1" xref="S5.T3.1.1.1.1.m1.1.1.cmml"><mi id="S5.T3.1.1.1.1.m1.1.1.2" mathvariant="normal" xref="S5.T3.1.1.1.1.m1.1.1.2.cmml">ℓ</mi><mn id="S5.T3.1.1.1.1.m1.1.1.3" xref="S5.T3.1.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><apply id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.1.1.1.1.m1.1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T3.1.1.1.1.m1.1.1.2.cmml" xref="S5.T3.1.1.1.1.m1.1.1.2">ℓ</ci><cn id="S5.T3.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S5.T3.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">\ell_{1}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">roman_ℓ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.1"><svg class="ltx_picture" height="15.77" id="S5.T3.2.2.2.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T3.2.2.2.1.pic1.1.1.1.1.1" style="font-size:80%;">1</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.2.2.2.2">GPT-4 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite> (<span class="ltx_text ltx_font_typewriter" id="S5.T3.2.2.2.2.1">gpt-4-0613</span>)</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.2.2.2.3">9.6</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.2.2.2.4">8.5</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.2.2.2.5">0.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.2.2.2.6">0.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.2.2.2.7">9.6</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.2.2.2.8">6.2</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.2.2.2.9">6.2</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T3.2.2.2.10">5.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.11">5.7</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.3.3">
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.3.1"><svg class="ltx_picture" height="15.77" id="S5.T3.3.3.3.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T3.3.3.3.1.pic1.1.1.1.1.1" style="font-size:80%;">2</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.3.3.3.2">GPT-4V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a>]</cite> (<span class="ltx_text ltx_font_typewriter" id="S5.T3.3.3.3.2.1">gpt-4-turbo-2024-04-09</span>)</td>
<td class="ltx_td ltx_align_right" id="S5.T3.3.3.3.3">39.2</td>
<td class="ltx_td ltx_align_right" id="S5.T3.3.3.3.4">63.3</td>
<td class="ltx_td ltx_align_right" id="S5.T3.3.3.3.5">5.8</td>
<td class="ltx_td ltx_align_right" id="S5.T3.3.3.3.6">0.0</td>
<td class="ltx_td ltx_align_right" id="S5.T3.3.3.3.7">32.9</td>
<td class="ltx_td ltx_align_right" id="S5.T3.3.3.3.8">11.4</td>
<td class="ltx_td ltx_align_right" id="S5.T3.3.3.3.9">9.3</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.3.3.3.10">10.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.3.11">21.5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.4">
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4.1"><svg class="ltx_picture" height="15.77" id="S5.T3.4.4.4.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T3.4.4.4.1.pic1.1.1.1.1.1" style="font-size:80%;">3</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.4.4.4.2">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite> (<span class="ltx_text ltx_font_typewriter" id="S5.T3.4.4.4.2.1">gpt-4o-2024-08-06</span>)</td>
<td class="ltx_td ltx_align_right" id="S5.T3.4.4.4.3">44.2</td>
<td class="ltx_td ltx_align_right" id="S5.T3.4.4.4.4">69.0</td>
<td class="ltx_td ltx_align_right" id="S5.T3.4.4.4.5">0.0</td>
<td class="ltx_td ltx_align_right" id="S5.T3.4.4.4.6">0.0</td>
<td class="ltx_td ltx_align_right" id="S5.T3.4.4.4.7">36.6</td>
<td class="ltx_td ltx_align_right" id="S5.T3.4.4.4.8">11.7</td>
<td class="ltx_td ltx_align_right" id="S5.T3.4.4.4.9">10.0</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.4.4.4.10">11.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4.11">22.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.5">
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5.1"><svg class="ltx_picture" height="15.77" id="S5.T3.5.5.5.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T3.5.5.5.1.pic1.1.1.1.1.1" style="font-size:80%;">4</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.5.5.5.2">Phi-3-Vision-4B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.5.3">52.3</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.5.4">45.7</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.5.5">7.8</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.5.6">0.0</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.5.7">32.2</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.5.8">6.6</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.5.9">4.4</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.5.5.5.10">6.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5.11">19.4</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.6">
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.6.1"><svg class="ltx_picture" height="15.77" id="S5.T3.6.6.6.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T3.6.6.6.1.pic1.1.1.1.1.1" style="font-size:80%;">5</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.6.6.6.2">LLaVA-OneVision-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib65" title=""><span class="ltx_text" style="font-size:90%;">65</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.6.6.6.3">52.0</td>
<td class="ltx_td ltx_align_right" id="S5.T3.6.6.6.4">62.1</td>
<td class="ltx_td ltx_align_right" id="S5.T3.6.6.6.5">16.1</td>
<td class="ltx_td ltx_align_right" id="S5.T3.6.6.6.6">0.0</td>
<td class="ltx_td ltx_align_right" id="S5.T3.6.6.6.7">42.5</td>
<td class="ltx_td ltx_align_right" id="S5.T3.6.6.6.8">9.3</td>
<td class="ltx_td ltx_align_right" id="S5.T3.6.6.6.9">8.1</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.6.6.6.10">6.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.6.11">24.6</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.7.7">
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.7.1"><svg class="ltx_picture" height="15.77" id="S5.T3.7.7.7.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T3.7.7.7.1.pic1.1.1.1.1.1" style="font-size:80%;">6</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.7.7.7.2">SpatialRGPT-VILA1.5-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.7.7.7.3">53.6</td>
<td class="ltx_td ltx_align_right" id="S5.T3.7.7.7.4">68.8</td>
<td class="ltx_td ltx_align_right" id="S5.T3.7.7.7.5">5.5</td>
<td class="ltx_td ltx_align_right" id="S5.T3.7.7.7.6">0.0</td>
<td class="ltx_td ltx_align_right" id="S5.T3.7.7.7.7">37.2</td>
<td class="ltx_td ltx_align_right" id="S5.T3.7.7.7.8">10.5</td>
<td class="ltx_td ltx_align_right" id="S5.T3.7.7.7.9">8.7</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.7.7.7.10">7.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.7.11">23.9</td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.8.8" style="background-color:#DFEBF7;">
<td class="ltx_td ltx_align_center" id="S5.T3.8.8.8.1"><span class="ltx_text" id="S5.T3.8.8.8.1.1" style="background-color:#DFEBF7;"><svg class="ltx_picture" height="15.77" id="S5.T3.8.8.8.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T3.8.8.8.1.1.pic1.1.1.1.1.1" style="font-size:80%;">7</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.8.8.8.2"><span class="ltx_text" id="S5.T3.8.8.8.2.1" style="background-color:#DFEBF7;">MM1.5-3B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib128" title=""><span class="ltx_text" style="font-size:90%;">128</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.8.8.8.3"><span class="ltx_text" id="S5.T3.8.8.8.3.1" style="background-color:#DFEBF7;">59.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.8.8.8.4"><span class="ltx_text" id="S5.T3.8.8.8.4.1" style="background-color:#DFEBF7;">9.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.8.8.8.5"><span class="ltx_text" id="S5.T3.8.8.8.5.1" style="background-color:#DFEBF7;">32.6</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.8.8.8.6"><span class="ltx_text" id="S5.T3.8.8.8.6.1" style="background-color:#DFEBF7;">0.0</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.8.8.8.7"><span class="ltx_text" id="S5.T3.8.8.8.7.1" style="background-color:#DFEBF7;">38.6</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.8.8.8.8"><span class="ltx_text" id="S5.T3.8.8.8.8.1" style="background-color:#DFEBF7;">0.6</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.8.8.8.9"><span class="ltx_text" id="S5.T3.8.8.8.9.1" style="background-color:#DFEBF7;">2.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.8.8.8.10"><span class="ltx_text" id="S5.T3.8.8.8.10.1" style="background-color:#DFEBF7;">3.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.8.8.11"><span class="ltx_text" id="S5.T3.8.8.8.11.1" style="background-color:#DFEBF7;">18.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.9.9.9" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.1"><span class="ltx_text" id="S5.T3.9.9.9.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T3.9.9.9.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T3.9.9.9.1.1.pic1.1.1.1.1.1" style="font-size:80%;">8</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.9.9.9.2"><span class="ltx_text" id="S5.T3.9.9.9.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.9.9.9.3"><span class="ltx_text" id="S5.T3.9.9.9.3.1" style="background-color:#F8FCF4;">68.8</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.9.9.9.4"><span class="ltx_text" id="S5.T3.9.9.9.4.1" style="background-color:#F8FCF4;">75.8</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.9.9.9.5"><span class="ltx_text" id="S5.T3.9.9.9.5.1" style="background-color:#F8FCF4;">53.2</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.9.9.9.6"><span class="ltx_text" id="S5.T3.9.9.9.6.1" style="background-color:#F8FCF4;">20.7</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.9.9.9.7"><span class="ltx_text" id="S5.T3.9.9.9.7.1" style="background-color:#F8FCF4;">74.2</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.9.9.9.8"><span class="ltx_text" id="S5.T3.9.9.9.8.1" style="background-color:#F8FCF4;">40.0</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.9.9.9.9"><span class="ltx_text" id="S5.T3.9.9.9.9.1" style="background-color:#F8FCF4;">18.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.9.9.9.10"><span class="ltx_text" id="S5.T3.9.9.9.10.1" style="background-color:#F8FCF4;">24.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.11"><span class="ltx_text" id="S5.T3.9.9.9.11.1" style="background-color:#F8FCF4;">47.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.10" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.10.1"><span class="ltx_text" id="S5.T3.10.10.10.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T3.10.10.10.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T3.10.10.10.1.1.pic1.1.1.1.1.1" style="font-size:80%;">9</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.10.10.10.2"><span class="ltx_text" id="S5.T3.10.10.10.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + CoT</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.10.10.10.3"><span class="ltx_text" id="S5.T3.10.10.10.3.1" style="background-color:#F8FCF4;">69.6</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.10.10.10.4"><span class="ltx_text" id="S5.T3.10.10.10.4.1" style="background-color:#F8FCF4;">75.9</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.10.10.10.5"><span class="ltx_text" id="S5.T3.10.10.10.5.1" style="background-color:#F8FCF4;">54.5</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.10.10.10.6"><span class="ltx_text" id="S5.T3.10.10.10.6.1" style="background-color:#F8FCF4;">21.9</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.10.10.10.7"><span class="ltx_text" id="S5.T3.10.10.10.7.1" style="background-color:#F8FCF4;">74.7</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.10.10.10.8"><span class="ltx_text" id="S5.T3.10.10.10.8.1" style="background-color:#F8FCF4;">46.0</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.10.10.10.9"><span class="ltx_text" id="S5.T3.10.10.10.9.1" style="background-color:#F8FCF4;">23.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.10.10.10.10"><span class="ltx_text" id="S5.T3.10.10.10.10.1" style="background-color:#F8FCF4;">26.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.10.11"><span class="ltx_text" id="S5.T3.10.10.10.11.1" style="background-color:#F8FCF4;">49.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.11.11" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.1"><span class="ltx_text" id="S5.T3.11.11.11.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T3.11.11.11.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T3.11.11.11.1.1.pic1.1.1.1.1.1" style="font-size:80%;">10</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.11.11.11.2"><span class="ltx_text" id="S5.T3.11.11.11.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Depth (Tool; Mon.)</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.11.11.3"><span class="ltx_text" id="S5.T3.11.11.11.3.1" style="background-color:#F8FCF4;">69.6</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.11.11.4"><span class="ltx_text" id="S5.T3.11.11.11.4.1" style="background-color:#F8FCF4;">75.9</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.11.11.5"><span class="ltx_text" id="S5.T3.11.11.11.5.1" style="background-color:#F8FCF4;">54.5</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.11.11.6"><span class="ltx_text" id="S5.T3.11.11.11.6.1" style="background-color:#F8FCF4;">21.9</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.11.11.7"><span class="ltx_text" id="S5.T3.11.11.11.7.1" style="background-color:#F8FCF4;">74.7</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.11.11.8"><span class="ltx_text" id="S5.T3.11.11.11.8.1" style="background-color:#F8FCF4;">40.9</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.11.11.9"><span class="ltx_text" id="S5.T3.11.11.11.9.1" style="background-color:#F8FCF4;">23.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.11.11.11.10"><span class="ltx_text" id="S5.T3.11.11.11.10.1" style="background-color:#F8FCF4;">26.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.11"><span class="ltx_text" id="S5.T3.11.11.11.11.1" style="background-color:#F8FCF4;">48.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.12.12" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T3.12.12.12.1"><span class="ltx_text" id="S5.T3.12.12.12.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T3.12.12.12.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T3.12.12.12.1.1.pic1.1.1.1.1.1" style="font-size:80%;">11</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.12.12.12.2"><span class="ltx_text" id="S5.T3.12.12.12.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Multi-view + CoT</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.12.12.12.3"><span class="ltx_text" id="S5.T3.12.12.12.3.1" style="background-color:#F8FCF4;">69.2</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.12.12.12.4"><span class="ltx_text" id="S5.T3.12.12.12.4.1" style="background-color:#F8FCF4;">76.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.12.12.12.5"><span class="ltx_text" id="S5.T3.12.12.12.5.1" style="background-color:#F8FCF4;">55.0</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.12.12.12.6"><span class="ltx_text" id="S5.T3.12.12.12.6.1" style="background-color:#F8FCF4;">23.6</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.12.12.12.7"><span class="ltx_text" id="S5.T3.12.12.12.7.1" style="background-color:#F8FCF4;">75.3</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.12.12.12.8"><span class="ltx_text" id="S5.T3.12.12.12.8.1" style="background-color:#F8FCF4;">46.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.12.12.12.9"><span class="ltx_text" id="S5.T3.12.12.12.9.1" style="background-color:#F8FCF4;">24.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.12.12.12.10"><span class="ltx_text" id="S5.T3.12.12.12.10.1" style="background-color:#F8FCF4;">28.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.12.12.11"><span class="ltx_text" id="S5.T3.12.12.12.11.1" style="background-color:#F8FCF4;">49.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.13.13.13" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T3.13.13.13.1"><span class="ltx_text" id="S5.T3.13.13.13.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T3.13.13.13.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T3.13.13.13.1.1.pic1.1.1.1.1.1" style="font-size:80%;">12</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.13.13.13.2"><span class="ltx_text" id="S5.T3.13.13.13.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Multi-view + Depth (Tool; GT)</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.13.13.13.3"><span class="ltx_text" id="S5.T3.13.13.13.3.1" style="background-color:#F8FCF4;">69.2</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.13.13.13.4"><span class="ltx_text" id="S5.T3.13.13.13.4.1" style="background-color:#F8FCF4;">76.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.13.13.13.5"><span class="ltx_text" id="S5.T3.13.13.13.5.1" style="background-color:#F8FCF4;">55.0</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.13.13.13.6"><span class="ltx_text" id="S5.T3.13.13.13.6.1" style="background-color:#F8FCF4;">23.6</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.13.13.13.7"><span class="ltx_text" id="S5.T3.13.13.13.7.1" style="background-color:#F8FCF4;">75.3</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.13.13.13.8"><span class="ltx_text" id="S5.T3.13.13.13.8.1" style="background-color:#F8FCF4;">65.8</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.13.13.13.9"><span class="ltx_text" id="S5.T3.13.13.13.9.1" style="background-color:#F8FCF4;">27.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.13.13.13.10"><span class="ltx_text" id="S5.T3.13.13.13.10.1" style="background-color:#F8FCF4;">27.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.13.13.13.11"><span class="ltx_text" id="S5.T3.13.13.13.11.1" style="background-color:#F8FCF4;">52.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.24.24.27">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T3.24.24.27.1"><span class="ltx_text ltx_font_italic" id="S5.T3.24.24.27.1.1">Specialist Models</span></td>
<td class="ltx_td ltx_border_t" id="S5.T3.24.24.27.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.24.24.27.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.24.24.27.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.24.24.27.5"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.24.24.27.6"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.24.24.27.7"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.24.24.27.8"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.24.24.27.9"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.24.24.27.10"></td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.14.14" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.14.14.14.1"><span class="ltx_text" id="S5.T3.14.14.14.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T3.14.14.14.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T3.14.14.14.1.1.pic1.1.1.1.1.1" style="font-size:80%;">13</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.14.14.14.2"><span class="ltx_text" id="S5.T3.14.14.14.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.14.14.14.3"><span class="ltx_text" id="S5.T3.14.14.14.3.1" style="background-color:#F8FCF4;">69.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.14.14.14.4"><span class="ltx_text" id="S5.T3.14.14.14.4.1" style="background-color:#F8FCF4;">73.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.14.14.14.5"><span class="ltx_text" id="S5.T3.14.14.14.5.1" style="background-color:#F8FCF4;">54.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.14.14.14.6"><span class="ltx_text" id="S5.T3.14.14.14.6.1" style="background-color:#F8FCF4;">24.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.14.14.14.7"><span class="ltx_text" id="S5.T3.14.14.14.7.1" style="background-color:#F8FCF4;">77.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.14.14.14.8"><span class="ltx_text" id="S5.T3.14.14.14.8.1" style="background-color:#F8FCF4;">47.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.14.14.14.9"><span class="ltx_text" id="S5.T3.14.14.14.9.1" style="background-color:#F8FCF4;">24.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T3.14.14.14.10"><span class="ltx_text" id="S5.T3.14.14.14.10.1" style="background-color:#F8FCF4;">24.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.14.14.14.11"><span class="ltx_text" id="S5.T3.14.14.14.11.1" style="background-color:#F8FCF4;">49.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.15.15.15" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T3.15.15.15.1"><span class="ltx_text" id="S5.T3.15.15.15.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T3.15.15.15.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T3.15.15.15.1.1.pic1.1.1.1.1.1" style="font-size:80%;">14</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.15.15.15.2"><span class="ltx_text" id="S5.T3.15.15.15.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + CoT</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.15.15.15.3"><span class="ltx_text" id="S5.T3.15.15.15.3.1" style="background-color:#F8FCF4;">70.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.15.15.15.4"><span class="ltx_text" id="S5.T3.15.15.15.4.1" style="background-color:#F8FCF4;">73.3</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.15.15.15.5"><span class="ltx_text" id="S5.T3.15.15.15.5.1" style="background-color:#F8FCF4;">55.8</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.15.15.15.6"><span class="ltx_text" id="S5.T3.15.15.15.6.1" style="background-color:#F8FCF4;">25.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.15.15.15.7"><span class="ltx_text" id="S5.T3.15.15.15.7.1" style="background-color:#F8FCF4;">77.7</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.15.15.15.8"><span class="ltx_text" id="S5.T3.15.15.15.8.1" style="background-color:#F8FCF4;">49.5</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.15.15.15.9"><span class="ltx_text" id="S5.T3.15.15.15.9.1" style="background-color:#F8FCF4;">27.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.15.15.15.10"><span class="ltx_text" id="S5.T3.15.15.15.10.1" style="background-color:#F8FCF4;">26.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.15.15.15.11"><span class="ltx_text" id="S5.T3.15.15.15.11.1" style="background-color:#F8FCF4;">50.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.16.16.16" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T3.16.16.16.1"><span class="ltx_text" id="S5.T3.16.16.16.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T3.16.16.16.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T3.16.16.16.1.1.pic1.1.1.1.1.1" style="font-size:80%;">15</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.16.16.16.2"><span class="ltx_text" id="S5.T3.16.16.16.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Depth (Tool; Mon.)</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.16.16.16.3"><span class="ltx_text" id="S5.T3.16.16.16.3.1" style="background-color:#F8FCF4;">70.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.16.16.16.4"><span class="ltx_text" id="S5.T3.16.16.16.4.1" style="background-color:#F8FCF4;">73.3</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.16.16.16.5"><span class="ltx_text" id="S5.T3.16.16.16.5.1" style="background-color:#F8FCF4;">55.8</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.16.16.16.6"><span class="ltx_text" id="S5.T3.16.16.16.6.1" style="background-color:#F8FCF4;">25.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.16.16.16.7"><span class="ltx_text" id="S5.T3.16.16.16.7.1" style="background-color:#F8FCF4;">77.7</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.16.16.16.8"><span class="ltx_text" id="S5.T3.16.16.16.8.1" style="background-color:#F8FCF4;">42.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.16.16.16.9"><span class="ltx_text" id="S5.T3.16.16.16.9.1" style="background-color:#F8FCF4;">26.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.16.16.16.10"><span class="ltx_text" id="S5.T3.16.16.16.10.1" style="background-color:#F8FCF4;">26.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.16.16.16.11"><span class="ltx_text" id="S5.T3.16.16.16.11.1" style="background-color:#F8FCF4;">49.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.17.17.17" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T3.17.17.17.1"><span class="ltx_text" id="S5.T3.17.17.17.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T3.17.17.17.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T3.17.17.17.1.1.pic1.1.1.1.1.1" style="font-size:80%;">16</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.17.17.17.2"><span class="ltx_text" id="S5.T3.17.17.17.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Depth (Tool; GT)</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.17.17.17.3"><span class="ltx_text" id="S5.T3.17.17.17.3.1" style="background-color:#F8FCF4;">70.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.17.17.17.4"><span class="ltx_text" id="S5.T3.17.17.17.4.1" style="background-color:#F8FCF4;">73.3</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.17.17.17.5"><span class="ltx_text" id="S5.T3.17.17.17.5.1" style="background-color:#F8FCF4;">55.8</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.17.17.17.6"><span class="ltx_text" id="S5.T3.17.17.17.6.1" style="background-color:#F8FCF4;">25.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.17.17.17.7"><span class="ltx_text" id="S5.T3.17.17.17.7.1" style="background-color:#F8FCF4;">77.7</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.17.17.17.8"><span class="ltx_text" id="S5.T3.17.17.17.8.1" style="background-color:#F8FCF4;">74.0</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.17.17.17.9"><span class="ltx_text" id="S5.T3.17.17.17.9.1" style="background-color:#F8FCF4;">32.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.17.17.17.10"><span class="ltx_text" id="S5.T3.17.17.17.10.1" style="background-color:#F8FCF4;">27.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.17.17.17.11"><span class="ltx_text" id="S5.T3.17.17.17.11.1" style="background-color:#F8FCF4;">54.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.18.18.18" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.18.1"><span class="ltx_text" id="S5.T3.18.18.18.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T3.18.18.18.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T3.18.18.18.1.1.pic1.1.1.1.1.1" style="font-size:80%;">17</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.18.18.18.2"><span class="ltx_text" id="S5.T3.18.18.18.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Depth (Encoded; GT)</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.18.18.18.3"><span class="ltx_text" id="S5.T3.18.18.18.3.1" style="background-color:#F8FCF4;">69.5</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.18.18.18.4"><span class="ltx_text" id="S5.T3.18.18.18.4.1" style="background-color:#F8FCF4;">73.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.18.18.18.5"><span class="ltx_text" id="S5.T3.18.18.18.5.1" style="background-color:#F8FCF4;">55.6</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.18.18.18.6"><span class="ltx_text" id="S5.T3.18.18.18.6.1" style="background-color:#F8FCF4;">24.2</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.18.18.18.7"><span class="ltx_text" id="S5.T3.18.18.18.7.1" style="background-color:#F8FCF4;">78.3</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.18.18.18.8"><span class="ltx_text" id="S5.T3.18.18.18.8.1" style="background-color:#F8FCF4;">48.3</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.18.18.18.9"><span class="ltx_text" id="S5.T3.18.18.18.9.1" style="background-color:#F8FCF4;">25.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.18.18.18.10"><span class="ltx_text" id="S5.T3.18.18.18.10.1" style="background-color:#F8FCF4;">24.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.18.11"><span class="ltx_text" id="S5.T3.18.18.18.11.1" style="background-color:#F8FCF4;">49.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.19.19.19" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T3.19.19.19.1"><span class="ltx_text" id="S5.T3.19.19.19.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T3.19.19.19.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T3.19.19.19.1.1.pic1.1.1.1.1.1" style="font-size:80%;">18</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.19.19.19.2"><span class="ltx_text" id="S5.T3.19.19.19.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Depth (Encoded; GT) + CoT</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.19.19.19.3"><span class="ltx_text" id="S5.T3.19.19.19.3.1" style="background-color:#F8FCF4;">69.8</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.19.19.19.4"><span class="ltx_text" id="S5.T3.19.19.19.4.1" style="background-color:#F8FCF4;">73.5</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.19.19.19.5"><span class="ltx_text" id="S5.T3.19.19.19.5.1" style="background-color:#F8FCF4;">55.3</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.19.19.19.6"><span class="ltx_text" id="S5.T3.19.19.19.6.1" style="background-color:#F8FCF4;">24.4</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.19.19.19.7"><span class="ltx_text" id="S5.T3.19.19.19.7.1" style="background-color:#F8FCF4;">77.7</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.19.19.19.8"><span class="ltx_text" id="S5.T3.19.19.19.8.1" style="background-color:#F8FCF4;">51.4</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.19.19.19.9"><span class="ltx_text" id="S5.T3.19.19.19.9.1" style="background-color:#F8FCF4;">27.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.19.19.19.10"><span class="ltx_text" id="S5.T3.19.19.19.10.1" style="background-color:#F8FCF4;">26.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.19.19.19.11"><span class="ltx_text" id="S5.T3.19.19.19.11.1" style="background-color:#F8FCF4;">50.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.20.20.20" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T3.20.20.20.1"><span class="ltx_text" id="S5.T3.20.20.20.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T3.20.20.20.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T3.20.20.20.1.1.pic1.1.1.1.1.1" style="font-size:80%;">19</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.20.20.20.2"><span class="ltx_text" id="S5.T3.20.20.20.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Multi-view</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.20.3"><span class="ltx_text" id="S5.T3.20.20.20.3.1" style="background-color:#F8FCF4;">71.5</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.20.4"><span class="ltx_text" id="S5.T3.20.20.20.4.1" style="background-color:#F8FCF4;">74.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.20.5"><span class="ltx_text" id="S5.T3.20.20.20.5.1" style="background-color:#F8FCF4;">56.2</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.20.6"><span class="ltx_text" id="S5.T3.20.20.20.6.1" style="background-color:#F8FCF4;">26.8</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.20.7"><span class="ltx_text" id="S5.T3.20.20.20.7.1" style="background-color:#F8FCF4;">77.9</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.20.8"><span class="ltx_text" id="S5.T3.20.20.20.8.1" style="background-color:#F8FCF4;">52.4</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.20.9"><span class="ltx_text" id="S5.T3.20.20.20.9.1" style="background-color:#F8FCF4;">26.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.20.20.20.10"><span class="ltx_text" id="S5.T3.20.20.20.10.1" style="background-color:#F8FCF4;">26.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.20.20.20.11"><span class="ltx_text" id="S5.T3.20.20.20.11.1" style="background-color:#F8FCF4;">51.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.21.21.21" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T3.21.21.21.1"><span class="ltx_text" id="S5.T3.21.21.21.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T3.21.21.21.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T3.21.21.21.1.1.pic1.1.1.1.1.1" style="font-size:80%;">20</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.21.21.21.2"><span class="ltx_text" id="S5.T3.21.21.21.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Multi-view + CoT</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.21.21.21.3"><span class="ltx_text" id="S5.T3.21.21.21.3.1" style="background-color:#F8FCF4;">71.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.21.21.21.4"><span class="ltx_text" id="S5.T3.21.21.21.4.1" style="background-color:#F8FCF4;">73.8</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.21.21.21.5"><span class="ltx_text" id="S5.T3.21.21.21.5.1" style="background-color:#F8FCF4;">57.2</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.21.21.21.6"><span class="ltx_text" id="S5.T3.21.21.21.6.1" style="background-color:#F8FCF4;">27.5</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.21.21.21.7"><span class="ltx_text" id="S5.T3.21.21.21.7.1" style="background-color:#F8FCF4;">78.9</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.21.21.21.8"><span class="ltx_text" id="S5.T3.21.21.21.8.1" style="background-color:#F8FCF4;">55.2</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.21.21.21.9"><span class="ltx_text" id="S5.T3.21.21.21.9.1" style="background-color:#F8FCF4;">29.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.21.21.21.10"><span class="ltx_text" id="S5.T3.21.21.21.10.1" style="background-color:#F8FCF4;">28.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.21.21.21.11"><span class="ltx_text" id="S5.T3.21.21.21.11.1" style="background-color:#F8FCF4;">52.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.22.22.22" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T3.22.22.22.1"><span class="ltx_text" id="S5.T3.22.22.22.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T3.22.22.22.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T3.22.22.22.1.1.pic1.1.1.1.1.1" style="font-size:80%;">21</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.22.22.22.2"><span class="ltx_text" id="S5.T3.22.22.22.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Multi-view + Depth (Tool; Mon.)</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.22.22.22.3"><span class="ltx_text" id="S5.T3.22.22.22.3.1" style="background-color:#F8FCF4;">71.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.22.22.22.4"><span class="ltx_text" id="S5.T3.22.22.22.4.1" style="background-color:#F8FCF4;">73.8</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.22.22.22.5"><span class="ltx_text" id="S5.T3.22.22.22.5.1" style="background-color:#F8FCF4;">57.2</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.22.22.22.6"><span class="ltx_text" id="S5.T3.22.22.22.6.1" style="background-color:#F8FCF4;">27.5</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.22.22.22.7"><span class="ltx_text" id="S5.T3.22.22.22.7.1" style="background-color:#F8FCF4;">78.9</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.22.22.22.8"><span class="ltx_text" id="S5.T3.22.22.22.8.1" style="background-color:#F8FCF4;">42.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.22.22.22.9"><span class="ltx_text" id="S5.T3.22.22.22.9.1" style="background-color:#F8FCF4;">26.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.22.22.22.10"><span class="ltx_text" id="S5.T3.22.22.22.10.1" style="background-color:#F8FCF4;">26.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.22.22.22.11"><span class="ltx_text" id="S5.T3.22.22.22.11.1" style="background-color:#F8FCF4;">50.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.23.23.23" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T3.23.23.23.1"><span class="ltx_text" id="S5.T3.23.23.23.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T3.23.23.23.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T3.23.23.23.1.1.pic1.1.1.1.1.1" style="font-size:80%;">22</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.23.23.23.2"><span class="ltx_text" id="S5.T3.23.23.23.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Multi-view + Depth (Tool; GT)</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.23.23.23.3"><span class="ltx_text" id="S5.T3.23.23.23.3.1" style="background-color:#F8FCF4;">71.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.23.23.23.4"><span class="ltx_text" id="S5.T3.23.23.23.4.1" style="background-color:#F8FCF4;">73.8</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.23.23.23.5"><span class="ltx_text" id="S5.T3.23.23.23.5.1" style="background-color:#F8FCF4;">57.2</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.23.23.23.6"><span class="ltx_text" id="S5.T3.23.23.23.6.1" style="background-color:#F8FCF4;">27.5</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.23.23.23.7"><span class="ltx_text" id="S5.T3.23.23.23.7.1" style="background-color:#F8FCF4;">78.9</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.23.23.23.8"><span class="ltx_text" id="S5.T3.23.23.23.8.1" style="background-color:#F8FCF4;">73.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.23.23.23.9"><span class="ltx_text" id="S5.T3.23.23.23.9.1" style="background-color:#F8FCF4;">33.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.23.23.23.10"><span class="ltx_text" id="S5.T3.23.23.23.10.1" style="background-color:#F8FCF4;">28.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.23.23.23.11"><span class="ltx_text" id="S5.T3.23.23.23.11.1" style="background-color:#F8FCF4;">55.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.24.24.24" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.24.24.24.1"><span class="ltx_text" id="S5.T3.24.24.24.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T3.24.24.24.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T3.24.24.24.1.1.pic1.1.1.1.1.1" style="font-size:80%;">23</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T3.24.24.24.2"><span class="ltx_text" id="S5.T3.24.24.24.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B (Blind eval)</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.24.24.24.3"><span class="ltx_text" id="S5.T3.24.24.24.3.1" style="background-color:#F8FCF4;">34.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.24.24.24.4"><span class="ltx_text" id="S5.T3.24.24.24.4.1" style="background-color:#F8FCF4;">60.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.24.24.24.5"><span class="ltx_text" id="S5.T3.24.24.24.5.1" style="background-color:#F8FCF4;">0.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.24.24.24.6"><span class="ltx_text" id="S5.T3.24.24.24.6.1" style="background-color:#F8FCF4;">0.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.24.24.24.7"><span class="ltx_text" id="S5.T3.24.24.24.7.1" style="background-color:#F8FCF4;">60.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.24.24.24.8"><span class="ltx_text" id="S5.T3.24.24.24.8.1" style="background-color:#F8FCF4;">10.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.24.24.24.9"><span class="ltx_text" id="S5.T3.24.24.24.9.1" style="background-color:#F8FCF4;">8.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S5.T3.24.24.24.10"><span class="ltx_text" id="S5.T3.24.24.24.10.1" style="background-color:#F8FCF4;">17.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.24.24.24.11"><span class="ltx_text" id="S5.T3.24.24.24.11.1" style="background-color:#F8FCF4;">24.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comprehensive evaluation of the MM-Spatial model on the Cubify Anything VQA (CA-VQA) benchmark.  It compares MM-Spatial's performance across various spatial reasoning tasks (binary classification, counting, multi-choice questions, and metric regression) against several leading open-source and commercial large language models.  The results show that MM-Spatial-3B significantly surpasses these other models, highlighting its superior 3D spatial understanding capabilities.  The table also demonstrates the positive impact of incorporating additional input signals, such as multi-view images and depth information (obtained through both tool-use and Chain-of-Thought reasoning), further enhancing the accuracy of MM-Spatial's predictions.  The improvement through chain-of-thought highlights the model's ability to accurately estimate metric depth, a critical component in advanced spatial reasoning.
> <details>
> <summary>read the caption</summary>
> Table 3: CA-VQA Results. MM-Spatial-3B significantly outperforms (much larger) top open-source and commercial models across all tasks, demonstrating its strong spatial understanding ability. Model performance is further improved by incorporating multi-view and/or depth as additional input signals, as well as by leveraging CoT, which relies on our model’s ability to accurately estimate metric depth.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.15.15">
<tr class="ltx_tr" id="S5.T4.2.2.2">
<td class="ltx_td ltx_border_tt" id="S5.T4.2.2.2.3"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T4.2.2.2.4" rowspan="3"><span class="ltx_text ltx_font_bold" id="S5.T4.2.2.2.4.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S5.T4.1.1.1.1">2D Tasks (CV-Bench<math alttext="{}^{\text{2D}}" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><msup id="S5.T4.1.1.1.1.m1.1.1" xref="S5.T4.1.1.1.1.m1.1.1.cmml"><mi id="S5.T4.1.1.1.1.m1.1.1a" xref="S5.T4.1.1.1.1.m1.1.1.cmml"></mi><mtext id="S5.T4.1.1.1.1.m1.1.1.1" xref="S5.T4.1.1.1.1.m1.1.1.1a.cmml">2D</mtext></msup><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><apply id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1"><ci id="S5.T4.1.1.1.1.m1.1.1.1a.cmml" xref="S5.T4.1.1.1.1.m1.1.1.1"><mtext id="S5.T4.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S5.T4.1.1.1.1.m1.1.1.1">2D</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">{}^{\text{2D}}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">start_FLOATSUPERSCRIPT 2D end_FLOATSUPERSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="7" id="S5.T4.2.2.2.2">3D Tasks (CV-Bench<math alttext="{}^{\text{3D}}" class="ltx_Math" display="inline" id="S5.T4.2.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.2.m1.1a"><msup id="S5.T4.2.2.2.2.m1.1.1" xref="S5.T4.2.2.2.2.m1.1.1.cmml"><mi id="S5.T4.2.2.2.2.m1.1.1a" xref="S5.T4.2.2.2.2.m1.1.1.cmml"></mi><mtext id="S5.T4.2.2.2.2.m1.1.1.1" xref="S5.T4.2.2.2.2.m1.1.1.1a.cmml">3D</mtext></msup><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.2.m1.1b"><apply id="S5.T4.2.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.2.m1.1.1"><ci id="S5.T4.2.2.2.2.m1.1.1.1a.cmml" xref="S5.T4.2.2.2.2.m1.1.1.1"><mtext id="S5.T4.2.2.2.2.m1.1.1.1.cmml" mathsize="70%" xref="S5.T4.2.2.2.2.m1.1.1.1">3D</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.2.m1.1c">{}^{\text{3D}}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.2.m1.1d">start_FLOATSUPERSCRIPT 3D end_FLOATSUPERSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.2.2.2.5" rowspan="3"><span class="ltx_text" id="S5.T4.2.2.2.5.1"><span class="ltx_text" id="S5.T4.2.2.2.5.1.1"></span> <span class="ltx_text" id="S5.T4.2.2.2.5.1.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T4.2.2.2.5.1.2.1">
<span class="ltx_tr" id="S5.T4.2.2.2.5.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.2.2.2.5.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.2.2.2.5.1.2.1.1.1.1">Average</span></span></span>
<span class="ltx_tr" id="S5.T4.2.2.2.5.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.2.2.2.5.1.2.1.2.1">(2D+3D)</span></span>
</span></span> <span class="ltx_text" id="S5.T4.2.2.2.5.1.3"></span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.15.15.16">
<td class="ltx_td" id="S5.T4.15.15.16.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.15.15.16.2" rowspan="2"><span class="ltx_text" id="S5.T4.15.15.16.2.1"><span class="ltx_text" id="S5.T4.15.15.16.2.1.1"></span> <span class="ltx_text" id="S5.T4.15.15.16.2.1.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T4.15.15.16.2.1.2.1">
<span class="ltx_tr" id="S5.T4.15.15.16.2.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.15.15.16.2.1.2.1.1.1">Object</span></span>
<span class="ltx_tr" id="S5.T4.15.15.16.2.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.15.15.16.2.1.2.1.2.1">Count</span></span>
</span></span> <span class="ltx_text" id="S5.T4.15.15.16.2.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.15.15.16.3" rowspan="2"><span class="ltx_text" id="S5.T4.15.15.16.3.1"><span class="ltx_text" id="S5.T4.15.15.16.3.1.1"></span> <span class="ltx_text" id="S5.T4.15.15.16.3.1.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T4.15.15.16.3.1.2.1">
<span class="ltx_tr" id="S5.T4.15.15.16.3.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.15.15.16.3.1.2.1.1.1">Spatial</span></span>
<span class="ltx_tr" id="S5.T4.15.15.16.3.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.15.15.16.3.1.2.1.2.1">Relation.</span></span>
</span></span> <span class="ltx_text" id="S5.T4.15.15.16.3.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.15.15.16.4" rowspan="2"><span class="ltx_text" id="S5.T4.15.15.16.4.1"><span class="ltx_text" id="S5.T4.15.15.16.4.1.1"></span> <span class="ltx_text" id="S5.T4.15.15.16.4.1.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T4.15.15.16.4.1.2.1">
<span class="ltx_tr" id="S5.T4.15.15.16.4.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.15.15.16.4.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.15.15.16.4.1.2.1.1.1.1">Average</span></span></span>
<span class="ltx_tr" id="S5.T4.15.15.16.4.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.15.15.16.4.1.2.1.2.1">(2D)</span></span>
</span></span> <span class="ltx_text" id="S5.T4.15.15.16.4.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="S5.T4.15.15.16.5">Depth Order</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="S5.T4.15.15.16.6">Relative Distance</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.15.15.16.7" rowspan="2"><span class="ltx_text" id="S5.T4.15.15.16.7.1"><span class="ltx_text" id="S5.T4.15.15.16.7.1.1"></span> <span class="ltx_text" id="S5.T4.15.15.16.7.1.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T4.15.15.16.7.1.2.1">
<span class="ltx_tr" id="S5.T4.15.15.16.7.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.15.15.16.7.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.15.15.16.7.1.2.1.1.1.1">Average</span></span></span>
<span class="ltx_tr" id="S5.T4.15.15.16.7.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.15.15.16.7.1.2.1.2.1">(3D)</span></span>
</span></span> <span class="ltx_text" id="S5.T4.15.15.16.7.1.3"></span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.15.15.17">
<td class="ltx_td" id="S5.T4.15.15.17.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.15.15.17.2">Indoor</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.15.15.17.3">Outdoor</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.15.15.17.4"><span class="ltx_text ltx_font_bold" id="S5.T4.15.15.17.4.1">Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.15.15.17.5">Indoor</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.15.15.17.6">Outdoor</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.15.15.17.7"><span class="ltx_text ltx_font_bold" id="S5.T4.15.15.17.7.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.1"><svg class="ltx_picture" height="15.77" id="S5.T4.3.3.3.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T4.3.3.3.1.pic1.1.1.1.1.1" style="font-size:80%;">1</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.3.3.3.2">GPT-4V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib104" title=""><span class="ltx_text" style="font-size:90%;">104</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.3">–</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.3.4">–</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.3.5">64.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.6">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.7">–</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.3.8">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.9">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.10">–</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.3.11">–</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.3.12">73.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.13">69.1</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.4">
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.1"><svg class="ltx_picture" height="15.77" id="S5.T4.4.4.4.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T4.4.4.4.1.pic1.1.1.1.1.1" style="font-size:80%;">2</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.4.4.4.2">LLaVA-NeXT-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib81" title=""><span class="ltx_text" style="font-size:90%;">81</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib104" title=""><span class="ltx_text" style="font-size:90%;">104</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.3">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.4.4.4">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.4.4.5">62.2</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.6">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.7">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.4.4.8">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.9">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.10">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.4.4.11">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.4.4.12">65.3</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.13">63.8</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.5.5">
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.5.1"><svg class="ltx_picture" height="15.77" id="S5.T4.5.5.5.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T4.5.5.5.1.pic1.1.1.1.1.1" style="font-size:80%;">3</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.5.5.5.2">Cambrian-1-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib104" title=""><span class="ltx_text" style="font-size:90%;">104</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.5.3">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.5.5.4">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.5.5.5">72.3</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.5.6">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.5.7">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.5.5.8">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.5.9">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.5.10">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.5.5.11">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.5.5.12">72.0</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.5.13">72.2</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6.6">
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.6.1"><svg class="ltx_picture" height="15.77" id="S5.T4.6.6.6.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T4.6.6.6.1.pic1.1.1.1.1.1" style="font-size:80%;">4</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.6.6.6.2">Phantom-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.6.3">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.6.6.4">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.6.6.5">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.6.6">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.6.7">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.6.6.8">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.6.9">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.6.10">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.6.6.11">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.6.6.12">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.6.13">74.9</td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.7.7">
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.7.1"><svg class="ltx_picture" height="15.77" id="S5.T4.7.7.7.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T4.7.7.7.1.pic1.1.1.1.1.1" style="font-size:80%;">5</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.7.7.7.2">LLaVA-1.5-13B + SAT Dyn. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib92" title=""><span class="ltx_text" style="font-size:90%;">92</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.7.3">62.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.7.7.7.4">85.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.7.7.7.5">74.4</td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.7.6">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.7.7">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.7.7.7.8">76.6</td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.7.9">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.7.10">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.7.7.7.11">71.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.7.7.7.12">74.1</td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.7.13">74.3</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.8.8">
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.8.1"><svg class="ltx_picture" height="15.77" id="S5.T4.8.8.8.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T4.8.8.8.1.pic1.1.1.1.1.1" style="font-size:80%;">6</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.8.8.8.2">LLaVA-NeXT-34B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib81" title=""><span class="ltx_text" style="font-size:90%;">81</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib104" title=""><span class="ltx_text" style="font-size:90%;">104</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.8.3">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.8.4">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.8.5">73.0</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.8.6">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.8.7">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.8.8">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.8.9">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.8.10">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.8.11">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.8.12">74.8</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.8.13">73.9</td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.9">
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.9.1"><svg class="ltx_picture" height="15.77" id="S5.T4.9.9.9.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T4.9.9.9.1.pic1.1.1.1.1.1" style="font-size:80%;">7</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.9.9.9.2">Mini-Gemini-HD-34B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib70" title=""><span class="ltx_text" style="font-size:90%;">70</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib104" title=""><span class="ltx_text" style="font-size:90%;">104</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.9.3">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.9.9.9.4">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.9.9.9.5">71.5</td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.9.6">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.9.7">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.9.9.9.8">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.9.9">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.9.10">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.9.9.9.11">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.9.9.9.12">79.2</td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.9.13">75.4</td>
</tr>
<tr class="ltx_tr" id="S5.T4.10.10.10">
<td class="ltx_td ltx_align_center" id="S5.T4.10.10.10.1"><svg class="ltx_picture" height="15.77" id="S5.T4.10.10.10.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T4.10.10.10.1.pic1.1.1.1.1.1" style="font-size:80%;">8</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.10.10.10.2">Cambrian-1-34B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib104" title=""><span class="ltx_text" style="font-size:90%;">104</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.10.10.3">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.10.10.10.4">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.10.10.10.5">74.0</td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.10.10.6">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.10.10.7">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.10.10.10.8">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.10.10.9">–</td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.10.10.10">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.10.10.10.11">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.10.10.10.12">79.7</td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.10.10.13">76.9</td>
</tr>
<tr class="ltx_tr" id="S5.T4.11.11.11" style="background-color:#DFEBF7;">
<td class="ltx_td ltx_align_center" id="S5.T4.11.11.11.1"><span class="ltx_text" id="S5.T4.11.11.11.1.1" style="background-color:#DFEBF7;"><svg class="ltx_picture" height="15.77" id="S5.T4.11.11.11.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T4.11.11.11.1.1.pic1.1.1.1.1.1" style="font-size:80%;">9</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.11.11.11.2"><span class="ltx_text" id="S5.T4.11.11.11.2.1" style="background-color:#DFEBF7;">MM1.5-3B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib128" title=""><span class="ltx_text" style="font-size:90%;">128</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.11.11.11.3"><span class="ltx_text" id="S5.T4.11.11.11.3.1" style="background-color:#DFEBF7;">58.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.11.11.11.4"><span class="ltx_text" id="S5.T4.11.11.11.4.1" style="background-color:#DFEBF7;">64.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.11.11.11.5"><span class="ltx_text" id="S5.T4.11.11.11.5.1" style="background-color:#DFEBF7;">61.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.11.11.11.6"><span class="ltx_text" id="S5.T4.11.11.11.6.1" style="background-color:#DFEBF7;">67.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.11.11.11.7"><span class="ltx_text" id="S5.T4.11.11.11.7.1" style="background-color:#DFEBF7;">71.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.11.11.11.8"><span class="ltx_text" id="S5.T4.11.11.11.8.1" style="background-color:#DFEBF7;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.11.11.11.9"><span class="ltx_text" id="S5.T4.11.11.11.9.1" style="background-color:#DFEBF7;">68.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.11.11.11.10"><span class="ltx_text" id="S5.T4.11.11.11.10.1" style="background-color:#DFEBF7;">69.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.11.11.11.11"><span class="ltx_text" id="S5.T4.11.11.11.11.1" style="background-color:#DFEBF7;">68.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.11.11.11.12"><span class="ltx_text" id="S5.T4.11.11.11.12.1" style="background-color:#DFEBF7;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.11.11.11.13"><span class="ltx_text" id="S5.T4.11.11.11.13.1" style="background-color:#DFEBF7;">64.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.12.12.12" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T4.12.12.12.1"><span class="ltx_text" id="S5.T4.12.12.12.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T4.12.12.12.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T4.12.12.12.1.1.pic1.1.1.1.1.1" style="font-size:80%;">10</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.12.12.12.2"><span class="ltx_text" id="S5.T4.12.12.12.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.12.12.12.3"><span class="ltx_text ltx_font_bold" id="S5.T4.12.12.12.3.1" style="background-color:#F8FCF4;">88.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.12.12.12.4"><span class="ltx_text" id="S5.T4.12.12.12.4.1" style="background-color:#F8FCF4;">94.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.12.12.12.5"><span class="ltx_text" id="S5.T4.12.12.12.5.1" style="background-color:#F8FCF4;">91.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.12.12.12.6"><span class="ltx_text" id="S5.T4.12.12.12.6.1" style="background-color:#F8FCF4;">96.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.12.12.12.7"><span class="ltx_text" id="S5.T4.12.12.12.7.1" style="background-color:#F8FCF4;">87.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.12.12.12.8"><span class="ltx_text" id="S5.T4.12.12.12.8.1" style="background-color:#F8FCF4;">93.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.12.12.12.9"><span class="ltx_text" id="S5.T4.12.12.12.9.1" style="background-color:#F8FCF4;">95.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.12.12.12.10"><span class="ltx_text" id="S5.T4.12.12.12.10.1" style="background-color:#F8FCF4;">75.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.12.12.12.11"><span class="ltx_text" id="S5.T4.12.12.12.11.1" style="background-color:#F8FCF4;">89.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.12.12.12.12"><span class="ltx_text" id="S5.T4.12.12.12.12.1" style="background-color:#F8FCF4;">91.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.12.12.12.13"><span class="ltx_text" id="S5.T4.12.12.12.13.1" style="background-color:#F8FCF4;">91.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.13.13.13" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T4.13.13.13.1"><span class="ltx_text" id="S5.T4.13.13.13.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T4.13.13.13.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T4.13.13.13.1.1.pic1.1.1.1.1.1" style="font-size:80%;">11</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.13.13.13.2"><span class="ltx_text" id="S5.T4.13.13.13.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + CoT</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.13.13.13.3"><span class="ltx_text" id="S5.T4.13.13.13.3.1" style="background-color:#F8FCF4;">88.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.13.13.13.4"><span class="ltx_text ltx_font_bold" id="S5.T4.13.13.13.4.1" style="background-color:#F8FCF4;">96.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.13.13.13.5"><span class="ltx_text ltx_font_bold" id="S5.T4.13.13.13.5.1" style="background-color:#F8FCF4;">91.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.13.13.13.6"><span class="ltx_text" id="S5.T4.13.13.13.6.1" style="background-color:#F8FCF4;">96.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.13.13.13.7"><span class="ltx_text" id="S5.T4.13.13.13.7.1" style="background-color:#F8FCF4;">88.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.13.13.13.8"><span class="ltx_text" id="S5.T4.13.13.13.8.1" style="background-color:#F8FCF4;">93.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.13.13.13.9"><span class="ltx_text ltx_font_bold" id="S5.T4.13.13.13.9.1" style="background-color:#F8FCF4;">98.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.13.13.13.10"><span class="ltx_text" id="S5.T4.13.13.13.10.1" style="background-color:#F8FCF4;">78.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.13.13.13.11"><span class="ltx_text" id="S5.T4.13.13.13.11.1" style="background-color:#F8FCF4;">91.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.13.13.13.12"><span class="ltx_text" id="S5.T4.13.13.13.12.1" style="background-color:#F8FCF4;">92.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.13.13.13.13"><span class="ltx_text" id="S5.T4.13.13.13.13.1" style="background-color:#F8FCF4;">92.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.14.14.14" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T4.14.14.14.1"><span class="ltx_text" id="S5.T4.14.14.14.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T4.14.14.14.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T4.14.14.14.1.1.pic1.1.1.1.1.1" style="font-size:80%;">12</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.14.14.14.2"><span class="ltx_text" id="S5.T4.14.14.14.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Depth (Tool; Mon.)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.14.14.14.3"><span class="ltx_text" id="S5.T4.14.14.14.3.1" style="background-color:#F8FCF4;">88.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.14.14.14.4"><span class="ltx_text ltx_font_bold" id="S5.T4.14.14.14.4.1" style="background-color:#F8FCF4;">96.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.14.14.14.5"><span class="ltx_text ltx_font_bold" id="S5.T4.14.14.14.5.1" style="background-color:#F8FCF4;">91.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.14.14.14.6"><span class="ltx_text ltx_font_bold" id="S5.T4.14.14.14.6.1" style="background-color:#F8FCF4;">99.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.14.14.14.7"><span class="ltx_text ltx_font_bold" id="S5.T4.14.14.14.7.1" style="background-color:#F8FCF4;">92.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.14.14.14.8"><span class="ltx_text ltx_font_bold" id="S5.T4.14.14.14.8.1" style="background-color:#F8FCF4;">96.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.14.14.14.9"><span class="ltx_text" id="S5.T4.14.14.14.9.1" style="background-color:#F8FCF4;">97.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.14.14.14.10"><span class="ltx_text ltx_font_bold" id="S5.T4.14.14.14.10.1" style="background-color:#F8FCF4;">80.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.14.14.14.11"><span class="ltx_text ltx_font_bold" id="S5.T4.14.14.14.11.1" style="background-color:#F8FCF4;">91.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.14.14.14.12"><span class="ltx_text ltx_font_bold" id="S5.T4.14.14.14.12.1" style="background-color:#F8FCF4;">94.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.14.14.14.13"><span class="ltx_text ltx_font_bold" id="S5.T4.14.14.14.13.1" style="background-color:#F8FCF4;">93.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.15.15.15" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.15.15.15.1"><span class="ltx_text" id="S5.T4.15.15.15.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T4.15.15.15.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T4.15.15.15.1.1.pic1.1.1.1.1.1" style="font-size:80%;">13</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.15.15.15.2"><span class="ltx_text" id="S5.T4.15.15.15.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B (Specialist; Blind eval)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.15.15.15.3"><span class="ltx_text ltx_font_bold" id="S5.T4.15.15.15.3.1" style="background-color:#F8FCF4;">92.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.15.15.15.4"><span class="ltx_text" id="S5.T4.15.15.15.4.1" style="background-color:#F8FCF4;">59.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.15.15.15.5"><span class="ltx_text" id="S5.T4.15.15.15.5.1" style="background-color:#F8FCF4;">77.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.15.15.15.6"><span class="ltx_text" id="S5.T4.15.15.15.6.1" style="background-color:#F8FCF4;">64.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.15.15.15.7"><span class="ltx_text" id="S5.T4.15.15.15.7.1" style="background-color:#F8FCF4;">50.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.15.15.15.8"><span class="ltx_text" id="S5.T4.15.15.15.8.1" style="background-color:#F8FCF4;">59.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.15.15.15.9"><span class="ltx_text" id="S5.T4.15.15.15.9.1" style="background-color:#F8FCF4;">59.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.15.15.15.10"><span class="ltx_text" id="S5.T4.15.15.15.10.1" style="background-color:#F8FCF4;">51.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.15.15.15.11"><span class="ltx_text" id="S5.T4.15.15.15.11.1" style="background-color:#F8FCF4;">56.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.15.15.15.12"><span class="ltx_text" id="S5.T4.15.15.15.12.1" style="background-color:#F8FCF4;">58.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.15.15.15.13"><span class="ltx_text" id="S5.T4.15.15.15.13.1" style="background-color:#F8FCF4;">67.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comprehensive comparison of MM-Spatial-3B's performance on the CV-Bench benchmark against other state-of-the-art (SOTA) models.  CV-Bench evaluates performance across both 2D and 3D spatial reasoning tasks.  The results demonstrate that MM-Spatial-3B significantly surpasses the performance of larger SOTA models, particularly in 3D spatial reasoning tasks.  Furthermore, incorporating Chain-of-Thought (CoT) reasoning and utilizing depth input (either via sensor or monocular depth estimation) further improves the performance of MM-Spatial-3B. Notably, MM-Spatial-3B achieves near-perfect accuracy on indoor 3D tasks and also shows high performance on outdoor 3D tasks, showcasing its ability to generalize well beyond the training data.
> <details>
> <summary>read the caption</summary>
> Table 4: CV-Bench Results. MM-Spatial-3B substantially outperforms the (much larger) SOTA models, with CoT and depth input further improving performance. It almost fully solves the indoor 3D tasks, while also excelling at the out-of-domain outdoor 3D tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.4.4">
<tr class="ltx_tr" id="S5.T5.4.4.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T5.4.4.5.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T5.4.4.5.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.T5.4.4.5.2">Generalist</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T5.4.4.5.3">Specialist</td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1.1"><math alttext="\delta_{1}\uparrow" class="ltx_Math" display="inline" id="S5.T5.1.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.1.m1.1a"><mrow id="S5.T5.1.1.1.1.m1.1.1" xref="S5.T5.1.1.1.1.m1.1.1.cmml"><msub id="S5.T5.1.1.1.1.m1.1.1.2" xref="S5.T5.1.1.1.1.m1.1.1.2.cmml"><mi id="S5.T5.1.1.1.1.m1.1.1.2.2" xref="S5.T5.1.1.1.1.m1.1.1.2.2.cmml">δ</mi><mn id="S5.T5.1.1.1.1.m1.1.1.2.3" xref="S5.T5.1.1.1.1.m1.1.1.2.3.cmml">1</mn></msub><mo id="S5.T5.1.1.1.1.m1.1.1.1" stretchy="false" xref="S5.T5.1.1.1.1.m1.1.1.1.cmml">↑</mo><mi id="S5.T5.1.1.1.1.m1.1.1.3" xref="S5.T5.1.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.1.m1.1b"><apply id="S5.T5.1.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.1.m1.1.1"><ci id="S5.T5.1.1.1.1.m1.1.1.1.cmml" xref="S5.T5.1.1.1.1.m1.1.1.1">↑</ci><apply id="S5.T5.1.1.1.1.m1.1.1.2.cmml" xref="S5.T5.1.1.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="S5.T5.1.1.1.1.m1.1.1.2.1.cmml" xref="S5.T5.1.1.1.1.m1.1.1.2">subscript</csymbol><ci id="S5.T5.1.1.1.1.m1.1.1.2.2.cmml" xref="S5.T5.1.1.1.1.m1.1.1.2.2">𝛿</ci><cn id="S5.T5.1.1.1.1.m1.1.1.2.3.cmml" type="integer" xref="S5.T5.1.1.1.1.m1.1.1.2.3">1</cn></apply><csymbol cd="latexml" id="S5.T5.1.1.1.1.m1.1.1.3.cmml" xref="S5.T5.1.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.1.m1.1c">\delta_{1}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.1.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.2.2.2.2">
<em class="ltx_emph ltx_font_italic" id="S5.T5.2.2.2.2.1">AbsRel</em> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.2.2.2.2.m1.1"><semantics id="S5.T5.2.2.2.2.m1.1a"><mo id="S5.T5.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T5.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.2.m1.1b"><ci id="S5.T5.2.2.2.2.m1.1.1.cmml" xref="S5.T5.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.3.3"><math alttext="\delta_{1}\uparrow" class="ltx_Math" display="inline" id="S5.T5.3.3.3.3.m1.1"><semantics id="S5.T5.3.3.3.3.m1.1a"><mrow id="S5.T5.3.3.3.3.m1.1.1" xref="S5.T5.3.3.3.3.m1.1.1.cmml"><msub id="S5.T5.3.3.3.3.m1.1.1.2" xref="S5.T5.3.3.3.3.m1.1.1.2.cmml"><mi id="S5.T5.3.3.3.3.m1.1.1.2.2" xref="S5.T5.3.3.3.3.m1.1.1.2.2.cmml">δ</mi><mn id="S5.T5.3.3.3.3.m1.1.1.2.3" xref="S5.T5.3.3.3.3.m1.1.1.2.3.cmml">1</mn></msub><mo id="S5.T5.3.3.3.3.m1.1.1.1" stretchy="false" xref="S5.T5.3.3.3.3.m1.1.1.1.cmml">↑</mo><mi id="S5.T5.3.3.3.3.m1.1.1.3" xref="S5.T5.3.3.3.3.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.3.3.m1.1b"><apply id="S5.T5.3.3.3.3.m1.1.1.cmml" xref="S5.T5.3.3.3.3.m1.1.1"><ci id="S5.T5.3.3.3.3.m1.1.1.1.cmml" xref="S5.T5.3.3.3.3.m1.1.1.1">↑</ci><apply id="S5.T5.3.3.3.3.m1.1.1.2.cmml" xref="S5.T5.3.3.3.3.m1.1.1.2"><csymbol cd="ambiguous" id="S5.T5.3.3.3.3.m1.1.1.2.1.cmml" xref="S5.T5.3.3.3.3.m1.1.1.2">subscript</csymbol><ci id="S5.T5.3.3.3.3.m1.1.1.2.2.cmml" xref="S5.T5.3.3.3.3.m1.1.1.2.2">𝛿</ci><cn id="S5.T5.3.3.3.3.m1.1.1.2.3.cmml" type="integer" xref="S5.T5.3.3.3.3.m1.1.1.2.3">1</cn></apply><csymbol cd="latexml" id="S5.T5.3.3.3.3.m1.1.1.3.cmml" xref="S5.T5.3.3.3.3.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.3.3.m1.1c">\delta_{1}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.3.3.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.4.4.4">
<em class="ltx_emph ltx_font_italic" id="S5.T5.4.4.4.4.1">AbsRel</em> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.4.4.4.4.m1.1"><semantics id="S5.T5.4.4.4.4.m1.1a"><mo id="S5.T5.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T5.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.4.4.4.4.m1.1b"><ci id="S5.T5.4.4.4.4.m1.1.1.cmml" xref="S5.T5.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.4.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T5.4.4.6.1">ARKit Depth</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.4.6.2">96.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.4.4.6.3">4.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.4.6.4">96.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.4.6.5">4.6</td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.4.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.4.4.7.1">Monocular (DepthPro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a>]</cite>)</td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.7.2">82.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.4.4.7.3">13.4</td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.7.4">82.0</td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.7.5">13.6</td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.4.8" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T5.4.4.8.1"><span class="ltx_text" id="S5.T5.4.4.8.1.1" style="background-color:#F8FCF4;">MM-Spatial-3B + CoT</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.4.4.8.2"><span class="ltx_text" id="S5.T5.4.4.8.2.1" style="background-color:#F8FCF4;">84.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.4.4.8.3"><span class="ltx_text" id="S5.T5.4.4.8.3.1" style="background-color:#F8FCF4;">12.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.4.4.8.4"><span class="ltx_text" id="S5.T5.4.4.8.4.1" style="background-color:#F8FCF4;">89.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.4.4.8.5"><span class="ltx_text" id="S5.T5.4.4.8.5.1" style="background-color:#F8FCF4;">11.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of metric depth estimation.  It compares the performance of the MM-Spatial model's Chain-of-Thought (CoT) approach against two baselines:  a monocular depth estimation model (DepthPro) and a LiDAR-based depth estimation method (ARKit Depth). The evaluation uses the CA-VQA benchmark and focuses on the accuracy of depth prediction, measured using two common metrics: δ1 (accuracy at 25% relative error) and AbsRel (absolute relative error). The results show that the MM-Spatial + CoT model surpasses DepthPro's performance, although the LiDAR-based ARKit Depth remains the most accurate.
> <details>
> <summary>read the caption</summary>
> Table 5: Metric Depth Estimation Results. We evaluate the metric depth estimates of our CoT model produced as part of its responses on the CA-VQA benchmark. We compare against the tool-use estimates based on Monocular (DepthPro [12]) and ARKit Depth, i.e., the median depth value within the 2D box predicted by MM-Spatial + CoT (generalist & specialist). We report the δ1subscript𝛿1\delta_{1}italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT (accuracy at 25% relative error) and AbsRel (absolute relative error) metrics [57] commonly used in the depth estimation literature [12], computed against GT FARO depth. MM-Spatial + CoT outperforms DepthPro. LiDAR-derived ARKit Depth is best.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T6.30.30">
<tr class="ltx_tr" id="S5.T6.30.30.31">
<td class="ltx_td ltx_border_tt" id="S5.T6.30.30.31.1"></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T6.30.30.31.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T6.30.30.31.2.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T6.30.30.31.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T6.30.30.31.3.1">Spatial SFT Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="7" id="S5.T6.30.30.31.4">Qualitative (Binary) Tasks</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="6" id="S5.T6.30.30.31.5">Quantitative (Metric) Tasks</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.30.30.31.6" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T6.30.30.31.6.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.30.30.32">
<td class="ltx_td" id="S5.T6.30.30.32.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.30.30.32.2">
<span class="ltx_text" id="S5.T6.30.30.32.2.1"></span> <span class="ltx_text" id="S5.T6.30.30.32.2.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T6.30.30.32.2.2.1">
<span class="ltx_tr" id="S5.T6.30.30.32.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.2.2.1.1.1">Below /</span></span>
<span class="ltx_tr" id="S5.T6.30.30.32.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.2.2.1.2.1">Above</span></span>
</span></span><span class="ltx_text" id="S5.T6.30.30.32.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.30.30.32.3">
<span class="ltx_text" id="S5.T6.30.30.32.3.1"></span> <span class="ltx_text" id="S5.T6.30.30.32.3.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T6.30.30.32.3.2.1">
<span class="ltx_tr" id="S5.T6.30.30.32.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.3.2.1.1.1">Left /</span></span>
<span class="ltx_tr" id="S5.T6.30.30.32.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.3.2.1.2.1">Right</span></span>
</span></span><span class="ltx_text" id="S5.T6.30.30.32.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.30.30.32.4">
<span class="ltx_text" id="S5.T6.30.30.32.4.1"></span> <span class="ltx_text" id="S5.T6.30.30.32.4.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T6.30.30.32.4.2.1">
<span class="ltx_tr" id="S5.T6.30.30.32.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.4.2.1.1.1">Big /</span></span>
<span class="ltx_tr" id="S5.T6.30.30.32.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.4.2.1.2.1">Small</span></span>
</span></span><span class="ltx_text" id="S5.T6.30.30.32.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.30.30.32.5">
<span class="ltx_text" id="S5.T6.30.30.32.5.1"></span> <span class="ltx_text" id="S5.T6.30.30.32.5.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T6.30.30.32.5.2.1">
<span class="ltx_tr" id="S5.T6.30.30.32.5.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.5.2.1.1.1">Tall /</span></span>
<span class="ltx_tr" id="S5.T6.30.30.32.5.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.5.2.1.2.1">Short</span></span>
</span></span><span class="ltx_text" id="S5.T6.30.30.32.5.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.30.30.32.6">
<span class="ltx_text" id="S5.T6.30.30.32.6.1"></span> <span class="ltx_text" id="S5.T6.30.30.32.6.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T6.30.30.32.6.2.1">
<span class="ltx_tr" id="S5.T6.30.30.32.6.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.6.2.1.1.1">Wide /</span></span>
<span class="ltx_tr" id="S5.T6.30.30.32.6.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.6.2.1.2.1">Thin</span></span>
</span></span><span class="ltx_text" id="S5.T6.30.30.32.6.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.30.30.32.7">
<span class="ltx_text" id="S5.T6.30.30.32.7.1"></span> <span class="ltx_text" id="S5.T6.30.30.32.7.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T6.30.30.32.7.2.1">
<span class="ltx_tr" id="S5.T6.30.30.32.7.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.7.2.1.1.1">Behind</span></span>
<span class="ltx_tr" id="S5.T6.30.30.32.7.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.7.2.1.2.1">/ Front</span></span>
</span></span><span class="ltx_text" id="S5.T6.30.30.32.7.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.30.30.32.8"><span class="ltx_text ltx_font_bold" id="S5.T6.30.30.32.8.1">Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.30.30.32.9">
<span class="ltx_text" id="S5.T6.30.30.32.9.1"></span> <span class="ltx_text" id="S5.T6.30.30.32.9.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T6.30.30.32.9.2.1">
<span class="ltx_tr" id="S5.T6.30.30.32.9.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.9.2.1.1.1">Direct</span></span>
<span class="ltx_tr" id="S5.T6.30.30.32.9.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.9.2.1.2.1">Dist.</span></span>
</span></span><span class="ltx_text" id="S5.T6.30.30.32.9.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.30.30.32.10">
<span class="ltx_text" id="S5.T6.30.30.32.10.1"></span> <span class="ltx_text" id="S5.T6.30.30.32.10.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T6.30.30.32.10.2.1">
<span class="ltx_tr" id="S5.T6.30.30.32.10.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.10.2.1.1.1">Horizon.</span></span>
<span class="ltx_tr" id="S5.T6.30.30.32.10.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.10.2.1.2.1">Dist.</span></span>
</span></span><span class="ltx_text" id="S5.T6.30.30.32.10.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.30.30.32.11">
<span class="ltx_text" id="S5.T6.30.30.32.11.1"></span> <span class="ltx_text" id="S5.T6.30.30.32.11.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T6.30.30.32.11.2.1">
<span class="ltx_tr" id="S5.T6.30.30.32.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.11.2.1.1.1">Vertical</span></span>
<span class="ltx_tr" id="S5.T6.30.30.32.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.30.30.32.11.2.1.2.1">Dist.</span></span>
</span></span><span class="ltx_text" id="S5.T6.30.30.32.11.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.30.30.32.12">Width</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.30.30.32.13">Height</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.30.30.32.14"><span class="ltx_text ltx_font_bold" id="S5.T6.30.30.32.14.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.1"><svg class="ltx_picture" height="15.77" id="S5.T6.1.1.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T6.1.1.1.1.pic1.1.1.1.1.1" style="font-size:80%;">1</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.1.1.1.2">GPT-4 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T6.1.1.1.3">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.4">64.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.5">42.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.6">42.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.7">61.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.8">61.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.1.1.1.9">49.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.1.1.1.10">53.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.11">21.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.12">11.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.13">33.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.14">52.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.1.1.1.15">48.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.1.1.1.16">33.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.17">43.5</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.2.2">
<td class="ltx_td ltx_align_center" id="S5.T6.2.2.2.1"><svg class="ltx_picture" height="15.77" id="S5.T6.2.2.2.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T6.2.2.2.1.pic1.1.1.1.1.1" style="font-size:80%;">2</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left" id="S5.T6.2.2.2.2">GPT-4V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.2.2.2.3">–</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.2.2.4">63.3</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.2.2.5">46.6</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.2.2.6">64.1</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.2.2.7">60.7</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.2.2.8">68.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.2.2.2.9">45.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.2.2.2.10">58.0</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.2.2.11">29.7</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.2.2.12">25.4</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.2.2.13">33.0</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.2.2.14">51.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.2.2.2.15">68.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.2.2.2.16">41.5</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.2.2.17">49.8</td>
</tr>
<tr class="ltx_tr" id="S5.T6.3.3.3">
<td class="ltx_td ltx_align_center" id="S5.T6.3.3.3.1"><svg class="ltx_picture" height="15.77" id="S5.T6.3.3.3.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T6.3.3.3.1.pic1.1.1.1.1.1" style="font-size:80%;">3</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left" id="S5.T6.3.3.3.2">SpatialRGPT-7B (RGB-only) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.3.3.3.3">OSD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S5.T6.3.3.3.4.1">99.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.3.3.3.5">99.0</td>
<td class="ltx_td ltx_align_center" id="S5.T6.3.3.3.6">79.2</td>
<td class="ltx_td ltx_align_center" id="S5.T6.3.3.3.7">89.2</td>
<td class="ltx_td ltx_align_center" id="S5.T6.3.3.3.8">83.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.3.3.3.9">87.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.3.3.3.10">89.6</td>
<td class="ltx_td ltx_align_center" id="S5.T6.3.3.3.11">35.1</td>
<td class="ltx_td ltx_align_center" id="S5.T6.3.3.3.12">59.0</td>
<td class="ltx_td ltx_align_center" id="S5.T6.3.3.3.13">53.8</td>
<td class="ltx_td ltx_align_center" id="S5.T6.3.3.3.14">51.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.3.3.3.15">54.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.3.3.3.16">50.9</td>
<td class="ltx_td ltx_align_center" id="S5.T6.3.3.3.17">70.3</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.4.4">
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.4.1"><svg class="ltx_picture" height="15.77" id="S5.T6.4.4.4.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T6.4.4.4.1.pic1.1.1.1.1.1" style="font-size:80%;">4</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left" id="S5.T6.4.4.4.2">SpatialRGPT-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.4.4.4.3">OSD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S5.T6.4.4.4.4.1">99.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.4.5">99.0</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.4.6">80.2</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.4.7">92.0</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.4.8">87.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.4.4.4.9">91.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.4.4.4.10">91.6</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.4.11">41.2</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.4.12">65.6</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.4.13">51.9</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.4.14">49.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.4.4.4.15">57.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.4.4.4.16">53.2</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.4.17">72.4</td>
</tr>
<tr class="ltx_tr" id="S5.T6.5.5.5">
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.1"><svg class="ltx_picture" height="15.77" id="S5.T6.5.5.5.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T6.5.5.5.1.pic1.1.1.1.1.1" style="font-size:80%;">5</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left" id="S5.T6.5.5.5.2">SpatialRGPT-VILA-1.5-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.5.5.5.3">OSD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.4"><span class="ltx_text ltx_font_bold" id="S5.T6.5.5.5.4.1">99.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S5.T6.5.5.5.5.1">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.6">84.9</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.7">89.3</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.8">91.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.5.5.5.9">90.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.5.5.5.10">92.6</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.11">45.9</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.12">68.0</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.13">56.6</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.14">48.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.5.5.5.15">61.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.5.5.5.16">56.2</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.17">74.4</td>
</tr>
<tr class="ltx_tr" id="S5.T6.6.6.6" style="background-color:#DFEBF7;">
<td class="ltx_td ltx_align_center" id="S5.T6.6.6.6.1"><span class="ltx_text" id="S5.T6.6.6.6.1.1" style="background-color:#DFEBF7;"><svg class="ltx_picture" height="15.77" id="S5.T6.6.6.6.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T6.6.6.6.1.1.pic1.1.1.1.1.1" style="font-size:80%;">6</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left" id="S5.T6.6.6.6.2"><span class="ltx_text" id="S5.T6.6.6.6.2.1" style="background-color:#DFEBF7;">MM1.5-3B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib128" title=""><span class="ltx_text" style="font-size:90%;">128</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.6.6.6.3"><span class="ltx_text" id="S5.T6.6.6.6.3.1" style="background-color:#DFEBF7;">–</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.6.6.6.4"><span class="ltx_text" id="S5.T6.6.6.6.4.1" style="background-color:#DFEBF7;">35.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.6.6.6.5"><span class="ltx_text" id="S5.T6.6.6.6.5.1" style="background-color:#DFEBF7;">46.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.6.6.6.6"><span class="ltx_text" id="S5.T6.6.6.6.6.1" style="background-color:#DFEBF7;">44.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.6.6.6.7"><span class="ltx_text" id="S5.T6.6.6.6.7.1" style="background-color:#DFEBF7;">52.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.6.6.6.8"><span class="ltx_text" id="S5.T6.6.6.6.8.1" style="background-color:#DFEBF7;">47.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.6.6.6.9"><span class="ltx_text" id="S5.T6.6.6.6.9.1" style="background-color:#DFEBF7;">50.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.6.6.6.10"><span class="ltx_text" id="S5.T6.6.6.6.10.1" style="background-color:#DFEBF7;">46.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.6.6.6.11"><span class="ltx_text" id="S5.T6.6.6.6.11.1" style="background-color:#DFEBF7;">4.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.6.6.6.12"><span class="ltx_text" id="S5.T6.6.6.6.12.1" style="background-color:#DFEBF7;">10.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.6.6.6.13"><span class="ltx_text" id="S5.T6.6.6.6.13.1" style="background-color:#DFEBF7;">2.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.6.6.6.14"><span class="ltx_text" id="S5.T6.6.6.6.14.1" style="background-color:#DFEBF7;">1.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.6.6.6.15"><span class="ltx_text" id="S5.T6.6.6.6.15.1" style="background-color:#DFEBF7;">12.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.6.6.6.16"><span class="ltx_text" id="S5.T6.6.6.6.16.1" style="background-color:#DFEBF7;">6.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.6.6.6.17"><span class="ltx_text" id="S5.T6.6.6.6.17.1" style="background-color:#DFEBF7;">26.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.7.7.7" style="background-color:#D4D4D4;">
<td class="ltx_td ltx_align_center" id="S5.T6.7.7.7.1"><span class="ltx_text" id="S5.T6.7.7.7.1.1" style="background-color:#D4D4D4;"><svg class="ltx_picture" height="15.77" id="S5.T6.7.7.7.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T6.7.7.7.1.1.pic1.1.1.1.1.1" style="font-size:80%;">7</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left" id="S5.T6.7.7.7.2"><span class="ltx_text" id="S5.T6.7.7.7.2.1" style="background-color:#D4D4D4;">MM-Spatial-3B</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.7.7.7.3"><span class="ltx_text" id="S5.T6.7.7.7.3.1" style="background-color:#D4D4D4;">CA-VQA (our defs.)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.7.7.7.4"><span class="ltx_text" id="S5.T6.7.7.7.4.1" style="background-color:#D4D4D4;">98.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.7.7.7.5"><span class="ltx_text" id="S5.T6.7.7.7.5.1" style="background-color:#D4D4D4;">97.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.7.7.7.6"><span class="ltx_text" id="S5.T6.7.7.7.6.1" style="background-color:#D4D4D4;">80.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.7.7.7.7"><span class="ltx_text" id="S5.T6.7.7.7.7.1" style="background-color:#D4D4D4;">82.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.7.7.7.8"><span class="ltx_text" id="S5.T6.7.7.7.8.1" style="background-color:#D4D4D4;">73.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.7.7.7.9"><span class="ltx_text" id="S5.T6.7.7.7.9.1" style="background-color:#D4D4D4;">74.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.7.7.7.10"><span class="ltx_text" id="S5.T6.7.7.7.10.1" style="background-color:#D4D4D4;">84.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.7.7.7.11"><span class="ltx_text" id="S5.T6.7.7.7.11.1" style="background-color:#D4D4D4;">14.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.7.7.7.12"><span class="ltx_text" id="S5.T6.7.7.7.12.1" style="background-color:#D4D4D4;">12.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.7.7.7.13"><span class="ltx_text" id="S5.T6.7.7.7.13.1" style="background-color:#D4D4D4;">47.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.7.7.7.14"><span class="ltx_text" id="S5.T6.7.7.7.14.1" style="background-color:#D4D4D4;">30.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.7.7.7.15"><span class="ltx_text" id="S5.T6.7.7.7.15.1" style="background-color:#D4D4D4;">53.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.7.7.7.16"><span class="ltx_text" id="S5.T6.7.7.7.16.1" style="background-color:#D4D4D4;">31.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.7.7.7.17"><span class="ltx_text" id="S5.T6.7.7.7.17.1" style="background-color:#D4D4D4;">57.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.9.9.9" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T6.8.8.8.1"><span class="ltx_text" id="S5.T6.8.8.8.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T6.8.8.8.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T6.8.8.8.1.1.pic1.1.1.1.1.1" style="font-size:80%;">8</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left" id="S5.T6.9.9.9.3"><span class="ltx_text" id="S5.T6.9.9.9.3.1" style="background-color:#F8FCF4;">MM-Spatial-3B</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.9.9.9.2"><span class="ltx_text" id="S5.T6.9.9.9.2.1" style="background-color:#F8FCF4;">CA-VQA<sup class="ltx_sup" id="S5.T6.9.9.9.2.1.1">⋆</sup> + OSD</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.9.9.9.4"><span class="ltx_text" id="S5.T6.9.9.9.4.1" style="background-color:#F8FCF4;">98.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.9.9.9.5"><span class="ltx_text" id="S5.T6.9.9.9.5.1" style="background-color:#F8FCF4;">99.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.9.9.9.6"><span class="ltx_text ltx_font_bold" id="S5.T6.9.9.9.6.1" style="background-color:#F8FCF4;">94.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.9.9.9.7"><span class="ltx_text" id="S5.T6.9.9.9.7.1" style="background-color:#F8FCF4;">93.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.9.9.9.8"><span class="ltx_text" id="S5.T6.9.9.9.8.1" style="background-color:#F8FCF4;">92.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.9.9.9.9"><span class="ltx_text" id="S5.T6.9.9.9.9.1" style="background-color:#F8FCF4;">93.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.9.9.9.10"><span class="ltx_text" id="S5.T6.9.9.9.10.1" style="background-color:#F8FCF4;">95.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.9.9.9.11"><span class="ltx_text" id="S5.T6.9.9.9.11.1" style="background-color:#F8FCF4;">33.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.9.9.9.12"><span class="ltx_text" id="S5.T6.9.9.9.12.1" style="background-color:#F8FCF4;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.9.9.9.13"><span class="ltx_text" id="S5.T6.9.9.9.13.1" style="background-color:#F8FCF4;">61.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.9.9.9.14"><span class="ltx_text" id="S5.T6.9.9.9.14.1" style="background-color:#F8FCF4;">55.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.9.9.9.15"><span class="ltx_text" id="S5.T6.9.9.9.15.1" style="background-color:#F8FCF4;">77.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.9.9.9.16"><span class="ltx_text" id="S5.T6.9.9.9.16.1" style="background-color:#F8FCF4;">60.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.9.9.9.17"><span class="ltx_text" id="S5.T6.9.9.9.17.1" style="background-color:#F8FCF4;">77.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.11.11.11" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T6.10.10.10.1"><span class="ltx_text" id="S5.T6.10.10.10.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T6.10.10.10.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="S5.T6.10.10.10.1.1.pic1.1.1.1.1.1" style="font-size:80%;">9</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left" id="S5.T6.11.11.11.3"><span class="ltx_text" id="S5.T6.11.11.11.3.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Depth (Tool; Mon.)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.11.11.11.2"><span class="ltx_text" id="S5.T6.11.11.11.2.1" style="background-color:#F8FCF4;">CA-VQA<sup class="ltx_sup" id="S5.T6.11.11.11.2.1.1">⋆</sup></span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.11.11.11.4"><span class="ltx_text" id="S5.T6.11.11.11.4.1" style="background-color:#F8FCF4;">98.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.11.11.11.5"><span class="ltx_text" id="S5.T6.11.11.11.5.1" style="background-color:#F8FCF4;">96.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.11.11.11.6"><span class="ltx_text ltx_font_bold" id="S5.T6.11.11.11.6.1" style="background-color:#F8FCF4;">94.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.11.11.11.7"><span class="ltx_text" id="S5.T6.11.11.11.7.1" style="background-color:#F8FCF4;">92.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.11.11.11.8"><span class="ltx_text" id="S5.T6.11.11.11.8.1" style="background-color:#F8FCF4;">92.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.11.11.11.9"><span class="ltx_text ltx_font_bold" id="S5.T6.11.11.11.9.1" style="background-color:#F8FCF4;">97.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.11.11.11.10"><span class="ltx_text" id="S5.T6.11.11.11.10.1" style="background-color:#F8FCF4;">95.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.11.11.11.11"><span class="ltx_text" id="S5.T6.11.11.11.11.1" style="background-color:#F8FCF4;">41.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.11.11.11.12"><span class="ltx_text" id="S5.T6.11.11.11.12.1" style="background-color:#F8FCF4;">63.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.11.11.11.13"><span class="ltx_text" id="S5.T6.11.11.11.13.1" style="background-color:#F8FCF4;">58.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.11.11.11.14"><span class="ltx_text" id="S5.T6.11.11.11.14.1" style="background-color:#F8FCF4;">51.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.11.11.11.15"><span class="ltx_text" id="S5.T6.11.11.11.15.1" style="background-color:#F8FCF4;">56.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.11.11.11.16"><span class="ltx_text" id="S5.T6.11.11.11.16.1" style="background-color:#F8FCF4;">54.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.11.11.11.17"><span class="ltx_text" id="S5.T6.11.11.11.17.1" style="background-color:#F8FCF4;">74.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.13.13.13" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T6.12.12.12.1"><span class="ltx_text" id="S5.T6.12.12.12.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T6.12.12.12.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T6.12.12.12.1.1.pic1.1.1.1.1.1" style="font-size:80%;">10</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left" id="S5.T6.13.13.13.3"><span class="ltx_text" id="S5.T6.13.13.13.3.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Depth (Tool; Mon.)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.13.13.13.2"><span class="ltx_text" id="S5.T6.13.13.13.2.1" style="background-color:#F8FCF4;">CA-VQA<sup class="ltx_sup" id="S5.T6.13.13.13.2.1.1">⋆</sup> (scale aug.)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.13.13.13.4"><span class="ltx_text" id="S5.T6.13.13.13.4.1" style="background-color:#F8FCF4;">98.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.13.13.13.5"><span class="ltx_text" id="S5.T6.13.13.13.5.1" style="background-color:#F8FCF4;">98.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.13.13.13.6"><span class="ltx_text" id="S5.T6.13.13.13.6.1" style="background-color:#F8FCF4;">92.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.13.13.13.7"><span class="ltx_text ltx_font_bold" id="S5.T6.13.13.13.7.1" style="background-color:#F8FCF4;">95.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.13.13.13.8"><span class="ltx_text" id="S5.T6.13.13.13.8.1" style="background-color:#F8FCF4;">92.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.13.13.13.9"><span class="ltx_text ltx_font_bold" id="S5.T6.13.13.13.9.1" style="background-color:#F8FCF4;">97.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.13.13.13.10"><span class="ltx_text" id="S5.T6.13.13.13.10.1" style="background-color:#F8FCF4;">95.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.13.13.13.11"><span class="ltx_text ltx_font_bold" id="S5.T6.13.13.13.11.1" style="background-color:#F8FCF4;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.13.13.13.12"><span class="ltx_text" id="S5.T6.13.13.13.12.1" style="background-color:#F8FCF4;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.13.13.13.13"><span class="ltx_text" id="S5.T6.13.13.13.13.1" style="background-color:#F8FCF4;">58.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.13.13.13.14"><span class="ltx_text" id="S5.T6.13.13.13.14.1" style="background-color:#F8FCF4;">48.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.13.13.13.15"><span class="ltx_text" id="S5.T6.13.13.13.15.1" style="background-color:#F8FCF4;">58.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.13.13.13.16"><span class="ltx_text" id="S5.T6.13.13.13.16.1" style="background-color:#F8FCF4;">59.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.13.13.13.17"><span class="ltx_text" id="S5.T6.13.13.13.17.1" style="background-color:#F8FCF4;">77.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.14.14.14" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T6.14.14.14.1"><span class="ltx_text" id="S5.T6.14.14.14.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T6.14.14.14.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T6.14.14.14.1.1.pic1.1.1.1.1.1" style="font-size:80%;">11</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left" id="S5.T6.14.14.14.2"><span class="ltx_text" id="S5.T6.14.14.14.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Depth (Tool; Mon.)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.14.14.14.3"><span class="ltx_text" id="S5.T6.14.14.14.3.1" style="background-color:#F8FCF4;">OSD</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.14.14.4"><span class="ltx_text" id="S5.T6.14.14.14.4.1" style="background-color:#F8FCF4;">98.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.14.14.5"><span class="ltx_text ltx_font_bold" id="S5.T6.14.14.14.5.1" style="background-color:#F8FCF4;">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.14.14.6"><span class="ltx_text" id="S5.T6.14.14.14.6.1" style="background-color:#F8FCF4;">91.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.14.14.7"><span class="ltx_text" id="S5.T6.14.14.14.7.1" style="background-color:#F8FCF4;">94.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.14.14.8"><span class="ltx_text ltx_font_bold" id="S5.T6.14.14.14.8.1" style="background-color:#F8FCF4;">95.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.14.14.14.9"><span class="ltx_text" id="S5.T6.14.14.14.9.1" style="background-color:#F8FCF4;">96.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.14.14.14.10"><span class="ltx_text" id="S5.T6.14.14.14.10.1" style="background-color:#F8FCF4;">96.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.14.14.11"><span class="ltx_text" id="S5.T6.14.14.14.11.1" style="background-color:#F8FCF4;">41.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.14.14.12"><span class="ltx_text" id="S5.T6.14.14.14.12.1" style="background-color:#F8FCF4;">71.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.14.14.13"><span class="ltx_text" id="S5.T6.14.14.14.13.1" style="background-color:#F8FCF4;">59.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.14.14.14"><span class="ltx_text" id="S5.T6.14.14.14.14.1" style="background-color:#F8FCF4;">54.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.14.14.14.15"><span class="ltx_text" id="S5.T6.14.14.14.15.1" style="background-color:#F8FCF4;">68.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.14.14.14.16"><span class="ltx_text" id="S5.T6.14.14.14.16.1" style="background-color:#F8FCF4;">58.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.14.14.17"><span class="ltx_text" id="S5.T6.14.14.14.17.1" style="background-color:#F8FCF4;">77.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.16.16.16" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T6.15.15.15.1"><span class="ltx_text" id="S5.T6.15.15.15.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T6.15.15.15.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T6.15.15.15.1.1.pic1.1.1.1.1.1" style="font-size:80%;">12</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left" id="S5.T6.16.16.16.3"><span class="ltx_text" id="S5.T6.16.16.16.3.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Depth (Tool; Mon.)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.16.16.16.2"><span class="ltx_text" id="S5.T6.16.16.16.2.1" style="background-color:#F8FCF4;">CA-VQA<sup class="ltx_sup" id="S5.T6.16.16.16.2.1.1">⋆</sup> + OSD</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.16.16.16.4"><span class="ltx_text" id="S5.T6.16.16.16.4.1" style="background-color:#F8FCF4;">98.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.16.16.16.5"><span class="ltx_text" id="S5.T6.16.16.16.5.1" style="background-color:#F8FCF4;">99.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.16.16.16.6"><span class="ltx_text" id="S5.T6.16.16.16.6.1" style="background-color:#F8FCF4;">93.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.16.16.16.7"><span class="ltx_text" id="S5.T6.16.16.16.7.1" style="background-color:#F8FCF4;">94.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.16.16.16.8"><span class="ltx_text" id="S5.T6.16.16.16.8.1" style="background-color:#F8FCF4;">94.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.16.16.16.9"><span class="ltx_text ltx_font_bold" id="S5.T6.16.16.16.9.1" style="background-color:#F8FCF4;">97.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.16.16.16.10"><span class="ltx_text ltx_font_bold" id="S5.T6.16.16.16.10.1" style="background-color:#F8FCF4;">96.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.16.16.16.11"><span class="ltx_text" id="S5.T6.16.16.16.11.1" style="background-color:#F8FCF4;">47.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.16.16.16.12"><span class="ltx_text ltx_font_bold" id="S5.T6.16.16.16.12.1" style="background-color:#F8FCF4;">77.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.16.16.16.13"><span class="ltx_text ltx_font_bold" id="S5.T6.16.16.16.13.1" style="background-color:#F8FCF4;">65.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.16.16.16.14"><span class="ltx_text ltx_font_bold" id="S5.T6.16.16.16.14.1" style="background-color:#F8FCF4;">60.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.16.16.16.15"><span class="ltx_text ltx_font_bold" id="S5.T6.16.16.16.15.1" style="background-color:#F8FCF4;">79.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.16.16.16.16"><span class="ltx_text ltx_font_bold" id="S5.T6.16.16.16.16.1" style="background-color:#F8FCF4;">65.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.16.16.16.17"><span class="ltx_text ltx_font_bold" id="S5.T6.16.16.16.17.1" style="background-color:#F8FCF4;">81.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.30.30.33">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T6.30.30.33.1"><span class="ltx_text ltx_font_italic" id="S5.T6.30.30.33.1.1">Specialist Models</span></td>
<td class="ltx_td ltx_border_t" id="S5.T6.30.30.33.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.30.30.33.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.30.30.33.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.30.30.33.5"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.30.30.33.6"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.30.30.33.7"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.30.30.33.8"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.30.30.33.9"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.30.30.33.10"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.30.30.33.11"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.30.30.33.12"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.30.30.33.13"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.30.30.33.14"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.30.30.33.15"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.30.30.33.16"></td>
</tr>
<tr class="ltx_tr" id="S5.T6.18.18.18" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.17.17.17.1"><span class="ltx_text" id="S5.T6.17.17.17.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T6.17.17.17.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T6.17.17.17.1.1.pic1.1.1.1.1.1" style="font-size:80%;">13</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.18.18.18.3"><span class="ltx_text" id="S5.T6.18.18.18.3.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Depth (Tool; Mon.)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T6.18.18.18.2"><span class="ltx_text" id="S5.T6.18.18.18.2.1" style="background-color:#F8FCF4;">CA-VQA<sup class="ltx_sup" id="S5.T6.18.18.18.2.1.1">⋆</sup> + OSD</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.18.18.18.4"><span class="ltx_text" id="S5.T6.18.18.18.4.1" style="background-color:#F8FCF4;">98.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.18.18.18.5"><span class="ltx_text" id="S5.T6.18.18.18.5.1" style="background-color:#F8FCF4;">98.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.18.18.18.6"><span class="ltx_text" id="S5.T6.18.18.18.6.1" style="background-color:#F8FCF4;">93.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.18.18.18.7"><span class="ltx_text" id="S5.T6.18.18.18.7.1" style="background-color:#F8FCF4;">94.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.18.18.18.8"><span class="ltx_text" id="S5.T6.18.18.18.8.1" style="background-color:#F8FCF4;">93.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.18.18.18.9"><span class="ltx_text" id="S5.T6.18.18.18.9.1" style="background-color:#F8FCF4;">96.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.18.18.18.10"><span class="ltx_text" id="S5.T6.18.18.18.10.1" style="background-color:#F8FCF4;">95.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.18.18.18.11"><span class="ltx_text" id="S5.T6.18.18.18.11.1" style="background-color:#F8FCF4;">59.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.18.18.18.12"><span class="ltx_text" id="S5.T6.18.18.18.12.1" style="background-color:#F8FCF4;">82.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.18.18.18.13"><span class="ltx_text" id="S5.T6.18.18.18.13.1" style="background-color:#F8FCF4;">63.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.18.18.18.14"><span class="ltx_text" id="S5.T6.18.18.18.14.1" style="background-color:#F8FCF4;">55.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.18.18.18.15"><span class="ltx_text" id="S5.T6.18.18.18.15.1" style="background-color:#F8FCF4;">83.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.18.18.18.16"><span class="ltx_text" id="S5.T6.18.18.18.16.1" style="background-color:#F8FCF4;">68.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.18.18.18.17"><span class="ltx_text" id="S5.T6.18.18.18.17.1" style="background-color:#F8FCF4;">82.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.20.20.20" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T6.19.19.19.1"><span class="ltx_text" id="S5.T6.19.19.19.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T6.19.19.19.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T6.19.19.19.1.1.pic1.1.1.1.1.1" style="font-size:80%;">14</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left" id="S5.T6.20.20.20.3"><span class="ltx_text" id="S5.T6.20.20.20.3.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Depth (Tool; Mon.)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.20.20.20.2"><span class="ltx_text" id="S5.T6.20.20.20.2.1" style="background-color:#F8FCF4;">CA-VQA<sup class="ltx_sup" id="S5.T6.20.20.20.2.1.1">⋆</sup></span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.20.20.20.4"><span class="ltx_text" id="S5.T6.20.20.20.4.1" style="background-color:#F8FCF4;">98.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.20.20.20.5"><span class="ltx_text" id="S5.T6.20.20.20.5.1" style="background-color:#F8FCF4;">94.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.20.20.20.6"><span class="ltx_text" id="S5.T6.20.20.20.6.1" style="background-color:#F8FCF4;">93.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.20.20.20.7"><span class="ltx_text" id="S5.T6.20.20.20.7.1" style="background-color:#F8FCF4;">90.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.20.20.20.8"><span class="ltx_text" id="S5.T6.20.20.20.8.1" style="background-color:#F8FCF4;">89.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.20.20.20.9"><span class="ltx_text" id="S5.T6.20.20.20.9.1" style="background-color:#F8FCF4;">95.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.20.20.20.10"><span class="ltx_text" id="S5.T6.20.20.20.10.1" style="background-color:#F8FCF4;">93.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.20.20.20.11"><span class="ltx_text" id="S5.T6.20.20.20.11.1" style="background-color:#F8FCF4;">37.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.20.20.20.12"><span class="ltx_text" id="S5.T6.20.20.20.12.1" style="background-color:#F8FCF4;">61.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.20.20.20.13"><span class="ltx_text" id="S5.T6.20.20.20.13.1" style="background-color:#F8FCF4;">63.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.20.20.20.14"><span class="ltx_text" id="S5.T6.20.20.20.14.1" style="background-color:#F8FCF4;">51.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.20.20.20.15"><span class="ltx_text" id="S5.T6.20.20.20.15.1" style="background-color:#F8FCF4;">56.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.20.20.20.16"><span class="ltx_text" id="S5.T6.20.20.20.16.1" style="background-color:#F8FCF4;">54.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.20.20.20.17"><span class="ltx_text" id="S5.T6.20.20.20.17.1" style="background-color:#F8FCF4;">73.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.21.21.21">
<td class="ltx_td ltx_align_center" id="S5.T6.21.21.21.1"><svg class="ltx_picture" height="15.77" id="S5.T6.21.21.21.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T6.21.21.21.1.pic1.1.1.1.1.1" style="font-size:80%;">15</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td" id="S5.T6.21.21.21.2"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.21.21.21.3"><em class="ltx_emph ltx_font_italic" id="S5.T6.21.21.21.3.1">indoor</em></td>
<td class="ltx_td" id="S5.T6.21.21.21.4"></td>
<td class="ltx_td" id="S5.T6.21.21.21.5"></td>
<td class="ltx_td" id="S5.T6.21.21.21.6"></td>
<td class="ltx_td" id="S5.T6.21.21.21.7"></td>
<td class="ltx_td" id="S5.T6.21.21.21.8"></td>
<td class="ltx_td ltx_border_r" id="S5.T6.21.21.21.9"></td>
<td class="ltx_td ltx_border_r" id="S5.T6.21.21.21.10"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.21.21.21.11">50.0</td>
<td class="ltx_td ltx_align_center" id="S5.T6.21.21.21.12">90.2</td>
<td class="ltx_td ltx_align_center" id="S5.T6.21.21.21.13">63.2</td>
<td class="ltx_td ltx_align_center" id="S5.T6.21.21.21.14">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.21.21.21.15">71.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.21.21.21.16">67.0</td>
<td class="ltx_td" id="S5.T6.21.21.21.17"></td>
</tr>
<tr class="ltx_tr" id="S5.T6.22.22.22">
<td class="ltx_td ltx_align_center" id="S5.T6.22.22.22.1"><svg class="ltx_picture" height="15.77" id="S5.T6.22.22.22.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T6.22.22.22.1.pic1.1.1.1.1.1" style="font-size:80%;">16</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td" id="S5.T6.22.22.22.2"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.22.22.22.3"><em class="ltx_emph ltx_font_italic" id="S5.T6.22.22.22.3.1">outdoor</em></td>
<td class="ltx_td" id="S5.T6.22.22.22.4"></td>
<td class="ltx_td" id="S5.T6.22.22.22.5"></td>
<td class="ltx_td" id="S5.T6.22.22.22.6"></td>
<td class="ltx_td" id="S5.T6.22.22.22.7"></td>
<td class="ltx_td" id="S5.T6.22.22.22.8"></td>
<td class="ltx_td ltx_border_r" id="S5.T6.22.22.22.9"></td>
<td class="ltx_td ltx_border_r" id="S5.T6.22.22.22.10"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.22.22.22.11">5.0</td>
<td class="ltx_td ltx_align_center" id="S5.T6.22.22.22.12">2.5</td>
<td class="ltx_td ltx_align_center" id="S5.T6.22.22.22.13">–</td>
<td class="ltx_td ltx_align_center" id="S5.T6.22.22.22.14">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.22.22.22.15">3.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.22.22.22.16">2.7</td>
<td class="ltx_td" id="S5.T6.22.22.22.17"></td>
</tr>
<tr class="ltx_tr" id="S5.T6.24.24.24" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T6.23.23.23.1"><span class="ltx_text" id="S5.T6.23.23.23.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T6.23.23.23.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T6.23.23.23.1.1.pic1.1.1.1.1.1" style="font-size:80%;">17</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left" id="S5.T6.24.24.24.3"><span class="ltx_text" id="S5.T6.24.24.24.3.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Depth (Tool; Mon.)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.24.24.24.2"><span class="ltx_text" id="S5.T6.24.24.24.2.1" style="background-color:#F8FCF4;">CA-VQA<sup class="ltx_sup" id="S5.T6.24.24.24.2.1.1">⋆</sup> (scale aug.)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.24.24.24.4"><span class="ltx_text" id="S5.T6.24.24.24.4.1" style="background-color:#F8FCF4;">98.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.24.24.24.5"><span class="ltx_text" id="S5.T6.24.24.24.5.1" style="background-color:#F8FCF4;">98.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.24.24.24.6"><span class="ltx_text" id="S5.T6.24.24.24.6.1" style="background-color:#F8FCF4;">94.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.24.24.24.7"><span class="ltx_text" id="S5.T6.24.24.24.7.1" style="background-color:#F8FCF4;">93.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.24.24.24.8"><span class="ltx_text" id="S5.T6.24.24.24.8.1" style="background-color:#F8FCF4;">93.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.24.24.24.9"><span class="ltx_text" id="S5.T6.24.24.24.9.1" style="background-color:#F8FCF4;">96.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.24.24.24.10"><span class="ltx_text" id="S5.T6.24.24.24.10.1" style="background-color:#F8FCF4;">95.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.24.24.24.11"><span class="ltx_text" id="S5.T6.24.24.24.11.1" style="background-color:#F8FCF4;">60.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.24.24.24.12"><span class="ltx_text" id="S5.T6.24.24.24.12.1" style="background-color:#F8FCF4;">75.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.24.24.24.13"><span class="ltx_text" id="S5.T6.24.24.24.13.1" style="background-color:#F8FCF4;">67.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.24.24.24.14"><span class="ltx_text" id="S5.T6.24.24.24.14.1" style="background-color:#F8FCF4;">48.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.24.24.24.15"><span class="ltx_text" id="S5.T6.24.24.24.15.1" style="background-color:#F8FCF4;">59.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.24.24.24.16"><span class="ltx_text" id="S5.T6.24.24.24.16.1" style="background-color:#F8FCF4;">62.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.24.24.24.17"><span class="ltx_text" id="S5.T6.24.24.24.17.1" style="background-color:#F8FCF4;">78.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.25.25.25">
<td class="ltx_td ltx_align_center" id="S5.T6.25.25.25.1"><svg class="ltx_picture" height="15.77" id="S5.T6.25.25.25.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T6.25.25.25.1.pic1.1.1.1.1.1" style="font-size:80%;">18</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td" id="S5.T6.25.25.25.2"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.25.25.25.3"><em class="ltx_emph ltx_font_italic" id="S5.T6.25.25.25.3.1">indoor</em></td>
<td class="ltx_td" id="S5.T6.25.25.25.4"></td>
<td class="ltx_td" id="S5.T6.25.25.25.5"></td>
<td class="ltx_td" id="S5.T6.25.25.25.6"></td>
<td class="ltx_td" id="S5.T6.25.25.25.7"></td>
<td class="ltx_td" id="S5.T6.25.25.25.8"></td>
<td class="ltx_td ltx_border_r" id="S5.T6.25.25.25.9"></td>
<td class="ltx_td ltx_border_r" id="S5.T6.25.25.25.10"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.25.25.25.11">60.2</td>
<td class="ltx_td ltx_align_center" id="S5.T6.25.25.25.12">84.2</td>
<td class="ltx_td ltx_align_center" id="S5.T6.25.25.25.13">67.9</td>
<td class="ltx_td ltx_align_center" id="S5.T6.25.25.25.14">55.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.25.25.25.15">71.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.25.25.25.16">68.0</td>
<td class="ltx_td" id="S5.T6.25.25.25.17"></td>
</tr>
<tr class="ltx_tr" id="S5.T6.26.26.26">
<td class="ltx_td ltx_align_center" id="S5.T6.26.26.26.1"><svg class="ltx_picture" height="15.77" id="S5.T6.26.26.26.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T6.26.26.26.1.pic1.1.1.1.1.1" style="font-size:80%;">19</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td" id="S5.T6.26.26.26.2"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.26.26.26.3"><em class="ltx_emph ltx_font_italic" id="S5.T6.26.26.26.3.1">outdoor</em></td>
<td class="ltx_td" id="S5.T6.26.26.26.4"></td>
<td class="ltx_td" id="S5.T6.26.26.26.5"></td>
<td class="ltx_td" id="S5.T6.26.26.26.6"></td>
<td class="ltx_td" id="S5.T6.26.26.26.7"></td>
<td class="ltx_td" id="S5.T6.26.26.26.8"></td>
<td class="ltx_td ltx_border_r" id="S5.T6.26.26.26.9"></td>
<td class="ltx_td ltx_border_r" id="S5.T6.26.26.26.10"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.26.26.26.11">60.0</td>
<td class="ltx_td ltx_align_center" id="S5.T6.26.26.26.12">57.5</td>
<td class="ltx_td ltx_align_center" id="S5.T6.26.26.26.13">–</td>
<td class="ltx_td ltx_align_center" id="S5.T6.26.26.26.14">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.26.26.26.15">16.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.26.26.26.16">33.6</td>
<td class="ltx_td" id="S5.T6.26.26.26.17"></td>
</tr>
<tr class="ltx_tr" id="S5.T6.27.27.27" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="S5.T6.27.27.27.1"><span class="ltx_text" id="S5.T6.27.27.27.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T6.27.27.27.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T6.27.27.27.1.1.pic1.1.1.1.1.1" style="font-size:80%;">20</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left" id="S5.T6.27.27.27.2"><span class="ltx_text" id="S5.T6.27.27.27.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B + Depth (Tool; Mon.)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.27.27.27.3"><span class="ltx_text" id="S5.T6.27.27.27.3.1" style="background-color:#F8FCF4;">OSD</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.27.27.27.4"><span class="ltx_text" id="S5.T6.27.27.27.4.1" style="background-color:#F8FCF4;">98.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.27.27.27.5"><span class="ltx_text" id="S5.T6.27.27.27.5.1" style="background-color:#F8FCF4;">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.27.27.27.6"><span class="ltx_text" id="S5.T6.27.27.27.6.1" style="background-color:#F8FCF4;">89.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.27.27.27.7"><span class="ltx_text" id="S5.T6.27.27.27.7.1" style="background-color:#F8FCF4;">92.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.27.27.27.8"><span class="ltx_text" id="S5.T6.27.27.27.8.1" style="background-color:#F8FCF4;">92.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.27.27.27.9"><span class="ltx_text" id="S5.T6.27.27.27.9.1" style="background-color:#F8FCF4;">96.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.27.27.27.10"><span class="ltx_text" id="S5.T6.27.27.27.10.1" style="background-color:#F8FCF4;">94.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.27.27.27.11"><span class="ltx_text" id="S5.T6.27.27.27.11.1" style="background-color:#F8FCF4;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.27.27.27.12"><span class="ltx_text" id="S5.T6.27.27.27.12.1" style="background-color:#F8FCF4;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.27.27.27.13"><span class="ltx_text" id="S5.T6.27.27.27.13.1" style="background-color:#F8FCF4;">59.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.27.27.27.14"><span class="ltx_text" id="S5.T6.27.27.27.14.1" style="background-color:#F8FCF4;">53.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.27.27.27.15"><span class="ltx_text" id="S5.T6.27.27.27.15.1" style="background-color:#F8FCF4;">82.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.27.27.27.16"><span class="ltx_text" id="S5.T6.27.27.27.16.1" style="background-color:#F8FCF4;">61.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.27.27.27.17"><span class="ltx_text" id="S5.T6.27.27.27.17.1" style="background-color:#F8FCF4;">78.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.28.28.28">
<td class="ltx_td ltx_align_center" id="S5.T6.28.28.28.1"><svg class="ltx_picture" height="15.77" id="S5.T6.28.28.28.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T6.28.28.28.1.pic1.1.1.1.1.1" style="font-size:80%;">21</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td" id="S5.T6.28.28.28.2"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.28.28.28.3"><em class="ltx_emph ltx_font_italic" id="S5.T6.28.28.28.3.1">indoor</em></td>
<td class="ltx_td" id="S5.T6.28.28.28.4"></td>
<td class="ltx_td" id="S5.T6.28.28.28.5"></td>
<td class="ltx_td" id="S5.T6.28.28.28.6"></td>
<td class="ltx_td" id="S5.T6.28.28.28.7"></td>
<td class="ltx_td" id="S5.T6.28.28.28.8"></td>
<td class="ltx_td ltx_border_r" id="S5.T6.28.28.28.9"></td>
<td class="ltx_td ltx_border_r" id="S5.T6.28.28.28.10"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.28.28.28.11">32.4</td>
<td class="ltx_td ltx_align_center" id="S5.T6.28.28.28.12">76.8</td>
<td class="ltx_td ltx_align_center" id="S5.T6.28.28.28.13">59.4</td>
<td class="ltx_td ltx_align_center" id="S5.T6.28.28.28.14">54.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.28.28.28.15">78.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.28.28.28.16">60.4</td>
<td class="ltx_td" id="S5.T6.28.28.28.17"></td>
</tr>
<tr class="ltx_tr" id="S5.T6.29.29.29">
<td class="ltx_td ltx_align_center" id="S5.T6.29.29.29.1"><svg class="ltx_picture" height="15.77" id="S5.T6.29.29.29.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T6.29.29.29.1.pic1.1.1.1.1.1" style="font-size:80%;">22</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td" id="S5.T6.29.29.29.2"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.29.29.29.3"><em class="ltx_emph ltx_font_italic" id="S5.T6.29.29.29.3.1">outdoor</em></td>
<td class="ltx_td" id="S5.T6.29.29.29.4"></td>
<td class="ltx_td" id="S5.T6.29.29.29.5"></td>
<td class="ltx_td" id="S5.T6.29.29.29.6"></td>
<td class="ltx_td" id="S5.T6.29.29.29.7"></td>
<td class="ltx_td" id="S5.T6.29.29.29.8"></td>
<td class="ltx_td ltx_border_r" id="S5.T6.29.29.29.9"></td>
<td class="ltx_td ltx_border_r" id="S5.T6.29.29.29.10"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.29.29.29.11">57.5</td>
<td class="ltx_td ltx_align_center" id="S5.T6.29.29.29.12">65.0</td>
<td class="ltx_td ltx_align_center" id="S5.T6.29.29.29.13">–</td>
<td class="ltx_td ltx_align_center" id="S5.T6.29.29.29.14">44.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.29.29.29.15">93.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.29.29.29.16">65.1</td>
<td class="ltx_td" id="S5.T6.29.29.29.17"></td>
</tr>
<tr class="ltx_tr" id="S5.T6.30.30.30" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.30.30.30.1"><span class="ltx_text" id="S5.T6.30.30.30.1.1" style="background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="S5.T6.30.30.30.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="S5.T6.30.30.30.1.1.pic1.1.1.1.1.1" style="font-size:80%;">23</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T6.30.30.30.2"><span class="ltx_text" id="S5.T6.30.30.30.2.1" style="background-color:#F8FCF4;">MM-Spatial-3B (Blind eval)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T6.30.30.30.3"><span class="ltx_text" id="S5.T6.30.30.30.3.1" style="background-color:#F8FCF4;">OSD</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.30.30.30.4"><span class="ltx_text" id="S5.T6.30.30.30.4.1" style="background-color:#F8FCF4;">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.30.30.30.5"><span class="ltx_text" id="S5.T6.30.30.30.5.1" style="background-color:#F8FCF4;">98.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.30.30.30.6"><span class="ltx_text" id="S5.T6.30.30.30.6.1" style="background-color:#F8FCF4;">74.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.30.30.30.7"><span class="ltx_text" id="S5.T6.30.30.30.7.1" style="background-color:#F8FCF4;">81.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.30.30.30.8"><span class="ltx_text" id="S5.T6.30.30.30.8.1" style="background-color:#F8FCF4;">86.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T6.30.30.30.9"><span class="ltx_text" id="S5.T6.30.30.30.9.1" style="background-color:#F8FCF4;">80.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T6.30.30.30.10"><span class="ltx_text" id="S5.T6.30.30.30.10.1" style="background-color:#F8FCF4;">86.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.30.30.30.11"><span class="ltx_text" id="S5.T6.30.30.30.11.1" style="background-color:#F8FCF4;">21.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.30.30.30.12"><span class="ltx_text" id="S5.T6.30.30.30.12.1" style="background-color:#F8FCF4;">22.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.30.30.30.13"><span class="ltx_text" id="S5.T6.30.30.30.13.1" style="background-color:#F8FCF4;">43.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.30.30.30.14"><span class="ltx_text" id="S5.T6.30.30.30.14.1" style="background-color:#F8FCF4;">27.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T6.30.30.30.15"><span class="ltx_text" id="S5.T6.30.30.30.15.1" style="background-color:#F8FCF4;">21.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T6.30.30.30.16"><span class="ltx_text" id="S5.T6.30.30.30.16.1" style="background-color:#F8FCF4;">27.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.30.30.30.17"><span class="ltx_text" id="S5.T6.30.30.30.17.1" style="background-color:#F8FCF4;">57.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comparison of the performance of different models on the SpatialRGPT-Bench benchmark.  The key finding is that MM-Spatial-3B achieves state-of-the-art (SOTA) results, surpassing even the SpatialRGPT-VILA-1.5-8B model, which uses full depth encoding.  The table shows that MM-Spatial-3B's performance improves further when using tool-use monocular depth.  Additionally, it demonstrates that training MM-Spatial-3B on a combined dataset consisting of both CA-VQA* and OSD yields the best overall results.
> <details>
> <summary>read the caption</summary>
> Table 6: SpatialRGPT-Bench Results. MM-Spatial-3B achieves SOTA with both image-only input and tool-use monocular depth, outperforming SpatialRGPT-VILA-1.5-8B (which fully encodes depth). Training on a mixture of CA-VQA⋆ and OSD performs best.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T7.2.1">
<tr class="ltx_tr" id="A2.T7.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A2.T7.2.1.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="A2.T7.2.1.1.1.1" style="font-size:144%;">Model</span></td>
<td class="ltx_td ltx_border_tt" id="A2.T7.2.1.1.2"></td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="A2.T7.2.1.1.3"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="9" id="A2.T7.2.1.1.4"><span class="ltx_text" id="A2.T7.2.1.1.4.1" style="font-size:144%;">Benchmark Category Averages</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="A2.T7.2.1.2.1"><span class="ltx_text" id="A2.T7.2.1.2.1.1" style="font-size:144%;">Mix. Ratio</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="A2.T7.2.1.2.2"><span class="ltx_text" id="A2.T7.2.1.2.2.1" style="font-size:144%;">Spatial Understanding</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.2.3" rowspan="2"><span class="ltx_text" id="A2.T7.2.1.2.3.1" style="font-size:144%;">General</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.2.4" rowspan="2"><span class="ltx_text" id="A2.T7.2.1.2.4.1" style="font-size:144%;">Knowledge</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.2.5" rowspan="2"><span class="ltx_text" id="A2.T7.2.1.2.5.1" style="font-size:144%;">Text-rich</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.2.1.2.6" rowspan="2"><span class="ltx_text" id="A2.T7.2.1.2.6.1" style="font-size:144%;">Refer&amp;Ground</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.2.7" rowspan="2"><span class="ltx_text ltx_font_bold" id="A2.T7.2.1.2.7.1" style="font-size:144%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T7.2.1.3.1"><span class="ltx_text" id="A2.T7.2.1.3.1.1" style="font-size:144%;">Rel.</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T7.2.1.3.2"><span class="ltx_text" id="A2.T7.2.1.3.2.1" style="font-size:144%;">Eff.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.3.3"><span class="ltx_text" id="A2.T7.2.1.3.3.1" style="font-size:144%;">CA-VQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.3.4"><span class="ltx_text" id="A2.T7.2.1.3.4.1" style="font-size:144%;">CV-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.3.5"><span class="ltx_text" id="A2.T7.2.1.3.5.1" style="font-size:144%;">SRGPT-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.2.1.3.6"><span class="ltx_text ltx_font_bold" id="A2.T7.2.1.3.6.1" style="font-size:144%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.1.4" style="background-color:#DFEBF7;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T7.2.1.4.1"><span class="ltx_text" id="A2.T7.2.1.4.1.1" style="font-size:144%;background-color:#DFEBF7;">MM1.5-3B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib128" title=""><span class="ltx_text" style="font-size:90%;">128</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T7.2.1.4.2"><span class="ltx_text" id="A2.T7.2.1.4.2.1" style="font-size:144%;background-color:#DFEBF7;">0:1</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T7.2.1.4.3"><span class="ltx_text" id="A2.T7.2.1.4.3.1" style="font-size:144%;background-color:#DFEBF7;">0:100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.4.4"><span class="ltx_text" id="A2.T7.2.1.4.4.1" style="font-size:144%;background-color:#DFEBF7;">28.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.4.5"><span class="ltx_text" id="A2.T7.2.1.4.5.1" style="font-size:144%;background-color:#DFEBF7;">64.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.4.6"><span class="ltx_text" id="A2.T7.2.1.4.6.1" style="font-size:144%;background-color:#DFEBF7;">26.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.2.1.4.7"><span class="ltx_text" id="A2.T7.2.1.4.7.1" style="font-size:144%;background-color:#DFEBF7;">39.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.4.8"><span class="ltx_text" id="A2.T7.2.1.4.8.1" style="font-size:144%;background-color:#DFEBF7;">64.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.4.9"><span class="ltx_text" id="A2.T7.2.1.4.9.1" style="font-size:144%;background-color:#DFEBF7;">46.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.4.10"><span class="ltx_text" id="A2.T7.2.1.4.10.1" style="font-size:144%;background-color:#DFEBF7;">62.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.2.1.4.11"><span class="ltx_text" id="A2.T7.2.1.4.11.1" style="font-size:144%;background-color:#DFEBF7;">77.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.4.12"><span class="ltx_text" id="A2.T7.2.1.4.12.1" style="font-size:144%;background-color:#DFEBF7;">58.1</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.1.5">
<td class="ltx_td ltx_border_r ltx_border_t" id="A2.T7.2.1.5.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T7.2.1.5.2"><span class="ltx_text" id="A2.T7.2.1.5.2.1" style="font-size:144%;">1:1</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T7.2.1.5.3"><span class="ltx_text" id="A2.T7.2.1.5.3.1" style="font-size:144%;">12:88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.5.4"><span class="ltx_text" id="A2.T7.2.1.5.4.1" style="font-size:144%;">66.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.5.5"><span class="ltx_text" id="A2.T7.2.1.5.5.1" style="font-size:144%;">91.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.5.6"><span class="ltx_text" id="A2.T7.2.1.5.6.1" style="font-size:144%;">52.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.2.1.5.7"><span class="ltx_text" id="A2.T7.2.1.5.7.1" style="font-size:144%;">70.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.5.8"><span class="ltx_text" id="A2.T7.2.1.5.8.1" style="font-size:144%;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.5.9"><span class="ltx_text" id="A2.T7.2.1.5.9.1" style="font-size:144%;">46.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.5.10"><span class="ltx_text" id="A2.T7.2.1.5.10.1" style="font-size:144%;">62.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.2.1.5.11"><span class="ltx_text" id="A2.T7.2.1.5.11.1" style="font-size:144%;">79.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.5.12"><span class="ltx_text" id="A2.T7.2.1.5.12.1" style="font-size:144%;">64.5</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.1.6" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.2.1.6.1"><span class="ltx_text" id="A2.T7.2.1.6.1.1" style="font-size:144%;background-color:#F8FCF4;">MM-Spatial-3B</span></td>
<td class="ltx_td ltx_align_left" id="A2.T7.2.1.6.2"><span class="ltx_text" id="A2.T7.2.1.6.2.1" style="font-size:144%;background-color:#F8FCF4;">2:1</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.2.1.6.3"><span class="ltx_text" id="A2.T7.2.1.6.3.1" style="font-size:144%;background-color:#F8FCF4;">22:78</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.6.4"><span class="ltx_text" id="A2.T7.2.1.6.4.1" style="font-size:144%;background-color:#F8FCF4;">67.1</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.6.5"><span class="ltx_text" id="A2.T7.2.1.6.5.1" style="font-size:144%;background-color:#F8FCF4;">92.4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.6.6"><span class="ltx_text" id="A2.T7.2.1.6.6.1" style="font-size:144%;background-color:#F8FCF4;">53.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.2.1.6.7"><span class="ltx_text" id="A2.T7.2.1.6.7.1" style="font-size:144%;background-color:#F8FCF4;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.6.8"><span class="ltx_text" id="A2.T7.2.1.6.8.1" style="font-size:144%;background-color:#F8FCF4;">64.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.6.9"><span class="ltx_text" id="A2.T7.2.1.6.9.1" style="font-size:144%;background-color:#F8FCF4;">46.7</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.6.10"><span class="ltx_text" id="A2.T7.2.1.6.10.1" style="font-size:144%;background-color:#F8FCF4;">61.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.2.1.6.11"><span class="ltx_text" id="A2.T7.2.1.6.11.1" style="font-size:144%;background-color:#F8FCF4;">78.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.6.12"><span class="ltx_text" id="A2.T7.2.1.6.12.1" style="font-size:144%;background-color:#F8FCF4;">64.5</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.1.7">
<td class="ltx_td ltx_border_r" id="A2.T7.2.1.7.1"></td>
<td class="ltx_td ltx_align_left" id="A2.T7.2.1.7.2"><span class="ltx_text" id="A2.T7.2.1.7.2.1" style="font-size:144%;">4:1</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.2.1.7.3"><span class="ltx_text" id="A2.T7.2.1.7.3.1" style="font-size:144%;">36:64</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.7.4"><span class="ltx_text" id="A2.T7.2.1.7.4.1" style="font-size:144%;">67.3</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.7.5"><span class="ltx_text" id="A2.T7.2.1.7.5.1" style="font-size:144%;">93.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.7.6"><span class="ltx_text" id="A2.T7.2.1.7.6.1" style="font-size:144%;">52.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.2.1.7.7"><span class="ltx_text" id="A2.T7.2.1.7.7.1" style="font-size:144%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.7.8"><span class="ltx_text" id="A2.T7.2.1.7.8.1" style="font-size:144%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.7.9"><span class="ltx_text" id="A2.T7.2.1.7.9.1" style="font-size:144%;">44.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.7.10"><span class="ltx_text" id="A2.T7.2.1.7.10.1" style="font-size:144%;">60.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.2.1.7.11"><span class="ltx_text" id="A2.T7.2.1.7.11.1" style="font-size:144%;">78.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.7.12"><span class="ltx_text" id="A2.T7.2.1.7.12.1" style="font-size:144%;">63.9</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.1.8">
<td class="ltx_td ltx_border_r" id="A2.T7.2.1.8.1"></td>
<td class="ltx_td ltx_align_left" id="A2.T7.2.1.8.2"><span class="ltx_text" id="A2.T7.2.1.8.2.1" style="font-size:144%;">8:1</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.2.1.8.3"><span class="ltx_text" id="A2.T7.2.1.8.3.1" style="font-size:144%;">54:46</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.8.4"><span class="ltx_text" id="A2.T7.2.1.8.4.1" style="font-size:144%;">67.4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.8.5"><span class="ltx_text" id="A2.T7.2.1.8.5.1" style="font-size:144%;">93.1</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.8.6"><span class="ltx_text" id="A2.T7.2.1.8.6.1" style="font-size:144%;">53.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.2.1.8.7"><span class="ltx_text" id="A2.T7.2.1.8.7.1" style="font-size:144%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.8.8"><span class="ltx_text" id="A2.T7.2.1.8.8.1" style="font-size:144%;">64.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.8.9"><span class="ltx_text" id="A2.T7.2.1.8.9.1" style="font-size:144%;">46.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.8.10"><span class="ltx_text" id="A2.T7.2.1.8.10.1" style="font-size:144%;">61.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.2.1.8.11"><span class="ltx_text" id="A2.T7.2.1.8.11.1" style="font-size:144%;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.8.12"><span class="ltx_text" id="A2.T7.2.1.8.12.1" style="font-size:144%;">64.6</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.1.9" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A2.T7.2.1.9.1"><span class="ltx_text" id="A2.T7.2.1.9.1.1" style="font-size:144%;background-color:#F8FCF4;">MM-Spatial-3B</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T7.2.1.9.2"><span class="ltx_text" id="A2.T7.2.1.9.2.1" style="font-size:144%;background-color:#F8FCF4;">1:0</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A2.T7.2.1.9.3"><span class="ltx_text" id="A2.T7.2.1.9.3.1" style="font-size:144%;background-color:#F8FCF4;">100:0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.2.1.9.4"><span class="ltx_text" id="A2.T7.2.1.9.4.1" style="font-size:144%;background-color:#F8FCF4;">67.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.2.1.9.5"><span class="ltx_text" id="A2.T7.2.1.9.5.1" style="font-size:144%;background-color:#F8FCF4;">93.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.2.1.9.6"><span class="ltx_text" id="A2.T7.2.1.9.6.1" style="font-size:144%;background-color:#F8FCF4;">54.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A2.T7.2.1.9.7"><span class="ltx_text" id="A2.T7.2.1.9.7.1" style="font-size:144%;background-color:#F8FCF4;">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.2.1.9.8"><span class="ltx_text" id="A2.T7.2.1.9.8.1" style="font-size:144%;background-color:#F8FCF4;">42.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.2.1.9.9"><span class="ltx_text" id="A2.T7.2.1.9.9.1" style="font-size:144%;background-color:#F8FCF4;">34.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.2.1.9.10"><span class="ltx_text" id="A2.T7.2.1.9.10.1" style="font-size:144%;background-color:#F8FCF4;">17.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A2.T7.2.1.9.11"><span class="ltx_text" id="A2.T7.2.1.9.11.1" style="font-size:144%;background-color:#F8FCF4;">23.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.2.1.9.12"><span class="ltx_text" id="A2.T7.2.1.9.12.1" style="font-size:144%;background-color:#F8FCF4;">38.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating different ratios of training data for a multimodal large language model (MLLM) specialized for 3D spatial understanding.  The model, MM-Spatial, was trained on a mixture of general-purpose data and spatial data from the CA-VQA dataset. The table compares performance across various benchmark categories (General, Knowledge, Text-rich, Referring & Grounding, and Spatial) for different ratios of spatial to general data in the training set (e.g., 0:1, 1:1, 2:1, 4:1, 8:1, 1:0). It shows that a 2:1 ratio provides a good balance between performance on the spatial category and maintaining performance on other categories, confirming the model's generalist nature.  The last row shows a control experiment training a specialized spatial model, illustrating that a generalist approach with mixed data is superior to a specialist approach using only CA-VQA data. 
> <details>
> <summary>read the caption</summary>
> Table 7: Data Mixture Ratio Results. Comparison of different data mixture ratios – both (Rel)ative to the General category (as in MM1.5), and (Eff)ective when considering the dataset sizes – on aggregated metrics across the different benchmark categories. Overall, MM-Spatial is a generalist MMLM that improves a lot on the Spatial category while maintaining strong performance on the other categories. The data mixture ratio of 2:1 (spatial:general) provides a good performance trade-off and is used for MM-Spatial throughout. The last line considers a spatial Specialist Model that is trained on CA-VQA only; this model provides only a minor improvement on the spatial category, while regressing substantially on all other benchmark categories.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T8.6.6">
<tr class="ltx_tr" id="A3.T8.6.6.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A3.T8.6.6.7.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A3.T8.6.6.7.1.1" style="font-size:144%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A3.T8.6.6.7.2"><span class="ltx_text" id="A3.T8.6.6.7.2.1" style="font-size:144%;">Knowledge Benchmarks</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="A3.T8.6.6.7.3"><span class="ltx_text" id="A3.T8.6.6.7.3.1" style="font-size:144%;">General Benchmarks</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.2.2.2.3">
<span class="ltx_text" id="A3.T8.2.2.2.3.1"></span><span class="ltx_text" id="A3.T8.2.2.2.3.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T8.2.2.2.3.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T8.2.2.2.3.3.1">
<span class="ltx_tr" id="A3.T8.2.2.2.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.2.2.2.3.3.1.1.1">AI2D</span></span>
<span class="ltx_tr" id="A3.T8.2.2.2.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.2.2.2.3.3.1.2.1">(test)</span></span>
</span></span><span class="ltx_text" id="A3.T8.2.2.2.3.4"></span><span class="ltx_text" id="A3.T8.2.2.2.3.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.2.2.2.4">
<span class="ltx_text" id="A3.T8.2.2.2.4.1"></span><span class="ltx_text" id="A3.T8.2.2.2.4.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T8.2.2.2.4.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T8.2.2.2.4.3.1">
<span class="ltx_tr" id="A3.T8.2.2.2.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.2.2.2.4.3.1.1.1">MMMU</span></span>
<span class="ltx_tr" id="A3.T8.2.2.2.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.2.2.2.4.3.1.2.1">(val)</span></span>
</span></span><span class="ltx_text" id="A3.T8.2.2.2.4.4"></span><span class="ltx_text" id="A3.T8.2.2.2.4.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T8.2.2.2.5">
<span class="ltx_text" id="A3.T8.2.2.2.5.1"></span><span class="ltx_text" id="A3.T8.2.2.2.5.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T8.2.2.2.5.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T8.2.2.2.5.3.1">
<span class="ltx_tr" id="A3.T8.2.2.2.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.2.2.2.5.3.1.1.1">MathV</span></span>
<span class="ltx_tr" id="A3.T8.2.2.2.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.2.2.2.5.3.1.2.1">(testmini)</span></span>
</span></span><span class="ltx_text" id="A3.T8.2.2.2.5.4"></span><span class="ltx_text" id="A3.T8.2.2.2.5.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.2.2.2.6">
<span class="ltx_text" id="A3.T8.2.2.2.6.1"></span><span class="ltx_text" id="A3.T8.2.2.2.6.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T8.2.2.2.6.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T8.2.2.2.6.3.1">
<span class="ltx_tr" id="A3.T8.2.2.2.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.2.2.2.6.3.1.1.1">MME</span></span>
<span class="ltx_tr" id="A3.T8.2.2.2.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.2.2.2.6.3.1.2.1">(P/C)</span></span>
</span></span><span class="ltx_text" id="A3.T8.2.2.2.6.4"></span><span class="ltx_text" id="A3.T8.2.2.2.6.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.1.1.1.1">
<span class="ltx_text" id="A3.T8.1.1.1.1.1" style="font-size:144%;">SEED</span><math alttext="{}^{\text{I}}" class="ltx_Math" display="inline" id="A3.T8.1.1.1.1.m1.1"><semantics id="A3.T8.1.1.1.1.m1.1a"><msup id="A3.T8.1.1.1.1.m1.1.1" xref="A3.T8.1.1.1.1.m1.1.1.cmml"><mi id="A3.T8.1.1.1.1.m1.1.1a" xref="A3.T8.1.1.1.1.m1.1.1.cmml"></mi><mtext id="A3.T8.1.1.1.1.m1.1.1.1" mathsize="144%" xref="A3.T8.1.1.1.1.m1.1.1.1a.cmml">I</mtext></msup><annotation-xml encoding="MathML-Content" id="A3.T8.1.1.1.1.m1.1b"><apply id="A3.T8.1.1.1.1.m1.1.1.cmml" xref="A3.T8.1.1.1.1.m1.1.1"><ci id="A3.T8.1.1.1.1.m1.1.1.1a.cmml" xref="A3.T8.1.1.1.1.m1.1.1.1"><mtext id="A3.T8.1.1.1.1.m1.1.1.1.cmml" mathsize="101%" xref="A3.T8.1.1.1.1.m1.1.1.1">I</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.1.1.1.1.m1.1c">{}^{\text{I}}</annotation><annotation encoding="application/x-llamapun" id="A3.T8.1.1.1.1.m1.1d">start_FLOATSUPERSCRIPT I end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.2.2.2.7"><span class="ltx_text" id="A3.T8.2.2.2.7.1" style="font-size:144%;">POPE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.2.2.2.2">
<span class="ltx_text" id="A3.T8.2.2.2.2.1" style="font-size:144%;">LLaVA</span><math alttext="{}^{\text{W}}" class="ltx_Math" display="inline" id="A3.T8.2.2.2.2.m1.1"><semantics id="A3.T8.2.2.2.2.m1.1a"><msup id="A3.T8.2.2.2.2.m1.1.1" xref="A3.T8.2.2.2.2.m1.1.1.cmml"><mi id="A3.T8.2.2.2.2.m1.1.1a" xref="A3.T8.2.2.2.2.m1.1.1.cmml"></mi><mtext id="A3.T8.2.2.2.2.m1.1.1.1" mathsize="144%" xref="A3.T8.2.2.2.2.m1.1.1.1a.cmml">W</mtext></msup><annotation-xml encoding="MathML-Content" id="A3.T8.2.2.2.2.m1.1b"><apply id="A3.T8.2.2.2.2.m1.1.1.cmml" xref="A3.T8.2.2.2.2.m1.1.1"><ci id="A3.T8.2.2.2.2.m1.1.1.1a.cmml" xref="A3.T8.2.2.2.2.m1.1.1.1"><mtext id="A3.T8.2.2.2.2.m1.1.1.1.cmml" mathsize="101%" xref="A3.T8.2.2.2.2.m1.1.1.1">W</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.2.2.2.2.m1.1c">{}^{\text{W}}</annotation><annotation encoding="application/x-llamapun" id="A3.T8.2.2.2.2.m1.1d">start_FLOATSUPERSCRIPT W end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.2.2.2.8"><span class="ltx_text" id="A3.T8.2.2.2.8.1" style="font-size:144%;">MM-Vet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.2.2.2.9"><span class="ltx_text" id="A3.T8.2.2.2.9.1" style="font-size:144%;">RealWorldQA</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T8.3.3.3.2">
<span class="ltx_text" id="A3.T8.3.3.3.2.1" style="font-size:144%;">MiniCPM-V 2.0-3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T8.3.3.3.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib119" title=""><span class="ltx_text" style="font-size:90%;">119</span></a><span class="ltx_text" id="A3.T8.3.3.3.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.3.3.3.3"><span class="ltx_text" id="A3.T8.3.3.3.3.1" style="font-size:144%;">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.3.3.3.4"><span class="ltx_text" id="A3.T8.3.3.3.4.1" style="font-size:144%;">38.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T8.3.3.3.5"><span class="ltx_text" id="A3.T8.3.3.3.5.1" style="font-size:144%;">38.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.3.3.3.1">
<span class="ltx_text" id="A3.T8.3.3.3.1.1" style="font-size:144%;">1808.2</span><sup class="ltx_sup" id="A3.T8.3.3.3.1.2"><span class="ltx_text" id="A3.T8.3.3.3.1.2.1" style="font-size:144%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.3.3.3.6"><span class="ltx_text" id="A3.T8.3.3.3.6.1" style="font-size:144%;">67.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.3.3.3.7"><span class="ltx_text" id="A3.T8.3.3.3.7.1" style="font-size:144%;">87.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.3.3.3.8"><span class="ltx_text" id="A3.T8.3.3.3.8.1" style="font-size:144%;">69.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.3.3.3.9"><span class="ltx_text" id="A3.T8.3.3.3.9.1" style="font-size:144%;">38.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.3.3.3.10"><span class="ltx_text" id="A3.T8.3.3.3.10.1" style="font-size:144%;">55.8</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.6.6.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.6.6.8.1">
<span class="ltx_text" id="A3.T8.6.6.8.1.1" style="font-size:144%;">VILA1.5-3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T8.6.6.8.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib76" title=""><span class="ltx_text" style="font-size:90%;">76</span></a><span class="ltx_text" id="A3.T8.6.6.8.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.8.2"><span class="ltx_text" id="A3.T8.6.6.8.2.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.8.3"><span class="ltx_text" id="A3.T8.6.6.8.3.1" style="font-size:144%;">33.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.6.6.8.4"><span class="ltx_text" id="A3.T8.6.6.8.4.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.8.5"><span class="ltx_text" id="A3.T8.6.6.8.5.1" style="font-size:144%;">1442.4/–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.8.6"><span class="ltx_text" id="A3.T8.6.6.8.6.1" style="font-size:144%;">67.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.8.7"><span class="ltx_text" id="A3.T8.6.6.8.7.1" style="font-size:144%;">85.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.8.8"><span class="ltx_text" id="A3.T8.6.6.8.8.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.8.9"><span class="ltx_text" id="A3.T8.6.6.8.9.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.8.10"><span class="ltx_text" id="A3.T8.6.6.8.10.1" style="font-size:144%;">–</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.6.6.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.6.6.9.1">
<span class="ltx_text" id="A3.T8.6.6.9.1.1" style="font-size:144%;">SpatialRGPT-VILA-1.5-3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T8.6.6.9.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a><span class="ltx_text" id="A3.T8.6.6.9.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.9.2"><span class="ltx_text" id="A3.T8.6.6.9.2.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.9.3"><span class="ltx_text" id="A3.T8.6.6.9.3.1" style="font-size:144%;">33.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.6.6.9.4"><span class="ltx_text" id="A3.T8.6.6.9.4.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.9.5"><span class="ltx_text" id="A3.T8.6.6.9.5.1" style="font-size:144%;">1424.0/–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.9.6"><span class="ltx_text" id="A3.T8.6.6.9.6.1" style="font-size:144%;">69.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.9.7"><span class="ltx_text" id="A3.T8.6.6.9.7.1" style="font-size:144%;">85.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.9.8"><span class="ltx_text" id="A3.T8.6.6.9.8.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.9.9"><span class="ltx_text" id="A3.T8.6.6.9.9.1" style="font-size:144%;">38.2</span></td>
<td class="ltx_td" id="A3.T8.6.6.9.10"></td>
</tr>
<tr class="ltx_tr" id="A3.T8.6.6.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.6.6.10.1">
<span class="ltx_text" id="A3.T8.6.6.10.1.1" style="font-size:144%;">TinyLLaVA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T8.6.6.10.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib137" title=""><span class="ltx_text" style="font-size:90%;">137</span></a><span class="ltx_text" id="A3.T8.6.6.10.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.10.2"><span class="ltx_text" id="A3.T8.6.6.10.2.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.10.3"><span class="ltx_text" id="A3.T8.6.6.10.3.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.6.6.10.4"><span class="ltx_text" id="A3.T8.6.6.10.4.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.10.5"><span class="ltx_text" id="A3.T8.6.6.10.5.1" style="font-size:144%;">1464.9/–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.10.6"><span class="ltx_text" id="A3.T8.6.6.10.6.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.10.7"><span class="ltx_text" id="A3.T8.6.6.10.7.1" style="font-size:144%;">86.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.10.8"><span class="ltx_text" id="A3.T8.6.6.10.8.1" style="font-size:144%;">75.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.10.9"><span class="ltx_text" id="A3.T8.6.6.10.9.1" style="font-size:144%;">32.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.10.10"><span class="ltx_text" id="A3.T8.6.6.10.10.1" style="font-size:144%;">–</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.6.6.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.6.6.11.1">
<span class="ltx_text" id="A3.T8.6.6.11.1.1" style="font-size:144%;">Gemini Nano-2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T8.6.6.11.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib103" title=""><span class="ltx_text" style="font-size:90%;">103</span></a><span class="ltx_text" id="A3.T8.6.6.11.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.11.2"><span class="ltx_text" id="A3.T8.6.6.11.2.1" style="font-size:144%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.11.3"><span class="ltx_text" id="A3.T8.6.6.11.3.1" style="font-size:144%;">32.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.6.6.11.4"><span class="ltx_text" id="A3.T8.6.6.11.4.1" style="font-size:144%;">30.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.11.5"><span class="ltx_text" id="A3.T8.6.6.11.5.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.11.6"><span class="ltx_text" id="A3.T8.6.6.11.6.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.11.7"><span class="ltx_text" id="A3.T8.6.6.11.7.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.11.8"><span class="ltx_text" id="A3.T8.6.6.11.8.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.11.9"><span class="ltx_text" id="A3.T8.6.6.11.9.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.11.10"><span class="ltx_text" id="A3.T8.6.6.11.10.1" style="font-size:144%;">–</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.6.6.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.6.6.12.1">
<span class="ltx_text" id="A3.T8.6.6.12.1.1" style="font-size:144%;">Bunny </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T8.6.6.12.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a><span class="ltx_text" id="A3.T8.6.6.12.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.12.2"><span class="ltx_text" id="A3.T8.6.6.12.2.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.12.3"><span class="ltx_text" id="A3.T8.6.6.12.3.1" style="font-size:144%;">41.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.6.6.12.4"><span class="ltx_text" id="A3.T8.6.6.12.4.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.12.5"><span class="ltx_text" id="A3.T8.6.6.12.5.1" style="font-size:144%;">1581.5/361.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.12.6"><span class="ltx_text" id="A3.T8.6.6.12.6.1" style="font-size:144%;">72.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.12.7"><span class="ltx_text" id="A3.T8.6.6.12.7.1" style="font-size:144%;">87.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.12.8"><span class="ltx_text" id="A3.T8.6.6.12.8.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.12.9"><span class="ltx_text" id="A3.T8.6.6.12.9.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.12.10"><span class="ltx_text" id="A3.T8.6.6.12.10.1" style="font-size:144%;">–</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.6.6.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.6.6.13.1">
<span class="ltx_text" id="A3.T8.6.6.13.1.1" style="font-size:144%;">BLIP-3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T8.6.6.13.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib115" title=""><span class="ltx_text" style="font-size:90%;">115</span></a><span class="ltx_text" id="A3.T8.6.6.13.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.13.2"><span class="ltx_text" id="A3.T8.6.6.13.2.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.13.3"><span class="ltx_text" id="A3.T8.6.6.13.3.1" style="font-size:144%;">41.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.6.6.13.4"><span class="ltx_text" id="A3.T8.6.6.13.4.1" style="font-size:144%;">39.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.13.5"><span class="ltx_text" id="A3.T8.6.6.13.5.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.13.6"><span class="ltx_text" id="A3.T8.6.6.13.6.1" style="font-size:144%;">72.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.13.7"><span class="ltx_text" id="A3.T8.6.6.13.7.1" style="font-size:144%;">87.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.13.8"><span class="ltx_text" id="A3.T8.6.6.13.8.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.13.9"><span class="ltx_text" id="A3.T8.6.6.13.9.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.13.10"><span class="ltx_text" id="A3.T8.6.6.13.10.1" style="font-size:144%;">60.5</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.6.6.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.6.6.14.1">
<span class="ltx_text" id="A3.T8.6.6.14.1.1" style="font-size:144%;">Phi-3-Vision-4B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T8.6.6.14.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="A3.T8.6.6.14.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.14.2"><span class="ltx_text" id="A3.T8.6.6.14.2.1" style="font-size:144%;">76.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.14.3"><span class="ltx_text" id="A3.T8.6.6.14.3.1" style="font-size:144%;">40.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.6.6.14.4"><span class="ltx_text" id="A3.T8.6.6.14.4.1" style="font-size:144%;">44.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.14.5"><span class="ltx_text" id="A3.T8.6.6.14.5.1" style="font-size:144%;">1441.6/320.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.14.6"><span class="ltx_text" id="A3.T8.6.6.14.6.1" style="font-size:144%;">71.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.14.7"><span class="ltx_text" id="A3.T8.6.6.14.7.1" style="font-size:144%;">85.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.14.8"><span class="ltx_text" id="A3.T8.6.6.14.8.1" style="font-size:144%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.14.9"><span class="ltx_text" id="A3.T8.6.6.14.9.1" style="font-size:144%;">46.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.14.10"><span class="ltx_text" id="A3.T8.6.6.14.10.1" style="font-size:144%;">59.4</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.6.6.15" style="background-color:#DFEBF7;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.6.6.15.1"><span class="ltx_text" id="A3.T8.6.6.15.1.1" style="font-size:144%;background-color:#DFEBF7;">MM1.5-3B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib128" title=""><span class="ltx_text" style="font-size:90%;">128</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.15.2"><span class="ltx_text" id="A3.T8.6.6.15.2.1" style="font-size:144%;background-color:#DFEBF7;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.15.3"><span class="ltx_text" id="A3.T8.6.6.15.3.1" style="font-size:144%;background-color:#DFEBF7;">37.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.6.6.15.4"><span class="ltx_text" id="A3.T8.6.6.15.4.1" style="font-size:144%;background-color:#DFEBF7;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.15.5"><span class="ltx_text" id="A3.T8.6.6.15.5.1" style="font-size:144%;background-color:#DFEBF7;">1423.7/277.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.15.6"><span class="ltx_text" id="A3.T8.6.6.15.6.1" style="font-size:144%;background-color:#DFEBF7;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.15.7"><span class="ltx_text" id="A3.T8.6.6.15.7.1" style="font-size:144%;background-color:#DFEBF7;">87.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.15.8"><span class="ltx_text" id="A3.T8.6.6.15.8.1" style="font-size:144%;background-color:#DFEBF7;">74.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.15.9"><span class="ltx_text" id="A3.T8.6.6.15.9.1" style="font-size:144%;background-color:#DFEBF7;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.15.10"><span class="ltx_text" id="A3.T8.6.6.15.10.1" style="font-size:144%;background-color:#DFEBF7;">57.7</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.6.6.16" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.6.6.16.1"><span class="ltx_text" id="A3.T8.6.6.16.1.1" style="font-size:144%;background-color:#F8FCF4;">MM-Spatial-3B</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.16.2"><span class="ltx_text" id="A3.T8.6.6.16.2.1" style="font-size:144%;background-color:#F8FCF4;">63.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.16.3"><span class="ltx_text" id="A3.T8.6.6.16.3.1" style="font-size:144%;background-color:#F8FCF4;">36.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.6.6.16.4"><span class="ltx_text" id="A3.T8.6.6.16.4.1" style="font-size:144%;background-color:#F8FCF4;">38.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.16.5"><span class="ltx_text" id="A3.T8.6.6.16.5.1" style="font-size:144%;background-color:#F8FCF4;">1530.5/251.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.16.6"><span class="ltx_text" id="A3.T8.6.6.16.6.1" style="font-size:144%;background-color:#F8FCF4;">71.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.16.7"><span class="ltx_text" id="A3.T8.6.6.16.7.1" style="font-size:144%;background-color:#F8FCF4;">88.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.16.8"><span class="ltx_text" id="A3.T8.6.6.16.8.1" style="font-size:144%;background-color:#F8FCF4;">69.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.16.9"><span class="ltx_text" id="A3.T8.6.6.16.9.1" style="font-size:144%;background-color:#F8FCF4;">38.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.6.6.16.10"><span class="ltx_text" id="A3.T8.6.6.16.10.1" style="font-size:144%;background-color:#F8FCF4;">59.0</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.4.4.4" style="background-color:#E6E6FA;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T8.4.4.4.2"><span class="ltx_text" id="A3.T8.4.4.4.2.1" style="font-size:144%;background-color:#E6E6FA;">Gemini-1.5-Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib93" title=""><span class="ltx_text" style="font-size:90%;">93</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.4.4.4.3"><span class="ltx_text" id="A3.T8.4.4.4.3.1" style="font-size:144%;background-color:#E6E6FA;">79.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.4.4.4.4"><span class="ltx_text" id="A3.T8.4.4.4.4.1" style="font-size:144%;background-color:#E6E6FA;">60.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T8.4.4.4.5"><span class="ltx_text" id="A3.T8.4.4.4.5.1" style="font-size:144%;background-color:#E6E6FA;">57.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.4.4.4.1"><span class="ltx_text" id="A3.T8.4.4.4.1.1" style="font-size:144%;background-color:#E6E6FA;">2110.6<sup class="ltx_sup" id="A3.T8.4.4.4.1.1.1">†</sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.4.4.4.6"><span class="ltx_text" id="A3.T8.4.4.4.6.1" style="font-size:144%;background-color:#E6E6FA;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.4.4.4.7"><span class="ltx_text" id="A3.T8.4.4.4.7.1" style="font-size:144%;background-color:#E6E6FA;">88.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.4.4.4.8"><span class="ltx_text" id="A3.T8.4.4.4.8.1" style="font-size:144%;background-color:#E6E6FA;">95.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.4.4.4.9"><span class="ltx_text" id="A3.T8.4.4.4.9.1" style="font-size:144%;background-color:#E6E6FA;">64.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.4.4.4.10"><span class="ltx_text" id="A3.T8.4.4.4.10.1" style="font-size:144%;background-color:#E6E6FA;">64.1</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.5.5.5" style="background-color:#E6E6FA;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.5.5.5.2"><span class="ltx_text" id="A3.T8.5.5.5.2.1" style="font-size:144%;background-color:#E6E6FA;">GPT-4V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.5.5.5.3"><span class="ltx_text" id="A3.T8.5.5.5.3.1" style="font-size:144%;background-color:#E6E6FA;">75.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.5.5.5.4"><span class="ltx_text" id="A3.T8.5.5.5.4.1" style="font-size:144%;background-color:#E6E6FA;">53.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.5.5.5.5"><span class="ltx_text" id="A3.T8.5.5.5.5.1" style="font-size:144%;background-color:#E6E6FA;">48.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.5.5.5.1"><span class="ltx_text" id="A3.T8.5.5.5.1.1" style="font-size:144%;background-color:#E6E6FA;">1771.5<sup class="ltx_sup" id="A3.T8.5.5.5.1.1.1">†</sup></span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.5.5.5.6"><span class="ltx_text" id="A3.T8.5.5.5.6.1" style="font-size:144%;background-color:#E6E6FA;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.5.5.5.7"><span class="ltx_text" id="A3.T8.5.5.5.7.1" style="font-size:144%;background-color:#E6E6FA;">75.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.5.5.5.8"><span class="ltx_text" id="A3.T8.5.5.5.8.1" style="font-size:144%;background-color:#E6E6FA;">93.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.5.5.5.9"><span class="ltx_text" id="A3.T8.5.5.5.9.1" style="font-size:144%;background-color:#E6E6FA;">56.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.5.5.5.10"><span class="ltx_text" id="A3.T8.5.5.5.10.1" style="font-size:144%;background-color:#E6E6FA;">56.5</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.6.6.6" style="background-color:#E6E6FA;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A3.T8.6.6.6.2"><span class="ltx_text" id="A3.T8.6.6.6.2.1" style="font-size:144%;background-color:#E6E6FA;">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.6.6.6.3"><span class="ltx_text" id="A3.T8.6.6.6.3.1" style="font-size:144%;background-color:#E6E6FA;">84.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.6.6.6.4"><span class="ltx_text" id="A3.T8.6.6.6.4.1" style="font-size:144%;background-color:#E6E6FA;">69.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T8.6.6.6.5"><span class="ltx_text" id="A3.T8.6.6.6.5.1" style="font-size:144%;background-color:#E6E6FA;">61.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.6.6.6.1"><span class="ltx_text" id="A3.T8.6.6.6.1.1" style="font-size:144%;background-color:#E6E6FA;">2310.3<sup class="ltx_sup" id="A3.T8.6.6.6.1.1.1">†</sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.6.6.6.6"><span class="ltx_text" id="A3.T8.6.6.6.6.1" style="font-size:144%;background-color:#E6E6FA;">77.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.6.6.6.7"><span class="ltx_text" id="A3.T8.6.6.6.7.1" style="font-size:144%;background-color:#E6E6FA;">85.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.6.6.6.8"><span class="ltx_text" id="A3.T8.6.6.6.8.1" style="font-size:144%;background-color:#E6E6FA;">102.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.6.6.6.9"><span class="ltx_text" id="A3.T8.6.6.6.9.1" style="font-size:144%;background-color:#E6E6FA;">69.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.6.6.6.10"><span class="ltx_text" id="A3.T8.6.6.6.10.1" style="font-size:144%;background-color:#E6E6FA;">75.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents a comparison of the MM-Spatial model's performance against state-of-the-art (SOTA) models on a range of knowledge and general benchmark tasks.  It shows scores for various sub-tasks within each benchmark, providing a comprehensive evaluation of the model's capabilities beyond just spatial reasoning.  Note that some SOTA model scores are sourced from a different reference paper ([33]).  The table highlights the model's ability to perform competitively on these general tasks while excelling in spatial understanding.
> <details>
> <summary>read the caption</summary>
> Table 8: Knowledge and General Benchmark Results. Comparison with SOTA models on knowledge and general benchmarks. (††\dagger†) Sum of P and C scores. Gemini-1.5-Pro, GPT-4V and GPT-4o numbers are from [33].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T9.4.4">
<tr class="ltx_tr" id="A3.T9.4.4.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A3.T9.4.4.5.1"><span class="ltx_text ltx_font_bold" id="A3.T9.4.4.5.1.1" style="font-size:144%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.4.5.2">
<span class="ltx_text" id="A3.T9.4.4.5.2.1"></span><span class="ltx_text" id="A3.T9.4.4.5.2.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T9.4.4.5.2.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T9.4.4.5.2.3.1">
<span class="ltx_tr" id="A3.T9.4.4.5.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.4.4.5.2.3.1.1.1">WTQ</span></span>
<span class="ltx_tr" id="A3.T9.4.4.5.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.4.4.5.2.3.1.2.1">(test)</span></span>
</span></span><span class="ltx_text" id="A3.T9.4.4.5.2.4"></span><span class="ltx_text" id="A3.T9.4.4.5.2.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.4.5.3">
<span class="ltx_text" id="A3.T9.4.4.5.3.1"></span><span class="ltx_text" id="A3.T9.4.4.5.3.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T9.4.4.5.3.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T9.4.4.5.3.3.1">
<span class="ltx_tr" id="A3.T9.4.4.5.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.4.4.5.3.3.1.1.1">TabFact</span></span>
<span class="ltx_tr" id="A3.T9.4.4.5.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.4.4.5.3.3.1.2.1">(test)</span></span>
</span></span><span class="ltx_text" id="A3.T9.4.4.5.3.4"></span><span class="ltx_text" id="A3.T9.4.4.5.3.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.4.5.4">
<span class="ltx_text" id="A3.T9.4.4.5.4.1"></span><span class="ltx_text" id="A3.T9.4.4.5.4.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T9.4.4.5.4.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T9.4.4.5.4.3.1">
<span class="ltx_tr" id="A3.T9.4.4.5.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.4.4.5.4.3.1.1.1">OCRBench</span></span>
<span class="ltx_tr" id="A3.T9.4.4.5.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.4.4.5.4.3.1.2.1">(test)</span></span>
</span></span><span class="ltx_text" id="A3.T9.4.4.5.4.4"></span><span class="ltx_text" id="A3.T9.4.4.5.4.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.4.5.5">
<span class="ltx_text" id="A3.T9.4.4.5.5.1"></span><span class="ltx_text" id="A3.T9.4.4.5.5.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T9.4.4.5.5.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T9.4.4.5.5.3.1">
<span class="ltx_tr" id="A3.T9.4.4.5.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.4.4.5.5.3.1.1.1">ChartQA</span></span>
<span class="ltx_tr" id="A3.T9.4.4.5.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.4.4.5.5.3.1.2.1">(test)</span></span>
</span></span><span class="ltx_text" id="A3.T9.4.4.5.5.4"></span><span class="ltx_text" id="A3.T9.4.4.5.5.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.4.5.6">
<span class="ltx_text" id="A3.T9.4.4.5.6.1"></span><span class="ltx_text" id="A3.T9.4.4.5.6.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T9.4.4.5.6.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T9.4.4.5.6.3.1">
<span class="ltx_tr" id="A3.T9.4.4.5.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.4.4.5.6.3.1.1.1">TextVQA</span></span>
<span class="ltx_tr" id="A3.T9.4.4.5.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.4.4.5.6.3.1.2.1">(val)</span></span>
</span></span><span class="ltx_text" id="A3.T9.4.4.5.6.4"></span><span class="ltx_text" id="A3.T9.4.4.5.6.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.4.5.7">
<span class="ltx_text" id="A3.T9.4.4.5.7.1"></span><span class="ltx_text" id="A3.T9.4.4.5.7.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T9.4.4.5.7.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T9.4.4.5.7.3.1">
<span class="ltx_tr" id="A3.T9.4.4.5.7.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.4.4.5.7.3.1.1.1">DocVQA</span></span>
<span class="ltx_tr" id="A3.T9.4.4.5.7.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.4.4.5.7.3.1.2.1">(val)</span></span>
</span></span><span class="ltx_text" id="A3.T9.4.4.5.7.4"></span><span class="ltx_text" id="A3.T9.4.4.5.7.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.4.5.8">
<span class="ltx_text" id="A3.T9.4.4.5.8.1"></span><span class="ltx_text" id="A3.T9.4.4.5.8.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T9.4.4.5.8.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T9.4.4.5.8.3.1">
<span class="ltx_tr" id="A3.T9.4.4.5.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.4.4.5.8.3.1.1.1">InfoVQA</span></span>
<span class="ltx_tr" id="A3.T9.4.4.5.8.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.4.4.5.8.3.1.2.1">(val)</span></span>
</span></span><span class="ltx_text" id="A3.T9.4.4.5.8.4"></span><span class="ltx_text" id="A3.T9.4.4.5.8.5" style="font-size:144%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.4.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T9.4.4.6.1">
<span class="ltx_text" id="A3.T9.4.4.6.1.1" style="font-size:144%;">MiniCPM-V 2.0-3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T9.4.4.6.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib119" title=""><span class="ltx_text" style="font-size:90%;">119</span></a><span class="ltx_text" id="A3.T9.4.4.6.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.6.2"><span class="ltx_text" id="A3.T9.4.4.6.2.1" style="font-size:144%;">24.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.6.3"><span class="ltx_text" id="A3.T9.4.4.6.3.1" style="font-size:144%;">58.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.6.4"><span class="ltx_text" id="A3.T9.4.4.6.4.1" style="font-size:144%;">60.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.6.5"><span class="ltx_text" id="A3.T9.4.4.6.5.1" style="font-size:144%;">59.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.6.6"><span class="ltx_text" id="A3.T9.4.4.6.6.1" style="font-size:144%;">74.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.6.7"><span class="ltx_text" id="A3.T9.4.4.6.7.1" style="font-size:144%;">71.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.6.8"><span class="ltx_text" id="A3.T9.4.4.6.8.1" style="font-size:144%;">37.6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.4.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.4.4.7.1">
<span class="ltx_text" id="A3.T9.4.4.7.1.1" style="font-size:144%;">TinyLLaVA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T9.4.4.7.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib137" title=""><span class="ltx_text" style="font-size:90%;">137</span></a><span class="ltx_text" id="A3.T9.4.4.7.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.7.2"><span class="ltx_text" id="A3.T9.4.4.7.2.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.7.3"><span class="ltx_text" id="A3.T9.4.4.7.3.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.7.4"><span class="ltx_text" id="A3.T9.4.4.7.4.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.7.5"><span class="ltx_text" id="A3.T9.4.4.7.5.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.7.6"><span class="ltx_text" id="A3.T9.4.4.7.6.1" style="font-size:144%;">59.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.7.7"><span class="ltx_text" id="A3.T9.4.4.7.7.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.7.8"><span class="ltx_text" id="A3.T9.4.4.7.8.1" style="font-size:144%;">–</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.4.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.4.4.8.1">
<span class="ltx_text" id="A3.T9.4.4.8.1.1" style="font-size:144%;">Gemini Nano-2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T9.4.4.8.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib103" title=""><span class="ltx_text" style="font-size:90%;">103</span></a><span class="ltx_text" id="A3.T9.4.4.8.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.8.2"><span class="ltx_text" id="A3.T9.4.4.8.2.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.8.3"><span class="ltx_text" id="A3.T9.4.4.8.3.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.8.4"><span class="ltx_text" id="A3.T9.4.4.8.4.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.8.5"><span class="ltx_text" id="A3.T9.4.4.8.5.1" style="font-size:144%;">51.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.8.6"><span class="ltx_text" id="A3.T9.4.4.8.6.1" style="font-size:144%;">65.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.8.7"><span class="ltx_text" id="A3.T9.4.4.8.7.1" style="font-size:144%;">74.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.8.8"><span class="ltx_text" id="A3.T9.4.4.8.8.1" style="font-size:144%;">54.5</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.4.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.4.4.9.1">
<span class="ltx_text" id="A3.T9.4.4.9.1.1" style="font-size:144%;">BLIP-3-4B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T9.4.4.9.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib115" title=""><span class="ltx_text" style="font-size:90%;">115</span></a><span class="ltx_text" id="A3.T9.4.4.9.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.9.2"><span class="ltx_text" id="A3.T9.4.4.9.2.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.9.3"><span class="ltx_text" id="A3.T9.4.4.9.3.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.9.4"><span class="ltx_text" id="A3.T9.4.4.9.4.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.9.5"><span class="ltx_text" id="A3.T9.4.4.9.5.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.9.6"><span class="ltx_text" id="A3.T9.4.4.9.6.1" style="font-size:144%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.9.7"><span class="ltx_text" id="A3.T9.4.4.9.7.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.9.8"><span class="ltx_text" id="A3.T9.4.4.9.8.1" style="font-size:144%;">–</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.4.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.4.4.10.1">
<span class="ltx_text" id="A3.T9.4.4.10.1.1" style="font-size:144%;">Phi-3-Vision-4B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T9.4.4.10.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="A3.T9.4.4.10.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.10.2"><span class="ltx_text" id="A3.T9.4.4.10.2.1" style="font-size:144%;">47.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.10.3"><span class="ltx_text" id="A3.T9.4.4.10.3.1" style="font-size:144%;">67.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.10.4"><span class="ltx_text" id="A3.T9.4.4.10.4.1" style="font-size:144%;">63.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.10.5"><span class="ltx_text" id="A3.T9.4.4.10.5.1" style="font-size:144%;">81.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.10.6"><span class="ltx_text" id="A3.T9.4.4.10.6.1" style="font-size:144%;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.10.7"><span class="ltx_text" id="A3.T9.4.4.10.7.1" style="font-size:144%;">83.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.10.8"><span class="ltx_text" id="A3.T9.4.4.10.8.1" style="font-size:144%;">49.0</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.4.11" style="background-color:#DFEBF7;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.4.4.11.1"><span class="ltx_text" id="A3.T9.4.4.11.1.1" style="font-size:144%;background-color:#DFEBF7;">MM1.5-3B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib128" title=""><span class="ltx_text" style="font-size:90%;">128</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.11.2"><span class="ltx_text" id="A3.T9.4.4.11.2.1" style="font-size:144%;background-color:#DFEBF7;">37.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.11.3"><span class="ltx_text" id="A3.T9.4.4.11.3.1" style="font-size:144%;background-color:#DFEBF7;">70.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.11.4"><span class="ltx_text" id="A3.T9.4.4.11.4.1" style="font-size:144%;background-color:#DFEBF7;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.11.5"><span class="ltx_text" id="A3.T9.4.4.11.5.1" style="font-size:144%;background-color:#DFEBF7;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.11.6"><span class="ltx_text" id="A3.T9.4.4.11.6.1" style="font-size:144%;background-color:#DFEBF7;">74.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.11.7"><span class="ltx_text" id="A3.T9.4.4.11.7.1" style="font-size:144%;background-color:#DFEBF7;">82.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.11.8"><span class="ltx_text" id="A3.T9.4.4.11.8.1" style="font-size:144%;background-color:#DFEBF7;">45.5</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.4.12" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.4.4.12.1"><span class="ltx_text" id="A3.T9.4.4.12.1.1" style="font-size:144%;background-color:#F8FCF4;">MM-Spatial-3B</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.12.2"><span class="ltx_text" id="A3.T9.4.4.12.2.1" style="font-size:144%;background-color:#F8FCF4;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.12.3"><span class="ltx_text" id="A3.T9.4.4.12.3.1" style="font-size:144%;background-color:#F8FCF4;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.12.4"><span class="ltx_text" id="A3.T9.4.4.12.4.1" style="font-size:144%;background-color:#F8FCF4;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.12.5"><span class="ltx_text" id="A3.T9.4.4.12.5.1" style="font-size:144%;background-color:#F8FCF4;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.12.6"><span class="ltx_text" id="A3.T9.4.4.12.6.1" style="font-size:144%;background-color:#F8FCF4;">75.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.12.7"><span class="ltx_text" id="A3.T9.4.4.12.7.1" style="font-size:144%;background-color:#F8FCF4;">82.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.12.8"><span class="ltx_text" id="A3.T9.4.4.12.8.1" style="font-size:144%;background-color:#F8FCF4;">43.7</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.4.13" style="background-color:#E6E6FA;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T9.4.4.13.1"><span class="ltx_text" id="A3.T9.4.4.13.1.1" style="font-size:144%;background-color:#E6E6FA;">Gemini-1.5-Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib93" title=""><span class="ltx_text" style="font-size:90%;">93</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.13.2"><span class="ltx_text" id="A3.T9.4.4.13.2.1" style="font-size:144%;background-color:#E6E6FA;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.13.3"><span class="ltx_text" id="A3.T9.4.4.13.3.1" style="font-size:144%;background-color:#E6E6FA;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.13.4"><span class="ltx_text" id="A3.T9.4.4.13.4.1" style="font-size:144%;background-color:#E6E6FA;">75.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.13.5"><span class="ltx_text" id="A3.T9.4.4.13.5.1" style="font-size:144%;background-color:#E6E6FA;">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.13.6"><span class="ltx_text" id="A3.T9.4.4.13.6.1" style="font-size:144%;background-color:#E6E6FA;">78.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.13.7"><span class="ltx_text" id="A3.T9.4.4.13.7.1" style="font-size:144%;background-color:#E6E6FA;">93.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.13.8"><span class="ltx_text" id="A3.T9.4.4.13.8.1" style="font-size:144%;background-color:#E6E6FA;">81.0</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.2.2.2" style="background-color:#E6E6FA;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.2.2.2.3"><span class="ltx_text" id="A3.T9.2.2.2.3.1" style="font-size:144%;background-color:#E6E6FA;">GPT-4V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.2.2.2.4"><span class="ltx_text" id="A3.T9.2.2.2.4.1" style="font-size:144%;background-color:#E6E6FA;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.2.2.2.5"><span class="ltx_text" id="A3.T9.2.2.2.5.1" style="font-size:144%;background-color:#E6E6FA;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.2.2.2.6"><span class="ltx_text" id="A3.T9.2.2.2.6.1" style="font-size:144%;background-color:#E6E6FA;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.1.1"><span class="ltx_text" id="A3.T9.1.1.1.1.1" style="font-size:144%;background-color:#E6E6FA;">78.5<sup class="ltx_sup" id="A3.T9.1.1.1.1.1.1">†</sup></span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.2.2.2.7"><span class="ltx_text" id="A3.T9.2.2.2.7.1" style="font-size:144%;background-color:#E6E6FA;">–</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.2.2.2.2"><span class="ltx_text" id="A3.T9.2.2.2.2.1" style="font-size:144%;background-color:#E6E6FA;">88.4<sup class="ltx_sup" id="A3.T9.2.2.2.2.1.1">†</sup></span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.2.2.2.8"><span class="ltx_text" id="A3.T9.2.2.2.8.1" style="font-size:144%;background-color:#E6E6FA;">–</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.4.4" style="background-color:#E6E6FA;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A3.T9.4.4.4.3"><span class="ltx_text" id="A3.T9.4.4.4.3.1" style="font-size:144%;background-color:#E6E6FA;">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.4.4.4"><span class="ltx_text" id="A3.T9.4.4.4.4.1" style="font-size:144%;background-color:#E6E6FA;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.4.4.5"><span class="ltx_text" id="A3.T9.4.4.4.5.1" style="font-size:144%;background-color:#E6E6FA;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.4.4.6"><span class="ltx_text" id="A3.T9.4.4.4.6.1" style="font-size:144%;background-color:#E6E6FA;">73.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.3.3.3.1"><span class="ltx_text" id="A3.T9.3.3.3.1.1" style="font-size:144%;background-color:#E6E6FA;">85.7<sup class="ltx_sup" id="A3.T9.3.3.3.1.1.1">†</sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.4.4.7"><span class="ltx_text" id="A3.T9.4.4.4.7.1" style="font-size:144%;background-color:#E6E6FA;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.4.4.2"><span class="ltx_text" id="A3.T9.4.4.4.2.1" style="font-size:144%;background-color:#E6E6FA;">92.8<sup class="ltx_sup" id="A3.T9.4.4.4.2.1.1">†</sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.4.4.8"><span class="ltx_text" id="A3.T9.4.4.4.8.1" style="font-size:144%;background-color:#E6E6FA;">–</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of various models, including the proposed MM-Spatial model, on several text-rich benchmarks.  The benchmarks assess the models' abilities to understand and generate text in the context of rich textual data.  The results are reported as scores and allow for a quantitative comparison of the different models' capabilities in handling complex textual information.
> <details>
> <summary>read the caption</summary>
> Table 9: Text-rich Benchmark Results. Comparison with SOTA models on text-rich benchmarks. (††\dagger†) Numbers are obtained from [63].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T10.2.1">
<tr class="ltx_tr" id="A3.T10.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A3.T10.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T10.2.1.1.1.1" style="font-size:144%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.2.1.1.2">
<span class="ltx_text" id="A3.T10.2.1.1.2.1"></span><span class="ltx_text" id="A3.T10.2.1.1.2.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T10.2.1.1.2.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T10.2.1.1.2.3.1">
<span class="ltx_tr" id="A3.T10.2.1.1.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.2.1.1.2.3.1.1.1">RefCOCO</span></span>
<span class="ltx_tr" id="A3.T10.2.1.1.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.2.1.1.2.3.1.2.1">(testA/B)</span></span>
</span></span><span class="ltx_text" id="A3.T10.2.1.1.2.4"></span><span class="ltx_text" id="A3.T10.2.1.1.2.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.2.1.1.3">
<span class="ltx_text" id="A3.T10.2.1.1.3.1"></span><span class="ltx_text" id="A3.T10.2.1.1.3.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T10.2.1.1.3.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T10.2.1.1.3.3.1">
<span class="ltx_tr" id="A3.T10.2.1.1.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.2.1.1.3.3.1.1.1">RefCOCO+</span></span>
<span class="ltx_tr" id="A3.T10.2.1.1.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.2.1.1.3.3.1.2.1">(testA/B)</span></span>
</span></span><span class="ltx_text" id="A3.T10.2.1.1.3.4"></span><span class="ltx_text" id="A3.T10.2.1.1.3.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.2.1.1.4">
<span class="ltx_text" id="A3.T10.2.1.1.4.1"></span><span class="ltx_text" id="A3.T10.2.1.1.4.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T10.2.1.1.4.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T10.2.1.1.4.3.1">
<span class="ltx_tr" id="A3.T10.2.1.1.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.2.1.1.4.3.1.1.1">RefCOCOg</span></span>
<span class="ltx_tr" id="A3.T10.2.1.1.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.2.1.1.4.3.1.2.1">(test)</span></span>
</span></span><span class="ltx_text" id="A3.T10.2.1.1.4.4"></span><span class="ltx_text" id="A3.T10.2.1.1.4.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.2.1.1.5">
<span class="ltx_text" id="A3.T10.2.1.1.5.1"></span><span class="ltx_text" id="A3.T10.2.1.1.5.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T10.2.1.1.5.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T10.2.1.1.5.3.1">
<span class="ltx_tr" id="A3.T10.2.1.1.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.2.1.1.5.3.1.1.1">Flickr30k</span></span>
<span class="ltx_tr" id="A3.T10.2.1.1.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.2.1.1.5.3.1.2.1">(test)</span></span>
</span></span><span class="ltx_text" id="A3.T10.2.1.1.5.4"></span><span class="ltx_text" id="A3.T10.2.1.1.5.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.2.1.1.6">
<span class="ltx_text" id="A3.T10.2.1.1.6.1"></span><span class="ltx_text" id="A3.T10.2.1.1.6.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T10.2.1.1.6.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T10.2.1.1.6.3.1">
<span class="ltx_tr" id="A3.T10.2.1.1.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.2.1.1.6.3.1.1.1">LVIS-Ref</span></span>
<span class="ltx_tr" id="A3.T10.2.1.1.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.2.1.1.6.3.1.2.1">(box/point)</span></span>
</span></span><span class="ltx_text" id="A3.T10.2.1.1.6.4"></span><span class="ltx_text" id="A3.T10.2.1.1.6.5" style="font-size:144%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T10.2.1.2.1">
<span class="ltx_text" id="A3.T10.2.1.2.1.1" style="font-size:144%;">MiniCPM-v2-3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T10.2.1.2.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib119" title=""><span class="ltx_text" style="font-size:90%;">119</span></a><span class="ltx_text" id="A3.T10.2.1.2.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.2.1.2.2"><span class="ltx_text" id="A3.T10.2.1.2.2.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.2.1.2.3"><span class="ltx_text" id="A3.T10.2.1.2.3.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.2.1.2.4"><span class="ltx_text" id="A3.T10.2.1.2.4.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.2.1.2.5"><span class="ltx_text" id="A3.T10.2.1.2.5.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.2.1.2.6"><span class="ltx_text" id="A3.T10.2.1.2.6.1" style="font-size:144%;">48.2/47.7</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T10.2.1.3.1">
<span class="ltx_text" id="A3.T10.2.1.3.1.1" style="font-size:144%;">Phi-3-Vision-4B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T10.2.1.3.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="A3.T10.2.1.3.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T10.2.1.3.2"><span class="ltx_text" id="A3.T10.2.1.3.2.1" style="font-size:144%;">46.3 / 36.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.2.1.3.3"><span class="ltx_text" id="A3.T10.2.1.3.3.1" style="font-size:144%;">42.0 / 28.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.2.1.3.4"><span class="ltx_text" id="A3.T10.2.1.3.4.1" style="font-size:144%;">37.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.2.1.3.5"><span class="ltx_text" id="A3.T10.2.1.3.5.1" style="font-size:144%;">27.12</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.2.1.3.6"><span class="ltx_text" id="A3.T10.2.1.3.6.1" style="font-size:144%;">53.8/54.5</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T10.2.1.4.1">
<span class="ltx_text" id="A3.T10.2.1.4.1.1" style="font-size:144%;">InternVL2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T10.2.1.4.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="A3.T10.2.1.4.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T10.2.1.4.2"><span class="ltx_text" id="A3.T10.2.1.4.2.1" style="font-size:144%;">88.2 / 75.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.2.1.4.3"><span class="ltx_text" id="A3.T10.2.1.4.3.1" style="font-size:144%;">82.8 / 63.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.2.1.4.4"><span class="ltx_text" id="A3.T10.2.1.4.4.1" style="font-size:144%;">78.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.2.1.4.5"><span class="ltx_text" id="A3.T10.2.1.4.5.1" style="font-size:144%;">51.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.2.1.4.6"><span class="ltx_text" id="A3.T10.2.1.4.6.1" style="font-size:144%;">51.0 / 51.1</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.2.1.5" style="background-color:#DFEBF7;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T10.2.1.5.1"><span class="ltx_text" id="A3.T10.2.1.5.1.1" style="font-size:144%;background-color:#DFEBF7;">MM1.5-3B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib128" title=""><span class="ltx_text" style="font-size:90%;">128</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.2.1.5.2"><span class="ltx_text" id="A3.T10.2.1.5.2.1" style="font-size:144%;background-color:#DFEBF7;">91.7 / 85.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.2.1.5.3"><span class="ltx_text" id="A3.T10.2.1.5.3.1" style="font-size:144%;background-color:#DFEBF7;">87.67 / 75.23</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.2.1.5.4"><span class="ltx_text" id="A3.T10.2.1.5.4.1" style="font-size:144%;background-color:#DFEBF7;">85.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.2.1.5.5"><span class="ltx_text" id="A3.T10.2.1.5.5.1" style="font-size:144%;background-color:#DFEBF7;">85.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.2.1.5.6"><span class="ltx_text" id="A3.T10.2.1.5.6.1" style="font-size:144%;background-color:#DFEBF7;">74.0 / 58.2</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.2.1.6" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A3.T10.2.1.6.1"><span class="ltx_text" id="A3.T10.2.1.6.1.1" style="font-size:144%;background-color:#F8FCF4;">MM-Spatial-3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.2.1.6.2"><span class="ltx_text" id="A3.T10.2.1.6.2.1" style="font-size:144%;background-color:#F8FCF4;">92.2 / 85.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.2.1.6.3"><span class="ltx_text" id="A3.T10.2.1.6.3.1" style="font-size:144%;background-color:#F8FCF4;">88.3 / 76.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.2.1.6.4"><span class="ltx_text" id="A3.T10.2.1.6.4.1" style="font-size:144%;background-color:#F8FCF4;">86.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.2.1.6.5"><span class="ltx_text" id="A3.T10.2.1.6.5.1" style="font-size:144%;background-color:#F8FCF4;">85.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.2.1.6.6"><span class="ltx_text" id="A3.T10.2.1.6.6.1" style="font-size:144%;background-color:#F8FCF4;">75.9 / 58.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of the MM-Spatial model against state-of-the-art (SOTA) models on several established 2D referring and grounding benchmarks.  It evaluates the model's ability to accurately locate and identify objects within images using natural language descriptions.  The benchmarks assess different aspects of this capability, and the table provides a quantitative comparison of results (e.g., accuracy scores) across these benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 10: 2D Referring & Grounding Benchmark Results. Comparison with SOTA models on 2D referring and grounding benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T11.27.27">
<tr class="ltx_tr" id="A4.T11.27.27.28">
<td class="ltx_td ltx_border_tt" id="A4.T11.27.27.28.1"></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T11.27.27.28.2" rowspan="4"><span class="ltx_text ltx_font_bold" id="A4.T11.27.27.28.2.1" style="font-size:144%;">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A4.T11.27.27.28.3" rowspan="4"><span class="ltx_text ltx_font_bold" id="A4.T11.27.27.28.3.1" style="font-size:144%;">Eval Inputs</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="A4.T11.27.27.28.4" rowspan="2"><span class="ltx_text" id="A4.T11.27.27.28.4.1" style="font-size:144%;">Binary</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="A4.T11.27.27.28.5" rowspan="2"><span class="ltx_text" id="A4.T11.27.27.28.5.1" style="font-size:144%;">Count.</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="A4.T11.27.27.28.6" rowspan="2"><span class="ltx_text" id="A4.T11.27.27.28.6.1" style="font-size:144%;">Multi-c.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A4.T11.27.27.28.7"><span class="ltx_text" id="A4.T11.27.27.28.7.1" style="font-size:144%;">Regression (Metric Estimation)</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="A4.T11.27.27.28.8" rowspan="4"><span class="ltx_text ltx_font_bold" id="A4.T11.27.27.28.8.1" style="font-size:144%;">Average</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.27.27.29">
<td class="ltx_td" id="A4.T11.27.27.29.1"></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.27.27.29.2"><span class="ltx_text" id="A4.T11.27.27.29.2.1" style="font-size:144%;">Ego-Dist.</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.27.27.29.3"><span class="ltx_text" id="A4.T11.27.27.29.3.1" style="font-size:144%;">Obj.-Dist.</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="A4.T11.27.27.29.4"><span class="ltx_text" id="A4.T11.27.27.29.4.1" style="font-size:144%;">Obj.-Size</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.1">
<td class="ltx_td" id="A4.T11.1.1.1.2"></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.1.1.1.3"><span class="ltx_text" id="A4.T11.1.1.1.3.1" style="font-size:144%;">Acc</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.1.1.1.4"><span class="ltx_text" id="A4.T11.1.1.1.4.1" style="font-size:144%;">Acc</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.1.1.1.5"><span class="ltx_text" id="A4.T11.1.1.1.5.1" style="font-size:144%;">Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A4.T11.1.1.1.1">
<span class="ltx_text" id="A4.T11.1.1.1.1.1" style="font-size:144%;">Acc @ 10% Relative Error (</span><math alttext="\ell_{1}" class="ltx_Math" display="inline" id="A4.T11.1.1.1.1.m1.1"><semantics id="A4.T11.1.1.1.1.m1.1a"><msub id="A4.T11.1.1.1.1.m1.1.1" xref="A4.T11.1.1.1.1.m1.1.1.cmml"><mi id="A4.T11.1.1.1.1.m1.1.1.2" mathsize="144%" mathvariant="normal" xref="A4.T11.1.1.1.1.m1.1.1.2.cmml">ℓ</mi><mn id="A4.T11.1.1.1.1.m1.1.1.3" mathsize="144%" xref="A4.T11.1.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A4.T11.1.1.1.1.m1.1b"><apply id="A4.T11.1.1.1.1.m1.1.1.cmml" xref="A4.T11.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T11.1.1.1.1.m1.1.1.1.cmml" xref="A4.T11.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A4.T11.1.1.1.1.m1.1.1.2.cmml" xref="A4.T11.1.1.1.1.m1.1.1.2">ℓ</ci><cn id="A4.T11.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="A4.T11.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T11.1.1.1.1.m1.1c">\ell_{1}</annotation><annotation encoding="application/x-llamapun" id="A4.T11.1.1.1.1.m1.1d">roman_ℓ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A4.T11.1.1.1.1.2" style="font-size:144%;">)</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T11.27.27.30">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A4.T11.27.27.30.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A4.T11.27.27.30.1.1" style="font-size:144%;">Before<span class="ltx_text ltx_font_medium" id="A4.T11.27.27.30.1.1.1"> Blind Filtering</span></span></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.30.2"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.30.3"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.30.4"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.30.5"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.30.6"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.30.7"></td>
</tr>
<tr class="ltx_tr" id="A4.T11.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.2.2.2.1">
<span class="ltx_text" id="A4.T11.2.2.2.1.1" style="font-size:144%;"></span><svg class="ltx_picture" height="15.77" id="A4.T11.2.2.2.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.2.2.2.1.pic1.1.1.1.1.1" style="font-size:80%;">1</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T11.2.2.2.2">
<span class="ltx_text" id="A4.T11.2.2.2.2.1" style="font-size:144%;">GPT-4 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T11.2.2.2.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a><span class="ltx_text" id="A4.T11.2.2.2.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T11.2.2.2.3"><span class="ltx_text" id="A4.T11.2.2.2.3.1" style="font-size:144%;">Text</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.2.2.2.4"><span class="ltx_text" id="A4.T11.2.2.2.4.1" style="font-size:144%;">57.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.2.2.2.5"><span class="ltx_text" id="A4.T11.2.2.2.5.1" style="font-size:144%;">35.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.2.2.2.6"><span class="ltx_text" id="A4.T11.2.2.2.6.1" style="font-size:144%;">52.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.2.2.2.7"><span class="ltx_text" id="A4.T11.2.2.2.7.1" style="font-size:144%;">8.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.2.2.2.8"><span class="ltx_text" id="A4.T11.2.2.2.8.1" style="font-size:144%;">8.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="A4.T11.2.2.2.9"><span class="ltx_text" id="A4.T11.2.2.2.9.1" style="font-size:144%;">17.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.2.2.2.10"><span class="ltx_text" id="A4.T11.2.2.2.10.1" style="font-size:144%;">30.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.3.3.3">
<td class="ltx_td ltx_align_center" id="A4.T11.3.3.3.1">
<span class="ltx_text" id="A4.T11.3.3.3.1.1" style="font-size:144%;"></span><svg class="ltx_picture" height="15.77" id="A4.T11.3.3.3.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.3.3.3.1.pic1.1.1.1.1.1" style="font-size:80%;">2</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left" id="A4.T11.3.3.3.2">
<span class="ltx_text" id="A4.T11.3.3.3.2.1" style="font-size:144%;">GPT-4V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T11.3.3.3.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a><span class="ltx_text" id="A4.T11.3.3.3.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T11.3.3.3.3"><span class="ltx_text" id="A4.T11.3.3.3.3.1" style="font-size:144%;">Image + Text</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.3.3.3.4"><span class="ltx_text" id="A4.T11.3.3.3.4.1" style="font-size:144%;">61.6</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.3.3.3.5"><span class="ltx_text" id="A4.T11.3.3.3.5.1" style="font-size:144%;">68.1</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.3.3.3.6"><span class="ltx_text" id="A4.T11.3.3.3.6.1" style="font-size:144%;">63.2</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.3.3.3.7"><span class="ltx_text" id="A4.T11.3.3.3.7.1" style="font-size:144%;">6.4</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.3.3.3.8"><span class="ltx_text" id="A4.T11.3.3.3.8.1" style="font-size:144%;">8.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A4.T11.3.3.3.9"><span class="ltx_text" id="A4.T11.3.3.3.9.1" style="font-size:144%;">19.7</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.3.3.3.10"><span class="ltx_text" id="A4.T11.3.3.3.10.1" style="font-size:144%;">37.9</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.6" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="A4.T11.4.4.4.1"><span class="ltx_text" id="A4.T11.4.4.4.1.1" style="font-size:144%;background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="A4.T11.4.4.4.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.4.4.4.1.1.pic1.1.1.1.1.1" style="font-size:56%;">3</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left" id="A4.T11.6.6.6.4"><span class="ltx_text" id="A4.T11.6.6.6.4.1" style="font-size:144%;background-color:#F8FCF4;">Improvement from using vision</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T11.6.6.6.3"><span class="ltx_text" id="A4.T11.6.6.6.3.2" style="font-size:144%;background-color:#F8FCF4;">=  <svg class="ltx_picture" height="15.77" id="A4.T11.5.5.5.2.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.5.5.5.2.1.pic1.1.1.1.1.1" style="font-size:56%;">2</span></foreignobject></g></g></svg> –  <svg class="ltx_picture" height="15.77" id="A4.T11.6.6.6.3.2.pic2" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.6.6.6.3.2.pic2.1.1.1.1.1" style="font-size:56%;">1</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.6.6.6.5"><span class="ltx_text" id="A4.T11.6.6.6.5.1" style="font-size:144%;background-color:#F8FCF4;">+3.7</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.6.6.6.6"><span class="ltx_text" id="A4.T11.6.6.6.6.1" style="font-size:144%;background-color:#F8FCF4;">+33.0</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.6.6.6.7"><span class="ltx_text" id="A4.T11.6.6.6.7.1" style="font-size:144%;background-color:#F8FCF4;">+10.5</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.6.6.6.8"><span class="ltx_text" id="A4.T11.6.6.6.8.1" style="font-size:144%;background-color:#F8FCF4;">-2.5</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.6.6.6.9"><span class="ltx_text" id="A4.T11.6.6.6.9.1" style="font-size:144%;background-color:#F8FCF4;">+0.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A4.T11.6.6.6.10"><span class="ltx_text" id="A4.T11.6.6.6.10.1" style="font-size:144%;background-color:#F8FCF4;">+2.7</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.6.6.6.11"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.6.11.1" style="font-size:144%;background-color:#F8FCF4;">+7.9</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.7.7.7.1">
<span class="ltx_text" id="A4.T11.7.7.7.1.1" style="font-size:144%;"></span><svg class="ltx_picture" height="15.77" id="A4.T11.7.7.7.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.7.7.7.1.pic1.1.1.1.1.1" style="font-size:80%;">4</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T11.7.7.7.2"><span class="ltx_text" id="A4.T11.7.7.7.2.1" style="font-size:144%;">MM-Spatial-3B (Specialist)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T11.7.7.7.3"><span class="ltx_text" id="A4.T11.7.7.7.3.1" style="font-size:144%;">Text</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.7.7.7.4"><span class="ltx_text" id="A4.T11.7.7.7.4.1" style="font-size:144%;">69.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.7.7.7.5"><span class="ltx_text" id="A4.T11.7.7.7.5.1" style="font-size:144%;">69.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.7.7.7.6"><span class="ltx_text" id="A4.T11.7.7.7.6.1" style="font-size:144%;">77.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.7.7.7.7"><span class="ltx_text" id="A4.T11.7.7.7.7.1" style="font-size:144%;">12.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.7.7.7.8"><span class="ltx_text" id="A4.T11.7.7.7.8.1" style="font-size:144%;">11.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="A4.T11.7.7.7.9"><span class="ltx_text" id="A4.T11.7.7.7.9.1" style="font-size:144%;">25.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.7.7.7.10"><span class="ltx_text" id="A4.T11.7.7.7.10.1" style="font-size:144%;">44.3</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.8.8.8">
<td class="ltx_td ltx_align_center" id="A4.T11.8.8.8.1">
<span class="ltx_text" id="A4.T11.8.8.8.1.1" style="font-size:144%;"></span><svg class="ltx_picture" height="15.77" id="A4.T11.8.8.8.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.8.8.8.1.pic1.1.1.1.1.1" style="font-size:80%;">5</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left" id="A4.T11.8.8.8.2"><span class="ltx_text" id="A4.T11.8.8.8.2.1" style="font-size:144%;">MM-Spatial-3B (Specialist)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T11.8.8.8.3"><span class="ltx_text" id="A4.T11.8.8.8.3.1" style="font-size:144%;">Image + Text</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.8.8.8.4"><span class="ltx_text" id="A4.T11.8.8.8.4.1" style="font-size:144%;">83.8</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.8.8.8.5"><span class="ltx_text" id="A4.T11.8.8.8.5.1" style="font-size:144%;">76.9</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.8.8.8.6"><span class="ltx_text" id="A4.T11.8.8.8.6.1" style="font-size:144%;">84.2</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.8.8.8.7"><span class="ltx_text" id="A4.T11.8.8.8.7.1" style="font-size:144%;">46.9</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.8.8.8.8"><span class="ltx_text" id="A4.T11.8.8.8.8.1" style="font-size:144%;">25.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A4.T11.8.8.8.9"><span class="ltx_text" id="A4.T11.8.8.8.9.1" style="font-size:144%;">29.5</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.8.8.8.10"><span class="ltx_text" id="A4.T11.8.8.8.10.1" style="font-size:144%;">57.8</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.11.11.11" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="A4.T11.9.9.9.1"><span class="ltx_text" id="A4.T11.9.9.9.1.1" style="font-size:144%;background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="A4.T11.9.9.9.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.9.9.9.1.1.pic1.1.1.1.1.1" style="font-size:56%;">6</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left" id="A4.T11.11.11.11.4"><span class="ltx_text" id="A4.T11.11.11.11.4.1" style="font-size:144%;background-color:#F8FCF4;">Improvement from using vision</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T11.11.11.11.3"><span class="ltx_text" id="A4.T11.11.11.11.3.2" style="font-size:144%;background-color:#F8FCF4;">=  <svg class="ltx_picture" height="15.77" id="A4.T11.10.10.10.2.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.10.10.10.2.1.pic1.1.1.1.1.1" style="font-size:56%;">5</span></foreignobject></g></g></svg> -  <svg class="ltx_picture" height="15.77" id="A4.T11.11.11.11.3.2.pic2" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.11.11.11.3.2.pic2.1.1.1.1.1" style="font-size:56%;">4</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.11.11.11.5"><span class="ltx_text" id="A4.T11.11.11.11.5.1" style="font-size:144%;background-color:#F8FCF4;">+14.5</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.11.11.11.6"><span class="ltx_text" id="A4.T11.11.11.11.6.1" style="font-size:144%;background-color:#F8FCF4;">+7.4</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.11.11.11.7"><span class="ltx_text" id="A4.T11.11.11.11.7.1" style="font-size:144%;background-color:#F8FCF4;">+6.6</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.11.11.11.8"><span class="ltx_text" id="A4.T11.11.11.11.8.1" style="font-size:144%;background-color:#F8FCF4;">+34.0</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.11.11.11.9"><span class="ltx_text" id="A4.T11.11.11.11.9.1" style="font-size:144%;background-color:#F8FCF4;">+14.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A4.T11.11.11.11.10"><span class="ltx_text" id="A4.T11.11.11.11.10.1" style="font-size:144%;background-color:#F8FCF4;">+4.3</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.11.11.11.11"><span class="ltx_text ltx_font_bold" id="A4.T11.11.11.11.11.1" style="font-size:144%;background-color:#F8FCF4;">+13.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.27.27.31">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A4.T11.27.27.31.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A4.T11.27.27.31.1.1" style="font-size:144%;">After<span class="ltx_text ltx_font_medium" id="A4.T11.27.27.31.1.1.1"> Blind Filtering</span></span></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.31.2"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.31.3"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.31.4"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.31.5"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.31.6"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.31.7"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.31.8"></td>
</tr>
<tr class="ltx_tr" id="A4.T11.12.12.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.12.12.12.1">
<span class="ltx_text" id="A4.T11.12.12.12.1.1" style="font-size:144%;"></span><svg class="ltx_picture" height="15.77" id="A4.T11.12.12.12.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.12.12.12.1.pic1.1.1.1.1.1" style="font-size:80%;">7</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T11.12.12.12.2">
<span class="ltx_text" id="A4.T11.12.12.12.2.1" style="font-size:144%;">GPT-4 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T11.12.12.12.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a><span class="ltx_text" id="A4.T11.12.12.12.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T11.12.12.12.3"><span class="ltx_text" id="A4.T11.12.12.12.3.1" style="font-size:144%;">Text</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.12.12.12.4"><span class="ltx_text" id="A4.T11.12.12.12.4.1" style="font-size:144%;">9.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.12.12.12.5"><span class="ltx_text" id="A4.T11.12.12.12.5.1" style="font-size:144%;">8.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.12.12.12.6"><span class="ltx_text" id="A4.T11.12.12.12.6.1" style="font-size:144%;">9.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.12.12.12.7"><span class="ltx_text" id="A4.T11.12.12.12.7.1" style="font-size:144%;">6.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.12.12.12.8"><span class="ltx_text" id="A4.T11.12.12.12.8.1" style="font-size:144%;">6.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="A4.T11.12.12.12.9"><span class="ltx_text" id="A4.T11.12.12.12.9.1" style="font-size:144%;">5.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.12.12.12.10"><span class="ltx_text" id="A4.T11.12.12.12.10.1" style="font-size:144%;">7.7</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.13.13.13">
<td class="ltx_td ltx_align_center" id="A4.T11.13.13.13.1">
<span class="ltx_text" id="A4.T11.13.13.13.1.1" style="font-size:144%;"></span><svg class="ltx_picture" height="15.77" id="A4.T11.13.13.13.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.13.13.13.1.pic1.1.1.1.1.1" style="font-size:80%;">8</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left" id="A4.T11.13.13.13.2">
<span class="ltx_text" id="A4.T11.13.13.13.2.1" style="font-size:144%;">GPT-4V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T11.13.13.13.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.13111v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a><span class="ltx_text" id="A4.T11.13.13.13.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T11.13.13.13.3"><span class="ltx_text" id="A4.T11.13.13.13.3.1" style="font-size:144%;">Image + Text</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.13.13.13.4"><span class="ltx_text" id="A4.T11.13.13.13.4.1" style="font-size:144%;">39.2</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.13.13.13.5"><span class="ltx_text" id="A4.T11.13.13.13.5.1" style="font-size:144%;">63.3</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.13.13.13.6"><span class="ltx_text" id="A4.T11.13.13.13.6.1" style="font-size:144%;">32.9</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.13.13.13.7"><span class="ltx_text" id="A4.T11.13.13.13.7.1" style="font-size:144%;">11.4</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.13.13.13.8"><span class="ltx_text" id="A4.T11.13.13.13.8.1" style="font-size:144%;">9.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A4.T11.13.13.13.9"><span class="ltx_text" id="A4.T11.13.13.13.9.1" style="font-size:144%;">10.1</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.13.13.13.10"><span class="ltx_text" id="A4.T11.13.13.13.10.1" style="font-size:144%;">27.7</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.16.16.16" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="A4.T11.14.14.14.1"><span class="ltx_text" id="A4.T11.14.14.14.1.1" style="font-size:144%;background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="A4.T11.14.14.14.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.14.14.14.1.1.pic1.1.1.1.1.1" style="font-size:56%;">9</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left" id="A4.T11.16.16.16.4"><span class="ltx_text" id="A4.T11.16.16.16.4.1" style="font-size:144%;background-color:#F8FCF4;">Improvement from using vision</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T11.16.16.16.3"><span class="ltx_text" id="A4.T11.16.16.16.3.2" style="font-size:144%;background-color:#F8FCF4;">=  <svg class="ltx_picture" height="15.77" id="A4.T11.15.15.15.2.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.15.15.15.2.1.pic1.1.1.1.1.1" style="font-size:56%;">8</span></foreignobject></g></g></svg> –  <svg class="ltx_picture" height="15.77" id="A4.T11.16.16.16.3.2.pic2" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.16.16.16.3.2.pic2.1.1.1.1.1" style="font-size:56%;">7</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.16.16.16.5"><span class="ltx_text" id="A4.T11.16.16.16.5.1" style="font-size:144%;background-color:#F8FCF4;">+29.6</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.16.16.16.6"><span class="ltx_text" id="A4.T11.16.16.16.6.1" style="font-size:144%;background-color:#F8FCF4;">+54.8</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.16.16.16.7"><span class="ltx_text" id="A4.T11.16.16.16.7.1" style="font-size:144%;background-color:#F8FCF4;">+23.3</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.16.16.16.8"><span class="ltx_text" id="A4.T11.16.16.16.8.1" style="font-size:144%;background-color:#F8FCF4;">+5.2</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.16.16.16.9"><span class="ltx_text" id="A4.T11.16.16.16.9.1" style="font-size:144%;background-color:#F8FCF4;">+3.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A4.T11.16.16.16.10"><span class="ltx_text" id="A4.T11.16.16.16.10.1" style="font-size:144%;background-color:#F8FCF4;">+4.3</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.16.16.16.11"><span class="ltx_text ltx_font_bold" id="A4.T11.16.16.16.11.1" style="font-size:144%;background-color:#F8FCF4;">+20.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.17.17.17">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.17.17.17.1">
<span class="ltx_text" id="A4.T11.17.17.17.1.1" style="font-size:144%;"></span><svg class="ltx_picture" height="15.77" id="A4.T11.17.17.17.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="A4.T11.17.17.17.1.pic1.1.1.1.1.1" style="font-size:80%;">10</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T11.17.17.17.2"><span class="ltx_text" id="A4.T11.17.17.17.2.1" style="font-size:144%;">MM-Spatial-3B (Specialist)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T11.17.17.17.3"><span class="ltx_text" id="A4.T11.17.17.17.3.1" style="font-size:144%;">Text</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.17.17.17.4"><span class="ltx_text" id="A4.T11.17.17.17.4.1" style="font-size:144%;">34.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.17.17.17.5"><span class="ltx_text" id="A4.T11.17.17.17.5.1" style="font-size:144%;">60.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.17.17.17.6"><span class="ltx_text" id="A4.T11.17.17.17.6.1" style="font-size:144%;">60.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.17.17.17.7"><span class="ltx_text" id="A4.T11.17.17.17.7.1" style="font-size:144%;">10.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.17.17.17.8"><span class="ltx_text" id="A4.T11.17.17.17.8.1" style="font-size:144%;">8.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="A4.T11.17.17.17.9"><span class="ltx_text" id="A4.T11.17.17.17.9.1" style="font-size:144%;">17.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.17.17.17.10"><span class="ltx_text" id="A4.T11.17.17.17.10.1" style="font-size:144%;">32.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.18.18.18">
<td class="ltx_td ltx_align_center" id="A4.T11.18.18.18.1">
<span class="ltx_text" id="A4.T11.18.18.18.1.1" style="font-size:144%;"></span><svg class="ltx_picture" height="15.77" id="A4.T11.18.18.18.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="A4.T11.18.18.18.1.pic1.1.1.1.1.1" style="font-size:80%;">11</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_left" id="A4.T11.18.18.18.2"><span class="ltx_text" id="A4.T11.18.18.18.2.1" style="font-size:144%;">MM-Spatial-3B (Specialist)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T11.18.18.18.3"><span class="ltx_text" id="A4.T11.18.18.18.3.1" style="font-size:144%;">Image + Text</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.18.18.18.4"><span class="ltx_text" id="A4.T11.18.18.18.4.1" style="font-size:144%;">69.6</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.18.18.18.5"><span class="ltx_text" id="A4.T11.18.18.18.5.1" style="font-size:144%;">73.3</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.18.18.18.6"><span class="ltx_text" id="A4.T11.18.18.18.6.1" style="font-size:144%;">77.4</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.18.18.18.7"><span class="ltx_text" id="A4.T11.18.18.18.7.1" style="font-size:144%;">47.3</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.18.18.18.8"><span class="ltx_text" id="A4.T11.18.18.18.8.1" style="font-size:144%;">24.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A4.T11.18.18.18.9"><span class="ltx_text" id="A4.T11.18.18.18.9.1" style="font-size:144%;">24.3</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.18.18.18.10"><span class="ltx_text" id="A4.T11.18.18.18.10.1" style="font-size:144%;">52.7</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.21.21.21" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center" id="A4.T11.19.19.19.1"><span class="ltx_text" id="A4.T11.19.19.19.1.1" style="font-size:144%;background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="A4.T11.19.19.19.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="A4.T11.19.19.19.1.1.pic1.1.1.1.1.1" style="font-size:56%;">12</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left" id="A4.T11.21.21.21.4"><span class="ltx_text" id="A4.T11.21.21.21.4.1" style="font-size:144%;background-color:#F8FCF4;">Improvement from using vision</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T11.21.21.21.3"><span class="ltx_text" id="A4.T11.21.21.21.3.2" style="font-size:144%;background-color:#F8FCF4;">=  <svg class="ltx_picture" height="15.77" id="A4.T11.20.20.20.2.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="A4.T11.20.20.20.2.1.pic1.1.1.1.1.1" style="font-size:56%;">11</span></foreignobject></g></g></svg> –  <svg class="ltx_picture" height="15.77" id="A4.T11.21.21.21.3.2.pic2" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="A4.T11.21.21.21.3.2.pic2.1.1.1.1.1" style="font-size:56%;">10</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.21.21.21.5"><span class="ltx_text" id="A4.T11.21.21.21.5.1" style="font-size:144%;background-color:#F8FCF4;">+35.3</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.21.21.21.6"><span class="ltx_text" id="A4.T11.21.21.21.6.1" style="font-size:144%;background-color:#F8FCF4;">+12.5</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.21.21.21.7"><span class="ltx_text" id="A4.T11.21.21.21.7.1" style="font-size:144%;background-color:#F8FCF4;">+16.7</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.21.21.21.8"><span class="ltx_text" id="A4.T11.21.21.21.8.1" style="font-size:144%;background-color:#F8FCF4;">+37.2</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.21.21.21.9"><span class="ltx_text" id="A4.T11.21.21.21.9.1" style="font-size:144%;background-color:#F8FCF4;">+16.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A4.T11.21.21.21.10"><span class="ltx_text" id="A4.T11.21.21.21.10.1" style="font-size:144%;background-color:#F8FCF4;">+6.4</span></td>
<td class="ltx_td ltx_align_right" id="A4.T11.21.21.21.11"><span class="ltx_text ltx_font_bold" id="A4.T11.21.21.21.11.1" style="font-size:144%;background-color:#F8FCF4;">+20.7</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.27.27.32">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A4.T11.27.27.32.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A4.T11.27.27.32.1.1" style="font-size:144%;">Increase in Vision Improvement<span class="ltx_text ltx_font_medium" id="A4.T11.27.27.32.1.1.1">: Before vs. After Blind Filtering</span></span></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.32.2"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.32.3"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.32.4"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.32.5"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.32.6"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.32.7"></td>
<td class="ltx_td ltx_border_t" id="A4.T11.27.27.32.8"></td>
</tr>
<tr class="ltx_tr" id="A4.T11.24.24.24" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.22.22.22.1"><span class="ltx_text" id="A4.T11.22.22.22.1.1" style="font-size:144%;background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="A4.T11.22.22.22.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="A4.T11.22.22.22.1.1.pic1.1.1.1.1.1" style="font-size:56%;">13</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T11.24.24.24.4"><span class="ltx_text" id="A4.T11.24.24.24.4.1" style="font-size:144%;background-color:#F8FCF4;">GPT-4/V</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T11.24.24.24.3"><span class="ltx_text" id="A4.T11.24.24.24.3.2" style="font-size:144%;background-color:#F8FCF4;">=  <svg class="ltx_picture" height="15.77" id="A4.T11.23.23.23.2.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.23.23.23.2.1.pic1.1.1.1.1.1" style="font-size:56%;">9</span></foreignobject></g></g></svg> –  <svg class="ltx_picture" height="15.77" id="A4.T11.24.24.24.3.2.pic2" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.24.24.24.3.2.pic2.1.1.1.1.1" style="font-size:56%;">3</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.24.24.24.5"><span class="ltx_text" id="A4.T11.24.24.24.5.1" style="font-size:144%;background-color:#F8FCF4;">+25.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.24.24.24.6"><span class="ltx_text" id="A4.T11.24.24.24.6.1" style="font-size:144%;background-color:#F8FCF4;">+21.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.24.24.24.7"><span class="ltx_text" id="A4.T11.24.24.24.7.1" style="font-size:144%;background-color:#F8FCF4;">+12.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.24.24.24.8"><span class="ltx_text" id="A4.T11.24.24.24.8.1" style="font-size:144%;background-color:#F8FCF4;">+7.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.24.24.24.9"><span class="ltx_text" id="A4.T11.24.24.24.9.1" style="font-size:144%;background-color:#F8FCF4;">+2.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="A4.T11.24.24.24.10"><span class="ltx_text" id="A4.T11.24.24.24.10.1" style="font-size:144%;background-color:#F8FCF4;">+1.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T11.24.24.24.11"><span class="ltx_text ltx_font_bold" id="A4.T11.24.24.24.11.1" style="font-size:144%;background-color:#F8FCF4;">+12.1</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.27.27.27" style="background-color:#F8FCF4;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.25.25.25.1"><span class="ltx_text" id="A4.T11.25.25.25.1.1" style="font-size:144%;background-color:#F8FCF4;"><svg class="ltx_picture" height="15.77" id="A4.T11.25.25.25.1.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="A4.T11.25.25.25.1.1.pic1.1.1.1.1.1" style="font-size:56%;">14</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T11.27.27.27.4"><span class="ltx_text" id="A4.T11.27.27.27.4.1" style="font-size:144%;background-color:#F8FCF4;">MM-Spatial-3B (Specialist)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A4.T11.27.27.27.3"><span class="ltx_text" id="A4.T11.27.27.27.3.2" style="font-size:144%;background-color:#F8FCF4;">=  <svg class="ltx_picture" height="15.77" id="A4.T11.26.26.26.2.1.pic1" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -5.53 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="11.07"><span class="ltx_text" id="A4.T11.26.26.26.2.1.pic1.1.1.1.1.1" style="font-size:56%;">12</span></foreignobject></g></g></svg> –  <svg class="ltx_picture" height="15.77" id="A4.T11.27.27.27.3.2.pic2" overflow="visible" version="1.1" width="15.77"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,15.77) matrix(1 0 0 -1 0 0) translate(7.89,0) translate(0,7.89)"><path d="M 7.61 0 C 7.61 4.2 4.2 7.61 0 7.61 C -4.2 7.61 -7.61 4.2 -7.61 0 C -7.61 -4.2 -4.2 -7.61 0 -7.61 C 4.2 -7.61 7.61 -4.2 7.61 0 Z M 0 0" style="fill:none"></path><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 -2.77 -3.57)"><foreignobject height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="5.53"><span class="ltx_text" id="A4.T11.27.27.27.3.2.pic2.1.1.1.1.1" style="font-size:56%;">6</span></foreignobject></g></g></svg></span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A4.T11.27.27.27.5"><span class="ltx_text" id="A4.T11.27.27.27.5.1" style="font-size:144%;background-color:#F8FCF4;">+20.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A4.T11.27.27.27.6"><span class="ltx_text" id="A4.T11.27.27.27.6.1" style="font-size:144%;background-color:#F8FCF4;">+5.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A4.T11.27.27.27.7"><span class="ltx_text" id="A4.T11.27.27.27.7.1" style="font-size:144%;background-color:#F8FCF4;">+10.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A4.T11.27.27.27.8"><span class="ltx_text" id="A4.T11.27.27.27.8.1" style="font-size:144%;background-color:#F8FCF4;">+3.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A4.T11.27.27.27.9"><span class="ltx_text" id="A4.T11.27.27.27.9.1" style="font-size:144%;background-color:#F8FCF4;">+1.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="A4.T11.27.27.27.10"><span class="ltx_text" id="A4.T11.27.27.27.10.1" style="font-size:144%;background-color:#F8FCF4;">+2.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A4.T11.27.27.27.11"><span class="ltx_text ltx_font_bold" id="A4.T11.27.27.27.11.1" style="font-size:144%;background-color:#F8FCF4;">+7.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 11 analyzes the impact of a blind filtering technique on the CA-VQA benchmark.  This technique removes questions easily solvable without visual input, thus increasing the benchmark's reliance on visual reasoning. The table compares the performance of GPT-4, GPT-4V, and MM-Spatial models before and after applying the filter, both with and without visual input.  The results show that after filtering, blind models (no visual input) perform significantly worse, while the improvement in performance gained by using visual input increases substantially for all models. This demonstrates that the filtering effectively reduces bias from language priors and enhances the benchmark's ability to test true visual understanding.
> <details>
> <summary>read the caption</summary>
> Table 11: CA-VQA Blind Filtering Analysis. We study how the improvement from using vision (i.e., comparing a vision-evaluated model vs. a blind-evaluated model) changes after applying the blind filtering strategy outlined in Sec. 3.1, which follows [25]. Our results confirm that after applying our filtering strategy, 1) blind models perform substantially worse, and 2) vision improvements (i.e., the delta between vision and blind models) increase substantially, for both GPT-4/V and MM-Spatial. This highlights the effectiveness of our blind filtering procedure in ensuring that our CA-VQA benchmark becomes more reliant on vision input (i.e., less susceptible to a strong language prior).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.13111/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13111/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}