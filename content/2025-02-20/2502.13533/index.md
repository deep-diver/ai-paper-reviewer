---
title: "Train Small, Infer Large: Memory-Efficient LoRA Training for Large Language Models"
summary: "LORAM: Train small, infer large LLMs by memory-efficient LoRA training. Enables 70B parameter model training on a 20G HBM GPU, replacing A100-80G. Reduces parameter storage cost by 15.81x."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Zhejiang University",]
showSummary: true
date: 2025-02-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.13533 {{< /keyword >}}
{{< keyword icon="writer" >}} Jun Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.13533" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.13533" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.13533/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Training large language models (LLMs) is computationally expensive, especially Low-Rank Adaption (LoRA) due to the memory footprint dominated by the original model parameters. This paper addresses the challenge of high memory requirements in LLM fine-tuning. Many neurons in over-parameterized LLMs have low training utility but are essential for inference.



To mitigate these issues, the paper introduces LORAM, a memory-efficient LoRA training scheme. **LORAM trains on a pruned model and obtains pruned low-rank matrices which are then utilized with the original model for inference**. It presents minimal-cost continual pre-training to aligns knowledge discrepancy between the pruned and original models. Experiments shows LORAM reduces parameter storage cost by 15.81× while achieving performance gains over original and LoRA-trained models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LORAM, trains pruned models to reduce memory during LoRA fine-tuning and merges pruned low-rank matrices into the original model for inference, improving performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Knowledge alignment between pruned and original models enhances LORAM's efficacy, achieved via low-cost continual pre-training on a small dataset. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} QLORAM, a combination of LORAM with quantization, further reduces memory overhead, achieving better performance than existing methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces LORAM, a novel approach to training large language models using limited resources. It **demonstrates a significant reduction in memory footprint** while maintaining high performance. Thus, researchers can push the boundaries of LLM customization even with hardware limitations and may further explores knowledge alignment techniques.

------
#### Visual Insights



