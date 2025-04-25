---
title: "Eagle 2.5: Boosting Long-Context Post-Training for Frontier Vision-Language Models"
summary: "Eagle 2.5: Better long-context vision-language via boosted post-training!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 NVIDIA",]
showSummary: true
date: 2025-04-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.15271 {{< /keyword >}}
{{< keyword icon="writer" >}} Guo Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.15271" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.15271" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.15271/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current Vision-Language Models(VLMs) struggle with long-context tasks like video comprehension, facing hurdles in dataset creation and architecture. Existing methods often add overhead or fall short of top models. Optimal training is unclear due to complex factors. Therefore, there is a need to improve performance and increase visual input. 



**Eagle 2.5**, a versatile multimodal model, efficiently processes extensive contextual information, improving with longer inputs. It uses information-first sampling (Image Area Preservation and Automatic Degradation Sampling) and progressive training. The approach enhances information density, maintains performance across input types and embraces a diversity-first principle with **Eagle-Video-110K** dataset

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Eagle 2.5 significantly improves long-context multimodal understanding, especially for long videos and high-resolution images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework incorporates innovative techniques like Automatic Degrade Sampling and Image Area Preservation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The introduction of Eagle-Video-110K offers a valuable resource for long-video understanding, featuring story-level and clip-level annotations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**Eagle 2.5** boosts long-context understanding in VLMs, matching closed-source models with enhanced training & a novel dataset. It offers new research directions for efficient & versatile VLMs in real-world applications by providing comprehensive details of training strategies and data recipes.

------
#### Visual Insights



![](https://arxiv.org/html/2504.15271/x1.png)

> 🔼 This figure showcases a performance comparison between Eagle 2.5 and other leading vision-language models on the Video-MME benchmark.  The x-axis represents the number of input frames used for video comprehension, while the y-axis shows the accuracy achieved on the benchmark.  Eagle 2.5 models of varying sizes (8B and others) are plotted, demonstrating a consistent improvement in performance as the number of input frames increases. This highlights Eagle 2.5's capability to effectively handle and understand long-context video data, outperforming or matching the performance of larger commercial models like GPT-40 and open-source alternatives.
> <details>
> <summary>read the caption</summary>
> Figure 1: Performance comparison of Eagle 2.5 with leading vision-language models on the Video-MME benchmark. Eagle 2.5 demonstrates consistent improvement as the number of input frames increases.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.1">
<tr class="ltx_tr" id="S3.T1.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.1.1" style="padding:0.45pt 15.0pt;"><span class="ltx_text" id="S3.T1.2.1.1.1.1" style="font-size:90%;">Category</span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.2.1.1.2" style="width:398.3pt;padding:0.45pt 15.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.1.1.2.1">
<span class="ltx_p" id="S3.T1.2.1.1.2.1.1"><span class="ltx_text" id="S3.T1.2.1.1.2.1.1.1" style="font-size:90%;">Dataset</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.2.1" style="padding:0.45pt 15.0pt;"><span class="ltx_text" id="S3.T1.2.1.2.1.1" style="font-size:90%;">Video Classification</span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.1.2.2" style="width:398.3pt;padding:0.45pt 15.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.1.2.2.1">
<span class="ltx_p" id="S3.T1.2.1.2.2.1.1"><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.1" style="font-size:90%;">Kinetics710 </span><cite class="ltx_cite ltx_citemacro_cite">Carreira and Zisserman <span class="ltx_text" id="S3.T1.2.1.2.2.1.1.2.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib18" title="">2017</a><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.3.2.2.1" style="font-size:90%;">)</span>; Wang et al. <span class="ltx_text" id="S3.T1.2.1.2.2.1.1.2.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib216" title="">2024d</a><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.3.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.4" style="font-size:90%;">, Something-Something-v2 </span><cite class="ltx_cite ltx_citemacro_cite">Goyal et al. <span class="ltx_text" id="S3.T1.2.1.2.2.1.1.5.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib50" title="">2017a</a><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.6.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.7" style="font-size:90%;">, ActivityNet </span><cite class="ltx_cite ltx_citemacro_cite">Caba Heilbron et al. <span class="ltx_text" id="S3.T1.2.1.2.2.1.1.8.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib16" title="">2015</a><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.9.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.10" style="font-size:90%;">, HACS Segment </span><cite class="ltx_cite ltx_citemacro_cite">Zhao et al. <span class="ltx_text" id="S3.T1.2.1.2.2.1.1.11.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib266" title="">2019</a><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.12.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.13" style="font-size:90%;">, COIN </span><cite class="ltx_cite ltx_citemacro_cite">Tang et al. <span class="ltx_text" id="S3.T1.2.1.2.2.1.1.14.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib197" title="">2019</a><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.15.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.16" style="font-size:90%;">, HIREST </span><cite class="ltx_cite ltx_citemacro_cite">Zala et al. <span class="ltx_text" id="S3.T1.2.1.2.2.1.1.17.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib252" title="">2023</a><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.18.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.19" style="font-size:90%;">, FineAction </span><cite class="ltx_cite ltx_citemacro_cite">Liu et al. <span class="ltx_text" id="S3.T1.2.1.2.2.1.1.20.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib123" title="">2022</a><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.21.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.22" style="font-size:90%;">, PortraitMode-400 </span><cite class="ltx_cite ltx_citemacro_cite">Han et al. <span class="ltx_text" id="S3.T1.2.1.2.2.1.1.23.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib57" title="">2024</a><span class="ltx_text" id="S3.T1.2.1.2.2.1.1.24.2.2.1" style="font-size:90%;">)</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.3.1" style="padding:0.45pt 15.0pt;"><span class="ltx_text" id="S3.T1.2.1.3.1.1" style="font-size:90%;">Temporal Action Localization</span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.1.3.2" style="width:398.3pt;padding:0.45pt 15.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.1.3.2.1">
<span class="ltx_p" id="S3.T1.2.1.3.2.1.1"><span class="ltx_text" id="S3.T1.2.1.3.2.1.1.1" style="font-size:90%;">ActivityNet </span><cite class="ltx_cite ltx_citemacro_cite">Caba Heilbron et al. <span class="ltx_text" id="S3.T1.2.1.3.2.1.1.2.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib16" title="">2015</a><span class="ltx_text" id="S3.T1.2.1.3.2.1.1.3.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.3.2.1.1.4" style="font-size:90%;">, HACS Segment </span><cite class="ltx_cite ltx_citemacro_cite">Zhao et al. <span class="ltx_text" id="S3.T1.2.1.3.2.1.1.5.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib266" title="">2019</a><span class="ltx_text" id="S3.T1.2.1.3.2.1.1.6.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.3.2.1.1.7" style="font-size:90%;">, FineAction </span><cite class="ltx_cite ltx_citemacro_cite">Liu et al. <span class="ltx_text" id="S3.T1.2.1.3.2.1.1.8.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib123" title="">2022</a><span class="ltx_text" id="S3.T1.2.1.3.2.1.1.9.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.3.2.1.1.10" style="font-size:90%;">, Ego4D-MQ </span><cite class="ltx_cite ltx_citemacro_cite">Grauman et al. <span class="ltx_text" id="S3.T1.2.1.3.2.1.1.11.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib52" title="">2022</a><span class="ltx_text" id="S3.T1.2.1.3.2.1.1.12.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.3.2.1.1.13" style="font-size:90%;">, COIN </span><cite class="ltx_cite ltx_citemacro_cite">Tang et al. <span class="ltx_text" id="S3.T1.2.1.3.2.1.1.14.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib197" title="">2019</a><span class="ltx_text" id="S3.T1.2.1.3.2.1.1.15.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.3.2.1.1.16" style="font-size:90%;">, HIREST </span><cite class="ltx_cite ltx_citemacro_cite">Zala et al. <span class="ltx_text" id="S3.T1.2.1.3.2.1.1.17.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib252" title="">2023</a><span class="ltx_text" id="S3.T1.2.1.3.2.1.1.18.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.3.2.1.1.19" style="font-size:90%;">, Perception-Test </span><cite class="ltx_cite ltx_citemacro_cite">Patraucean et al. <span class="ltx_text" id="S3.T1.2.1.3.2.1.1.20.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib164" title="">2023b</a><span class="ltx_text" id="S3.T1.2.1.3.2.1.1.21.2.2.1" style="font-size:90%;">)</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.4.1" style="padding:0.45pt 15.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.1.1" style="font-size:90%;">Video Temporal Grounding</span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.1.4.2" style="width:398.3pt;padding:0.45pt 15.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.1.4.2.1">
<span class="ltx_p" id="S3.T1.2.1.4.2.1.1"><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.1" style="font-size:90%;">Charade-STA </span><cite class="ltx_cite ltx_citemacro_cite">Gao et al. <span class="ltx_text" id="S3.T1.2.1.4.2.1.1.2.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib48" title="">2017</a><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.3.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.4" style="font-size:90%;">, QVHighlight </span><cite class="ltx_cite ltx_citemacro_cite">Lei et al. <span class="ltx_text" id="S3.T1.2.1.4.2.1.1.5.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib99" title="">2021</a><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.6.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.7" style="font-size:90%;">, Ego4D-NLQ </span><cite class="ltx_cite ltx_citemacro_cite">Grauman et al. <span class="ltx_text" id="S3.T1.2.1.4.2.1.1.8.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib52" title="">2022</a><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.9.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.10" style="font-size:90%;">, Didemo </span><cite class="ltx_cite ltx_citemacro_cite">He et al. <span class="ltx_text" id="S3.T1.2.1.4.2.1.1.11.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib60" title="">2020</a><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.12.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.13" style="font-size:90%;">, QueryD </span><cite class="ltx_cite ltx_citemacro_cite">Oncescu et al. <span class="ltx_text" id="S3.T1.2.1.4.2.1.1.14.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib158" title="">2021</a><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.15.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.16" style="font-size:90%;">, MedVidQA </span><cite class="ltx_cite ltx_citemacro_cite">Gupta et al. <span class="ltx_text" id="S3.T1.2.1.4.2.1.1.17.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib54" title="">2023</a><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.18.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.19" style="font-size:90%;">, Youcook2 </span><cite class="ltx_cite ltx_citemacro_cite">Zhou et al. <span class="ltx_text" id="S3.T1.2.1.4.2.1.1.20.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib274" title="">2018</a><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.21.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.22" style="font-size:90%;">, FineVideo </span><cite class="ltx_cite ltx_citemacro_cite">Farré et al. <span class="ltx_text" id="S3.T1.2.1.4.2.1.1.23.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib44" title="">2024</a><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.24.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.25" style="font-size:90%;">, ActivityNet </span><cite class="ltx_cite ltx_citemacro_cite">Caba Heilbron et al. <span class="ltx_text" id="S3.T1.2.1.4.2.1.1.26.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib16" title="">2015</a><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.27.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.28" style="font-size:90%;">, HACS Segment </span><cite class="ltx_cite ltx_citemacro_cite">Zhao et al. <span class="ltx_text" id="S3.T1.2.1.4.2.1.1.29.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib266" title="">2019</a><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.30.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.31" style="font-size:90%;">, FineAction </span><cite class="ltx_cite ltx_citemacro_cite">Liu et al. <span class="ltx_text" id="S3.T1.2.1.4.2.1.1.32.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib123" title="">2022</a><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.33.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.34" style="font-size:90%;">, Ego4D-MQ </span><cite class="ltx_cite ltx_citemacro_cite">Grauman et al. <span class="ltx_text" id="S3.T1.2.1.4.2.1.1.35.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib52" title="">2022</a><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.36.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.37" style="font-size:90%;">, COIN </span><cite class="ltx_cite ltx_citemacro_cite">Tang et al. <span class="ltx_text" id="S3.T1.2.1.4.2.1.1.38.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib197" title="">2019</a><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.39.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.40" style="font-size:90%;">, HIREST </span><cite class="ltx_cite ltx_citemacro_cite">Zala et al. <span class="ltx_text" id="S3.T1.2.1.4.2.1.1.41.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib252" title="">2023</a><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.42.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.43" style="font-size:90%;">, Perception-Test </span><cite class="ltx_cite ltx_citemacro_cite">Patraucean et al. <span class="ltx_text" id="S3.T1.2.1.4.2.1.1.44.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib164" title="">2023b</a><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.45.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.46" style="font-size:90%;">, EgoExoLearn </span><cite class="ltx_cite ltx_citemacro_cite">Huang et al. <span class="ltx_text" id="S3.T1.2.1.4.2.1.1.47.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib67" title="">2024b</a><span class="ltx_text" id="S3.T1.2.1.4.2.1.1.48.2.2.1" style="font-size:90%;">)</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.5.1" style="padding:0.45pt 15.0pt;"><span class="ltx_text" id="S3.T1.2.1.5.1.1" style="font-size:90%;">Dense Video Captioning</span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.1.5.2" style="width:398.3pt;padding:0.45pt 15.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.1.5.2.1">
<span class="ltx_p" id="S3.T1.2.1.5.2.1.1"><span class="ltx_text" id="S3.T1.2.1.5.2.1.1.1" style="font-size:90%;">ActivityNet </span><cite class="ltx_cite ltx_citemacro_cite">Caba Heilbron et al. <span class="ltx_text" id="S3.T1.2.1.5.2.1.1.2.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib16" title="">2015</a><span class="ltx_text" id="S3.T1.2.1.5.2.1.1.3.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.5.2.1.1.4" style="font-size:90%;">, Youcook2 </span><cite class="ltx_cite ltx_citemacro_cite">Zhou et al. <span class="ltx_text" id="S3.T1.2.1.5.2.1.1.5.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib274" title="">2018</a><span class="ltx_text" id="S3.T1.2.1.5.2.1.1.6.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.5.2.1.1.7" style="font-size:90%;">, EgoExoLearn </span><cite class="ltx_cite ltx_citemacro_cite">Huang et al. <span class="ltx_text" id="S3.T1.2.1.5.2.1.1.8.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib67" title="">2024b</a><span class="ltx_text" id="S3.T1.2.1.5.2.1.1.9.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.5.2.1.1.10" style="font-size:90%;">, ViTT </span><cite class="ltx_cite ltx_citemacro_cite">Huang et al. <span class="ltx_text" id="S3.T1.2.1.5.2.1.1.11.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib65" title="">2020a</a><span class="ltx_text" id="S3.T1.2.1.5.2.1.1.12.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.5.2.1.1.13" style="font-size:90%;">, HIREST </span><cite class="ltx_cite ltx_citemacro_cite">Zala et al. <span class="ltx_text" id="S3.T1.2.1.5.2.1.1.14.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib252" title="">2023</a><span class="ltx_text" id="S3.T1.2.1.5.2.1.1.15.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.5.2.1.1.16" style="font-size:90%;">, COIN </span><cite class="ltx_cite ltx_citemacro_cite">Tang et al. <span class="ltx_text" id="S3.T1.2.1.5.2.1.1.17.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib197" title="">2019</a><span class="ltx_text" id="S3.T1.2.1.5.2.1.1.18.2.2.1" style="font-size:90%;">)</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.6.1" style="padding:0.45pt 15.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.1.1" style="font-size:90%;">Temporal Segmentation</span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.1.6.2" style="width:398.3pt;padding:0.45pt 15.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.1.6.2.1">
<span class="ltx_p" id="S3.T1.2.1.6.2.1.1"><span class="ltx_text" id="S3.T1.2.1.6.2.1.1.1" style="font-size:90%;">Breakfast </span><cite class="ltx_cite ltx_citemacro_cite">Kuehne et al. <span class="ltx_text" id="S3.T1.2.1.6.2.1.1.2.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib90" title="">2014</a><span class="ltx_text" id="S3.T1.2.1.6.2.1.1.3.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.6.2.1.1.4" style="font-size:90%;">, ViTT </span><cite class="ltx_cite ltx_citemacro_cite">Huang et al. <span class="ltx_text" id="S3.T1.2.1.6.2.1.1.5.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib65" title="">2020a</a><span class="ltx_text" id="S3.T1.2.1.6.2.1.1.6.2.2.1" style="font-size:90%;">)</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.7.1" style="padding:0.45pt 15.0pt;"><span class="ltx_text" id="S3.T1.2.1.7.1.1" style="font-size:90%;">Temporal Reasoning</span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.1.7.2" style="width:398.3pt;padding:0.45pt 15.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.1.7.2.1">
<span class="ltx_p" id="S3.T1.2.1.7.2.1.1"><span class="ltx_text" id="S3.T1.2.1.7.2.1.1.1" style="font-size:90%;">ActivityNet-RTL </span><cite class="ltx_cite ltx_citemacro_cite">Huang et al. <span class="ltx_text" id="S3.T1.2.1.7.2.1.1.2.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib64" title="">2024a</a><span class="ltx_text" id="S3.T1.2.1.7.2.1.1.3.2.2.1" style="font-size:90%;">)</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.8.1" style="padding:0.45pt 15.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.1.1" style="font-size:90%;">General Video QA</span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.1.8.2" style="width:398.3pt;padding:0.45pt 15.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.1.8.2.1">
<span class="ltx_p" id="S3.T1.2.1.8.2.1.1"><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.1" style="font-size:90%;">TVQA </span><cite class="ltx_cite ltx_citemacro_cite">Lei et al. <span class="ltx_text" id="S3.T1.2.1.8.2.1.1.2.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib98" title="">2018</a><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.3.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.4" style="font-size:90%;">, CLEVRER </span><cite class="ltx_cite ltx_citemacro_cite">Yi et al. <span class="ltx_text" id="S3.T1.2.1.8.2.1.1.5.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib237" title="">2020</a><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.6.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.7" style="font-size:90%;">, NextQA </span><cite class="ltx_cite ltx_citemacro_cite">Xiao et al. <span class="ltx_text" id="S3.T1.2.1.8.2.1.1.8.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib226" title="">2021</a><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.9.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.10" style="font-size:90%;">, SportsQA </span><cite class="ltx_cite ltx_citemacro_cite">Li et al. <span class="ltx_text" id="S3.T1.2.1.8.2.1.1.11.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib102" title="">2024c</a><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.12.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.13" style="font-size:90%;">, LLaVA-Video </span><cite class="ltx_cite ltx_citemacro_cite">Zhang et al. <span class="ltx_text" id="S3.T1.2.1.8.2.1.1.14.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib264" title="">2024h</a><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.15.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.16" style="font-size:90%;">, FineVideo </span><cite class="ltx_cite ltx_citemacro_cite">Farré et al. <span class="ltx_text" id="S3.T1.2.1.8.2.1.1.17.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib44" title="">2024</a><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.18.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.19" style="font-size:90%;">, VideoGPT+ </span><cite class="ltx_cite ltx_citemacro_cite">Maaz et al. <span class="ltx_text" id="S3.T1.2.1.8.2.1.1.20.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib138" title="">2024</a><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.21.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.22" style="font-size:90%;">, Oops </span><cite class="ltx_cite ltx_citemacro_cite">Epstein et al. <span class="ltx_text" id="S3.T1.2.1.8.2.1.1.23.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib42" title="">2020</a><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.24.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.25" style="font-size:90%;">, Perception-Test </span><cite class="ltx_cite ltx_citemacro_cite">Patraucean et al. <span class="ltx_text" id="S3.T1.2.1.8.2.1.1.26.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib164" title="">2023b</a><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.27.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.28" style="font-size:90%;">, EgoTaskQA </span><cite class="ltx_cite ltx_citemacro_cite">Jia et al. <span class="ltx_text" id="S3.T1.2.1.8.2.1.1.29.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib76" title="">2022</a><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.30.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.31" style="font-size:90%;">, CinePile </span><cite class="ltx_cite ltx_citemacro_cite">Rawal et al. <span class="ltx_text" id="S3.T1.2.1.8.2.1.1.32.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib171" title="">2024</a><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.33.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.34" style="font-size:90%;">, STAR </span><cite class="ltx_cite ltx_citemacro_cite">Wu et al. <span class="ltx_text" id="S3.T1.2.1.8.2.1.1.35.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib221" title="">2024a</a><span class="ltx_text" id="S3.T1.2.1.8.2.1.1.36.2.2.1" style="font-size:90%;">)</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.9.1" style="padding:0.45pt 15.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.1.1" style="font-size:90%;">Multi-Page Document</span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.1.9.2" style="width:398.3pt;padding:0.45pt 15.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.1.9.2.1">
<span class="ltx_p" id="S3.T1.2.1.9.2.1.1"><span class="ltx_text" id="S3.T1.2.1.9.2.1.1.1" style="font-size:90%;">SlideVQA </span><cite class="ltx_cite ltx_citemacro_cite">Tanaka et al. <span class="ltx_text" id="S3.T1.2.1.9.2.1.1.2.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib194" title="">2023</a><span class="ltx_text" id="S3.T1.2.1.9.2.1.1.3.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.9.2.1.1.4" style="font-size:90%;">, DUDE </span><cite class="ltx_cite ltx_citemacro_cite">Van Landeghem et al. <span class="ltx_text" id="S3.T1.2.1.9.2.1.1.5.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib208" title="">2023</a><span class="ltx_text" id="S3.T1.2.1.9.2.1.1.6.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.9.2.1.1.7" style="font-size:90%;">, MP-DocVQA </span><cite class="ltx_cite ltx_citemacro_cite">Tito et al. <span class="ltx_text" id="S3.T1.2.1.9.2.1.1.8.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib203" title="">2023</a><span class="ltx_text" id="S3.T1.2.1.9.2.1.1.9.2.2.1" style="font-size:90%;">)</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.10.1" style="padding:0.45pt 15.0pt;"><span class="ltx_text" id="S3.T1.2.1.10.1.1" style="font-size:90%;">Video Captioning</span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.1.10.2" style="width:398.3pt;padding:0.45pt 15.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.1.10.2.1">
<span class="ltx_p" id="S3.T1.2.1.10.2.1.1"><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.1" style="font-size:90%;">ActivityNet </span><cite class="ltx_cite ltx_citemacro_cite">Caba Heilbron et al. <span class="ltx_text" id="S3.T1.2.1.10.2.1.1.2.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib16" title="">2015</a><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.3.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.4" style="font-size:90%;">, Youcook2 </span><cite class="ltx_cite ltx_citemacro_cite">Zhou et al. <span class="ltx_text" id="S3.T1.2.1.10.2.1.1.5.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib274" title="">2018</a><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.6.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.7" style="font-size:90%;">, Shot2story </span><cite class="ltx_cite ltx_citemacro_cite">Han et al. <span class="ltx_text" id="S3.T1.2.1.10.2.1.1.8.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib56" title="">2023</a><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.9.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.10" style="font-size:90%;">, Vript </span><cite class="ltx_cite ltx_citemacro_cite">Yang et al. <span class="ltx_text" id="S3.T1.2.1.10.2.1.1.11.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib233" title="">2025</a><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.12.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.13" style="font-size:90%;">, LLaVA-Video </span><cite class="ltx_cite ltx_citemacro_cite">Zhang et al. <span class="ltx_text" id="S3.T1.2.1.10.2.1.1.14.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib264" title="">2024h</a><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.15.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.16" style="font-size:90%;">, Momentos </span><cite class="ltx_cite ltx_citemacro_cite">Wang et al. <span class="ltx_text" id="S3.T1.2.1.10.2.1.1.17.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib214" title="">2024b</a><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.18.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.19" style="font-size:90%;">, FunQA </span><cite class="ltx_cite ltx_citemacro_cite">Xie et al. <span class="ltx_text" id="S3.T1.2.1.10.2.1.1.20.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib227" title="">2024</a><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.21.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.22" style="font-size:90%;">, S-MiT </span><cite class="ltx_cite ltx_citemacro_cite">Monfort et al. <span class="ltx_text" id="S3.T1.2.1.10.2.1.1.23.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib152" title="">2021</a><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.24.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.25" style="font-size:90%;">, LLaVA-Hound </span><cite class="ltx_cite ltx_citemacro_cite">Zhang et al. <span class="ltx_text" id="S3.T1.2.1.10.2.1.1.26.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib261" title="">2024f</a><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.27.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.28" style="font-size:90%;">, Ego4D-HCap </span><cite class="ltx_cite ltx_citemacro_cite">Islam et al. <span class="ltx_text" id="S3.T1.2.1.10.2.1.1.29.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib73" title="">2024</a><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.30.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.31" style="font-size:90%;">, EgoExoLearn </span><cite class="ltx_cite ltx_citemacro_cite">Huang et al. <span class="ltx_text" id="S3.T1.2.1.10.2.1.1.32.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib67" title="">2024b</a><span class="ltx_text" id="S3.T1.2.1.10.2.1.1.33.2.2.1" style="font-size:90%;">)</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.11">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.11.1" style="padding:0.45pt 15.0pt;"><span class="ltx_text" id="S3.T1.2.1.11.1.1" style="font-size:90%;">Long Text</span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.1.11.2" style="width:398.3pt;padding:0.45pt 15.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.1.11.2.1">
<span class="ltx_p" id="S3.T1.2.1.11.2.1.1"><span class="ltx_text" id="S3.T1.2.1.11.2.1.1.1" style="font-size:90%;">LongAlign </span><cite class="ltx_cite ltx_citemacro_cite">Bai et al. <span class="ltx_text" id="S3.T1.2.1.11.2.1.1.2.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib12" title="">2024</a><span class="ltx_text" id="S3.T1.2.1.11.2.1.1.3.2.2.1" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T1.2.1.11.2.1.1.4" style="font-size:90%;">, LongReward </span><cite class="ltx_cite ltx_citemacro_cite">Zhang et al. <span class="ltx_text" id="S3.T1.2.1.11.2.1.1.5.1.1.1" style="font-size:90%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib257" title="">2024c</a><span class="ltx_text" id="S3.T1.2.1.11.2.1.1.6.2.2.1" style="font-size:90%;">)</span></cite></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table lists the video, multi-page document, and long text datasets used to train the Eagle-2.5 model.  It provides details on the type of data (e.g., video classification, temporal action localization), the dataset name, and the relevant references for each dataset.
> <details>
> <summary>read the caption</summary>
> Table 1: Video, multi-page document, and long text dataset used in Eagle-2.5.
> </details>





