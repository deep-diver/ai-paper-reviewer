---
title: "Q-Eval-100K: Evaluating Visual Quality and Alignment Level for Text-to-Vision Content"
summary: "Q-Eval-100K: A new, large dataset for evaluating visual quality and text alignment in AI-generated content."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Shanghai Jiao Tong University",]
showSummary: true
date: 2025-03-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.02357 {{< /keyword >}}
{{< keyword icon="writer" >}} Zicheng Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.02357" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.02357" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.02357/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Evaluating AI-generated visuals hinges on quality and text alignment. Current models rely on high-quality, large-scale human annotations, aligning with Scaling Law principles. Existing datasets often miss systematic capture of key dimensions or fail to disentangle quality from alignment, limiting LMM potential in real scenarios.



This paper introduces **Q-Eval-100K**, a dataset designed to evaluate visual quality and alignment level featuring 100K instances with 960K human annotations. Also, it presents **Q-Eval-Score**, a framework for assessing both dimensions and offers Vague-to-Specific strategy for long prompts.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Q-Eval-100K dataset offers a large collection of human-labeled Mean Opinion Scores (MOS) for evaluating visual quality and alignment. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The study introduces Q-Eval-Score, a unified evaluation model improving long-text prompt alignment handling. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments show Q-Eval-Score's superior performance and strong generalization across benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **Q-Eval-100K**, a large-scale dataset crucial for evaluating and improving text-to-vision models. The work provides a new benchmark, facilitating more reliable assessment of AI-generated content quality and alignment with textual prompts, fostering advancements in generative AI research.

------
#### Visual Insights