![](https://arxiv.org/html/2502.13533/x1.png)

> 🔼 The figure illustrates the core concept of LORAM (Low-Rank Adaptation Memory).  Unlike traditional LoRA which uses the same model for training and inference, LORAM employs a pruned (smaller) model for training and the original (larger) model for inference. During training, only a subset of the model's parameters (yellow blocks) are updated using low-rank matrices, significantly reducing memory usage. These updated parameters, along with the knowledge from continual pre-training (offline), are then used to recover the full low-rank matrices which are applied to the original model during inference. This allows LORAM to achieve memory efficiency during training while maintaining performance during inference.
> <details>
> <summary>read the caption</summary>
> Figure 1: Idea of LoRAM
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.10.10">
<tr class="ltx_tr" id="S3.T1.10.10.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T1.10.10.11.1" rowspan="2" style="padding:-2.5pt 1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.10.10.11.1.1">
<span class="ltx_p" id="S3.T1.10.10.11.1.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.10.10.11.1.1.1.1">Method</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.10.10.11.2" style="padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.10.10.11.2.1">OpenHermes</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.10.10.11.3" style="padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.10.10.11.3.1">OpenOrca</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_tt" id="S3.T1.10.10.11.4" rowspan="2" style="padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.10.10.11.4.1"><span class="ltx_text" id="S3.T1.10.10.11.4.1.1"></span> <span class="ltx_text" id="S3.T1.10.10.11.4.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.10.10.11.4.1.2.1">
<span class="ltx_tr" id="S3.T1.10.10.11.4.1.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.10.10.11.4.1.2.1.1.1" style="padding:-2.5pt 1.1pt;">Parameter</span></span>
<span class="ltx_tr" id="S3.T1.10.10.11.4.1.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.10.10.11.4.1.2.1.2.1" style="padding:-2.5pt 1.1pt;">Redu. Ratio</span></span>
</span></span> <span class="ltx_text" id="S3.T1.10.10.11.4.1.3"></span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.10.10.12.1" style="padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.10.10.12.1.1">MathQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.10.10.12.2" style="padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.10.10.12.2.1">GSM8K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.10.10.12.3" style="padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.10.10.12.3.1">MathQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.10.10.12.4" style="padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.10.10.12.4.1">GSM8K</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.1.2" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.2.1">
<span class="ltx_p" id="S3.T1.1.1.1.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.1.1.1.2.1.1.1" style="background-color:#F2F2F2;">13B w/o FT</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.1.3" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.1.1.1.3.1" style="background-color:#F2F2F2;">32.60</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.1.4" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.1.1.1.4.1" style="background-color:#F2F2F2;">24.26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.1.5" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.1.1.1.5.1" style="background-color:#F2F2F2;">32.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.1.6" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.1.1.1.6.1" style="background-color:#F2F2F2;">23.35</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T1.1.1.1.1" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.1.1.1.1.1" style="background-color:#F2F2F2;">1.00<math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T1.1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.m1.1b"><times id="S3.T1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.2.2.2.2" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.2.2.2.1">
<span class="ltx_p" id="S3.T1.2.2.2.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.2.2.2.2.1.1.1" style="background-color:#F2F2F2;">7B LoRA</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.2.2.3" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.2.2.2.3.1" style="background-color:#F2F2F2;">29.61</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.2.2.4" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.2.2.2.4.1" style="background-color:#F2F2F2;">22.82</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.2.2.5" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.2.2.2.5.1" style="background-color:#F2F2F2;">30.95</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.2.2.6" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.2.2.2.6.1" style="background-color:#F2F2F2;">13.87</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.2.2.2.1" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.2.2.2.1.1" style="background-color:#F2F2F2;">1.93<math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.2.2.2.1.1.m1.1"><semantics id="S3.T1.2.2.2.1.1.m1.1a"><mo id="S3.T1.2.2.2.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T1.2.2.2.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.1.1.m1.1b"><times id="S3.T1.2.2.2.1.1.m1.1.1.cmml" xref="S3.T1.2.2.2.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.1.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.3.3.3.2" style="padding:-2.5pt 1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.3.3.2.1">
<span class="ltx_p" id="S3.T1.3.3.3.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.3.3.3.2.1.1.1">13B LoRAM-Rand</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.3.3.3.3" style="background-color:#BED5E7;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.3.3.3.3.1" style="background-color:#BED5E7;">33.77</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.3.3.3.4" style="background-color:#D4E3EF;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.3.3.3.4.1" style="background-color:#D4E3EF;">27.22</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.3.3.3.5" style="padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.3.3.3.5.1">32.83</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.3.3.3.6" style="background-color:#D4E3EF;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.3.3.3.6.1" style="background-color:#D4E3EF;">25.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.3.3.3.1" style="padding:-2.5pt 1.1pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T1.3.3.3.1.1">2.17</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.3.3.3.1.m1.1"><semantics id="S3.T1.3.3.3.1.m1.1a"><mo id="S3.T1.3.3.3.1.m1.1.1" xref="S3.T1.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.1.m1.1b"><times id="S3.T1.3.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.4.4.4.2" style="padding:-2.5pt 1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.4.4.2.1">
<span class="ltx_p" id="S3.T1.4.4.4.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.4.4.4.2.1.1.1">13B LoRAM-Stru</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.4.4.4.3" style="background-color:#A8C7DE;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.4.4.4.3.1" style="background-color:#A8C7DE;">33.80</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.4.4.4.4" style="background-color:#E9F1F7;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.4.4.4.4.1" style="background-color:#E9F1F7;">24.64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.4.4.4.5" style="background-color:#A8C7DE;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.4.4.4.5.1" style="background-color:#A8C7DE;">33.07</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.4.4.4.6" style="background-color:#E9F1F7;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.4.4.4.6.1" style="background-color:#E9F1F7;">24.49</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.4.4.4.1" style="padding:-2.5pt 1.1pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T1.4.4.4.1.1">2.17</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.4.4.4.1.m1.1"><semantics id="S3.T1.4.4.4.1.m1.1a"><mo id="S3.T1.4.4.4.1.m1.1.1" xref="S3.T1.4.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.1.m1.1b"><times id="S3.T1.4.4.4.1.m1.1.1.cmml" xref="S3.T1.4.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.5.5.5.2" style="padding:-2.5pt 1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.5.5.2.1">
<span class="ltx_p" id="S3.T1.5.5.5.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.5.5.5.2.1.1.1">13B LoRAM-Semi</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.5.5.3" style="padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.5.5.5.3.1">31.76</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.5.5.4" style="background-color:#A8C7DE;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.5.5.5.4.1" style="background-color:#A8C7DE;">36.92</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.5.5.5" style="background-color:#A8C7DE;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.5.5.5.5.1" style="background-color:#A8C7DE;">33.07</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.5.5.6" style="background-color:#A8C7DE;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.5.5.5.6.1" style="background-color:#A8C7DE;">27.29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.5.5.5.1" style="padding:-2.5pt 1.1pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T1.5.5.5.1.1" style="color:#2673AD;">▲</span><span class="ltx_text ltx_font_smallcaps" id="S3.T1.5.5.5.1.2"> 1.95</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.5.5.5.1.m1.1"><semantics id="S3.T1.5.5.5.1.m1.1a"><mo id="S3.T1.5.5.5.1.m1.1.1" xref="S3.T1.5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.1.m1.1b"><times id="S3.T1.5.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.6.6.6.2" style="padding:-2.5pt 1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.6.6.2.1">
<span class="ltx_p" id="S3.T1.6.6.6.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.6.6.6.2.1.1.1">13B LoRAM-Unst</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.6.6.6.3" style="padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.6.6.6.3.1">30.12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.6.6.6.4" style="background-color:#BED5E7;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.6.6.6.4.1" style="background-color:#BED5E7;">31.92</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.6.6.6.5" style="padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.6.6.6.5.1">32.70</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.6.6.6.6" style="background-color:#BED5E7;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.6.6.6.6.1" style="background-color:#BED5E7;">26.61</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.6.6.6.1" style="padding:-2.5pt 1.1pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T1.6.6.6.1.1" style="color:#2673AD;">▲</span><span class="ltx_text ltx_font_smallcaps" id="S3.T1.6.6.6.1.2"> 2.16</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.6.6.6.1.m1.1"><semantics id="S3.T1.6.6.6.1.m1.1a"><mo id="S3.T1.6.6.6.1.m1.1.1" xref="S3.T1.6.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.1.m1.1b"><times id="S3.T1.6.6.6.1.m1.1.1.cmml" xref="S3.T1.6.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.7.7.7.2" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.7.7.7.2.1">
<span class="ltx_p" id="S3.T1.7.7.7.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.7.7.7.2.1.1.1" style="background-color:#F2F2F2;">70B w/o FT</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.7.7.7.3" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.7.7.7.3.1" style="background-color:#F2F2F2;">39.53</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.7.7.7.4" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.7.7.7.4.1" style="background-color:#F2F2F2;">52.01</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.7.7.7.5" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.7.7.7.5.1" style="background-color:#F2F2F2;">39.53</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.7.7.7.6" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.7.7.7.6.1" style="background-color:#F2F2F2;">52.01</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T1.7.7.7.1" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.7.7.7.1.1" style="background-color:#F2F2F2;">1.00<math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.7.7.7.1.1.m1.1"><semantics id="S3.T1.7.7.7.1.1.m1.1a"><mo id="S3.T1.7.7.7.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T1.7.7.7.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.1.1.m1.1b"><times id="S3.T1.7.7.7.1.1.m1.1.1.cmml" xref="S3.T1.7.7.7.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.1.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.8.8.8.2" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.8.8.8.2.1">
<span class="ltx_p" id="S3.T1.8.8.8.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.8.8.8.2.1.1.1" style="background-color:#F2F2F2;">13B LoRA</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.8.8.8.3" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.8.8.8.3.1" style="background-color:#F2F2F2;">32.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.8.8.8.4" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.8.8.8.4.1" style="background-color:#F2F2F2;">36.69</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.8.8.8.5" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.8.8.8.5.1" style="background-color:#F2F2F2;">33.63</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.8.8.8.6" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.8.8.8.6.1" style="background-color:#F2F2F2;">25.70</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.8.8.8.1" style="background-color:#F2F2F2;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.8.8.8.1.1" style="background-color:#F2F2F2;">5.30<math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.8.8.8.1.1.m1.1"><semantics id="S3.T1.8.8.8.1.1.m1.1a"><mo id="S3.T1.8.8.8.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T1.8.8.8.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.1.1.m1.1b"><times id="S3.T1.8.8.8.1.1.m1.1.1.cmml" xref="S3.T1.8.8.8.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.1.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.9.9.9.2" style="padding:-2.5pt 1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.9.9.9.2.1">
<span class="ltx_p" id="S3.T1.9.9.9.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.9.9.9.2.1.1.1">70B QLoRAM-Rand</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.9.9.9.3" style="background-color:#BED5E7;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.9.9.9.3.1" style="background-color:#BED5E7;">39.66</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.9.9.9.4" style="background-color:#A8C7DE;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.9.9.9.4.1" style="background-color:#A8C7DE;">57.62</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.9.9.9.5" style="padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.9.9.9.5.1">39.40</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.9.9.9.6" style="background-color:#A8C7DE;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.9.9.9.6.1" style="background-color:#A8C7DE;">55.72</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.9.9.9.1" style="padding:-2.5pt 1.1pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T1.9.9.9.1.1">12.84</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.9.9.9.1.m1.1"><semantics id="S3.T1.9.9.9.1.m1.1a"><mo id="S3.T1.9.9.9.1.m1.1.1" xref="S3.T1.9.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.1.m1.1b"><times id="S3.T1.9.9.9.1.m1.1.1.cmml" xref="S3.T1.9.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T1.10.10.10.2" style="padding:-2.5pt 1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.10.10.10.2.1">
<span class="ltx_p" id="S3.T1.10.10.10.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.10.10.10.2.1.1.1">70B QLoRAM-Stru</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.10.10.10.3" style="background-color:#A8C7DE;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.10.10.10.3.1" style="background-color:#A8C7DE;">39.77</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.10.10.10.4" style="background-color:#BED5E7;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.10.10.10.4.1" style="background-color:#BED5E7;">57.16</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.10.10.10.5" style="background-color:#A8C7DE;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.10.10.10.5.1" style="background-color:#A8C7DE;">39.73</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.10.10.10.6" style="background-color:#BED5E7;padding:-2.5pt 1.1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.10.10.10.6.1" style="background-color:#BED5E7;">54.44</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_bb" id="S3.T1.10.10.10.1" style="padding:-2.5pt 1.1pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T1.10.10.10.1.1">12.84</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.10.10.10.1.m1.1"><semantics id="S3.T1.10.10.10.1.m1.1a"><mo id="S3.T1.10.10.10.1.m1.1.1" xref="S3.T1.10.10.10.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.1.m1.1b"><times id="S3.T1.10.10.10.1.m1.1.1.cmml" xref="S3.T1.10.10.10.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the accuracy results for two mathematical reasoning tasks: MathQA (1-shot) and GSM8K (8-shot) using the LLaMA-2 model.  It compares the performance of different fine-tuning methods:  the original LLaMA-2 model without fine-tuning, a LoRA-trained smaller LLaMA-2 model, and several variants of the proposed LORAM method using different pruning strategies (random, structured, semi-structured, unstructured). The parameter reduction ratios are indicated, showing the memory savings achieved by each method.  It's important to note that the theoretical parameter reduction for non-structured pruning is shown, but these parameters are filled with zeros during training, therefore not reducing memory footprint.
> <details>
> <summary>read the caption</summary>
> Table 1: Accuracy (%) of the MathQA (1-shot) & GSM8K (8-shots) in the mathematical domain under LLaMA-2. ▲ indicates the theoretical parameters reduction of non-structured pruning. However, these parameters are filled with zeros in actual training, so the memory footprint is not reduced.
> </details>





### In-depth insights


#### Prune, then Train
**Prune, then Train** is an intriguing paradigm. The intuition is that it's computationally cheaper to train a smaller network. **Pruning before training** could reduce the parameter space, accelerating convergence and potentially improving generalization by preventing overfitting. This could lead to efficient resource usage. However, the initial pruning step is vital. Random pruning might remove essential connections, hindering learning. Smart pruning strategies based on magnitude or gradient can preserve critical pathways. The core challenge lies in balancing model size reduction with the preservation of essential information. A trade-off exists between computational efficiency and the model's representation capacity. It would be beneficial to understand the optimal pruning ratio with associated pre-training steps.

#### Align then Fine-tune
**Align then Fine-tune** is a prevalent strategy in transfer learning, particularly for large models, where an initial alignment phase prepares the model for subsequent task-specific fine-tuning. The alignment phase often involves techniques like contrastive learning or domain adaptation to bring the model's representations closer to the target domain or task distribution. This pre-alignment can significantly improve the efficiency and effectiveness of fine-tuning, as the model starts from a better initialization point. By first aligning the model, we ensure that the fine-tuning process focuses on learning task-specific nuances rather than overcoming large distributional shifts, leading to faster convergence and better generalization. This approach is useful when there is a significant distribution difference between source data and target task's data.

#### Memory Efficient LoRA
**Memory-efficient LoRA training** addresses the significant memory footprint of large language models (LLMs) during fine-tuning. It likely involves techniques to reduce memory usage by quantizing the weights. A possible mitigation strategy involves **training on a smaller, pruned model** and then transferring the learned knowledge or parameters to the full-sized model for inference, which can improve memory efficiency. An **alignment strategy** can reduce inconsistencies by pre-training the pruned model to be similar to the original one.

#### Pruning strategies
**Pruning strategies** in large language models offer a pathway to reduce computational costs and model size, enabling efficient deployment. Methods range from unstructured pruning, which removes individual weights, to structured pruning, which eliminates entire neurons or layers. **Unstructured pruning** offers finer granularity, but can result in irregular memory access patterns, hindering speedup. **Structured pruning** maintains model architecture, facilitating hardware acceleration. The effectiveness of pruning hinges on identifying redundant parameters while preserving vital knowledge. Techniques such as **magnitude-based pruning** and **gradient-based pruning** are employed. Combining pruning with techniques like **quantization** can lead to further compression gains.

#### Domain Specificity
The study demonstrates that **LoRAM excels in domain-specific settings**, retaining high accuracy with substantial parameter reduction, showcasing robustness and efficiency. These results emphasize LoRAM's versatility beyond general instruction fine-tuning, implying its **potential for customized applications** where specialized knowledge is crucial. The ability to maintain accuracy with fewer parameters suggests that LoRAM can effectively distill and transfer relevant information for particular domains.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.13533/x2.png)

> 🔼 This figure compares the LoRA and LoRAM training and inference processes. LoRA uses the same original model for both training and inference, while LoRAM uses a pruned model for training and recovers the weights to use the original model for inference.  The figure highlights the key stages: (a) LoRA training, updating low-rank matrices with original weights frozen; (b) LoRAM training, updating low-rank matrices on the pruned model; (c) LoRA inference, using the updated low-rank matrices with original weights; (d) LoRAM inference, using recovered low-rank matrices to integrate with original weights; (e) offline processing on the full-rank matrix; and (f) online generation of the low-rank matrix.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Comparison of LoRAM and LoRA: Training (subfigures a and b) and Inference (c and d). Key stages include the offline process of the frozen full-rank matrix 𝐖0∗superscriptsubscript𝐖0\mathbf{W}_{0}^{*}bold_W start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT (subfigure e) and the online generation of the learnable low-rank matrix 𝐖Δ∗superscriptsubscript𝐖Δ\mathbf{W}_{\Delta}^{*}bold_W start_POSTSUBSCRIPT roman_Δ end_POSTSUBSCRIPT start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT (f) during LoRAM training (b) and inference (d).
> </details>



![](https://arxiv.org/html/2502.13533/x5.png)

> 🔼 This figure displays the test perplexity results for fine-tuning two different sizes of LLAMA language models (13B and 70B parameters) using the OpenHermes dataset.  The perplexity is tracked over various training iterations for different training methods, including standard LoRA and several variations of the proposed LORAM method incorporating different pruning strategies (random, structured, semi-structured, and unstructured).  This allows comparison of the training convergence speeds and the resulting test perplexity for these different training approaches, demonstrating the effectiveness of LORAM in improving efficiency without significant loss of performance.
> <details>
> <summary>read the caption</summary>
> Figure 3: The test perplexity of training LLaMA-2-13B & LLaMA-2-70B on OpenHermes.
> </details>



![](https://arxiv.org/html/2502.13533/x6.png)

> 🔼 This figure displays the test perplexity results for training two large language models, LLaMA-2-13B and LLaMA-2-70B, on the OpenOrca dataset.  The graphs show the perplexity over training iterations for each model, comparing standard LORA fine-tuning with several variants of the proposed memory-efficient LORA training scheme (LORAM) using different pruning strategies:  LORAM-RAND, LORAM-STRU, LORAM-SEMI, and LORAM-UNST.  The figure also includes results for a smaller LLaMA model (7B) trained with LORA to provide a performance baseline for comparison.  This comparison allows assessment of the tradeoffs between model size, memory efficiency, and performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: The test perplexity of training LLaMA-2-13B & LLaMA-2-70B on OpenOrca.
> </details>



![](https://arxiv.org/html/2502.13533/x7.png)

> 🔼 This figure displays the results of training the LLaMA-3.1-70B model on the OpenHermes dataset using different training methods.  It shows the test perplexity during training (how well the model predicts the next word in a sequence, lower is better) on the Alpaca dataset (an out-of-domain dataset; that is, a dataset different than the one used for training). Additionally, the figure presents downstream task performance results across various tasks, showing the effectiveness of different training methods on various downstream applications after training.
> <details>
> <summary>read the caption</summary>
> Figure 5: The test perplexity & downstream performance of training LLaMA-3.1-70B on OpenHermes.
> </details>



![](https://arxiv.org/html/2502.13533/x8.png)

> 🔼 This figure demonstrates the impact of the recovery and alignment steps in the LORAM model training process on LLaMA-2-13B.  It compares the performance of four different pruning strategies (Rand, Stru, Semi, Unst) with and without the recovery and alignment steps. The plots show the test perplexity on the Alpaca dataset for each strategy and configuration. This illustrates that the recovery and alignment steps significantly improve performance, especially under aggressive pruning rates.  The results highlight that simply pruning and then fine-tuning is not enough to achieve high performance; the recovery and alignment steps are crucial in bridging the gap between the pruned model used for training and the full original model used for inference.
> <details>
> <summary>read the caption</summary>
> Figure 6: Necessity of Recovery & Alignment across different pruning strategies on LLaMA-2-13B.
> </details>



![](https://arxiv.org/html/2502.13533/x9.png)

> 🔼 This figure demonstrates the impact of varying parameter reduction ratios on the performance of LoRA and QLORAM-STRU models. The x-axis represents the parameter reduction ratio, ranging from approximately 10x to nearly 30x.  The y-axis shows the test perplexity on the Alpaca dataset. LoRA-trained and QLORAM-STRU-trained models show a trend of improved performance with increasing reduction ratios, but excessive pruning (larger reduction ratios) negatively impacts the model's performance.  A comparison with a naive pruning method demonstrates that LoRAM's method leads to far more robust performance as the parameter reduction increases.
> <details>
> <summary>read the caption</summary>
> Figure 7: Effect of scaling parameter reduction ratio.
> </details>



![](https://arxiv.org/html/2502.13533/x18.png)

> 🔼 This figure presents the performance of various downstream tasks (GSM8K, MathQA, CSR, HumanEval) for different parameter reduction ratios achieved by QLORAM-STRU on the LLaMA-2-70B model.  It shows how the model's performance on these tasks changes as the parameter reduction ratio increases from approximately 10x to nearly 30x. The graph illustrates a trade-off: increasing the reduction ratio initially improves performance, reaching an optimal point, before performance starts to decrease again at the most aggressive pruning ratios. This demonstrates the effectiveness of QLORAM-STRU in balancing memory efficiency and task performance up to a certain level of model compression, beyond which the level of pruning negatively affects performance.
> <details>
> <summary>read the caption</summary>
> Figure 8: Performance of downstream tasks across different parameter reduction ratios.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.32.32">
<tr class="ltx_tr" id="S3.T2.32.32.33">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.32.32.33.1" rowspan="2" style="padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.32.32.33.1.1">
<span class="ltx_p" id="S3.T2.32.32.33.1.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.32.32.33.1.1.1.1">Method</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.32.32.33.2" style="padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.32.32.33.2.1">
<span class="ltx_p" id="S3.T2.32.32.33.2.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.32.32.33.2.1.1.1">OpenHermes</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.32.32.33.3" style="padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.32.32.33.3.1">
<span class="ltx_p" id="S3.T2.32.32.33.3.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.32.32.33.3.1.1.1">OpenOrca</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_tt" id="S3.T2.32.32.33.4" rowspan="2" style="padding:-2.5pt 2.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.32.32.33.4.1"><span class="ltx_text" id="S3.T2.32.32.33.4.1.1"></span> <span class="ltx_text" id="S3.T2.32.32.33.4.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T2.32.32.33.4.1.2.1">
<span class="ltx_tr" id="S3.T2.32.32.33.4.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.32.32.33.4.1.2.1.1.1" style="padding:-2.5pt 2.3pt;">Parameter</span></span>
<span class="ltx_tr" id="S3.T2.32.32.33.4.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.32.32.33.4.1.2.1.2.1" style="padding:-2.5pt 2.3pt;">Redu. Ratio</span></span>
</span></span> <span class="ltx_text" id="S3.T2.32.32.33.4.1.3"></span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.1.1.1" style="padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.1.1">
<span class="ltx_p" id="S3.T2.1.1.1.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.1.1.1.1.1">Mean </span><math alttext="\pm" class="ltx_centering" display="inline" id="S3.T2.1.1.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.1.1.m1.1.1" xref="S3.T2.1.1.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.1.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.1.1.1.1.2"> Std</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.2.2.2.2" style="padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.2.2.2.1">
<span class="ltx_p" id="S3.T2.2.2.2.2.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.2.2.2.2.1.1.1">Mean </span><math alttext="\pm" class="ltx_centering" display="inline" id="S3.T2.2.2.2.2.1.1.m1.1"><semantics id="S3.T2.2.2.2.2.1.1.m1.1a"><mo id="S3.T2.2.2.2.2.1.1.m1.1.1" xref="S3.T2.2.2.2.2.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.2.2.2.2.1.1.m1.1.1.cmml" xref="S3.T2.2.2.2.2.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.1.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S3.T2.2.2.2.2.1.1.2"> Std</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.5.5.5.4" style="background-color:#F2F2F2;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.5.5.4.1">
<span class="ltx_p" id="S3.T2.5.5.5.4.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.5.5.5.4.1.1.1" style="background-color:#F2F2F2;">13B w/o FT</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.3.3.3.1" style="background-color:#F2F2F2;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.3.3.1.1">
<span class="ltx_p" id="S3.T2.3.3.3.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.3.3.3.1.1.1.1" style="background-color:#F2F2F2;">64.28<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.3.3.3.1.1.1.1.m1.1"><semantics id="S3.T2.3.3.3.1.1.1.1.m1.1a"><mo id="S3.T2.3.3.3.1.1.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T2.3.3.3.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.3.3.3.1.1.1.1.m1.1.1.cmml" xref="S3.T2.3.3.3.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.1.1.1.1.m1.1d">±</annotation></semantics></math>1.30</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.4.4.4.2" style="background-color:#F2F2F2;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.4.4.2.1">
<span class="ltx_p" id="S3.T2.4.4.4.2.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.4.4.4.2.1.1.1" style="background-color:#F2F2F2;">64.28<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.4.4.4.2.1.1.1.m1.1"><semantics id="S3.T2.4.4.4.2.1.1.1.m1.1a"><mo id="S3.T2.4.4.4.2.1.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T2.4.4.4.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.4.4.4.2.1.1.1.m1.1.1.cmml" xref="S3.T2.4.4.4.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.2.1.1.1.m1.1d">±</annotation></semantics></math>1.30</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T2.5.5.5.3" style="background-color:#F2F2F2;padding:-2.5pt 2.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.5.5.5.3.1" style="background-color:#F2F2F2;">1.00<math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.5.5.5.3.1.m1.1"><semantics id="S3.T2.5.5.5.3.1.m1.1a"><mo id="S3.T2.5.5.5.3.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T2.5.5.5.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.3.1.m1.1b"><times id="S3.T2.5.5.5.3.1.m1.1.1.cmml" xref="S3.T2.5.5.5.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.3.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.8.8.8.4" style="background-color:#F2F2F2;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.8.8.8.4.1">
<span class="ltx_p" id="S3.T2.8.8.8.4.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.8.8.8.4.1.1.1" style="background-color:#F2F2F2;">7B LoRA</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.6.6.6.1" style="background-color:#F2F2F2;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.6.6.6.1.1">
<span class="ltx_p" id="S3.T2.6.6.6.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.6.6.6.1.1.1.1" style="background-color:#F2F2F2;">61.51<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.6.6.6.1.1.1.1.m1.1"><semantics id="S3.T2.6.6.6.1.1.1.1.m1.1a"><mo id="S3.T2.6.6.6.1.1.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T2.6.6.6.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.6.6.6.1.1.1.1.m1.1.1.cmml" xref="S3.T2.6.6.6.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.1.1.1.1.m1.1d">±</annotation></semantics></math>1.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.7.7.7.2" style="background-color:#F2F2F2;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.7.7.7.2.1">
<span class="ltx_p" id="S3.T2.7.7.7.2.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.7.7.7.2.1.1.1" style="background-color:#F2F2F2;">61.42<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.7.7.7.2.1.1.1.m1.1"><semantics id="S3.T2.7.7.7.2.1.1.1.m1.1a"><mo id="S3.T2.7.7.7.2.1.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T2.7.7.7.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.7.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.7.7.7.2.1.1.1.m1.1.1.cmml" xref="S3.T2.7.7.7.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.7.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.7.2.1.1.1.m1.1d">±</annotation></semantics></math>1.30</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S3.T2.8.8.8.3" style="background-color:#F2F2F2;padding:-2.5pt 2.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.8.8.8.3.1" style="background-color:#F2F2F2;">1.93<math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.8.8.8.3.1.m1.1"><semantics id="S3.T2.8.8.8.3.1.m1.1a"><mo id="S3.T2.8.8.8.3.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T2.8.8.8.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.8.8.8.3.1.m1.1b"><times id="S3.T2.8.8.8.3.1.m1.1.1.cmml" xref="S3.T2.8.8.8.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.8.8.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.8.8.3.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.11.11.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.11.11.11.4" style="padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.11.11.11.4.1">
<span class="ltx_p" id="S3.T2.11.11.11.4.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.11.11.11.4.1.1.1">13B LoRAM-Rand</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.9.9.9.1" style="background-color:#A8C7DE;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.9.9.9.1.1">
<span class="ltx_p" id="S3.T2.9.9.9.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.9.9.9.1.1.1.1" style="background-color:#A8C7DE;">64.64<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.9.9.9.1.1.1.1.m1.1" style="background-color:#A8C7DE;"><semantics id="S3.T2.9.9.9.1.1.1.1.m1.1a"><mo id="S3.T2.9.9.9.1.1.1.1.m1.1.1" mathbackground="#A8C7DE" xref="S3.T2.9.9.9.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.9.9.9.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.9.9.9.1.1.1.1.m1.1.1.cmml" xref="S3.T2.9.9.9.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.9.9.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.9.9.1.1.1.1.m1.1d">±</annotation></semantics></math>1.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.10.10.10.2" style="background-color:#D4E3EF;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.10.10.10.2.1">
<span class="ltx_p" id="S3.T2.10.10.10.2.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.10.10.10.2.1.1.1" style="background-color:#D4E3EF;">64.49<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.10.10.10.2.1.1.1.m1.1" style="background-color:#D4E3EF;"><semantics id="S3.T2.10.10.10.2.1.1.1.m1.1a"><mo id="S3.T2.10.10.10.2.1.1.1.m1.1.1" mathbackground="#D4E3EF" xref="S3.T2.10.10.10.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.10.10.10.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.10.10.10.2.1.1.1.m1.1.1.cmml" xref="S3.T2.10.10.10.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.10.10.10.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.10.10.10.2.1.1.1.m1.1d">±</annotation></semantics></math>1.30</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S3.T2.11.11.11.3" style="padding:-2.5pt 2.3pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T2.11.11.11.3.1">2.17</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.11.11.11.3.m1.1"><semantics id="S3.T2.11.11.11.3.m1.1a"><mo id="S3.T2.11.11.11.3.m1.1.1" xref="S3.T2.11.11.11.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.11.11.11.3.m1.1b"><times id="S3.T2.11.11.11.3.m1.1.1.cmml" xref="S3.T2.11.11.11.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.11.11.11.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.11.11.11.3.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.14.14.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.14.14.14.4" style="padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.14.14.14.4.1">
<span class="ltx_p" id="S3.T2.14.14.14.4.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.14.14.14.4.1.1.1">13B LoRAM-Stru</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.12.12.12.1" style="background-color:#BED5E7;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.12.12.12.1.1">
<span class="ltx_p" id="S3.T2.12.12.12.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.12.12.12.1.1.1.1" style="background-color:#BED5E7;">64.42<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.12.12.12.1.1.1.1.m1.1" style="background-color:#BED5E7;"><semantics id="S3.T2.12.12.12.1.1.1.1.m1.1a"><mo id="S3.T2.12.12.12.1.1.1.1.m1.1.1" mathbackground="#BED5E7" xref="S3.T2.12.12.12.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.12.12.12.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.12.12.12.1.1.1.1.m1.1.1.cmml" xref="S3.T2.12.12.12.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.12.12.12.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.12.12.12.1.1.1.1.m1.1d">±</annotation></semantics></math>1.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.13.13.13.2" style="background-color:#E9F1F7;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.13.13.13.2.1">
<span class="ltx_p" id="S3.T2.13.13.13.2.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.13.13.13.2.1.1.1" style="background-color:#E9F1F7;">64.32<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.13.13.13.2.1.1.1.m1.1" style="background-color:#E9F1F7;"><semantics id="S3.T2.13.13.13.2.1.1.1.m1.1a"><mo id="S3.T2.13.13.13.2.1.1.1.m1.1.1" mathbackground="#E9F1F7" xref="S3.T2.13.13.13.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.13.13.13.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.13.13.13.2.1.1.1.m1.1.1.cmml" xref="S3.T2.13.13.13.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.13.13.13.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.13.13.13.2.1.1.1.m1.1d">±</annotation></semantics></math>1.29</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S3.T2.14.14.14.3" style="padding:-2.5pt 2.3pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T2.14.14.14.3.1">2.17</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.14.14.14.3.m1.1"><semantics id="S3.T2.14.14.14.3.m1.1a"><mo id="S3.T2.14.14.14.3.m1.1.1" xref="S3.T2.14.14.14.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.14.14.14.3.m1.1b"><times id="S3.T2.14.14.14.3.m1.1.1.cmml" xref="S3.T2.14.14.14.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.14.14.14.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.14.14.14.3.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.17.17.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.17.17.17.4" style="padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.17.17.17.4.1">
<span class="ltx_p" id="S3.T2.17.17.17.4.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.17.17.17.4.1.1.1">13B LoRAM-Semi</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.15.15.15.1" style="background-color:#D4E3EF;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.15.15.15.1.1">
<span class="ltx_p" id="S3.T2.15.15.15.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.15.15.15.1.1.1.1" style="background-color:#D4E3EF;">64.38<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.15.15.15.1.1.1.1.m1.1" style="background-color:#D4E3EF;"><semantics id="S3.T2.15.15.15.1.1.1.1.m1.1a"><mo id="S3.T2.15.15.15.1.1.1.1.m1.1.1" mathbackground="#D4E3EF" xref="S3.T2.15.15.15.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.15.15.15.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.15.15.15.1.1.1.1.m1.1.1.cmml" xref="S3.T2.15.15.15.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.15.15.15.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.15.15.15.1.1.1.1.m1.1d">±</annotation></semantics></math>1.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.16.16.16.2" style="background-color:#A8C7DE;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.16.16.16.2.1">
<span class="ltx_p" id="S3.T2.16.16.16.2.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.16.16.16.2.1.1.1" style="background-color:#A8C7DE;">64.73<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.16.16.16.2.1.1.1.m1.1" style="background-color:#A8C7DE;"><semantics id="S3.T2.16.16.16.2.1.1.1.m1.1a"><mo id="S3.T2.16.16.16.2.1.1.1.m1.1.1" mathbackground="#A8C7DE" xref="S3.T2.16.16.16.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.16.16.16.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.16.16.16.2.1.1.1.m1.1.1.cmml" xref="S3.T2.16.16.16.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.16.16.16.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.16.16.16.2.1.1.1.m1.1d">±</annotation></semantics></math>1.30</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S3.T2.17.17.17.3" style="padding:-2.5pt 2.3pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T2.17.17.17.3.1" style="color:#2673AD;">▲</span><span class="ltx_text ltx_font_smallcaps" id="S3.T2.17.17.17.3.2"> 1.95</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.17.17.17.3.m1.1"><semantics id="S3.T2.17.17.17.3.m1.1a"><mo id="S3.T2.17.17.17.3.m1.1.1" xref="S3.T2.17.17.17.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.17.17.17.3.m1.1b"><times id="S3.T2.17.17.17.3.m1.1.1.cmml" xref="S3.T2.17.17.17.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.17.17.17.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.17.17.17.3.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.20.20.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.20.20.20.4" style="padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.20.20.20.4.1">
<span class="ltx_p" id="S3.T2.20.20.20.4.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.20.20.20.4.1.1.1">13B LoRAM-Unst</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.18.18.18.1" style="padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.18.18.18.1.1">
<span class="ltx_p" id="S3.T2.18.18.18.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.18.18.18.1.1.1.1">64.12</span><math alttext="\pm" class="ltx_centering" display="inline" id="S3.T2.18.18.18.1.1.1.m1.1"><semantics id="S3.T2.18.18.18.1.1.1.m1.1a"><mo id="S3.T2.18.18.18.1.1.1.m1.1.1" xref="S3.T2.18.18.18.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.18.18.18.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.18.18.18.1.1.1.m1.1.1.cmml" xref="S3.T2.18.18.18.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.18.18.18.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.18.18.18.1.1.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S3.T2.18.18.18.1.1.1.2">1.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.19.19.19.2" style="background-color:#BED5E7;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.19.19.19.2.1">
<span class="ltx_p" id="S3.T2.19.19.19.2.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.19.19.19.2.1.1.1" style="background-color:#BED5E7;">64.68<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.19.19.19.2.1.1.1.m1.1" style="background-color:#BED5E7;"><semantics id="S3.T2.19.19.19.2.1.1.1.m1.1a"><mo id="S3.T2.19.19.19.2.1.1.1.m1.1.1" mathbackground="#BED5E7" xref="S3.T2.19.19.19.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.19.19.19.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.19.19.19.2.1.1.1.m1.1.1.cmml" xref="S3.T2.19.19.19.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.19.19.19.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.19.19.19.2.1.1.1.m1.1d">±</annotation></semantics></math>1.29</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S3.T2.20.20.20.3" style="padding:-2.5pt 2.3pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T2.20.20.20.3.1" style="color:#2673AD;">▲</span><span class="ltx_text ltx_font_smallcaps" id="S3.T2.20.20.20.3.2"> 2.16</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.20.20.20.3.m1.1"><semantics id="S3.T2.20.20.20.3.m1.1a"><mo id="S3.T2.20.20.20.3.m1.1.1" xref="S3.T2.20.20.20.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.20.20.20.3.m1.1b"><times id="S3.T2.20.20.20.3.m1.1.1.cmml" xref="S3.T2.20.20.20.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.20.20.20.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.20.20.20.3.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.23.23.23">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.23.23.23.4" style="background-color:#F2F2F2;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.23.23.23.4.1">
<span class="ltx_p" id="S3.T2.23.23.23.4.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.23.23.23.4.1.1.1" style="background-color:#F2F2F2;">70B w/o FT</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.21.21.21.1" style="background-color:#F2F2F2;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.21.21.21.1.1">
<span class="ltx_p" id="S3.T2.21.21.21.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.21.21.21.1.1.1.1" style="background-color:#F2F2F2;">68.69<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.21.21.21.1.1.1.1.m1.1"><semantics id="S3.T2.21.21.21.1.1.1.1.m1.1a"><mo id="S3.T2.21.21.21.1.1.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T2.21.21.21.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.21.21.21.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.21.21.21.1.1.1.1.m1.1.1.cmml" xref="S3.T2.21.21.21.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.21.21.21.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.21.21.21.1.1.1.1.m1.1d">±</annotation></semantics></math>1.27</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.22.22.22.2" style="background-color:#F2F2F2;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.22.22.22.2.1">
<span class="ltx_p" id="S3.T2.22.22.22.2.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.22.22.22.2.1.1.1" style="background-color:#F2F2F2;">68.69<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.22.22.22.2.1.1.1.m1.1"><semantics id="S3.T2.22.22.22.2.1.1.1.m1.1a"><mo id="S3.T2.22.22.22.2.1.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T2.22.22.22.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.22.22.22.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.22.22.22.2.1.1.1.m1.1.1.cmml" xref="S3.T2.22.22.22.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.22.22.22.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.22.22.22.2.1.1.1.m1.1d">±</annotation></semantics></math>1.27</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T2.23.23.23.3" style="background-color:#F2F2F2;padding:-2.5pt 2.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.23.23.23.3.1" style="background-color:#F2F2F2;">1.00<math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.23.23.23.3.1.m1.1"><semantics id="S3.T2.23.23.23.3.1.m1.1a"><mo id="S3.T2.23.23.23.3.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T2.23.23.23.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.23.23.23.3.1.m1.1b"><times id="S3.T2.23.23.23.3.1.m1.1.1.cmml" xref="S3.T2.23.23.23.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.23.23.23.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.23.23.23.3.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.26.26.26">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.26.26.26.4" style="background-color:#F2F2F2;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.26.26.26.4.1">
<span class="ltx_p" id="S3.T2.26.26.26.4.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.26.26.26.4.1.1.1" style="background-color:#F2F2F2;">13B LoRA</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.24.24.24.1" style="background-color:#F2F2F2;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.24.24.24.1.1">
<span class="ltx_p" id="S3.T2.24.24.24.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.24.24.24.1.1.1.1" style="background-color:#F2F2F2;">65.05<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.24.24.24.1.1.1.1.m1.1"><semantics id="S3.T2.24.24.24.1.1.1.1.m1.1a"><mo id="S3.T2.24.24.24.1.1.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T2.24.24.24.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.24.24.24.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.24.24.24.1.1.1.1.m1.1.1.cmml" xref="S3.T2.24.24.24.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.24.24.24.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.24.24.24.1.1.1.1.m1.1d">±</annotation></semantics></math>1.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.25.25.25.2" style="background-color:#F2F2F2;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.25.25.25.2.1">
<span class="ltx_p" id="S3.T2.25.25.25.2.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.25.25.25.2.1.1.1" style="background-color:#F2F2F2;">65.40<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.25.25.25.2.1.1.1.m1.1"><semantics id="S3.T2.25.25.25.2.1.1.1.m1.1a"><mo id="S3.T2.25.25.25.2.1.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T2.25.25.25.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.25.25.25.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.25.25.25.2.1.1.1.m1.1.1.cmml" xref="S3.T2.25.25.25.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.25.25.25.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.25.25.25.2.1.1.1.m1.1d">±</annotation></semantics></math>1.29</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S3.T2.26.26.26.3" style="background-color:#F2F2F2;padding:-2.5pt 2.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.26.26.26.3.1" style="background-color:#F2F2F2;">5.30<math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.26.26.26.3.1.m1.1"><semantics id="S3.T2.26.26.26.3.1.m1.1a"><mo id="S3.T2.26.26.26.3.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T2.26.26.26.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.26.26.26.3.1.m1.1b"><times id="S3.T2.26.26.26.3.1.m1.1.1.cmml" xref="S3.T2.26.26.26.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.26.26.26.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.26.26.26.3.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.29.29.29">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.29.29.29.4" style="padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.29.29.29.4.1">
<span class="ltx_p" id="S3.T2.29.29.29.4.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.29.29.29.4.1.1.1">70B QLoRAM-Rand</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.27.27.27.1" style="background-color:#BED5E7;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.27.27.27.1.1">
<span class="ltx_p" id="S3.T2.27.27.27.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.27.27.27.1.1.1.1" style="background-color:#BED5E7;">68.99<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.27.27.27.1.1.1.1.m1.1" style="background-color:#BED5E7;"><semantics id="S3.T2.27.27.27.1.1.1.1.m1.1a"><mo id="S3.T2.27.27.27.1.1.1.1.m1.1.1" mathbackground="#BED5E7" xref="S3.T2.27.27.27.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.27.27.27.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.27.27.27.1.1.1.1.m1.1.1.cmml" xref="S3.T2.27.27.27.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.27.27.27.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.27.27.27.1.1.1.1.m1.1d">±</annotation></semantics></math>1.27</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.28.28.28.2" style="padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.28.28.28.2.1">
<span class="ltx_p" id="S3.T2.28.28.28.2.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.28.28.28.2.1.1.1">68.46</span><math alttext="\pm" class="ltx_centering" display="inline" id="S3.T2.28.28.28.2.1.1.m1.1"><semantics id="S3.T2.28.28.28.2.1.1.m1.1a"><mo id="S3.T2.28.28.28.2.1.1.m1.1.1" xref="S3.T2.28.28.28.2.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.28.28.28.2.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.28.28.28.2.1.1.m1.1.1.cmml" xref="S3.T2.28.28.28.2.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.28.28.28.2.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.28.28.28.2.1.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S3.T2.28.28.28.2.1.1.2">1.27</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S3.T2.29.29.29.3" style="padding:-2.5pt 2.3pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T2.29.29.29.3.1">12.84</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.29.29.29.3.m1.1"><semantics id="S3.T2.29.29.29.3.m1.1a"><mo id="S3.T2.29.29.29.3.m1.1.1" xref="S3.T2.29.29.29.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.29.29.29.3.m1.1b"><times id="S3.T2.29.29.29.3.m1.1.1.cmml" xref="S3.T2.29.29.29.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.29.29.29.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.29.29.29.3.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.32.32.32">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T2.32.32.32.4" style="padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.32.32.32.4.1">
<span class="ltx_p" id="S3.T2.32.32.32.4.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.32.32.32.4.1.1.1">70B QLoRAM-Stru</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T2.30.30.30.1" style="background-color:#A8C7DE;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.30.30.30.1.1">
<span class="ltx_p" id="S3.T2.30.30.30.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.30.30.30.1.1.1.1" style="background-color:#A8C7DE;">69.10<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.30.30.30.1.1.1.1.m1.1" style="background-color:#A8C7DE;"><semantics id="S3.T2.30.30.30.1.1.1.1.m1.1a"><mo id="S3.T2.30.30.30.1.1.1.1.m1.1.1" mathbackground="#A8C7DE" xref="S3.T2.30.30.30.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.30.30.30.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.30.30.30.1.1.1.1.m1.1.1.cmml" xref="S3.T2.30.30.30.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.30.30.30.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.30.30.30.1.1.1.1.m1.1d">±</annotation></semantics></math>1.27</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T2.31.31.31.2" style="background-color:#A8C7DE;padding:-2.5pt 2.3pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.31.31.31.2.1">
<span class="ltx_p" id="S3.T2.31.31.31.2.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.31.31.31.2.1.1.1" style="background-color:#A8C7DE;">68.94<math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.31.31.31.2.1.1.1.m1.1" style="background-color:#A8C7DE;"><semantics id="S3.T2.31.31.31.2.1.1.1.m1.1a"><mo id="S3.T2.31.31.31.2.1.1.1.m1.1.1" mathbackground="#A8C7DE" xref="S3.T2.31.31.31.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T2.31.31.31.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T2.31.31.31.2.1.1.1.m1.1.1.cmml" xref="S3.T2.31.31.31.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.31.31.31.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.31.31.31.2.1.1.1.m1.1d">±</annotation></semantics></math>1.27</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb" id="S3.T2.32.32.32.3" style="padding:-2.5pt 2.3pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T2.32.32.32.3.1">12.84</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.32.32.32.3.m1.1"><semantics id="S3.T2.32.32.32.3.m1.1a"><mo id="S3.T2.32.32.32.3.m1.1.1" xref="S3.T2.32.32.32.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.32.32.32.3.m1.1b"><times id="S3.T2.32.32.32.3.m1.1.1.cmml" xref="S3.T2.32.32.32.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.32.32.32.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.32.32.32.3.m1.1d">×</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the average accuracy scores achieved by different LLaMA-2 models on six common sense reasoning tasks.  The models compared include the original, untrained LLaMA-2-13B, a smaller LoRA-trained LLaMA-2-7B, and various versions of the memory-efficient LORAM model with different pruning techniques (random, structured, semi-structured, and unstructured). The results show the average accuracy across the six tasks, along with the parameter reduction ratio for each LORAM variant compared to the original LLaMA-2-13B model.  Appendix E provides a detailed breakdown of the performance on each individual common sense reasoning sub-task.
> <details>
> <summary>read the caption</summary>
> Table 2: Average accuracy (%) of the CSR in the common sense reasoning domain (1-shot) under the LLaMA-2. Baseline results for each subtask of CSR are detailed in Appendix E.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T3.12.10">
<tr class="ltx_tr" id="S3.T3.12.10.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T3.12.10.11.1" rowspan="2" style="padding:-2.5pt 0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.12.10.11.1.1">
<span class="ltx_p" id="S3.T3.12.10.11.1.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.12.10.11.1.1.1.1">Method</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S3.T3.12.10.11.2" style="padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.12.10.11.2.1">OpenHermes</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S3.T3.12.10.11.3" style="padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.12.10.11.3.1">OpenOrca</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_tt" id="S3.T3.12.10.11.4" rowspan="2" style="padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.12.10.11.4.1"><span class="ltx_text" id="S3.T3.12.10.11.4.1.1"></span> <span class="ltx_text" id="S3.T3.12.10.11.4.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.12.10.11.4.1.2.1">
<span class="ltx_tr" id="S3.T3.12.10.11.4.1.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.12.10.11.4.1.2.1.1.1" style="padding:-2.5pt 0.9pt;">Parameter</span></span>
<span class="ltx_tr" id="S3.T3.12.10.11.4.1.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.12.10.11.4.1.2.1.2.1" style="padding:-2.5pt 0.9pt;">Redu. Ratio</span></span>
</span></span> <span class="ltx_text" id="S3.T3.12.10.11.4.1.3"></span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.10.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.12.10.12.1" style="padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.12.10.12.1.1">Pass@1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.12.10.12.2" style="padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.12.10.12.2.1">Pass@10</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.12.10.12.3" style="padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.12.10.12.3.1">Pass@1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.12.10.12.4" style="padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.12.10.12.4.1">Pass@10</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S3.T3.3.1.1.2" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.1.1.2.1">
<span class="ltx_p" id="S3.T3.3.1.1.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.3.1.1.2.1.1.1" style="background-color:#F2F2F2;">13B w/o FT</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.3.1.1.3" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.3.1.1.3.1" style="background-color:#F2F2F2;">17.68</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.3.1.1.4" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.3.1.1.4.1" style="background-color:#F2F2F2;">35.37</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.3.1.1.5" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.3.1.1.5.1" style="background-color:#F2F2F2;">17.68</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.3.1.1.6" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.3.1.1.6.1" style="background-color:#F2F2F2;">35.37</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T3.3.1.1.1" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.3.1.1.1.1" style="background-color:#F2F2F2;">1.00<math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.3.1.1.1.1.m1.1"><semantics id="S3.T3.3.1.1.1.1.m1.1a"><mo id="S3.T3.3.1.1.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T3.3.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.3.1.1.1.1.m1.1b"><times id="S3.T3.3.1.1.1.1.m1.1.1.cmml" xref="S3.T3.3.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.1.1.1.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T3.4.2.2.2" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.4.2.2.2.1">
<span class="ltx_p" id="S3.T3.4.2.2.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.4.2.2.2.1.1.1" style="background-color:#F2F2F2;">7B LoRA</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.4.2.2.3" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.4.2.2.3.1" style="background-color:#F2F2F2;">15.24</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.4.2.2.4" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.4.2.2.4.1" style="background-color:#F2F2F2;">28.04</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.4.2.2.5" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.4.2.2.5.1" style="background-color:#F2F2F2;">15.85</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.4.2.2.6" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.4.2.2.6.1" style="background-color:#F2F2F2;">26.21</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.4.2.2.1" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.4.2.2.1.1" style="background-color:#F2F2F2;">1.93<math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.4.2.2.1.1.m1.1"><semantics id="S3.T3.4.2.2.1.1.m1.1a"><mo id="S3.T3.4.2.2.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T3.4.2.2.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.4.2.2.1.1.m1.1b"><times id="S3.T3.4.2.2.1.1.m1.1.1.cmml" xref="S3.T3.4.2.2.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.2.2.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.2.2.1.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.5.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T3.5.3.3.2" style="padding:-2.5pt 0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.5.3.3.2.1">
<span class="ltx_p" id="S3.T3.5.3.3.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.5.3.3.2.1.1.1">13B LoRAM-Rand</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.5.3.3.3" style="background-color:#D4E3EF;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.5.3.3.3.1" style="background-color:#D4E3EF;">19.51</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.5.3.3.4" style="padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.5.3.3.4.1">33.54</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.5.3.3.5" style="background-color:#A8C7DE;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.5.3.3.5.1" style="background-color:#A8C7DE;">19.51</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.5.3.3.6" style="padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.5.3.3.6.1">32.32</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.5.3.3.1" style="padding:-2.5pt 0.9pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T3.5.3.3.1.1">2.17</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.5.3.3.1.m1.1"><semantics id="S3.T3.5.3.3.1.m1.1a"><mo id="S3.T3.5.3.3.1.m1.1.1" xref="S3.T3.5.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.5.3.3.1.m1.1b"><times id="S3.T3.5.3.3.1.m1.1.1.cmml" xref="S3.T3.5.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.3.3.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T3.6.4.4.2" style="padding:-2.5pt 0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.4.4.2.1">
<span class="ltx_p" id="S3.T3.6.4.4.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.6.4.4.2.1.1.1">13B LoRAM-Stru</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.4.4.3" style="background-color:#E9F1F7;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.6.4.4.3.1" style="background-color:#E9F1F7;">17.68</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.4.4.4" style="background-color:#A8C7DE;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.6.4.4.4.1" style="background-color:#A8C7DE;">35.37</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.4.4.5" style="padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.6.4.4.5.1">17.07</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.4.4.6" style="padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.6.4.4.6.1">31.71</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.6.4.4.1" style="padding:-2.5pt 0.9pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T3.6.4.4.1.1">2.17</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.6.4.4.1.m1.1"><semantics id="S3.T3.6.4.4.1.m1.1a"><mo id="S3.T3.6.4.4.1.m1.1.1" xref="S3.T3.6.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.6.4.4.1.m1.1b"><times id="S3.T3.6.4.4.1.m1.1.1.cmml" xref="S3.T3.6.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.4.4.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T3.7.5.5.2" style="padding:-2.5pt 0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.7.5.5.2.1">
<span class="ltx_p" id="S3.T3.7.5.5.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.7.5.5.2.1.1.1">13B LoRAM-Semi</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.7.5.5.3" style="background-color:#BED5E7;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.7.5.5.3.1" style="background-color:#BED5E7;">20.12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.7.5.5.4" style="background-color:#A8C7DE;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.7.5.5.4.1" style="background-color:#A8C7DE;">35.37</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.7.5.5.5" style="background-color:#A8C7DE;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.7.5.5.5.1" style="background-color:#A8C7DE;">18.29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.7.5.5.6" style="background-color:#A8C7DE;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.7.5.5.6.1" style="background-color:#A8C7DE;">39.63</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.7.5.5.1" style="padding:-2.5pt 0.9pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T3.7.5.5.1.1" style="color:#2673AD;">▲</span><span class="ltx_text ltx_font_smallcaps" id="S3.T3.7.5.5.1.2"> 1.95</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.7.5.5.1.m1.1"><semantics id="S3.T3.7.5.5.1.m1.1a"><mo id="S3.T3.7.5.5.1.m1.1.1" xref="S3.T3.7.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.7.5.5.1.m1.1b"><times id="S3.T3.7.5.5.1.m1.1.1.cmml" xref="S3.T3.7.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.7.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.7.5.5.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.8.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T3.8.6.6.2" style="padding:-2.5pt 0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.8.6.6.2.1">
<span class="ltx_p" id="S3.T3.8.6.6.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.8.6.6.2.1.1.1">13B LoRAM-Unst</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.8.6.6.3" style="background-color:#A8C7DE;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.8.6.6.3.1" style="background-color:#A8C7DE;">22.56</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.8.6.6.4" style="padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.8.6.6.4.1">34.15</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.8.6.6.5" style="background-color:#A8C7DE;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.8.6.6.5.1" style="background-color:#A8C7DE;">18.29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.8.6.6.6" style="background-color:#BED5E7;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.8.6.6.6.1" style="background-color:#BED5E7;">37.20</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.8.6.6.1" style="padding:-2.5pt 0.9pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T3.8.6.6.1.1" style="color:#2673AD;">▲</span><span class="ltx_text ltx_font_smallcaps" id="S3.T3.8.6.6.1.2"> 2.16</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.8.6.6.1.m1.1"><semantics id="S3.T3.8.6.6.1.m1.1a"><mo id="S3.T3.8.6.6.1.m1.1.1" xref="S3.T3.8.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.8.6.6.1.m1.1b"><times id="S3.T3.8.6.6.1.m1.1.1.cmml" xref="S3.T3.8.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.8.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.8.6.6.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S3.T3.9.7.7.2" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.9.7.7.2.1">
<span class="ltx_p" id="S3.T3.9.7.7.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.9.7.7.2.1.1.1" style="background-color:#F2F2F2;">70B w/o FT</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.9.7.7.3" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.9.7.7.3.1" style="background-color:#F2F2F2;">31.71</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.9.7.7.4" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.9.7.7.4.1" style="background-color:#F2F2F2;">58.54</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.9.7.7.5" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.9.7.7.5.1" style="background-color:#F2F2F2;">31.71</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.9.7.7.6" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.9.7.7.6.1" style="background-color:#F2F2F2;">58.54</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T3.9.7.7.1" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.9.7.7.1.1" style="background-color:#F2F2F2;">1.00<math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.9.7.7.1.1.m1.1"><semantics id="S3.T3.9.7.7.1.1.m1.1a"><mo id="S3.T3.9.7.7.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T3.9.7.7.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.9.7.7.1.1.m1.1b"><times id="S3.T3.9.7.7.1.1.m1.1.1.cmml" xref="S3.T3.9.7.7.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.9.7.7.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.9.7.7.1.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.10.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T3.10.8.8.2" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.10.8.8.2.1">
<span class="ltx_p" id="S3.T3.10.8.8.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.10.8.8.2.1.1.1" style="background-color:#F2F2F2;">13B LoRA</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.10.8.8.3" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.10.8.8.3.1" style="background-color:#F2F2F2;">18.29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.10.8.8.4" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.10.8.8.4.1" style="background-color:#F2F2F2;">35.98</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.10.8.8.5" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.10.8.8.5.1" style="background-color:#F2F2F2;">18.29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.10.8.8.6" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.10.8.8.6.1" style="background-color:#F2F2F2;">39.02</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.10.8.8.1" style="background-color:#F2F2F2;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.10.8.8.1.1" style="background-color:#F2F2F2;">5.30<math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.10.8.8.1.1.m1.1"><semantics id="S3.T3.10.8.8.1.1.m1.1a"><mo id="S3.T3.10.8.8.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T3.10.8.8.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.10.8.8.1.1.m1.1b"><times id="S3.T3.10.8.8.1.1.m1.1.1.cmml" xref="S3.T3.10.8.8.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.10.8.8.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.10.8.8.1.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.11.9.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T3.11.9.9.2" style="padding:-2.5pt 0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.11.9.9.2.1">
<span class="ltx_p" id="S3.T3.11.9.9.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.9.9.2.1.1.1">70B QLoRAM-Rand</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.11.9.9.3" style="padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.9.9.3.1">29.27</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.11.9.9.4" style="padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.9.9.4.1">57.32</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.11.9.9.5" style="background-color:#A8C7DE;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.9.9.5.1" style="background-color:#A8C7DE;">31.71</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.11.9.9.6" style="padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.9.9.6.1">56.71</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.11.9.9.1" style="padding:-2.5pt 0.9pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.9.9.1.1">12.84</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.11.9.9.1.m1.1"><semantics id="S3.T3.11.9.9.1.m1.1a"><mo id="S3.T3.11.9.9.1.m1.1.1" xref="S3.T3.11.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.11.9.9.1.m1.1b"><times id="S3.T3.11.9.9.1.m1.1.1.cmml" xref="S3.T3.11.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.11.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.11.9.9.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.10.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T3.12.10.10.2" style="padding:-2.5pt 0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.12.10.10.2.1">
<span class="ltx_p" id="S3.T3.12.10.10.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.12.10.10.2.1.1.1">70B QLoRAM-Stru</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T3.12.10.10.3" style="background-color:#A8C7DE;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.12.10.10.3.1" style="background-color:#A8C7DE;">32.32</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T3.12.10.10.4" style="background-color:#A8C7DE;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.12.10.10.4.1" style="background-color:#A8C7DE;">58.54</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T3.12.10.10.5" style="background-color:#A8C7DE;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.12.10.10.5.1" style="background-color:#A8C7DE;">32.32</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T3.12.10.10.6" style="background-color:#A8C7DE;padding:-2.5pt 0.9pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.12.10.10.6.1" style="background-color:#A8C7DE;">59.15</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_bb" id="S3.T3.12.10.10.1" style="padding:-2.5pt 0.9pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T3.12.10.10.1.1">12.84</span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.12.10.10.1.m1.1"><semantics id="S3.T3.12.10.10.1.m1.1a"><mo id="S3.T3.12.10.10.1.m1.1.1" xref="S3.T3.12.10.10.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.12.10.10.1.m1.1b"><times id="S3.T3.12.10.10.1.m1.1.1.cmml" xref="S3.T3.12.10.10.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.12.10.10.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.12.10.10.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different LLaMA-2 models on the HumanEval code generation benchmark.  The HumanEval benchmark evaluates the ability of a language model to generate correct code given a function signature, a docstring (description of the function), and unit tests.  The models tested include the original untuned LLaMA-2 model, smaller LoRA-tuned models, and various LoRAM-tuned models which use different pruning techniques. The results reported are PASS@1 (the percentage of tasks for which the top-ranked generated solution is correct) and PASS@10 (the percentage of tasks for which at least one of the top-10 generated solutions is correct).  The best results from a range of temperature settings (controlling randomness in the model's output) are shown for each model.
> <details>
> <summary>read the caption</summary>
> Table 3: Pass@1(%) and Pass@10(%) of HumanEval in the code generation domain under LLaMA-2. The best results for all baselines are reported, selected from temperature settings in {0.0, 0.2, 0.4, 0.6, 0.8} with toppsubscripttopp\textsc{top}_{\textsc{p}}top start_POSTSUBSCRIPT p end_POSTSUBSCRIPT fixed at 0.95.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T4.3">
<tr class="ltx_tr" id="A2.T4.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T4.3.4.1" style="padding:0.5pt 3.0pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.3.4.2" style="padding:0.5pt 3.0pt;">#Orig. Params</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.3.4.3" style="padding:0.5pt 3.0pt;">Pruning Ratio</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.3.4.4" style="padding:0.5pt 3.0pt;">#Pruned Params</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.3.4.5" style="padding:0.5pt 3.0pt;">Reduction</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T4.3.4.6" style="padding:0.5pt 3.0pt;">HBM</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.1.1.2" style="padding:0.5pt 3.0pt;">LoRAM-Semi</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3" style="padding:0.5pt 3.0pt;">13015864320</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.4" style="padding:0.5pt 3.0pt;">0.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.5" style="padding:0.5pt 3.0pt;">6738415616</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.1" style="padding:0.5pt 3.0pt;">1.93<math alttext="\times" class="ltx_Math" display="inline" id="A2.T4.1.1.1.m1.1"><semantics id="A2.T4.1.1.1.m1.1a"><mo id="A2.T4.1.1.1.m1.1.1" xref="A2.T4.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T4.1.1.1.m1.1b"><times id="A2.T4.1.1.1.m1.1.1.cmml" xref="A2.T4.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T4.1.1.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T4.1.1.6" style="padding:0.5pt 3.0pt;">12.55</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.2">
<td class="ltx_td ltx_align_left" id="A2.T4.2.2.2" style="padding:0.5pt 3.0pt;">LoRAM-Unst</td>
<td class="ltx_td ltx_align_center" id="A2.T4.2.2.3" style="padding:0.5pt 3.0pt;">13015864320</td>
<td class="ltx_td ltx_align_center" id="A2.T4.2.2.4" style="padding:0.5pt 3.0pt;">0.55</td>
<td class="ltx_td ltx_align_center" id="A2.T4.2.2.5" style="padding:0.5pt 3.0pt;">6037628912</td>
<td class="ltx_td ltx_align_center" id="A2.T4.2.2.1" style="padding:0.5pt 3.0pt;">2.16<math alttext="\times" class="ltx_Math" display="inline" id="A2.T4.2.2.1.m1.1"><semantics id="A2.T4.2.2.1.m1.1a"><mo id="A2.T4.2.2.1.m1.1.1" xref="A2.T4.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T4.2.2.1.m1.1b"><times id="A2.T4.2.2.1.m1.1.1.cmml" xref="A2.T4.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T4.2.2.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T4.2.2.6" style="padding:0.5pt 3.0pt;">11.25</td>
</tr>
<tr class="ltx_tr" id="A2.T4.3.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T4.3.3.2" style="padding:0.5pt 3.0pt;">LoRAM-Rand &amp; Stru</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.3.3.3" style="padding:0.5pt 3.0pt;">13015864320</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.3.3.4" style="padding:0.5pt 3.0pt;">0.65</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.3.3.5" style="padding:0.5pt 3.0pt;">6005662720</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.3.3.1" style="padding:0.5pt 3.0pt;">2.17<math alttext="\times" class="ltx_Math" display="inline" id="A2.T4.3.3.1.m1.1"><semantics id="A2.T4.3.3.1.m1.1a"><mo id="A2.T4.3.3.1.m1.1.1" xref="A2.T4.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T4.3.3.1.m1.1b"><times id="A2.T4.3.3.1.m1.1.1.cmml" xref="A2.T4.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T4.3.3.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T4.3.3.6" style="padding:0.5pt 3.0pt;">11.19</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of four different pruning methods used in the LoRAM (Low-Rank Adaptation with Memory efficiency) training scheme.  Specifically, it shows the impact of each pruning method on LLaMA-2-13B.  The table lists the original number of parameters, the pruning ratio applied, the resulting number of pruned parameters, the parameter reduction ratio achieved (expressed as a multiple), and the amount of High Bandwidth Memory (HBM) required to store the pruned parameters. Note that the low-rank matrix overhead isn't included in this HBM calculation.
> <details>
> <summary>read the caption</summary>
> Table 4: LoRAM configures on LLaMA-2-13B. Comparison of different pruning methods in terms of parameter reduction ratio (Reduction) and HBM footprint (GB) of pruned parameters (HBM), ignoring low-rank matrix overhead.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T5.5">
<tr class="ltx_tr" id="A2.T5.5.6">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T5.5.6.1" style="padding:0.5pt 3.0pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.5.6.2" style="padding:0.5pt 3.0pt;">#Orig. Params</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.5.6.3" style="padding:0.5pt 3.0pt;">Pruning Ratio</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.5.6.4" style="padding:0.5pt 3.0pt;">#Pruned Params</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.5.6.5" style="padding:0.5pt 3.0pt;">Reduction</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T5.5.6.6" style="padding:0.5pt 3.0pt;">HBM</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.2" style="padding:0.5pt 3.0pt;">LoRAM-Rand &amp; Stru</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.3" style="padding:0.5pt 3.0pt;">68976648192</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.4" style="padding:0.5pt 3.0pt;">0.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.5" style="padding:0.5pt 3.0pt;">28099436544</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.1" style="padding:0.5pt 3.0pt;">2.45<math alttext="\times" class="ltx_Math" display="inline" id="A2.T5.1.1.1.m1.1"><semantics id="A2.T5.1.1.1.m1.1a"><mo id="A2.T5.1.1.1.m1.1.1" xref="A2.T5.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T5.1.1.1.m1.1b"><times id="A2.T5.1.1.1.m1.1.1.cmml" xref="A2.T5.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T5.1.1.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.1.1.6" style="padding:0.5pt 3.0pt;">52.34</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2">
<td class="ltx_td ltx_align_left" id="A2.T5.2.2.2" style="padding:0.5pt 3.0pt;">LoRAM-Rand &amp; Stru</td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.2.3" style="padding:0.5pt 3.0pt;">68976648192</td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.2.4" style="padding:0.5pt 3.0pt;">0.75</td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.2.5" style="padding:0.5pt 3.0pt;">21488738304</td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.2.1" style="padding:0.5pt 3.0pt;">3.21<math alttext="\times" class="ltx_Math" display="inline" id="A2.T5.2.2.1.m1.1"><semantics id="A2.T5.2.2.1.m1.1a"><mo id="A2.T5.2.2.1.m1.1.1" xref="A2.T5.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T5.2.2.1.m1.1b"><times id="A2.T5.2.2.1.m1.1.1.cmml" xref="A2.T5.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T5.2.2.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.6" style="padding:0.5pt 3.0pt;">40.03</td>
</tr>
<tr class="ltx_tr" id="A2.T5.3.3">
<td class="ltx_td ltx_align_left" id="A2.T5.3.3.2" style="padding:0.5pt 3.0pt;">LoRAM-Rand &amp; Stru</td>
<td class="ltx_td ltx_align_center" id="A2.T5.3.3.3" style="padding:0.5pt 3.0pt;">68976648192</td>
<td class="ltx_td ltx_align_center" id="A2.T5.3.3.4" style="padding:0.5pt 3.0pt;">0.85</td>
<td class="ltx_td ltx_align_center" id="A2.T5.3.3.5" style="padding:0.5pt 3.0pt;">16272924672</td>
<td class="ltx_td ltx_align_center" id="A2.T5.3.3.1" style="padding:0.5pt 3.0pt;">4.24<math alttext="\times" class="ltx_Math" display="inline" id="A2.T5.3.3.1.m1.1"><semantics id="A2.T5.3.3.1.m1.1a"><mo id="A2.T5.3.3.1.m1.1.1" xref="A2.T5.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T5.3.3.1.m1.1b"><times id="A2.T5.3.3.1.m1.1.1.cmml" xref="A2.T5.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T5.3.3.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.3.3.6" style="padding:0.5pt 3.0pt;">30.31</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.4">
<td class="ltx_td ltx_align_left" id="A2.T5.4.4.2" style="padding:0.5pt 3.0pt;">LoRAM-Rand &amp; Stru</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.4.3" style="padding:0.5pt 3.0pt;">68976648192</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.4.4" style="padding:0.5pt 3.0pt;">0.95</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.4.5" style="padding:0.5pt 3.0pt;">9662226432</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.4.1" style="padding:0.5pt 3.0pt;">7.14<math alttext="\times" class="ltx_Math" display="inline" id="A2.T5.4.4.1.m1.1"><semantics id="A2.T5.4.4.1.m1.1a"><mo id="A2.T5.4.4.1.m1.1.1" xref="A2.T5.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T5.4.4.1.m1.1b"><times id="A2.T5.4.4.1.m1.1.1.cmml" xref="A2.T5.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T5.4.4.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.4.4.6" style="padding:0.5pt 3.0pt;">18.00</td>
</tr>
<tr class="ltx_tr" id="A2.T5.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T5.5.5.2" style="padding:0.5pt 3.0pt;">LoRAM-Rand &amp; Stru</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.5.5.3" style="padding:0.5pt 3.0pt;">70553706496</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.5.5.4" style="padding:0.5pt 3.0pt;">0.85</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.5.5.5" style="padding:0.5pt 3.0pt;">17849982976</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.5.5.1" style="padding:0.5pt 3.0pt;">3.95<math alttext="\times" class="ltx_Math" display="inline" id="A2.T5.5.5.1.m1.1"><semantics id="A2.T5.5.5.1.m1.1a"><mo id="A2.T5.5.5.1.m1.1.1" xref="A2.T5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T5.5.5.1.m1.1b"><times id="A2.T5.5.5.1.m1.1.1.cmml" xref="A2.T5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T5.5.5.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T5.5.5.6" style="padding:0.5pt 3.0pt;">33.25</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the configurations used for the LoRAM experiments on the LLaMA-2-70B and LLaMA-3.1-70B models. It shows how different pruning ratios affect the number of pruned parameters, the reduction ratio compared to the original number of parameters, and the amount of GPU High Bandwidth Memory (HBM) required for training.  The table is crucial for understanding the impact of different pruning strategies on memory efficiency and the trade-off between memory savings and performance.
> <details>
> <summary>read the caption</summary>
> Table 5: LoRAM configures on LLaMA-2-70B and LLaMA-3.1-70B with different pruning ratios.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T6.5">
<tr class="ltx_tr" id="A2.T6.5.6">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T6.5.6.1" style="padding:0.5pt 3.0pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.5.6.2" style="padding:0.5pt 3.0pt;">#Orig. Params</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.5.6.3" style="padding:0.5pt 3.0pt;">Pruning Ratio</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.5.6.4" style="padding:0.5pt 3.0pt;">#Pruned Params</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.5.6.5" style="padding:0.5pt 3.0pt;">Reduction</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T6.5.6.6" style="padding:0.5pt 3.0pt;">HBM</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.2" style="padding:0.5pt 3.0pt;">QLoRAM-Rand &amp; Stru</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.3" style="padding:0.5pt 3.0pt;">68976648192</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.4" style="padding:0.5pt 3.0pt;">0.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.5" style="padding:0.5pt 3.0pt;">7024859136</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.1" style="padding:0.5pt 3.0pt;">9.82<math alttext="\times" class="ltx_Math" display="inline" id="A2.T6.1.1.1.m1.1"><semantics id="A2.T6.1.1.1.m1.1a"><mo id="A2.T6.1.1.1.m1.1.1" xref="A2.T6.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T6.1.1.1.m1.1b"><times id="A2.T6.1.1.1.m1.1.1.cmml" xref="A2.T6.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T6.1.1.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T6.1.1.6" style="padding:0.5pt 3.0pt;">13.08</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.2">
<td class="ltx_td ltx_align_left" id="A2.T6.2.2.2" style="padding:0.5pt 3.0pt;">QLoRAM-Rand &amp; Stru</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.2.3" style="padding:0.5pt 3.0pt;">68976648192</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.2.4" style="padding:0.5pt 3.0pt;">0.75</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.2.5" style="padding:0.5pt 3.0pt;">5372184576</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.2.1" style="padding:0.5pt 3.0pt;">12.84<math alttext="\times" class="ltx_Math" display="inline" id="A2.T6.2.2.1.m1.1"><semantics id="A2.T6.2.2.1.m1.1a"><mo id="A2.T6.2.2.1.m1.1.1" xref="A2.T6.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T6.2.2.1.m1.1b"><times id="A2.T6.2.2.1.m1.1.1.cmml" xref="A2.T6.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T6.2.2.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.2.2.6" style="padding:0.5pt 3.0pt;">10.01</td>
</tr>
<tr class="ltx_tr" id="A2.T6.3.3">
<td class="ltx_td ltx_align_left" id="A2.T6.3.3.2" style="padding:0.5pt 3.0pt;">QLoRAM-Rand &amp; Stru</td>
<td class="ltx_td ltx_align_center" id="A2.T6.3.3.3" style="padding:0.5pt 3.0pt;">68976648192</td>
<td class="ltx_td ltx_align_center" id="A2.T6.3.3.4" style="padding:0.5pt 3.0pt;">0.85</td>
<td class="ltx_td ltx_align_center" id="A2.T6.3.3.5" style="padding:0.5pt 3.0pt;">4068231168</td>
<td class="ltx_td ltx_align_center" id="A2.T6.3.3.1" style="padding:0.5pt 3.0pt;">16.95<math alttext="\times" class="ltx_Math" display="inline" id="A2.T6.3.3.1.m1.1"><semantics id="A2.T6.3.3.1.m1.1a"><mo id="A2.T6.3.3.1.m1.1.1" xref="A2.T6.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T6.3.3.1.m1.1b"><times id="A2.T6.3.3.1.m1.1.1.cmml" xref="A2.T6.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T6.3.3.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.3.3.6" style="padding:0.5pt 3.0pt;">7.58</td>
</tr>
<tr class="ltx_tr" id="A2.T6.4.4">
<td class="ltx_td ltx_align_left" id="A2.T6.4.4.2" style="padding:0.5pt 3.0pt;">QLoRAM-Rand &amp; Stru</td>
<td class="ltx_td ltx_align_center" id="A2.T6.4.4.3" style="padding:0.5pt 3.0pt;">68976648192</td>
<td class="ltx_td ltx_align_center" id="A2.T6.4.4.4" style="padding:0.5pt 3.0pt;">0.95</td>
<td class="ltx_td ltx_align_center" id="A2.T6.4.4.5" style="padding:0.5pt 3.0pt;">2415556608</td>
<td class="ltx_td ltx_align_center" id="A2.T6.4.4.1" style="padding:0.5pt 3.0pt;">28.56<math alttext="\times" class="ltx_Math" display="inline" id="A2.T6.4.4.1.m1.1"><semantics id="A2.T6.4.4.1.m1.1a"><mo id="A2.T6.4.4.1.m1.1.1" xref="A2.T6.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T6.4.4.1.m1.1b"><times id="A2.T6.4.4.1.m1.1.1.cmml" xref="A2.T6.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T6.4.4.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.4.4.6" style="padding:0.5pt 3.0pt;">4.50</td>
</tr>
<tr class="ltx_tr" id="A2.T6.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.5.5.2" style="padding:0.5pt 3.0pt;">QLoRAM-Rand &amp; Stru</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.5.5.3" style="padding:0.5pt 3.0pt;">70553706496</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.5.5.4" style="padding:0.5pt 3.0pt;">0.85</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.5.5.5" style="padding:0.5pt 3.0pt;">4462495744</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.5.5.1" style="padding:0.5pt 3.0pt;">15.81<math alttext="\times" class="ltx_Math" display="inline" id="A2.T6.5.5.1.m1.1"><semantics id="A2.T6.5.5.1.m1.1a"><mo id="A2.T6.5.5.1.m1.1.1" xref="A2.T6.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A2.T6.5.5.1.m1.1b"><times id="A2.T6.5.5.1.m1.1.1.cmml" xref="A2.T6.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A2.T6.5.5.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T6.5.5.6" style="padding:0.5pt 3.0pt;">8.31</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table shows different configurations for QLoRAM (Quantized LoRAM) on two large language models, LLaMA-2-70B and LLaMA-3.1-70B.  It details the original number of parameters, the pruning ratio used, the number of parameters after pruning, the reduction ratio achieved (showing how much smaller the model became), and the amount of High Bandwidth Memory (HBM) used by the pruned parameters. The table highlights how QLoRAM, by combining LORAM with quantization, achieves very aggressive parameter compression, significantly reducing memory requirements during training.
> <details>
> <summary>read the caption</summary>
> Table 6: QLoRAM configures on LLaMA-2-70B and LLaMA-3.1-70B with , demonstrating more aggressive parameter compression.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A8.T7.1">
<tr class="ltx_tr" id="A8.T7.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T7.1.1.1"><span class="ltx_text ltx_font_bold" id="A8.T7.1.1.1.1">LLaMA-3.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A8.T7.1.1.2"><span class="ltx_text ltx_font_bold" id="A8.T7.1.1.2.1">GSM8K</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A8.T7.1.1.3"><span class="ltx_text ltx_font_bold" id="A8.T7.1.1.3.1">Parameter Reduction Ratio</span></td>
</tr>
<tr class="ltx_tr" id="A8.T7.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T7.1.2.1">8B w/o Fine-Tuning</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A8.T7.1.2.2">55.27</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A8.T7.1.2.3">8.79×</td>
</tr>
<tr class="ltx_tr" id="A8.T7.1.3">
<td class="ltx_td ltx_align_left" id="A8.T7.1.3.1">8B LoRA (OpenHermes 400)</td>
<td class="ltx_td ltx_align_center" id="A8.T7.1.3.2">55.80</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T7.1.3.3">8.79×</td>
</tr>
<tr class="ltx_tr" id="A8.T7.1.4">
<td class="ltx_td ltx_align_left" id="A8.T7.1.4.1">70B w/o Fine-Tuning</td>
<td class="ltx_td ltx_align_center" id="A8.T7.1.4.2">75.28</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T7.1.4.3">1.00×</td>
</tr>
<tr class="ltx_tr" id="A8.T7.1.5">
<td class="ltx_td ltx_align_left" id="A8.T7.1.5.1">70B QLoRAM-Stru 400 (OpenHermes 400)</td>
<td class="ltx_td ltx_align_center" id="A8.T7.1.5.2">80.36</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T7.1.5.3"><span class="ltx_text ltx_font_bold" id="A8.T7.1.5.3.1">15.81×</span></td>
</tr>
<tr class="ltx_tr" id="A8.T7.1.6">
<td class="ltx_td ltx_align_left" id="A8.T7.1.6.1">70B QLoRAM-Stru 400 (GSM8K 100)</td>
<td class="ltx_td ltx_align_center" id="A8.T7.1.6.2">77.18</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T7.1.6.3"><span class="ltx_text ltx_font_bold" id="A8.T7.1.6.3.1">15.81×</span></td>
</tr>
<tr class="ltx_tr" id="A8.T7.1.7">
<td class="ltx_td ltx_align_left" id="A8.T7.1.7.1">70B QLoRAM-Stru 400 (GSM8K 200)</td>
<td class="ltx_td ltx_align_center" id="A8.T7.1.7.2">79.15</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T7.1.7.3"><span class="ltx_text ltx_font_bold" id="A8.T7.1.7.3.1">15.81×</span></td>
</tr>
<tr class="ltx_tr" id="A8.T7.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T7.1.8.1">70B LoRA (OpenHermes 400)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A8.T7.1.8.2"><span class="ltx_text ltx_font_bold" id="A8.T7.1.8.2.1">80.74</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A8.T7.1.8.3">1.00×</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating LoRAM's performance on the GSM8K dataset, a benchmark specifically designed for mathematical reasoning.  It shows the accuracy achieved by different model configurations, including the original untuned model (70B w/o Fine-Tuning), a smaller model fine-tuned with LoRA (8B LORA), and several LoRAM variants (70B QLORAM-Stru) with varying degrees of parameter reduction.  The accuracy is shown as a percentage, and the parameter reduction ratio indicates how much smaller the LoRAM models are compared to the 70B parameter model.  The results demonstrate LoRAM's performance on a domain-specific task and how it compares to alternative fine-tuning methods, highlighting its effectiveness in scenarios with limited resources.
> <details>
> <summary>read the caption</summary>
> Table 7: Evaluation of LoRAM on the GSM8K dataset for domain-specific fine-tuning. Results show accuracy (%) and parameter reduction ratios for different configurations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A9.T8.3">
<tr class="ltx_tr" id="A9.T8.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A9.T8.3.4.1"><span class="ltx_text ltx_font_bold" id="A9.T8.3.4.1.1">LLaMA-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A9.T8.3.4.2"><span class="ltx_text ltx_font_bold" id="A9.T8.3.4.2.1">#Model Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A9.T8.3.4.3"><span class="ltx_text ltx_font_bold" id="A9.T8.3.4.3.1">Reduction Ratio</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A9.T8.3.4.4"><span class="ltx_text ltx_font_bold" id="A9.T8.3.4.4.1">Memory</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A9.T8.3.4.5"><span class="ltx_text ltx_font_bold" id="A9.T8.3.4.5.1">Latency</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A9.T8.3.4.6"><span class="ltx_text ltx_font_bold" id="A9.T8.3.4.6.1">Throughput</span></td>
</tr>
<tr class="ltx_tr" id="A9.T8.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A9.T8.1.1.2">7B LoRA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T8.1.1.3">6.73B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T8.1.1.1">1.93<math alttext="\times" class="ltx_Math" display="inline" id="A9.T8.1.1.1.m1.1"><semantics id="A9.T8.1.1.1.m1.1a"><mo id="A9.T8.1.1.1.m1.1.1" xref="A9.T8.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A9.T8.1.1.1.m1.1b"><times id="A9.T8.1.1.1.m1.1.1.cmml" xref="A9.T8.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A9.T8.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A9.T8.1.1.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T8.1.1.4">30,517</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T8.1.1.5"><span class="ltx_text ltx_font_bold" id="A9.T8.1.1.5.1">134.27</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A9.T8.1.1.6"><span class="ltx_text ltx_font_bold" id="A9.T8.1.1.6.1">7.626</span></td>
</tr>
<tr class="ltx_tr" id="A9.T8.2.2">
<td class="ltx_td ltx_align_left" id="A9.T8.2.2.2">13B LoRA</td>
<td class="ltx_td ltx_align_center" id="A9.T8.2.2.3">13.02B</td>
<td class="ltx_td ltx_align_center" id="A9.T8.2.2.1">1.00<math alttext="\times" class="ltx_Math" display="inline" id="A9.T8.2.2.1.m1.1"><semantics id="A9.T8.2.2.1.m1.1a"><mo id="A9.T8.2.2.1.m1.1.1" xref="A9.T8.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A9.T8.2.2.1.m1.1b"><times id="A9.T8.2.2.1.m1.1.1.cmml" xref="A9.T8.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A9.T8.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A9.T8.2.2.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A9.T8.2.2.4">51,661</td>
<td class="ltx_td ltx_align_center" id="A9.T8.2.2.5">206.07</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A9.T8.2.2.6">4.969</td>
</tr>
<tr class="ltx_tr" id="A9.T8.3.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A9.T8.3.3.2">13B LoRAM-Stru</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T8.3.3.3"><span class="ltx_text ltx_font_bold" id="A9.T8.3.3.3.1">6.01B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T8.3.3.1"><span class="ltx_text ltx_font_bold" id="A9.T8.3.3.1.1">2.17<math alttext="\times" class="ltx_Math" display="inline" id="A9.T8.3.3.1.1.m1.1"><semantics id="A9.T8.3.3.1.1.m1.1a"><mo id="A9.T8.3.3.1.1.m1.1.1" xref="A9.T8.3.3.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A9.T8.3.3.1.1.m1.1b"><times id="A9.T8.3.3.1.1.m1.1.1.cmml" xref="A9.T8.3.3.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A9.T8.3.3.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A9.T8.3.3.1.1.m1.1d">×</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T8.3.3.4"><span class="ltx_text ltx_font_bold" id="A9.T8.3.3.4.1">29,799</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T8.3.3.5">147.86</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A9.T8.3.3.6">6.925</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the peak memory usage, latency, and throughput of different models during the online training phase. The models compared are LoRA-trained 7B parameter model and LoRAM-trained 13B parameter model. The training workload consists of 1024 samples with a batch size of 128, micro-batch size of 4, and a sequence length of 512. The results show that LoRAM achieves comparable performance to the smaller 7B parameter LoRA model in terms of memory, latency and throughput, despite using a larger model.
> <details>
> <summary>read the caption</summary>
> Table 8: Comparison of peak memory (MiB), latency (s), and throughput (samples/s) during the online training phase for LoRAM and LoRA models. Results are based on a workload of 1024 samples (batch size 128, micro-batch size 4, sequence length 512).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.13533/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13533/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}