### In-depth insights


#### Long Context VLMs
**Long-context VLMs** are explored to address the challenges of processing large multimodal sequences, a critical area in AI research. Current methods fall into two categories: **specialized modules for context compression** and **direct extension of LLM context**. Compression modules use techniques like question-guided cues or token reduction, while direct extension methods, such as LongVA and LongViTA, increase LLM context length.  Despite promise, these approaches often underperform, lack consistent gains with increasing visual input, and have unexplored training constraints.  The schema suggests developing native long-context capabilities by enhancing training data and formulations, avoiding compression modules, and addressing performance inconsistencies. This offers a more robust and scalable solution for advanced multimodal processing.

#### Eagle2.5: Details
While the document doesn't explicitly have a section titled "Eagle 2.5: Details," the content does discuss the architecture, training strategies, and data recipes, which implicitly provide details. **Eagle 2.5 is a family of VLMs** designed for long-context multimodal learning and utilizes two key techniques: Automatic Degrade Sampling and Image Area Preservation. Efficiency optimizations streamline long-context data training. The Eagle-Video-110K dataset facilitates long-video understanding. The model is built upon the Qwen2.5 architecture with an MLP projection layer and tiling strategy to handle images of any resolution. Training involves an information-first sampling strategy, with a progressive schedule. Long-context open-source datasets complement the self-curated Eagle-Video-110K, enhancing long-video understanding. This dual approach annotates videos at both story and clip levels, creating comprehensive QA pairs, which overall paints a comprehensive picture of Eagle2.5's detailed design and implementation.

#### Training Strategies
**Information-first sampling** is a key strategy. It uses Image Area Preservation and Automatic Degradation Sampling to retain visual and semantic integrity. **Progressive training** incrementally expands context length during training, boosting the model's ability to handle varying input sizes and types, improving overall information density. Both strategies are key for efficient long-context training.

#### Video Benchmarks
**Video benchmarks** are crucial for assessing the performance of vision-language models (VLMs) in understanding and processing video content. The evaluation includes tasks like video classification, temporal action localization, and dense video captioning, demanding models to capture both spatial and temporal information effectively. The paper also mentions various datasets used for benchmarking, like Kinetics, ActivityNet, and Video-MME. Models must be able to comprehend complex scenes, human actions, and relationships between objects across time.

#### Image Diversity
**Image diversity** is paramount in multimodal learning, particularly when dealing with visual data. A varied dataset exposes the model to a broader range of features, styles, and contexts, enhancing its ability to generalize and perform robustly across diverse real-world scenarios.  The concept emphasizes collecting and curating images that represent various scenes, objects, styles, and visual conditions. By exposing the model to a wide spectrum of visual information, we can significantly improve its ability to understand and interact with the visual world, regardless of the specific content or style. **High diversity helps minimize biases**, ensuring that the model doesn't become overly specialized in a narrow subset of visual inputs. **The objective is to build a robust and generalized model.**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.15271/x2.png)

> 🔼 This figure illustrates the architecture of the Eagle 2.5 multimodal system.  The system is designed to handle long-context inputs, which consist of text and multiple images or a long video.  The text is first processed through an LLM (Large Language Model). The visual input, which can be a high-resolution image or long video sequence, is divided into tiles using a tiling mechanism (details not shown here, but described in the paper) before undergoing feature extraction. The visual embeddings (extracted features) from SigLIP are then projected into the same representation space as the LLM outputs using an MLP connector layer. These text and vision representations are then combined to enable multimodal understanding and response generation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Tiling-based general multimodal system.
> </details>



