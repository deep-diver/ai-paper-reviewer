---
title: "LearnAct: Few-Shot Mobile GUI Agent with a Unified Demonstration Benchmark"
summary: "LearnAct: A new approach for mobile GUI agents using human demonstrations and a unified benchmark."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Human-AI Interaction", "🏢 Zhejiang University",]
showSummary: true
date: 2025-04-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.13805 {{< /keyword >}}
{{< keyword icon="writer" >}} Guangyi Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.13805" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.13805" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.13805/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Mobile GUI agents** face challenges in diverse real-world scenarios due to the vast variety of mobile applications and user interfaces. Traditional approaches that rely on pre-training or fine-tuning with massive datasets struggle to generalize effectively in unseen scenarios. This limits the widespread adoption of mobile GUI agents. There is a need for approaches that achieve both robustness and personalization by learning from a small number of user-provided examples. 



The paper introduces **LearnAct, a novel multi-agent framework**, and LearnGUI benchmark that enhances mobile GUI agent capabilities through few-shot demonstration learning. LearnAct includes DemoParser, KnowSeeker and ActExecutor. Results show single demonstrations improve performance and enhance task success rates, establishing demonstration-based learning as a promising direction. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LearnAct, a multi-agent framework, enhances mobile GUI agent adaptability through demonstration-based learning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LearnGUI, a new benchmark dataset, facilitates research into demonstration-based learning for mobile GUI agents. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experimental results show significant performance gains using LearnAct in both offline and online evaluations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work pioneers adaptable mobile GUI agents using demonstration-based learning. It introduces the LearnAct framework and LearnGUI benchmark, offering valuable tools and insights for creating more personalized and deployable mobile agents, impacting automation and accessibility research.

------
#### Visual Insights



