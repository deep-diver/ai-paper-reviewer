---
title: "SegAgent: Exploring Pixel Understanding Capabilities in MLLMs by Imitating Human Annotator Trajectories"
summary: "SegAgent: Improves MLLMs' pixel understanding by mimicking human annotation, enabling mask refinement without altering output space."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Zhejiang University, China",]
showSummary: true
date: 2025-03-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.08625 {{< /keyword >}}
{{< keyword icon="writer" >}} Muzhi Zhu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.08625" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.08625" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.08625/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Multimodal Large Language Models (MLLMs)** struggle with pixel-level comprehension, limiting their applicability despite advances in image understanding. Current evaluation methods are too coarse for assessing fine-grained understanding, while existing segmentation methods disrupt the MLLM's text output space by relying on implicit tokens or external pixel decoders. This paper aims to address these limitations.



To solve this, the paper introduces the **Human-Like Mask Annotation Task (HLMAT)**, where MLLMs mimic human annotators using interactive segmentation tools, modeling the segmentation task as a multi-step Markov Decision Process. It introduces **SegAgent**, a model fine-tuned on human-like annotation trajectories, achieving SOTA performance and supporting tasks like mask refinement and annotation filtering. Techniques like StaR and PRM guided tree search further enhance the model.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} HLMAT: A new task for evaluating fine-grained pixel understanding in MLLMs by modeling human annotation trajectories. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SegAgent: A fine-tuned MLLM that achieves competitive segmentation performance and supports mask refinement and annotation filtering. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} StaR+ and PRM-guided tree search: Effective techniques for enhancing model robustness in complex segmentation tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work is important as it introduces a new method for evaluating and enhancing pixel-level understanding in MLLMs, a crucial step towards more capable and versatile AI systems. The SegAgent framework and HLMAT task open new avenues for research in visual reasoning and decision-making for MLLMs, with potential applications.

------
#### Visual Insights