![](https://arxiv.org/html/2503.02357/x1.png)

> 🔼 The figure illustrates the two key aspects of evaluating text-to-vision content using the Q-Eval-100K dataset: visual quality and alignment.  Visual quality encompasses all factors influencing the viewing experience, such as clarity, color balance, aesthetic appeal, and overall visual fidelity. Alignment, on the other hand, assesses how accurately the generated image or video matches the given text prompt.  The figure uses examples to visually represent different levels of visual quality (poor, fair, good, excellent) and alignment, demonstrating the range captured by the Q-Eval-100K dataset.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of the unified evaluation dimensions of Q-Eval-100K. We focus on visual quality (including all factors that may impact the viewing experience) and alignment level, which measures the accuracy of the generated content to the prompt.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S1.T1.15.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T1.15.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S1.T1.15.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.15.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S1.T1.15.1.1.1.2" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.15.1.1.1.2.1">Year</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S1.T1.15.1.1.1.3" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.15.1.1.1.3.1">Content</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S1.T1.15.1.1.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.15.1.1.1.4.1">Annotation Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S1.T1.15.1.1.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.15.1.1.1.5.1">Evaluation Concern</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.15.1.1.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.15.1.1.1.6.1">Number</span></th>
</tr>
<tr class="ltx_tr" id="S1.T1.15.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r" id="S1.T1.15.1.2.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_ERROR undefined" id="S1.T1.15.1.2.2.1.1">\cdashline</span>4-7</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S1.T1.15.1.2.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.15.1.2.2.2.1">(Single/Pair)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.15.1.2.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.15.1.2.2.3.1">Quality</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S1.T1.15.1.2.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.15.1.2.2.4.1">Alignment</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.15.1.2.2.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_text ltx_font_italic" id="S1.T1.15.1.2.2.5.1">Ins.</span>/<span class="ltx_text ltx_font_italic" id="S1.T1.15.1.2.2.5.2">Ann.</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.15.1.3.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S1.T1.15.1.3.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Pick-a-pic <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02357v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.15.1.3.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2023</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.15.1.3.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">I.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.15.1.3.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">SBS</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S1.T1.15.1.3.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.15.1.3.1.5.1">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.15.1.3.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">1M/500K</td>
</tr>
<tr class="ltx_tr" id="S1.T1.15.1.4.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.15.1.4.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">ImageReward <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02357v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.4.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2023</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.4.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">I.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.4.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">SBS</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S1.T1.15.1.4.2.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.15.1.4.2.5.1">Overall</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.1.4.2.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">68k/137k</td>
</tr>
<tr class="ltx_tr" id="S1.T1.15.1.5.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.15.1.5.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">HPDv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02357v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.5.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2023</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.5.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">I.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.5.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">SBS</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S1.T1.15.1.5.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.15.1.5.3.5.1">Overall</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.1.5.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">430k/645K</td>
</tr>
<tr class="ltx_tr" id="S1.T1.15.1.6.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.15.1.6.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_ERROR undefined" id="S1.T1.15.1.6.4.1.1">\hdashline</span>AGIQA-3k <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02357v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.6.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2023</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.6.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">I.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.6.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">MOS</td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.1.6.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.6.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.1.6.4.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">3K/81K</td>
</tr>
<tr class="ltx_tr" id="S1.T1.15.1.7.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.15.1.7.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">AIGCIQA2023 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02357v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.7.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2023</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.7.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">I.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.7.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">MOS</td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.1.7.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.7.5.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.1.7.5.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">2K/17K</td>
</tr>
<tr class="ltx_tr" id="S1.T1.15.1.8.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.15.1.8.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">PKU-AIGIQA-4k <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02357v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.8.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2024</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.8.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">I.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.8.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">MOS</td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.1.8.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.8.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.1.8.6.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">4K/84K</td>
</tr>
<tr class="ltx_tr" id="S1.T1.15.1.9.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.15.1.9.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">AIGIQA-20k <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02357v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.9.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2024</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.9.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">I.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.9.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">MOS</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S1.T1.15.1.9.7.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.15.1.9.7.5.1">Overall</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.1.9.7.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">20K/420K</td>
</tr>
<tr class="ltx_tr" id="S1.T1.15.1.10.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.15.1.10.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">RichHF <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02357v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.10.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2024</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.10.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">I.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.10.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">MOS</td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.1.10.8.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.10.8.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.1.10.8.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">18K/54K</td>
</tr>
<tr class="ltx_tr" id="S1.T1.15.1.11.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.15.1.11.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">VideoFeedback <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02357v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.11.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2024</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.11.9.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">V.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.11.9.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">MOS</td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.1.11.9.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.11.9.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.1.11.9.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">37.6K/37.6K</td>
</tr>
<tr class="ltx_tr" id="S1.T1.15.1.12.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.15.1.12.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">T2VQA-DB <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02357v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.12.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2024</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.12.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">V.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.12.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">MOS</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S1.T1.15.1.12.10.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.15.1.12.10.5.1">Overall</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.1.12.10.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">10K/27K</td>
</tr>
<tr class="ltx_tr" id="S1.T1.15.1.13.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.15.1.13.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">GenAI-Bench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02357v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.13.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2024</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.13.11.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">I.&amp;V.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.1.13.11.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">1-5 Likert Scale</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S1.T1.15.1.13.11.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.15.1.13.11.5.1">Overall</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.1.13.11.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">9.6K/9.6K</td>
</tr>
<tr class="ltx_tr" id="S1.T1.15.1.14.12">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S1.T1.15.1.14.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.15.1.14.12.1.1">Q-Eval-100K (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.15.1.14.12.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2024</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.15.1.14.12.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">I.&amp;V.</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.15.1.14.12.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">MOS</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.15.1.14.12.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.15.1.14.12.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.15.1.14.12.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">100K/960K</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares several recent text-to-vision evaluation datasets, highlighting key differences in their characteristics.  It details the year of release, whether the dataset contains images (I) or videos (V), the type of annotation used (side-by-side comparison or mean opinion score), what aspects of the generated content were rated (overall quality, or separate quality and alignment scores), and finally the number of instances and annotations collected.  Side-by-side (SBS) annotation involves human raters choosing the better of two examples, while mean-opinion-score (MOS) involves giving a numerical rating to a single example.  The table helps illustrate the scale and scope of Q-Eval-100K in comparison to existing datasets.
> <details>
> <summary>read the caption</summary>
> Table 1: A brief comparison of the latest text-to-vision evaluation datasets (I. for image, V. for video). For Annotation Type, SBS (side-by-side) and MOS (mean-opinion-score) refer to selecting the preferred instance from a pair of instances and assigning an average absolute score to a single instance respectively. For Rating Concerns, Overall indicates assigning scores from a holistic perspective while ✓denotes assigning separate scores to quality or alignment. For Number, Ins. and Ann. stand for the number of instances and human annotations respectively.
> </details>





### In-depth insights


#### Eval Metric Gap
The evaluation metric gap highlights a critical disconnect between automated evaluation metrics and human perception in assessing AI-generated content. **Traditional metrics often fail to capture the nuances of visual quality, alignment, and aesthetic appeal as perceived by humans.** This discrepancy arises because automated metrics tend to focus on low-level features or statistical measures that do not fully align with the complex cognitive processes involved in human judgment. The gap is exacerbated by the **subjective nature of aesthetics**, where individual preferences and cultural factors play a significant role, making it challenging for automated systems to accurately reflect human perception. **Addressing this gap requires developing more sophisticated evaluation metrics that incorporate higher-level features, contextual understanding, and even elements of human feedback.** Bridging the evaluation metric gap is essential for ensuring that AI-generated content is not only statistically sound but also visually pleasing and aligned with human expectations.

#### LMM's SFT Tuning
**Supervised Fine-Tuning (SFT)** of Large Multimodal Models (LMMs) is crucial for aligning them with specific tasks. This process often involves converting datasets into formats suitable for LMMs, like **transforming scores into adjective-based ratings**, facilitating better understanding. SFT enables LMMs to **learn intricate relationships** between text and vision, improving both visual quality and alignment. By using techniques like **context-aware prompts**, LMMs can be guided to generate more detailed and accurate outputs, making the evaluation process more reliable and interpretable. The effectiveness of SFT heavily relies on the **quality and structure** of the training data. The proper **loss functions** like CE and MSE are essential for optimizing performance, balancing general understanding with precise score prediction. Special handling might be needed for certain inputs. **Vague-to-Specific strategy** is proposed for long prompts.

#### Vague-to-Spec.
The "Vague-to-Specific" strategy addresses the challenge of evaluating alignment in long prompts. Direct assessment often leads to low scores due to oversimplification. This strategy involves LLMs in **summarizing long prompts** into vague versions that retain core information. The original prompt is also split into specific prompts with detailed information. The alignment score is calculated separately for each part. **Vague prompts capture the overall concept**, while **specific prompts focus on precise details**. The results from the two branches are combined using weighted averaging, providing a more comprehensive and accurate alignment evaluation. By capturing both the general picture and the granular details, the strategy improves alignment evaluation, especially in complex prompts.

#### Align vs. Quality
**Alignment** and **quality** represent distinct yet intertwined facets of text-to-vision content evaluation. Alignment assesses the **fidelity** between the textual prompt and the generated visual output, focusing on accurate representation and detail adherence. High alignment signifies the visual content faithfully mirrors the prompt. Conversely, **quality** encompasses the aesthetic and perceptual aspects of the visual, involving factors like clarity, color vibrancy, and overall appeal. Superior quality visuals are inherently pleasing and engaging. Optimizing solely for alignment may yield technically accurate but visually unappealing results, while prioritizing quality without alignment can lead to aesthetically pleasing outputs that deviate from the prompt's intent. An ideal text-to-vision system should strike a balance, ensuring both accurate alignment and high visual quality for optimal user satisfaction and effective communication.

#### Scale Improves QA
While "Scale Improves QA" isn't explicitly present, the broader theme of **scaling data and models** to enhance evaluation capabilities strongly resonates within the research. The authors leverage Scaling Law to build Q-EVAL-100K, implying that **larger, high-quality datasets directly translate to better evaluation models**. This signifies that **increasing the number of human-labeled instances** following predictable patterns enhances performance. Thus Q-Eval-Score benefits from improved QA by SFT from the **human-labeled** Mean Opinion Scores (MOS) for the mentioned two aspects like visual quality and alignment for 100K instances. In essence, the research posits that **scale is a critical enabler** for improving the accuracy, reliability, and generalizability of quality assessment in text-to-vision content generation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.02357/x2.png)

> 🔼 The figure illustrates a quality control process for ensuring the accuracy of annotations in the Q-Eval-100K dataset.  A random sample of 5,000 instances from the complete dataset is selected and evaluated by experts to establish 'golden scores' – the benchmark for quality.  Any subsequent batch of annotations is only accepted if the scores given by annotators for the sampled instances exhibit a high correlation with these expert-determined golden scores. This process helps to maintain a consistent and reliable standard of annotation quality across the entire dataset.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of the Sample and Scrutinize quality control strategy for annotations in Q-Eval-100K. We randomly select a sample of 5K instances from the full dataset, which are then reviewed by experts to establish golden scores. A batch of annotations is approved only if the scores of the sampled instances show a high correlation with these expert-assigned golden scores.
> </details>



![](https://arxiv.org/html/2503.02357/x3.png)

> 🔼 The figure illustrates the Q-Eval-100K dataset creation process.  It starts with prompt design, encompassing diverse prompts created manually and sourced from other datasets.  These prompts are fed into various text-to-vision models to generate a wide range of images and videos.  Human annotators then subjectively evaluate each generated instance, assessing both its visual quality and alignment with the original prompt. These evaluations are represented by Mean Opinion Scores (MOS).  The resulting MOS data then forms a Supervised Fine-Tuning (SFT) dataset. This SFT dataset is specifically designed to train Large Multimodal Models (LMMs), effectively injecting human judgment on visual quality and alignment into the model's training process.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of the Q-Eval-100K construction process. We design a wide range of prompts and employ various text-to-vision models to generate diverse content. Subjective evaluations are then conducted to rate the visual quality and alignment of these generated instances. The resulting scores form the SFT dataset, which can help inject corresponding knowledge into LMMs.
> </details>



![](https://arxiv.org/html/2503.02357/x4.png)

> 🔼 This figure shows the distribution of Mean Opinion Scores (MOS) for image alignment across different text-to-image generative models.  It uses violin plots to represent the distribution of scores for each model, visualizing both the central tendency and the spread of scores. This allows for comparison of the alignment capabilities of various models, showing which models tend to produce more consistent alignments between the generated images and their corresponding text prompts.
> <details>
> <summary>read the caption</summary>
> (a) Image Alignment
> </details>



![](https://arxiv.org/html/2503.02357/x5.png)

> 🔼 This figure shows the distribution of Mean Opinion Scores (MOS) for video alignment across various text-to-video generation models. The MOS represents human judgment on how well the generated video aligns with the corresponding text prompt.  The box plots visualize the range, median, and quartiles of MOS scores for each model. The variations in the distributions reveal the differences in the alignment capabilities of different generation models.  Models closer to a score of 5 demonstrate a higher level of alignment, indicating a better correspondence between the visual content of the video and the text prompt.
> <details>
> <summary>read the caption</summary>
> (b) Video Alignment
> </details>



![](https://arxiv.org/html/2503.02357/x6.png)

> 🔼 This figure is a violin plot showing the distribution of Mean Opinion Scores (MOS) for the visual quality of generated images across various generative models. Each violin represents a different model, and the width of the violin reflects the density of scores at different MOS values. The plot provides a visualization of the performance of various models on the image visual quality, allowing for a comparison of their visual quality capabilities.
> <details>
> <summary>read the caption</summary>
> (c) Image Visual Quality
> </details>



![](https://arxiv.org/html/2503.02357/x7.png)

> 🔼 This figure (d) shows the distribution of Mean Opinion Scores (MOS) for the visual quality of generated videos in the Q-Eval-100K dataset.  It uses violin plots to visualize the MOS distribution across different video generation models, showing the variation in visual quality for each model.  The x-axis represents different models, and the y-axis represents the MOS values for visual quality. The violin plot shows both the probability density and the quantiles of the data. The wider the violin, the higher the data density for that model and the higher the variability of the visual quality.
> <details>
> <summary>read the caption</summary>
> (d) Video Visual Quality
> </details>



![](https://arxiv.org/html/2503.02357/x8.png)

> 🔼 This figure displays violin plots showing the distributions of Mean Opinion Scores (MOS) for visual quality and alignment of generated images and videos from the Q-Eval-100K dataset.  Each plot represents a different model's performance on image alignment, video alignment, image visual quality, and video visual quality, allowing for a comparison of model performance across these categories and media types.
> <details>
> <summary>read the caption</summary>
> Figure 4: MOS distributions for the visual quality and alignment of generated images and videos in the Q-Eval-100K dataset respectively.
> </details>



![](https://arxiv.org/html/2503.02357/x9.png)

> 🔼 The Q-Eval-Score model uses a multi-stage process to evaluate visual quality and alignment in text-to-vision content.  First, a large language model (LMM) is trained on the Q-Eval-100K dataset, learning to assess both visual quality and alignment. Next, context prompts are used to guide the LMM, prompting more detailed and accurate responses. The model outputs probabilities for different rating tokens (e.g., Excellent, Good, Fair, Poor, Bad), which are then converted into final scores.  A special 'Vague-to-Specific' strategy further refines the alignment scores, particularly for long prompts, by breaking them down into more manageable parts for evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 5: The pipeline of the proposed Q-Eval-Score model involves multiple stages. First, the Q-Eval-100K SFT dataset is used to train the LMM on visual quality and alignment knowledge. Then, context prompts are applied to guide the LMM towards generating more detailed and accurate outputs. Finally, the rating token probabilities are converted into predicted scores. Additionally, long prompt alignment is achieved through a Vague-to-Specific strategy to further refine the model’s responses.
> </details>



![](https://arxiv.org/html/2503.02357/x10.png)

> 🔼 The figure illustrates the Vague-to-Specific strategy used to evaluate alignment in long prompts.  A long prompt, describing a complex scene, is fed into a Large Language Model (LLM). The LLM processes this prompt and outputs two things: 1) a concise summary (the 'Vague Prompt') capturing the essence of the original prompt, and 2) several shorter, more specific prompts (the 'Specific Prompts') that break down the original prompt's details.  The alignment score is then calculated separately for the Vague Prompt and each Specific Prompt.  These individual scores are finally combined using weighted averaging to get a final alignment score that more accurately reflects the overall consistency between the generated image and the original complex prompt.
> <details>
> <summary>read the caption</summary>
> Figure 6: An example of the Vague-to-Specific strategy. The original long prompt is divided by the LLM (QwenLM [5]) into a Vague Prompt and several Specific Prompts. The alignment score is first calculated separately for each part, then combined using weighted averaging to form the final score.
> </details>



![](https://arxiv.org/html/2503.02357/x11.png)

> 🔼 This radar chart visualizes the overall performance of various models on visual quality assessment.  Each axis represents a specific evaluation metric (Instance-level SRCC, Instance-level PLCC, Model-level SRCC, Model-level PLCC for both image and video), and each model's performance is plotted as a point on the chart.  The radial distance of the point from the center indicates the model's performance score, allowing for a direct comparison across different models and evaluation metrics.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2503.02357/x12.png)

> 🔼 This radar chart visualizes the overall performance of various models on the alignment aspect of the Q-Eval-100K dataset.  The chart presents the Instance-level and Model-level performance of each model, measured using SRCC (Spearman rank correlation coefficient) and PLCC (Pearson linear correlation coefficient).  Specifically, it compares the performance of CLIPScore, BLIP2Score, VQAScore, and Q-Eval-Score across different evaluation metrics on both images and videos.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2503.02357/x13.png)

> 🔼 This figure presents a comparative analysis of visual quality and alignment performance across multiple evaluation methods on the Q-Eval-100K dataset.  Two radar charts display the results: one for visual quality and one for alignment. Each chart shows the performance of different methods (indicated by abbreviations such as CLIPScore, BLIP2Score, and Q-Eval-Score) across four evaluation metrics: instance-level Spearman's rank correlation coefficient (SRCC), instance-level Pearson linear correlation coefficient (PLCC), model-level SRCC, and model-level PLCC. The results are further broken down by image ('-i') and video ('-v') modalities. This allows for a comprehensive comparison of the methods' performance across different evaluation aspects and data types.
> <details>
> <summary>read the caption</summary>
> Figure 7: Radar charts of the overall performance on the Visual Quality and Alignment aspects on Q-Eval-100K, where IR, IP, MR, MP indicate Instance-level SRCC, Instance-level PLCC, Model-level SRCC, Model-level PLCC, and -i, -v represents image and video respectively.
> </details>



![](https://arxiv.org/html/2503.02357/x14.png)

> 🔼 This figure presents a visual comparison of the results from different evaluation methods, including CLIPScore, BLIP2Score, and Q-Eval-Score.  For each of six example image-text pairs, the figure shows the Mean Opinion Score (MOS) from human evaluations alongside the scores assigned by each of the evaluation methods. This comparison allows for a visual assessment of how well each evaluation metric correlates with human judgments of visual quality and alignment.
> <details>
> <summary>read the caption</summary>
> Figure 8: Visualization comparison results.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.13.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.13.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.13.1.1.1.1" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.1.1.1.1.1" style="font-size:90%;">Model (Visual Quality)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S4.T2.13.1.1.1.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.1.1.1.2.1" style="font-size:90%;">Q-Eval-Image</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S4.T2.13.1.1.1.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.1.1.1.3.1" style="font-size:90%;">Q-Eval-Video</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.13.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T2.13.1.2.2.1" style="padding:0.35pt 4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.13.1.2.2.1.1">\cdashline</span><span class="ltx_text" id="S4.T2.13.1.2.2.1.2" style="font-size:90%;">2-9</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S4.T2.13.1.2.2.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.13.1.2.2.2.1" style="font-size:90%;">Instance-level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" colspan="2" id="S4.T2.13.1.2.2.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.13.1.2.2.3.1" style="font-size:90%;">Model-level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S4.T2.13.1.2.2.4" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.13.1.2.2.4.1" style="font-size:90%;">Instance-level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S4.T2.13.1.2.2.5" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.13.1.2.2.5.1" style="font-size:90%;">Model-level</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.13.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T2.13.1.3.3.1" style="padding:0.35pt 4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.13.1.3.3.1.1">\cdashline</span><span class="ltx_text" id="S4.T2.13.1.3.3.1.2" style="font-size:90%;">2-9</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.13.1.3.3.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.3.3.2.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.13.1.3.3.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.3.3.3.1" style="font-size:90%;">PLCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.13.1.3.3.4" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.3.3.4.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T2.13.1.3.3.5" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.3.3.5.1" style="font-size:90%;">PLCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.13.1.3.3.6" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.3.3.6.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.13.1.3.3.7" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.3.3.7.1" style="font-size:90%;">PLCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.13.1.3.3.8" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.3.3.8.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.13.1.3.3.9" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.3.3.9.1" style="font-size:90%;">PLCC</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.13.1.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.13.1.4.1.1" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.4.1.1.1" style="font-size:90%;">NIQE</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.1.4.1.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.4.1.2.1" style="font-size:90%;">0.239</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.1.4.1.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.4.1.3.1" style="font-size:90%;">0.238</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.1.4.1.4" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.4.1.4.1" style="font-size:90%;">0.829</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.13.1.4.1.5" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.4.1.5.1" style="font-size:90%;">0.758</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.1.4.1.6" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.4.1.6.1" style="font-size:90%;">-0.057</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.1.4.1.7" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.4.1.7.1" style="font-size:90%;">-0.074</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.1.4.1.8" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.4.1.8.1" style="font-size:90%;">-0.333</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.1.4.1.9" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.4.1.9.1" style="font-size:90%;">-0.241</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.1.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.13.1.5.2.1" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.5.2.1.1" style="font-size:90%;">CLIP-IQA</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.5.2.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.5.2.2.1" style="font-size:90%;">0.334</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.5.2.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.5.2.3.1" style="font-size:90%;">0.324</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.5.2.4" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.5.2.4.1" style="font-size:90%;">0.600</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.13.1.5.2.5" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.5.2.5.1" style="font-size:90%;">0.685</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.5.2.6" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.5.2.6.1" style="font-size:90%;">0.194</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.5.2.7" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.5.2.7.1" style="font-size:90%;">0.175</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.5.2.8" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.5.2.8.1" style="font-size:90%;">0.095</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.5.2.9" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.5.2.9.1" style="font-size:90%;">0.076</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.1.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.13.1.6.3.1" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.6.3.1.1" style="font-size:90%;">Q-Align</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.6.3.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.1.6.3.2.1" style="font-size:90%;">0.587</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.6.3.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.1.6.3.3.1" style="font-size:90%;">0.578</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.6.3.4" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.6.3.4.1" style="font-size:90%;">0.714</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.13.1.6.3.5" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.6.3.5.1" style="font-size:90%;">0.914</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.6.3.6" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.1.6.3.6.1" style="font-size:90%;">0.500</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.6.3.7" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.1.6.3.7.1" style="font-size:90%;">0.502</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.6.3.8" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.1.6.3.8.1" style="font-size:90%;">0.762</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.6.3.9" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.1.6.3.9.1" style="font-size:90%;">0.762</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.1.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.13.1.7.4.1" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.7.4.1.1" style="font-size:90%;">IPCE</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.7.4.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.7.4.2.1" style="font-size:90%;">0.550</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.7.4.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.7.4.3.1" style="font-size:90%;">0.560</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.7.4.4" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.1.7.4.4.1" style="font-size:90%;">0.933</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.13.1.7.4.5" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.1.7.4.5.1" style="font-size:90%;">0.937</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.7.4.6" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.7.4.6.1" style="font-size:90%;">0.299</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.7.4.7" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.7.4.7.1" style="font-size:90%;">0.302</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.7.4.8" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.7.4.8.1" style="font-size:90%;">0.476</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.1.7.4.9" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T2.13.1.7.4.9.1" style="font-size:90%;">0.568</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.1.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.13.1.8.5.1" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.1.8.5.1.1" style="font-size:90%;">Q-Eval-Score</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.1.8.5.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.1.8.5.2.1" style="font-size:90%;">0.732</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.1.8.5.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.1.8.5.3.1" style="font-size:90%;">0.731</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.1.8.5.4" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.1.8.5.4.1" style="font-size:90%;">0.943</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.13.1.8.5.5" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.1.8.5.5.1" style="font-size:90%;">0.949</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.1.8.5.6" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.1.8.5.6.1" style="font-size:90%;">0.601</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.1.8.5.7" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.1.8.5.7.1" style="font-size:90%;">0.609</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.1.8.5.8" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.1.8.5.8.1" style="font-size:90%;">0.762</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.1.8.5.9" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.1.8.5.9.1" style="font-size:90%;">0.814</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparative analysis of various methods for evaluating the visual quality of images generated by text-to-image models, using the Q-Eval-100K dataset.  It compares the performance of different metrics, including NIQE, CLIP-IQA, Q-Align, IPCE, and the proposed Q-Eval-Image, across both instance-level and model-level evaluations. The metrics' performance is measured using SRCC and PLCC, reflecting the rank and linear correlation with human annotations. The table highlights the superior performance of Q-Eval-Image in both instance and model-level evaluations.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison on the visual quality aspect of Q-Eval-100K. Best in bold, second underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.7.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.7.1.1.1.1" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.1.1.1.1" style="font-size:90%;">Model (Alignment)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S4.T3.7.1.1.1.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.1.1.2.1" style="font-size:90%;">Q-Eval-Image</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S4.T3.7.1.1.1.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.1.1.3.1" style="font-size:90%;">Q-Eval-Video</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T3.7.1.2.2.1" style="padding:0.35pt 4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T3.7.1.2.2.1.1">\cdashline</span><span class="ltx_text" id="S4.T3.7.1.2.2.1.2" style="font-size:90%;">2-9</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S4.T3.7.1.2.2.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.7.1.2.2.2.1" style="font-size:90%;">Instance-level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" colspan="2" id="S4.T3.7.1.2.2.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.7.1.2.2.3.1" style="font-size:90%;">Model-level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S4.T3.7.1.2.2.4" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.7.1.2.2.4.1" style="font-size:90%;">Instance-level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S4.T3.7.1.2.2.5" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.7.1.2.2.5.1" style="font-size:90%;">Model-level</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T3.7.1.3.3.1" style="padding:0.35pt 4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T3.7.1.3.3.1.1">\cdashline</span><span class="ltx_text" id="S4.T3.7.1.3.3.1.2" style="font-size:90%;">2-9</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.7.1.3.3.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.3.3.2.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.7.1.3.3.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.3.3.3.1" style="font-size:90%;">PLCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.7.1.3.3.4" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.3.3.4.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T3.7.1.3.3.5" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.3.3.5.1" style="font-size:90%;">PLCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.7.1.3.3.6" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.3.3.6.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.7.1.3.3.7" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.3.3.7.1" style="font-size:90%;">PLCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.7.1.3.3.8" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.3.3.8.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.7.1.3.3.9" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.3.3.9.1" style="font-size:90%;">PLCC</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.7.1.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.7.1.4.1.1" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.4.1.1.1" style="font-size:90%;">CLIPScore*</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.1.4.1.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.4.1.2.1" style="font-size:90%;">0.245</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.1.4.1.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.4.1.3.1" style="font-size:90%;">0.252</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.1.4.1.4" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.4.1.4.1" style="font-size:90%;">0.617</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.7.1.4.1.5" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.4.1.5.1" style="font-size:90%;">0.685</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.1.4.1.6" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.4.1.6.1" style="font-size:90%;">0.186</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.1.4.1.7" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.4.1.7.1" style="font-size:90%;">0.219</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.1.4.1.8" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.4.1.8.1" style="font-size:90%;">0.518</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.1.4.1.9" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.4.1.9.1" style="font-size:90%;">0.500</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.5.2.1" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.5.2.1.1" style="font-size:90%;">BLIP2Score*</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.5.2.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.5.2.2.1" style="font-size:90%;">0.297</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.5.2.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.5.2.3.1" style="font-size:90%;">0.330</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.5.2.4" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.5.2.4.1" style="font-size:90%;">0.764</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.1.5.2.5" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.5.2.5.1" style="font-size:90%;">0.835</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.5.2.6" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.5.2.6.1" style="font-size:90%;">0.218</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.5.2.7" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.5.2.7.1" style="font-size:90%;">0.250</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.5.2.8" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.5.2.8.1" style="font-size:90%;">0.295</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.5.2.9" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.5.2.9.1" style="font-size:90%;">0.296</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.6.3.1" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.6.3.1.1" style="font-size:90%;">VQAScore*</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.6.3.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.6.3.2.1" style="font-size:90%;">0.549</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.6.3.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.6.3.3.1" style="font-size:90%;">0.468</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.6.3.4" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.6.3.4.1" style="font-size:90%;">0.385</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.1.6.3.5" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.6.3.5.1" style="font-size:90%;">0.555</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.6.3.6" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.6.3.6.1" style="font-size:90%;">0.433</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.6.3.7" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.6.3.7.1" style="font-size:90%;">0.432</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.6.3.8" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.6.3.8.1" style="font-size:90%;">0.433</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.6.3.9" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.6.3.9.1" style="font-size:90%;">0.351</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.7.4.1" style="padding:0.35pt 4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T3.7.1.7.4.1.1">\hdashline</span><span class="ltx_text" id="S4.T3.7.1.7.4.1.2" style="font-size:90%;">CLIPScore</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.7.4.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.1.7.4.2.1" style="font-size:90%;">0.768</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.7.4.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.7.4.3.1" style="font-size:90%;">0.740</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.7.4.4" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.1.7.4.4.1" style="font-size:90%;">0.958</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.1.7.4.5" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.1.7.4.5.1" style="font-size:90%;">0.956</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.7.4.6" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.7.4.6.1" style="font-size:90%;">0.431</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.7.4.7" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.7.4.7.1" style="font-size:90%;">0.443</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.7.4.8" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.1.7.4.8.1" style="font-size:90%;">0.519</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.7.4.9" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.1.7.4.9.1" style="font-size:90%;">0.509</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.8.5.1" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.8.5.1.1" style="font-size:90%;">BLIP2Score</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.8.5.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.8.5.2.1" style="font-size:90%;">0.766</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.8.5.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.1.8.5.3.1" style="font-size:90%;">0.743</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.8.5.4" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.8.5.4.1" style="font-size:90%;">0.933</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.1.8.5.5" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.8.5.5.1" style="font-size:90%;">0.934</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.8.5.6" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.1.8.5.6.1" style="font-size:90%;">0.483</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.8.5.7" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.1.8.5.7.1" style="font-size:90%;">0.488</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.8.5.8" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.8.5.8.1" style="font-size:90%;">0.512</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.8.5.9" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.8.5.9.1" style="font-size:90%;">0.481</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.9.6.1" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.9.6.1.1" style="font-size:90%;">ImageReward</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.9.6.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.9.6.2.1" style="font-size:90%;">0.762</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.9.6.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.9.6.3.1" style="font-size:90%;">0.732</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.9.6.4" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.9.6.4.1" style="font-size:90%;">0.925</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.1.9.6.5" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.9.6.5.1" style="font-size:90%;">0.955</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.9.6.6" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.9.6.6.1" style="font-size:90%;">0.472</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.9.6.7" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.9.6.7.1" style="font-size:90%;">0.485</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.9.6.8" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.9.6.8.1" style="font-size:90%;">0.375</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.9.6.9" style="padding:0.35pt 4.0pt;"><span class="ltx_text" id="S4.T3.7.1.9.6.9.1" style="font-size:90%;">0.362</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.7.1.10.7.1" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.10.7.1.1" style="font-size:90%;">Q-Eval-Score</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.1.10.7.2" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.10.7.2.1" style="font-size:90%;">0.822</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.1.10.7.3" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.10.7.3.1" style="font-size:90%;">0.802</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.1.10.7.4" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.10.7.4.1" style="font-size:90%;">0.964</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.7.1.10.7.5" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.10.7.5.1" style="font-size:90%;">0.969</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.1.10.7.6" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.10.7.6.1" style="font-size:90%;">0.607</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.1.10.7.7" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.10.7.7.1" style="font-size:90%;">0.634</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.1.10.7.8" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.10.7.8.1" style="font-size:90%;">0.648</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.1.10.7.9" style="padding:0.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.10.7.9.1" style="font-size:90%;">0.605</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a performance comparison of different methods for evaluating the alignment aspect of the Q-Eval-100K dataset.  It compares the performance of Q-Eval-Score with several popular zero-shot alignment evaluation metrics (CLIPScore, BLIP2Score, and VQAScore).  Results are shown for both image and video data, considering both instance-level (individual generated examples) and model-level (overall model performance) accuracy.  To provide a fair comparison, results for the zero-shot methods are also included using their default weights (marked with an asterisk). This allows for a comprehensive evaluation of Q-Eval-Score's performance compared to existing methods in the field.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance comparison on the alignment aspect of Q-Eval-100K. Considering that CLIPScore, BLIP2Score, and VQAScore are popular zero-shot alignment evaluation metrics, we provide the corresponding performance with the official default weight as well (marked with *).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.7.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T4.7.1.1.1.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.1.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S5.T4.7.1.1.1.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.1.1.2.1" style="font-size:90%;">Q-Eval-Image (Quality)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S5.T4.7.1.1.1.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.1.1.3.1" style="font-size:90%;">Q-Eval-Video (Quality)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S5.T4.7.1.1.1.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.1.1.4.1" style="font-size:90%;">Q-Eval-Image (Alignment)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S5.T4.7.1.1.1.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.1.1.5.1" style="font-size:90%;">Q-Eval-Video (Alignment)</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.7.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S5.T4.7.1.2.2.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_ERROR undefined" id="S5.T4.7.1.2.2.1.1">\cdashline</span><span class="ltx_text" id="S5.T4.7.1.2.2.1.2" style="font-size:90%;">2-17</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S5.T4.7.1.2.2.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_italic" id="S5.T4.7.1.2.2.2.1" style="font-size:90%;">Instance-level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S5.T4.7.1.2.2.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_italic" id="S5.T4.7.1.2.2.3.1" style="font-size:90%;">Model-level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S5.T4.7.1.2.2.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_italic" id="S5.T4.7.1.2.2.4.1" style="font-size:90%;">Instance-level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" colspan="2" id="S5.T4.7.1.2.2.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_italic" id="S5.T4.7.1.2.2.5.1" style="font-size:90%;">Model-level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S5.T4.7.1.2.2.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_italic" id="S5.T4.7.1.2.2.6.1" style="font-size:90%;">Instance-level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S5.T4.7.1.2.2.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_italic" id="S5.T4.7.1.2.2.7.1" style="font-size:90%;">Model-level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S5.T4.7.1.2.2.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_italic" id="S5.T4.7.1.2.2.8.1" style="font-size:90%;">Instance-level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S5.T4.7.1.2.2.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_italic" id="S5.T4.7.1.2.2.9.1" style="font-size:90%;">Model-level</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.7.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S5.T4.7.1.3.3.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_ERROR undefined" id="S5.T4.7.1.3.3.1.1">\cdashline</span><span class="ltx_text" id="S5.T4.7.1.3.3.1.2" style="font-size:90%;">2-17</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.7.1.3.3.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.3.3.2.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.7.1.3.3.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.3.3.3.1" style="font-size:90%;">PLCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.7.1.3.3.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.3.3.4.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.7.1.3.3.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.3.3.5.1" style="font-size:90%;">PLCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.7.1.3.3.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.3.3.6.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.7.1.3.3.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.3.3.7.1" style="font-size:90%;">PLCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.7.1.3.3.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.3.3.8.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T4.7.1.3.3.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.3.3.9.1" style="font-size:90%;">PLCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.7.1.3.3.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.3.3.10.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.7.1.3.3.11" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.3.3.11.1" style="font-size:90%;">PLCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.7.1.3.3.12" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.3.3.12.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.7.1.3.3.13" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.3.3.13.1" style="font-size:90%;">PLCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.7.1.3.3.14" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.3.3.14.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.7.1.3.3.15" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.3.3.15.1" style="font-size:90%;">PLCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.7.1.3.3.16" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.3.3.16.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.7.1.3.3.17" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.3.3.17.1" style="font-size:90%;">PLCC</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.7.1.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.7.1.4.1.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_text ltx_font_italic" id="S5.T4.7.1.4.1.1.1" style="font-size:90%;">w/o</span><span class="ltx_text" id="S5.T4.7.1.4.1.1.2" style="font-size:90%;"> </span><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.4.1.1.3" style="font-size:90%;">SFT Training</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.4.1.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.4.1.2.1" style="font-size:90%;">0.071</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.4.1.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.4.1.3.1" style="font-size:90%;">0.096</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.4.1.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.4.1.4.1" style="font-size:90%;">0.257</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.4.1.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.4.1.5.1" style="font-size:90%;">0.136</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.4.1.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.4.1.6.1" style="font-size:90%;">0.018</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.4.1.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.4.1.7.1" style="font-size:90%;">0.008</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.4.1.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.4.1.8.1" style="font-size:90%;">0.262</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.7.1.4.1.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.4.1.9.1" style="font-size:90%;">0.314</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.4.1.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.4.1.10.1" style="font-size:90%;">0.529</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.4.1.11" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.4.1.11.1" style="font-size:90%;">0.423</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.4.1.12" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.4.1.12.1" style="font-size:90%;">0.560</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.4.1.13" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.4.1.13.1" style="font-size:90%;">0.705</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.4.1.14" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.4.1.14.1" style="font-size:90%;">0.464</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.4.1.15" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.4.1.15.1" style="font-size:90%;">0.437</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.4.1.16" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.4.1.16.1" style="font-size:90%;">0.567</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.4.1.17" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.4.1.17.1" style="font-size:90%;">0.478</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.1.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.7.1.5.2.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_text ltx_font_italic" id="S5.T4.7.1.5.2.1.1" style="font-size:90%;">w/o</span><span class="ltx_text" id="S5.T4.7.1.5.2.1.2" style="font-size:90%;"> </span><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.5.2.1.3" style="font-size:90%;"> Context Prompt</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.2.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.5.2.2.1" style="font-size:90%;">0.504</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.2.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.5.2.3.1" style="font-size:90%;">0.509</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.2.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.5.2.4.1" style="font-size:90%;">0.600</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.2.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.5.2.5.1" style="font-size:90%;">0.756</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.2.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.5.2.6.1" style="font-size:90%;">0.598</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.2.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.5.2.7.1" style="font-size:90%;">0.591</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.2.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.5.2.8.1" style="font-size:90%;">0.571</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.7.1.5.2.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.5.2.9.1" style="font-size:90%;">0.638</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.2.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.5.2.10.1" style="font-size:90%;">0.805</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.2.11" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.5.2.11.1" style="font-size:90%;">0.776</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.2.12" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.5.2.12.1" style="font-size:90%;">0.960</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.2.13" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.5.2.13.1" style="font-size:90%;">0.963</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.2.14" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.5.2.14.1" style="font-size:90%;">0.588</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.2.15" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.5.2.15.1" style="font-size:90%;">0.597</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.2.16" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.5.2.16.1" style="font-size:90%;">0.601</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.2.17" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.5.2.17.1" style="font-size:90%;">0.602</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.1.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.7.1.6.3.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_text ltx_font_italic" id="S5.T4.7.1.6.3.1.1" style="font-size:90%;">w/o</span><span class="ltx_text" id="S5.T4.7.1.6.3.1.2" style="font-size:90%;"> </span><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.6.3.1.3" style="font-size:90%;"> CE Loss</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.3.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.6.3.2.1" style="font-size:90%;">0.652</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.3.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.6.3.3.1" style="font-size:90%;">0.622</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.3.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.6.3.4.1" style="font-size:90%;">0.932</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.3.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.6.3.5.1" style="font-size:90%;">0.910</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.3.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.6.3.6.1" style="font-size:90%;">0.247</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.3.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.6.3.7.1" style="font-size:90%;">0.249</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.3.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.6.3.8.1" style="font-size:90%;">0.071</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.7.1.6.3.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.6.3.9.1" style="font-size:90%;">0.239</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.3.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.6.3.10.1" style="font-size:90%;">0.804</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.3.11" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.6.3.11.1" style="font-size:90%;">0.776</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.3.12" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.6.3.12.1" style="font-size:90%;">0.948</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.3.13" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.6.3.13.1" style="font-size:90%;">0.961</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.3.14" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.6.3.14.1" style="font-size:90%;">0.604</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.3.15" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.6.3.15.1" style="font-size:90%;">0.626</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.3.16" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.6.3.16.1" style="font-size:90%;">0.642</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.3.17" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.6.3.17.1" style="font-size:90%;">0.593</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.1.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.7.1.7.4.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_text ltx_font_italic" id="S5.T4.7.1.7.4.1.1" style="font-size:90%;">w/o</span><span class="ltx_text" id="S5.T4.7.1.7.4.1.2" style="font-size:90%;"> </span><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.7.4.1.3" style="font-size:90%;"> MSE Loss</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.7.4.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.7.4.2.1" style="font-size:90%;">0.665</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.7.4.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.7.4.3.1" style="font-size:90%;">0.673</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.7.4.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.7.4.4.1" style="font-size:90%;">0.933</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.7.4.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.7.4.5.1" style="font-size:90%;">0.941</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.7.4.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.7.4.6.1" style="font-size:90%;">0.595</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.7.4.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.7.4.7.1" style="font-size:90%;">0.583</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.7.4.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.7.4.8.1" style="font-size:90%;">0.690</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.7.1.7.4.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.1.7.4.9.1" style="font-size:90%;">0.712</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.7.4.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.7.4.10.1" style="font-size:90%;">0.795</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.7.4.11" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.7.4.11.1" style="font-size:90%;">0.763</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.7.4.12" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.7.4.12.1" style="font-size:90%;">0.954</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.7.4.13" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.7.4.13.1" style="font-size:90%;">0.958</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.7.4.14" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.7.4.14.1" style="font-size:90%;">0.580</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.7.4.15" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.7.4.15.1" style="font-size:90%;">0.605</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.7.4.16" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.7.4.16.1" style="font-size:90%;">0.624</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.7.4.17" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S5.T4.7.1.7.4.17.1" style="font-size:90%;">0.599</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.1.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T4.7.1.8.5.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.1.1" style="font-size:90%;">Q-Eval-Score</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.8.5.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.2.1" style="font-size:90%;">0.732</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.8.5.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.3.1" style="font-size:90%;">0.731</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.8.5.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.4.1" style="font-size:90%;">0.943</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.8.5.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.5.1" style="font-size:90%;">0.949</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.8.5.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.6.1" style="font-size:90%;">0.601</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.8.5.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.7.1" style="font-size:90%;">0.609</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.8.5.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.8.1" style="font-size:90%;">0.762</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.7.1.8.5.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.9.1" style="font-size:90%;">0.814</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.8.5.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.10.1" style="font-size:90%;">0.822</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.8.5.11" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.11.1" style="font-size:90%;">0.802</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.8.5.12" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.12.1" style="font-size:90%;">0.964</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.8.5.13" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.13.1" style="font-size:90%;">0.969</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.8.5.14" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.14.1" style="font-size:90%;">0.607</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.8.5.15" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.15.1" style="font-size:90%;">0.634</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.8.5.16" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.16.1" style="font-size:90%;">0.648</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.8.5.17" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.5.17.1" style="font-size:90%;">0.605</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different components of the Q-Eval-Score model on its performance. It examines the contribution of supervised fine-tuning (SFT) training, context prompts, cross-entropy (CE) loss, and mean squared error (MSE) loss.  The table presents the performance metrics (Instance-level SRCC, Instance-level PLCC, Model-level SRCC, Model-level PLCC) for both image and video data, comparing the full Q-Eval-Score model to variations where one component is removed.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation Study of Q-Eval-Score.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.34.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.34.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T5.34.1.1.1.1" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.1.1.1.1" style="font-size:90%;">     </span><span class="ltx_text ltx_font_bold" id="S5.T5.34.1.1.1.1.2" style="font-size:90%;">Model (Alignment)</span><span class="ltx_text" id="S5.T5.34.1.1.1.1.3" style="font-size:90%;"></span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.T5.34.1.1.1.2" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.1.1.2.1" style="font-size:90%;">     </span><span class="ltx_text ltx_font_bold" id="S5.T5.34.1.1.1.2.2" style="font-size:90%;">Q-Eval-Image (Long)</span><span class="ltx_text" id="S5.T5.34.1.1.1.2.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T5.34.1.1.1.3" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.1.1.3.1" style="font-size:90%;">     </span><span class="ltx_text ltx_font_bold" id="S5.T5.34.1.1.1.3.2" style="font-size:90%;">Q-Eval-Video (Long)</span><span class="ltx_text" id="S5.T5.34.1.1.1.3.3" style="font-size:90%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.34.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.34.1.2.2.1" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.2.2.1.1" style="font-size:90%;">     </span><span class="ltx_ERROR undefined" id="S5.T5.34.1.2.2.1.2">\cdashline</span><span class="ltx_text" id="S5.T5.34.1.2.2.1.3" style="font-size:90%;">2-5</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S5.T5.34.1.2.2.2" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.2.2.2.1" style="font-size:90%;">     </span><span class="ltx_text ltx_font_italic" id="S5.T5.34.1.2.2.2.2" style="font-size:90%;">Instance-level</span><span class="ltx_text" id="S5.T5.34.1.2.2.2.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S5.T5.34.1.2.2.3" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.2.2.3.1" style="font-size:90%;">     </span><span class="ltx_text ltx_font_italic" id="S5.T5.34.1.2.2.3.2" style="font-size:90%;">Instance-level</span><span class="ltx_text" id="S5.T5.34.1.2.2.3.3" style="font-size:90%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.34.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.34.1.3.3.1" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.3.3.1.1" style="font-size:90%;">     </span><span class="ltx_ERROR undefined" id="S5.T5.34.1.3.3.1.2">\cdashline</span><span class="ltx_text" id="S5.T5.34.1.3.3.1.3" style="font-size:90%;">2-5</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.34.1.3.3.2" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.3.3.2.1" style="font-size:90%;">     SRCC</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.34.1.3.3.3" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.3.3.3.1" style="font-size:90%;">     PLCC</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.34.1.3.3.4" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.3.3.4.1" style="font-size:90%;">     SRCC</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.34.1.3.3.5" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.3.3.5.1" style="font-size:90%;">     PLCC</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.34.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.34.1.4.4.1" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.4.4.1.1" style="font-size:90%;">     CLIPScore</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.34.1.4.4.2" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.4.4.2.1" style="font-size:90%;">     0.533</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.34.1.4.4.3" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.4.4.3.1" style="font-size:90%;">     0.547</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.34.1.4.4.4" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.4.4.4.1" style="font-size:90%;">     0.359</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.34.1.4.4.5" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.4.4.5.1" style="font-size:90%;">     0.367</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.34.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.34.1.5.5.1" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.5.5.1.1" style="font-size:90%;">     BLIP2Score</span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.34.1.5.5.2" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.5.5.2.1" style="font-size:90%;">     0.620</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.34.1.5.5.3" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.5.5.3.1" style="font-size:90%;">     0.636</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.34.1.5.5.4" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.5.5.4.1" style="font-size:90%;">     0.392</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.34.1.5.5.5" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.5.5.5.1" style="font-size:90%;">     0.395</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.34.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.34.1.6.6.1" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.6.6.1.1" style="font-size:90%;">     VQAScore</span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.34.1.6.6.2" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.6.6.2.1" style="font-size:90%;">     0.432</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.34.1.6.6.3" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.6.6.3.1" style="font-size:90%;">     0.325</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.34.1.6.6.4" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.6.6.4.1" style="font-size:90%;">     0.344</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.34.1.6.6.5" style="padding:-0.25pt 16.0pt;"><span class="ltx_text" id="S5.T5.34.1.6.6.5.1" style="font-size:90%;">     0.350</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.34.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.34.1.7.7.1" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.7.7.1.1" style="font-size:90%;">     </span><span class="ltx_ERROR undefined" id="S5.T5.34.1.7.7.1.2">\hdashline</span><span class="ltx_text ltx_font_italic" id="S5.T5.34.1.7.7.1.3" style="font-size:90%;">w/o</span><span class="ltx_text" id="S5.T5.34.1.7.7.1.4" style="font-size:90%;"> </span><span class="ltx_text ltx_font_bold" id="S5.T5.34.1.7.7.1.5" style="font-size:90%;">V2S</span><span class="ltx_text" id="S5.T5.34.1.7.7.1.6" style="font-size:90%;"></span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.34.1.7.7.2" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.7.7.2.1" style="font-size:90%;">     </span><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.34.1.7.7.2.2" style="font-size:90%;">0.591</span><span class="ltx_text" id="S5.T5.34.1.7.7.2.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.34.1.7.7.3" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.7.7.3.1" style="font-size:90%;">     </span><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.34.1.7.7.3.2" style="font-size:90%;">0.599</span><span class="ltx_text" id="S5.T5.34.1.7.7.3.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.34.1.7.7.4" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.7.7.4.1" style="font-size:90%;">     </span><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.34.1.7.7.4.2" style="font-size:90%;">0.480</span><span class="ltx_text" id="S5.T5.34.1.7.7.4.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.34.1.7.7.5" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.7.7.5.1" style="font-size:90%;">     </span><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.34.1.7.7.5.2" style="font-size:90%;">0.470</span><span class="ltx_text" id="S5.T5.34.1.7.7.5.3" style="font-size:90%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.34.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T5.34.1.8.8.1" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.8.8.1.1" style="font-size:90%;">     </span><span class="ltx_text ltx_font_italic" id="S5.T5.34.1.8.8.1.2" style="font-size:90%;">w</span><span class="ltx_text" id="S5.T5.34.1.8.8.1.3" style="font-size:90%;"> </span><span class="ltx_text ltx_font_bold" id="S5.T5.34.1.8.8.1.4" style="font-size:90%;">V2S</span><span class="ltx_text" id="S5.T5.34.1.8.8.1.5" style="font-size:90%;"></span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.34.1.8.8.2" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.8.8.2.1" style="font-size:90%;">     </span><span class="ltx_text ltx_font_bold" id="S5.T5.34.1.8.8.2.2" style="font-size:90%;">0.620</span><span class="ltx_text" id="S5.T5.34.1.8.8.2.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.34.1.8.8.3" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.8.8.3.1" style="font-size:90%;">     </span><span class="ltx_text ltx_font_bold" id="S5.T5.34.1.8.8.3.2" style="font-size:90%;">0.623</span><span class="ltx_text" id="S5.T5.34.1.8.8.3.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.34.1.8.8.4" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.8.8.4.1" style="font-size:90%;">     </span><span class="ltx_text ltx_font_bold" id="S5.T5.34.1.8.8.4.2" style="font-size:90%;">0.517</span><span class="ltx_text" id="S5.T5.34.1.8.8.4.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.34.1.8.8.5" style="padding:-0.25pt 16.0pt;">
<span class="ltx_text" id="S5.T5.34.1.8.8.5.1" style="font-size:90%;">     </span><span class="ltx_text ltx_font_bold" id="S5.T5.34.1.8.8.5.2" style="font-size:90%;">0.512</span><span class="ltx_text" id="S5.T5.34.1.8.8.5.3" style="font-size:90%;"></span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of alignment evaluation performance on a subset of the Q-Eval-100K dataset containing long prompts (over 25 words).  The comparison focuses on the proposed Q-Eval-Score model, specifically contrasting its performance with and without the application of the Vague-to-Specific (V2S) strategy. The results are presented for both image and video data using the Instance-level SRCC and PLCC metrics to show the impact of the V2S strategy on the model's ability to effectively handle long prompts.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance comparison on the alignment aspect of Q-Eval-100K on the long prompt subset, where w/o V2S and w V2S represents the proposed Q-Eval-Score model with and without the Vague-to-Specific strategy respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T6.10.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T6.10.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T6.10.1.1.1.1" style="padding:-0.25pt 15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.10.1.1.1.1.1" style="font-size:90%;">Model (Alignment)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S5.T6.10.1.1.1.2" style="padding:-0.25pt 15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.10.1.1.1.2.1" style="font-size:90%;">GenAI-Bench (Image)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T6.10.1.1.1.3" style="padding:-0.25pt 15.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T6.10.1.1.1.3.1" style="font-size:90%;">GenAI-Bench (Video)</span><span class="ltx_text" id="S5.T6.10.1.1.1.3.2" style="font-size:90%;"></span>
</th>
</tr>
<tr class="ltx_tr" id="S5.T6.10.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S5.T6.10.1.2.2.1" style="padding:-0.25pt 15.0pt;">
<span class="ltx_ERROR undefined" id="S5.T6.10.1.2.2.1.1">\cdashline</span><span class="ltx_text" id="S5.T6.10.1.2.2.1.2" style="font-size:90%;">2-5</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.10.1.2.2.2" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.2.2.2.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T6.10.1.2.2.3" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.2.2.3.1" style="font-size:90%;">PLCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.10.1.2.2.4" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.2.2.4.1" style="font-size:90%;">SRCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.10.1.2.2.5" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.2.2.5.1" style="font-size:90%;">PLCC</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.10.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T6.10.1.3.1.1" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.3.1.1.1" style="font-size:90%;">CLIPScore*</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.10.1.3.1.2" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.3.1.2.1" style="font-size:90%;">0.174</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.10.1.3.1.3" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.3.1.3.1" style="font-size:90%;">0.169</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.10.1.3.1.4" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.3.1.4.1" style="font-size:90%;">0.269</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.10.1.3.1.5" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.3.1.5.1" style="font-size:90%;">0.269</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.10.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T6.10.1.4.2.1" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.4.2.1.1" style="font-size:90%;">BLIP2Score*</span></th>
<td class="ltx_td ltx_align_center" id="S5.T6.10.1.4.2.2" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.4.2.2.1" style="font-size:90%;">0.221</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.10.1.4.2.3" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.4.2.3.1" style="font-size:90%;">0.209</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.1.4.2.4" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.4.2.4.1" style="font-size:90%;">0.289</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.1.4.2.5" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.4.2.5.1" style="font-size:90%;">0.275</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.10.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T6.10.1.5.3.1" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.5.3.1.1" style="font-size:90%;">VQAScore*</span></th>
<td class="ltx_td ltx_align_center" id="S5.T6.10.1.5.3.2" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.5.3.2.1" style="font-size:90%;">0.556</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.10.1.5.3.3" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.5.3.3.1" style="font-size:90%;">0.502</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.1.5.3.4" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.5.3.4.1" style="font-size:90%;">0.527</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.1.5.3.5" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.5.3.5.1" style="font-size:90%;">0.505</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.10.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T6.10.1.6.4.1" style="padding:-0.25pt 15.0pt;">
<span class="ltx_ERROR undefined" id="S5.T6.10.1.6.4.1.1">\hdashline</span><span class="ltx_text" id="S5.T6.10.1.6.4.1.2" style="font-size:90%;">CLIPScore</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T6.10.1.6.4.2" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.6.4.2.1" style="font-size:90%;">0.681</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.10.1.6.4.3" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.6.4.3.1" style="font-size:90%;">0.670</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.1.6.4.4" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.6.4.4.1" style="font-size:90%;">0.610</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.1.6.4.5" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.6.4.5.1" style="font-size:90%;">0.628</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.10.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T6.10.1.7.5.1" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.7.5.1.1" style="font-size:90%;">BLIP2Score</span></th>
<td class="ltx_td ltx_align_center" id="S5.T6.10.1.7.5.2" style="padding:-0.25pt 15.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T6.10.1.7.5.2.1" style="font-size:90%;">0.687</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.10.1.7.5.3" style="padding:-0.25pt 15.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T6.10.1.7.5.3.1" style="font-size:90%;">0.679</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.1.7.5.4" style="padding:-0.25pt 15.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T6.10.1.7.5.4.1" style="font-size:90%;">0.679</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.1.7.5.5" style="padding:-0.25pt 15.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T6.10.1.7.5.5.1" style="font-size:90%;">0.705</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.10.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T6.10.1.8.6.1" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.8.6.1.1" style="font-size:90%;">ImageReward</span></th>
<td class="ltx_td ltx_align_center" id="S5.T6.10.1.8.6.2" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.8.6.2.1" style="font-size:90%;">0.664</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.10.1.8.6.3" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.8.6.3.1" style="font-size:90%;">0.656</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.1.8.6.4" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.8.6.4.1" style="font-size:90%;">0.663</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.1.8.6.5" style="padding:-0.25pt 15.0pt;"><span class="ltx_text" id="S5.T6.10.1.8.6.5.1" style="font-size:90%;">0.684</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.10.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T6.10.1.9.7.1" style="padding:-0.25pt 15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.10.1.9.7.1.1" style="font-size:90%;">Q-Eval-Score</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.10.1.9.7.2" style="padding:-0.25pt 15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.10.1.9.7.2.1" style="font-size:90%;">0.757</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T6.10.1.9.7.3" style="padding:-0.25pt 15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.10.1.9.7.3.1" style="font-size:90%;">0.747</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.10.1.9.7.4" style="padding:-0.25pt 15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.10.1.9.7.4.1" style="font-size:90%;">0.717</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.10.1.9.7.5" style="padding:-0.25pt 15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.10.1.9.7.5.1" style="font-size:90%;">0.714</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the cross-dataset validation results of Q-Eval-Score on the GenAI-Bench dataset.  Q-Eval-Score, which was originally trained on the Q-Eval-100K dataset, is evaluated on GenAI-Bench to assess its generalization capabilities.  The table compares the performance of Q-Eval-Score against several other popular alignment evaluation metrics (CLIPScore, BLIP2Score, and VQAScore), showing the SRCC and PLCC scores for both image and video alignment tasks on GenAI-Bench.  An asterisk (*) indicates that the default weights were used for the respective methods.
> <details>
> <summary>read the caption</summary>
> Table 6: Cross-dataset validation performance on GenAI-Bench. The Q-Eval-Score is trained on the Q-Eval-100K and then validated on GenAI-Bench. * indicates using default weight.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S7.T7.4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S7.T7.4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S7.T7.4.1.1.1.1" style="padding:0.1pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.4.1.1.1.1.1" style="font-size:90%;">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S7.T7.4.1.1.1.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.4.1.1.1.2.1" style="font-size:90%;">Subcategory</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S7.T7.4.1.1.1.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.4.1.1.1.3.1" style="font-size:90%;">Count</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.2.2.1" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.2.2.1.1" style="font-size:90%;">Entity Generation</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.2.2.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.2.2.2.1" style="font-size:90%;">Simple Entity Generation</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.2.2.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.2.2.3.1" style="font-size:90%;">1439</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.3.3">
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.3.3.1" style="padding:0.1pt 9.0pt;">
<span class="ltx_ERROR undefined" id="S7.T7.4.1.3.3.1.1">\cdashline</span><span class="ltx_text" id="S7.T7.4.1.3.3.1.2" style="font-size:90%;">2-3</span>
</td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.3.3.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.3.3.2.1" style="font-size:90%;">    Simple Human Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.3.3.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.3.3.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.4.4">
<td class="ltx_td" id="S7.T7.4.1.4.4.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.4.4.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.4.4.2.1" style="font-size:90%;">    Simple Object Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.4.4.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.4.4.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.5.5">
<td class="ltx_td" id="S7.T7.4.1.5.5.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.5.5.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.5.5.2.1" style="font-size:90%;">    Other Simple Entity Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.5.5.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.5.5.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.6.6">
<td class="ltx_td" id="S7.T7.4.1.6.6.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.6.6.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.6.6.2.1" style="font-size:90%;">Complex Entity Generation</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.6.6.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.6.6.3.1" style="font-size:90%;">1729</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.7.7">
<td class="ltx_td" id="S7.T7.4.1.7.7.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.7.7.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.7.7.2.1" style="font-size:90%;">    Character Information Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.7.7.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.7.7.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.8.8">
<td class="ltx_td" id="S7.T7.4.1.8.8.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.8.8.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.8.8.2.1" style="font-size:90%;">    Text and Symbol Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.8.8.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.8.8.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.9.9">
<td class="ltx_td" id="S7.T7.4.1.9.9.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.9.9.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.9.9.2.1" style="font-size:90%;">    Chart Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.9.9.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.9.9.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.10.10.1" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.10.10.1.1" style="font-size:90%;">Entity Attribute Generation</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.10.10.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.10.10.2.1" style="font-size:90%;">Basic Entity Attributes</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.10.10.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.10.10.3.1" style="font-size:90%;">1656</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.11.11">
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.11.11.1" style="padding:0.1pt 9.0pt;">
<span class="ltx_ERROR undefined" id="S7.T7.4.1.11.11.1.1">\cdashline</span><span class="ltx_text" id="S7.T7.4.1.11.11.1.2" style="font-size:90%;">2-3</span>
</td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.11.11.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.11.11.2.1" style="font-size:90%;">    Entity Shape Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.11.11.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.11.11.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.12.12">
<td class="ltx_td" id="S7.T7.4.1.12.12.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.12.12.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.12.12.2.1" style="font-size:90%;">    Entity Position Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.12.12.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.12.12.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.13.13">
<td class="ltx_td" id="S7.T7.4.1.13.13.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.13.13.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.13.13.2.1" style="font-size:90%;">    Entity Color Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.13.13.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.13.13.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.14.14">
<td class="ltx_td" id="S7.T7.4.1.14.14.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.14.14.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.14.14.2.1" style="font-size:90%;">    Entity State Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.14.14.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.14.14.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.15.15">
<td class="ltx_td" id="S7.T7.4.1.15.15.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.15.15.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.15.15.2.1" style="font-size:90%;">    Other Entity Attributes Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.15.15.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.15.15.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.16.16">
<td class="ltx_td" id="S7.T7.4.1.16.16.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.16.16.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.16.16.2.1" style="font-size:90%;">Person and Animal Attributes Generation</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.16.16.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.16.16.3.1" style="font-size:90%;">1500</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.17.17">
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.17.17.1" style="padding:0.1pt 9.0pt;">
<span class="ltx_ERROR undefined" id="S7.T7.4.1.17.17.1.1">\cdashline</span><span class="ltx_text" id="S7.T7.4.1.17.17.1.2" style="font-size:90%;">2-3</span>
</td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.17.17.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.17.17.2.1" style="font-size:90%;">    Emotion Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.17.17.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.17.17.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.18.18">
<td class="ltx_td" id="S7.T7.4.1.18.18.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.18.18.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.18.18.2.1" style="font-size:90%;">    Action Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.18.18.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.18.18.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.19.19">
<td class="ltx_td" id="S7.T7.4.1.19.19.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.19.19.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.19.19.2.1" style="font-size:90%;">    Specific Age Person Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.19.19.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.19.19.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.20.20">
<td class="ltx_td" id="S7.T7.4.1.20.20.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.20.20.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.20.20.2.1" style="font-size:90%;">    Specific Gender Person Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.20.20.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.20.20.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.21.21">
<td class="ltx_td" id="S7.T7.4.1.21.21.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.21.21.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.21.21.2.1" style="font-size:90%;">    Other Person and Animal Attributes</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.21.21.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.21.21.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.22.22">
<td class="ltx_td" id="S7.T7.4.1.22.22.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.22.22.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.22.22.2.1" style="font-size:90%;">Portrait Generation</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.22.22.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.22.22.3.1" style="font-size:90%;">531</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.23.23">
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.23.23.1" style="padding:0.1pt 9.0pt;">
<span class="ltx_ERROR undefined" id="S7.T7.4.1.23.23.1.1">\cdashline</span><span class="ltx_text" id="S7.T7.4.1.23.23.1.2" style="font-size:90%;">2-3</span>
</td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.23.23.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.23.23.2.1" style="font-size:90%;">    Simple Portrait Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.23.23.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.23.23.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.24.24">
<td class="ltx_td" id="S7.T7.4.1.24.24.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.24.24.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.24.24.2.1" style="font-size:90%;">    Complex Portrait Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.24.24.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.24.24.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.25.25">
<td class="ltx_td" id="S7.T7.4.1.25.25.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.25.25.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.25.25.2.1" style="font-size:90%;">Scene and Theme Generation</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.25.25.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.25.25.3.1" style="font-size:90%;">2450</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.26.26">
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.26.26.1" style="padding:0.1pt 9.0pt;">
<span class="ltx_ERROR undefined" id="S7.T7.4.1.26.26.1.1">\cdashline</span><span class="ltx_text" id="S7.T7.4.1.26.26.1.2" style="font-size:90%;">2-3</span>
</td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.26.26.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.26.26.2.1" style="font-size:90%;">    Theme Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.26.26.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.26.26.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.27.27">
<td class="ltx_td" id="S7.T7.4.1.27.27.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.27.27.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.27.27.2.1" style="font-size:90%;">    Scene Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.27.27.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.27.27.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.28.28">
<td class="ltx_td" id="S7.T7.4.1.28.28.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.28.28.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.28.28.2.1" style="font-size:90%;">Style Generation</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.28.28.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.28.28.3.1" style="font-size:90%;">294</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.29.29">
<td class="ltx_td" id="S7.T7.4.1.29.29.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.29.29.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.29.29.2.1" style="font-size:90%;">Basic Visual Attributes Generation</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.29.29.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.29.29.3.1" style="font-size:90%;">321</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.30.30">
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.30.30.1" style="padding:0.1pt 9.0pt;">
<span class="ltx_ERROR undefined" id="S7.T7.4.1.30.30.1.1">\cdashline</span><span class="ltx_text" id="S7.T7.4.1.30.30.1.2" style="font-size:90%;">2-3</span>
</td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.30.30.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.30.30.2.1" style="font-size:90%;">    Image Sharpness Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.30.30.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.30.30.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.31.31">
<td class="ltx_td" id="S7.T7.4.1.31.31.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.31.31.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.31.31.2.1" style="font-size:90%;">    Exposure Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.31.31.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.31.31.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.32.32">
<td class="ltx_td" id="S7.T7.4.1.32.32.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.32.32.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.32.32.2.1" style="font-size:90%;">    Lighting Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.32.32.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.32.32.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.33.33">
<td class="ltx_td" id="S7.T7.4.1.33.33.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.33.33.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.33.33.2.1" style="font-size:90%;">    Contrast Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.33.33.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.33.33.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.34.34">
<td class="ltx_td" id="S7.T7.4.1.34.34.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.34.34.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.34.34.2.1" style="font-size:90%;">    Color Saturation Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.34.34.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.34.34.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.35.35">
<td class="ltx_td" id="S7.T7.4.1.35.35.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.35.35.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.35.35.2.1" style="font-size:90%;">    Noise Level Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.35.35.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.35.35.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.36.36">
<td class="ltx_td" id="S7.T7.4.1.36.36.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.36.36.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.36.36.2.1" style="font-size:90%;">    Composition Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.36.36.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.36.36.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.37.37">
<td class="ltx_td" id="S7.T7.4.1.37.37.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.37.37.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.37.37.2.1" style="font-size:90%;">    Color Balance Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.37.37.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.37.37.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.38.38">
<td class="ltx_td" id="S7.T7.4.1.38.38.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.38.38.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.38.38.2.1" style="font-size:90%;">    Depth of Field Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.38.38.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.38.38.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.39.39">
<td class="ltx_td" id="S7.T7.4.1.39.39.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.39.39.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.39.39.2.1" style="font-size:90%;">    Perspective Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.39.39.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.39.39.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.40.40">
<td class="ltx_td" id="S7.T7.4.1.40.40.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.40.40.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.40.40.2.1" style="font-size:90%;">    Camera Angle Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.40.40.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.40.40.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.41.41">
<td class="ltx_td" id="S7.T7.4.1.41.41.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.41.41.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.41.41.2.1" style="font-size:90%;">    Other Basic Visual Attributes Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.41.41.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.41.41.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.42.42">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.42.42.1" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.42.42.1.1" style="font-size:90%;">Interaction Ability</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.42.42.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.42.42.2.1" style="font-size:90%;">Interacting Multi-Entity Generation</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.4.1.42.42.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.42.42.3.1" style="font-size:90%;">1729</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.43.43">
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.43.43.1" style="padding:0.1pt 9.0pt;">
<span class="ltx_ERROR undefined" id="S7.T7.4.1.43.43.1.1">\cdashline</span><span class="ltx_text" id="S7.T7.4.1.43.43.1.2" style="font-size:90%;">2-3</span>
</td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.43.43.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.43.43.2.1" style="font-size:90%;">    Sequential Relationship Multi-Entity Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.43.43.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.43.43.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.44.44">
<td class="ltx_td" id="S7.T7.4.1.44.44.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.44.44.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.44.44.2.1" style="font-size:90%;">    Causal Relationship Multi-Entity Generation</span></td>
<td class="ltx_td ltx_align_left" id="S7.T7.4.1.44.44.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.44.44.3.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.1.45.45">
<td class="ltx_td ltx_border_bb" id="S7.T7.4.1.45.45.1" style="padding:0.1pt 9.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S7.T7.4.1.45.45.2" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.45.45.2.1" style="font-size:90%;">    Spatial Relationship Multi-Entity Generation</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S7.T7.4.1.45.45.3" style="padding:0.1pt 9.0pt;"><span class="ltx_text" id="S7.T7.4.1.45.45.3.1" style="font-size:90%;">/</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 7 provides a detailed breakdown of the prompt design used in the Q-Eval-100K dataset creation.  It categorizes the prompts based on three key aspects:  Entity Generation (creation of the primary entities within the image or video), Entity Attribute Generation (defining the characteristics of those entities), and Interaction Ability (describing the relationships and actions between entities or with the background).  Each aspect is further divided into subcategories, illustrating the diversity and complexity of prompts included. The 'Count' column indicates the number of prompts within each subcategory.
> <details>
> <summary>read the caption</summary>
> Table 7: Detailed Descriptions of Entity Generation, Entity Attribute Generation, and Interaction Ability
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S9.T8.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S9.T8.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S9.T8.2.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S9.T8.2.2.2.3.1" style="font-size:80%;">Dataset</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T8.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S9.T8.1.1.1.1.1" style="font-size:80%;">AGIQA<sup class="ltx_sup" id="S9.T8.1.1.1.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S9.T8.1.1.1.1.1.1.1">Quality</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T8.2.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S9.T8.2.2.2.4.1" style="font-size:80%;">T2VQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T8.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S9.T8.2.2.2.2.1" style="font-size:80%;">AGIQA<sup class="ltx_sup" id="S9.T8.2.2.2.2.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S9.T8.2.2.2.2.1.1.1">Align</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T8.2.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S9.T8.2.2.2.5.1" style="font-size:80%;">TIFA160</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S9.T8.2.2.3.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S9.T8.2.2.3.1.1.1" style="font-size:80%;">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.2.2.3.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S9.T8.2.2.3.1.2.1" style="font-size:80%;">SRCC/PLCC</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.2.3.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S9.T8.2.2.3.1.3.1" style="font-size:80%;">SRCC/PLCC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.2.2.3.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S9.T8.2.2.3.1.4.1" style="font-size:80%;">SRCC/PLCC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.2.2.3.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S9.T8.2.2.3.1.5.1" style="font-size:80%;">SRCC/PLCC</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.2.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S9.T8.2.2.4.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S9.T8.2.2.4.2.1.1" style="font-size:80%;">Q-Align</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.2.2.4.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S9.T8.2.2.4.2.2.1" style="font-size:80%;">0.6581/0.6743</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.2.4.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S9.T8.2.2.4.2.3.1" style="font-size:80%;">0.2539/0.2198</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.2.2.4.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S9.T8.2.2.4.2.4.1" style="font-size:80%;">Inapplicable</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.2.2.4.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S9.T8.2.2.4.2.5.1" style="font-size:80%;">Inapplicable</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.2.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S9.T8.2.2.5.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S9.T8.2.2.5.3.1.1" style="font-size:80%;">CLIPScore</span></th>
<td class="ltx_td ltx_align_center" id="S9.T8.2.2.5.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S9.T8.2.2.5.3.2.1" style="font-size:80%;">Inapplicable</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T8.2.2.5.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S9.T8.2.2.5.3.3.1" style="font-size:80%;">Inapplicable</span></td>
<td class="ltx_td ltx_align_center" id="S9.T8.2.2.5.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S9.T8.2.2.5.3.4.1" style="font-size:80%;">0.5515/0.5627</span></td>
<td class="ltx_td ltx_align_center" id="S9.T8.2.2.5.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S9.T8.2.2.5.3.5.1" style="font-size:80%;">0.5903/0.5952</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.2.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S9.T8.2.2.6.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S9.T8.2.2.6.4.1.1" style="font-size:80%;">BLIP2Score</span></th>
<td class="ltx_td ltx_align_center" id="S9.T8.2.2.6.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S9.T8.2.2.6.4.2.1" style="font-size:80%;">Inapplicable</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T8.2.2.6.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S9.T8.2.2.6.4.3.1" style="font-size:80%;">Inapplicable</span></td>
<td class="ltx_td ltx_align_center" id="S9.T8.2.2.6.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S9.T8.2.2.6.4.4.1" style="font-size:80%;">0.6873/0.7085</span></td>
<td class="ltx_td ltx_align_center" id="S9.T8.2.2.6.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S9.T8.2.2.6.4.5.1" style="font-size:80%;">0.7267/0.7468</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.2.7.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S9.T8.2.2.7.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S9.T8.2.2.7.5.1.1" style="font-size:80%;">Q-Eval-Score</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T8.2.2.7.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="S9.T8.2.2.7.5.2.1" style="font-size:80%;">0.7256</span><span class="ltx_text" id="S9.T8.2.2.7.5.2.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S9.T8.2.2.7.5.2.3" style="font-size:80%;">0.7248</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S9.T8.2.2.7.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="S9.T8.2.2.7.5.3.1" style="font-size:80%;">0.4479</span><span class="ltx_text" id="S9.T8.2.2.7.5.3.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S9.T8.2.2.7.5.3.3" style="font-size:80%;">0.4498</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T8.2.2.7.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="S9.T8.2.2.7.5.4.1" style="font-size:80%;">0.7544</span><span class="ltx_text" id="S9.T8.2.2.7.5.4.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S9.T8.2.2.7.5.4.3" style="font-size:80%;">0.7432</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T8.2.2.7.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="S9.T8.2.2.7.5.5.1" style="font-size:80%;">0.7845</span><span class="ltx_text" id="S9.T8.2.2.7.5.5.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S9.T8.2.2.7.5.5.3" style="font-size:80%;">0.7954</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the cross-validation results of different models (Q-Align, CLIPScore, BLIP2Score, and Q-Eval-Score) on four datasets: AGIQA-Quality, T2VQA, AGIQA-Align, and TIFA160.  All models were pre-trained using the Q-Eval-100K dataset. The results, reported as SRCC/PLCC (Spearman Rank Correlation Coefficient/Pearson Linear Correlation Coefficient), demonstrate the generalization performance of each model across different datasets and tasks (visual quality and alignment).
> <details>
> <summary>read the caption</summary>
> Table 8: Cross-validation (All pre-trained on Q-Eval-100K).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.02357/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02357/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02357/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02357/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02357/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02357/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02357/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02357/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02357/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02357/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02357/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02357/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02357/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02357/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02357/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}