![](https://arxiv.org/html/2504.15271/x3.png)

> 🔼 This figure compares two image tiling strategies for processing high-resolution images in a vision-language model.  InternVL's method (a) divides the image into a fixed grid of tiles, potentially losing a significant portion of the original image, especially with high-resolution inputs due to rigid aspect ratio constraints.  Eagle 2.5's approach (b), in contrast, prioritizes preserving the original image area and aspect ratio.  The visualization shows how Eagle 2.5's method retains a considerably larger portion of the original image, preserving more comprehensive visual information. This is crucial for tasks demanding fine-grained visual detail.
> <details>
> <summary>read the caption</summary>
> Figure 3: Image area preservation. Compared to the tiling strategy (a) from InternVL Team (2024a), our method (b) effectively retains a larger portion of the original image, especially for high-resolution inputs. This ensures that more comprehensive visual information is preserved, benefiting tasks that require fine-grained details.
> </details>



![](https://arxiv.org/html/2504.15271/x4.png)

> 🔼 This histogram illustrates the distribution of video durations within the Eagle-Video-110K dataset and a collection of open-source datasets.  The x-axis represents video duration in seconds (log scale), and the y-axis shows the frequency of videos of that length.  The plot allows for a visual comparison of the length of videos present in Eagle-Video-110K versus those found in other, more readily available open-source datasets. This comparison highlights the difference in video lengths, illustrating that Eagle-Video-110K contains significantly more longer videos than typical open-source data.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of video duration between open-source data and Eagle-Video-110K.
> </details>



![](https://arxiv.org/html/2504.15271/x5.png)

> 🔼 Figure 5 illustrates the dual annotation strategy used in the Eagle-Video-110K dataset creation.  The bottom-up approach uses GPT-4 to automatically generate clip-level question-answer (QA) pairs from short video clips.  These QA pairs include time and textual context anchors to provide richer spatiotemporal information. The top-down approach leverages human annotators to segment longer videos into meaningful story-level chapters.  These chapters are then captioned, and GPT-4 is used to generate comprehensive story-level QA pairs. This combined approach ensures both fine-grained temporal and high-level semantic understanding of the video content.
> <details>
> <summary>read the caption</summary>
> Figure 5: Overview of our video annotation framework combining bottom-up clip-level and top-down story-level approaches. The diagram illustrates our dual annotation strategy. In the bottom-up approach (left), short video clips are processed by GPT-4o to generate clip-level QA pairs enhanced with time anchors and textural context anchors. In the top-down approach (right), human annotators create story-level segmentations of longer videos, which are then captioned and processed by GPT-4 to generate comprehensive story-level QA pairs. This hierarchical methodology enables both fine-grained temporal understanding and high-level semantic comprehension of video content.
> </details>



![](https://arxiv.org/html/2504.15271/x6.png)

> 🔼 This figure illustrates the performance of Eagle 2.5 on the Video-MME benchmark under different training conditions.  Specifically, it shows how the inclusion of the Eagle-Video-110K dataset and the use of a progressive mixed post-training schedule affect the model's ability to handle varying numbers of input frames (context length).  The results demonstrate that both the additional dataset and the progressive training strategy lead to significant improvements, particularly for longer videos with many frames. The graph likely shows consistent performance gains as the number of frames increases, highlighting the model's enhanced long-context capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 6: The impact of Eagle-Video-110K dataset and different post-training schedules on the performance of Video-MME.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.2.1">
<tr class="ltx_tr" id="S3.T2.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.2.1.1.1" rowspan="2" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.1.2" style="padding:0.9pt 2.5pt;">MVBench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.1.3" style="padding:0.9pt 2.5pt;">Perception_test</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.1.4" style="padding:0.9pt 2.5pt;">EgoSchema</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.1.5" style="padding:0.9pt 2.5pt;">MMB-Video</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.1.6" style="padding:0.9pt 2.5pt;">MLVU</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.1.7" style="padding:0.9pt 2.5pt;">LVBench</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S3.T2.2.1.1.8" style="padding:0.9pt 2.5pt;">Video-MME</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S3.T2.2.1.1.9" style="padding:0.9pt 2.5pt;">CG-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S3.T2.2.1.1.10" style="padding:0.9pt 2.5pt;">HourVideo</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.1.11" style="padding:0.9pt 2.5pt;">Charade-STA</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.2">
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.1" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.2" style="padding:0.9pt 2.5pt;">Val</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.2.3" style="padding:0.9pt 2.5pt;">fullset</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.2.4" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.2.5" style="padding:0.9pt 2.5pt;">Val</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.2.6" style="padding:0.9pt 2.5pt;">Val</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.7" style="padding:0.9pt 2.5pt;">w/o subtitle</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.2.8" style="padding:0.9pt 2.5pt;">w subtitle</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.9" style="padding:0.9pt 2.5pt;">Clue</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.10" style="padding:0.9pt 2.5pt;">Long</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.11" style="padding:0.9pt 2.5pt;">Open</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.2.12" style="padding:0.9pt 2.5pt;">mIoU</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.13" style="padding:0.9pt 2.5pt;">Dev</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.2.14" style="padding:0.9pt 2.5pt;">Test</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.15" style="padding:0.9pt 2.5pt;">mIoU</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="S3.T2.2.1.3.1" style="padding:0.9pt 2.5pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T2.2.1.3.1.1">Closed-Source Models</span></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.3.2" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.3.3" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.3.4" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.3.5" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.3.6" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.3.7" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.3.8" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.3.9" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.3.10" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.3.11" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.3.12" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.3.13" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.3.14" style="padding:0.9pt 2.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.2.1.4.1" style="padding:0.9pt 2.5pt;">GPT-4o-0806 <cite class="ltx_cite ltx_citemacro_cite">OpenAI (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib160" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.4.2" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.4.3" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.4.4" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.4.5" style="padding:0.9pt 2.5pt;">1.63</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.4.6" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.4.7" style="padding:0.9pt 2.5pt;">66.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.4.8" style="padding:0.9pt 2.5pt;">71.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.4.9" style="padding:0.9pt 2.5pt;">77.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.4.10" style="padding:0.9pt 2.5pt;">58.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.4.11" style="padding:0.9pt 2.5pt;">44.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.4.12" style="padding:0.9pt 2.5pt;">39.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.4.13" style="padding:0.9pt 2.5pt;">5.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.4.14" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.4.15" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.4.16" style="padding:0.9pt 2.5pt;">35.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.5.1" style="padding:0.9pt 2.5pt;">Claude-3.5-Sonnet <cite class="ltx_cite ltx_citemacro_cite">Anthropic (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib4" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.2" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.3" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.5.4" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.5.5" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.5.6" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.5.7" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.8" style="padding:0.9pt 2.5pt;">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.5.9" style="padding:0.9pt 2.5pt;">62.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.10" style="padding:0.9pt 2.5pt;">56.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.11" style="padding:0.9pt 2.5pt;">40.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.12" style="padding:0.9pt 2.5pt;">35.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.5.13" style="padding:0.9pt 2.5pt;">4.17</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.14" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.5.15" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.16" style="padding:0.9pt 2.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.6.1" style="padding:0.9pt 2.5pt;">Gemini-1.5-Pro <cite class="ltx_cite ltx_citemacro_cite">Reid et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib172" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.2" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.3" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.6.4" style="padding:0.9pt 2.5pt;">72.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.6.5" style="padding:0.9pt 2.5pt;">1.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.6.6" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.6.7" style="padding:0.9pt 2.5pt;">64.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.8" style="padding:0.9pt 2.5pt;">75.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.6.9" style="padding:0.9pt 2.5pt;">81.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.10" style="padding:0.9pt 2.5pt;">50.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.11" style="padding:0.9pt 2.5pt;">37.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.12" style="padding:0.9pt 2.5pt;">28.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.6.13" style="padding:0.9pt 2.5pt;">3.85</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.14" style="padding:0.9pt 2.5pt;">37.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.6.15" style="padding:0.9pt 2.5pt;">37.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.16" style="padding:0.9pt 2.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="S3.T2.2.1.7.1" style="padding:0.9pt 2.5pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T2.2.1.7.1.1">Publicly Available Models</span></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.7.2" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.7.3" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.7.4" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.7.5" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.7.6" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.7.7" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.7.8" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.7.9" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.7.10" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.7.11" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.7.12" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.7.13" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.2.1.7.14" style="padding:0.9pt 2.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.2.1.8.1" style="padding:0.9pt 2.5pt;">MiniCPM-V2.6-8B <cite class="ltx_cite ltx_citemacro_cite">Yao et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib235" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.8.2" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.8.3" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.8.4" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.8.5" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.8.6" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.8.7" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.8.8" style="padding:0.9pt 2.5pt;">60.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.8.9" style="padding:0.9pt 2.5pt;">63.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.8.10" style="padding:0.9pt 2.5pt;">44.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.8.11" style="padding:0.9pt 2.5pt;">29.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.8.12" style="padding:0.9pt 2.5pt;">26.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.8.13" style="padding:0.9pt 2.5pt;">2.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.8.14" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.8.15" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.8.16" style="padding:0.9pt 2.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.9.1" style="padding:0.9pt 2.5pt;">LongVILA-8B <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib30" title="">2024f</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.2" style="padding:0.9pt 2.5pt;">67.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.3" style="padding:0.9pt 2.5pt;">58.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.9.4" style="padding:0.9pt 2.5pt;">67.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.9.5" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.9.6" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.9.7" style="padding:0.9pt 2.5pt;">57.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.8" style="padding:0.9pt 2.5pt;">60.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.9.9" style="padding:0.9pt 2.5pt;">65.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.10" style="padding:0.9pt 2.5pt;">47.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.11" style="padding:0.9pt 2.5pt;">34.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.12" style="padding:0.9pt 2.5pt;">26.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.9.13" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.14" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.9.15" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.16" style="padding:0.9pt 2.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.10.1" style="padding:0.9pt 2.5pt;">InternVL2.5-8B <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib32" title="">2024g</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.2" style="padding:0.9pt 2.5pt;">72.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.3" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.10.4" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.10.5" style="padding:0.9pt 2.5pt;">1.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.10.6" style="padding:0.9pt 2.5pt;">68.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.10.7" style="padding:0.9pt 2.5pt;">60.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.8" style="padding:0.9pt 2.5pt;">64.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.10.9" style="padding:0.9pt 2.5pt;">66.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.10" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.11" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.12" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.10.13" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.14" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.10.15" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.16" style="padding:0.9pt 2.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.11.1" style="padding:0.9pt 2.5pt;">LLaVA-Video-8B <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib265" title="">2024i</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.2" style="padding:0.9pt 2.5pt;">58.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.3" style="padding:0.9pt 2.5pt;">67.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.11.4" style="padding:0.9pt 2.5pt;">57.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.11.5" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.11.6" style="padding:0.9pt 2.5pt;">70.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.11.7" style="padding:0.9pt 2.5pt;">58.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.8" style="padding:0.9pt 2.5pt;">63.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.11.9" style="padding:0.9pt 2.5pt;">69.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.10" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.11" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.12" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.11.13" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.14" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.11.15" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.16" style="padding:0.9pt 2.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.12.1" style="padding:0.9pt 2.5pt;">Qwen2.5-VL-8B <cite class="ltx_cite ltx_citemacro_cite">Bai et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib11" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.2" style="padding:0.9pt 2.5pt;">69.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.3" style="padding:0.9pt 2.5pt;">70.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.12.4" style="padding:0.9pt 2.5pt;">65.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.12.5" style="padding:0.9pt 2.5pt;">1.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.12.6" style="padding:0.9pt 2.5pt;">70.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.12.7" style="padding:0.9pt 2.5pt;">56.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.8" style="padding:0.9pt 2.5pt;">65.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.12.9" style="padding:0.9pt 2.5pt;">71.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.10" style="padding:0.9pt 2.5pt;">44.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.11" style="padding:0.9pt 2.5pt;">35.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.12" style="padding:0.9pt 2.5pt;">24.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.12.13" style="padding:0.9pt 2.5pt;">2.48</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.14" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.12.15" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.16" style="padding:0.9pt 2.5pt;">43.6</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.13.1" style="padding:0.9pt 2.5pt;">VideoChat-Flash-8B <cite class="ltx_cite ltx_citemacro_cite">Li et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib110" title="">2024d</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.2" style="padding:0.9pt 2.5pt;">74.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.3" style="padding:0.9pt 2.5pt;">76.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.13.4" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.13.5" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.13.6" style="padding:0.9pt 2.5pt;">74.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.13.7" style="padding:0.9pt 2.5pt;">64.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.8" style="padding:0.9pt 2.5pt;">65.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.13.9" style="padding:0.9pt 2.5pt;">69.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.10" style="padding:0.9pt 2.5pt;">52.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.11" style="padding:0.9pt 2.5pt;">43.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.12" style="padding:0.9pt 2.5pt;">37.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.13.13" style="padding:0.9pt 2.5pt;">1.49</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.14" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.13.15" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.16" style="padding:0.9pt 2.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.14.1" style="padding:0.9pt 2.5pt;">
<span class="ltx_text" id="S3.T2.2.1.14.1.1" style="color:#808080;">InternVL2.5-78B</span> <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib32" title="">2024g</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.2" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.14.2.1" style="color:#808080;">76.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.3" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.14.3.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.14.4" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.14.4.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.14.5" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.14.5.1" style="color:#808080;">1.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.14.6" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.14.6.1" style="color:#808080;">75.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.14.7" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.14.7.1" style="color:#808080;">63.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.8" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.14.8.1" style="color:#808080;">72.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.14.9" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.14.9.1" style="color:#808080;">74.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.10" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.14.10.1" style="color:#808080;">59.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.11" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.14.11.1" style="color:#808080;">44.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.12" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.14.12.1" style="color:#808080;">34.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.14.13" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.14.13.1" style="color:#808080;">3.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.14" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.14.14.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.14.15" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.14.15.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.16" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.14.16.1" style="color:#808080;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.15.1" style="padding:0.9pt 2.5pt;">
<span class="ltx_text" id="S3.T2.2.1.15.1.1" style="color:#808080;">Qwen2.5-VL-72B</span> <cite class="ltx_cite ltx_citemacro_cite">Bai et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib11" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.2" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.15.2.1" style="color:#808080;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.3" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.15.3.1" style="color:#808080;">73.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.15.4" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.15.4.1" style="color:#808080;">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.15.5" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.15.5.1" style="color:#808080;">2.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.15.6" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.15.6.1" style="color:#808080;">74.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.15.7" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.15.7.1" style="color:#808080;">60.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.8" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.15.8.1" style="color:#808080;">73.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.15.9" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.15.9.1" style="color:#808080;">79.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.10" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.15.10.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.11" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.15.11.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.12" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.15.12.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.15.13" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.15.13.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.14" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.15.14.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.15.15" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.15.15.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.16" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.15.16.1" style="color:#808080;">50.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.16.1" style="padding:0.9pt 2.5pt;">
<span class="ltx_text" id="S3.T2.2.1.16.1.1" style="color:#808080;">LLaVA-Video-72B</span> <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib265" title="">2024i</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.2" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.16.2.1" style="color:#808080;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.3" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.16.3.1" style="color:#808080;">74.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.16.4" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.16.4.1" style="color:#808080;">65.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.16.5" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.16.5.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.16.6" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.16.6.1" style="color:#808080;">74.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.16.7" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.16.7.1" style="color:#808080;">61.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.8" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.16.8.1" style="color:#808080;">70.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.16.9" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.16.9.1" style="color:#808080;">76.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.10" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.16.10.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.11" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.16.11.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.12" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.16.12.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.16.13" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.16.13.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.14" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.16.14.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.16.15" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.16.15.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.16" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.16.16.1" style="color:#808080;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.17" style="background-color:#CBF0CB;">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S3.T2.2.1.17.1" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.17.1.1" style="background-color:#CBF0CB;">Eagle2.5-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.2.1.17.2" style="padding:0.9pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.17.2.1" style="background-color:#CBF0CB;">74.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.2.1.17.3" style="padding:0.9pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.17.3.1" style="background-color:#CBF0CB;">82.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.2.1.17.4" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.17.4.1" style="background-color:#CBF0CB;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.2.1.17.5" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.17.5.1" style="background-color:#CBF0CB;">1.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.2.1.17.6" style="padding:0.9pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.17.6.1" style="background-color:#CBF0CB;">77.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.2.1.17.7" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.17.7.1" style="background-color:#CBF0CB;">66.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.2.1.17.8" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.17.8.1" style="background-color:#CBF0CB;">72.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.2.1.17.9" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.17.9.1" style="background-color:#CBF0CB;">75.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.2.1.17.10" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T2.2.1.17.10.1" style="background-color:#CBF0CB;">55.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.2.1.17.11" style="padding:0.9pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.17.11.1" style="background-color:#CBF0CB;">46.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.2.1.17.12" style="padding:0.9pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.17.12.1" style="background-color:#CBF0CB;">45.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.2.1.17.13" style="padding:0.9pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.17.13.1" style="background-color:#CBF0CB;">13.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.2.1.17.14" style="padding:0.9pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.17.14.1" style="background-color:#CBF0CB;">44.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.2.1.17.15" style="padding:0.9pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.17.15.1" style="background-color:#CBF0CB;">41.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.2.1.17.16" style="padding:0.9pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.17.16.1" style="background-color:#CBF0CB;">65.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of Eagle 2.5-8B with other state-of-the-art (SoTA) vision-language models on several video benchmark datasets.  The comparison considers various metrics across datasets such as MVBench, Perception_test, EgoSchema, MMB-Video, MLVU, LVBench, Video-MME, CG-Bench, HourVideo, and Charade-STA.  A key aspect of the evaluation is the handling of long video contexts, with frame sampling rates and maximum frame input lengths specified.  The table highlights Eagle 2.5's consistent improvement in performance as the number of input frames increases, demonstrating its ability to effectively process longer video sequences.  Specific details on the experimental setup include a default sampling rate of 2 FPS, disabling of tiling for most benchmarks (except Perception-Test, which uses tiling to evaluate high-resolution performance), and a minimum of 8 frames per video. The maximum number of input frames varies across datasets, with Video-MME using 512 frames while others utilize 256.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison with SoTA models on Various Video Benchmarks. We sample each video at 2 FPS by default and disable tiling, and limit the minimum sampling frame number to 8 frames. Among them, the maximum frame number of Video-MME is 512, and the others are 256. Perception-Test turns on tiling to enable high-resolution testing.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.1.1">
<tr class="ltx_tr" id="S3.T3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.1.2" rowspan="2" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.3" style="padding:0.9pt 2.5pt;">DocVQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.4" style="padding:0.9pt 2.5pt;">ChartQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.5" style="padding:0.9pt 2.5pt;">InfoVQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.6" style="padding:0.9pt 2.5pt;">TextVQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.7" style="padding:0.9pt 2.5pt;">OCRBench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.8" style="padding:0.9pt 2.5pt;">MMstar</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.9" style="padding:0.9pt 2.5pt;">RWQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.10" style="padding:0.9pt 2.5pt;">AI2D</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.11" style="padding:0.9pt 2.5pt;">MMMU</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.1" style="padding:0.9pt 2.5pt;">MMB<sub class="ltx_sub" id="S3.T3.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T3.1.1.1.1.1.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.12" style="padding:0.9pt 2.5pt;">MMVet</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.13" style="padding:0.9pt 2.5pt;">HallB</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.1.14" style="padding:0.9pt 2.5pt;">MathVista</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.15" style="padding:0.9pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.15.1">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.2">
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.2.1" style="padding:0.9pt 2.5pt;">Test</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.2.2" style="padding:0.9pt 2.5pt;">Test</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.2.3" style="padding:0.9pt 2.5pt;">Test</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.2.4" style="padding:0.9pt 2.5pt;">Val</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.2.5" style="padding:0.9pt 2.5pt;">Test</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.2.6" style="padding:0.9pt 2.5pt;">Test</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.2.7" style="padding:0.9pt 2.5pt;">Test</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.2.8" style="padding:0.9pt 2.5pt;">Test</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.2.9" style="padding:0.9pt 2.5pt;">Val</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.2.10" style="padding:0.9pt 2.5pt;">Test</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.2.11" style="padding:0.9pt 2.5pt;">Test</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.2.12" style="padding:0.9pt 2.5pt;">Test</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.2.13" style="padding:0.9pt 2.5pt;">Test-Mini</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.2.14" style="padding:0.9pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.14.1">Score</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="S3.T3.1.1.3.1" style="padding:0.9pt 2.5pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T3.1.1.3.1.1">Closed-Source Models</span></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.3.2" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.3.3" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.3.4" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.3.5" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.3.6" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.3.7" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.3.8" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.3.9" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.3.10" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.3.11" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.3.12" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.3.13" style="padding:0.9pt 2.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.4.1" style="padding:0.9pt 2.5pt;">GPT-4o-0806 <cite class="ltx_cite ltx_citemacro_cite">OpenAI (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib160" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.2" style="padding:0.9pt 2.5pt;">92.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.3" style="padding:0.9pt 2.5pt;">85.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.4" style="padding:0.9pt 2.5pt;">79.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.5" style="padding:0.9pt 2.5pt;">77.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.6" style="padding:0.9pt 2.5pt;">736</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.7" style="padding:0.9pt 2.5pt;">64.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.8" style="padding:0.9pt 2.5pt;">75.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.9" style="padding:0.9pt 2.5pt;">84.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.10" style="padding:0.9pt 2.5pt;">69.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.11" style="padding:0.9pt 2.5pt;">83.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.12" style="padding:0.9pt 2.5pt;">69.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.13" style="padding:0.9pt 2.5pt;">55.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.4.14" style="padding:0.9pt 2.5pt;">63.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.15" style="padding:0.9pt 2.5pt;">74.9</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.5.1" style="padding:0.9pt 2.5pt;">Claude-3.5-Sonnet <cite class="ltx_cite ltx_citemacro_cite">Anthropic (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib4" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.2" style="padding:0.9pt 2.5pt;">95.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.3" style="padding:0.9pt 2.5pt;">90.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.4" style="padding:0.9pt 2.5pt;">74.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.5" style="padding:0.9pt 2.5pt;">74.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.6" style="padding:0.9pt 2.5pt;">788</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.7" style="padding:0.9pt 2.5pt;">65.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.8" style="padding:0.9pt 2.5pt;">60.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.9" style="padding:0.9pt 2.5pt;">81.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.10" style="padding:0.9pt 2.5pt;">68.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.11" style="padding:0.9pt 2.5pt;">80.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.12" style="padding:0.9pt 2.5pt;">70.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.13" style="padding:0.9pt 2.5pt;">55.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.5.14" style="padding:0.9pt 2.5pt;">67.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.15" style="padding:0.9pt 2.5pt;">74.0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.6.1" style="padding:0.9pt 2.5pt;">Gemini-1.5-Pro <cite class="ltx_cite ltx_citemacro_cite">Reid et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib172" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.2" style="padding:0.9pt 2.5pt;">93.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.3" style="padding:0.9pt 2.5pt;">87.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.4" style="padding:0.9pt 2.5pt;">81.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.5" style="padding:0.9pt 2.5pt;">78.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.6" style="padding:0.9pt 2.5pt;">754</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.7" style="padding:0.9pt 2.5pt;">59.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.8" style="padding:0.9pt 2.5pt;">67.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.9" style="padding:0.9pt 2.5pt;">79.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.10" style="padding:0.9pt 2.5pt;">62.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.11" style="padding:0.9pt 2.5pt;">74.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.12" style="padding:0.9pt 2.5pt;">64.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.13" style="padding:0.9pt 2.5pt;">45.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.6.14" style="padding:0.9pt 2.5pt;">63.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.15" style="padding:0.9pt 2.5pt;">71.7</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="S3.T3.1.1.7.1" style="padding:0.9pt 2.5pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T3.1.1.7.1.1">Publicly Available Models</span></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.7.2" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.7.3" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.7.4" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.7.5" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.7.6" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.7.7" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.7.8" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.7.9" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.7.10" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.7.11" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.7.12" style="padding:0.9pt 2.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.1.7.13" style="padding:0.9pt 2.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.8.1" style="padding:0.9pt 2.5pt;">MiniCPM-V2.6-8B <cite class="ltx_cite ltx_citemacro_cite">Yao et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib235" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.8.2" style="padding:0.9pt 2.5pt;">90.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.8.3" style="padding:0.9pt 2.5pt;">82.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.8.4" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.8.5" style="padding:0.9pt 2.5pt;">80.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.8.6" style="padding:0.9pt 2.5pt;">852</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.8.7" style="padding:0.9pt 2.5pt;">57.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.8.8" style="padding:0.9pt 2.5pt;">65.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.8.9" style="padding:0.9pt 2.5pt;">82.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.8.10" style="padding:0.9pt 2.5pt;">49.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.8.11" style="padding:0.9pt 2.5pt;">78.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.8.12" style="padding:0.9pt 2.5pt;">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.8.13" style="padding:0.9pt 2.5pt;">48.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.8.14" style="padding:0.9pt 2.5pt;">60.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.8.15" style="padding:0.9pt 2.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.9.1" style="padding:0.9pt 2.5pt;">LLaVA-One-Vision-8B <cite class="ltx_cite ltx_citemacro_cite">Li et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib100" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.2" style="padding:0.9pt 2.5pt;">87.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.3" style="padding:0.9pt 2.5pt;">80.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.4" style="padding:0.9pt 2.5pt;">68.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.5" style="padding:0.9pt 2.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.6" style="padding:0.9pt 2.5pt;">622</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.7" style="padding:0.9pt 2.5pt;">61.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.8" style="padding:0.9pt 2.5pt;">66.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.9" style="padding:0.9pt 2.5pt;">81.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.10" style="padding:0.9pt 2.5pt;">48.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.11" style="padding:0.9pt 2.5pt;">80.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.12" style="padding:0.9pt 2.5pt;">57.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.13" style="padding:0.9pt 2.5pt;">31.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.9.14" style="padding:0.9pt 2.5pt;">63.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.15" style="padding:0.9pt 2.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.10.1" style="padding:0.9pt 2.5pt;">InternVL2.5-8B <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib32" title="">2024g</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.10.2" style="padding:0.9pt 2.5pt;">93.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.10.3" style="padding:0.9pt 2.5pt;">84.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.10.4" style="padding:0.9pt 2.5pt;">77.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.10.5" style="padding:0.9pt 2.5pt;">79.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.10.6" style="padding:0.9pt 2.5pt;">822</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.10.7" style="padding:0.9pt 2.5pt;">62.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.10.8" style="padding:0.9pt 2.5pt;">70.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.10.9" style="padding:0.9pt 2.5pt;">84.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.10.10" style="padding:0.9pt 2.5pt;">56.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.10.11" style="padding:0.9pt 2.5pt;">83.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.10.12" style="padding:0.9pt 2.5pt;">62.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.10.13" style="padding:0.9pt 2.5pt;">50.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.10.14" style="padding:0.9pt 2.5pt;">64.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.10.15" style="padding:0.9pt 2.5pt;">73.1</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.11.1" style="padding:0.9pt 2.5pt;">Qwen2.5-VL-8B <cite class="ltx_cite ltx_citemacro_cite">Bai et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib11" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.2" style="padding:0.9pt 2.5pt;">95.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.3" style="padding:0.9pt 2.5pt;">87.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.4" style="padding:0.9pt 2.5pt;">82.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.5" style="padding:0.9pt 2.5pt;">84.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.6" style="padding:0.9pt 2.5pt;">864</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.7" style="padding:0.9pt 2.5pt;">63.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.8" style="padding:0.9pt 2.5pt;">68.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.9" style="padding:0.9pt 2.5pt;">83.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.10" style="padding:0.9pt 2.5pt;">58.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.11" style="padding:0.9pt 2.5pt;">82.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.12" style="padding:0.9pt 2.5pt;">67.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.13" style="padding:0.9pt 2.5pt;">52.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.11.14" style="padding:0.9pt 2.5pt;">68.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.15" style="padding:0.9pt 2.5pt;">75.6</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.12.1" style="padding:0.9pt 2.5pt;">
<span class="ltx_text" id="S3.T3.1.1.12.1.1" style="color:#808080;">LLaVA-One-Vision-72B</span> <cite class="ltx_cite ltx_citemacro_cite">Li et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib100" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.2" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.12.2.1" style="color:#808080;">91.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.3" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.12.3.1" style="color:#808080;">83.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.4" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.12.4.1" style="color:#808080;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.5" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.12.5.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.6" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.12.6.1" style="color:#808080;">741</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.7" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.12.7.1" style="color:#808080;">66.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.8" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.12.8.1" style="color:#808080;">71.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.9" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.12.9.1" style="color:#808080;">85.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.10" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.12.10.1" style="color:#808080;">56.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.11" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.12.11.1" style="color:#808080;">84.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.12" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.12.12.1" style="color:#808080;">60.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.13" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.12.13.1" style="color:#808080;">47.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.12.14" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.12.14.1" style="color:#808080;">68.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.15" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.12.15.1" style="color:#808080;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.13.1" style="padding:0.9pt 2.5pt;">
<span class="ltx_text" id="S3.T3.1.1.13.1.1" style="color:#808080;">LLaMa-3.2-90B-Vision</span> <cite class="ltx_cite ltx_citemacro_cite">Dubey et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib40" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.2" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.13.2.1" style="color:#808080;">90.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.3" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.13.3.1" style="color:#808080;">85.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.4" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.13.4.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.5" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.13.5.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.6" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.13.6.1" style="color:#808080;">783</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.7" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.13.7.1" style="color:#808080;">55.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.8" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.13.8.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.9" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.13.9.1" style="color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.10" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.13.10.1" style="color:#808080;">60.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.11" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.13.11.1" style="color:#808080;">77.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.12" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.13.12.1" style="color:#808080;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.13" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.13.13.1" style="color:#808080;">44.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.13.14" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.13.14.1" style="color:#808080;">57.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.15" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.13.15.1" style="color:#808080;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.14" style="background-color:#CBF0CB;">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S3.T3.1.1.14.1" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.14.1.1" style="background-color:#CBF0CB;">Eagle2.5-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.1.14.2" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.14.2.1" style="background-color:#CBF0CB;">94.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.1.14.3" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.14.3.1" style="background-color:#CBF0CB;">87.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.1.14.4" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.14.4.1" style="background-color:#CBF0CB;">80.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.1.14.5" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.14.5.1" style="background-color:#CBF0CB;">83.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.1.14.6" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.14.6.1" style="background-color:#CBF0CB;">869</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.1.14.7" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.14.7.1" style="background-color:#CBF0CB;">66.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.1.14.8" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.14.8.1" style="background-color:#CBF0CB;">76.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.1.14.9" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.14.9.1" style="background-color:#CBF0CB;">84.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.1.14.10" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.14.10.1" style="background-color:#CBF0CB;">55.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.1.14.11" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.14.11.1" style="background-color:#CBF0CB;">81.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.1.14.12" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.14.12.1" style="background-color:#CBF0CB;">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.1.14.13" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.14.13.1" style="background-color:#CBF0CB;">54.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T3.1.1.14.14" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.14.14.1" style="background-color:#CBF0CB;">67.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.1.14.15" style="padding:0.9pt 2.5pt;"><span class="ltx_text" id="S3.T3.1.1.14.15.1" style="background-color:#CBF0CB;">75.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of Eagle 2.5-8B against other state-of-the-art (SoTA) vision-language models on a range of image benchmark datasets.  These benchmarks test various aspects of image understanding, including visual question answering, chart understanding, document understanding, and object recognition. The 'avg score' provides a holistic performance measure, where the OCRBench score is weighted down by a factor of 10 to balance its contribution with the others.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison with SoTA models on Various Image Benchmarks. The avg score is computed as the average of all benchmark scores, with OCRBench score divided by 10.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.4.4">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.1.1.1.2" rowspan="2" style="padding:1pt 1.5pt;"><span class="ltx_text" id="S4.T4.1.1.1.2.1">Training &amp; Data recipe</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.3" style="padding:1pt 1.5pt;">DocVQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.4" style="padding:1pt 1.5pt;">ChartQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.5" style="padding:1pt 1.5pt;">InfoVQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.6" style="padding:1pt 1.5pt;">TextVQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.7" style="padding:1pt 1.5pt;">OCRBench</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.8" style="padding:1pt 1.5pt;">MMstar</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.9" style="padding:1pt 1.5pt;">RWQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.10" style="padding:1pt 1.5pt;">AI2D</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.11" style="padding:1pt 1.5pt;">MMMU</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1" style="padding:1pt 1.5pt;">MMB<sub class="ltx_sub" id="S4.T4.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.1.1.1.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.12" style="padding:1pt 1.5pt;">MMVet</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.13" style="padding:1pt 1.5pt;">HallB</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.1.1.14" style="padding:1pt 1.5pt;">MathVista</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.15" style="padding:1pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.15.1">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.4.4.5.1" style="padding:1pt 1.5pt;">Val</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.4.4.5.2" style="padding:1pt 1.5pt;">Test</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.4.4.5.3" style="padding:1pt 1.5pt;">Val</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.4.4.5.4" style="padding:1pt 1.5pt;">Val</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.4.4.5.5" style="padding:1pt 1.5pt;">Val</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.4.4.5.6" style="padding:1pt 1.5pt;">Test</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.4.4.5.7" style="padding:1pt 1.5pt;">Test</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.4.4.5.8" style="padding:1pt 1.5pt;">Test</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.4.4.5.9" style="padding:1pt 1.5pt;">Val</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.4.4.5.10" style="padding:1pt 1.5pt;">EN-Val</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.4.4.5.11" style="padding:1pt 1.5pt;">Test</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.4.4.5.12" style="padding:1pt 1.5pt;">Test</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.4.4.5.13" style="padding:1pt 1.5pt;">Test-Mini</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.4.4.5.14" style="padding:1pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.5.14.1">Score</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.4.4.6.1" style="padding:1pt 1.5pt;">Eagle2.5-S2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.4.4.6.2" style="padding:1pt 1.5pt;">92.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.4.4.6.3" style="padding:1pt 1.5pt;">88.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.4.4.6.4" style="padding:1pt 1.5pt;">78.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.4.4.6.5" style="padding:1pt 1.5pt;">84.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.4.4.6.6" style="padding:1pt 1.5pt;">868</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.4.4.6.7" style="padding:1pt 1.5pt;">66.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.4.4.6.8" style="padding:1pt 1.5pt;">74.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.4.4.6.9" style="padding:1pt 1.5pt;">85.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.4.4.6.10" style="padding:1pt 1.5pt;">54.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.4.4.6.11" style="padding:1pt 1.5pt;">85.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.4.4.6.12" style="padding:1pt 1.5pt;">57.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.4.4.6.13" style="padding:1pt 1.5pt;">53.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.6.14" style="padding:1pt 1.5pt;">65.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.4.4.6.15" style="padding:1pt 1.5pt;">74.8</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T4.2.2.2.1" style="padding:1pt 1.5pt;">Eagle2.5-S2+Eagle2.5-S2, <math alttext="\mathcal{L}_{\max}=32K" class="ltx_Math" display="inline" id="S4.T4.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.1.m1.1a"><mrow id="S4.T4.2.2.2.1.m1.1.1" xref="S4.T4.2.2.2.1.m1.1.1.cmml"><msub id="S4.T4.2.2.2.1.m1.1.1.2" xref="S4.T4.2.2.2.1.m1.1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T4.2.2.2.1.m1.1.1.2.2" xref="S4.T4.2.2.2.1.m1.1.1.2.2.cmml">ℒ</mi><mi id="S4.T4.2.2.2.1.m1.1.1.2.3" xref="S4.T4.2.2.2.1.m1.1.1.2.3.cmml">max</mi></msub><mo id="S4.T4.2.2.2.1.m1.1.1.1" xref="S4.T4.2.2.2.1.m1.1.1.1.cmml">=</mo><mrow id="S4.T4.2.2.2.1.m1.1.1.3" xref="S4.T4.2.2.2.1.m1.1.1.3.cmml"><mn id="S4.T4.2.2.2.1.m1.1.1.3.2" xref="S4.T4.2.2.2.1.m1.1.1.3.2.cmml">32</mn><mo id="S4.T4.2.2.2.1.m1.1.1.3.1" xref="S4.T4.2.2.2.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.2.2.2.1.m1.1.1.3.3" xref="S4.T4.2.2.2.1.m1.1.1.3.3.cmml">K</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.1.m1.1b"><apply id="S4.T4.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1"><eq id="S4.T4.2.2.2.1.m1.1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1.1"></eq><apply id="S4.T4.2.2.2.1.m1.1.1.2.cmml" xref="S4.T4.2.2.2.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T4.2.2.2.1.m1.1.1.2.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1.2">subscript</csymbol><ci id="S4.T4.2.2.2.1.m1.1.1.2.2.cmml" xref="S4.T4.2.2.2.1.m1.1.1.2.2">ℒ</ci><max id="S4.T4.2.2.2.1.m1.1.1.2.3.cmml" xref="S4.T4.2.2.2.1.m1.1.1.2.3"></max></apply><apply id="S4.T4.2.2.2.1.m1.1.1.3.cmml" xref="S4.T4.2.2.2.1.m1.1.1.3"><times id="S4.T4.2.2.2.1.m1.1.1.3.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1.3.1"></times><cn id="S4.T4.2.2.2.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T4.2.2.2.1.m1.1.1.3.2">32</cn><ci id="S4.T4.2.2.2.1.m1.1.1.3.3.cmml" xref="S4.T4.2.2.2.1.m1.1.1.3.3">𝐾</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.1.m1.1c">\mathcal{L}_{\max}=32K</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT roman_max end_POSTSUBSCRIPT = 32 italic_K</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.2" style="padding:1pt 1.5pt;">92.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.3" style="padding:1pt 1.5pt;">86.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.4" style="padding:1pt 1.5pt;">77.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.5" style="padding:1pt 1.5pt;">82.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.6" style="padding:1pt 1.5pt;">861</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.7" style="padding:1pt 1.5pt;">66.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.8" style="padding:1pt 1.5pt;">75.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.9" style="padding:1pt 1.5pt;">83.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.10" style="padding:1pt 1.5pt;">55.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.11" style="padding:1pt 1.5pt;">84.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.12" style="padding:1pt 1.5pt;">63.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.13" style="padding:1pt 1.5pt;">55.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.2.2.2.14" style="padding:1pt 1.5pt;">68.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.15" style="padding:1pt 1.5pt;">75.3</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T4.3.3.3.1" style="padding:1pt 1.5pt;">Eagle2.5-S2+Eagle2.5-S2, <math alttext="\mathcal{L}_{\max}=64K" class="ltx_Math" display="inline" id="S4.T4.3.3.3.1.m1.1"><semantics id="S4.T4.3.3.3.1.m1.1a"><mrow id="S4.T4.3.3.3.1.m1.1.1" xref="S4.T4.3.3.3.1.m1.1.1.cmml"><msub id="S4.T4.3.3.3.1.m1.1.1.2" xref="S4.T4.3.3.3.1.m1.1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T4.3.3.3.1.m1.1.1.2.2" xref="S4.T4.3.3.3.1.m1.1.1.2.2.cmml">ℒ</mi><mi id="S4.T4.3.3.3.1.m1.1.1.2.3" xref="S4.T4.3.3.3.1.m1.1.1.2.3.cmml">max</mi></msub><mo id="S4.T4.3.3.3.1.m1.1.1.1" xref="S4.T4.3.3.3.1.m1.1.1.1.cmml">=</mo><mrow id="S4.T4.3.3.3.1.m1.1.1.3" xref="S4.T4.3.3.3.1.m1.1.1.3.cmml"><mn id="S4.T4.3.3.3.1.m1.1.1.3.2" xref="S4.T4.3.3.3.1.m1.1.1.3.2.cmml">64</mn><mo id="S4.T4.3.3.3.1.m1.1.1.3.1" xref="S4.T4.3.3.3.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.3.3.3.1.m1.1.1.3.3" xref="S4.T4.3.3.3.1.m1.1.1.3.3.cmml">K</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.1.m1.1b"><apply id="S4.T4.3.3.3.1.m1.1.1.cmml" xref="S4.T4.3.3.3.1.m1.1.1"><eq id="S4.T4.3.3.3.1.m1.1.1.1.cmml" xref="S4.T4.3.3.3.1.m1.1.1.1"></eq><apply id="S4.T4.3.3.3.1.m1.1.1.2.cmml" xref="S4.T4.3.3.3.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T4.3.3.3.1.m1.1.1.2.1.cmml" xref="S4.T4.3.3.3.1.m1.1.1.2">subscript</csymbol><ci id="S4.T4.3.3.3.1.m1.1.1.2.2.cmml" xref="S4.T4.3.3.3.1.m1.1.1.2.2">ℒ</ci><max id="S4.T4.3.3.3.1.m1.1.1.2.3.cmml" xref="S4.T4.3.3.3.1.m1.1.1.2.3"></max></apply><apply id="S4.T4.3.3.3.1.m1.1.1.3.cmml" xref="S4.T4.3.3.3.1.m1.1.1.3"><times id="S4.T4.3.3.3.1.m1.1.1.3.1.cmml" xref="S4.T4.3.3.3.1.m1.1.1.3.1"></times><cn id="S4.T4.3.3.3.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T4.3.3.3.1.m1.1.1.3.2">64</cn><ci id="S4.T4.3.3.3.1.m1.1.1.3.3.cmml" xref="S4.T4.3.3.3.1.m1.1.1.3.3">𝐾</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.1.m1.1c">\mathcal{L}_{\max}=64K</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT roman_max end_POSTSUBSCRIPT = 64 italic_K</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.2" style="padding:1pt 1.5pt;">92.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.3" style="padding:1pt 1.5pt;">87.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.4" style="padding:1pt 1.5pt;">78.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.5" style="padding:1pt 1.5pt;">83.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.6" style="padding:1pt 1.5pt;">865</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.7" style="padding:1pt 1.5pt;">66.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.8" style="padding:1pt 1.5pt;">76.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.9" style="padding:1pt 1.5pt;">83.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.10" style="padding:1pt 1.5pt;">55.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.11" style="padding:1pt 1.5pt;">85.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.12" style="padding:1pt 1.5pt;">63.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.13" style="padding:1pt 1.5pt;">55.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.3.3.3.14" style="padding:1pt 1.5pt;">67.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.15" style="padding:1pt 1.5pt;">75.6</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_b ltx_border_r" id="S4.T4.4.4.4.1" style="padding:1pt 1.5pt;">Eagle2.5-S2+Eagle2.5-S2, <math alttext="\mathcal{L}_{\max}=128K" class="ltx_Math" display="inline" id="S4.T4.4.4.4.1.m1.1"><semantics id="S4.T4.4.4.4.1.m1.1a"><mrow id="S4.T4.4.4.4.1.m1.1.1" xref="S4.T4.4.4.4.1.m1.1.1.cmml"><msub id="S4.T4.4.4.4.1.m1.1.1.2" xref="S4.T4.4.4.4.1.m1.1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T4.4.4.4.1.m1.1.1.2.2" xref="S4.T4.4.4.4.1.m1.1.1.2.2.cmml">ℒ</mi><mi id="S4.T4.4.4.4.1.m1.1.1.2.3" xref="S4.T4.4.4.4.1.m1.1.1.2.3.cmml">max</mi></msub><mo id="S4.T4.4.4.4.1.m1.1.1.1" xref="S4.T4.4.4.4.1.m1.1.1.1.cmml">=</mo><mrow id="S4.T4.4.4.4.1.m1.1.1.3" xref="S4.T4.4.4.4.1.m1.1.1.3.cmml"><mn id="S4.T4.4.4.4.1.m1.1.1.3.2" xref="S4.T4.4.4.4.1.m1.1.1.3.2.cmml">128</mn><mo id="S4.T4.4.4.4.1.m1.1.1.3.1" xref="S4.T4.4.4.4.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.4.4.4.1.m1.1.1.3.3" xref="S4.T4.4.4.4.1.m1.1.1.3.3.cmml">K</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.1.m1.1b"><apply id="S4.T4.4.4.4.1.m1.1.1.cmml" xref="S4.T4.4.4.4.1.m1.1.1"><eq id="S4.T4.4.4.4.1.m1.1.1.1.cmml" xref="S4.T4.4.4.4.1.m1.1.1.1"></eq><apply id="S4.T4.4.4.4.1.m1.1.1.2.cmml" xref="S4.T4.4.4.4.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T4.4.4.4.1.m1.1.1.2.1.cmml" xref="S4.T4.4.4.4.1.m1.1.1.2">subscript</csymbol><ci id="S4.T4.4.4.4.1.m1.1.1.2.2.cmml" xref="S4.T4.4.4.4.1.m1.1.1.2.2">ℒ</ci><max id="S4.T4.4.4.4.1.m1.1.1.2.3.cmml" xref="S4.T4.4.4.4.1.m1.1.1.2.3"></max></apply><apply id="S4.T4.4.4.4.1.m1.1.1.3.cmml" xref="S4.T4.4.4.4.1.m1.1.1.3"><times id="S4.T4.4.4.4.1.m1.1.1.3.1.cmml" xref="S4.T4.4.4.4.1.m1.1.1.3.1"></times><cn id="S4.T4.4.4.4.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T4.4.4.4.1.m1.1.1.3.2">128</cn><ci id="S4.T4.4.4.4.1.m1.1.1.3.3.cmml" xref="S4.T4.4.4.4.1.m1.1.1.3.3">𝐾</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.1.m1.1c">\mathcal{L}_{\max}=128K</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT roman_max end_POSTSUBSCRIPT = 128 italic_K</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.4.4.4.2" style="padding:1pt 1.5pt;">93.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.4.4.4.3" style="padding:1pt 1.5pt;">87.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.4.4.4.4" style="padding:1pt 1.5pt;">78.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.4.4.4.5" style="padding:1pt 1.5pt;">83.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.4.4.4.6" style="padding:1pt 1.5pt;">869</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.4.4.4.7" style="padding:1pt 1.5pt;">66.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.4.4.4.8" style="padding:1pt 1.5pt;">76.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.4.4.4.9" style="padding:1pt 1.5pt;">84.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.4.4.4.10" style="padding:1pt 1.5pt;">55.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.4.4.4.11" style="padding:1pt 1.5pt;">85.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.4.4.4.12" style="padding:1pt 1.5pt;">62.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.4.4.4.13" style="padding:1pt 1.5pt;">54.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.4.4.4.14" style="padding:1pt 1.5pt;">67.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.4.4.4.15" style="padding:1pt 1.5pt;">75.7</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of image benchmark evaluations, comparing models trained with and without long-context data. It demonstrates the impact of incorporating long-context data on the performance of various image understanding tasks.  Different configurations are compared, showing how increasing the amount of long-context training data affects performance.  Key metrics across multiple image benchmarks are reported.
> <details>
> <summary>read the caption</summary>
> Table 4: Impact of long-context data on performance of image benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="S4.SS1.5.5.5">
<tr class="ltx_tr" id="S4.SS1.5.5.5.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.SS1.5.5.5.6.1" rowspan="2" style="padding:0.7pt 0.5pt;"><span class="ltx_text" id="S4.SS1.5.5.5.6.1.1" style="font-size:70%;">Training &amp; Data recipe</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS1.5.5.5.6.2" style="padding:0.7pt 0.5pt;"><span class="ltx_text" id="S4.SS1.5.5.5.6.2.1" style="font-size:70%;">MVBench</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS1.5.5.5.6.3" style="padding:0.7pt 0.5pt;"><span class="ltx_text" id="S4.SS1.5.5.5.6.3.1" style="font-size:70%;">MLVU</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS1.5.5.5.6.4" style="padding:0.7pt 0.5pt;"><span class="ltx_text" id="S4.SS1.5.5.5.6.4.1" style="font-size:70%;">Video-MME</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.5.5.5.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.SS1.5.5.5.7.1" style="padding:0.7pt 0.5pt;"><span class="ltx_text" id="S4.SS1.5.5.5.7.1.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.SS1.5.5.5.7.2" style="padding:0.7pt 0.5pt;"><span class="ltx_text" id="S4.SS1.5.5.5.7.2.1" style="font-size:70%;">Val</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.SS1.5.5.5.7.3" style="padding:0.7pt 0.5pt;"><span class="ltx_text" id="S4.SS1.5.5.5.7.3.1" style="font-size:70%;">w/o subtitle</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.1.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.SS1.1.1.1.1.1" style="padding:0.7pt 0.5pt;">
<span class="ltx_text" id="S4.SS1.1.1.1.1.1.1" style="font-size:70%;">S1</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.SS1.1.1.1.1.1.m1.1"><semantics id="S4.SS1.1.1.1.1.1.m1.1a"><mo id="S4.SS1.1.1.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.SS1.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.SS1.1.1.1.1.1.m1.1b"><ci id="S4.SS1.1.1.1.1.1.m1.1.1.cmml" xref="S4.SS1.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS1.1.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS1.1.1.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.SS1.1.1.1.1.1.2" style="font-size:70%;">S2</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS1.1.1.1.1.2" style="padding:0.7pt 0.5pt;"><span class="ltx_text" id="S4.SS1.1.1.1.1.2.1" style="font-size:70%;">70.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS1.1.1.1.1.3" style="padding:0.7pt 0.5pt;"><span class="ltx_text" id="S4.SS1.1.1.1.1.3.1" style="font-size:70%;">67.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS1.1.1.1.1.4" style="padding:0.7pt 0.5pt;"><span class="ltx_text" id="S4.SS1.1.1.1.1.4.1" style="font-size:70%;">64.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.3.3.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.SS1.3.3.3.3.2" style="padding:0.7pt 0.5pt;">
<span class="ltx_text" id="S4.SS1.3.3.3.3.2.1" style="font-size:70%;">S1</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.SS1.2.2.2.2.1.m1.1"><semantics id="S4.SS1.2.2.2.2.1.m1.1a"><mo id="S4.SS1.2.2.2.2.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.SS1.2.2.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.SS1.2.2.2.2.1.m1.1b"><ci id="S4.SS1.2.2.2.2.1.m1.1.1.cmml" xref="S4.SS1.2.2.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS1.2.2.2.2.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS1.2.2.2.2.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.SS1.3.3.3.3.2.2" style="font-size:70%;">S1.5</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.SS1.3.3.3.3.2.m2.1"><semantics id="S4.SS1.3.3.3.3.2.m2.1a"><mo id="S4.SS1.3.3.3.3.2.m2.1.1" mathsize="70%" stretchy="false" xref="S4.SS1.3.3.3.3.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.SS1.3.3.3.3.2.m2.1b"><ci id="S4.SS1.3.3.3.3.2.m2.1.1.cmml" xref="S4.SS1.3.3.3.3.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS1.3.3.3.3.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS1.3.3.3.3.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.SS1.3.3.3.3.2.3" style="font-size:70%;">S2 (Open-Data+EV-110K)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.SS1.3.3.3.3.3" style="padding:0.7pt 0.5pt;"><span class="ltx_text" id="S4.SS1.3.3.3.3.3.1" style="font-size:70%;">72.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.SS1.3.3.3.3.4" style="padding:0.7pt 0.5pt;"><span class="ltx_text" id="S4.SS1.3.3.3.3.4.1" style="font-size:70%;">70.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.SS1.3.3.3.3.5" style="padding:0.7pt 0.5pt;"><span class="ltx_text" id="S4.SS1.3.3.3.3.5.1" style="font-size:70%;">65.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.5.5.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_b ltx_border_r" id="S4.SS1.5.5.5.5.2" style="padding:0.7pt 0.5pt;">
<span class="ltx_text" id="S4.SS1.5.5.5.5.2.1" style="font-size:70%;">S1</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.SS1.4.4.4.4.1.m1.1"><semantics id="S4.SS1.4.4.4.4.1.m1.1a"><mo id="S4.SS1.4.4.4.4.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.SS1.4.4.4.4.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.SS1.4.4.4.4.1.m1.1b"><ci id="S4.SS1.4.4.4.4.1.m1.1.1.cmml" xref="S4.SS1.4.4.4.4.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS1.4.4.4.4.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS1.4.4.4.4.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.SS1.5.5.5.5.2.2" style="font-size:70%;">S1.5</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.SS1.5.5.5.5.2.m2.1"><semantics id="S4.SS1.5.5.5.5.2.m2.1a"><mo id="S4.SS1.5.5.5.5.2.m2.1.1" mathsize="70%" stretchy="false" xref="S4.SS1.5.5.5.5.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.SS1.5.5.5.5.2.m2.1b"><ci id="S4.SS1.5.5.5.5.2.m2.1.1.cmml" xref="S4.SS1.5.5.5.5.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS1.5.5.5.5.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS1.5.5.5.5.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.SS1.5.5.5.5.2.3" style="font-size:70%;">S2 (Image+Open-Data+EV-110K)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.SS1.5.5.5.5.3" style="padding:0.7pt 0.5pt;"><span class="ltx_text" id="S4.SS1.5.5.5.5.3.1" style="font-size:70%;">73.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.SS1.5.5.5.5.4" style="padding:0.7pt 0.5pt;"><span class="ltx_text" id="S4.SS1.5.5.5.5.4.1" style="font-size:70%;">71.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.SS1.5.5.5.5.5" style="padding:0.7pt 0.5pt;"><span class="ltx_text" id="S4.SS1.5.5.5.5.5.1" style="font-size:70%;">65.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating the impact of image data and different pretraining stages on the performance of video benchmarks.  It compares three different training setups: S1-S2 (using a specific combination of data and training phases), S1-S1.5-S2 (adding more image data and another pretraining stage), and S1-S1.5-S2 (with both more image data and another pretraining stage, along with the addition of Image data). The table shows the performance metrics (e.g., accuracy, F1-score) on various video understanding benchmarks for each training setup, providing insight into the contribution of image data and the pretraining stages to the overall performance.  S1, S1.5, and S2 refer to specific stages in the Eagle2.5 model training process described in the paper. 
> <details>
> <summary>read the caption</summary>
> Table 5: The impact of image data and pretraining on the performance of video benchmarks. S1/S1.5 denotes the stage-1 and stage-1.5 similar to Eagle2 Authors (2025).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S4.SS1.6.fig1.1">
<tr class="ltx_tr" id="S4.SS1.6.fig1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.SS1.6.fig1.1.1.1" rowspan="2" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.1.1.1" style="font-size:70%;">Recipe</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS1.6.fig1.1.1.2" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.1.2.1" style="font-size:70%;">InfoVQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS1.6.fig1.1.1.3" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.1.3.1" style="font-size:70%;">DocVQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.SS1.6.fig1.1.1.4" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.1.4.1" style="font-size:70%;">TextVQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS1.6.fig1.1.1.5" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.1.5.1" style="font-size:70%;">Perception_test</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS1.6.fig1.1.1.6" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.1.6.1" style="font-size:70%;">MLVU</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS1.6.fig1.1.1.7" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.1.7.1" style="font-size:70%;">Video-MME</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.6.fig1.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.SS1.6.fig1.1.2.1" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.2.1.1" style="font-size:70%;">Val</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.SS1.6.fig1.1.2.2" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.2.2.1" style="font-size:70%;">Val</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.SS1.6.fig1.1.2.3" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.2.3.1" style="font-size:70%;">Val</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.SS1.6.fig1.1.2.4" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.2.4.1" style="font-size:70%;">Val</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.SS1.6.fig1.1.2.5" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.2.5.1" style="font-size:70%;">Val</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.SS1.6.fig1.1.2.6" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.2.6.1" style="font-size:70%;">w/o subtitle</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.6.fig1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.SS1.6.fig1.1.3.1" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.3.1.1" style="font-size:70%;">baseline</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS1.6.fig1.1.3.2" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.3.2.1" style="font-size:70%;">77.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS1.6.fig1.1.3.3" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.3.3.1" style="font-size:70%;">92.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.SS1.6.fig1.1.3.4" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.3.4.1" style="font-size:70%;">82.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS1.6.fig1.1.3.5" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.3.5.1" style="font-size:70%;">76.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS1.6.fig1.1.3.6" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.3.6.1" style="font-size:70%;">71.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS1.6.fig1.1.3.7" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.3.7.1" style="font-size:70%;">65.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.6.fig1.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.SS1.6.fig1.1.4.1" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.4.1.1" style="font-size:70%;">w/o IAP</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.SS1.6.fig1.1.4.2" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.4.2.1" style="font-size:70%;">76.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.SS1.6.fig1.1.4.3" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.4.3.1" style="font-size:70%;">91.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.SS1.6.fig1.1.4.4" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.4.4.1" style="font-size:70%;">82.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.SS1.6.fig1.1.4.5" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.4.5.1" style="font-size:70%;">73.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.SS1.6.fig1.1.4.6" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.4.6.1" style="font-size:70%;">71.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.SS1.6.fig1.1.4.7" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.4.7.1" style="font-size:70%;">64.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.6.fig1.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_b ltx_border_r" id="S4.SS1.6.fig1.1.5.1" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.5.1.1" style="font-size:70%;">w/o ADS</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.SS1.6.fig1.1.5.2" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.5.2.1" style="font-size:70%;">77.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.SS1.6.fig1.1.5.3" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.5.3.1" style="font-size:70%;">92.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="S4.SS1.6.fig1.1.5.4" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.5.4.1" style="font-size:70%;">82.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.SS1.6.fig1.1.5.5" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.5.5.1" style="font-size:70%;">75.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.SS1.6.fig1.1.5.6" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.5.6.1" style="font-size:70%;">70.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.SS1.6.fig1.1.5.7" style="padding:0.7pt 1.0pt;"><span class="ltx_text" id="S4.SS1.6.fig1.1.5.7.1" style="font-size:70%;">65.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the effects of the proposed Information-First Sampling strategy on the performance of various image and video benchmarks.  Specifically, it compares the baseline model (which uses both Image Area Preservation (IAP) and Automatic Degradation Sampling (ADS)) against variations where either IAP or ADS is removed. The results show the impact of each component of the Information-First Sampling on various benchmark metrics, highlighting their relative contributions to overall model performance.  This helps assess the importance of preserving both spatial and temporal information during training.
> <details>
> <summary>read the caption</summary>
> Table 6: The impact of information-first sampling on performance of image and video benchmarks. The baseline is equipped with IAP and ADS strategy.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T7.2">
<tr class="ltx_tr" id="S4.T7.2.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T7.2.3.1" rowspan="2" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.2.3.1.1" style="font-size:70%;">Training &amp; Data recipe</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T7.2.3.2" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.2.3.2.1" style="font-size:70%;">MVBench</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T7.2.3.3" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.2.3.3.1" style="font-size:70%;">MLVU</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T7.2.3.4" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.2.3.4.1" style="font-size:70%;">Video-MME</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T7.2.4.1" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.2.4.1.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T7.2.4.2" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.2.4.2.1" style="font-size:70%;">Val</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T7.2.4.3" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.2.4.3.1" style="font-size:70%;">w/o sbutitle</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T7.1.1.1" style="padding:0.7pt 0.9pt;">
<span class="ltx_text" id="S4.T7.1.1.1.1" style="font-size:70%;">32K</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T7.1.1.1.m1.1"><semantics id="S4.T7.1.1.1.m1.1a"><mo id="S4.T7.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T7.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T7.1.1.1.m1.1b"><ci id="S4.T7.1.1.1.m1.1.1.cmml" xref="S4.T7.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T7.1.1.1.2" style="font-size:70%;">64K, Open-Data</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T7.1.1.2" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.1.1.2.1" style="font-size:70%;">73.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T7.1.1.3" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.1.1.3.1" style="font-size:70%;">74.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T7.1.1.4" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.1.1.4.1" style="font-size:70%;">68.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T7.2.5.1" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.2.5.1.1" style="font-size:70%;">64K, Open-Data</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T7.2.5.2" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.2.5.2.1" style="font-size:70%;">71.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T7.2.5.3" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.2.5.3.1" style="font-size:70%;">74.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T7.2.5.4" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.2.5.4.1" style="font-size:70%;">67.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_b ltx_border_r" id="S4.T7.2.2.1" style="padding:0.7pt 0.9pt;">
<span class="ltx_text" id="S4.T7.2.2.1.1" style="font-size:70%;">32K</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T7.2.2.1.m1.1"><semantics id="S4.T7.2.2.1.m1.1a"><mo id="S4.T7.2.2.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T7.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T7.2.2.1.m1.1b"><ci id="S4.T7.2.2.1.m1.1.1.cmml" xref="S4.T7.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.2.2.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.2.2.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T7.2.2.1.2" style="font-size:70%;">64K, Open-Data​ + ​Eagle-Video-110K</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T7.2.2.2" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.2.2.2.1" style="font-size:70%;">73.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T7.2.2.3" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.2.2.3.1" style="font-size:70%;">75.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T7.2.2.4" style="padding:0.7pt 0.9pt;"><span class="ltx_text" id="S4.T7.2.2.4.1" style="font-size:70%;">68.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating the impact of the Eagle-Video-110K dataset and various post-training schedules on the performance of several video understanding benchmarks.  It compares models trained using the Open-Data dataset alone, against models trained with the addition of the Eagle-Video-110K dataset.  Furthermore, it explores the effects of different post-training schedules, progressing from shorter to longer context lengths, showing how the model's performance evolves with different data and training regimes on video benchmarks including MVBench, MLVU, and Video-MME.  The table allows for analyzing the contributions of the new dataset and the effectiveness of the progressive training strategy.
> <details>
> <summary>read the caption</summary>
> Table 7: The impact of Eagle-Video-110K dataset and different post-training schedules on the performance of video benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T8.4.4">
<tr class="ltx_tr" id="A2.T8.4.4.5">
<td class="ltx_td ltx_border_tt" id="A2.T8.4.4.5.1" style="padding:1pt 10.0pt;"></td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="A2.T8.4.4.5.2" style="padding:1pt 10.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.4.4.5.3" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.4.5.3.1">Eagle2.5-Stage-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.4.4.5.4" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.4.5.4.1">Eagle2.5-Stage-1.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.4.4.5.5" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.4.5.5.1">Eagle2.5-Stage-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.4.4.5.6" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.4.5.6.1">Eagle2.5-Stage-3</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T8.4.4.5.7" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.4.5.7.1">Eagle2.5-Stage-4</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.1.1.1.2" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text" id="A2.T8.1.1.1.2.1">Vision</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T8.1.1.1.3" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.3.1">Resolution</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="A2.T8.1.1.1.1" style="padding:1pt 10.0pt;"><math alttext="\text{448}\times\{(i,j)\mid i,j\in\mathbb{Z}^{+},\,i\times j\leq 12\}" class="ltx_Math" display="inline" id="A2.T8.1.1.1.1.m1.6"><semantics id="A2.T8.1.1.1.1.m1.6a"><mrow id="A2.T8.1.1.1.1.m1.6.6" xref="A2.T8.1.1.1.1.m1.6.6.cmml"><mtext id="A2.T8.1.1.1.1.m1.6.6.4" xref="A2.T8.1.1.1.1.m1.6.6.4a.cmml">448</mtext><mo id="A2.T8.1.1.1.1.m1.6.6.3" lspace="0.222em" rspace="0.222em" xref="A2.T8.1.1.1.1.m1.6.6.3.cmml">×</mo><mrow id="A2.T8.1.1.1.1.m1.6.6.2.2" xref="A2.T8.1.1.1.1.m1.6.6.2.3.cmml"><mo id="A2.T8.1.1.1.1.m1.6.6.2.2.3" stretchy="false" xref="A2.T8.1.1.1.1.m1.6.6.2.3.1.cmml">{</mo><mrow id="A2.T8.1.1.1.1.m1.5.5.1.1.1.2" xref="A2.T8.1.1.1.1.m1.5.5.1.1.1.1.cmml"><mo id="A2.T8.1.1.1.1.m1.5.5.1.1.1.2.1" stretchy="false" xref="A2.T8.1.1.1.1.m1.5.5.1.1.1.1.cmml">(</mo><mi id="A2.T8.1.1.1.1.m1.1.1" xref="A2.T8.1.1.1.1.m1.1.1.cmml">i</mi><mo id="A2.T8.1.1.1.1.m1.5.5.1.1.1.2.2" xref="A2.T8.1.1.1.1.m1.5.5.1.1.1.1.cmml">,</mo><mi id="A2.T8.1.1.1.1.m1.2.2" xref="A2.T8.1.1.1.1.m1.2.2.cmml">j</mi><mo id="A2.T8.1.1.1.1.m1.5.5.1.1.1.2.3" stretchy="false" xref="A2.T8.1.1.1.1.m1.5.5.1.1.1.1.cmml">)</mo></mrow><mo fence="true" id="A2.T8.1.1.1.1.m1.6.6.2.2.4" lspace="0em" rspace="0em" xref="A2.T8.1.1.1.1.m1.6.6.2.3.1.cmml">∣</mo><mrow id="A2.T8.1.1.1.1.m1.6.6.2.2.2.2" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.3.cmml"><mrow id="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.cmml"><mrow id="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.2.2" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.2.1.cmml"><mi id="A2.T8.1.1.1.1.m1.3.3" xref="A2.T8.1.1.1.1.m1.3.3.cmml">i</mi><mo id="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.2.2.1" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.2.1.cmml">,</mo><mi id="A2.T8.1.1.1.1.m1.4.4" xref="A2.T8.1.1.1.1.m1.4.4.cmml">j</mi></mrow><mo id="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.1" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.1.cmml">∈</mo><msup id="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.3" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.3.cmml"><mi id="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.3.2" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.3.2.cmml">ℤ</mi><mo id="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.3.3" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.3.3.cmml">+</mo></msup></mrow><mo id="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.3" rspace="0.337em" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.3a.cmml">,</mo><mrow id="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.cmml"><mrow id="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.2" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.2.cmml"><mi id="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.2.2" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.2.2.cmml">i</mi><mo id="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.2.1" lspace="0.222em" rspace="0.222em" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.2.1.cmml">×</mo><mi id="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.2.3" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.2.3.cmml">j</mi></mrow><mo id="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.1" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.1.cmml">≤</mo><mn id="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.3" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.3.cmml">12</mn></mrow></mrow><mo id="A2.T8.1.1.1.1.m1.6.6.2.2.5" stretchy="false" xref="A2.T8.1.1.1.1.m1.6.6.2.3.1.cmml">}</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="A2.T8.1.1.1.1.m1.6b"><apply id="A2.T8.1.1.1.1.m1.6.6.cmml" xref="A2.T8.1.1.1.1.m1.6.6"><times id="A2.T8.1.1.1.1.m1.6.6.3.cmml" xref="A2.T8.1.1.1.1.m1.6.6.3"></times><ci id="A2.T8.1.1.1.1.m1.6.6.4a.cmml" xref="A2.T8.1.1.1.1.m1.6.6.4"><mtext id="A2.T8.1.1.1.1.m1.6.6.4.cmml" xref="A2.T8.1.1.1.1.m1.6.6.4">448</mtext></ci><apply id="A2.T8.1.1.1.1.m1.6.6.2.3.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2"><csymbol cd="latexml" id="A2.T8.1.1.1.1.m1.6.6.2.3.1.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2.3">conditional-set</csymbol><interval closure="open" id="A2.T8.1.1.1.1.m1.5.5.1.1.1.1.cmml" xref="A2.T8.1.1.1.1.m1.5.5.1.1.1.2"><ci id="A2.T8.1.1.1.1.m1.1.1.cmml" xref="A2.T8.1.1.1.1.m1.1.1">𝑖</ci><ci id="A2.T8.1.1.1.1.m1.2.2.cmml" xref="A2.T8.1.1.1.1.m1.2.2">𝑗</ci></interval><apply id="A2.T8.1.1.1.1.m1.6.6.2.2.2.3.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.2"><csymbol cd="ambiguous" id="A2.T8.1.1.1.1.m1.6.6.2.2.2.3a.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.3">formulae-sequence</csymbol><apply id="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1"><in id="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.1.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.1"></in><list id="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.2.1.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.2.2"><ci id="A2.T8.1.1.1.1.m1.3.3.cmml" xref="A2.T8.1.1.1.1.m1.3.3">𝑖</ci><ci id="A2.T8.1.1.1.1.m1.4.4.cmml" xref="A2.T8.1.1.1.1.m1.4.4">𝑗</ci></list><apply id="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.3.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.3"><csymbol cd="ambiguous" id="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.3.1.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.3">superscript</csymbol><ci id="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.3.2.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.3.2">ℤ</ci><plus id="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.3.3.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.1.1.3.3"></plus></apply></apply><apply id="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2"><leq id="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.1.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.1"></leq><apply id="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.2.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.2"><times id="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.2.1.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.2.1"></times><ci id="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.2.2.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.2.2">𝑖</ci><ci id="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.2.3.cmml" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.2.3">𝑗</ci></apply><cn id="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.3.cmml" type="integer" xref="A2.T8.1.1.1.1.m1.6.6.2.2.2.2.2.3">12</cn></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T8.1.1.1.1.m1.6c">\text{448}\times\{(i,j)\mid i,j\in\mathbb{Z}^{+},\,i\times j\leq 12\}</annotation><annotation encoding="application/x-llamapun" id="A2.T8.1.1.1.1.m1.6d">448 × { ( italic_i , italic_j ) ∣ italic_i , italic_j ∈ blackboard_Z start_POSTSUPERSCRIPT + end_POSTSUPERSCRIPT , italic_i × italic_j ≤ 12 }</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.2.2.2.2" style="padding:1pt 10.0pt;">Tokens</td>
<td class="ltx_td ltx_align_center" colspan="5" id="A2.T8.2.2.2.1" style="padding:1pt 10.0pt;"><math alttext="(i\times j+1)\times 256" class="ltx_Math" display="inline" id="A2.T8.2.2.2.1.m1.1"><semantics id="A2.T8.2.2.2.1.m1.1a"><mrow id="A2.T8.2.2.2.1.m1.1.1" xref="A2.T8.2.2.2.1.m1.1.1.cmml"><mrow id="A2.T8.2.2.2.1.m1.1.1.1.1" xref="A2.T8.2.2.2.1.m1.1.1.1.1.1.cmml"><mo id="A2.T8.2.2.2.1.m1.1.1.1.1.2" stretchy="false" xref="A2.T8.2.2.2.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="A2.T8.2.2.2.1.m1.1.1.1.1.1" xref="A2.T8.2.2.2.1.m1.1.1.1.1.1.cmml"><mrow id="A2.T8.2.2.2.1.m1.1.1.1.1.1.2" xref="A2.T8.2.2.2.1.m1.1.1.1.1.1.2.cmml"><mi id="A2.T8.2.2.2.1.m1.1.1.1.1.1.2.2" xref="A2.T8.2.2.2.1.m1.1.1.1.1.1.2.2.cmml">i</mi><mo id="A2.T8.2.2.2.1.m1.1.1.1.1.1.2.1" lspace="0.222em" rspace="0.222em" xref="A2.T8.2.2.2.1.m1.1.1.1.1.1.2.1.cmml">×</mo><mi id="A2.T8.2.2.2.1.m1.1.1.1.1.1.2.3" xref="A2.T8.2.2.2.1.m1.1.1.1.1.1.2.3.cmml">j</mi></mrow><mo id="A2.T8.2.2.2.1.m1.1.1.1.1.1.1" xref="A2.T8.2.2.2.1.m1.1.1.1.1.1.1.cmml">+</mo><mn id="A2.T8.2.2.2.1.m1.1.1.1.1.1.3" xref="A2.T8.2.2.2.1.m1.1.1.1.1.1.3.cmml">1</mn></mrow><mo id="A2.T8.2.2.2.1.m1.1.1.1.1.3" rspace="0.055em" stretchy="false" xref="A2.T8.2.2.2.1.m1.1.1.1.1.1.cmml">)</mo></mrow><mo id="A2.T8.2.2.2.1.m1.1.1.2" rspace="0.222em" xref="A2.T8.2.2.2.1.m1.1.1.2.cmml">×</mo><mn id="A2.T8.2.2.2.1.m1.1.1.3" xref="A2.T8.2.2.2.1.m1.1.1.3.cmml">256</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T8.2.2.2.1.m1.1b"><apply id="A2.T8.2.2.2.1.m1.1.1.cmml" xref="A2.T8.2.2.2.1.m1.1.1"><times id="A2.T8.2.2.2.1.m1.1.1.2.cmml" xref="A2.T8.2.2.2.1.m1.1.1.2"></times><apply id="A2.T8.2.2.2.1.m1.1.1.1.1.1.cmml" xref="A2.T8.2.2.2.1.m1.1.1.1.1"><plus id="A2.T8.2.2.2.1.m1.1.1.1.1.1.1.cmml" xref="A2.T8.2.2.2.1.m1.1.1.1.1.1.1"></plus><apply id="A2.T8.2.2.2.1.m1.1.1.1.1.1.2.cmml" xref="A2.T8.2.2.2.1.m1.1.1.1.1.1.2"><times id="A2.T8.2.2.2.1.m1.1.1.1.1.1.2.1.cmml" xref="A2.T8.2.2.2.1.m1.1.1.1.1.1.2.1"></times><ci id="A2.T8.2.2.2.1.m1.1.1.1.1.1.2.2.cmml" xref="A2.T8.2.2.2.1.m1.1.1.1.1.1.2.2">𝑖</ci><ci id="A2.T8.2.2.2.1.m1.1.1.1.1.1.2.3.cmml" xref="A2.T8.2.2.2.1.m1.1.1.1.1.1.2.3">𝑗</ci></apply><cn id="A2.T8.2.2.2.1.m1.1.1.1.1.1.3.cmml" type="integer" xref="A2.T8.2.2.2.1.m1.1.1.1.1.1.3">1</cn></apply><cn id="A2.T8.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="A2.T8.2.2.2.1.m1.1.1.3">256</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T8.2.2.2.1.m1.1c">(i\times j+1)\times 256</annotation><annotation encoding="application/x-llamapun" id="A2.T8.2.2.2.1.m1.1d">( italic_i × italic_j + 1 ) × 256</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.4.4.6.1" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text" id="A2.T8.4.4.6.1.1">Data</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T8.4.4.6.2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.4.6.2.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.6.3" style="padding:1pt 10.0pt;">ALLaVA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.6.4" style="padding:1pt 10.0pt;">Rich Diverse Data</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.6.5" style="padding:1pt 10.0pt;">Short+Long Data</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.6.6" style="padding:1pt 10.0pt;">Short+Long Data</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.4.4.6.7" style="padding:1pt 10.0pt;">Short+Long Data</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.4.4.7.1" style="padding:1pt 10.0pt;">#Samples</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.7.2" style="padding:1pt 10.0pt;">1.2M</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.7.3" style="padding:1pt 10.0pt;">21.6M</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.7.4" style="padding:1pt 10.0pt;">4.6M+4.6M</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.7.5" style="padding:1pt 10.0pt;">4.6M+4.6M</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.4.4.7.6" style="padding:1pt 10.0pt;">4.6M+4.6M</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.4.4.8.1" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text" id="A2.T8.4.4.8.1.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T8.4.4.8.2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.4.8.2.1">Trainable</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.8.3" style="padding:1pt 10.0pt;">MLP Connector</td>
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_t" colspan="4" id="A2.T8.4.4.8.4" style="padding:1pt 10.0pt;">Full Model</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.4.4.9.1" style="padding:1pt 10.0pt;">Qwen2.5-7B</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.9.2" style="padding:1pt 10.0pt;">40.0M</td>
<td class="ltx_td ltx_align_center ltx_border_l" colspan="4" id="A2.T8.4.4.9.3" style="padding:1pt 10.0pt;">8B</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T8.4.4.10.1" rowspan="3" style="padding:1pt 10.0pt;"><span class="ltx_text" id="A2.T8.4.4.10.1.1">Training</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T8.4.4.10.2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.4.10.2.1">Batch Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.10.3" style="padding:1pt 10.0pt;">1024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.10.4" style="padding:1pt 10.0pt;">1024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.10.5" style="padding:1pt 10.0pt;">256</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.10.6" style="padding:1pt 10.0pt;">128</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.4.4.10.7" style="padding:1pt 10.0pt;">128</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.4.4.4.3" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.4.4.3.1">Learning Rate</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.3.3.3.1" style="padding:1pt 10.0pt;">2<math alttext="\times 10^{-4}" class="ltx_Math" display="inline" id="A2.T8.3.3.3.1.m1.1"><semantics id="A2.T8.3.3.3.1.m1.1a"><mrow id="A2.T8.3.3.3.1.m1.1.1" xref="A2.T8.3.3.3.1.m1.1.1.cmml"><mi id="A2.T8.3.3.3.1.m1.1.1.2" xref="A2.T8.3.3.3.1.m1.1.1.2.cmml"></mi><mo id="A2.T8.3.3.3.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T8.3.3.3.1.m1.1.1.1.cmml">×</mo><msup id="A2.T8.3.3.3.1.m1.1.1.3" xref="A2.T8.3.3.3.1.m1.1.1.3.cmml"><mn id="A2.T8.3.3.3.1.m1.1.1.3.2" xref="A2.T8.3.3.3.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T8.3.3.3.1.m1.1.1.3.3" xref="A2.T8.3.3.3.1.m1.1.1.3.3.cmml"><mo id="A2.T8.3.3.3.1.m1.1.1.3.3a" xref="A2.T8.3.3.3.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T8.3.3.3.1.m1.1.1.3.3.2" xref="A2.T8.3.3.3.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T8.3.3.3.1.m1.1b"><apply id="A2.T8.3.3.3.1.m1.1.1.cmml" xref="A2.T8.3.3.3.1.m1.1.1"><times id="A2.T8.3.3.3.1.m1.1.1.1.cmml" xref="A2.T8.3.3.3.1.m1.1.1.1"></times><csymbol cd="latexml" id="A2.T8.3.3.3.1.m1.1.1.2.cmml" xref="A2.T8.3.3.3.1.m1.1.1.2">absent</csymbol><apply id="A2.T8.3.3.3.1.m1.1.1.3.cmml" xref="A2.T8.3.3.3.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T8.3.3.3.1.m1.1.1.3.1.cmml" xref="A2.T8.3.3.3.1.m1.1.1.3">superscript</csymbol><cn id="A2.T8.3.3.3.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T8.3.3.3.1.m1.1.1.3.2">10</cn><apply id="A2.T8.3.3.3.1.m1.1.1.3.3.cmml" xref="A2.T8.3.3.3.1.m1.1.1.3.3"><minus id="A2.T8.3.3.3.1.m1.1.1.3.3.1.cmml" xref="A2.T8.3.3.3.1.m1.1.1.3.3"></minus><cn id="A2.T8.3.3.3.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T8.3.3.3.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T8.3.3.3.1.m1.1c">\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A2.T8.3.3.3.1.m1.1d">× 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_l" colspan="4" id="A2.T8.4.4.4.2" style="padding:1pt 10.0pt;">2<math alttext="\times 10^{-5}" class="ltx_Math" display="inline" id="A2.T8.4.4.4.2.m1.1"><semantics id="A2.T8.4.4.4.2.m1.1a"><mrow id="A2.T8.4.4.4.2.m1.1.1" xref="A2.T8.4.4.4.2.m1.1.1.cmml"><mi id="A2.T8.4.4.4.2.m1.1.1.2" xref="A2.T8.4.4.4.2.m1.1.1.2.cmml"></mi><mo id="A2.T8.4.4.4.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T8.4.4.4.2.m1.1.1.1.cmml">×</mo><msup id="A2.T8.4.4.4.2.m1.1.1.3" xref="A2.T8.4.4.4.2.m1.1.1.3.cmml"><mn id="A2.T8.4.4.4.2.m1.1.1.3.2" xref="A2.T8.4.4.4.2.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T8.4.4.4.2.m1.1.1.3.3" xref="A2.T8.4.4.4.2.m1.1.1.3.3.cmml"><mo id="A2.T8.4.4.4.2.m1.1.1.3.3a" xref="A2.T8.4.4.4.2.m1.1.1.3.3.cmml">−</mo><mn id="A2.T8.4.4.4.2.m1.1.1.3.3.2" xref="A2.T8.4.4.4.2.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T8.4.4.4.2.m1.1b"><apply id="A2.T8.4.4.4.2.m1.1.1.cmml" xref="A2.T8.4.4.4.2.m1.1.1"><times id="A2.T8.4.4.4.2.m1.1.1.1.cmml" xref="A2.T8.4.4.4.2.m1.1.1.1"></times><csymbol cd="latexml" id="A2.T8.4.4.4.2.m1.1.1.2.cmml" xref="A2.T8.4.4.4.2.m1.1.1.2">absent</csymbol><apply id="A2.T8.4.4.4.2.m1.1.1.3.cmml" xref="A2.T8.4.4.4.2.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T8.4.4.4.2.m1.1.1.3.1.cmml" xref="A2.T8.4.4.4.2.m1.1.1.3">superscript</csymbol><cn id="A2.T8.4.4.4.2.m1.1.1.3.2.cmml" type="integer" xref="A2.T8.4.4.4.2.m1.1.1.3.2">10</cn><apply id="A2.T8.4.4.4.2.m1.1.1.3.3.cmml" xref="A2.T8.4.4.4.2.m1.1.1.3.3"><minus id="A2.T8.4.4.4.2.m1.1.1.3.3.1.cmml" xref="A2.T8.4.4.4.2.m1.1.1.3.3"></minus><cn id="A2.T8.4.4.4.2.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T8.4.4.4.2.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T8.4.4.4.2.m1.1c">\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A2.T8.4.4.4.2.m1.1d">× 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A2.T8.4.4.11.1" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.4.4.11.1.1">Max Length</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.4.4.11.2" style="padding:1pt 10.0pt;">4096</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.4.4.11.3" style="padding:1pt 10.0pt;">8192</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.4.4.11.4" style="padding:1pt 10.0pt;">32768</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.4.4.11.5" style="padding:1pt 10.0pt;">65536</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T8.4.4.11.6" style="padding:1pt 10.0pt;">128K</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the training settings used in the Eagle 2.5 model's progressive training pipeline.  It outlines the model architecture (including the number of parameters), dataset specifics (the amount of training data and its composition, including both short and long contexts), hyperparameters such as batch size and learning rate, and the maximum sequence length used for training at various stages.  It shows the iterative process of enhancing the model's capabilities to handle increasingly long contexts, which is a core feature of Eagle 2.5.
> <details>
> <summary>read the caption</summary>
> Table 8: The proposed progressive training settings.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="A3.1.fig1.1">
<tr class="ltx_tr" id="A3.1.fig1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.1.fig1.1.1.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="A3.1.fig1.1.1.1.1" style="font-size:80%;">Subset</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.1.fig1.1.1.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="A3.1.fig1.1.1.2.1" style="font-size:80%;">ANLS Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.1.fig1.1.1.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="A3.1.fig1.1.1.3.1" style="font-size:80%;">Exact Match Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.1.fig1.1.1.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="A3.1.fig1.1.1.4.1" style="font-size:80%;">F1 Score</span></td>
</tr>
<tr class="ltx_tr" id="A3.1.fig1.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.1.fig1.1.2.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="A3.1.fig1.1.2.1.1" style="font-size:80%;">Dev</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.1.fig1.1.2.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="A3.1.fig1.1.2.2.1" style="font-size:80%;">73.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.1.fig1.1.2.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="A3.1.fig1.1.2.3.1" style="font-size:80%;">67.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.1.fig1.1.2.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="A3.1.fig1.1.2.4.1" style="font-size:80%;">74.7</span></td>
</tr>
<tr class="ltx_tr" id="A3.1.fig1.1.3">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A3.1.fig1.1.3.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="A3.1.fig1.1.3.1.1" style="font-size:80%;">Test</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.1.fig1.1.3.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="A3.1.fig1.1.3.2.1" style="font-size:80%;">72.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.1.fig1.1.3.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="A3.1.fig1.1.3.3.1" style="font-size:80%;">63.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.1.fig1.1.3.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="A3.1.fig1.1.3.4.1" style="font-size:80%;">72.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the Eagle 2.5-8B model on the SlideVQA benchmark.  SlideVQA is a dataset designed to evaluate visual question answering capabilities, particularly focusing on the ability to understand and answer questions related to slides and presentations. The table shows the model's performance using two metrics: ANLS (Approximate Normalized Levenshtein Similarity) Score and Exact Match Score.  ANLS Score measures the similarity between the model's generated answer and the ground truth answer, with higher scores indicating greater similarity. Exact Match Score indicates the percentage of questions for which the model provided an answer that exactly matched the ground truth. These metrics provide a comprehensive assessment of the model's ability to accurately comprehend and respond to questions about visual information in slides.
> <details>
> <summary>read the caption</summary>
> Table 9: Performance on the SlideVQA benchmark. The ANLS Score refers to Approximate Normalized Levenshtein Similarity.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="A3.2.fig2.1">
<tr class="ltx_tr" id="A3.2.fig2.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A3.2.fig2.1.1.1" style="padding-top:0.8pt;padding-bottom:0.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.2.fig2.1.1.1.1">
<span class="ltx_p" id="A3.2.fig2.1.1.1.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.2.fig2.1.1.1.1.1.1" style="font-size:80%;">Metric</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.2.fig2.1.1.2" style="padding-top:0.8pt;padding-bottom:0.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.2.fig2.1.1.2.1">
<span class="ltx_p" id="A3.2.fig2.1.1.2.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.2.fig2.1.1.2.1.1.1" style="font-size:80%;">Score</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.2.fig2.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A3.2.fig2.1.2.1" style="padding-top:0.8pt;padding-bottom:0.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.2.fig2.1.2.1.1">
<span class="ltx_p" id="A3.2.fig2.1.2.1.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.2.fig2.1.2.1.1.1.1" style="font-size:80%;">Overall F1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.2.fig2.1.2.2" style="padding-top:0.8pt;padding-bottom:0.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.2.fig2.1.2.2.1">
<span class="ltx_p" id="A3.2.fig2.1.2.2.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.2.fig2.1.2.2.1.1.1" style="font-size:80%;">29.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.2.fig2.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="A3.2.fig2.1.3.1" style="padding-top:0.8pt;padding-bottom:0.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.2.fig2.1.3.1.1">
<span class="ltx_p" id="A3.2.fig2.1.3.1.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.2.fig2.1.3.1.1.1.1" style="font-size:80%;">Overall Acc</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A3.2.fig2.1.3.2" style="padding-top:0.8pt;padding-bottom:0.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.2.fig2.1.3.2.1">
<span class="ltx_p" id="A3.2.fig2.1.3.2.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.2.fig2.1.3.2.1.1.1" style="font-size:80%;">27.7</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Eagle 2.5-8B model on the MMLongBench-Doc benchmark.  MMLongBench-Doc is a benchmark specifically designed to evaluate the performance of models on long-form document understanding tasks. The table likely shows key metrics such as ANLS (Approximate Normalized Levenshtein Similarity) score, exact match score, and F1 score, reflecting the model's accuracy and effectiveness in understanding and summarizing long documents. The results are presented for both the development and test sets, allowing for a comprehensive evaluation of the model's generalization abilities.
> <details>
> <summary>read the caption</summary>
> Table 10: Performance on the MMLongBench-Doc.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T11.st1.2.1">
<tr class="ltx_tr" id="A3.T11.st1.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.st1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.st1.2.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T11.st1.2.1.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.st1.2.1.1.2.1">
<span class="ltx_p" id="A3.T11.st1.2.1.1.2.1.1" style="width:483.7pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.st1.2.1.1.2.1.1.1">Dataset</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.st1.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T11.st1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="A3.T11.st1.2.1.2.1.1" style="position:relative; bottom:3.0pt;">Captioning &amp; Knowledge</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T11.st1.2.1.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.st1.2.1.2.2.1">
<span class="ltx_p" id="A3.T11.st1.2.1.2.2.1.1" style="width:483.7pt;">ShareGPT4o <cite class="ltx_cite ltx_citemacro_cite">OpenGVLab (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib161" title="">2024</a>)</cite>, KVQA <cite class="ltx_cite ltx_citemacro_cite">Shah et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib176" title="">2019</a>)</cite>, Movie-Posters <cite class="ltx_cite ltx_citemacro_cite">skvarre (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib186" title="">2024</a>)</cite>, Google-Landmark <cite class="ltx_cite ltx_citemacro_cite">Weyand et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib220" title="">2020</a>)</cite>, WikiArt <cite class="ltx_cite ltx_citemacro_cite">HugGAN (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib69" title="">2024</a>)</cite>, Weather-QA <cite class="ltx_cite ltx_citemacro_cite">Ma et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib137" title="">2024</a>)</cite>, Coco-Colors <cite class="ltx_cite ltx_citemacro_cite">hazal karakus (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib58" title="">2024</a>)</cite>, music-sheet <cite class="ltx_cite ltx_citemacro_cite">EmileEsmaili (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib41" title="">2024</a>)</cite>, SPARK <cite class="ltx_cite ltx_citemacro_cite">Yu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib245" title="">2024c</a>)</cite>, Image-Textualization <cite class="ltx_cite ltx_citemacro_cite">Pi et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib165" title="">2024</a>)</cite>, SAM-Caption <cite class="ltx_cite ltx_citemacro_cite">PixArt-alpha (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib166" title="">2024</a>)</cite>, Tmdb-Celeb-10k <cite class="ltx_cite ltx_citemacro_cite">Ashraq (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib5" title="">2024</a>)</cite>, PixMo <cite class="ltx_cite ltx_citemacro_cite">Deitke et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib37" title="">2024</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.st1.2.1.3" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.st1.2.1.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="A3.T11.st1.2.1.3.1.1" style="position:relative; bottom:3.0pt;background-color:#ECECEC;">Mathematics</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T11.st1.2.1.3.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.st1.2.1.3.2.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="A3.T11.st1.2.1.3.2.1.1" style="width:483.7pt;">GeoQA+ <cite class="ltx_cite ltx_citemacro_cite">Cao and Xiao (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib17" title="">2022</a>)</cite>, MathQA <cite class="ltx_cite ltx_citemacro_cite">Yu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib239" title="">2023a</a>)</cite>, CLEVR-Math/Super <cite class="ltx_cite ltx_citemacro_cite">Lindström and Abraham (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib115" title="">2022</a>); Li et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib113" title="">2023c</a>)</cite>, Geometry3K <cite class="ltx_cite ltx_citemacro_cite">Lu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib130" title="">2021a</a>)</cite>, MAVIS-math-rule-geo <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib259" title="">2024e</a>)</cite>, MAVIS-math-metagen <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib259" title="">2024e</a>)</cite>, InterGPS <cite class="ltx_cite ltx_citemacro_cite">Lu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib131" title="">2021b</a>)</cite>, Raven <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib255" title="">2019a</a>)</cite>, GEOS <cite class="ltx_cite ltx_citemacro_cite">Seo et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib175" title="">2015</a>)</cite>, UniGeo <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib24" title="">2022</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.st1.2.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.st1.2.1.4.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="A3.T11.st1.2.1.4.1.1" style="position:relative; bottom:3.0pt;">Science</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T11.st1.2.1.4.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.st1.2.1.4.2.1">
<span class="ltx_p" id="A3.T11.st1.2.1.4.2.1.1" style="width:483.7pt;">AI2D <cite class="ltx_cite ltx_citemacro_cite">Kembhavi et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib83" title="">2016</a>)</cite>, ScienceQA <cite class="ltx_cite ltx_citemacro_cite">Lu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib133" title="">2022a</a>)</cite>, TQA <cite class="ltx_cite ltx_citemacro_cite">Kembhavi et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib84" title="">2017</a>)</cite>, PathVQA <cite class="ltx_cite ltx_citemacro_cite">He et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib60" title="">2020</a>)</cite>, SciQA <cite class="ltx_cite ltx_citemacro_cite">Auer et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib6" title="">2023</a>)</cite>, <span class="ltx_text" id="A3.T11.st1.2.1.4.2.1.1.1" style="color:#FF00FF;">Textbooks-QA</span>, VQA-RAD <cite class="ltx_cite ltx_citemacro_cite">Lau et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib94" title="">2018</a>)</cite>, VisualWebInstruct <cite class="ltx_cite ltx_citemacro_cite">TIGER-Lab (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib202" title="">2024</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.st1.2.1.5" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.st1.2.1.5.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="A3.T11.st1.2.1.5.1.1" style="position:relative; bottom:3.0pt;background-color:#ECECEC;">Chart &amp; Table</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T11.st1.2.1.5.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.st1.2.1.5.2.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="A3.T11.st1.2.1.5.2.1.1" style="width:483.7pt;">ChartQA <cite class="ltx_cite ltx_citemacro_cite">Masry et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib142" title="">2022</a>)</cite>, MMC-Inst <cite class="ltx_cite ltx_citemacro_cite">Liu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib117" title="">2023b</a>)</cite>, DVQA <cite class="ltx_cite ltx_citemacro_cite">Kafle et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib79" title="">2018</a>)</cite>, PlotQA <cite class="ltx_cite ltx_citemacro_cite">Methani et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib147" title="">2020</a>)</cite>, LRV-Instruction <cite class="ltx_cite ltx_citemacro_cite">Liu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib116" title="">2023a</a>)</cite>, TabMWP <cite class="ltx_cite ltx_citemacro_cite">Lu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib134" title="">2022b</a>)</cite>, UniChart <cite class="ltx_cite ltx_citemacro_cite">Masry et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib143" title="">2023</a>)</cite>, Vistext <cite class="ltx_cite ltx_citemacro_cite">Tang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib195" title="">2023</a>)</cite>, TAT-DQA <cite class="ltx_cite ltx_citemacro_cite">Zhu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib276" title="">2022</a>)</cite>, VQAonBD <cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib210" title="">VQAonDB </a></cite>, FigureQA <cite class="ltx_cite ltx_citemacro_cite">Kahou et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib80" title="">2017</a>)</cite>, Chart2Text <cite class="ltx_cite ltx_citemacro_cite">Kantharaj et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib82" title="">2022</a>)</cite>, RobuT-{Wikisql, SQA, WTQ} <cite class="ltx_cite ltx_citemacro_cite">Zhao et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib269" title="">2023</a>)</cite>, MultiHiertt <cite class="ltx_cite ltx_citemacro_cite">Zhao et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib268" title="">2022</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.st1.2.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.st1.2.1.6.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="A3.T11.st1.2.1.6.1.1" style="position:relative; bottom:2.8pt;">Naive OCR</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T11.st1.2.1.6.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.st1.2.1.6.2.1">
<span class="ltx_p" id="A3.T11.st1.2.1.6.2.1.1" style="width:483.7pt;">SynthDoG <cite class="ltx_cite ltx_citemacro_cite">Kim et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib87" title="">2022</a>)</cite>, MTWI <cite class="ltx_cite ltx_citemacro_cite">He et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib59" title="">2018</a>)</cite>, LVST <cite class="ltx_cite ltx_citemacro_cite">Sun et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib192" title="">2019</a>)</cite>, SROIE <cite class="ltx_cite ltx_citemacro_cite">Huang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib68" title="">2019</a>)</cite>, FUNSD <cite class="ltx_cite ltx_citemacro_cite">Jaume et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib74" title="">2019</a>)</cite>, Latex-Formula <cite class="ltx_cite ltx_citemacro_cite">OleehyO (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib157" title="">2024</a>)</cite>, IAM <cite class="ltx_cite ltx_citemacro_cite">Marti and Bunke (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib141" title="">2002</a>)</cite>, Handwriting-Latex <cite class="ltx_cite ltx_citemacro_cite">aidapearson (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib3" title="">2023</a>)</cite>, ArT <cite class="ltx_cite ltx_citemacro_cite">Chng et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib33" title="">2019</a>)</cite>, CTW <cite class="ltx_cite ltx_citemacro_cite">Yuan et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib247" title="">2019</a>)</cite>, ReCTs <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib260" title="">2019b</a>)</cite>, COCO-Text <cite class="ltx_cite ltx_citemacro_cite">Veit et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib209" title="">2016</a>)</cite>, SVRD <cite class="ltx_cite ltx_citemacro_cite">Yu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib244" title="">2023d</a>)</cite>, Hiertext <cite class="ltx_cite ltx_citemacro_cite">Long et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib128" title="">2023</a>)</cite>, RoadText <cite class="ltx_cite ltx_citemacro_cite">Tom et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib204" title="">2023</a>)</cite>, MapText <cite class="ltx_cite ltx_citemacro_cite">Li et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib112" title="">2024f</a>)</cite>, CAPTCHA <cite class="ltx_cite ltx_citemacro_cite">parasam (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib162" title="">2024</a>)</cite>, Est-VQA <cite class="ltx_cite ltx_citemacro_cite">Wang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib213" title="">2020</a>)</cite>, HME-100K <cite class="ltx_cite ltx_citemacro_cite">TAL (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib193" title="">2023</a>)</cite>, TAL-OCR-ENG <cite class="ltx_cite ltx_citemacro_cite">TAL (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib193" title="">2023</a>)</cite>, TAL-HW-MATH <cite class="ltx_cite ltx_citemacro_cite">TAL (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib193" title="">2023</a>)</cite>, IMGUR5K <cite class="ltx_cite ltx_citemacro_cite">Krishnan et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib89" title="">2023</a>)</cite>, ORAND-CAR <cite class="ltx_cite ltx_citemacro_cite">Diem et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib38" title="">2014</a>)</cite>, Invoices-and-Receipts-OCR <cite class="ltx_cite ltx_citemacro_cite">mychen76 (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib155" title="">2024</a>)</cite>, Chrome-Writting <cite class="ltx_cite ltx_citemacro_cite">Mouchère et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib153" title="">2016</a>)</cite>, IIIT5k <cite class="ltx_cite ltx_citemacro_cite">Mishra et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib149" title="">2012</a>)</cite>, K12-Printing <cite class="ltx_cite ltx_citemacro_cite">TAL (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib193" title="">2023</a>)</cite>, Memotion <cite class="ltx_cite ltx_citemacro_cite">Ramamoorthy et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib170" title="">2022</a>)</cite>, <span class="ltx_text" id="A3.T11.st1.2.1.6.2.1.1.1" style="color:#FF00FF;">Arxiv2Markdown</span>, Handwritten-Mathematical-Expression <cite class="ltx_cite ltx_citemacro_cite">Azu (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib8" title="">2023</a>)</cite>, WordArt <cite class="ltx_cite ltx_citemacro_cite">Xie et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib228" title="">2022</a>)</cite>,
RenderedText <cite class="ltx_cite ltx_citemacro_cite">wendlerc (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib218" title="">2024</a>)</cite>, Handwriting-Forms <cite class="ltx_cite ltx_citemacro_cite">ift (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib72" title="">2024</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.st1.2.1.7" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.st1.2.1.7.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="A3.T11.st1.2.1.7.1.1" style="position:relative; bottom:20.0pt;background-color:#ECECEC;">OCR QA</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T11.st1.2.1.7.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.st1.2.1.7.2.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="A3.T11.st1.2.1.7.2.1.1" style="width:483.7pt;">DocVQA <cite class="ltx_cite ltx_citemacro_cite">Clark and Gardner (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib34" title="">2018</a>)</cite>, InfoVQA <cite class="ltx_cite ltx_citemacro_cite">Mathew et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib146" title="">2022</a>)</cite>, TextVQA <cite class="ltx_cite ltx_citemacro_cite">Singh et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib184" title="">2019a</a>)</cite>, ArxivQA <cite class="ltx_cite ltx_citemacro_cite">Li et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib107" title="">2024b</a>)</cite>,
ScreencQA <cite class="ltx_cite ltx_citemacro_cite">Hsiao et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib63" title="">2022</a>)</cite>, DocReason <cite class="ltx_cite ltx_citemacro_cite">mPLUG (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib154" title="">2024</a>)</cite>, Ureader <cite class="ltx_cite ltx_citemacro_cite">Ye et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib236" title="">2023</a>)</cite>, FinanceQA <cite class="ltx_cite ltx_citemacro_cite">Sujet AI (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib191" title="">2024</a>)</cite>, DocMatrix <cite class="ltx_cite ltx_citemacro_cite">Laurençon et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib95" title="">2024a</a>)</cite>, A-OKVQA <cite class="ltx_cite ltx_citemacro_cite">Schwenk et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib174" title="">2022</a>)</cite>, Diagram-Image-To-Text <cite class="ltx_cite ltx_citemacro_cite">Kamizuru00 (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib81" title="">2024</a>)</cite>, MapQA <cite class="ltx_cite ltx_citemacro_cite">Chang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib21" title="">2022</a>)</cite>, OCRVQA <cite class="ltx_cite ltx_citemacro_cite">Mishra et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib150" title="">2019</a>)</cite>, ST-VQA <cite class="ltx_cite ltx_citemacro_cite">Biten et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib15" title="">2019</a>)</cite>, SlideVQA <cite class="ltx_cite ltx_citemacro_cite">Tanaka et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib194" title="">2023</a>)</cite>, PDF-VQA <cite class="ltx_cite ltx_citemacro_cite">Ding et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib39" title="">2023</a>)</cite>, SQuAD-VQA, VQA-CD <cite class="ltx_cite ltx_citemacro_cite">Mahamoud et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib139" title="">2024</a>)</cite>, Block-Diagram <cite class="ltx_cite ltx_citemacro_cite">shreyanshu09 (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib181" title="">2024</a>)</cite>, MTVQA <cite class="ltx_cite ltx_citemacro_cite">Tang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib196" title="">2024</a>)</cite>, ColPali <cite class="ltx_cite ltx_citemacro_cite">Faysse et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib46" title="">2024</a>)</cite>, BenthamQA <cite class="ltx_cite ltx_citemacro_cite">Mathew et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib144" title="">2021a</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.st1.2.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.st1.2.1.8.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Grounding &amp; Counting</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T11.st1.2.1.8.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.st1.2.1.8.2.1">
<span class="ltx_p" id="A3.T11.st1.2.1.8.2.1.1" style="width:483.7pt;">TallyQA <cite class="ltx_cite ltx_citemacro_cite">Acharya et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib1" title="">2019</a>)</cite>, OODVQA <cite class="ltx_cite ltx_citemacro_cite">Tu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib207" title="">2023</a>)</cite>, RefCOCO/+/g (en) <cite class="ltx_cite ltx_citemacro_cite">Yu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib238" title="">2016</a>); Mao et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib140" title="">2016</a>)</cite>, GroundUI <cite class="ltx_cite ltx_citemacro_cite">Zheng et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib270" title="">2024a</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.st1.2.1.9" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.st1.2.1.9.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="A3.T11.st1.2.1.9.1.1" style="position:relative; bottom:2.8pt;background-color:#ECECEC;">General VQA</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T11.st1.2.1.9.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.st1.2.1.9.2.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="A3.T11.st1.2.1.9.2.1.1" style="width:483.7pt;">LLaVA-150K <cite class="ltx_cite ltx_citemacro_cite">Liu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib119" title="">2023d</a>)</cite>, LVIS-Instruct4V <cite class="ltx_cite ltx_citemacro_cite">Wang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib211" title="">2023</a>)</cite>, ALLaVA <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib22" title="">2024a</a>)</cite>, Laion-GPT4V <cite class="ltx_cite ltx_citemacro_cite">LAION (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib93" title="">2023</a>)</cite>, LLAVAR <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib263" title="">2023</a>)</cite>, SketchyVQA <cite class="ltx_cite ltx_citemacro_cite">Tu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib207" title="">2023</a>)</cite>,
OminiAlign-V <cite class="ltx_cite ltx_citemacro_cite">Zhao et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib267" title="">2025</a>)</cite>,
VizWiz <cite class="ltx_cite ltx_citemacro_cite">Gurari et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib55" title="">2018</a>)</cite>, IDK <cite class="ltx_cite ltx_citemacro_cite">Cha et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib19" title="">2024</a>)</cite>, AlfworldGPT, LNQA <cite class="ltx_cite ltx_citemacro_cite">Pont-Tuset et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib167" title="">2020</a>)</cite>, Face-Emotion <cite class="ltx_cite ltx_citemacro_cite">FastJobs (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib45" title="">2024</a>)</cite>, SpatialSense <cite class="ltx_cite ltx_citemacro_cite">Yang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib234" title="">2019</a>)</cite>, Indoor-QA <cite class="ltx_cite ltx_citemacro_cite">keremberke (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib85" title="">2024</a>)</cite>, Places365 <cite class="ltx_cite ltx_citemacro_cite">Zhou et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib272" title="">2017</a>)</cite>, MMinstruct <cite class="ltx_cite ltx_citemacro_cite">Liu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib122" title="">2024c</a>)</cite>, DriveLM <cite class="ltx_cite ltx_citemacro_cite">Sima et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib183" title="">2023</a>)</cite>, YesBut <cite class="ltx_cite ltx_citemacro_cite">Nandy et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib156" title="">2024</a>)</cite>, WildVision <cite class="ltx_cite ltx_citemacro_cite">Lu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib136" title="">2024</a>)</cite>, LLaVA-Critic-113k <cite class="ltx_cite ltx_citemacro_cite">Xiong et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib229" title="">2024</a>)</cite>, RLAIF-V <cite class="ltx_cite ltx_citemacro_cite">Yu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib242" title="">2024b</a>)</cite>, VQAv2 <cite class="ltx_cite ltx_citemacro_cite">Goyal et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib51" title="">2017b</a>)</cite>, MMRA <cite class="ltx_cite ltx_citemacro_cite">Wu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib224" title="">2024b</a>)</cite>, KONIQ <cite class="ltx_cite ltx_citemacro_cite">Hosu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib62" title="">2020</a>)</cite>, MMDU <cite class="ltx_cite ltx_citemacro_cite">Liu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib127" title="">2024f</a>)</cite>, Spot-The-Diff <cite class="ltx_cite ltx_citemacro_cite">Jhamtani and Berg-Kirkpatrick (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib75" title="">2018</a>)</cite>, Hateful-Memes <cite class="ltx_cite ltx_citemacro_cite">Kiela et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib86" title="">2020</a>)</cite>, COCO-QA <cite class="ltx_cite ltx_citemacro_cite">Ren et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib173" title="">2015</a>)</cite>, NLVR <cite class="ltx_cite ltx_citemacro_cite">Suhr et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib190" title="">2017</a>)</cite>, Mimic-CGD <cite class="ltx_cite ltx_citemacro_cite">Laurençon et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib96" title="">2024b</a>)</cite>, Datikz <cite class="ltx_cite ltx_citemacro_cite">Belouadi et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib14" title="">2023</a>)</cite>,
Chinese-Meme <cite class="ltx_cite ltx_citemacro_cite">Contributors (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib35" title="">2024</a>)</cite>, IconQA <cite class="ltx_cite ltx_citemacro_cite">Lu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib132" title="">2021c</a>)</cite>, Websight <cite class="ltx_cite ltx_citemacro_cite">Laurençon et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib97" title="">2024c</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.st1.2.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.st1.2.1.10.1" rowspan="3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="A3.T11.st1.2.1.10.1.1" style="position:relative; bottom:1.3pt;">Text-only</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T11.st1.2.1.10.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.st1.2.1.10.2.1">
<span class="ltx_p" id="A3.T11.st1.2.1.10.2.1.1" style="width:483.7pt;">Orca <cite class="ltx_cite ltx_citemacro_cite">Lian et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib114" title="">2023</a>)</cite>, Orca-Math <cite class="ltx_cite ltx_citemacro_cite">Mitra et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib151" title="">2024</a>)</cite>, OpenCodeInterpreter <cite class="ltx_cite ltx_citemacro_cite">Zheng et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib271" title="">2024b</a>)</cite>
MathInstruct <cite class="ltx_cite ltx_citemacro_cite">Yue et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib248" title="">2023a</a>)</cite>, WizardLM <cite class="ltx_cite ltx_citemacro_cite">Xu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib230" title="">2023</a>)</cite>, TheoremQA <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib29" title="">2023b</a>)</cite>, OpenHermes2.5 <cite class="ltx_cite ltx_citemacro_cite">Teknium (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib201" title="">2023</a>)</cite>, NuminaMath-CoT <cite class="ltx_cite ltx_citemacro_cite">LI et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib103" title="">2024</a>)</cite>, Python-Code-25k <cite class="ltx_cite ltx_citemacro_cite">flytech (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib47" title="">2024</a>)</cite>, Infinity-Instruct <cite class="ltx_cite ltx_citemacro_cite">BAAI (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib9" title="">2024</a>)</cite>,
Python-Code-Instructions-18k-Alpaca <cite class="ltx_cite ltx_citemacro_cite">iamtarun (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib70" title="">2024</a>)</cite>, Ruozhiba <cite class="ltx_cite ltx_citemacro_cite">LooksJuicy (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib129" title="">2024</a>)</cite>, InfinityMATH <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib254" title="">2024a</a>)</cite>, StepDPO <cite class="ltx_cite ltx_citemacro_cite">Lai et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib92" title="">2024</a>)</cite>, TableLLM <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib262" title="">2024g</a>)</cite>, UltraInteract-sft <cite class="ltx_cite ltx_citemacro_cite">Yuan et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib246" title="">2024</a>)</cite></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a summary of the datasets used for supervised fine-tuning (SFT) in the Eagle 2.5 model.  It categorizes datasets by the type of visual and textual data they provide, such as video classification, temporal action localization, video temporal grounding, dense video captioning, temporal segmentation, temporal reasoning, general video QA, multi-page documents, and video captioning. For each category, it lists the specific datasets used, including both open-source and potentially internal datasets.
> <details>
> <summary>read the caption</summary>
> (a) Summary of the collected Eagle 2.5 SFT datasets
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T11.st2.2.1">
<tr class="ltx_tr" id="A3.T11.st2.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.st2.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.st2.2.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T11.st2.2.1.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.st2.2.1.1.2.1">
<span class="ltx_p" id="A3.T11.st2.2.1.1.2.1.1" style="width:483.7pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.st2.2.1.1.2.1.1.1">Dataset</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.st2.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T11.st2.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Captioning &amp; Knowledge</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T11.st2.2.1.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.st2.2.1.2.2.1">
<span class="ltx_p" id="A3.T11.st2.2.1.2.2.1.1" style="width:483.7pt;">CC3M <cite class="ltx_cite ltx_citemacro_cite">Sharma et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib178" title="">2018</a>)</cite>, TextCaps <cite class="ltx_cite ltx_citemacro_cite">Sidorov et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib182" title="">2020</a>)</cite>, ShareGPT-4V <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib25" title="">2023a</a>)</cite>, DenseFusion-1M <cite class="ltx_cite ltx_citemacro_cite">Li et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib109" title="">2024c</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.st2.2.1.3" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.st2.2.1.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="A3.T11.st2.2.1.3.1.1" style="background-color:#ECECEC;">Grounding &amp; Counting</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T11.st2.2.1.3.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.st2.2.1.3.2.1" style="background-color:#ECECEC;">
<span class="ltx_p" id="A3.T11.st2.2.1.3.2.1.1" style="width:483.7pt;">Object 365 <cite class="ltx_cite ltx_citemacro_cite">Shao et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib177" title="">2019</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.st2.2.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.st2.2.1.4.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Text-only</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T11.st2.2.1.4.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.st2.2.1.4.2.1">
<span class="ltx_p" id="A3.T11.st2.2.1.4.2.1.1" style="width:483.7pt;">OpenMathInstruct <cite class="ltx_cite ltx_citemacro_cite">Toshniwal et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.15271v1#bib.bib206" title="">2024</a>)</cite></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 11b shows the additional datasets used in Stage 1.5 of Eagle 2.5 training.  These datasets are used to enhance the model's performance by including supplementary image captioning and knowledge data as well as  short and long-context data including images. The table lists the datasets and their categories.
> <details>
> <summary>read the caption</summary>
> (b) Summary of the additional Stage 1.5 datasets
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T12.2">
<tr class="ltx_tr" id="A5.T12.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T12.2.1.1"><span class="ltx_text ltx_font_bold" id="A5.T12.2.1.1.1" style="font-size:70%;">Index</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T12.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.1.2.1">
<span class="ltx_p" id="A5.T12.2.1.2.1.1" style="width:108.4pt;"><span class="ltx_text ltx_font_bold" id="A5.T12.2.1.2.1.1.1" style="font-size:70%;">Category</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T12.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.1.3.1">
<span class="ltx_p" id="A5.T12.2.1.3.1.1" style="width:281.9pt;"><span class="ltx_text ltx_font_bold" id="A5.T12.2.1.3.1.1.1" style="font-size:70%;">Description</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T12.2.2.1"><span class="ltx_text" id="A5.T12.2.2.1.1" style="font-size:70%;">1</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T12.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.2.2.1">
<span class="ltx_p" id="A5.T12.2.2.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.2.2.1.1.1" style="font-size:70%;">object_recognition</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T12.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.2.3.1">
<span class="ltx_p" id="A5.T12.2.2.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.2.3.1.1.1" style="font-size:70%;">Questions about what an object is</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.3">
<td class="ltx_td ltx_align_center" id="A5.T12.2.3.1"><span class="ltx_text" id="A5.T12.2.3.1.1" style="font-size:70%;">2</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.3.2.1">
<span class="ltx_p" id="A5.T12.2.3.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.3.2.1.1.1" style="font-size:70%;">object_properties</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.3.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.3.3.1">
<span class="ltx_p" id="A5.T12.2.3.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.3.3.1.1.1" style="font-size:70%;">Questions about object properties, such as color, shape, material, texture</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.4">
<td class="ltx_td ltx_align_center" id="A5.T12.2.4.1"><span class="ltx_text" id="A5.T12.2.4.1.1" style="font-size:70%;">3</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.4.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.4.2.1">
<span class="ltx_p" id="A5.T12.2.4.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.4.2.1.1.1" style="font-size:70%;">object_count</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.4.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.4.3.1">
<span class="ltx_p" id="A5.T12.2.4.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.4.3.1.1.1" style="font-size:70%;">Questions about the number of objects</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.5">
<td class="ltx_td ltx_align_center" id="A5.T12.2.5.1"><span class="ltx_text" id="A5.T12.2.5.1.1" style="font-size:70%;">4</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.5.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.5.2.1">
<span class="ltx_p" id="A5.T12.2.5.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.5.2.1.1.1" style="font-size:70%;">object_state</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.5.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.5.3.1">
<span class="ltx_p" id="A5.T12.2.5.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.5.3.1.1.1" style="font-size:70%;">Questions about object states, such as stretched, compressed, cut, stationary</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.6">
<td class="ltx_td ltx_align_center" id="A5.T12.2.6.1"><span class="ltx_text" id="A5.T12.2.6.1.1" style="font-size:70%;">5</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.6.2.1">
<span class="ltx_p" id="A5.T12.2.6.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.6.2.1.1.1" style="font-size:70%;">object_location</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.6.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.6.3.1">
<span class="ltx_p" id="A5.T12.2.6.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.6.3.1.1.1" style="font-size:70%;">Questions about where an object is located</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.7">
<td class="ltx_td ltx_align_center" id="A5.T12.2.7.1"><span class="ltx_text" id="A5.T12.2.7.1.1" style="font-size:70%;">6</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.7.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.7.2.1">
<span class="ltx_p" id="A5.T12.2.7.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.7.2.1.1.1" style="font-size:70%;">object_presence</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.7.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.7.3.1">
<span class="ltx_p" id="A5.T12.2.7.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.7.3.1.1.1" style="font-size:70%;">Questions about object existence</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.8">
<td class="ltx_td ltx_align_center" id="A5.T12.2.8.1"><span class="ltx_text" id="A5.T12.2.8.1.1" style="font-size:70%;">7</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.8.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.8.2.1">
<span class="ltx_p" id="A5.T12.2.8.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.8.2.1.1.1" style="font-size:70%;">human_attributes</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.8.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.8.3.1">
<span class="ltx_p" id="A5.T12.2.8.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.8.3.1.1.1" style="font-size:70%;">Questions about human attributes, such as height, body type, build</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.9">
<td class="ltx_td ltx_align_center" id="A5.T12.2.9.1"><span class="ltx_text" id="A5.T12.2.9.1.1" style="font-size:70%;">8</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.9.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.9.2.1">
<span class="ltx_p" id="A5.T12.2.9.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.9.2.1.1.1" style="font-size:70%;">human_pose</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.9.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.9.3.1">
<span class="ltx_p" id="A5.T12.2.9.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.9.3.1.1.1" style="font-size:70%;">Questions about human posture</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.10">
<td class="ltx_td ltx_align_center" id="A5.T12.2.10.1"><span class="ltx_text" id="A5.T12.2.10.1.1" style="font-size:70%;">9</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.10.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.10.2.1">
<span class="ltx_p" id="A5.T12.2.10.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.10.2.1.1.1" style="font-size:70%;">human_appearance</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.10.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.10.3.1">
<span class="ltx_p" id="A5.T12.2.10.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.10.3.1.1.1" style="font-size:70%;">Questions about human external appearance, such as clothing and makeup</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.11">
<td class="ltx_td ltx_align_center" id="A5.T12.2.11.1"><span class="ltx_text" id="A5.T12.2.11.1.1" style="font-size:70%;">10</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.11.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.11.2.1">
<span class="ltx_p" id="A5.T12.2.11.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.11.2.1.1.1" style="font-size:70%;">human_identity</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.11.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.11.3.1">
<span class="ltx_p" id="A5.T12.2.11.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.11.3.1.1.1" style="font-size:70%;">Questions about human identity</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.12">
<td class="ltx_td ltx_align_center" id="A5.T12.2.12.1"><span class="ltx_text" id="A5.T12.2.12.1.1" style="font-size:70%;">11</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.12.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.12.2.1">
<span class="ltx_p" id="A5.T12.2.12.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.12.2.1.1.1" style="font-size:70%;">human_cognitive_process</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.12.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.12.3.1">
<span class="ltx_p" id="A5.T12.2.12.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.12.3.1.1.1" style="font-size:70%;">Questions about human mental processes, including intentions, motivations, decision-making rationale, problem-solving approaches, and reasoning methods</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.13">
<td class="ltx_td ltx_align_center" id="A5.T12.2.13.1"><span class="ltx_text" id="A5.T12.2.13.1.1" style="font-size:70%;">12</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.13.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.13.2.1">
<span class="ltx_p" id="A5.T12.2.13.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.13.2.1.1.1" style="font-size:70%;">human_location</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.13.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.13.3.1">
<span class="ltx_p" id="A5.T12.2.13.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.13.3.1.1.1" style="font-size:70%;">Questions about human location</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.14">
<td class="ltx_td ltx_align_center" id="A5.T12.2.14.1"><span class="ltx_text" id="A5.T12.2.14.1.1" style="font-size:70%;">13</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.14.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.14.2.1">
<span class="ltx_p" id="A5.T12.2.14.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.14.2.1.1.1" style="font-size:70%;">human_emotion</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.14.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.14.3.1">
<span class="ltx_p" id="A5.T12.2.14.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.14.3.1.1.1" style="font-size:70%;">Questions about human emotional state</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.15">
<td class="ltx_td ltx_align_center" id="A5.T12.2.15.1"><span class="ltx_text" id="A5.T12.2.15.1.1" style="font-size:70%;">14</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.15.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.15.2.1">
<span class="ltx_p" id="A5.T12.2.15.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.15.2.1.1.1" style="font-size:70%;">scene_description</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.15.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.15.3.1">
<span class="ltx_p" id="A5.T12.2.15.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.15.3.1.1.1" style="font-size:70%;">Questions about overall scene description</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.16">
<td class="ltx_td ltx_align_center" id="A5.T12.2.16.1"><span class="ltx_text" id="A5.T12.2.16.1.1" style="font-size:70%;">15</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.16.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.16.2.1">
<span class="ltx_p" id="A5.T12.2.16.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.16.2.1.1.1" style="font-size:70%;">text_recognition</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.16.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.16.3.1">
<span class="ltx_p" id="A5.T12.2.16.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.16.3.1.1.1" style="font-size:70%;">Questions about text content appearing in the video</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.17">
<td class="ltx_td ltx_align_center" id="A5.T12.2.17.1"><span class="ltx_text" id="A5.T12.2.17.1.1" style="font-size:70%;">16</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.17.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.17.2.1">
<span class="ltx_p" id="A5.T12.2.17.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.17.2.1.1.1" style="font-size:70%;">text_count</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.17.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.17.3.1">
<span class="ltx_p" id="A5.T12.2.17.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.17.3.1.1.1" style="font-size:70%;">Questions about frequency of text appearances in the video</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.18">
<td class="ltx_td ltx_align_center" id="A5.T12.2.18.1"><span class="ltx_text" id="A5.T12.2.18.1.1" style="font-size:70%;">17</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.18.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.18.2.1">
<span class="ltx_p" id="A5.T12.2.18.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.18.2.1.1.1" style="font-size:70%;">text_location</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.18.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.18.3.1">
<span class="ltx_p" id="A5.T12.2.18.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.18.3.1.1.1" style="font-size:70%;">Questions about location of text in the video</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.19">
<td class="ltx_td ltx_align_center" id="A5.T12.2.19.1"><span class="ltx_text" id="A5.T12.2.19.1.1" style="font-size:70%;">18</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.19.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.19.2.1">
<span class="ltx_p" id="A5.T12.2.19.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.19.2.1.1.1" style="font-size:70%;">single_object_event_recognition</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.19.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.19.3.1">
<span class="ltx_p" id="A5.T12.2.19.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.19.3.1.1.1" style="font-size:70%;">Questions about events involving a single object</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.20">
<td class="ltx_td ltx_align_center" id="A5.T12.2.20.1"><span class="ltx_text" id="A5.T12.2.20.1.1" style="font-size:70%;">19</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.20.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.20.2.1">
<span class="ltx_p" id="A5.T12.2.20.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.20.2.1.1.1" style="font-size:70%;">single_object_event_count</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.20.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.20.3.1">
<span class="ltx_p" id="A5.T12.2.20.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.20.3.1.1.1" style="font-size:70%;">Questions about frequency of single-object events</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.21">
<td class="ltx_td ltx_align_center" id="A5.T12.2.21.1"><span class="ltx_text" id="A5.T12.2.21.1.1" style="font-size:70%;">20</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.21.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.21.2.1">
<span class="ltx_p" id="A5.T12.2.21.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.21.2.1.1.1" style="font-size:70%;">single_object_state_change</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.21.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.21.3.1">
<span class="ltx_p" id="A5.T12.2.21.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.21.3.1.1.1" style="font-size:70%;">Questions about changes in single object state</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.22">
<td class="ltx_td ltx_align_center" id="A5.T12.2.22.1"><span class="ltx_text" id="A5.T12.2.22.1.1" style="font-size:70%;">21</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.22.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.22.2.1">
<span class="ltx_p" id="A5.T12.2.22.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.22.2.1.1.1" style="font-size:70%;">single_object_quantity_change</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.22.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.22.3.1">
<span class="ltx_p" id="A5.T12.2.22.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.22.3.1.1.1" style="font-size:70%;">Questions about changes in single object quantity</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.23">
<td class="ltx_td ltx_align_center" id="A5.T12.2.23.1"><span class="ltx_text" id="A5.T12.2.23.1.1" style="font-size:70%;">22</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.23.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.23.2.1">
<span class="ltx_p" id="A5.T12.2.23.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.23.2.1.1.1" style="font-size:70%;">single_object_location_change</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.23.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.23.3.1">
<span class="ltx_p" id="A5.T12.2.23.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.23.3.1.1.1" style="font-size:70%;">Questions about changes in single object location</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.24">
<td class="ltx_td ltx_align_center" id="A5.T12.2.24.1"><span class="ltx_text" id="A5.T12.2.24.1.1" style="font-size:70%;">23</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.24.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.24.2.1">
<span class="ltx_p" id="A5.T12.2.24.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.24.2.1.1.1" style="font-size:70%;">single_object_trajectory</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.24.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.24.3.1">
<span class="ltx_p" id="A5.T12.2.24.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.24.3.1.1.1" style="font-size:70%;">Questions about single object motion trajectory</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.25">
<td class="ltx_td ltx_align_center" id="A5.T12.2.25.1"><span class="ltx_text" id="A5.T12.2.25.1.1" style="font-size:70%;">24</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.25.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.25.2.1">
<span class="ltx_p" id="A5.T12.2.25.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.25.2.1.1.1" style="font-size:70%;">single_object_speed</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.25.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.25.3.1">
<span class="ltx_p" id="A5.T12.2.25.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.25.3.1.1.1" style="font-size:70%;">Questions about single object movement speed</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.26">
<td class="ltx_td ltx_align_center" id="A5.T12.2.26.1"><span class="ltx_text" id="A5.T12.2.26.1.1" style="font-size:70%;">25</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.26.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.26.2.1">
<span class="ltx_p" id="A5.T12.2.26.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.26.2.1.1.1" style="font-size:70%;">single_object_presence_change</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.26.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.26.3.1">
<span class="ltx_p" id="A5.T12.2.26.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.26.3.1.1.1" style="font-size:70%;">Questions about changes in single object presence</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.27">
<td class="ltx_td ltx_align_center" id="A5.T12.2.27.1"><span class="ltx_text" id="A5.T12.2.27.1.1" style="font-size:70%;">26</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.27.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.27.2.1">
<span class="ltx_p" id="A5.T12.2.27.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.27.2.1.1.1" style="font-size:70%;">human_object_interaction_recognition</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.27.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.27.3.1">
<span class="ltx_p" id="A5.T12.2.27.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.27.3.1.1.1" style="font-size:70%;">Questions about types of human-object interaction</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.28">
<td class="ltx_td ltx_align_center" id="A5.T12.2.28.1"><span class="ltx_text" id="A5.T12.2.28.1.1" style="font-size:70%;">27</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.28.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.28.2.1">
<span class="ltx_p" id="A5.T12.2.28.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.28.2.1.1.1" style="font-size:70%;">human_object_interaction_count</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.28.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.28.3.1">
<span class="ltx_p" id="A5.T12.2.28.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.28.3.1.1.1" style="font-size:70%;">Questions about frequency of human-object interactions</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.29">
<td class="ltx_td ltx_align_center" id="A5.T12.2.29.1"><span class="ltx_text" id="A5.T12.2.29.1.1" style="font-size:70%;">28</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.29.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.29.2.1">
<span class="ltx_p" id="A5.T12.2.29.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.29.2.1.1.1" style="font-size:70%;">human_human_interaction_recognition</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.29.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.29.3.1">
<span class="ltx_p" id="A5.T12.2.29.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.29.3.1.1.1" style="font-size:70%;">Questions about types of human-human interaction</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.30">
<td class="ltx_td ltx_align_center" id="A5.T12.2.30.1"><span class="ltx_text" id="A5.T12.2.30.1.1" style="font-size:70%;">29</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.30.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.30.2.1">
<span class="ltx_p" id="A5.T12.2.30.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.30.2.1.1.1" style="font-size:70%;">object_interaction</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.30.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.30.3.1">
<span class="ltx_p" id="A5.T12.2.30.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.30.3.1.1.1" style="font-size:70%;">Questions about objects’ states, actions, interactions, changes, identifications (including brands), and how objects affect or interact with other objects</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.31">
<td class="ltx_td ltx_align_center" id="A5.T12.2.31.1"><span class="ltx_text" id="A5.T12.2.31.1.1" style="font-size:70%;">30</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.31.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.31.2.1">
<span class="ltx_p" id="A5.T12.2.31.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.31.2.1.1.1" style="font-size:70%;">abnormal_event_detection</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.31.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.31.3.1">
<span class="ltx_p" id="A5.T12.2.31.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.31.3.1.1.1" style="font-size:70%;">Questions about presence of abnormal events</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.32">
<td class="ltx_td ltx_align_center" id="A5.T12.2.32.1"><span class="ltx_text" id="A5.T12.2.32.1.1" style="font-size:70%;">31</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.32.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.32.2.1">
<span class="ltx_p" id="A5.T12.2.32.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.32.2.1.1.1" style="font-size:70%;">domain_medical</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.32.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.32.3.1">
<span class="ltx_p" id="A5.T12.2.32.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.32.3.1.1.1" style="font-size:70%;">Questions about medical-related professional knowledge</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.33">
<td class="ltx_td ltx_align_center" id="A5.T12.2.33.1"><span class="ltx_text" id="A5.T12.2.33.1.1" style="font-size:70%;">32</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.33.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.33.2.1">
<span class="ltx_p" id="A5.T12.2.33.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.33.2.1.1.1" style="font-size:70%;">domain_education</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.33.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.33.3.1">
<span class="ltx_p" id="A5.T12.2.33.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.33.3.1.1.1" style="font-size:70%;">Questions about education-related professional knowledge</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.34">
<td class="ltx_td ltx_align_center" id="A5.T12.2.34.1"><span class="ltx_text" id="A5.T12.2.34.1.1" style="font-size:70%;">33</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.34.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.34.2.1">
<span class="ltx_p" id="A5.T12.2.34.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.34.2.1.1.1" style="font-size:70%;">domain_sports</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.34.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.34.3.1">
<span class="ltx_p" id="A5.T12.2.34.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.34.3.1.1.1" style="font-size:70%;">Questions about sports-related professional knowledge</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.35">
<td class="ltx_td ltx_align_center" id="A5.T12.2.35.1"><span class="ltx_text" id="A5.T12.2.35.1.1" style="font-size:70%;">34</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.35.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.35.2.1">
<span class="ltx_p" id="A5.T12.2.35.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.35.2.1.1.1" style="font-size:70%;">domain_movies</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.35.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.35.3.1">
<span class="ltx_p" id="A5.T12.2.35.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.35.3.1.1.1" style="font-size:70%;">Questions about movie-related professional knowledge</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.36">
<td class="ltx_td ltx_align_center" id="A5.T12.2.36.1"><span class="ltx_text" id="A5.T12.2.36.1.1" style="font-size:70%;">35</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.36.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.36.2.1">
<span class="ltx_p" id="A5.T12.2.36.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.36.2.1.1.1" style="font-size:70%;">domain_gaming</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.36.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.36.3.1">
<span class="ltx_p" id="A5.T12.2.36.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.36.3.1.1.1" style="font-size:70%;">Questions about gaming-related professional knowledge</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.37">
<td class="ltx_td ltx_align_center" id="A5.T12.2.37.1"><span class="ltx_text" id="A5.T12.2.37.1.1" style="font-size:70%;">36</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.37.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.37.2.1">
<span class="ltx_p" id="A5.T12.2.37.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.37.2.1.1.1" style="font-size:70%;">domain_technology</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.37.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.37.3.1">
<span class="ltx_p" id="A5.T12.2.37.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.37.3.1.1.1" style="font-size:70%;">Questions about technology-related professional knowledge</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.38">
<td class="ltx_td ltx_align_center" id="A5.T12.2.38.1"><span class="ltx_text" id="A5.T12.2.38.1.1" style="font-size:70%;">37</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.38.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.38.2.1">
<span class="ltx_p" id="A5.T12.2.38.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.38.2.1.1.1" style="font-size:70%;">domain_arts</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.38.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.38.3.1">
<span class="ltx_p" id="A5.T12.2.38.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.38.3.1.1.1" style="font-size:70%;">Questions about arts-related professional knowledge</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.39">
<td class="ltx_td ltx_align_center" id="A5.T12.2.39.1"><span class="ltx_text" id="A5.T12.2.39.1.1" style="font-size:70%;">38</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.39.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.39.2.1">
<span class="ltx_p" id="A5.T12.2.39.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.39.2.1.1.1" style="font-size:70%;">video_editing_effects</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.39.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.39.3.1">
<span class="ltx_p" id="A5.T12.2.39.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.39.3.1.1.1" style="font-size:70%;">Questions about video editing effects, including shot transitions, editing effects, transition effects, etc.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.40">
<td class="ltx_td ltx_align_center" id="A5.T12.2.40.1"><span class="ltx_text" id="A5.T12.2.40.1.1" style="font-size:70%;">39</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.40.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.40.2.1">
<span class="ltx_p" id="A5.T12.2.40.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.40.2.1.1.1" style="font-size:70%;">camera_movement</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.40.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.40.3.1">
<span class="ltx_p" id="A5.T12.2.40.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.40.3.1.1.1" style="font-size:70%;">Questions about camera motion</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.41">
<td class="ltx_td ltx_align_center" id="A5.T12.2.41.1"><span class="ltx_text" id="A5.T12.2.41.1.1" style="font-size:70%;">40</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.41.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.41.2.1">
<span class="ltx_p" id="A5.T12.2.41.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.41.2.1.1.1" style="font-size:70%;">spatial_relationship</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.41.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.41.3.1">
<span class="ltx_p" id="A5.T12.2.41.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.41.3.1.1.1" style="font-size:70%;">Questions about spatial relationships between objects</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.42">
<td class="ltx_td ltx_align_center" id="A5.T12.2.42.1"><span class="ltx_text" id="A5.T12.2.42.1.1" style="font-size:70%;">41</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.42.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.42.2.1">
<span class="ltx_p" id="A5.T12.2.42.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.42.2.1.1.1" style="font-size:70%;">property_comparison</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.42.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.42.3.1">
<span class="ltx_p" id="A5.T12.2.42.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.42.3.1.1.1" style="font-size:70%;">Questions about comparison of multiple object properties</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.43">
<td class="ltx_td ltx_align_center" id="A5.T12.2.43.1"><span class="ltx_text" id="A5.T12.2.43.1.1" style="font-size:70%;">42</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.43.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.43.2.1">
<span class="ltx_p" id="A5.T12.2.43.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.43.2.1.1.1" style="font-size:70%;">quantity_comparison</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.43.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.43.3.1">
<span class="ltx_p" id="A5.T12.2.43.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.43.3.1.1.1" style="font-size:70%;">Questions about comparison of multiple object quantities</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.44">
<td class="ltx_td ltx_align_center" id="A5.T12.2.44.1"><span class="ltx_text" id="A5.T12.2.44.1.1" style="font-size:70%;">43</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.44.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.44.2.1">
<span class="ltx_p" id="A5.T12.2.44.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.44.2.1.1.1" style="font-size:70%;">state_comparison</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.44.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.44.3.1">
<span class="ltx_p" id="A5.T12.2.44.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.44.3.1.1.1" style="font-size:70%;">Questions about comparison of multiple object states</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.45">
<td class="ltx_td ltx_align_center" id="A5.T12.2.45.1"><span class="ltx_text" id="A5.T12.2.45.1.1" style="font-size:70%;">44</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.45.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.45.2.1">
<span class="ltx_p" id="A5.T12.2.45.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.45.2.1.1.1" style="font-size:70%;">human_object_relationship</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.45.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.45.3.1">
<span class="ltx_p" id="A5.T12.2.45.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.45.3.1.1.1" style="font-size:70%;">Questions about human-object relationships</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.46">
<td class="ltx_td ltx_align_center" id="A5.T12.2.46.1"><span class="ltx_text" id="A5.T12.2.46.1.1" style="font-size:70%;">45</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.46.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.46.2.1">
<span class="ltx_p" id="A5.T12.2.46.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.46.2.1.1.1" style="font-size:70%;">human_human_relationship</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.46.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.46.3.1">
<span class="ltx_p" id="A5.T12.2.46.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.46.3.1.1.1" style="font-size:70%;">Questions about human-human relationships</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.47">
<td class="ltx_td ltx_align_center" id="A5.T12.2.47.1"><span class="ltx_text" id="A5.T12.2.47.1.1" style="font-size:70%;">46</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.47.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.47.2.1">
<span class="ltx_p" id="A5.T12.2.47.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.47.2.1.1.1" style="font-size:70%;">scene_sequence</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.47.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.47.3.1">
<span class="ltx_p" id="A5.T12.2.47.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.47.3.1.1.1" style="font-size:70%;">Questions about temporal relationships between scenes</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.48">
<td class="ltx_td ltx_align_center" id="A5.T12.2.48.1"><span class="ltx_text" id="A5.T12.2.48.1.1" style="font-size:70%;">47</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.48.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.48.2.1">
<span class="ltx_p" id="A5.T12.2.48.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.48.2.1.1.1" style="font-size:70%;">event_sequence</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.48.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.48.3.1">
<span class="ltx_p" id="A5.T12.2.48.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.48.3.1.1.1" style="font-size:70%;">Questions about temporal relationships between events</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.49">
<td class="ltx_td ltx_align_center" id="A5.T12.2.49.1"><span class="ltx_text" id="A5.T12.2.49.1.1" style="font-size:70%;">48</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.49.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.49.2.1">
<span class="ltx_p" id="A5.T12.2.49.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.49.2.1.1.1" style="font-size:70%;">event_causality</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.49.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.49.3.1">
<span class="ltx_p" id="A5.T12.2.49.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.49.3.1.1.1" style="font-size:70%;">Questions about causal relationships between events, including both human-initiated actions and their consequences, as well as cause-effect relationships in natural or systematic processes</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.50">
<td class="ltx_td ltx_align_center" id="A5.T12.2.50.1"><span class="ltx_text" id="A5.T12.2.50.1.1" style="font-size:70%;">49</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.50.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.50.2.1">
<span class="ltx_p" id="A5.T12.2.50.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.50.2.1.1.1" style="font-size:70%;">counterfactual_reasoning</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.50.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.50.3.1">
<span class="ltx_p" id="A5.T12.2.50.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.50.3.1.1.1" style="font-size:70%;">Questions about counterfactual reasoning</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.51">
<td class="ltx_td ltx_align_center" id="A5.T12.2.51.1"><span class="ltx_text" id="A5.T12.2.51.1.1" style="font-size:70%;">50</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.51.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.51.2.1">
<span class="ltx_p" id="A5.T12.2.51.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.51.2.1.1.1" style="font-size:70%;">trajectory_tracking</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.51.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.51.3.1">
<span class="ltx_p" id="A5.T12.2.51.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.51.3.1.1.1" style="font-size:70%;">Questions about tracking object or human positions</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.52">
<td class="ltx_td ltx_align_center" id="A5.T12.2.52.1"><span class="ltx_text" id="A5.T12.2.52.1.1" style="font-size:70%;">51</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.52.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.52.2.1">
<span class="ltx_p" id="A5.T12.2.52.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.52.2.1.1.1" style="font-size:70%;">speed_comparison</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.52.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.52.3.1">
<span class="ltx_p" id="A5.T12.2.52.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.52.3.1.1.1" style="font-size:70%;">Questions about speed comparison between multiple objects or humans</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.53">
<td class="ltx_td ltx_align_center" id="A5.T12.2.53.1"><span class="ltx_text" id="A5.T12.2.53.1.1" style="font-size:70%;">52</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.53.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.53.2.1">
<span class="ltx_p" id="A5.T12.2.53.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.53.2.1.1.1" style="font-size:70%;">event_prediction</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.53.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.53.3.1">
<span class="ltx_p" id="A5.T12.2.53.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.53.3.1.1.1" style="font-size:70%;">Questions about future event prediction</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.54">
<td class="ltx_td ltx_align_center" id="A5.T12.2.54.1"><span class="ltx_text" id="A5.T12.2.54.1.1" style="font-size:70%;">53</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.54.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.54.2.1">
<span class="ltx_p" id="A5.T12.2.54.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.54.2.1.1.1" style="font-size:70%;">anomaly_reasoning</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.54.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.54.3.1">
<span class="ltx_p" id="A5.T12.2.54.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.54.3.1.1.1" style="font-size:70%;">Questions about causes of anomalous phenomena</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.55">
<td class="ltx_td ltx_align_center" id="A5.T12.2.55.1"><span class="ltx_text" id="A5.T12.2.55.1.1" style="font-size:70%;">54</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.55.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.55.2.1">
<span class="ltx_p" id="A5.T12.2.55.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.55.2.1.1.1" style="font-size:70%;">planning</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.55.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.55.3.1">
<span class="ltx_p" id="A5.T12.2.55.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.55.3.1.1.1" style="font-size:70%;">Questions about planning for specific tasks</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.56">
<td class="ltx_td ltx_align_center" id="A5.T12.2.56.1"><span class="ltx_text" id="A5.T12.2.56.1.1" style="font-size:70%;">55</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.56.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.56.2.1">
<span class="ltx_p" id="A5.T12.2.56.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.56.2.1.1.1" style="font-size:70%;">navigation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.56.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.56.3.1">
<span class="ltx_p" id="A5.T12.2.56.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.56.3.1.1.1" style="font-size:70%;">Questions about navigation to destinations</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.57">
<td class="ltx_td ltx_align_center" id="A5.T12.2.57.1"><span class="ltx_text" id="A5.T12.2.57.1.1" style="font-size:70%;">56</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.57.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.57.2.1">
<span class="ltx_p" id="A5.T12.2.57.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.57.2.1.1.1" style="font-size:70%;">human_action</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.57.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.57.3.1">
<span class="ltx_p" id="A5.T12.2.57.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.57.3.1.1.1" style="font-size:70%;">Questions about actions, behaviors, movements or activities performed by humans, including analysis of techniques, efficiency, and patterns of behavior</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.58">
<td class="ltx_td ltx_align_center" id="A5.T12.2.58.1"><span class="ltx_text" id="A5.T12.2.58.1.1" style="font-size:70%;">57</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.58.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.58.2.1">
<span class="ltx_p" id="A5.T12.2.58.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.58.2.1.1.1" style="font-size:70%;">dialogue_content</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.58.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.58.3.1">
<span class="ltx_p" id="A5.T12.2.58.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.58.3.1.1.1" style="font-size:70%;">Questions about spoken dialogue, verbal content, or conversations between characters/people</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.59">
<td class="ltx_td ltx_align_center" id="A5.T12.2.59.1"><span class="ltx_text" id="A5.T12.2.59.1.1" style="font-size:70%;">58</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.59.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.59.2.1">
<span class="ltx_p" id="A5.T12.2.59.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.59.2.1.1.1" style="font-size:70%;">event_summary</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.59.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.59.3.1">
<span class="ltx_p" id="A5.T12.2.59.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.59.3.1.1.1" style="font-size:70%;">Questions about overall event summary</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.60">
<td class="ltx_td ltx_align_center" id="A5.T12.2.60.1"><span class="ltx_text" id="A5.T12.2.60.1.1" style="font-size:70%;">59</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.60.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.60.2.1">
<span class="ltx_p" id="A5.T12.2.60.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.60.2.1.1.1" style="font-size:70%;">object_ordering</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.60.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.60.3.1">
<span class="ltx_p" id="A5.T12.2.60.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.60.3.1.1.1" style="font-size:70%;">Questions about the sequence or order in which objects are placed, arranged, or handled by individuals</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.61">
<td class="ltx_td ltx_align_center" id="A5.T12.2.61.1"><span class="ltx_text" id="A5.T12.2.61.1.1" style="font-size:70%;">60</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.61.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.61.2.1">
<span class="ltx_p" id="A5.T12.2.61.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.61.2.1.1.1" style="font-size:70%;">event_location</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.61.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.61.3.1">
<span class="ltx_p" id="A5.T12.2.61.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.61.3.1.1.1" style="font-size:70%;">Questions about where events or activities take place</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.62">
<td class="ltx_td ltx_align_center" id="A5.T12.2.62.1"><span class="ltx_text" id="A5.T12.2.62.1.1" style="font-size:70%;">61</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.62.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.62.2.1">
<span class="ltx_p" id="A5.T12.2.62.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.62.2.1.1.1" style="font-size:70%;">process_description</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.62.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.62.3.1">
<span class="ltx_p" id="A5.T12.2.62.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.62.3.1.1.1" style="font-size:70%;">Questions about identifying key components, steps, or progression in a process involving objects and/or humans</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.63">
<td class="ltx_td ltx_align_center" id="A5.T12.2.63.1"><span class="ltx_text" id="A5.T12.2.63.1.1" style="font-size:70%;">62</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.63.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.63.2.1">
<span class="ltx_p" id="A5.T12.2.63.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.63.2.1.1.1" style="font-size:70%;">video_topic</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T12.2.63.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.63.3.1">
<span class="ltx_p" id="A5.T12.2.63.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.63.3.1.1.1" style="font-size:70%;">Questions about the main subject, focus, or theme covered in the video</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.64">
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T12.2.64.1"><span class="ltx_text" id="A5.T12.2.64.1.1" style="font-size:70%;">63</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A5.T12.2.64.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.64.2.1">
<span class="ltx_p" id="A5.T12.2.64.2.1.1" style="width:108.4pt;"><span class="ltx_text" id="A5.T12.2.64.2.1.1.1" style="font-size:70%;">anomaly_recognition</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A5.T12.2.64.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.64.3.1">
<span class="ltx_p" id="A5.T12.2.64.3.1.1" style="width:281.9pt;"><span class="ltx_text" id="A5.T12.2.64.3.1.1.1" style="font-size:70%;">Questions about identifying and interpreting anomalies</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the datasets used for training the Eagle 2.5 model.  It's broken down by training stage (Stage 1 and Stage 1.5).  The table lists the name of each dataset, and indicates which are publicly available (Open-Data) and which are proprietary datasets (indicated in magenta). This breakdown provides transparency into the composition of the training data, distinguishing between publicly accessible resources and internal, proprietary datasets contributing to the Eagle 2.5 model's development.
> <details>
> <summary>read the caption</summary>
> Table 11: Dataset used in Eagle 2.5 for Stage 1 and Stage1.5. Dataset in Magenta is internal data.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.15271/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15271/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}