![](https://arxiv.org/html/2503.08625/extracted/6271622/framework.png)

> 🔼 SegAgent is a model that imitates human annotators using interactive segmentation tools.  This figure illustrates the SegAgent framework.  An image and a text prompt are input into the MLLM (multimodal large language model), which then iteratively generates text-based coordinates representing clicks (positive or negative) for a segmentation tool. The segmentation tool updates a mask based on the clicks.  The process continues until a satisfactory mask is produced. The lower part of the figure shows a sequence of iterations, with each step visualizing both the current action (click coordinates) and the resulting mask. The goal is to evaluate the MLLM's pixel-level comprehension by assessing its ability to generate high-quality masks through this iterative process.
> <details>
> <summary>read the caption</summary>
> Figure 1: The overall framework of SegAgent. The image below shows a complete set of trajectories. We visualize current action atsubscript𝑎𝑡a_{t}italic_a start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT and the resulting mask Mt+1subscript𝑀𝑡1M_{t+1}italic_M start_POSTSUBSCRIPT italic_t + 1 end_POSTSUBSCRIPT in one image.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T1.4.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.1.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.1.1.2.1">Venue</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.1.1.3.1">refCOCO</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.1.1.4.1">refCOCO+</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.4.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.1.1.5.1">refCOCOg</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.2.1">val</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.2.2">testA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.2.3">testB</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.2.4">val</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.2.5">testA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.2.6">testB</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.2.7">val(U)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.2.8">test(U)</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.1.3.3.1"><em class="ltx_emph ltx_font_italic" id="S4.T1.4.1.3.3.1.1">traditional methods</em></th>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.3.3.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.3.3.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.3.3.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.3.3.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.3.3.6"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.3.3.7"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.3.3.8"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.3.3.9"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.3.3.10"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.1.4.4.1">MAttNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08625v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.4.2">CVPR’18</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.4.3">56.51</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.4.4">62.37</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.4.5">51.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.4.6">46.67</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.4.7">52.39</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.4.8">40.08</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.4.9">47.64</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.4.10">48.61</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.1.5.5.1">LAVT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08625v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.5.2">CVPR’22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.5.3">72.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.5.4">75.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.5.5">68.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.5.6">62.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.5.7">68.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.5.8">55.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.5.9">61.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.5.10">62.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.1.6.6.1">CRIS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08625v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.6.2">CVPR’22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.6.3">70.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.6.4">73.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.6.5">66.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.6.6">65.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.6.7">68.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.6.8">53.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.6.9">59.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.6.10">60.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.1.7.7.1">PolyFormer-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08625v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.7.7.2">CVPR’23</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.7.7.3">76.94</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.7.7.4">78.49</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.7.7.5">74.83</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.7.7.6">72.15</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.7.7.7">75.71</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.7.7.8">66.73</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.7.7.9">71.15</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.7.7.10">71.17</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.1.8.8.1">X-Decoder <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08625v1#bib.bib81" title=""><span class="ltx_text" style="font-size:90%;">81</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.8.8.2">CVPR’23</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.8.8.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.8.8.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.8.8.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.8.8.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.8.8.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.8.8.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.8.8.9">64.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.8.8.10">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.1.9.9.1">SEEM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08625v1#bib.bib82" title=""><span class="ltx_text" style="font-size:90%;">82</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.9.9.2">NeurIPS’23</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.9.9.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.9.9.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.9.9.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.9.9.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.9.9.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.9.9.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.9.9.9">65.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.9.9.10">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.1.10.10.1"><em class="ltx_emph ltx_font_italic" id="S4.T1.4.1.10.10.1.1">LLM based methods</em></th>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.10.10.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.10.10.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.10.10.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.10.10.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.10.10.6"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.10.10.7"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.10.10.8"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.10.10.9"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.10.10.10"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.1.11.11.1"><span class="ltx_text" id="S4.T1.4.1.11.11.1.1" style="color:#000000;">LISA(SAM) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08625v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.11.11.2">CVPR’24</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.11.11.3">74.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.11.11.4">79.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.11.11.5">72.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.11.11.6">65.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.11.11.7">70.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.11.11.8">58.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.11.11.9">67.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.11.11.10">70.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.1.12.12.1"><span class="ltx_text" id="S4.T1.4.1.12.12.1.1" style="color:#000000;">PixelLM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08625v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.12.12.2">CVPR’24</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.12.12.3">73.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.12.12.4">76.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.12.12.5">68.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.12.12.6">66.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.12.12.7">71.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.12.12.8">58.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.12.12.9">69.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.12.12.10">70.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.1.13.13.1"><span class="ltx_text" id="S4.T1.4.1.13.13.1.1" style="color:#000000;">PerceptionGPT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08625v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.13.13.2">CVPR’24</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.13.13.3">75.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.13.13.4">78.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.13.13.5">71.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.13.13.6">68.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.13.13.7">73.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.13.13.8">61.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.13.13.9">70.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.13.13.10">71.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.1.14.14.1"><span class="ltx_text" id="S4.T1.4.1.14.14.1.1" style="color:#000000;">GSVA(SAM) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08625v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.14.14.2">CVPR’24</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.14.14.3">77.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.14.14.4">78.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.14.14.5">73.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.14.14.6">65.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.14.14.7">69.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.14.14.8">59.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.14.14.9">72.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.14.14.10">73.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.1.15.15.1">SAM4MLLM(Qwen) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08625v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.15.15.2">ECCV’24</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.15.15.3">77.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.15.15.4">80.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.15.15.5">72.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.15.15.6">71.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.15.15.7">76.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.15.15.8">64.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.15.15.9">74.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.15.15.10">75.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.1.16.16.1">Qwen box <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08625v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite> + SAM</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.16.16.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.16.16.3">71.79</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.16.16.4">75.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.16.16.5">67.29</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.16.16.6">65.39</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.16.16.7">71.62</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.16.16.8">59.12</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.16.16.9">66.93</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.16.16.10">68.94</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.1.17.17.1"><em class="ltx_emph ltx_font_italic" id="S4.T1.4.1.17.17.1.1">Our methods</em></th>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.17.17.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.17.17.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.17.17.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.17.17.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.17.17.6"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.17.17.7"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.17.17.8"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.17.17.9"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.4.1.17.17.10"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.1.18.18.1">SegAgent-LLaVA+SAM</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.1.18.18.2" rowspan="4"><span class="ltx_text" id="S4.T1.4.1.18.18.2.1">this work</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.18.18.3">79.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.18.18.4">81.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.18.18.5">75.72</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.18.18.6">71.53</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.18.18.7">76.68</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.18.18.8">65.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.18.18.9">74.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.18.18.10">74.90</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.1.19.19.1">SegAgent-Qwen+SAM</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.19.19.2">78.01</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.19.19.3">80.34</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.19.19.4">74.98</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.19.19.5">70.86</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.19.19.6">75.52</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.19.19.7">65.75</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.19.19.8">74.49</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.19.19.9">74.62</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.1.20.20.1">SegAgent-LLaVA+SClick</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.20.20.2">77.81</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.20.20.3">80.03</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.20.20.4">74.12</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.20.20.5">66.73</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.20.20.6">71.16</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.20.20.7">59.89</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.20.20.8">70.45</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.20.20.9">71.25</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.4.1.21.21.1">SegAgent-Qwen+SClick</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.1.21.21.2">79.69</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.1.21.21.3">81.35</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.1.21.21.4">76.57</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.1.21.21.5">72.49</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.1.21.21.6">75.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.1.21.21.7">66.89</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.1.21.21.8">75.11</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.1.21.21.9">75.20</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different methods' performance on the Referring Expression Segmentation (RES) dataset.  It specifically contrasts traditional computer vision methods with more recent approaches leveraging Large Language Models (LLMs).  The table highlights the performance (measured likely by Intersection over Union or IoU) of each method across three subsets of the RES dataset: refCOCO, refCOCO+, and refCOCOg.  The table also distinguishes whether a method uses the Segment Anything Model (SAM) or the SimpleClick interactive segmentation model, showcasing the impact of these different tools on overall performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of methods on RES dataset. We indicate which models use SAM. “SClick” denotes the use of SimpleClick as the interactive segmentation model.
> </details>





### In-depth insights


#### HLMAT: A New Task
While 'HLMAT: A New Task' isn't directly from the text, it suggests a novel task-centric approach, likely focusing on **Human-Like Mask Annotation**. This highlights a shift towards **more realistic simulation of human annotators' behaviors** in image segmentation. The task likely demands **fine-grained pixel understanding** from MLLMs. It introduces a **vision-centric, multi-step decision-making process**, moving beyond simple image understanding towards interactive, iterative annotation. This approach allows MLLMs to learn from human-like annotation trajectories using interactive segmentation tools. The core idea would be to mimic the steps a human would take during segmentation, using iterative refinement and feedback. **HLMAT promises a more nuanced and comprehensive method for evaluating and advancing MLLMs' visual reasoning skills**, fostering more accurate and flexible AI systems.

#### SegAgent Details
The paper likely delves into the specifics of the SegAgent model, a system designed to perform image segmentation by imitating human annotators. **Model architecture details** such as the vision encoder and LLM are probably covered, highlighting key components like ConvNeXt-L CLIP or Qwen-VL-Chat. Hyperparameter settings, including learning rates, batch sizes, and training epochs, would be specified to allow for reproducibility. A crucial aspect is the **prompt engineering**, detailing how instructions are formatted for the LLM to guide its segmentation process. Further discussion of the architecture could show details about the VIT structure utilized. The coordinate formats employed would be discussed, and **the rationale behind the specific choices** could be highlighted.

#### Iterative Refinement
**Iterative refinement** is a crucial aspect of many computer vision tasks, as it allows models to progressively improve their predictions by repeatedly refining an initial estimate. In segmentation, this could involve starting with a coarse mask and then iteratively adjusting its boundaries based on local image features and contextual information.  This approach is particularly useful for handling complex shapes and ambiguous regions, where a single-pass prediction might be insufficient. The success of iterative refinement depends on several factors, including the quality of the initial estimate, the effectiveness of the refinement mechanism, and the stopping criterion.  A well-designed iterative refinement strategy can lead to significant improvements in segmentation accuracy and robustness.

#### HRES Dataset
Based on the paper, the **High-quality Referring Expression Segmentation (HRES) dataset** is a novel contribution designed to address the limitations of existing datasets like RefCOCO, which lack the complexity and annotation quality needed for multi-step reasoning in MLLMs. The authors note that RefCOCO's masks often contain noise and don't require extensive iterative refinement. HRES utilizes subsets from **HQSeg-44K**, specifically **DIS5K** and **ThinObject5K**, which offer more detailed and precise annotations of complex objects. DIS5K focuses on high-resolution images with binary segmentation masks, while ThinObject5K targets objects with thin structures like insect legs. This is crucial for **evaluating MLLMs' fine-grained pixel understanding** and ability to refine masks over multiple steps, ultimately enabling more robust and reliable performance in challenging segmentation scenarios. This dataset is key because it enables a focus on visual understanding, and more robust evaluation of MLLMs.

#### Future MLLM Agent
If we envision "Future MLLM Agents," several key directions emerge from this paper's context.  The core idea of enabling **fine-grained pixel understanding** in MLLMs opens up a path toward more capable agents. The approach of **imitating human annotator trajectories** is interesting because it leverages the existing interaction data.  These agents would likely perform complex tasks demanding visual reasoning and precise manipulation. **HLMAT** acts as a way to explore and advance the MLLMs' visual capabilities. The framework allows for a more direct assessment of the MLLMs' ability to process and understand visual information at the pixel level. Additionally, the integration of techniques like **StaR+** and **tree search with PRM** hints at more robust and reliable agents that can overcome noisy or ambiguous environments.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.08625/extracted/6271622/trace.png)

> 🔼 This figure visualizes a generated trajectory from an automated algorithm that simulates human-like mask annotation.  Each image shows the mask at a particular iteration, along with the current action (a positive or negative click) represented by a point on the image.  Iteration 0 begins with an empty mask, and subsequent iterations show how the mask is refined based on the sequential actions. The trajectory generation is based on the ground truth (GT) mask; however, the GT mask contains noise, resulting in the last two actions (Iteration 3,4) being meaningless and not contributing to the overall mask refinement.  The visualization helps illustrate the process of iterative mask creation using simulated human actions.
> <details>
> <summary>read the caption</summary>
> Figure 2: An example of generated trajectory. We visualize current action atsubscript𝑎𝑡a_{t}italic_a start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT and the resulting mask Mt+1subscript𝑀𝑡1M_{t+1}italic_M start_POSTSUBSCRIPT italic_t + 1 end_POSTSUBSCRIPT in one image. Due to the noise from GT Mask, the action for Iteration 3,4 is meaningless
> </details>



![](https://arxiv.org/html/2503.08625/extracted/6271622/noc.png)

> 🔼 The bar chart visualizes the complexity of three datasets: DIS5K, ThinObject5K, and refcoco.  The complexity is measured by the average number of clicks needed to achieve 80% and 85% Intersection over Union (IoU) during interactive image segmentation.  The chart clearly shows that DIS5K and ThinObject5K require significantly more clicks than refcoco, indicating a higher complexity level in the former two datasets. This difference is due to the inherent characteristics of the datasets, such as the presence of more intricate object boundaries and finer-grained details in DIS5K and ThinObject5K compared to refcoco. Therefore, the datasets DIS5K and ThinObject5K are more challenging and appropriate for evaluating the pixel-level understanding capabilities of a model.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of dataset complexity.
> </details>



![](https://arxiv.org/html/2503.08625/extracted/6271622/hres.png)

> 🔼 The bar chart compares the performance of different strategies for image segmentation on the HRES dataset.  The baseline strategy uses a model fine-tuned with supervised fine-tuning (SFT) and a fixed-step greedy decoding method during testing.  The chart then shows performance improvements achieved by incorporating policy improvement methods (StaR+), process reward modeling (PRM), and the addition of tree search.  The improvements are shown for both the DIS and ThinObject subsets of the HRES dataset, illustrating the effectiveness of each method in enhancing segmentation accuracy in complex scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of different strategies on the HRES dataset.
> </details>



![](https://arxiv.org/html/2503.08625/extracted/6271622/tree2.png)

> 🔼 This figure illustrates the process of PRM-guided tree search used in SegAgent for interactive image segmentation.  The model begins with an initial mask and image. At each step, it generates multiple candidate actions (positive or negative clicks). It uses a PRM (Process Reward Model) to predict the reward (measured by IoU) for each action, selecting the action with the highest predicted reward. The chosen action is then input to the interactive segmentation tool to update the mask.  This iterative process repeats until a satisfactory mask is produced or a predetermined number of steps is reached. The visualization shows the progression of the mask at each step and the corresponding predicted rewards.
> <details>
> <summary>read the caption</summary>
> Figure 5: An illustrative example of PRM-guided tree search. The model predicts the reward at each step and selects the action with the highest reward to generate the next mask.
> </details>



![](https://arxiv.org/html/2503.08625/x1.png)

> 🔼 Figure 6 shows a detailed example of the text prompt used to guide the model during the mask refinement process in the interactive segmentation task. The prompt provides clear instructions on how to refine a mask using three actions: adding a positive point (to expand the mask), adding a negative point (to shrink the mask), and generating additional information (optional). The red text section is where user-specific inputs, such as the object description, are included to ensure the model's understanding of the task. This prompt design is crucial for enabling the model to learn the human-like annotation process.
> <details>
> <summary>read the caption</summary>
> Figure 6: The prompt provides detailed instructions for refining a segmentation mask with three possible actions: adding a positive point, adding a negative point. The red part indicates user-specific input, such as object descriptions.
> </details>



![](https://arxiv.org/html/2503.08625/x2.png)

> 🔼 This figure visually compares the quality and complexity of annotations across three datasets: ThinObject5k-TE, DIS5K, and RefCOCO. Each row displays example images from one dataset, with their corresponding segmentation masks overlaid in green.  The differences in mask detail and accuracy highlight how the complexity of the segmentation task varies between datasets. This is important for evaluating the performance of the proposed method, as more complex and accurate datasets better assess the fine-grained pixel-level understanding capabilities of the model.
> <details>
> <summary>read the caption</summary>
> Figure 7: Examples of Images and Annotations from Various Datasets. The figure showcases representative samples from three datasets: ThinObject5k-TE, DIS5K, and RefCOCO. Each row represents a dataset, with images and corresponding annotations highlighting different objects and scenes. The annotations (green overlays) demonstrate the varying levels of detail and complexity across datasets.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T2.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T2.6.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T2.6.1.1.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="A1.T2.6.1.1.1.1" style="font-size:80%;"># Steps</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.6.1.1.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="A1.T2.6.1.1.2.1" style="font-size:80%;">1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.6.1.1.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="A1.T2.6.1.1.3.1" style="font-size:80%;">3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.6.1.1.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="A1.T2.6.1.1.4.1" style="font-size:80%;">5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.6.1.1.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="A1.T2.6.1.1.5.1" style="font-size:80%;">7</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T2.6.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T2.6.2.1.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="A1.T2.6.2.1.1.1" style="font-size:80%;">w/o PRM</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.6.2.1.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="A1.T2.6.2.1.2.1" style="font-size:80%;">71.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.6.2.1.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="A1.T2.6.2.1.3.1" style="font-size:80%;">73.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.6.2.1.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="A1.T2.6.2.1.4.1" style="font-size:80%;">73.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.6.2.1.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="A1.T2.6.2.1.5.1" style="font-size:80%;">68.22</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.6.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T2.6.3.2.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="A1.T2.6.3.2.1.1" style="font-size:80%;">w/ PRM</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.6.3.2.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="A1.T2.6.3.2.2.1" style="font-size:80%;">71.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.6.3.2.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="A1.T2.6.3.2.3.1" style="font-size:80%;">72.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.6.3.2.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="A1.T2.6.3.2.4.1" style="font-size:80%;">75.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.6.3.2.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="A1.T2.6.3.2.5.1" style="font-size:80%;">75.43</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the model's performance with and without the process reward model (PRM) across different numbers of steps in a multi-step segmentation task.  It demonstrates the impact of PRM on mitigating error accumulation in longer sequences.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison under different steps.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A5.T3.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A5.T3.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A5.T3.4.4.4.5"><span class="ltx_text ltx_font_bold" id="A5.T3.4.4.4.5.1" style="font-size:144%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T3.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="A5.T3.1.1.1.1.1" style="font-size:144%;">MAE</span><span class="ltx_text" id="A5.T3.1.1.1.1.2" style="font-size:144%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A5.T3.1.1.1.1.m1.1"><semantics id="A5.T3.1.1.1.1.m1.1a"><mo id="A5.T3.1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="A5.T3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A5.T3.1.1.1.1.m1.1b"><ci id="A5.T3.1.1.1.1.m1.1.1.cmml" xref="A5.T3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A5.T3.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T3.2.2.2.2">
<span class="ltx_text ltx_font_bold" id="A5.T3.2.2.2.2.1" style="font-size:144%;">MSE</span><span class="ltx_text" id="A5.T3.2.2.2.2.2" style="font-size:144%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A5.T3.2.2.2.2.m1.1"><semantics id="A5.T3.2.2.2.2.m1.1a"><mo id="A5.T3.2.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="A5.T3.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A5.T3.2.2.2.2.m1.1b"><ci id="A5.T3.2.2.2.2.m1.1.1.cmml" xref="A5.T3.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T3.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A5.T3.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T3.3.3.3.3">
<span class="ltx_text ltx_font_bold" id="A5.T3.3.3.3.3.1" style="font-size:144%;">Pearson</span><span class="ltx_text" id="A5.T3.3.3.3.3.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A5.T3.3.3.3.3.m1.1"><semantics id="A5.T3.3.3.3.3.m1.1a"><mo id="A5.T3.3.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="A5.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A5.T3.3.3.3.3.m1.1b"><ci id="A5.T3.3.3.3.3.m1.1.1.cmml" xref="A5.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A5.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T3.4.4.4.4">
<span class="ltx_text ltx_font_bold" id="A5.T3.4.4.4.4.1" style="font-size:144%;">Spearman</span><span class="ltx_text" id="A5.T3.4.4.4.4.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A5.T3.4.4.4.4.m1.1"><semantics id="A5.T3.4.4.4.4.m1.1a"><mo id="A5.T3.4.4.4.4.m1.1.1" mathsize="144%" stretchy="false" xref="A5.T3.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A5.T3.4.4.4.4.m1.1b"><ci id="A5.T3.4.4.4.4.m1.1.1.cmml" xref="A5.T3.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T3.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A5.T3.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T3.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A5.T3.4.4.5.1.1"><span class="ltx_text" id="A5.T3.4.4.5.1.1.1" style="font-size:144%;">SegAgent-Qwen</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.4.4.5.1.2"><span class="ltx_text" id="A5.T3.4.4.5.1.2.1" style="font-size:144%;">6.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.4.4.5.1.3"><span class="ltx_text" id="A5.T3.4.4.5.1.3.1" style="font-size:144%;">193.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.4.4.5.1.4"><span class="ltx_text" id="A5.T3.4.4.5.1.4.1" style="font-size:144%;">0.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.4.4.5.1.5"><span class="ltx_text" id="A5.T3.4.4.5.1.5.1" style="font-size:144%;">0.87</span></td>
</tr>
<tr class="ltx_tr" id="A5.T3.4.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A5.T3.4.4.6.2.1"><span class="ltx_text" id="A5.T3.4.4.6.2.1.1" style="font-size:144%;">SegAgent-LLaVA</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T3.4.4.6.2.2"><span class="ltx_text" id="A5.T3.4.4.6.2.2.1" style="font-size:144%;">5.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T3.4.4.6.2.3"><span class="ltx_text" id="A5.T3.4.4.6.2.3.1" style="font-size:144%;">175.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T3.4.4.6.2.4"><span class="ltx_text" id="A5.T3.4.4.6.2.4.1" style="font-size:144%;">0.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T3.4.4.6.2.5"><span class="ltx_text" id="A5.T3.4.4.6.2.5.1" style="font-size:144%;">0.90</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of SegAgent's ability to filter annotations.  It assesses the model's performance on a regression task where it predicts the Intersection over Union (IoU) between a generated mask and the ground truth mask. Lower Mean Absolute Error (MAE) and Mean Squared Error (MSE) scores indicate higher accuracy in predicting the IoU. Conversely, higher Pearson and Spearman correlation coefficients signify stronger agreement between the model's IoU predictions and the actual ground truth IoU values.
> <details>
> <summary>read the caption</summary>
> Table 3: Evaluation of SegAgent’s Annotation Filtering Ability. Lower MAE and MSE indicate better accuracy, while higher Pearson and Spearman correlation coefficients reflect stronger agreement with ground truth IoU.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T4.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T4.6.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A5.T4.6.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T4.6.1.1.1.1" style="font-size:144%;">Mask Color</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T4.6.1.1.2"><span class="ltx_text ltx_font_bold" id="A5.T4.6.1.1.2.1" style="font-size:144%;">Green</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T4.6.1.1.3"><span class="ltx_text ltx_font_bold" id="A5.T4.6.1.1.3.1" style="font-size:144%;">Blue</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T4.6.1.1.4"><span class="ltx_text ltx_font_bold" id="A5.T4.6.1.1.4.1" style="font-size:144%;">Red</span></td>
</tr>
<tr class="ltx_tr" id="A5.T4.6.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A5.T4.6.2.2.1"><span class="ltx_text ltx_font_bold" id="A5.T4.6.2.2.1.1" style="font-size:144%;">mIoU</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T4.6.2.2.2"><span class="ltx_text" id="A5.T4.6.2.2.2.1" style="font-size:144%;">0.749</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T4.6.2.2.3"><span class="ltx_text" id="A5.T4.6.2.2.3.1" style="font-size:144%;">0.750</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T4.6.2.2.4"><span class="ltx_text" id="A5.T4.6.2.2.4.1" style="font-size:144%;">0.749</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment evaluating the impact of different mask colors (green, blue, and red) on the performance of the SegAgent model in image segmentation tasks. The mean Intersection over Union (mIoU) metric was used to measure the performance, with nearly identical results obtained for all three colors.  This demonstrates that the model's segmentation capabilities are robust to variations in mask color.
> <details>
> <summary>read the caption</summary>
> Table 4: Evaluation of Mask Color on Segmentation Performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T5.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A5.T5.6.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A5.T5.6.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T5.6.1.1.1.1" style="font-size:144%;">Initial Action</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T5.6.1.1.2"><span class="ltx_text ltx_font_bold" id="A5.T5.6.1.1.2.1" style="font-size:144%;">NO box</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T5.6.1.1.3"><span class="ltx_text ltx_font_bold" id="A5.T5.6.1.1.3.1" style="font-size:144%;">Qwen Box</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T5.6.1.1.4"><span class="ltx_text ltx_font_bold" id="A5.T5.6.1.1.4.1" style="font-size:144%;">Self Box</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T5.6.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A5.T5.6.2.1.1"><span class="ltx_text ltx_font_bold" id="A5.T5.6.2.1.1.1" style="font-size:144%;">refcoco(val)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.6.2.1.2"><span class="ltx_text" id="A5.T5.6.2.1.2.1" style="font-size:144%;">77.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.6.2.1.3"><span class="ltx_text" id="A5.T5.6.2.1.3.1" style="font-size:144%;">78.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.6.2.1.4"><span class="ltx_text" id="A5.T5.6.2.1.4.1" style="font-size:144%;">77.85</span></td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.6.3.2.1"><span class="ltx_text ltx_font_bold" id="A5.T5.6.3.2.1.1" style="font-size:144%;">refcoco+(val)</span></th>
<td class="ltx_td ltx_align_center" id="A5.T5.6.3.2.2"><span class="ltx_text" id="A5.T5.6.3.2.2.1" style="font-size:144%;">70.88</span></td>
<td class="ltx_td ltx_align_center" id="A5.T5.6.3.2.3"><span class="ltx_text" id="A5.T5.6.3.2.3.1" style="font-size:144%;">70.86</span></td>
<td class="ltx_td ltx_align_center" id="A5.T5.6.3.2.4"><span class="ltx_text" id="A5.T5.6.3.2.4.1" style="font-size:144%;">70.50</span></td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A5.T5.6.4.3.1"><span class="ltx_text ltx_font_bold" id="A5.T5.6.4.3.1.1" style="font-size:144%;">refcocog(test)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T5.6.4.3.2"><span class="ltx_text" id="A5.T5.6.4.3.2.1" style="font-size:144%;">73.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T5.6.4.3.3"><span class="ltx_text" id="A5.T5.6.4.3.3.1" style="font-size:144%;">74.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T5.6.4.3.4"><span class="ltx_text" id="A5.T5.6.4.3.4.1" style="font-size:144%;">74.33</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of SegAgent's performance using different initial actions for segmentation.  The initial action refers to the first action taken by the model when initiating a segmentation task. Three different initial actions were tested: no initial box (only clicks provided), a bounding box predicted by the Qwen-VL-chat model, and a bounding box predicted by the SegAgent itself.  The performance is evaluated across three different subsets of the referring expression segmentation (RES) dataset (refcoco, refcoco+, refcocog) using the validation or test set for each. The results show the impact of the initial action selection on the mIoU (mean Intersection over Union) score, providing insights into the model's robustness to the initial action.
> <details>
> <summary>read the caption</summary>
> Table 5: Evaluation of Different Initial Actions on SegAgent Performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T6.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T6.6.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A5.T6.6.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T6.6.1.1.1.1" style="font-size:144%;">Coordinate Format</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T6.6.1.1.2"><span class="ltx_text ltx_font_bold" id="A5.T6.6.1.1.2.1" style="font-size:144%;">[0, 1)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T6.6.1.1.3"><span class="ltx_text ltx_font_bold" id="A5.T6.6.1.1.3.1" style="font-size:144%;">[0, 1000)</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A5.T6.6.2.2.1"><span class="ltx_text ltx_font_bold" id="A5.T6.6.2.2.1.1" style="font-size:144%;">mIoU</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T6.6.2.2.2"><span class="ltx_text" id="A5.T6.6.2.2.2.1" style="font-size:144%;">0.749</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T6.6.2.2.3"><span class="ltx_text" id="A5.T6.6.2.2.3.1" style="font-size:144%;">0.747</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment comparing the performance of the SegAgent model using two different coordinate formats for representing the location of segmentation points: decimals in the range [0, 1) and integers in the range [0, 1000). The mIoU (mean Intersection over Union) metric is used to evaluate the segmentation performance for each format. The purpose of the experiment is to assess the model's robustness to the choice of coordinate representation.
> <details>
> <summary>read the caption</summary>
> Table 6: Evaluation of Coordinate Format on Segmentation Performance.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.08625/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08625/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}