![](https://arxiv.org/html/2504.13805/extracted/6372901/images/teaser-final.drawio.png)

> 🔼 This figure illustrates the LearnAct framework and the LearnGUI benchmark dataset. LearnAct is a novel framework that uses demonstration-based learning to improve the performance of mobile GUI agents.  It addresses the limitations of traditional rule-based and LLM-based methods, which struggle with the diversity of mobile interfaces and long-tail scenarios (uncommon or unexpected tasks). LearnGUI, a benchmark dataset, is specifically designed to support evaluating demonstration-based learning for mobile GUI agents.  The figure visually compares different approaches to mobile GUI automation and highlights LearnAct's superior performance in both offline and online settings.
> <details>
> <summary>read the caption</summary>
> Figure 1.  The LearnAct Framework and LearnGUI Benchmark focus on addressing the long-tail challenges in mobile GUI agent performance through demonstration-based learning. From rule-based automation to LLM-powered agents, mobile GUI automation has evolved significantly, yet still struggles with long-tail scenarios due to interface diversity. Our LearnAct framework introduces demonstration-based learning to effectively handle these challenges, outperforming existing methods in both offline and online evaluations.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.7">
<tr class="ltx_tr" id="S2.T1.7.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S2.T1.7.1.1" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.1.1.1">
<span class="ltx_p" id="S2.T1.7.1.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.1.1.1.1.1" style="font-size:80%;">Dataset</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.7.1.2" style="padding:0.4pt 2.7pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.1.2.1" style="font-size:80%;"># Inst.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.7.1.3" style="padding:0.4pt 2.7pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.1.3.1" style="font-size:80%;"># Apps</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.7.1.4" style="padding:0.4pt 2.7pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.1.4.1" style="font-size:80%;"># Step</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S2.T1.7.1.5" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.1.5.1">
<span class="ltx_p" id="S2.T1.7.1.5.1.1" style="width:22.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.1.5.1.1.1" style="font-size:80%;">Env.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S2.T1.7.1.6" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.1.6.1">
<span class="ltx_p" id="S2.T1.7.1.6.1.1" style="width:12.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.1.6.1.1.1" style="font-size:80%;">HL</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S2.T1.7.1.7" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.1.7.1">
<span class="ltx_p" id="S2.T1.7.1.7.1.1" style="width:12.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.1.7.1.1.1" style="font-size:80%;">LL</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S2.T1.7.1.8" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.1.8.1">
<span class="ltx_p" id="S2.T1.7.1.8.1.1" style="width:12.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.1.8.1.1.1" style="font-size:80%;">GT</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S2.T1.7.1.9" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.1.9.1">
<span class="ltx_p" id="S2.T1.7.1.9.1.1" style="width:12.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.1.9.1.1.1" style="font-size:80%;">FS</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.7.2.1" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.2.1.1">
<span class="ltx_p" id="S2.T1.7.2.1.1.1" style="width:62.6pt;"><span class="ltx_text" id="S2.T1.7.2.1.1.1.1" style="font-size:80%;">PixelHelp </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S2.T1.7.2.1.1.1.2.1" style="font-size:80%;">(</span>Li et al<span class="ltx_text">.</span><span class="ltx_text" id="S2.T1.7.2.1.1.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib16" title="">2020</a><span class="ltx_text" id="S2.T1.7.2.1.1.1.4.3" style="font-size:80%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.2.2" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.2.2.1" style="font-size:80%;">187</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.2.3" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.2.3.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.2.4" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.2.4.1" style="font-size:80%;">4.2</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.7.2.5" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.2.5.1">
<span class="ltx_p" id="S2.T1.7.2.5.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.7.2.5.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.7.2.6" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.2.6.1">
<span class="ltx_p" id="S2.T1.7.2.6.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.2.6.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.7.2.7" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.2.7.1">
<span class="ltx_p" id="S2.T1.7.2.7.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.2.7.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.7.2.8" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.2.8.1">
<span class="ltx_p" id="S2.T1.7.2.8.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.2.8.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.7.2.9" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.2.9.1">
<span class="ltx_p" id="S2.T1.7.2.9.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.2.9.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.3.1" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.3.1.1">
<span class="ltx_p" id="S2.T1.7.3.1.1.1" style="width:62.6pt;"><span class="ltx_text" id="S2.T1.7.3.1.1.1.1" style="font-size:80%;">MoTIF </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S2.T1.7.3.1.1.1.2.1" style="font-size:80%;">(</span>Burns et al<span class="ltx_text">.</span><span class="ltx_text" id="S2.T1.7.3.1.1.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib5" title="">2021</a><span class="ltx_text" id="S2.T1.7.3.1.1.1.4.3" style="font-size:80%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.3.2" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.3.2.1" style="font-size:80%;">276</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.3.3" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.3.3.1" style="font-size:80%;">125</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.3.4" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.3.4.1" style="font-size:80%;">4.5</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.3.5" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.3.5.1">
<span class="ltx_p" id="S2.T1.7.3.5.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.7.3.5.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.3.6" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.3.6.1">
<span class="ltx_p" id="S2.T1.7.3.6.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.3.6.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.3.7" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.3.7.1">
<span class="ltx_p" id="S2.T1.7.3.7.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.3.7.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.3.8" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.3.8.1">
<span class="ltx_p" id="S2.T1.7.3.8.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.3.8.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.3.9" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.3.9.1">
<span class="ltx_p" id="S2.T1.7.3.9.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.3.9.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.4.1" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.4.1.1">
<span class="ltx_p" id="S2.T1.7.4.1.1.1" style="width:62.6pt;"><span class="ltx_text" id="S2.T1.7.4.1.1.1.1" style="font-size:80%;">UIBert </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S2.T1.7.4.1.1.1.2.1" style="font-size:80%;">(</span>Bai et al<span class="ltx_text">.</span><span class="ltx_text" id="S2.T1.7.4.1.1.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib4" title="">2021</a><span class="ltx_text" id="S2.T1.7.4.1.1.1.4.3" style="font-size:80%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.4.2" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.4.2.1" style="font-size:80%;">16,660</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.4.3" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.4.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.4.4" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.4.4.1" style="font-size:80%;">1</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.4.5" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.4.5.1">
<span class="ltx_p" id="S2.T1.7.4.5.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.7.4.5.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.4.6" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.4.6.1">
<span class="ltx_p" id="S2.T1.7.4.6.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.4.6.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.4.7" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.4.7.1">
<span class="ltx_p" id="S2.T1.7.4.7.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.4.7.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.4.8" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.4.8.1">
<span class="ltx_p" id="S2.T1.7.4.8.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.4.8.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.4.9" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.4.9.1">
<span class="ltx_p" id="S2.T1.7.4.9.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.4.9.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.5.1" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.5.1.1">
<span class="ltx_p" id="S2.T1.7.5.1.1.1" style="width:62.6pt;"><span class="ltx_text" id="S2.T1.7.5.1.1.1.1" style="font-size:80%;">UGIF </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S2.T1.7.5.1.1.1.2.1" style="font-size:80%;">(</span>Venkatesh et al<span class="ltx_text">.</span><span class="ltx_text" id="S2.T1.7.5.1.1.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib28" title="">2022</a><span class="ltx_text" id="S2.T1.7.5.1.1.1.4.3" style="font-size:80%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.5.2" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.5.2.1" style="font-size:80%;">523</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.5.3" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.5.3.1" style="font-size:80%;">12</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.5.4" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.5.4.1" style="font-size:80%;">6.3</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.5.5" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.5.5.1">
<span class="ltx_p" id="S2.T1.7.5.5.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.7.5.5.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.5.6" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.5.6.1">
<span class="ltx_p" id="S2.T1.7.5.6.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.5.6.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.5.7" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.5.7.1">
<span class="ltx_p" id="S2.T1.7.5.7.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.5.7.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.5.8" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.5.8.1">
<span class="ltx_p" id="S2.T1.7.5.8.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.5.8.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.5.9" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.5.9.1">
<span class="ltx_p" id="S2.T1.7.5.9.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.5.9.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.6.1" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.6.1.1">
<span class="ltx_p" id="S2.T1.7.6.1.1.1" style="width:62.6pt;"><span class="ltx_text" id="S2.T1.7.6.1.1.1.1" style="font-size:80%;">AITW </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S2.T1.7.6.1.1.1.2.1" style="font-size:80%;">(</span>Rawles et al<span class="ltx_text">.</span><span class="ltx_text" id="S2.T1.7.6.1.1.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib25" title="">2024b</a><span class="ltx_text" id="S2.T1.7.6.1.1.1.4.3" style="font-size:80%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.6.2" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.6.2.1" style="font-size:80%;">30,378</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.6.3" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.6.3.1" style="font-size:80%;">357</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.6.4" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.6.4.1" style="font-size:80%;">6.5</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.6.5" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.6.5.1">
<span class="ltx_p" id="S2.T1.7.6.5.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.7.6.5.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.6.6" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.6.6.1">
<span class="ltx_p" id="S2.T1.7.6.6.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.6.6.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.6.7" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.6.7.1">
<span class="ltx_p" id="S2.T1.7.6.7.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.6.7.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.6.8" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.6.8.1">
<span class="ltx_p" id="S2.T1.7.6.8.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.6.8.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.6.9" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.6.9.1">
<span class="ltx_p" id="S2.T1.7.6.9.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.6.9.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.7.1" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.7.1.1">
<span class="ltx_p" id="S2.T1.7.7.1.1.1" style="width:62.6pt;"><span class="ltx_text" id="S2.T1.7.7.1.1.1.1" style="font-size:80%;">AITZ </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S2.T1.7.7.1.1.1.2.1" style="font-size:80%;">(</span>Zhang et al<span class="ltx_text">.</span><span class="ltx_text" id="S2.T1.7.7.1.1.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib46" title="">2024c</a><span class="ltx_text" id="S2.T1.7.7.1.1.1.4.3" style="font-size:80%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.7.2" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.7.2.1" style="font-size:80%;">2,504</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.7.3" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.7.3.1" style="font-size:80%;">70</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.7.4" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.7.4.1" style="font-size:80%;">7.5</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.7.5" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.7.5.1">
<span class="ltx_p" id="S2.T1.7.7.5.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.7.7.5.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.7.6" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.7.6.1">
<span class="ltx_p" id="S2.T1.7.7.6.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.7.6.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.7.7" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.7.7.1">
<span class="ltx_p" id="S2.T1.7.7.7.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.7.7.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.7.8" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.7.8.1">
<span class="ltx_p" id="S2.T1.7.7.8.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.7.8.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.7.9" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.7.9.1">
<span class="ltx_p" id="S2.T1.7.7.9.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.7.9.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.8.1" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.8.1.1">
<span class="ltx_p" id="S2.T1.7.8.1.1.1" style="width:62.6pt;"><span class="ltx_text" id="S2.T1.7.8.1.1.1.1" style="font-size:80%;">AndroidControl </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S2.T1.7.8.1.1.1.2.1" style="font-size:80%;">(</span>Li et al<span class="ltx_text">.</span><span class="ltx_text" id="S2.T1.7.8.1.1.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib15" title="">2024</a><span class="ltx_text" id="S2.T1.7.8.1.1.1.4.3" style="font-size:80%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.8.2" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.8.2.1" style="font-size:80%;">15,283</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.8.3" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.8.3.1" style="font-size:80%;">833</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.8.4" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.8.4.1" style="font-size:80%;">4.8</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.8.5" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.8.5.1">
<span class="ltx_p" id="S2.T1.7.8.5.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.7.8.5.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.8.6" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.8.6.1">
<span class="ltx_p" id="S2.T1.7.8.6.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.8.6.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.8.7" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.8.7.1">
<span class="ltx_p" id="S2.T1.7.8.7.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.8.7.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.8.8" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.8.8.1">
<span class="ltx_p" id="S2.T1.7.8.8.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.8.8.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.8.9" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.8.9.1">
<span class="ltx_p" id="S2.T1.7.8.9.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.8.9.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.9.1" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.9.1.1">
<span class="ltx_p" id="S2.T1.7.9.1.1.1" style="width:62.6pt;"><span class="ltx_text" id="S2.T1.7.9.1.1.1.1" style="font-size:80%;">AMEX </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S2.T1.7.9.1.1.1.2.1" style="font-size:80%;">(</span>Chai et al<span class="ltx_text">.</span><span class="ltx_text" id="S2.T1.7.9.1.1.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib6" title="">2024</a><span class="ltx_text" id="S2.T1.7.9.1.1.1.4.3" style="font-size:80%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.9.2" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.9.2.1" style="font-size:80%;">2,946</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.9.3" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.9.3.1" style="font-size:80%;">110</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.9.4" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.9.4.1" style="font-size:80%;">12.8</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.9.5" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.9.5.1">
<span class="ltx_p" id="S2.T1.7.9.5.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.7.9.5.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.9.6" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.9.6.1">
<span class="ltx_p" id="S2.T1.7.9.6.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.9.6.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.9.7" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.9.7.1">
<span class="ltx_p" id="S2.T1.7.9.7.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.9.7.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.9.8" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.9.8.1">
<span class="ltx_p" id="S2.T1.7.9.8.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.9.8.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.9.9" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.9.9.1">
<span class="ltx_p" id="S2.T1.7.9.9.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.9.9.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.10.1" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.10.1.1">
<span class="ltx_p" id="S2.T1.7.10.1.1.1" style="width:62.6pt;"><span class="ltx_text" id="S2.T1.7.10.1.1.1.1" style="font-size:80%;">MobileAgentBench </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S2.T1.7.10.1.1.1.2.1" style="font-size:80%;">(</span>Wang et al<span class="ltx_text">.</span><span class="ltx_text" id="S2.T1.7.10.1.1.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib31" title="">2024b</a><span class="ltx_text" id="S2.T1.7.10.1.1.1.4.3" style="font-size:80%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.10.2" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.10.2.1" style="font-size:80%;">100</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.10.3" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.10.3.1" style="font-size:80%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.10.4" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.10.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.10.5" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.10.5.1">
<span class="ltx_p" id="S2.T1.7.10.5.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.7.10.5.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.10.6" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.10.6.1">
<span class="ltx_p" id="S2.T1.7.10.6.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.10.6.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.10.7" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.10.7.1">
<span class="ltx_p" id="S2.T1.7.10.7.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.10.7.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.10.8" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.10.8.1">
<span class="ltx_p" id="S2.T1.7.10.8.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.10.8.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.10.9" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.10.9.1">
<span class="ltx_p" id="S2.T1.7.10.9.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.10.9.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.11.1" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.11.1.1">
<span class="ltx_p" id="S2.T1.7.11.1.1.1" style="width:62.6pt;"><span class="ltx_text" id="S2.T1.7.11.1.1.1.1" style="font-size:80%;">AppAgent </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S2.T1.7.11.1.1.1.2.1" style="font-size:80%;">(</span>Zhang et al<span class="ltx_text">.</span><span class="ltx_text" id="S2.T1.7.11.1.1.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib45" title="">2023</a><span class="ltx_text" id="S2.T1.7.11.1.1.1.4.3" style="font-size:80%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.11.2" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.11.2.1" style="font-size:80%;">50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.11.3" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.11.3.1" style="font-size:80%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.11.4" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.11.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.11.5" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.11.5.1">
<span class="ltx_p" id="S2.T1.7.11.5.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.7.11.5.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.11.6" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.11.6.1">
<span class="ltx_p" id="S2.T1.7.11.6.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.11.6.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.11.7" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.11.7.1">
<span class="ltx_p" id="S2.T1.7.11.7.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.11.7.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.11.8" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.11.8.1">
<span class="ltx_p" id="S2.T1.7.11.8.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.11.8.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.11.9" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.11.9.1">
<span class="ltx_p" id="S2.T1.7.11.9.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.11.9.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.7.12.1" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.12.1.1">
<span class="ltx_p" id="S2.T1.7.12.1.1.1" style="width:62.6pt;"><span class="ltx_text" id="S2.T1.7.12.1.1.1.1" style="font-size:80%;">LlamaTouch </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S2.T1.7.12.1.1.1.2.1" style="font-size:80%;">(</span>Zhang et al<span class="ltx_text">.</span><span class="ltx_text" id="S2.T1.7.12.1.1.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib48" title="">2024b</a><span class="ltx_text" id="S2.T1.7.12.1.1.1.4.3" style="font-size:80%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.12.2" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.12.2.1" style="font-size:80%;">496</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.12.3" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.12.3.1" style="font-size:80%;">57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.12.4" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.12.4.1" style="font-size:80%;">7.01</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.7.12.5" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.12.5.1">
<span class="ltx_p" id="S2.T1.7.12.5.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.7.12.5.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.7.12.6" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.12.6.1">
<span class="ltx_p" id="S2.T1.7.12.6.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.12.6.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.7.12.7" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.12.7.1">
<span class="ltx_p" id="S2.T1.7.12.7.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.12.7.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.7.12.8" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.12.8.1">
<span class="ltx_p" id="S2.T1.7.12.8.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.12.8.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.7.12.9" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.12.9.1">
<span class="ltx_p" id="S2.T1.7.12.9.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.12.9.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.13.1" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.13.1.1">
<span class="ltx_p" id="S2.T1.7.13.1.1.1" style="width:62.6pt;"><span class="ltx_text" id="S2.T1.7.13.1.1.1.1" style="font-size:80%;">AndroidWorld </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S2.T1.7.13.1.1.1.2.1" style="font-size:80%;">(</span>Rawles et al<span class="ltx_text">.</span><span class="ltx_text" id="S2.T1.7.13.1.1.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib24" title="">2024a</a><span class="ltx_text" id="S2.T1.7.13.1.1.1.4.3" style="font-size:80%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.13.2" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.13.2.1" style="font-size:80%;">116</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.13.3" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.13.3.1" style="font-size:80%;">20</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.13.4" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.13.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.13.5" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.13.5.1">
<span class="ltx_p" id="S2.T1.7.13.5.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.7.13.5.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.13.6" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.13.6.1">
<span class="ltx_p" id="S2.T1.7.13.6.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.13.6.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.13.7" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.13.7.1">
<span class="ltx_p" id="S2.T1.7.13.7.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.13.7.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.13.8" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.13.8.1">
<span class="ltx_p" id="S2.T1.7.13.8.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.13.8.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.13.9" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.13.9.1">
<span class="ltx_p" id="S2.T1.7.13.9.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.13.9.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.14.1" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.14.1.1">
<span class="ltx_p" id="S2.T1.7.14.1.1.1" style="width:62.6pt;"><span class="ltx_text" id="S2.T1.7.14.1.1.1.1" style="font-size:80%;">AndroidLab </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S2.T1.7.14.1.1.1.2.1" style="font-size:80%;">(</span>Xu et al<span class="ltx_text">.</span><span class="ltx_text" id="S2.T1.7.14.1.1.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib41" title="">2024a</a><span class="ltx_text" id="S2.T1.7.14.1.1.1.4.3" style="font-size:80%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.14.2" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.14.2.1" style="font-size:80%;">138</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.14.3" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.14.3.1" style="font-size:80%;">9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.14.4" style="padding:0.4pt 2.7pt;"><span class="ltx_text" id="S2.T1.7.14.4.1" style="font-size:80%;">8.5</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.14.5" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.14.5.1">
<span class="ltx_p" id="S2.T1.7.14.5.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.7.14.5.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.14.6" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.14.6.1">
<span class="ltx_p" id="S2.T1.7.14.6.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.14.6.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.14.7" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.14.7.1">
<span class="ltx_p" id="S2.T1.7.14.7.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.14.7.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.14.8" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.14.8.1">
<span class="ltx_p" id="S2.T1.7.14.8.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.14.8.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.7.14.9" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.14.9.1">
<span class="ltx_p" id="S2.T1.7.14.9.1.1" style="width:12.8pt;"><span class="ltx_text" id="S2.T1.7.14.9.1.1.1" style="font-size:80%;color:#DC143C;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S2.T1.7.15.1" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.15.1.1">
<span class="ltx_p" id="S2.T1.7.15.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.15.1.1.1.1" style="font-size:80%;">LearnGUI (Ours)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.7.15.2" style="padding:0.4pt 2.7pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.15.2.1" style="font-size:80%;">2,353</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.7.15.3" style="padding:0.4pt 2.7pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.15.3.1" style="font-size:80%;">73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.7.15.4" style="padding:0.4pt 2.7pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.15.4.1" style="font-size:80%;">13.2</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S2.T1.7.15.5" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.15.5.1">
<span class="ltx_p" id="S2.T1.7.15.5.1.1" style="width:22.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.15.5.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S2.T1.7.15.6" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.15.6.1">
<span class="ltx_p" id="S2.T1.7.15.6.1.1" style="width:12.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.15.6.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S2.T1.7.15.7" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.15.7.1">
<span class="ltx_p" id="S2.T1.7.15.7.1.1" style="width:12.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.15.7.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S2.T1.7.15.8" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.15.8.1">
<span class="ltx_p" id="S2.T1.7.15.8.1.1" style="width:12.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.15.8.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S2.T1.7.15.9" style="padding:0.4pt 2.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.7.15.9.1">
<span class="ltx_p" id="S2.T1.7.15.9.1.1" style="width:12.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.15.9.1.1.1" style="font-size:80%;color:#00B04F;">✓</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares various datasets and benchmark environments used for evaluating mobile GUI agents.  It details the number of instructions, applications, and average steps per task within each dataset.  Further, it indicates whether each dataset supports environment interactions, high-level instructions, low-level instructions, provides ground truth trajectories, and facilitates few-shot learning.  This allows for a comparison of the complexity and capabilities of different datasets in terms of their suitability for training and evaluating mobile GUI agents.
> <details>
> <summary>read the caption</summary>
> Table 1. Comparison of different datasets and environments for benchmarking Mobile GUI agents. Column definitions: # Inst. (number of instructions), # Apps (number of applications), # Step (average steps per task), Env. (supports environment interactions), HL (has high-level instructions), LL (has low-level instructions), GT (provides ground truth trajectories), FS (supports few-shot learning).
> </details>





### In-depth insights


#### GUI Agent Long Tail
The "GUI Agent Long Tail" refers to the **challenge of creating GUI agents that can reliably handle the vast array of applications and user interfaces found on mobile devices**. Current approaches often struggle with the diversity of mobile apps and user-specific tasks, leading to poor performance in unseen scenarios, hindering widespread adoption. Addressing this requires a shift towards more adaptive and personalized approaches, such as demonstration-based learning, to handle the long-tail distribution of tasks and interfaces. **The key is not universal generalization through massive datasets**, but **specialized agents that can adapt to new UIs with minimal examples**.

#### LearnAct Agents
Although the paper never explicitly discusses agents named 'LearnAct Agents', we can infer their nature from the framework itself. These would be **AI-powered entities that leverage LearnAct's multi-agent system for mobile GUI task automation**. They would **utilize DemoParser for knowledge extraction from demonstrations**, **KnowSeeker for retrieving relevant knowledge**, and **ActExecutor for acting in the GUI** based on the extracted knowledge. The goal is to create agents more adaptable to real-world app diversity, and more personalized to user-specific tasks, avoiding generalization issues. LearnAct Agents, therefore, represent a paradigm shift towards **demonstration-based learning**, trading reliance on huge datasets for targeted learning from few shot human examples, enabling greater flexibility and adaptability.

#### Demonstration FTW
**Demonstration-based learning emerges as a compelling paradigm shift**, moving away from reliance on massive datasets for pre-training or fine-tuning mobile GUI agents. The approach promises adaptability and personalization by leveraging user-provided examples. **Instead of seeking universal generalization, the focus is on mastering unseen scenarios through demonstrations.** This addresses the long-tail challenges inherent in the vast diversity of mobile applications. LearnAct framework and LearnGUI benchmark enables practical solutions of the above. This direction offers a pathway for more adaptable and personalized GUI agents. **In essence, demonstration is a way for mobile GUI agents to adapt to the unique needs of each user**.

#### Similarity Matters
**Similarity plays a pivotal role in demonstration-based learning.** The degree of resemblance between support demonstrations and query tasks significantly influences a mobile GUI agent's ability to adapt and generalize. High **UI and action similarity often correlate with superior performance**, suggesting that agents readily transfer knowledge when both the visual interface and interaction patterns align. However, **action similarity can sometimes compensate for UI differences**, indicating agents can still infer relevant procedural knowledge even when interfaces vary. Understanding these nuanced relationships enables the design of more effective demonstration-based learning strategies by prioritizing relevant examples that maximize knowledge transfer and generalization capabilities.

#### Online is Key
While not explicitly a heading, the importance of **online interaction and adaptability** is central to the research. The LearnAct framework and LearnGUI benchmark underscore the shift towards mobile GUI agents that can perform effectively in diverse, real-world scenarios. The limitations of traditional approaches (**pre-training or fine-tuning with massive datasets**) highlight the need for agents that can generalize to unseen interfaces and user-specific tasks. The online evaluation metrics in LearnGUI is **critical for gauging true deployability**. Focusing on improving online task success rates, rather than solely offline accuracy, is key. LearnAct enhances models’ ability to adapt to dynamic environments (**improving the success rate of UI-TARS-7B-SFT**) signifying a move towards practical applications.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.13805/x1.png)

> 🔼 This figure demonstrates a toy example of demonstration-based learning for a mobile GUI agent.  Two sample tasks are shown: a support task and a query task.  The support task involves checking the temperature in the living room and adjusting the windows and air conditioner. The query task involves checking the humidity in the bedroom and adjusting the humidifier and windows.  The goal is to use the demonstration of the support task to improve the agent's ability to solve the query task. The LearnGUI benchmark uses this type of setup to provide various few-shot task combinations, measuring task similarity, UI similarity, and action similarity between support and query tasks to evaluate performance.
> <details>
> <summary>read the caption</summary>
> Figure 2.  A toy example for demonstration learning on mobile GUI Agent. We build a benchmark named LearnGUI for demonstration learning on Mobile GUI Agent, which provides different few-shot task combinations and offers multi-dimensional metrics including task similarity, UI similarity, and action similarity between support tasks and query tasks.
> </details>



![](https://arxiv.org/html/2504.13805/extracted/6372901/images/ui_action_similarity_scatter.drawio.png)

> 🔼 This scatter plot illustrates the relationship between UI (user interface) and action similarity in the LearnGUI-Offline dataset.  Each point represents a pair of tasks, with its horizontal position indicating the UI similarity and its vertical position indicating the action similarity between the two tasks.  The plot is divided into four quadrants, representing four profiles of task pairs:   1. **UISHActSH:** High UI similarity and high action similarity. 2. **UISHActSL:** High UI similarity and low action similarity. 3. **UISLActSH:** Low UI similarity and high action similarity. 4. **UISLActSL:** Low UI similarity and low action similarity.  By analyzing the distribution of task pairs across these quadrants, we can understand how different combinations of UI and action similarity affect the transfer of knowledge when learning from demonstrations.
> <details>
> <summary>read the caption</summary>
> Figure 3.  Joint distribution of UI similarity and action similarity in LearnGUI-Offline. The scatter plot shows the relationship between UI and action similarity measures across task pairs. The quadrant divisions represent our categorization of tasks into four profiles: UISHActSH, UISHActSL, UISLActSH, and UISLActSL, enabling analysis of how different similarity combinations affect learning transfer.
> </details>



![](https://arxiv.org/html/2504.13805/extracted/6372901/images/learnact-pipline.drawio.png)

> 🔼 LearnAct is a multi-agent framework for mobile GUI automation that leverages demonstration learning.  This figure provides a detailed architecture diagram illustrating LearnAct's three main components and their interactions: 1) DemoParser extracts knowledge from user demonstrations; 2) KnowSeeker retrieves relevant knowledge from the knowledge base generated by DemoParser; and 3) ActExecutor uses the retrieved knowledge, along with user instructions and current screen observations, to perform the task. The diagram shows the flow of data from human demonstrations through the three components and finally into the mobile environment for task execution.
> <details>
> <summary>read the caption</summary>
> Figure 4.  Illustration of the overall framework of LearnAct. Architecture diagram showing the three main components (DemoParser, KnowSeeker, ActExecutor) and their interconnections within the LearnAct system, including data flow from human demonstrations to execution.
> </details>



![](https://arxiv.org/html/2504.13805/x2.png)

> 🔼 The DemoParser Agent takes high-level user instructions and corresponding actions and screenshots as input.  It processes this information to generate low-level, semantically descriptive action descriptions. These descriptions, which are more precise and detailed than the original input, are stored in a knowledge base. This knowledge base is reusable and helps to improve the efficiency of mobile interface interaction automation.  The figure illustrates the pipeline of this process, showing how the agent transforms high-level commands into a structured knowledge base that can be used to automate tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5.  Pipeline of DemoParser Agent. Input instructions and corresponding actions and screenshots; output low-level action descriptions and create knowledge database. This process transforms high-level user instructions into precise operation sequences while building a reusable domain knowledge base to improve mobile interface interaction automation efficiency.
> </details>



![](https://arxiv.org/html/2504.13805/x3.png)

> 🔼 The KnowSeeker Agent is a crucial component of the LearnAct framework, responsible for efficiently retrieving relevant demonstration knowledge to guide task execution.  It takes as input a user instruction and searches a vector database containing embeddings of demonstrations from the knowledge base (created by the DemoParser). The KnowSeeker employs a sentence transformer model (all-MiniLM-L6-v2) to generate dense vector embeddings of both user instructions and demonstration instructions.  These embeddings are used to calculate cosine similarity scores, enabling the retrieval of the top-k most similar demonstrations to the current user task.  This approach ensures that the most relevant and helpful prior demonstration experiences are available to the ActExecutor, optimizing the process of handling unseen task scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 6.  Pipeline of KnowSeeker Agent. The KnowSeeker Agent converts demo trajectories from the knowledge base into a vector database. When executing user tasks, KnowSeeker retrieves the top-k relevant demos from the vector database for subsequent use. This approach enables efficient retrieval of similar demonstrations to assist with new task execution.
> </details>



![](https://arxiv.org/html/2504.13805/x4.png)

> 🔼 The ActExecutor Agent is a key component of the LearnAct framework, responsible for executing the low-level actions needed to complete a task.  It receives action descriptions generated by the Action Planner. To execute these actions effectively, it leverages the KnowSeeker Agent to find relevant demonstrations from a knowledge base.  By mimicking actions from these demonstrations, the ActExecutor efficiently and accurately performs the actions required, making it easier to handle complex or unfamiliar tasks.
> <details>
> <summary>read the caption</summary>
> Figure 7.  Pipeline of ActExecutor Agent. The ActExecutor Agent executes the low-level action descriptions generated by the Action Planner Agent. It uses the KnowSeeker Agent to retrieve relevant demonstrations from the knowledge base and execute the actions in the demonstrations. This approach enables efficient execution of low-level actions to assist with new task execution.
> </details>



![](https://arxiv.org/html/2504.13805/extracted/6372901/images/similarity_distributions_continuous.drawio.png)

> 🔼 Figure 8 displays the distributions of instruction, UI, and action similarity scores within the LearnGUI-Offline dataset.  Three histograms illustrate the distributions for each similarity type.  The x-axis of each histogram represents the similarity score (ranging from 0 to 1, where 1 indicates perfect similarity), and the y-axis represents the frequency or count of task pairs exhibiting that particular similarity score.  This figure allows for a visual analysis of the relationships between different types of similarity and how those relationships impact the effectiveness of demonstration-based learning in mobile GUI agents. By comparing the distributions, one can assess if high instruction similarity typically co-occurs with high UI or action similarity and the implications of those relationships for learning transfer.
> <details>
> <summary>read the caption</summary>
> Figure 8.  Distribution of instruction, UI, and action similarity scores in LearnGUI-Offline. The histograms show the distribution of similarity scores across three dimensions: instruction similarity (top), UI similarity (middle), and action similarity (bottom). These distributions enable systematic analysis of how different types of similarity between demonstration and query tasks affect learning efficacy.
> </details>



![](https://arxiv.org/html/2504.13805/x5.png)

> 🔼 Figure 9 shows the prompt template used by the DemoParser agent to generate descriptions of intermediate actions within a mobile GUI task.  The prompt provides detailed instructions to the language model, specifying the format for the output JSON, acceptable action types (clicks, swipes, typing, etc.), and rules for including 'memory' annotations in the description. These memory annotations are used to record task-relevant information that the model should remember for future steps in the task, helping it to handle complex, multi-step processes.  The prompt emphasizes precise formatting, limitations on word counts, and examples to ensure the model produces consistently structured and useful knowledge representations.
> <details>
> <summary>read the caption</summary>
> Figure 9.  Prompt template for intermediate action descriptions. The template guides DemoParser to generate standardized descriptions for intermediate actions, including detailed rules for memory annotations that capture important information observed during task execution.
> </details>



![](https://arxiv.org/html/2504.13805/x6.png)

> 🔼 This figure shows prompt templates used by the DemoParser agent to generate terminal action descriptions.  These templates enforce a consistent output structure for task completion, regardless of whether the task requires simply reporting completion or returning a specific answer.  The templates provide clear guidelines for the format and content of the terminal action description, which are crucial for maintaining data consistency within the LearnGUI dataset.
> <details>
> <summary>read the caption</summary>
> Figure 10.  Prompt templates for terminal action descriptions. The templates provide specific formats for both standard task completion and information retrieval tasks, ensuring consistent output structure across different task types.
> </details>



![](https://arxiv.org/html/2504.13805/x7.png)

> 🔼 Figure 11 shows the prompt template used by the ActExecutor agent in the LearnAct framework.  This prompt guides the large language model within ActExecutor to make decisions about the next action to take in a mobile GUI automation task. It combines various pieces of information to formulate a decision: the user's original instructions for the task, visual data from the current screen displayed on the phone (screenshot), a history of the actions already performed, and relevant information extracted from previously-seen demonstrations. The structure of the prompt is carefully designed to ensure consistency in the outputs produced by the language model, thus facilitating effective task completion.  The prompt specifies the allowed action types (e.g., click, swipe, type, etc.) and enforces a particular output format for each action taken. For instance, when the task is completed, the prompt requires reporting the outcome of the task. When the action requires a specific response or the system needs to remember information for later steps, the prompt provides instructions for including these items.
> <details>
> <summary>read the caption</summary>
> Figure 11.  Task execution prompt template. This comprehensive prompt directs ActExecutor to generate actions based on current observations, action history, and retrieved demonstrations, with explicit formatting requirements to ensure consistent action outputs.
> </details>



![](https://arxiv.org/html/2504.13805/x8.png)

> 🔼 This figure presents a detailed comparison of the performance of the Qwen2-VL-7B model with and without the LearnAct framework on the LearnGUI-Online benchmark.  It shows the task success rates, broken down by various task categories (e.g., complex UI understanding, data entry, information retrieval) to illustrate the impact of LearnAct on different types of tasks. By comparing the baseline Qwen2-VL-7B performance against the enhanced version incorporating LearnAct, the figure visually demonstrates LearnAct's effectiveness in improving task success across multiple task dimensions within the LearnGUI-Online benchmark.  The bar chart format facilitates easy comparison of success rates between the baseline and LearnAct-enhanced models for each task category.
> <details>
> <summary>read the caption</summary>
> Figure 12.  Detailed performance comparison of Qwen2-VL-7B with and without LearnAct on LearnGUI-Online. The figure shows the task success rates of Qwen2-VL-7B baseline versus Qwen2-VL-7B enhanced with LearnAct across different task dimensions in the LearnGUI-Online benchmark.
> </details>



![](https://arxiv.org/html/2504.13805/x9.png)

> 🔼 This figure displays a detailed comparison of the performance of the UI-TARS-7B-SFT model with and without the LearnAct framework on the LearnGUI-Online benchmark.  It shows the success rates for various tasks categorized by different dimensions (e.g., task complexity, type of interaction, etc.).  The bars visually represent the improvement in task success rate achieved by incorporating the LearnAct framework.
> <details>
> <summary>read the caption</summary>
> Figure 13.  Detailed performance comparison of UI-TARS-7B-SFT with and without LearnAct on LearnGUI-Online. The figure presents a comprehensive breakdown of task success rates for UI-TARS-7B-SFT baseline versus UI-TARS-7B-SFT enhanced with LearnAct across multiple task dimensions in the LearnGUI-Online benchmark.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.5">
<tr class="ltx_tr" id="S3.T2.5.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.5.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.1.1.1">
<span class="ltx_p" id="S3.T2.5.1.1.1.1" style="width:95.3pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.1.1.1">Action</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.5.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.1.2.1">
<span class="ltx_p" id="S3.T2.5.1.2.1.1" style="width:128.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.2.1.1.1">Definition</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.5.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.2.1.1">
<span class="ltx_p" id="S3.T2.5.2.1.1.1" style="width:95.3pt;">CLICK[x, y]</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.5.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.2.2.1">
<span class="ltx_p" id="S3.T2.5.2.2.1.1" style="width:128.0pt;">Click at coordinates (x, y).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.5.3.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.3.1.1">
<span class="ltx_p" id="S3.T2.5.3.1.1.1" style="width:95.3pt;">TYPE[text]</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.5.3.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.3.2.1">
<span class="ltx_p" id="S3.T2.5.3.2.1.1" style="width:128.0pt;">Type the specified text.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.4.1.1">
<span class="ltx_p" id="S3.T2.5.4.1.1.1" style="width:95.3pt;">SWIPE [direction]</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.4.2.1">
<span class="ltx_p" id="S3.T2.5.4.2.1.1" style="width:128.0pt;">Swipe in the specified direction.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.5.1.1">
<span class="ltx_p" id="S3.T2.5.5.1.1.1" style="width:95.3pt;">PRESS_HOME</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.5.2.1">
<span class="ltx_p" id="S3.T2.5.5.2.1.1" style="width:128.0pt;">Go to the home screen.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.5.6.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.6.1.1">
<span class="ltx_p" id="S3.T2.5.6.1.1.1" style="width:95.3pt;">PRESS_BACK</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.5.6.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.6.2.1">
<span class="ltx_p" id="S3.T2.5.6.2.1.1" style="width:128.0pt;">Go back to the previous app screen.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.5.7.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.7.1.1">
<span class="ltx_p" id="S3.T2.5.7.1.1.1" style="width:95.3pt;">PRESS_ENTER</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.5.7.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.7.2.1">
<span class="ltx_p" id="S3.T2.5.7.2.1.1" style="width:128.0pt;">Press the enter button.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T2.5.8.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.8.1.1">
<span class="ltx_p" id="S3.T2.5.8.1.1.1" style="width:95.3pt;">TASK_COMPLETE[answer]</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T2.5.8.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.8.2.1">
<span class="ltx_p" id="S3.T2.5.8.2.1.1" style="width:128.0pt;">Mark the task as complete. Provide answer inside brackets if required.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the actions that can be performed by an agent within the LearnGUI environment.  It defines the action space which is a set of actions available to the mobile GUI agent for interacting with the apps. For each action, a brief description of its functionality is provided. This is critical for understanding the capabilities and limitations of the agents within the benchmark.
> <details>
> <summary>read the caption</summary>
> Table 2. LearnGUI Action Space
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.6.1">
<tr class="ltx_tr" id="S3.T3.6.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T3.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.6.1.1.1.1">Split</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.6.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T3.6.1.1.2.1">K-shot</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.6.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T3.6.1.1.3.1">Tasks</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.6.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T3.6.1.1.4.1">Apps</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.6.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T3.6.1.1.5.1">Step actions</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.6.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T3.6.1.1.6.1">Avg Ins<sub class="ltx_sub" id="S3.T3.6.1.1.6.1.1">Sim</sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.6.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T3.6.1.1.7.1">Avg UI<sub class="ltx_sub" id="S3.T3.6.1.1.7.1.1">Sim</sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.6.1.1.8"><span class="ltx_text ltx_font_bold" id="S3.T3.6.1.1.8.1">Avg Act<sub class="ltx_sub" id="S3.T3.6.1.1.8.1.1">Sim</sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.6.1.1.9"><span class="ltx_text ltx_font_bold" id="S3.T3.6.1.1.9.1">UI<sub class="ltx_sub" id="S3.T3.6.1.1.9.1.1">SH</sub>Act<sub class="ltx_sub" id="S3.T3.6.1.1.9.1.2">SH</sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.6.1.1.10"><span class="ltx_text ltx_font_bold" id="S3.T3.6.1.1.10.1">UI<sub class="ltx_sub" id="S3.T3.6.1.1.10.1.1">SH</sub>Act<sub class="ltx_sub" id="S3.T3.6.1.1.10.1.2">SL</sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.6.1.1.11"><span class="ltx_text ltx_font_bold" id="S3.T3.6.1.1.11.1">UI<sub class="ltx_sub" id="S3.T3.6.1.1.11.1.1">SL</sub>Act<sub class="ltx_sub" id="S3.T3.6.1.1.11.1.2">SH</sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.6.1.1.12"><span class="ltx_text ltx_font_bold" id="S3.T3.6.1.1.12.1">UI<sub class="ltx_sub" id="S3.T3.6.1.1.12.1.1">SL</sub>Act<sub class="ltx_sub" id="S3.T3.6.1.1.12.1.2">SL</sub></span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.6.1.2.1">Offline-Train</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.2.2">1-shot</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.2.3">2,001</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.2.4">44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.2.5">26,184</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.2.6">0.845</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.2.7">0.901</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.2.8">0.858</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.2.9">364</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.2.10">400</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.2.11">403</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.2.12">834</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.6.1.3.1">Offline-Train</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.3.2">2-shot</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.3.3">2,001</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.3.4">44</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.3.5">26,184</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.3.6">0.818</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.3.7">0.898</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.3.8">0.845</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.3.9">216</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.3.10">360</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.3.11">358</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.3.12">1,067</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.6.1.4.1">Offline-Train</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.4.2">3-shot</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.4.3">2,001</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.4.4">44</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.4.5">26,184</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.4.6">0.798</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.4.7">0.895</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.4.8">0.836</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.4.9">152</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.4.10">346</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.4.11">310</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.4.12">1,193</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.1.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.6.1.5.1">Offline-Test</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.5.2">1-shot</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.5.3">251</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.5.4">9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.5.5">3,469</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.5.6">0.798</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.5.7">0.868</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.5.8">0.867</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.5.9">37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.5.10">49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.5.11">56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.1.5.12">109</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.6.1.6.1">Offline-Test</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.6.2">2-shot</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.6.3">251</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.6.4">9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.6.5">3,469</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.6.6">0.767</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.6.7">0.855</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.6.8">0.853</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.6.9">15</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.6.10">42</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.6.11">55</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.6.12">139</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.6.1.7.1">Offline-Test</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.7.2">3-shot</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.7.3">251</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.7.4">9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.7.5">3,469</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.7.6">0.745</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.7.7">0.847</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.7.8">0.847</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.7.9">10</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.7.10">36</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.7.11">49</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.1.7.12">156</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S3.T3.6.1.8.1">Online-Test</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.6.1.8.2">1-shot</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.6.1.8.3">101</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.6.1.8.4">20</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.6.1.8.5">1,423</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.6.1.8.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.6.1.8.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.6.1.8.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.6.1.8.9">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.6.1.8.10">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.6.1.8.11">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.6.1.8.12">-</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a detailed statistical overview of the LearnGUI dataset, which is divided into training and testing sets.  The table analyzes each split across several key dimensions: the number of tasks, the number of distinct applications involved in those tasks, the total number of action steps taken across all tasks, and average similarity scores across three types of similarity (instruction, UI, and action similarity).  Further, the table shows the distribution of tasks into four categories based on whether the UI and action similarities are high (SH) or low (SL). This breakdown allows for a comprehensive understanding of the dataset's characteristics and facilitates analysis of how various similarity conditions affect model performance in few-shot learning scenarios.
> <details>
> <summary>read the caption</summary>
> Table 3. Statistics of LearnGUI dataset splits. Each split is analyzed across multiple dimensions: Tasks (number of tasks), Apps (number of applications covered), Step actions (total action steps), similarity metrics (Avg Ins/UI/ActSim), and distribution across four similarity profiles categorized by high (SH) and low (SL) UI and action similarity.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.5.1">
<tr class="ltx_tr" id="S5.T4.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.1.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.1.2.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.1.3.1">Supports</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.1.4.1">Average</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">Gmail</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">Booking</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.1.1.7" style="padding-left:3.0pt;padding-right:3.0pt;">Music</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.1.1.8" style="padding-left:3.0pt;padding-right:3.0pt;">SHEIN</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.1.1.9" style="padding-left:3.0pt;padding-right:3.0pt;">NBC</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.1.1.10" style="padding-left:3.0pt;padding-right:3.0pt;">CityMapper</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.1.1.11" style="padding-left:3.0pt;padding-right:3.0pt;">ToDo</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.1.1.12" style="padding-left:3.0pt;padding-right:3.0pt;">Signal</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.1.1.13" style="padding-left:3.0pt;padding-right:3.0pt;">Yelp</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.5.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">SPHINX-GUI Agent<cite class="ltx_cite ltx_citemacro_citep">(Chai et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib6" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.5.1.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">AMEX</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.5.1.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">0-shot</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.5.1.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">67.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">45.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">64.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">74.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">71.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.2.9" style="padding-left:3.0pt;padding-right:3.0pt;">70.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.2.10" style="padding-left:3.0pt;padding-right:3.0pt;">67.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.2.11" style="padding-left:3.0pt;padding-right:3.0pt;">79.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.2.12" style="padding-left:3.0pt;padding-right:3.0pt;">64.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.2.13" style="padding-left:3.0pt;padding-right:3.0pt;">66.3</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.5.1.3.1" rowspan="4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.5.1.3.1.1">gemini-1.5-pro</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.5.1.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.5.1.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">0-shot</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.5.1.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">19.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">20.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.6" style="padding-left:3.0pt;padding-right:3.0pt;">16.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.7" style="padding-left:3.0pt;padding-right:3.0pt;">24.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.8" style="padding-left:3.0pt;padding-right:3.0pt;">10.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.9" style="padding-left:3.0pt;padding-right:3.0pt;">35.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.10" style="padding-left:3.0pt;padding-right:3.0pt;">14.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.11" style="padding-left:3.0pt;padding-right:3.0pt;">17.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.12" style="padding-left:3.0pt;padding-right:3.0pt;">27.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.13" style="padding-left:3.0pt;padding-right:3.0pt;">15.2</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.4.1" rowspan="3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.5.1.4.1.1">LearnAct</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">1-shot</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">51.7 <span class="ltx_text" id="S5.T4.5.1.4.3.1" style="color:#228B22;">[+32.4]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">55.5</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">47.1</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.4.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.4.6.1">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.4.7" style="padding-left:3.0pt;padding-right:3.0pt;">35.7</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.4.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.4.8.1">56.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.4.9" style="padding-left:3.0pt;padding-right:3.0pt;">54.7</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.4.10" style="padding-left:3.0pt;padding-right:3.0pt;">60.6</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.4.11" style="padding-left:3.0pt;padding-right:3.0pt;">63.1</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.4.12" style="padding-left:3.0pt;padding-right:3.0pt;">54.6</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">2-shot</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.5.2.1">55.6</span> <span class="ltx_text" id="S5.T4.5.1.5.2.2" style="color:#228B22;">[+36.3]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.5.3.1">57.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.5.4.1">53.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.5.5.1">55.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.5.6.1">39.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.5.7.1">56.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.5.8.1">58.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.5.9.1">68.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.5.10.1">69.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.5.11.1">60.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.6.1" style="padding-left:3.0pt;padding-right:3.0pt;">3-shot</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T4.5.1.6.2.1">57.7</span> <span class="ltx_text" id="S5.T4.5.1.6.2.2" style="color:#228B22;">[+38.4]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.6.3.1">58.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.6.4.1">56.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.5" style="padding-left:3.0pt;padding-right:3.0pt;">54.6</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.6.6.1">43.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.7" style="padding-left:3.0pt;padding-right:3.0pt;">53.9</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.6.8.1">69.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.6.9.1">69.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.6.10.1">70.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.11" style="padding-left:3.0pt;padding-right:3.0pt;">57.6</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.5.1.7.1" rowspan="4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.5.1.7.1.1">UI-TARS-7B-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.5.1.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.5.1.7.3" style="padding-left:3.0pt;padding-right:3.0pt;">0-shot</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.5.1.7.4" style="padding-left:3.0pt;padding-right:3.0pt;">77.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.7.5" style="padding-left:3.0pt;padding-right:3.0pt;">68.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.7.6" style="padding-left:3.0pt;padding-right:3.0pt;">81.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.7.7" style="padding-left:3.0pt;padding-right:3.0pt;">81.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.7.8" style="padding-left:3.0pt;padding-right:3.0pt;">72.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.7.9" style="padding-left:3.0pt;padding-right:3.0pt;">80.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.7.10" style="padding-left:3.0pt;padding-right:3.0pt;">70.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.7.11" style="padding-left:3.0pt;padding-right:3.0pt;">66.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.7.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.7.12.1">92.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.7.13" style="padding-left:3.0pt;padding-right:3.0pt;">82.4</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.8.1" rowspan="3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.5.1.8.1.1">LearnAct</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">1-shot</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.8.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T4.5.1.8.3.1">82.8</span> <span class="ltx_text" id="S5.T4.5.1.8.3.2" style="color:#228B22;">[+5.3]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.8.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.8.4.1">79.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.8.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.8.5.1">82.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.8.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.8.6.1">86.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.8.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.8.7.1">75.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.8.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.8.8.1">86.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.8.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.8.9.1">79.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.8.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.8.10.1">84.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.8.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.8.11.1">89.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.8.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.8.12.1">83.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.9.1" style="padding-left:3.0pt;padding-right:3.0pt;">2-shot</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.9.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.9.2.1">81.9</span> <span class="ltx_text" id="S5.T4.5.1.9.2.2" style="color:#228B22;">[+4.4]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.9.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.9.3.1">80.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.9.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.9.4.1">80.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.9.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.9.5.1">86.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.9.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.9.6.1">76.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.9.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.9.7.1">87.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.9.8" style="padding-left:3.0pt;padding-right:3.0pt;">80.0</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.9.9" style="padding-left:3.0pt;padding-right:3.0pt;">83.7</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.9.10" style="padding-left:3.0pt;padding-right:3.0pt;">84.4</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.9.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.9.11.1">84.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.10.1" style="padding-left:3.0pt;padding-right:3.0pt;">3-shot</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.10.2" style="padding-left:3.0pt;padding-right:3.0pt;">82.1 <span class="ltx_text" id="S5.T4.5.1.10.2.1" style="color:#228B22;">[+4.6]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.10.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.10.3.1">79.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.10.4" style="padding-left:3.0pt;padding-right:3.0pt;">80.9</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.10.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.10.5.1">86.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.10.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.10.6.1">75.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.10.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.10.7.1">86.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.10.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.10.8.1">81.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.10.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.10.9.1">85.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.10.10" style="padding-left:3.0pt;padding-right:3.0pt;">84.4</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.10.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.10.11.1">84.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.5.1.11.1" rowspan="4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.5.1.11.1.1">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.5.1.11.2" style="padding-left:3.0pt;padding-right:3.0pt;">Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.5.1.11.3" style="padding-left:3.0pt;padding-right:3.0pt;">0-shot</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.5.1.11.4" style="padding-left:3.0pt;padding-right:3.0pt;">71.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.11.5" style="padding-left:3.0pt;padding-right:3.0pt;">60.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.11.6" style="padding-left:3.0pt;padding-right:3.0pt;">73.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.11.7" style="padding-left:3.0pt;padding-right:3.0pt;">76.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.11.8" style="padding-left:3.0pt;padding-right:3.0pt;">65.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.11.9" style="padding-left:3.0pt;padding-right:3.0pt;">75.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.11.10" style="padding-left:3.0pt;padding-right:3.0pt;">62.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.11.11" style="padding-left:3.0pt;padding-right:3.0pt;">78.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.11.12" style="padding-left:3.0pt;padding-right:3.0pt;">82.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.11.13" style="padding-left:3.0pt;padding-right:3.0pt;">69.1</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.12">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.5.1.12.1" rowspan="3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.5.1.12.1.1">LearnAct</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.12.2" style="padding-left:3.0pt;padding-right:3.0pt;">1-shot</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.12.3" style="padding-left:3.0pt;padding-right:3.0pt;">77.3 <span class="ltx_text" id="S5.T4.5.1.12.3.1" style="color:#228B22;">[+5.5]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.12.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.12.4.1">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.12.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.12.5.1">77.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.12.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.12.6.1">77.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.12.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.12.7.1">69.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.12.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.12.8.1">83.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.12.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.12.9.1">72.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.12.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.12.10.1">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.12.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.12.11.1">83.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.12.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.12.12.1">78.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.13.1" style="padding-left:3.0pt;padding-right:3.0pt;">2-shot</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.1.13.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.13.2.1">78.5</span> <span class="ltx_text" id="S5.T4.5.1.13.2.2" style="color:#228B22;">[+6.7]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.13.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.13.3.1">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.13.4" style="padding-left:3.0pt;padding-right:3.0pt;">78.0</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.13.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.13.5.1">77.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.13.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.13.6.1">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.13.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.13.7.1">86.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.13.8" style="padding-left:3.0pt;padding-right:3.0pt;">73.5</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.13.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.1.13.9.1">81.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.13.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.13.10.1">87.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.13.11" style="padding-left:3.0pt;padding-right:3.0pt;">77.6</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.14">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.5.1.14.1" style="padding-left:3.0pt;padding-right:3.0pt;">3-shot</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.5.1.14.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T4.5.1.14.2.1">79.4</span> <span class="ltx_text" id="S5.T4.5.1.14.2.2" style="color:#228B22;">[+7.6]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.14.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.14.3.1">75.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.14.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.14.4.1">78.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.14.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.14.5.1">78.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.14.6" style="padding-left:3.0pt;padding-right:3.0pt;">72.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.14.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.14.7.1">87.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.14.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.14.8.1">77.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.14.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.14.9.1">82.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.14.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.14.10.1">87.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.14.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.14.11.1">80.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of various mobile GUI agents on the LearnGUI-Offline dataset.  The performance metric used is action match accuracy, expressed as a percentage.  The table shows absolute accuracy values and, importantly, relative improvements in performance compared to baseline results (no support examples). These improvements are shown in brackets. The comparison is broken down by the mobile GUI agent used (Gemini-1.5-Pro, UI-TARS-7B-SFT, and Qwen2-VL-7B), and the number of support examples provided (1-shot, 2-shot, 3-shot).  The table also displays accuracy results across several different applications, providing a more detailed view of each model's performance.
> <details>
> <summary>read the caption</summary>
> Table 4. Performance comparison of mobile GUI agents on LearnGUI-Offline dataset (action match accuracy %). Results show absolute values and relative improvements [in brackets] compared to baselines. Performance is evaluated across different models and number of support examples (1/2/3-shot).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.5.1">
<tr class="ltx_tr" id="S5.T5.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.5.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.1.1.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.5.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.1.1.2.1">Supports</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T5.5.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.1.1.3.1">UI<sub class="ltx_sub" id="S5.T5.5.1.1.3.1.1">SH</sub>Act<sub class="ltx_sub" id="S5.T5.5.1.1.3.1.2">SH</sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T5.5.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.1.1.4.1">UI<sub class="ltx_sub" id="S5.T5.5.1.1.4.1.1">SH</sub>Act<sub class="ltx_sub" id="S5.T5.5.1.1.4.1.2">SL</sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T5.5.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.1.1.5.1">UI<sub class="ltx_sub" id="S5.T5.5.1.1.5.1.1">SL</sub>Act<sub class="ltx_sub" id="S5.T5.5.1.1.5.1.2">SH</sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T5.5.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.1.1.6.1">UI<sub class="ltx_sub" id="S5.T5.5.1.1.6.1.1">SL</sub>Act<sub class="ltx_sub" id="S5.T5.5.1.1.6.1.2">SL</sub></span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.1.2">
<td class="ltx_td ltx_border_r" id="S5.T5.5.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_r" id="S5.T5.5.1.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">type</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">match</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">type</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">match</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">type</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">match</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.2.9" style="padding-left:3.0pt;padding-right:3.0pt;">type</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.2.10" style="padding-left:3.0pt;padding-right:3.0pt;">match</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T5.5.1.3.1" rowspan="3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.1.3.1.1">gemini-1.5-pro</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.5.1.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">1-shot</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">79.5 <span class="ltx_text" id="S5.T5.5.1.3.3.1" style="color:#228B22;">[+12.8]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">50.2 <span class="ltx_text" id="S5.T5.5.1.3.4.1" style="color:#228B22;">[+35.6]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">78.1 <span class="ltx_text" id="S5.T5.5.1.3.5.1" style="color:#228B22;">[+12.3]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.3.6" style="padding-left:3.0pt;padding-right:3.0pt;">47.8 <span class="ltx_text" id="S5.T5.5.1.3.6.1" style="color:#228B22;">[+33.2]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.3.7" style="padding-left:3.0pt;padding-right:3.0pt;">77.5 <span class="ltx_text" id="S5.T5.5.1.3.7.1" style="color:#228B22;">[+9.2]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.3.8" style="padding-left:3.0pt;padding-right:3.0pt;">52.3 <span class="ltx_text" id="S5.T5.5.1.3.8.1" style="color:#228B22;">[+30.5]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.3.9" style="padding-left:3.0pt;padding-right:3.0pt;">77.9 <span class="ltx_text" id="S5.T5.5.1.3.9.1" style="color:#228B22;">[+14.1]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.3.10" style="padding-left:3.0pt;padding-right:3.0pt;">44.2 <span class="ltx_text" id="S5.T5.5.1.3.10.1" style="color:#228B22;">[+29.3]</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.5.1.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">2-shot</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">77.7 <span class="ltx_text" id="S5.T5.5.1.4.2.1" style="color:#228B22;">[+13.0]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">53.9 <span class="ltx_text" id="S5.T5.5.1.4.3.1" style="color:#228B22;">[+37.3]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">73.2 <span class="ltx_text" id="S5.T5.5.1.4.4.1" style="color:#228B22;">[+10.8]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">49.9 <span class="ltx_text" id="S5.T5.5.1.4.5.1" style="color:#228B22;">[+34.7]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.4.6" style="padding-left:3.0pt;padding-right:3.0pt;">80.0 <span class="ltx_text" id="S5.T5.5.1.4.6.1" style="color:#228B22;">[+9.0]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.4.7" style="padding-left:3.0pt;padding-right:3.0pt;">56.5 <span class="ltx_text" id="S5.T5.5.1.4.7.1" style="color:#228B22;">[+34.8]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.4.8" style="padding-left:3.0pt;padding-right:3.0pt;">77.2 <span class="ltx_text" id="S5.T5.5.1.4.8.1" style="color:#228B22;">[+12.9]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.4.9" style="padding-left:3.0pt;padding-right:3.0pt;">48.9 <span class="ltx_text" id="S5.T5.5.1.4.9.1" style="color:#228B22;">[+34.4]</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.5.1.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">3-shot</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">72.3 <span class="ltx_text" id="S5.T5.5.1.5.2.1" style="color:#228B22;">[+15.8]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.5.3" style="padding-left:3.0pt;padding-right:3.0pt;">53.5 <span class="ltx_text" id="S5.T5.5.1.5.3.1" style="color:#228B22;">[+39.6]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.5.4" style="padding-left:3.0pt;padding-right:3.0pt;">72.8 <span class="ltx_text" id="S5.T5.5.1.5.4.1" style="color:#228B22;">[+12.9]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">49.5 <span class="ltx_text" id="S5.T5.5.1.5.5.1" style="color:#228B22;">[+34.6]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.5.6" style="padding-left:3.0pt;padding-right:3.0pt;">78.7 <span class="ltx_text" id="S5.T5.5.1.5.6.1" style="color:#228B22;">[+10.4]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.5.7" style="padding-left:3.0pt;padding-right:3.0pt;">60.0 <span class="ltx_text" id="S5.T5.5.1.5.7.1" style="color:#228B22;">[+38.4]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.5.8" style="padding-left:3.0pt;padding-right:3.0pt;">79.2 <span class="ltx_text" id="S5.T5.5.1.5.8.1" style="color:#228B22;">[+12.8]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.5.9" style="padding-left:3.0pt;padding-right:3.0pt;">51.6 <span class="ltx_text" id="S5.T5.5.1.5.9.1" style="color:#228B22;">[+36.3]</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.1.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T5.5.1.6.1" rowspan="3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.1.6.1.1">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.5.1.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">1-shot</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.6.3" style="padding-left:3.0pt;padding-right:3.0pt;">86.0 <span class="ltx_text" id="S5.T5.5.1.6.3.1" style="color:#228B22;">[+5.3]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.6.4" style="padding-left:3.0pt;padding-right:3.0pt;">72.2 <span class="ltx_text" id="S5.T5.5.1.6.4.1" style="color:#228B22;">[+6.3]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.6.5" style="padding-left:3.0pt;padding-right:3.0pt;">85.4 <span class="ltx_text" id="S5.T5.5.1.6.5.1" style="color:#228B22;">[+4.9]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.6.6" style="padding-left:3.0pt;padding-right:3.0pt;">69.6 <span class="ltx_text" id="S5.T5.5.1.6.6.1" style="color:#228B22;">[+5.5]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.6.7" style="padding-left:3.0pt;padding-right:3.0pt;">86.0 <span class="ltx_text" id="S5.T5.5.1.6.7.1" style="color:#228B22;">[+2.0]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.6.8" style="padding-left:3.0pt;padding-right:3.0pt;">76.2 <span class="ltx_text" id="S5.T5.5.1.6.8.1" style="color:#228B22;">[+5.4]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.6.9" style="padding-left:3.0pt;padding-right:3.0pt;">82.9 <span class="ltx_text" id="S5.T5.5.1.6.9.1" style="color:#228B22;">[+1.3]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.6.10" style="padding-left:3.0pt;padding-right:3.0pt;">69.4 <span class="ltx_text" id="S5.T5.5.1.6.10.1" style="color:#228B22;">[+4.3]</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.5.1.7.1" style="padding-left:3.0pt;padding-right:3.0pt;">2-shot</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">85.0 <span class="ltx_text" id="S5.T5.5.1.7.2.1" style="color:#228B22;">[+67.4]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.7.3" style="padding-left:3.0pt;padding-right:3.0pt;">75.6 <span class="ltx_text" id="S5.T5.5.1.7.3.1" style="color:#228B22;">[+9.3]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.7.4" style="padding-left:3.0pt;padding-right:3.0pt;">84.0 <span class="ltx_text" id="S5.T5.5.1.7.4.1" style="color:#228B22;">[+67.2]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.7.5" style="padding-left:3.0pt;padding-right:3.0pt;">71.2 <span class="ltx_text" id="S5.T5.5.1.7.5.1" style="color:#228B22;">[+5.7]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.7.6" style="padding-left:3.0pt;padding-right:3.0pt;">86.9 <span class="ltx_text" id="S5.T5.5.1.7.6.1" style="color:#228B22;">[+73.3]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.7.7" style="padding-left:3.0pt;padding-right:3.0pt;">76.8 <span class="ltx_text" id="S5.T5.5.1.7.7.1" style="color:#228B22;">[+6.3]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.7.8" style="padding-left:3.0pt;padding-right:3.0pt;">84.0 <span class="ltx_text" id="S5.T5.5.1.7.8.1" style="color:#228B22;">[+68.5]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.7.9" style="padding-left:3.0pt;padding-right:3.0pt;">70.5 <span class="ltx_text" id="S5.T5.5.1.7.9.1" style="color:#228B22;">[+5.5]</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.5.1.8.1" style="padding-left:3.0pt;padding-right:3.0pt;">3-shot</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">80.2 <span class="ltx_text" id="S5.T5.5.1.8.2.1" style="color:#228B22;">[+5.0]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.8.3" style="padding-left:3.0pt;padding-right:3.0pt;">70.3 <span class="ltx_text" id="S5.T5.5.1.8.3.1" style="color:#228B22;">[+7.9]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.8.4" style="padding-left:3.0pt;padding-right:3.0pt;">82.9 <span class="ltx_text" id="S5.T5.5.1.8.4.1" style="color:#228B22;">[+4.7]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.8.5" style="padding-left:3.0pt;padding-right:3.0pt;">70.2 <span class="ltx_text" id="S5.T5.5.1.8.5.1" style="color:#228B22;">[+5.7]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.8.6" style="padding-left:3.0pt;padding-right:3.0pt;">85.6 <span class="ltx_text" id="S5.T5.5.1.8.6.1" style="color:#228B22;">[+1.9]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.8.7" style="padding-left:3.0pt;padding-right:3.0pt;">77.5 <span class="ltx_text" id="S5.T5.5.1.8.7.1" style="color:#228B22;">[+8.4]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.8.8" style="padding-left:3.0pt;padding-right:3.0pt;">85.6 <span class="ltx_text" id="S5.T5.5.1.8.8.1" style="color:#228B22;">[+3.4]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.8.9" style="padding-left:3.0pt;padding-right:3.0pt;">72.8 <span class="ltx_text" id="S5.T5.5.1.8.9.1" style="color:#228B22;">[+6.6]</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S5.T5.5.1.9.1" rowspan="3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.1.9.1.1">UI-TARS-7B-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.5.1.9.2" style="padding-left:3.0pt;padding-right:3.0pt;">1-shot</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.9.3" style="padding-left:3.0pt;padding-right:3.0pt;">88.1 <span class="ltx_text" id="S5.T5.5.1.9.3.1" style="color:#228B22;">[+1.9]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.9.4" style="padding-left:3.0pt;padding-right:3.0pt;">77.8 <span class="ltx_text" id="S5.T5.5.1.9.4.1" style="color:#228B22;">[+6.6]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.9.5" style="padding-left:3.0pt;padding-right:3.0pt;">87.2 <span class="ltx_text" id="S5.T5.5.1.9.5.1" style="color:#228B22;">[+2.1]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.9.6" style="padding-left:3.0pt;padding-right:3.0pt;">75.3 <span class="ltx_text" id="S5.T5.5.1.9.6.1" style="color:#228B22;">[+6.4]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.9.7" style="padding-left:3.0pt;padding-right:3.0pt;">87.7 <span class="ltx_text" id="S5.T5.5.1.9.7.1" style="color:#228B22;">[+0.3]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.9.8" style="padding-left:3.0pt;padding-right:3.0pt;">80.1 <span class="ltx_text" id="S5.T5.5.1.9.8.1" style="color:#228B22;">[+5.9]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.9.9" style="padding-left:3.0pt;padding-right:3.0pt;">85.0 <span class="ltx_text" id="S5.T5.5.1.9.9.1" style="color:#DC143C;">[-0.2]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.9.10" style="padding-left:3.0pt;padding-right:3.0pt;">75.0 <span class="ltx_text" id="S5.T5.5.1.9.10.1" style="color:#228B22;">[+2.8]</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.5.1.10.1" style="padding-left:3.0pt;padding-right:3.0pt;">2-shot</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.10.2" style="padding-left:3.0pt;padding-right:3.0pt;">85.5 <span class="ltx_text" id="S5.T5.5.1.10.2.1" style="color:#228B22;">[+2.1]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.10.3" style="padding-left:3.0pt;padding-right:3.0pt;">76.7 <span class="ltx_text" id="S5.T5.5.1.10.3.1" style="color:#228B22;">[+8.3]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.10.4" style="padding-left:3.0pt;padding-right:3.0pt;">85.7 <span class="ltx_text" id="S5.T5.5.1.10.4.1" style="color:#228B22;">[+1.6]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.10.5" style="padding-left:3.0pt;padding-right:3.0pt;">75.9 <span class="ltx_text" id="S5.T5.5.1.10.5.1" style="color:#228B22;">[+4.9]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.10.6" style="padding-left:3.0pt;padding-right:3.0pt;">87.3 <span class="ltx_text" id="S5.T5.5.1.10.6.1" style="color:#DC143C;">[-0.4]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.10.7" style="padding-left:3.0pt;padding-right:3.0pt;">79.1 <span class="ltx_text" id="S5.T5.5.1.10.7.1" style="color:#228B22;">[+5.9]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.10.8" style="padding-left:3.0pt;padding-right:3.0pt;">84.9 <span class="ltx_text" id="S5.T5.5.1.10.8.1" style="color:#DC143C;">[-0.8]</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.1.10.9" style="padding-left:3.0pt;padding-right:3.0pt;">74.1 <span class="ltx_text" id="S5.T5.5.1.10.9.1" style="color:#228B22;">[+2.1]</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.1.11">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.5.1.11.1" style="padding-left:3.0pt;padding-right:3.0pt;">3-shot</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.1.11.2" style="padding-left:3.0pt;padding-right:3.0pt;">87.1 <span class="ltx_text" id="S5.T5.5.1.11.2.1" style="color:#228B22;">[+7.9]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.1.11.3" style="padding-left:3.0pt;padding-right:3.0pt;">78.2 <span class="ltx_text" id="S5.T5.5.1.11.3.1" style="color:#228B22;">[+13.9]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.1.11.4" style="padding-left:3.0pt;padding-right:3.0pt;">85.5 <span class="ltx_text" id="S5.T5.5.1.11.4.1" style="color:#228B22;">[+2.6]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.1.11.5" style="padding-left:3.0pt;padding-right:3.0pt;">75.4 <span class="ltx_text" id="S5.T5.5.1.11.5.1" style="color:#228B22;">[+4.9]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.1.11.6" style="padding-left:3.0pt;padding-right:3.0pt;">86.0 <span class="ltx_text" id="S5.T5.5.1.11.6.1" style="color:#DC143C;">[-0.9]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.1.11.7" style="padding-left:3.0pt;padding-right:3.0pt;">78.9 <span class="ltx_text" id="S5.T5.5.1.11.7.1" style="color:#228B22;">[+6.8]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.1.11.8" style="padding-left:3.0pt;padding-right:3.0pt;">85.5 <span class="ltx_text" id="S5.T5.5.1.11.8.1" style="color:#DC143C;">[-0.9]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.1.11.9" style="padding-left:3.0pt;padding-right:3.0pt;">75.2 <span class="ltx_text" id="S5.T5.5.1.11.9.1" style="color:#228B22;">[+2.7]</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed performance breakdown of the LearnAct model on the LearnGUI-Offline dataset.  It analyzes the model's performance across four different categories of task similarity (combinations of high/low UI and action similarity). The table shows both absolute action match accuracy and type accuracy scores, along with relative improvements (in brackets) compared to baseline performance (no demonstrations). Results are shown separately for three different models (Gemini-1.5-Pro, Qwen2-VL-7B, and UI-TARS-7B-SFT) and three different numbers of support demonstrations (1-shot, 2-shot, and 3-shot).  This allows for a comprehensive understanding of how different levels of similarity between support and query tasks impact the model's ability to generalize from a few demonstrations.
> <details>
> <summary>read the caption</summary>
> Table 5.  Performance breakdown of LearnAct-Offline on different UI and action combinations. Performance metrics (type and match accuracy) across four similarity quadrants showing absolute values and relative improvements [in brackets] compared to baselines. Results are grouped by model and number of support examples (1/2/3-shot).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T6.4.4.4">
<tr class="ltx_tr" id="S5.T6.4.4.4.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T6.4.4.4.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.4.4.4.5.1.1">Input</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T6.4.4.4.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.4.4.4.5.2.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.4.4.4.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.4.4.4.5.3.1"># Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.4.4.4.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.4.4.4.5.4.1">LearnGUI-Online<sub class="ltx_sub" id="S5.T6.4.4.4.5.4.1.1">SR</sub></span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.4.4.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T6.4.4.4.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">Image + AXTree</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T6.4.4.4.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">GPT-4o<cite class="ltx_cite ltx_citemacro_citep">(Hurst et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib13" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.4.4.4.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.4.4.4.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">34.5</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.4.4.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.4.4.4.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">Image + AXTree</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.4.4.4.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">Gemini-Pro-1.5<cite class="ltx_cite ltx_citemacro_citep">(Team et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib27" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.4.4.4.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.4.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">22.8</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.4.4.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T6.4.4.4.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">Image</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T6.4.4.4.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">Claude Computer-Use<cite class="ltx_cite ltx_citemacro_citep">(Anthropic, <a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib3" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.4.4.4.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.4.4.4.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">27.9</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.4.4.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.4.4.4.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">Image</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.4.4.4.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">Aguvis<cite class="ltx_cite ltx_citemacro_citep">(Xu et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.13805v1#bib.bib42" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.4.4.4.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">72B</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.4.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">26.1</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T6.1.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">Image</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T6.1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Qwen2-VL-7B <math alttext="+" class="ltx_Math" display="inline" id="S5.T6.1.1.1.1.1.m1.1"><semantics id="S5.T6.1.1.1.1.1.m1.1a"><mo id="S5.T6.1.1.1.1.1.m1.1.1" xref="S5.T6.1.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S5.T6.1.1.1.1.1.m1.1b"><plus id="S5.T6.1.1.1.1.1.m1.1.1.cmml" xref="S5.T6.1.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.1.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S5.T6.1.1.1.1.1.m1.1d">+</annotation></semantics></math> 0-shot</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.1.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">9.9</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.2.2.2" style="background-color:#DAEFF9;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.2.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.2.2.2.2.2.1" style="background-color:#DAEFF9;">Image</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.2.2.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.2.2.2.2.1.1" style="background-color:#DAEFF9;">Qwen2-VL-7B <math alttext="+" class="ltx_Math" display="inline" id="S5.T6.2.2.2.2.1.1.m1.1"><semantics id="S5.T6.2.2.2.2.1.1.m1.1a"><mo id="S5.T6.2.2.2.2.1.1.m1.1.1" mathbackground="#DAEFF9" xref="S5.T6.2.2.2.2.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S5.T6.2.2.2.2.1.1.m1.1b"><plus id="S5.T6.2.2.2.2.1.1.m1.1.1.cmml" xref="S5.T6.2.2.2.2.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.2.2.2.2.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S5.T6.2.2.2.2.1.1.m1.1d">+</annotation></semantics></math> LearnAct</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.2.2.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.2.2.2.2.3.1" style="background-color:#DAEFF9;">7B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.2.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.2.2.2.2.4.1" style="background-color:#DAEFF9;">21.1 <span class="ltx_text" id="S5.T6.2.2.2.2.4.1.1" style="color:#228B22;">[+11.2]</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.3.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T6.3.3.3.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">Image</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T6.3.3.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">UI-TARS-7B-SFT <math alttext="+" class="ltx_Math" display="inline" id="S5.T6.3.3.3.3.1.m1.1"><semantics id="S5.T6.3.3.3.3.1.m1.1a"><mo id="S5.T6.3.3.3.3.1.m1.1.1" xref="S5.T6.3.3.3.3.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S5.T6.3.3.3.3.1.m1.1b"><plus id="S5.T6.3.3.3.3.1.m1.1.1.cmml" xref="S5.T6.3.3.3.3.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.3.3.3.3.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S5.T6.3.3.3.3.1.m1.1d">+</annotation></semantics></math> 0-shot</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.3.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.3.3.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">18.1</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.4.4.4" style="background-color:#DAEFF9;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T6.4.4.4.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.4.4.2.1" style="background-color:#DAEFF9;">Image</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T6.4.4.4.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.4.4.1.1" style="background-color:#DAEFF9;">UI-TARS-7B-SFT <math alttext="+" class="ltx_Math" display="inline" id="S5.T6.4.4.4.4.1.1.m1.1"><semantics id="S5.T6.4.4.4.4.1.1.m1.1a"><mo id="S5.T6.4.4.4.4.1.1.m1.1.1" mathbackground="#DAEFF9" xref="S5.T6.4.4.4.4.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S5.T6.4.4.4.4.1.1.m1.1b"><plus id="S5.T6.4.4.4.4.1.1.m1.1.1.cmml" xref="S5.T6.4.4.4.4.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.4.4.4.4.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S5.T6.4.4.4.4.1.1.m1.1d">+</annotation></semantics></math> LearnAct</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T6.4.4.4.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.4.4.3.1" style="background-color:#DAEFF9;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.4.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.4.4.4.4.4.1" style="background-color:#DAEFF9;">32.8<span class="ltx_text ltx_font_medium" id="S5.T6.4.4.4.4.4.1.1"> <span class="ltx_text" id="S5.T6.4.4.4.4.4.1.1.1" style="color:#228B22;">[+14.7]</span></span></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of various models' performance on the LearnGUI-Online benchmark, a real-world mobile GUI agent evaluation platform. It specifically focuses on the task success rate (LearnGUI-OnlineSR), comparing models using different inputs (visual information from screenshots only, or combined with application UI tree data) and model parameters.  The results highlight the impact of LearnAct, a demonstration-based learning framework, on model performance and demonstrate how it improves the success rate of models across diverse scenarios.
> <details>
> <summary>read the caption</summary>
> Table 6.  Performance comparison of different models on the LearnGUI-Online benchmark. Comparison of models with different inputs (Image, Image+AXTree) and parameters, measuring task success rate (LearnGUI-OnlineSR) with improvements shown in brackets for models with LearnAct enhancement.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T7.5.1">
<tr class="ltx_tr" id="S5.T7.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.T7.5.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.1.1.1">Ablation Setting</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T7.5.1.1.2" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.1.2.1">Average</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.5.1.1.3" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.1.3.1">Gmail</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.5.1.1.4" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.1.4.1">Booking</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.5.1.1.5" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.1.5.1">Music</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.5.1.1.6" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.1.6.1">SHEIN</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.5.1.1.7" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.1.7.1">NBC</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.5.1.1.8" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.1.8.1">CityMapper</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.5.1.1.9" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.1.9.1">ToDo</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.5.1.1.10" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.1.10.1">Signal</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.5.1.1.11" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.1.11.1">Yelp</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.5.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T7.5.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">DemoParser</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T7.5.1.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">KnowSeeker</td>
</tr>
<tr class="ltx_tr" id="S5.T7.5.1.3" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S5.T7.5.1.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.3.1.1" style="background-color:#EFEFEF;">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T7.5.1.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.3.2.1" style="background-color:#EFEFEF;">19.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.3.3.1" style="background-color:#EFEFEF;">20.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.3.4.1" style="background-color:#EFEFEF;">16.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.3.5.1" style="background-color:#EFEFEF;">24.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.3.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.3.6.1" style="background-color:#EFEFEF;">10.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.3.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.3.7.1" style="background-color:#EFEFEF;">35.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.3.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.3.8.1" style="background-color:#EFEFEF;">14.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.3.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.3.9.1" style="background-color:#EFEFEF;">17.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.3.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.3.10.1" style="background-color:#EFEFEF;">27.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.3.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.3.11.1" style="background-color:#EFEFEF;">15.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.5.1.4">
<td class="ltx_td ltx_border_r" id="S5.T7.5.1.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.5.1.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.4.2.1" style="color:#228B22;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.5.1.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">40.6</td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T7.5.1.4.4.1">47.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">31.3</td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.4.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T7.5.1.4.6.1">55.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.4.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T7.5.1.4.7.1">29.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.4.8" style="padding-left:3.0pt;padding-right:3.0pt;">47.0</td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.4.9" style="padding-left:3.0pt;padding-right:3.0pt;">43.0</td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.4.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T7.5.1.4.10.1">58.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.4.11" style="padding-left:3.0pt;padding-right:3.0pt;">48.8</td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.4.12" style="padding-left:3.0pt;padding-right:3.0pt;">50.7</td>
</tr>
<tr class="ltx_tr" id="S5.T7.5.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.5.1.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.5.1.1" style="color:#228B22;">✓</span></td>
<td class="ltx_td ltx_border_r" id="S5.T7.5.1.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.5.1.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T7.5.1.5.3.1">41.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.5.4" style="padding-left:3.0pt;padding-right:3.0pt;">46.9</td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.5.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T7.5.1.5.5.1">34.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.5.6" style="padding-left:3.0pt;padding-right:3.0pt;">52.7</td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.5.7" style="padding-left:3.0pt;padding-right:3.0pt;">27.9</td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.5.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T7.5.1.5.8.1">51.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.5.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T7.5.1.5.9.1">45.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.5.10" style="padding-left:3.0pt;padding-right:3.0pt;">51.4</td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.5.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T7.5.1.5.11.1">61.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.1.5.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T7.5.1.5.12.1">51.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.5.1.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T7.5.1.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.6.1.1" style="color:#228B22;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T7.5.1.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.6.2.1" style="color:#228B22;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T7.5.1.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.6.3.1">51.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.5.1.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.6.4.1">55.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.5.1.6.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.6.5.1">47.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.5.1.6.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.6.6.1">60.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.5.1.6.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.6.7.1">35.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.5.1.6.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.6.8.1">56.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.5.1.6.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.6.9.1">54.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.5.1.6.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.6.10.1">60.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.5.1.6.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.6.11.1">63.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.5.1.6.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.6.12.1">54.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to evaluate the individual contributions of the DemoParser and KnowSeeker components within the LearnAct framework. Four different configurations were compared: a baseline with no components, a configuration using only DemoParser, one using only KnowSeeker, and a configuration using both components.  The results are presented as an overall average accuracy across all nine applications evaluated and a per-application breakdown of the accuracy for each of these nine apps.  This allows for a detailed assessment of how each component affects the performance of the LearnAct system.
> <details>
> <summary>read the caption</summary>
> Table 7.  Ablation study of LearnAct components. Performance comparison across four configurations: baseline (no components), DemoParser only, KnowSeeker only, and both components combined. Results are presented as overall average accuracy and per-application breakdown across nine applications.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.13805/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13805/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}