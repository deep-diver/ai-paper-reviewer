---
title: "Visual-RFT: Visual Reinforcement Fine-Tuning"
summary: "Visual-RFT: Enhance LVLMs' visual reasoning via reinforcement learning with verifiable rewards, achieving strong performance with limited data."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Shanghai Jiaotong University",]
showSummary: true
date: 2025-03-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.01785 {{< /keyword >}}
{{< keyword icon="writer" >}} Ziyu Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.01785" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.01785" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.01785/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Reasoning Models(LRMs) need Reinforcement Fine-Tuning(RFT) to learn. RFT is useful when fine-tuning data is scarse. But the application in multi-modal domains remains under-explored. Thus, this paper introduces Visual Reinforcement Fine-Tuning. It extends the application areas of RFT on visual tasks. It uses Large Vision-Language Models(LVLMs) to generate multiple responses and uses visual perception verifiable reward functions to update the model. 



Visual-RFT offers data-efficient, reward-driven approach that enhances reasoning and adaptability for domain-specific tasks. It achieves better performance than Supervised Fine-Tuning on tasks such as Open Vocabulary/Few-shot Detection, Reasoning Grounding, and Fine-grained Classification. Visual-RFT improves accuracy by 24.3% in one-shot fine-grained image classification with around 100 samples. In few-shot object detection, Visual-RFT also exceeds the baseline.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Visual-RFT enhances LVLMs in visual tasks through reinforcement learning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Verifiable reward functions improve data efficiency in visual perception tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Visual-RFT demonstrates strong generalization in few-shot and open-vocabulary settings. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces Visual-RFT, a novel approach to fine-tuning LVLMs that significantly improves performance with limited data. **It offers a data-efficient, reward-driven method for enhancing reasoning and adaptability**, opening new avenues for research in visual perception and multi-modal learning.

------
#### Visual Insights



![](https://arxiv.org/html/2503.01785/x1.png)

> 🔼 Figure 1 showcases the superior performance of Visual Reinforcement Fine-Tuning (Visual-RFT) compared to Supervised Fine-Tuning (SFT) across various visual tasks.  The figure presents several bar charts and graphs that illustrate the improvement in accuracy achieved by Visual-RFT over SFT in open vocabulary (OV) and few-shot object detection, reasoning grounding, and fine-grained image classification. Each chart displays metrics like mean average precision (mAP) or Intersection over Union (IoU), highlighting the significant gains obtained through the Visual-RFT method. The visualization effectively demonstrates that Visual-RFT is a data-efficient technique that surpasses SFT by a significant margin, particularly beneficial when fine-tuning data is scarce.
> <details>
> <summary>read the caption</summary>
> Figure 1: Our Visual Reinforcement Fine-Tuning (Visual-RFT) performs better than previous Supervised Fine-Tuning (SFT) on a variety of tasks, such as Open Vocabulary(OV)/Few-shot Detection, Reasoning Grounding, and Fine-grained Classification.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.36.36.36">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.20.20.20.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T1.20.20.20.20.20" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.20.20.20.20.20.20">
<span class="ltx_p" id="S3.T1.20.20.20.20.20.20.20" style="width:256.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.20.20.20.20.20.20.20.1">Detection Prompt:</span> Detect all objects belonging to the category ’<math alttext="\{" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.1.1.1.1.m1.1.1.cmml">{</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.1.1.m1.1.1">{</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.1.1.m1.1c">\{</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.1.1.m1.1d">{</annotation></semantics></math>category<math alttext="\}" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.2.2.2.m2.1"><semantics id="S3.T1.2.2.2.2.2.2.2.m2.1a"><mo id="S3.T1.2.2.2.2.2.2.2.m2.1.1" stretchy="false" xref="S3.T1.2.2.2.2.2.2.2.m2.1.1.cmml">}</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.2.2.2.m2.1b"><ci id="S3.T1.2.2.2.2.2.2.2.m2.1.1.cmml" xref="S3.T1.2.2.2.2.2.2.2.m2.1.1">}</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.2.2.2.m2.1c">\}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.2.2.2.m2.1d">}</annotation></semantics></math>’ in the image, and provide the bounding boxes (between 0 and 1000, integer) and confidence (between 0 and 1, with two decimal places). If no object belonging to the category ’<math alttext="\{" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.3.3.3.m3.1"><semantics id="S3.T1.3.3.3.3.3.3.3.m3.1a"><mo id="S3.T1.3.3.3.3.3.3.3.m3.1.1" stretchy="false" xref="S3.T1.3.3.3.3.3.3.3.m3.1.1.cmml">{</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.3.3.3.m3.1b"><ci id="S3.T1.3.3.3.3.3.3.3.m3.1.1.cmml" xref="S3.T1.3.3.3.3.3.3.3.m3.1.1">{</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.3.3.3.m3.1c">\{</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.3.3.3.m3.1d">{</annotation></semantics></math>category<math alttext="\}" class="ltx_Math" display="inline" id="S3.T1.4.4.4.4.4.4.4.m4.1"><semantics id="S3.T1.4.4.4.4.4.4.4.m4.1a"><mo id="S3.T1.4.4.4.4.4.4.4.m4.1.1" stretchy="false" xref="S3.T1.4.4.4.4.4.4.4.m4.1.1.cmml">}</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.4.4.4.4.m4.1b"><ci id="S3.T1.4.4.4.4.4.4.4.m4.1.1.cmml" xref="S3.T1.4.4.4.4.4.4.4.m4.1.1">}</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.4.4.4.4.m4.1c">\}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.4.4.4.4.m4.1d">}</annotation></semantics></math>’ in the image, return ’No Objects’. Output the thinking process in <math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.5.5.5.5.5.5.5.m5.1"><semantics id="S3.T1.5.5.5.5.5.5.5.m5.1a"><mo id="S3.T1.5.5.5.5.5.5.5.m5.1.1" xref="S3.T1.5.5.5.5.5.5.5.m5.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.5.5.5.5.m5.1b"><lt id="S3.T1.5.5.5.5.5.5.5.m5.1.1.cmml" xref="S3.T1.5.5.5.5.5.5.5.m5.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.5.5.5.5.m5.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.5.5.5.5.m5.1d">&lt;</annotation></semantics></math>think<math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.6.6.6.6.6.6.6.m6.1"><semantics id="S3.T1.6.6.6.6.6.6.6.m6.1a"><mo id="S3.T1.6.6.6.6.6.6.6.m6.1.1" xref="S3.T1.6.6.6.6.6.6.6.m6.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.6.6.6.6.m6.1b"><gt id="S3.T1.6.6.6.6.6.6.6.m6.1.1.cmml" xref="S3.T1.6.6.6.6.6.6.6.m6.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.6.6.6.6.m6.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.6.6.6.6.m6.1d">&gt;</annotation></semantics></math> <math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.7.7.7.7.7.7.7.m7.1"><semantics id="S3.T1.7.7.7.7.7.7.7.m7.1a"><mo id="S3.T1.7.7.7.7.7.7.7.m7.1.1" xref="S3.T1.7.7.7.7.7.7.7.m7.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.7.7.7.7.m7.1b"><lt id="S3.T1.7.7.7.7.7.7.7.m7.1.1.cmml" xref="S3.T1.7.7.7.7.7.7.7.m7.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.7.7.7.7.m7.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.7.7.7.7.m7.1d">&lt;</annotation></semantics></math>/think<math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.8.8.8.8.8.8.8.m8.1"><semantics id="S3.T1.8.8.8.8.8.8.8.m8.1a"><mo id="S3.T1.8.8.8.8.8.8.8.m8.1.1" xref="S3.T1.8.8.8.8.8.8.8.m8.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.8.8.8.8.m8.1b"><gt id="S3.T1.8.8.8.8.8.8.8.m8.1.1.cmml" xref="S3.T1.8.8.8.8.8.8.8.m8.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.8.8.8.8.m8.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.8.8.8.8.m8.1d">&gt;</annotation></semantics></math> and final answer in <math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.9.9.9.9.9.9.9.m9.1"><semantics id="S3.T1.9.9.9.9.9.9.9.m9.1a"><mo id="S3.T1.9.9.9.9.9.9.9.m9.1.1" xref="S3.T1.9.9.9.9.9.9.9.m9.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.9.9.9.9.m9.1b"><lt id="S3.T1.9.9.9.9.9.9.9.m9.1.1.cmml" xref="S3.T1.9.9.9.9.9.9.9.m9.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.9.9.9.9.m9.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.9.9.9.9.m9.1d">&lt;</annotation></semantics></math>answer<math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.10.10.10.10.10.10.10.m10.1"><semantics id="S3.T1.10.10.10.10.10.10.10.m10.1a"><mo id="S3.T1.10.10.10.10.10.10.10.m10.1.1" xref="S3.T1.10.10.10.10.10.10.10.m10.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.10.10.10.10.m10.1b"><gt id="S3.T1.10.10.10.10.10.10.10.m10.1.1.cmml" xref="S3.T1.10.10.10.10.10.10.10.m10.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.10.10.10.10.m10.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.10.10.10.10.m10.1d">&gt;</annotation></semantics></math> <math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.11.11.11.11.11.11.11.m11.1"><semantics id="S3.T1.11.11.11.11.11.11.11.m11.1a"><mo id="S3.T1.11.11.11.11.11.11.11.m11.1.1" xref="S3.T1.11.11.11.11.11.11.11.m11.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.11.11.11.11.11.m11.1b"><lt id="S3.T1.11.11.11.11.11.11.11.m11.1.1.cmml" xref="S3.T1.11.11.11.11.11.11.11.m11.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.11.11.11.11.11.m11.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.11.11.11.11.11.m11.1d">&lt;</annotation></semantics></math>/answer<math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.12.12.12.12.12.12.12.m12.1"><semantics id="S3.T1.12.12.12.12.12.12.12.m12.1a"><mo id="S3.T1.12.12.12.12.12.12.12.m12.1.1" xref="S3.T1.12.12.12.12.12.12.12.m12.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.12.12.12.12.12.m12.1b"><gt id="S3.T1.12.12.12.12.12.12.12.m12.1.1.cmml" xref="S3.T1.12.12.12.12.12.12.12.m12.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.12.12.12.12.12.m12.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.12.12.12.12.12.m12.1d">&gt;</annotation></semantics></math> tags. The output answer format should be as follows: <math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.13.13.13.13.13.13.13.m13.1"><semantics id="S3.T1.13.13.13.13.13.13.13.m13.1a"><mo id="S3.T1.13.13.13.13.13.13.13.m13.1.1" xref="S3.T1.13.13.13.13.13.13.13.m13.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.13.13.13.13.13.13.13.m13.1b"><lt id="S3.T1.13.13.13.13.13.13.13.m13.1.1.cmml" xref="S3.T1.13.13.13.13.13.13.13.m13.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.13.13.13.13.13.13.13.m13.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.13.13.13.13.13.13.13.m13.1d">&lt;</annotation></semantics></math>think<math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.14.14.14.14.14.14.14.m14.1"><semantics id="S3.T1.14.14.14.14.14.14.14.m14.1a"><mo id="S3.T1.14.14.14.14.14.14.14.m14.1.1" xref="S3.T1.14.14.14.14.14.14.14.m14.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.14.14.14.14.14.14.14.m14.1b"><gt id="S3.T1.14.14.14.14.14.14.14.m14.1.1.cmml" xref="S3.T1.14.14.14.14.14.14.14.m14.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.14.14.14.14.14.14.14.m14.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.14.14.14.14.14.14.14.m14.1d">&gt;</annotation></semantics></math> … <math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.15.15.15.15.15.15.15.m15.1"><semantics id="S3.T1.15.15.15.15.15.15.15.m15.1a"><mo id="S3.T1.15.15.15.15.15.15.15.m15.1.1" xref="S3.T1.15.15.15.15.15.15.15.m15.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.15.15.15.15.15.15.15.m15.1b"><lt id="S3.T1.15.15.15.15.15.15.15.m15.1.1.cmml" xref="S3.T1.15.15.15.15.15.15.15.m15.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.15.15.15.15.15.15.15.m15.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.15.15.15.15.15.15.15.m15.1d">&lt;</annotation></semantics></math>/think<math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.16.16.16.16.16.16.16.m16.1"><semantics id="S3.T1.16.16.16.16.16.16.16.m16.1a"><mo id="S3.T1.16.16.16.16.16.16.16.m16.1.1" xref="S3.T1.16.16.16.16.16.16.16.m16.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.16.16.16.16.16.16.16.m16.1b"><gt id="S3.T1.16.16.16.16.16.16.16.m16.1.1.cmml" xref="S3.T1.16.16.16.16.16.16.16.m16.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.16.16.16.16.16.16.16.m16.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.16.16.16.16.16.16.16.m16.1d">&gt;</annotation></semantics></math><math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.17.17.17.17.17.17.17.m17.1"><semantics id="S3.T1.17.17.17.17.17.17.17.m17.1a"><mo id="S3.T1.17.17.17.17.17.17.17.m17.1.1" xref="S3.T1.17.17.17.17.17.17.17.m17.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.17.17.17.17.17.17.17.m17.1b"><lt id="S3.T1.17.17.17.17.17.17.17.m17.1.1.cmml" xref="S3.T1.17.17.17.17.17.17.17.m17.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.17.17.17.17.17.17.17.m17.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.17.17.17.17.17.17.17.m17.1d">&lt;</annotation></semantics></math>answer<math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.18.18.18.18.18.18.18.m18.1"><semantics id="S3.T1.18.18.18.18.18.18.18.m18.1a"><mo id="S3.T1.18.18.18.18.18.18.18.m18.1.1" xref="S3.T1.18.18.18.18.18.18.18.m18.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.18.18.18.18.18.18.18.m18.1b"><gt id="S3.T1.18.18.18.18.18.18.18.m18.1.1.cmml" xref="S3.T1.18.18.18.18.18.18.18.m18.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.18.18.18.18.18.18.18.m18.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.18.18.18.18.18.18.18.m18.1d">&gt;</annotation></semantics></math>[’Position’: [x1, y1, x2, y2], ’Confidence’: number, …]<math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.19.19.19.19.19.19.19.m19.1"><semantics id="S3.T1.19.19.19.19.19.19.19.m19.1a"><mo id="S3.T1.19.19.19.19.19.19.19.m19.1.1" xref="S3.T1.19.19.19.19.19.19.19.m19.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.19.19.19.19.19.19.19.m19.1b"><lt id="S3.T1.19.19.19.19.19.19.19.m19.1.1.cmml" xref="S3.T1.19.19.19.19.19.19.19.m19.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.19.19.19.19.19.19.19.m19.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.19.19.19.19.19.19.19.m19.1d">&lt;</annotation></semantics></math>/answer<math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.20.20.20.20.20.20.20.m20.1"><semantics id="S3.T1.20.20.20.20.20.20.20.m20.1a"><mo id="S3.T1.20.20.20.20.20.20.20.m20.1.1" xref="S3.T1.20.20.20.20.20.20.20.m20.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.20.20.20.20.20.20.20.m20.1b"><gt id="S3.T1.20.20.20.20.20.20.20.m20.1.1.cmml" xref="S3.T1.20.20.20.20.20.20.20.m20.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.20.20.20.20.20.20.20.m20.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.20.20.20.20.20.20.20.m20.1d">&gt;</annotation></semantics></math> Please strictly follow the format.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.36.36.36.36">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T1.36.36.36.36.16" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.36.36.36.36.16.16">
<span class="ltx_p" id="S3.T1.36.36.36.36.16.16.16" style="width:256.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.36.36.36.36.16.16.16.1">Classification Prompt:</span> This is an image containing a plant. Please identify the species of the plant based on the image. Output the thinking process in <math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.21.21.21.21.1.1.1.m1.1"><semantics id="S3.T1.21.21.21.21.1.1.1.m1.1a"><mo id="S3.T1.21.21.21.21.1.1.1.m1.1.1" xref="S3.T1.21.21.21.21.1.1.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.21.21.21.21.1.1.1.m1.1b"><lt id="S3.T1.21.21.21.21.1.1.1.m1.1.1.cmml" xref="S3.T1.21.21.21.21.1.1.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.21.21.21.21.1.1.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.21.21.21.21.1.1.1.m1.1d">&lt;</annotation></semantics></math>think<math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.22.22.22.22.2.2.2.m2.1"><semantics id="S3.T1.22.22.22.22.2.2.2.m2.1a"><mo id="S3.T1.22.22.22.22.2.2.2.m2.1.1" xref="S3.T1.22.22.22.22.2.2.2.m2.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.22.22.22.22.2.2.2.m2.1b"><gt id="S3.T1.22.22.22.22.2.2.2.m2.1.1.cmml" xref="S3.T1.22.22.22.22.2.2.2.m2.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.22.22.22.22.2.2.2.m2.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.22.22.22.22.2.2.2.m2.1d">&gt;</annotation></semantics></math> <math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.23.23.23.23.3.3.3.m3.1"><semantics id="S3.T1.23.23.23.23.3.3.3.m3.1a"><mo id="S3.T1.23.23.23.23.3.3.3.m3.1.1" xref="S3.T1.23.23.23.23.3.3.3.m3.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.23.23.23.23.3.3.3.m3.1b"><lt id="S3.T1.23.23.23.23.3.3.3.m3.1.1.cmml" xref="S3.T1.23.23.23.23.3.3.3.m3.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.23.23.23.23.3.3.3.m3.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.23.23.23.23.3.3.3.m3.1d">&lt;</annotation></semantics></math>/think<math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.24.24.24.24.4.4.4.m4.1"><semantics id="S3.T1.24.24.24.24.4.4.4.m4.1a"><mo id="S3.T1.24.24.24.24.4.4.4.m4.1.1" xref="S3.T1.24.24.24.24.4.4.4.m4.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.24.24.24.24.4.4.4.m4.1b"><gt id="S3.T1.24.24.24.24.4.4.4.m4.1.1.cmml" xref="S3.T1.24.24.24.24.4.4.4.m4.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.24.24.24.24.4.4.4.m4.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.24.24.24.24.4.4.4.m4.1d">&gt;</annotation></semantics></math> and final answer in <math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.25.25.25.25.5.5.5.m5.1"><semantics id="S3.T1.25.25.25.25.5.5.5.m5.1a"><mo id="S3.T1.25.25.25.25.5.5.5.m5.1.1" xref="S3.T1.25.25.25.25.5.5.5.m5.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.25.25.25.25.5.5.5.m5.1b"><lt id="S3.T1.25.25.25.25.5.5.5.m5.1.1.cmml" xref="S3.T1.25.25.25.25.5.5.5.m5.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.25.25.25.25.5.5.5.m5.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.25.25.25.25.5.5.5.m5.1d">&lt;</annotation></semantics></math>/think<math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.26.26.26.26.6.6.6.m6.1"><semantics id="S3.T1.26.26.26.26.6.6.6.m6.1a"><mo id="S3.T1.26.26.26.26.6.6.6.m6.1.1" xref="S3.T1.26.26.26.26.6.6.6.m6.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.26.26.26.26.6.6.6.m6.1b"><gt id="S3.T1.26.26.26.26.6.6.6.m6.1.1.cmml" xref="S3.T1.26.26.26.26.6.6.6.m6.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.26.26.26.26.6.6.6.m6.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.26.26.26.26.6.6.6.m6.1d">&gt;</annotation></semantics></math> <math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.27.27.27.27.7.7.7.m7.1"><semantics id="S3.T1.27.27.27.27.7.7.7.m7.1a"><mo id="S3.T1.27.27.27.27.7.7.7.m7.1.1" xref="S3.T1.27.27.27.27.7.7.7.m7.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.27.27.27.27.7.7.7.m7.1b"><lt id="S3.T1.27.27.27.27.7.7.7.m7.1.1.cmml" xref="S3.T1.27.27.27.27.7.7.7.m7.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.27.27.27.27.7.7.7.m7.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.27.27.27.27.7.7.7.m7.1d">&lt;</annotation></semantics></math>/answer<math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.28.28.28.28.8.8.8.m8.1"><semantics id="S3.T1.28.28.28.28.8.8.8.m8.1a"><mo id="S3.T1.28.28.28.28.8.8.8.m8.1.1" xref="S3.T1.28.28.28.28.8.8.8.m8.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.28.28.28.28.8.8.8.m8.1b"><gt id="S3.T1.28.28.28.28.8.8.8.m8.1.1.cmml" xref="S3.T1.28.28.28.28.8.8.8.m8.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.28.28.28.28.8.8.8.m8.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.28.28.28.28.8.8.8.m8.1d">&gt;</annotation></semantics></math> tags. The output answer format should be as follows: <math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.29.29.29.29.9.9.9.m9.1"><semantics id="S3.T1.29.29.29.29.9.9.9.m9.1a"><mo id="S3.T1.29.29.29.29.9.9.9.m9.1.1" xref="S3.T1.29.29.29.29.9.9.9.m9.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.29.29.29.29.9.9.9.m9.1b"><lt id="S3.T1.29.29.29.29.9.9.9.m9.1.1.cmml" xref="S3.T1.29.29.29.29.9.9.9.m9.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.29.29.29.29.9.9.9.m9.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.29.29.29.29.9.9.9.m9.1d">&lt;</annotation></semantics></math>think<math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.30.30.30.30.10.10.10.m10.1"><semantics id="S3.T1.30.30.30.30.10.10.10.m10.1a"><mo id="S3.T1.30.30.30.30.10.10.10.m10.1.1" xref="S3.T1.30.30.30.30.10.10.10.m10.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.30.30.30.30.10.10.10.m10.1b"><gt id="S3.T1.30.30.30.30.10.10.10.m10.1.1.cmml" xref="S3.T1.30.30.30.30.10.10.10.m10.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.30.30.30.30.10.10.10.m10.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.30.30.30.30.10.10.10.m10.1d">&gt;</annotation></semantics></math> … <math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.31.31.31.31.11.11.11.m11.1"><semantics id="S3.T1.31.31.31.31.11.11.11.m11.1a"><mo id="S3.T1.31.31.31.31.11.11.11.m11.1.1" xref="S3.T1.31.31.31.31.11.11.11.m11.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.31.31.31.31.11.11.11.m11.1b"><lt id="S3.T1.31.31.31.31.11.11.11.m11.1.1.cmml" xref="S3.T1.31.31.31.31.11.11.11.m11.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.31.31.31.31.11.11.11.m11.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.31.31.31.31.11.11.11.m11.1d">&lt;</annotation></semantics></math>/think<math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.32.32.32.32.12.12.12.m12.1"><semantics id="S3.T1.32.32.32.32.12.12.12.m12.1a"><mo id="S3.T1.32.32.32.32.12.12.12.m12.1.1" xref="S3.T1.32.32.32.32.12.12.12.m12.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.32.32.32.32.12.12.12.m12.1b"><gt id="S3.T1.32.32.32.32.12.12.12.m12.1.1.cmml" xref="S3.T1.32.32.32.32.12.12.12.m12.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.32.32.32.32.12.12.12.m12.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.32.32.32.32.12.12.12.m12.1d">&gt;</annotation></semantics></math> <math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.33.33.33.33.13.13.13.m13.1"><semantics id="S3.T1.33.33.33.33.13.13.13.m13.1a"><mo id="S3.T1.33.33.33.33.13.13.13.m13.1.1" xref="S3.T1.33.33.33.33.13.13.13.m13.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.33.33.33.33.13.13.13.m13.1b"><lt id="S3.T1.33.33.33.33.13.13.13.m13.1.1.cmml" xref="S3.T1.33.33.33.33.13.13.13.m13.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.33.33.33.33.13.13.13.m13.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.33.33.33.33.13.13.13.m13.1d">&lt;</annotation></semantics></math>/think<math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.34.34.34.34.14.14.14.m14.1"><semantics id="S3.T1.34.34.34.34.14.14.14.m14.1a"><mo id="S3.T1.34.34.34.34.14.14.14.m14.1.1" xref="S3.T1.34.34.34.34.14.14.14.m14.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.34.34.34.34.14.14.14.m14.1b"><gt id="S3.T1.34.34.34.34.14.14.14.m14.1.1.cmml" xref="S3.T1.34.34.34.34.14.14.14.m14.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.34.34.34.34.14.14.14.m14.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.34.34.34.34.14.14.14.m14.1d">&gt;</annotation></semantics></math>species name<math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.35.35.35.35.15.15.15.m15.1"><semantics id="S3.T1.35.35.35.35.15.15.15.m15.1a"><mo id="S3.T1.35.35.35.35.15.15.15.m15.1.1" xref="S3.T1.35.35.35.35.15.15.15.m15.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.35.35.35.35.15.15.15.m15.1b"><lt id="S3.T1.35.35.35.35.15.15.15.m15.1.1.cmml" xref="S3.T1.35.35.35.35.15.15.15.m15.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.35.35.35.35.15.15.15.m15.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.35.35.35.35.15.15.15.m15.1d">&lt;</annotation></semantics></math>/answer<math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.36.36.36.36.16.16.16.m16.1"><semantics id="S3.T1.36.36.36.36.16.16.16.m16.1a"><mo id="S3.T1.36.36.36.36.16.16.16.m16.1.1" xref="S3.T1.36.36.36.36.16.16.16.m16.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.36.36.36.36.16.16.16.m16.1b"><gt id="S3.T1.36.36.36.36.16.16.16.m16.1.1.cmml" xref="S3.T1.36.36.36.36.16.16.16.m16.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.36.36.36.36.16.16.16.m16.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.36.36.36.36.16.16.16.m16.1d">&gt;</annotation></semantics></math> Please strictly follow the format.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 details the prompts used to generate the dataset for training the Visual-RFT model.  It shows separate prompts for object detection and image classification tasks. The detection prompt instructs the model to identify objects of a specified category in an image, provide their bounding boxes and confidence scores, and describe the reasoning process.  The classification prompt asks the model to identify the species of a plant in an image, also requiring a description of the reasoning process.  These prompts guide the model to produce both an answer and a step-by-step explanation of its decision-making process.
> <details>
> <summary>read the caption</summary>
> Table 1:  Prompts used to construct the dataset. We have listed the detection prompt and classification prompt separately.
> </details>





### In-depth insights


#### Visual-RFT Intro
The paper introduces Visual Reinforcement Fine-Tuning (**Visual-RFT**), extending Reinforcement Fine-Tuning (**RFT**) to visual tasks. **RFT** efficiently fine-tunes models with limited data, useful when data is scarce. Visual-RFT uses Large Vision-Language Models (**LVLMs**) to generate responses with reasoning tokens, then updates the model using visual perception verifiable reward functions and policy optimization algorithms like Group Relative Policy Optimization (**GRPO**). It designs different verifiable reward functions, such as Intersection over Union (**IoU**) for object detection. Experimental results show Visual-RFT's competitive performance and advanced generalization compared to Supervised Fine-tuning (**SFT**) on various tasks, offering data efficiency and reward-driven approach. **Visual-RFT** enhances reasoning and adaptability for domain-specific tasks. The key distinction between **RFT** and previous **SFT** is data efficiency.

#### Verifiable Reward
The concept of a verifiable reward is pivotal, especially in scenarios with limited data. Unlike traditional methods that rely on human feedback and complex reward models, verifiable rewards offer a **direct and efficient way** to assess the correctness of a model's response. This approach is particularly beneficial in tasks where clear, objective criteria exist, allowing for **rule-based evaluation**. By defining specific rules that determine the reward score, the model can be trained to optimize for desired outcomes without the need for extensive labeled data or intricate reward systems. This is more **data-efficient** as well as better tailored to visual-RFT, which benefits the reasoning and adaptability for domain-specific tasks. By **integrating verifiable reward** into a visual perception tasks can significantly improve the performance and reasoning abilities of LVLMs.

#### Few-Shot LVLM
While the paper doesn't explicitly use the heading "Few-Shot LVLM," the research heavily implies it. The core idea involves leveraging **Reinforcement Learning to fine-tune Visual Language Models (LVLMs)** with minimal data. The experiments demonstrate substantial gains in few-shot settings across tasks like image classification, object detection, and reasoning, highlighting the potential of this method to overcome the data scarcity that often hinders LVLM performance. It is evident that **Visual-RFT excels in quickly adapting to new tasks with limited examples**, significantly outperforming supervised fine-tuning (SFT) in low-data regimes. This suggests that RFT enables the models to learn more efficiently and generalize better from a few examples. It is plausible that the authors are addressing a critical challenge in applying LVLMs to real-world scenarios where collecting large amounts of labeled data is impractical or expensive. Hence, this approach is a way for data-efficient solutions to improve the practical applicability of these powerful models.

#### Reasoning LISA
**Reasoning about objects and their relationships in images** is a critical aspect of visual intelligence, allowing systems to understand complex scenes and answer questions that require inference beyond simple object recognition. Traditional methods often struggle with such tasks due to their limited ability to understand contextual information. This research explores ways to enhance reasoning in visual models, potentially through incorporating techniques that allow the model to **infer relationships** between objects and their **attributes** from visual information or using techniques like **causal reasoning**. The study highlights the necessity of **integrating structured knowledge** with visual data for advanced reasoning capabilities.

#### RFT Generalization
While "RFT Generalization" isn't explicitly a heading in this paper, the research strongly implies its importance. The study demonstrates how Visual-RFT allows models to **generalize better** than traditional Supervised Fine-Tuning (SFT).  The results across various tasks (few-shot classification, open vocabulary object detection, and reasoning grounding) consistently showcase Visual-RFT's ability to **adapt to new categories and datasets effectively**, even with limited data.  This suggests that the reward-driven approach of RFT enables models to learn more robust representations, rather than simply memorizing training examples. The model’s **reasoning ability** is also the key for better generalization, allowing it to understand underlying concepts and apply them to unseen scenarios. Visual-RFT excels in tasks requiring **reasoning and compositional understanding**, particularly in the LISA reasoning grounding experiments.  The experiments highlight that RFT promotes a deeper understanding of the underlying task, rather than just memorizing surface-level correlations.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.01785/x2.png)

> 🔼 Figure 2 illustrates the core concept of Visual-RFT and its advantages over traditional Visual Instruction Tuning.  Panel (a) shows Visual Instruction Tuning, which requires large-scale datasets for training. In contrast, panel (b) presents Visual-RFT, highlighting its data efficiency by requiring only limited data (10-1000 samples) for effective fine-tuning.  This is achieved through reinforcement learning with verifiable rewards, shown schematically. Panel (c) demonstrates the successful application of Visual-RFT to various multi-modal tasks (detection, grounding, and classification), showcasing the model's ability to perform reasoning and generate detailed answers, as exemplified in the detailed examples at the bottom of the figure. 
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of Visual-RFT. Compared to the (a) Visual Instruction Tuning that is data-hungry, (b) our Visual Reinforcement Fine-Tuning (Visual-RFT) is more data efficient with limited data. (c) We successfully empower Large Vision-Language Models (LVLMs) with RFT on a series of multi-modal tasks, and present examples of the model’s reasoning process at the bottom.
> </details>



![](https://arxiv.org/html/2503.01785/x3.png)

> 🔼 Visual-RFT's framework involves receiving a question and a visual image as input.  A policy model processes this input and generates multiple response options, each including reasoning steps and a final answer. The quality of each response is assessed using a verifiable reward function, specifically the Intersection over Union (IoU) reward for object detection tasks and a Classification (CLS) reward for classification tasks.  These reward signals, combined with a policy gradient optimization algorithm, are then used to iteratively refine the policy model, improving its ability to generate accurate and well-reasoned responses.
> <details>
> <summary>read the caption</summary>
> Figure 3: Framework of Visual-RFT. Given the question and visual image inputs, the policy model generates multiple responses containing reasoning steps. Then the verifiable reward such as IoU reward and CLS reward is used with the policy gradient optimization algorithm to update the policy model.
> </details>



![](https://arxiv.org/html/2503.01785/x4.png)

> 🔼 Figure 4 presents a qualitative comparison of fine-grained image classification results between standard supervised fine-tuning (SFT) and the proposed Visual-RFT method.  The figure showcases examples where Visual-RFT significantly enhances the reasoning process of Large Vision-Language Models (LVLMs). Visual-RFT leverages a verifiable reward mechanism during reinforcement learning, guiding the model toward more accurate classification by explicitly incorporating a 'thinking' step.  This contrasts with the direct prediction of SFT. The improved reasoning process, as demonstrated by the more detailed and accurate reasoning steps within the 'thinking' section of the Visual-RFT outputs, leads to substantially better classification accuracy. The figure provides visual examples of the differences in reasoning quality and accuracy between both approaches for fine-grained classification tasks.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative results of Fine-Grained Image Classification. The thinking process significantly improves the reasoning ability of LVLMs, leading to higher image classification performance.
> </details>



![](https://arxiv.org/html/2503.01785/x5.png)

> 🔼 Figure 5 presents a qualitative comparison of reasoning grounding results on the LISA dataset between the standard Supervised Fine-Tuning (SFT) approach and the proposed Visual-RFT method.  The figure showcases several examples where Visual-RFT significantly enhances reasoning capabilities leading to more accurate and contextually appropriate grounding of objects within images.  Each example consists of a question, SFT model's reasoning and answer, and the corresponding results from the Visual-RFT model. The Visual-RFT responses show a clear improvement in the quality of the reasoning process and in the accuracy of the grounding boxes.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative results of reasoning grounding on LISA [11]. Thinking process significantly improves reasoning grounding ability with Visual-RFT.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.15.15.15">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.15.15.15.16.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T2.15.15.15.16.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.15.15.16.1.1.1">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T2.15.15.15.16.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.15.15.16.1.2.1">Average</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.15.15.15.16.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.15.15.15.16.1.3.1" style="width:6.9pt;height:47.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:47.7pt;transform:translate(-20.36pt,-20.36pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.15.15.15.16.1.3.1.1">Flower102</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.15.15.15.16.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.15.15.15.16.1.4.1" style="width:6.8pt;height:32.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:32.1pt;transform:translate(-12.65pt,-12.65pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.15.15.15.16.1.4.1.1">Pets37</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.15.15.15.16.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.15.15.15.16.1.5.1" style="width:6.8pt;height:31.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:31.9pt;transform:translate(-12.52pt,-12.52pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.15.15.15.16.1.5.1.1">FGVC</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.15.15.15.16.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.15.15.15.16.1.6.1" style="width:6.8pt;height:35.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:35.1pt;transform:translate(-14.13pt,-14.13pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.15.15.15.16.1.6.1.1">Cars196</p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.15.15.17.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.15.15.15.17.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Qwen2-VL-2B</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.15.15.15.17.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">56.0</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.15.17.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">54.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.15.17.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">66.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.15.17.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">45.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.15.17.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">56.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.15.15.18.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T2.15.15.15.18.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.15.15.15.18.3.1.1">one-shot</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.m1.1b"><plus id="S4.T2.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">51.7</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">56.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">54.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">65.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">30.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2.2" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T2.2.2.2.2.1.m1.1a"><mo id="S4.T2.2.2.2.2.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T2.2.2.2.2.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.1.m1.1b"><plus id="S4.T2.2.2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.2.2.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T2.2.2.2.2.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.2.2.1" style="background-color:#DAEFF9;">80.3</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.2.3.1" style="background-color:#DAEFF9;">70.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.2.4.1" style="background-color:#DAEFF9;">84.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.2.5.1" style="background-color:#DAEFF9;">72.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.2.6.1" style="background-color:#DAEFF9;">93.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.3.3.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.3.1.m1.1a"><mi id="S4.T2.3.3.3.3.1.m1.1.1" mathvariant="normal" xref="S4.T2.3.3.3.3.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.1.m1.1b"><ci id="S4.T2.3.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.3.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.3.3.3.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.3.2.1" style="color:#00B04F;">+24.3</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.3.3.1" style="color:#00B04F;">+16.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.3.4.1" style="color:#00B04F;">+17.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.3.5.1" style="color:#00B04F;">+26.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.3.6.1" style="color:#00B04F;">+37.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.15.15.19.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T2.15.15.15.19.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.15.15.15.19.4.1.1">2-shot</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.4.4.4.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.4.1.m1.1a"><mo id="S4.T2.4.4.4.4.1.m1.1.1" xref="S4.T2.4.4.4.4.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.1.m1.1b"><plus id="S4.T2.4.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.4.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.4.4.4.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">58.8</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">60.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">65.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">68.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">40.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5.5" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.5.5.5.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T2.5.5.5.5.1.m1.1a"><mo id="S4.T2.5.5.5.5.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T2.5.5.5.5.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.1.m1.1b"><plus id="S4.T2.5.5.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.5.5.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T2.5.5.5.5.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.5.5.5.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.5.2.1" style="background-color:#DAEFF9;">83.5</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.5.3.1" style="background-color:#DAEFF9;">75.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.5.4.1" style="background-color:#DAEFF9;">87.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.5.5.1" style="background-color:#DAEFF9;">75.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.5.6.1" style="background-color:#DAEFF9;">95.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.6.6.6.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.6.6.6.6.1.m1.1"><semantics id="S4.T2.6.6.6.6.1.m1.1a"><mi id="S4.T2.6.6.6.6.1.m1.1.1" mathvariant="normal" xref="S4.T2.6.6.6.6.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.6.1.m1.1b"><ci id="S4.T2.6.6.6.6.1.m1.1.1.cmml" xref="S4.T2.6.6.6.6.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.6.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.6.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.6.6.6.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.6.2.1" style="color:#00B04F;">+27.5</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.6.3.1" style="color:#00B04F;">+21.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.6.4.1" style="color:#00B04F;">+21.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.6.5.1" style="color:#00B04F;">+29.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.6.6.1" style="color:#00B04F;">+38.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.15.15.20.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T2.15.15.15.20.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.15.15.15.20.5.1.1">4-shot</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.7.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.7.7.7.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T2.7.7.7.7.1.m1.1"><semantics id="S4.T2.7.7.7.7.1.m1.1a"><mo id="S4.T2.7.7.7.7.1.m1.1.1" xref="S4.T2.7.7.7.7.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.7.1.m1.1b"><plus id="S4.T2.7.7.7.7.1.m1.1.1.cmml" xref="S4.T2.7.7.7.7.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.7.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.7.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.7.7.7.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">55.6</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">58.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">55.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">67.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">40.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.8.8" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.8.8.8.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T2.8.8.8.8.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T2.8.8.8.8.1.m1.1a"><mo id="S4.T2.8.8.8.8.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T2.8.8.8.8.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.8.1.m1.1b"><plus id="S4.T2.8.8.8.8.1.m1.1.1.cmml" xref="S4.T2.8.8.8.8.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.8.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.8.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T2.8.8.8.8.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.8.8.8.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.8.8.8.8.2.1" style="background-color:#DAEFF9;">81.9</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.8.8.8.8.3.1" style="background-color:#DAEFF9;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.8.8.8.8.4.1" style="background-color:#DAEFF9;">86.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.8.8.8.8.5.1" style="background-color:#DAEFF9;">74.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.8.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.8.8.8.8.6.1" style="background-color:#DAEFF9;">95.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.9.9.9.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.9.9.9.9.1.m1.1"><semantics id="S4.T2.9.9.9.9.1.m1.1a"><mi id="S4.T2.9.9.9.9.1.m1.1.1" mathvariant="normal" xref="S4.T2.9.9.9.9.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.9.1.m1.1b"><ci id="S4.T2.9.9.9.9.1.m1.1.1.cmml" xref="S4.T2.9.9.9.9.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.9.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.9.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.9.9.9.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.9.9.2.1" style="color:#00B04F;">+25.9</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.9.9.3.1" style="color:#00B04F;">+16.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.9.9.4.1" style="color:#00B04F;">+19.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.9.9.5.1" style="color:#00B04F;">+28.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.9.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.9.9.6.1" style="color:#00B04F;">+38.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.15.15.21.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T2.15.15.15.21.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.15.15.15.21.6.1.1">8-shot</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.10.10.10.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T2.10.10.10.10.1.m1.1"><semantics id="S4.T2.10.10.10.10.1.m1.1a"><mo id="S4.T2.10.10.10.10.1.m1.1.1" xref="S4.T2.10.10.10.10.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.10.1.m1.1b"><plus id="S4.T2.10.10.10.10.1.m1.1.1.cmml" xref="S4.T2.10.10.10.10.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.10.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.10.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.10.10.10.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">60.3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">59.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">71.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">69.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.10.6" style="padding-left:4.0pt;padding-right:4.0pt;">40.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.11.11" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.11.11.11.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T2.11.11.11.11.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T2.11.11.11.11.1.m1.1a"><mo id="S4.T2.11.11.11.11.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T2.11.11.11.11.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.11.11.1.m1.1b"><plus id="S4.T2.11.11.11.11.1.m1.1.1.cmml" xref="S4.T2.11.11.11.11.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.11.11.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.11.11.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T2.11.11.11.11.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.11.11.11.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.11.2.1" style="background-color:#DAEFF9;">85.1</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.11.3.1" style="background-color:#DAEFF9;">77.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.11.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.11.4.1" style="background-color:#DAEFF9;">90.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.11.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.11.5.1" style="background-color:#DAEFF9;">75.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.11.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.11.6.1" style="background-color:#DAEFF9;">96.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.12.12.12.12.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.12.12.12.12.1.m1.1"><semantics id="S4.T2.12.12.12.12.1.m1.1a"><mi id="S4.T2.12.12.12.12.1.m1.1.1" mathvariant="normal" xref="S4.T2.12.12.12.12.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.12.12.1.m1.1b"><ci id="S4.T2.12.12.12.12.1.m1.1.1.cmml" xref="S4.T2.12.12.12.12.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.12.12.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.12.12.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.12.12.12.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.12.2.1" style="color:#00B04F;">+29.1</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.12.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.12.3.1" style="color:#00B04F;">+22.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.12.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.12.4.1" style="color:#00B04F;">+23.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.12.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.12.5.1" style="color:#00B04F;">+30.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.12.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.12.6.1" style="color:#00B04F;">+39.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.15.15.22.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T2.15.15.15.22.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.15.15.15.22.7.1.1">16-shot</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.13.13.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.13.13.13.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T2.13.13.13.13.1.m1.1"><semantics id="S4.T2.13.13.13.13.1.m1.1a"><mo id="S4.T2.13.13.13.13.1.m1.1.1" xref="S4.T2.13.13.13.13.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.13.13.1.m1.1b"><plus id="S4.T2.13.13.13.13.1.m1.1.1.cmml" xref="S4.T2.13.13.13.13.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.13.13.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.13.13.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.13.13.13.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">64.0</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.13.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">66.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.13.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">71.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.13.13.5" style="padding-left:4.0pt;padding-right:4.0pt;">76.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.13.13.6" style="padding-left:4.0pt;padding-right:4.0pt;">41.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.14.14.14" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.14.14.14.14.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T2.14.14.14.14.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T2.14.14.14.14.1.m1.1a"><mo id="S4.T2.14.14.14.14.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T2.14.14.14.14.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T2.14.14.14.14.1.m1.1b"><plus id="S4.T2.14.14.14.14.1.m1.1.1.cmml" xref="S4.T2.14.14.14.14.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.14.14.14.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.14.14.14.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T2.14.14.14.14.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.14.14.14.14.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.14.14.14.14.2.1" style="background-color:#DAEFF9;">85.3</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.14.14.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.14.14.14.14.3.1" style="background-color:#DAEFF9;">79.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.14.14.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.14.14.14.14.4.1" style="background-color:#DAEFF9;">87.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.14.14.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.14.14.14.14.5.1" style="background-color:#DAEFF9;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.14.14.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.14.14.14.14.6.1" style="background-color:#DAEFF9;">95.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.15.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.15.15.15.15.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.15.15.15.15.1.m1.1"><semantics id="S4.T2.15.15.15.15.1.m1.1a"><mi id="S4.T2.15.15.15.15.1.m1.1.1" mathvariant="normal" xref="S4.T2.15.15.15.15.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.15.15.15.15.1.m1.1b"><ci id="S4.T2.15.15.15.15.1.m1.1.1.cmml" xref="S4.T2.15.15.15.15.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.15.15.15.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.15.15.15.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.15.15.15.15.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.15.15.15.2.1" style="color:#00B04F;">+29.3</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.15.15.15.15.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.15.15.15.3.1" style="color:#00B04F;">+24.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.15.15.15.15.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.15.15.15.4.1" style="color:#00B04F;">+20.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.15.15.15.15.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.15.15.15.5.1" style="color:#00B04F;">+33.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.15.15.15.15.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.15.15.15.6.1" style="color:#00B04F;">+38.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a few-shot learning experiment on four fine-grained image classification datasets.  It compares the performance of different models, including a baseline, supervised fine-tuning (SFT), and the proposed Visual-RFT method.  The metrics used to evaluate performance are likely accuracy scores for each dataset and potentially an average accuracy across all four datasets.  The 'few-shot' aspect refers to training the models with a limited number of samples per class.
> <details>
> <summary>read the caption</summary>
> Table 2:  Few-shot results on Fine-grained Classification dataset. We evaluated four fine-grained image classification datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.18.18.18">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.18.18.18.19.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T3.18.18.18.19.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.19.1.1.1">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T3.18.18.18.19.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.19.1.2.1">mAP</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.18.18.18.19.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.18.18.18.19.1.3.1" style="width:6.9pt;height:15.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:15.1pt;transform:translate(-4.06pt,-4.06pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.18.18.18.19.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.19.1.3.1.1.1">bus</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.18.18.18.19.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.18.18.18.19.1.4.1" style="width:6.7pt;height:21.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:21.1pt;transform:translate(-7.23pt,-7.23pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.18.18.18.19.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.19.1.4.1.1.1">train</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.18.18.18.19.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.18.18.18.19.1.5.1" style="width:8.9pt;height:51.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:51.7pt;transform:translate(-21.42pt,-20.44pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.18.18.18.19.1.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.19.1.5.1.1.1">fire hydrant</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.18.18.18.19.1.6" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.18.18.18.19.1.6.1" style="width:8.6pt;height:39pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:39.0pt;transform:translate(-15.19pt,-14.22pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.18.18.18.19.1.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.19.1.6.1.1.1">stop sign</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.18.18.18.19.1.7" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.18.18.18.19.1.7.1" style="width:6.2pt;height:13.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:13.3pt;transform:translate(-3.59pt,-3.59pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.18.18.18.19.1.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.19.1.7.1.1.1">cat</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.18.18.18.19.1.8" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.18.18.18.19.1.8.1" style="width:8.9pt;height:15.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:15.6pt;transform:translate(-3.33pt,-2.36pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.18.18.18.19.1.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.19.1.8.1.1.1">dog</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.18.18.18.19.1.9" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.18.18.18.19.1.9.1" style="width:6.9pt;height:15.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:15.8pt;transform:translate(-4.44pt,-4.44pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.18.18.18.19.1.9.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.19.1.9.1.1.1">bed</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.18.18.18.19.1.10" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.18.18.18.19.1.10.1" style="width:6.9pt;height:22.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:22.8pt;transform:translate(-7.92pt,-7.92pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.18.18.18.19.1.10.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.19.1.10.1.1.1">toilet</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.18.20.2" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S4.T3.18.18.18.20.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.18.18.18.20.2.1.1" style="background-color:#F2F2F2;">Qwen2-VL-2B</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.18.21.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.18.18.18.21.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">Baseline</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.18.18.18.21.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">19.6</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.21.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">19.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.21.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">15.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.21.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">25.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.21.3.6" style="padding-left:2.0pt;padding-right:2.0pt;">18.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.21.3.7" style="padding-left:2.0pt;padding-right:2.0pt;">29.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.21.3.8" style="padding-left:2.0pt;padding-right:2.0pt;">23.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.21.3.9" style="padding-left:2.0pt;padding-right:2.0pt;">14.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.21.3.10" style="padding-left:2.0pt;padding-right:2.0pt;">9.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.18.22.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S4.T3.18.18.18.22.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.18.18.18.22.4.1.1">1-shot</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.1.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.m1.1b"><plus id="S4.T3.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.1.1.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">19.5</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">18.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">17.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">23.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;">18.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.1.7" style="padding-left:2.0pt;padding-right:2.0pt;">28.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.1.8" style="padding-left:2.0pt;padding-right:2.0pt;">23.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.1.9" style="padding-left:2.0pt;padding-right:2.0pt;">17.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.1.10" style="padding-left:2.0pt;padding-right:2.0pt;">10.4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.2.2" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.2.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T3.2.2.2.2.1.m1.1a"><mo id="S4.T3.2.2.2.2.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T3.2.2.2.2.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.1.m1.1b"><plus id="S4.T3.2.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.2.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T3.2.2.2.2.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.2.2.2.2.2.1" style="background-color:#DAEFF9;">33.6</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.2.2.2.2.3.1" style="background-color:#DAEFF9;">23.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.2.2.2.2.4.1" style="background-color:#DAEFF9;">35.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.2.2.2.2.5.1" style="background-color:#DAEFF9;">39.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.2.2.2.2.6.1" style="background-color:#DAEFF9;">23.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.2.2.2.2.7.1" style="background-color:#DAEFF9;">54.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.2.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.2.2.2.2.8.1" style="background-color:#DAEFF9;">42.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.2.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.2.2.2.2.9.1" style="background-color:#DAEFF9;">19.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.2.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.2.2.2.2.10.1" style="background-color:#DAEFF9;">30.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.3.3.3.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.1.m1.1"><semantics id="S4.T3.3.3.3.3.1.m1.1a"><mi id="S4.T3.3.3.3.3.1.m1.1.1" mathvariant="normal" xref="S4.T3.3.3.3.3.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.1.m1.1b"><ci id="S4.T3.3.3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.3.3.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.3.3.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.3.2.1" style="color:#00B04F;">+14.0</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.3.3.1" style="color:#00B04F;">+4.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.3.4.1" style="color:#00B04F;">+19.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.3.5.1" style="color:#00B04F;">+13.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.3.6.1" style="color:#00B04F;">+5.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.3.7.1" style="color:#00B04F;">+24.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.3.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.3.8.1" style="color:#00B04F;">+19.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.3.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.3.9.1" style="color:#00B04F;">+4.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.3.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.3.10.1" style="color:#00B04F;">+21.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.18.23.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S4.T3.18.18.18.23.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.18.18.18.23.5.1.1">2-shot</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.4.4.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.1.m1.1"><semantics id="S4.T3.4.4.4.4.1.m1.1a"><mo id="S4.T3.4.4.4.4.1.m1.1.1" xref="S4.T3.4.4.4.4.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.1.m1.1b"><plus id="S4.T3.4.4.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.4.4.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.4.4.4.4.2" style="padding-left:2.0pt;padding-right:2.0pt;">21.0</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;">22.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">15.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;">29.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.4.6" style="padding-left:2.0pt;padding-right:2.0pt;">19.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.4.7" style="padding-left:2.0pt;padding-right:2.0pt;">28.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.4.8" style="padding-left:2.0pt;padding-right:2.0pt;">26.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.4.9" style="padding-left:2.0pt;padding-right:2.0pt;">15.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.4.10" style="padding-left:2.0pt;padding-right:2.0pt;">10.2</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.5.5" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.5.5.5.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T3.5.5.5.5.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T3.5.5.5.5.1.m1.1a"><mo id="S4.T3.5.5.5.5.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T3.5.5.5.5.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.5.1.m1.1b"><plus id="S4.T3.5.5.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.5.5.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.5.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.5.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T3.5.5.5.5.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.5.5.5.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.5.5.5.5.2.1" style="background-color:#DAEFF9;">41.5</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.5.5.5.5.3.1" style="background-color:#DAEFF9;">28.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.5.5.5.5.4.1" style="background-color:#DAEFF9;">39.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.5.5.5.5.5.1" style="background-color:#DAEFF9;">38.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.5.5.5.5.6.1" style="background-color:#DAEFF9;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.5.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.5.5.5.5.7.1" style="background-color:#DAEFF9;">63.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.5.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.5.5.5.5.8.1" style="background-color:#DAEFF9;">52.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.5.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.5.5.5.5.9.1" style="background-color:#DAEFF9;">25.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.5.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.5.5.5.5.10.1" style="background-color:#DAEFF9;">34.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.6.6.6.6.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T3.6.6.6.6.1.m1.1"><semantics id="S4.T3.6.6.6.6.1.m1.1a"><mi id="S4.T3.6.6.6.6.1.m1.1.1" mathvariant="normal" xref="S4.T3.6.6.6.6.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.6.1.m1.1b"><ci id="S4.T3.6.6.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.6.6.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.6.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.6.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.6.6.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.6.2.1" style="color:#00B04F;">+21.9</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.6.3.1" style="color:#00B04F;">+9.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.6.4.1" style="color:#00B04F;">+23.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.6.5.1" style="color:#00B04F;">+12.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.6.6.1" style="color:#00B04F;">+29.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.6.7.1" style="color:#00B04F;">+33.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.6.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.6.8.1" style="color:#00B04F;">+29.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.6.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.6.9.1" style="color:#00B04F;">+11.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.6.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.6.10.1" style="color:#00B04F;">+25.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.18.24.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S4.T3.18.18.18.24.6.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.18.18.18.24.6.1.1">4-shot</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.7.7.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T3.7.7.7.7.1.m1.1"><semantics id="S4.T3.7.7.7.7.1.m1.1a"><mo id="S4.T3.7.7.7.7.1.m1.1.1" xref="S4.T3.7.7.7.7.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.7.1.m1.1b"><plus id="S4.T3.7.7.7.7.1.m1.1.1.cmml" xref="S4.T3.7.7.7.7.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.7.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.7.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.7.7.7.7.2" style="padding-left:2.0pt;padding-right:2.0pt;">25.2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.7.7.3" style="padding-left:2.0pt;padding-right:2.0pt;">25.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.7.7.4" style="padding-left:2.0pt;padding-right:2.0pt;">23.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.7.7.5" style="padding-left:2.0pt;padding-right:2.0pt;">26.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.7.7.6" style="padding-left:2.0pt;padding-right:2.0pt;">21.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.7.7.7" style="padding-left:2.0pt;padding-right:2.0pt;">35.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.7.7.8" style="padding-left:2.0pt;padding-right:2.0pt;">30.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.7.7.9" style="padding-left:2.0pt;padding-right:2.0pt;">18.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.7.7.10" style="padding-left:2.0pt;padding-right:2.0pt;">19.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.8.8" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.8.8.8.8.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T3.8.8.8.8.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T3.8.8.8.8.1.m1.1a"><mo id="S4.T3.8.8.8.8.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T3.8.8.8.8.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.8.1.m1.1b"><plus id="S4.T3.8.8.8.8.1.m1.1.1.cmml" xref="S4.T3.8.8.8.8.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.8.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.8.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T3.8.8.8.8.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.8.8.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.8.8.8.8.2.1" style="background-color:#DAEFF9;">40.6</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.8.8.8.8.3.1" style="background-color:#DAEFF9;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.8.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.8.8.8.8.4.1" style="background-color:#DAEFF9;">40.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.8.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.8.8.8.8.5.1" style="background-color:#DAEFF9;">45.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.8.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.8.8.8.8.6.1" style="background-color:#DAEFF9;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.8.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.8.8.8.8.7.1" style="background-color:#DAEFF9;">60.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.8.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.8.8.8.8.8.1" style="background-color:#DAEFF9;">44.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.8.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.8.8.8.8.9.1" style="background-color:#DAEFF9;">24.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.8.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.8.8.8.8.10.1" style="background-color:#DAEFF9;">43.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.9.9.9.9.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T3.9.9.9.9.1.m1.1"><semantics id="S4.T3.9.9.9.9.1.m1.1a"><mi id="S4.T3.9.9.9.9.1.m1.1.1" mathvariant="normal" xref="S4.T3.9.9.9.9.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.9.1.m1.1b"><ci id="S4.T3.9.9.9.9.1.m1.1.1.cmml" xref="S4.T3.9.9.9.9.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.9.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.9.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.9.9.9.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.9.9.2.1" style="color:#00B04F;">+21.0</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.9.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.9.9.3.1" style="color:#00B04F;">+11.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.9.9.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.9.9.4.1" style="color:#00B04F;">+24.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.9.9.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.9.9.5.1" style="color:#00B04F;">+19.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.9.9.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.9.9.6.1" style="color:#00B04F;">+16.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.9.9.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.9.9.7.1" style="color:#00B04F;">+31.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.9.9.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.9.9.8.1" style="color:#00B04F;">+21.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.9.9.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.9.9.9.1" style="color:#00B04F;">+10.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.9.9.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.9.9.10.1" style="color:#00B04F;">+33.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.18.25.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S4.T3.18.18.18.25.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.18.18.18.25.7.1.1">8-shot</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.10.10.10.10.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T3.10.10.10.10.1.m1.1"><semantics id="S4.T3.10.10.10.10.1.m1.1a"><mo id="S4.T3.10.10.10.10.1.m1.1.1" xref="S4.T3.10.10.10.10.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.10.1.m1.1b"><plus id="S4.T3.10.10.10.10.1.m1.1.1.cmml" xref="S4.T3.10.10.10.10.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.10.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.10.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.10.10.10.10.2" style="padding-left:2.0pt;padding-right:2.0pt;">30.2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.10.10.3" style="padding-left:2.0pt;padding-right:2.0pt;">25.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.10.10.4" style="padding-left:2.0pt;padding-right:2.0pt;">35.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.10.10.5" style="padding-left:2.0pt;padding-right:2.0pt;">29.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.10.10.6" style="padding-left:2.0pt;padding-right:2.0pt;">21.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.10.10.7" style="padding-left:2.0pt;padding-right:2.0pt;">44.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.10.10.8" style="padding-left:2.0pt;padding-right:2.0pt;">39.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.10.10.9" style="padding-left:2.0pt;padding-right:2.0pt;">22.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.10.10.10" style="padding-left:2.0pt;padding-right:2.0pt;">23.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.11.11.11" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.11.11.11.11.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T3.11.11.11.11.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T3.11.11.11.11.1.m1.1a"><mo id="S4.T3.11.11.11.11.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T3.11.11.11.11.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.11.11.1.m1.1b"><plus id="S4.T3.11.11.11.11.1.m1.1.1.cmml" xref="S4.T3.11.11.11.11.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.11.11.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.11.11.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T3.11.11.11.11.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.11.11.11.11.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.11.11.11.11.2.1" style="background-color:#DAEFF9;">47.4</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.11.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.11.11.11.11.3.1" style="background-color:#DAEFF9;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.11.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.11.11.11.11.4.1" style="background-color:#DAEFF9;">47.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.11.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.11.11.11.11.5.1" style="background-color:#DAEFF9;">50.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.11.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.11.11.11.11.6.1" style="background-color:#DAEFF9;">47.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.11.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.11.11.11.11.7.1" style="background-color:#DAEFF9;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.11.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.11.11.11.11.8.1" style="background-color:#DAEFF9;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.11.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.11.11.11.11.9.1" style="background-color:#DAEFF9;">30.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.11.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.11.11.11.11.10.1" style="background-color:#DAEFF9;">44.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.12.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.12.12.12.12.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T3.12.12.12.12.1.m1.1"><semantics id="S4.T3.12.12.12.12.1.m1.1a"><mi id="S4.T3.12.12.12.12.1.m1.1.1" mathvariant="normal" xref="S4.T3.12.12.12.12.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.12.12.12.12.1.m1.1b"><ci id="S4.T3.12.12.12.12.1.m1.1.1.cmml" xref="S4.T3.12.12.12.12.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.12.12.12.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.12.12.12.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.12.12.12.12.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.12.12.12.2.1" style="color:#00B04F;">+27.8</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.12.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.12.12.12.3.1" style="color:#00B04F;">+17.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.12.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.12.12.12.4.1" style="color:#00B04F;">+32.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.12.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.12.12.12.5.1" style="color:#00B04F;">+24.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.12.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.12.12.12.6.1" style="color:#00B04F;">+29.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.12.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.12.12.12.7.1" style="color:#00B04F;">+35.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.12.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.12.12.12.8.1" style="color:#00B04F;">+33.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.12.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.12.12.12.9.1" style="color:#00B04F;">+15.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.12.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.12.12.12.10.1" style="color:#00B04F;">+34.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.18.26.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S4.T3.18.18.18.26.8.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.18.18.18.26.8.1.1">16-shot</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.13.13.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.13.13.13.13.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T3.13.13.13.13.1.m1.1"><semantics id="S4.T3.13.13.13.13.1.m1.1a"><mo id="S4.T3.13.13.13.13.1.m1.1.1" xref="S4.T3.13.13.13.13.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T3.13.13.13.13.1.m1.1b"><plus id="S4.T3.13.13.13.13.1.m1.1.1.cmml" xref="S4.T3.13.13.13.13.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.13.13.13.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.13.13.13.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.13.13.13.13.2" style="padding-left:2.0pt;padding-right:2.0pt;">31.3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.13.13.13.3" style="padding-left:2.0pt;padding-right:2.0pt;">24.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.13.13.13.4" style="padding-left:2.0pt;padding-right:2.0pt;">35.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.13.13.13.5" style="padding-left:2.0pt;padding-right:2.0pt;">32.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.13.13.13.6" style="padding-left:2.0pt;padding-right:2.0pt;">23.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.13.13.13.7" style="padding-left:2.0pt;padding-right:2.0pt;">39.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.13.13.13.8" style="padding-left:2.0pt;padding-right:2.0pt;">40.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.13.13.13.9" style="padding-left:2.0pt;padding-right:2.0pt;">27.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.13.13.13.10" style="padding-left:2.0pt;padding-right:2.0pt;">26.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.14.14.14.14" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.14.14.14.14.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T3.14.14.14.14.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T3.14.14.14.14.1.m1.1a"><mo id="S4.T3.14.14.14.14.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T3.14.14.14.14.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T3.14.14.14.14.1.m1.1b"><plus id="S4.T3.14.14.14.14.1.m1.1.1.cmml" xref="S4.T3.14.14.14.14.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.14.14.14.14.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T3.14.14.14.14.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T3.14.14.14.14.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.14.14.14.14.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.14.14.14.14.2.1" style="background-color:#DAEFF9;">46.8</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.14.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.14.14.14.14.3.1" style="background-color:#DAEFF9;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.14.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.14.14.14.14.4.1" style="background-color:#DAEFF9;">44.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.14.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.14.14.14.14.5.1" style="background-color:#DAEFF9;">51.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.14.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.14.14.14.14.6.1" style="background-color:#DAEFF9;">48.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.14.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.14.14.14.14.7.1" style="background-color:#DAEFF9;">66.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.14.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.14.14.14.14.8.1" style="background-color:#DAEFF9;">56.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.14.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.14.14.14.14.9.1" style="background-color:#DAEFF9;">27.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.14.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.14.14.14.14.10.1" style="background-color:#DAEFF9;">43.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.15.15.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.15.15.15.15.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T3.15.15.15.15.1.m1.1"><semantics id="S4.T3.15.15.15.15.1.m1.1a"><mi id="S4.T3.15.15.15.15.1.m1.1.1" mathvariant="normal" xref="S4.T3.15.15.15.15.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.15.15.15.15.1.m1.1b"><ci id="S4.T3.15.15.15.15.1.m1.1.1.cmml" xref="S4.T3.15.15.15.15.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.15.15.15.15.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T3.15.15.15.15.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.15.15.15.15.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.15.15.15.15.2.1" style="color:#00B04F;">+27.2</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.15.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.15.15.15.15.3.1" style="color:#00B04F;">+17.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.15.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.15.15.15.15.4.1" style="color:#00B04F;">+28.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.15.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.15.15.15.15.5.1" style="color:#00B04F;">+25.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.15.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.15.15.15.15.6.1" style="color:#00B04F;">+30.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.15.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.15.15.15.15.7.1" style="color:#00B04F;">+36.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.15.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.15.15.15.15.8.1" style="color:#00B04F;">+33.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.15.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.15.15.15.15.9.1" style="color:#00B04F;">+13.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.15.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.15.15.15.15.10.1" style="color:#00B04F;">+33.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.18.27.9" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S4.T3.18.18.18.27.9.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.18.18.18.27.9.1.1" style="background-color:#F2F2F2;">Qwen2-VL-7B</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.18.28.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.18.18.18.28.10.1" style="padding-left:2.0pt;padding-right:2.0pt;">Baseline</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.18.18.18.28.10.2" style="padding-left:2.0pt;padding-right:2.0pt;">43.0</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.28.10.3" style="padding-left:2.0pt;padding-right:2.0pt;">35.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.28.10.4" style="padding-left:2.0pt;padding-right:2.0pt;">43.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.28.10.5" style="padding-left:2.0pt;padding-right:2.0pt;">37.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.28.10.6" style="padding-left:2.0pt;padding-right:2.0pt;">36.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.28.10.7" style="padding-left:2.0pt;padding-right:2.0pt;">57.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.28.10.8" style="padding-left:2.0pt;padding-right:2.0pt;">50.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.28.10.9" style="padding-left:2.0pt;padding-right:2.0pt;">37.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.28.10.10" style="padding-left:2.0pt;padding-right:2.0pt;">47.1</td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.18.29.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S4.T3.18.18.18.29.11.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.18.18.18.29.11.1.1">4-shot</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.16.16.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.16.16.16.16.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T3.16.16.16.16.1.m1.1"><semantics id="S4.T3.16.16.16.16.1.m1.1a"><mo id="S4.T3.16.16.16.16.1.m1.1.1" xref="S4.T3.16.16.16.16.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T3.16.16.16.16.1.m1.1b"><plus id="S4.T3.16.16.16.16.1.m1.1.1.cmml" xref="S4.T3.16.16.16.16.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.16.16.16.16.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T3.16.16.16.16.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.16.16.16.16.2" style="padding-left:2.0pt;padding-right:2.0pt;">44.1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.16.16.16.16.3" style="padding-left:2.0pt;padding-right:2.0pt;">41.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.16.16.16.16.4" style="padding-left:2.0pt;padding-right:2.0pt;">51.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.16.16.16.16.5" style="padding-left:2.0pt;padding-right:2.0pt;">35.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.16.16.16.16.6" style="padding-left:2.0pt;padding-right:2.0pt;">30.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.16.16.16.16.7" style="padding-left:2.0pt;padding-right:2.0pt;">60.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.16.16.16.16.8" style="padding-left:2.0pt;padding-right:2.0pt;">52.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.16.16.16.16.9" style="padding-left:2.0pt;padding-right:2.0pt;">38.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.16.16.16.16.10" style="padding-left:2.0pt;padding-right:2.0pt;">41.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.17.17.17.17" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.17.17.17.17.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T3.17.17.17.17.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T3.17.17.17.17.1.m1.1a"><mo id="S4.T3.17.17.17.17.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T3.17.17.17.17.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T3.17.17.17.17.1.m1.1b"><plus id="S4.T3.17.17.17.17.1.m1.1.1.cmml" xref="S4.T3.17.17.17.17.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.17.17.17.17.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T3.17.17.17.17.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T3.17.17.17.17.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.17.17.17.17.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.17.2.1" style="background-color:#DAEFF9;">54.3</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.17.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.17.3.1" style="background-color:#DAEFF9;">44.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.17.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.17.4.1" style="background-color:#DAEFF9;">59.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.17.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.17.5.1" style="background-color:#DAEFF9;">52.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.17.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.17.6.1" style="background-color:#DAEFF9;">46.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.17.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.17.7.1" style="background-color:#DAEFF9;">72.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.17.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.17.8.1" style="background-color:#DAEFF9;">62.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.17.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.17.9.1" style="background-color:#DAEFF9;">41.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.17.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.17.10.1" style="background-color:#DAEFF9;">55.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.18.18.18.18.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T3.18.18.18.18.1.m1.1"><semantics id="S4.T3.18.18.18.18.1.m1.1a"><mi id="S4.T3.18.18.18.18.1.m1.1.1" mathvariant="normal" xref="S4.T3.18.18.18.18.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.18.18.18.18.1.m1.1b"><ci id="S4.T3.18.18.18.18.1.m1.1.1.cmml" xref="S4.T3.18.18.18.18.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.18.18.18.18.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T3.18.18.18.18.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.18.18.18.18.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.18.2.1" style="color:#00B04F;">+11.3</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.18.18.18.18.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.18.3.1" style="color:#00B04F;">+9.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.18.18.18.18.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.18.4.1" style="color:#00B04F;">+16.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.18.18.18.18.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.18.5.1" style="color:#00B04F;">+14.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.18.18.18.18.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.18.6.1" style="color:#00B04F;">+9.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.18.18.18.18.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.18.7.1" style="color:#00B04F;">+15.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.18.18.18.18.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.18.8.1" style="color:#00B04F;">+12.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.18.18.18.18.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.18.9.1" style="color:#00B04F;">+4.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.18.18.18.18.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.18.10.1" style="color:#00B04F;">+7.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a few-shot object detection experiment on the COCO dataset.  The experiment evaluated the performance of different models (baseline, SFT, and Visual-RFT) under various data settings (one-shot, 2-shot, 4-shot, 8-shot, and 16-shot).  The performance is measured using mean Average Precision (mAP) across 8 object categories from the COCO dataset.  The table allows for a comparison of Visual-RFT's performance against supervised fine-tuning (SFT) and a baseline model with varying amounts of training data, highlighting the data efficiency of Visual-RFT.
> <details>
> <summary>read the caption</summary>
> Table 3:  Few-Shot results on COCO dataset of 8 categories. We conducted one-shot, 2-shot, 4-shot, 8-shot, and 16-shot experiments on 8 categories from the COCO dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.6.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.6.6.6.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.6.6.6.7.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.7.1.1.1">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.6.6.6.7.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.7.1.2.1">mAP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.6.6.7.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T4.6.6.6.7.1.3.1" style="width:8.9pt;height:52.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:52.6pt;transform:translate(-21.85pt,-20.88pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T4.6.6.6.7.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.7.1.3.1.1.1">horse buggy</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.6.6.7.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T4.6.6.6.7.1.4.1" style="width:6.9pt;height:12.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:12.8pt;transform:translate(-2.92pt,-2.92pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T4.6.6.6.7.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.7.1.4.1.1.1">die</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.6.6.7.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T4.6.6.6.7.1.5.1" style="width:6.9pt;height:56.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:56.7pt;transform:translate(-24.86pt,-24.86pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T4.6.6.6.7.1.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.7.1.5.1.1.1">kitchen table</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.6.6.7.1.6" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T4.6.6.6.7.1.6.1" style="width:6.9pt;height:28.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.9pt;transform:translate(-10.97pt,-10.97pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T4.6.6.6.7.1.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.7.1.6.1.1.1">omelet</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.6.6.7.1.7" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T4.6.6.6.7.1.7.1" style="width:6.2pt;height:30.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:30.8pt;transform:translate(-12.29pt,-11.32pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T4.6.6.6.7.1.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.7.1.7.1.1.1">papaya</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.6.6.7.1.8" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T4.6.6.6.7.1.8.1" style="width:8.9pt;height:45.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:45.1pt;transform:translate(-18.1pt,-17.13pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T4.6.6.6.7.1.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.7.1.8.1.1.1">stepladder</span></p>
</span></div>
</th>
</tr>
<tr class="ltx_tr" id="S4.T4.6.6.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.6.6.6.8.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2-VL-2B</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.6.6.6.8.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">4.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.6.6.6.8.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">2.9</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.6.6.6.8.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">1.2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.6.6.6.8.2.5" style="padding-left:2.0pt;padding-right:2.0pt;">13.4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.6.6.6.8.2.6" style="padding-left:2.0pt;padding-right:2.0pt;">4.7</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.6.6.6.8.2.7" style="padding-left:2.0pt;padding-right:2.0pt;">1.5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.6.6.6.8.2.8" style="padding-left:2.0pt;padding-right:2.0pt;">0.0</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.m1.1b"><plus id="S4.T4.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">10.0</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">7.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">7.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">34.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;">4.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1.7" style="padding-left:2.0pt;padding-right:2.0pt;">6.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1.8" style="padding-left:2.0pt;padding-right:2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.2.2" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.2.2.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T4.2.2.2.2.1.m1.1a"><mo id="S4.T4.2.2.2.2.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T4.2.2.2.2.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.1.m1.1b"><plus id="S4.T4.2.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.2.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T4.2.2.2.2.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.2.2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.2.2.2.2.2.1" style="background-color:#DAEFF9;">19.4</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.2.2.2.2.3.1" style="background-color:#DAEFF9;">9.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.2.2.2.2.4.1" style="background-color:#DAEFF9;">19.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.2.2.2.2.5.1" style="background-color:#DAEFF9;">42.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.2.2.2.2.6.1" style="background-color:#DAEFF9;">20.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.2.2.2.2.7.1" style="background-color:#DAEFF9;">14.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.2.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.2.2.2.2.8.1" style="background-color:#DAEFF9;">10.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.3.3.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.1.m1.1"><semantics id="S4.T4.3.3.3.3.1.m1.1a"><mi id="S4.T4.3.3.3.3.1.m1.1.1" mathvariant="normal" xref="S4.T4.3.3.3.3.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.1.m1.1b"><ci id="S4.T4.3.3.3.3.1.m1.1.1.cmml" xref="S4.T4.3.3.3.3.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.3.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.3.2.1" style="color:#00B04F;">+15.4</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.3.3.1" style="color:#00B04F;">+6.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.3.4.1" style="color:#00B04F;">+18.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.3.5.1" style="color:#00B04F;">+29.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.3.6.1" style="color:#00B04F;">+15.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.3.7.1" style="color:#00B04F;">+13.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.3.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.3.8.1" style="color:#00B04F;">+10.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.6.6.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.6.6.6.9.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2-VL-7B</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.6.6.6.9.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">15.4</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.6.9.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">19.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.6.9.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">21.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.6.9.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">14.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.6.9.1.6" style="padding-left:2.0pt;padding-right:2.0pt;">18.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.6.9.1.7" style="padding-left:2.0pt;padding-right:2.0pt;">18.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.6.9.1.8" style="padding-left:2.0pt;padding-right:2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.4.4.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.1.m1.1"><semantics id="S4.T4.4.4.4.4.1.m1.1a"><mo id="S4.T4.4.4.4.4.1.m1.1.1" xref="S4.T4.4.4.4.4.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.1.m1.1b"><plus id="S4.T4.4.4.4.4.1.m1.1.1.cmml" xref="S4.T4.4.4.4.4.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.4.4.4.4.2" style="padding-left:2.0pt;padding-right:2.0pt;">27.6</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;">26.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">21.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;">49.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.4.6" style="padding-left:2.0pt;padding-right:2.0pt;">29.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.4.7" style="padding-left:2.0pt;padding-right:2.0pt;">25.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.4.8" style="padding-left:2.0pt;padding-right:2.0pt;">12.7</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.5.5" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.5.5.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T4.5.5.5.5.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T4.5.5.5.5.1.m1.1a"><mo id="S4.T4.5.5.5.5.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T4.5.5.5.5.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.5.1.m1.1b"><plus id="S4.T4.5.5.5.5.1.m1.1.1.cmml" xref="S4.T4.5.5.5.5.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.5.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.5.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T4.5.5.5.5.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.5.5.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.5.5.5.2.1" style="background-color:#DAEFF9;">33.8</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.5.5.5.3.1" style="background-color:#DAEFF9;">26.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.5.5.5.4.1" style="background-color:#DAEFF9;">27.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.5.5.5.5.1" style="background-color:#DAEFF9;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.5.5.5.6.1" style="background-color:#DAEFF9;">23.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.5.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.5.5.5.7.1" style="background-color:#DAEFF9;">21.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.5.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.5.5.5.8.1" style="background-color:#DAEFF9;">29.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.6.6.6.6.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T4.6.6.6.6.1.m1.1"><semantics id="S4.T4.6.6.6.6.1.m1.1a"><mi id="S4.T4.6.6.6.6.1.m1.1.1" mathvariant="normal" xref="S4.T4.6.6.6.6.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.6.6.1.m1.1b"><ci id="S4.T4.6.6.6.6.1.m1.1.1.cmml" xref="S4.T4.6.6.6.6.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.6.6.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.6.6.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.6.6.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.6.2.1" style="color:#00B04F;">+18.4</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.6.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.6.3.1" style="color:#00B04F;">+6.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.6.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.6.4.1" style="color:#00B04F;">+5.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.6.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.6.5.1" style="color:#00B04F;">+56.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.6.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.6.6.1" style="color:#00B04F;">+5.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.6.6.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.6.7.1" style="color:#00B04F;">+2.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.6.6.6.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.6.8.1" style="color:#00B04F;">+29.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a few-shot object detection experiment conducted on the LVIS dataset.  Specifically, it focuses on six rare categories within LVIS, evaluating the performance of different models (Qwen2-VL-2B and Qwen2-VL-7B) using both supervised fine-tuning (SFT) and the proposed Visual-RFT method.  The experiment involved a 10-shot setting for each category, meaning 10 images per category were used for training.  The table displays the mean average precision (mAP) and its breakdown across individual categories, revealing the effectiveness of Visual-RFT compared to SFT in handling data scarcity for object detection of rare items.
> <details>
> <summary>read the caption</summary>
> Table 4:  Few-shot results on LVIS dataset of 6 rare categories. We conducted 10-shot experiments on 6 rare categories from the LVIS dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.6.6.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.6.6.6.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T5.6.6.6.7.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.6.7.1.1.1">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T5.6.6.6.7.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.6.7.1.2.1">mAP</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.6.6.6.7.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.6.7.1.3.1">bird</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.6.6.6.7.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.6.7.1.4.1">feline-or-canid</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.6.6.6.7.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.6.7.1.5.1">serpent</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.6.6.6.7.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.6.7.1.6.1">slime</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.6.6.6.7.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.6.7.1.7.1">wyvern</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.6.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.6.6.6.8.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2-VL-2B</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.6.6.6.8.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">20.6</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.6.6.8.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">12.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.6.6.8.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">19.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.6.6.8.2.5" style="padding-left:2.0pt;padding-right:2.0pt;">25.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.6.6.8.2.6" style="padding-left:2.0pt;padding-right:2.0pt;">18.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.6.6.8.2.7" style="padding-left:2.0pt;padding-right:2.0pt;">26.4</td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.6.6.9.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S4.T5.6.6.6.9.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T5.6.6.6.9.3.1.1">4-shot</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.1.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.1.m1.1.1" xref="S4.T5.1.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.1.m1.1b"><plus id="S4.T5.1.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.1.1.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">26.8</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">19.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">22.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">26.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;">33.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.1.1.7" style="padding-left:2.0pt;padding-right:2.0pt;">31.8</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.2.2" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.2.2.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T5.2.2.2.2.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T5.2.2.2.2.1.m1.1a"><mo id="S4.T5.2.2.2.2.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T5.2.2.2.2.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.1.m1.1b"><plus id="S4.T5.2.2.2.2.1.m1.1.1.cmml" xref="S4.T5.2.2.2.2.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T5.2.2.2.2.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.2.2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.2.2.2.2.2.1" style="background-color:#DAEFF9;">61.8</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.2.2.2.2.3.1" style="background-color:#DAEFF9;">63.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.2.2.2.2.4.1" style="background-color:#DAEFF9;">53.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.2.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.2.2.2.2.5.1" style="background-color:#DAEFF9;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.2.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.2.2.2.2.6.1" style="background-color:#DAEFF9;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.2.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.2.2.2.2.7.1" style="background-color:#DAEFF9;">57.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.3.3.3.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T5.3.3.3.3.1.m1.1"><semantics id="S4.T5.3.3.3.3.1.m1.1a"><mi id="S4.T5.3.3.3.3.1.m1.1.1" mathvariant="normal" xref="S4.T5.3.3.3.3.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.3.1.m1.1b"><ci id="S4.T5.3.3.3.3.1.m1.1.1.cmml" xref="S4.T5.3.3.3.3.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.3.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.3.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.3.3.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.3.3.2.1" style="color:#00B04F;">+41.2</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.3.3.3.1" style="color:#00B04F;">+51.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.3.3.4.1" style="color:#00B04F;">+33.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.3.3.5.1" style="color:#00B04F;">+44.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.3.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.3.3.6.1" style="color:#00B04F;">+46.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.3.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.3.3.7.1" style="color:#00B04F;">+31.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.6.6.10.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S4.T5.6.6.6.10.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T5.6.6.6.10.4.1.1">16-shot</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T5.4.4.4.4.1.m1.1"><semantics id="S4.T5.4.4.4.4.1.m1.1a"><mo id="S4.T5.4.4.4.4.1.m1.1.1" xref="S4.T5.4.4.4.4.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.4.4.1.m1.1b"><plus id="S4.T5.4.4.4.4.1.m1.1.1.cmml" xref="S4.T5.4.4.4.4.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.4.4.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.4.4.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.4.4.2" style="padding-left:2.0pt;padding-right:2.0pt;">51.3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;">42.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">44.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;">56.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.4.4.6" style="padding-left:2.0pt;padding-right:2.0pt;">61.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.4.4.7" style="padding-left:2.0pt;padding-right:2.0pt;">52.0</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.5.5.5" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.5.5.5.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T5.5.5.5.5.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T5.5.5.5.5.1.m1.1a"><mo id="S4.T5.5.5.5.5.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T5.5.5.5.5.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T5.5.5.5.5.1.m1.1b"><plus id="S4.T5.5.5.5.5.1.m1.1.1.cmml" xref="S4.T5.5.5.5.5.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.5.5.5.5.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T5.5.5.5.5.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T5.5.5.5.5.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.5.5.5.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.5.5.5.5.2.1" style="background-color:#DAEFF9;">63.4</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.5.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.5.5.5.5.3.1" style="background-color:#DAEFF9;">59.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.5.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.5.5.5.5.4.1" style="background-color:#DAEFF9;">50.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.5.5.5.5.5.1" style="background-color:#DAEFF9;">76.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.5.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.5.5.5.5.6.1" style="background-color:#DAEFF9;">71.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.5.5.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.5.5.5.5.7.1" style="background-color:#DAEFF9;">58.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.6.6.6.6.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T5.6.6.6.6.1.m1.1"><semantics id="S4.T5.6.6.6.6.1.m1.1a"><mi id="S4.T5.6.6.6.6.1.m1.1.1" mathvariant="normal" xref="S4.T5.6.6.6.6.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T5.6.6.6.6.1.m1.1b"><ci id="S4.T5.6.6.6.6.1.m1.1.1.cmml" xref="S4.T5.6.6.6.6.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.6.6.6.6.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T5.6.6.6.6.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.6.6.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.6.6.2.1" style="color:#00B04F;">+42.8</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.6.6.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.6.6.3.1" style="color:#00B04F;">+47.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.6.6.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.6.6.4.1" style="color:#00B04F;">+56.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.6.6.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.6.6.5.1" style="color:#00B04F;">+50.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.6.6.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.6.6.6.1" style="color:#00B04F;">+53.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.6.6.6.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.6.6.7.1" style="color:#00B04F;">+31.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a few-shot learning experiment on the Monster Girls (MG) dataset, which consists of five categories of anime-style monster girls.  The experiment evaluates the performance of different models (Qwen2-VL-2B and Qwen2-VL-7B) under two settings: supervised fine-tuning (SFT) and Visual-RFT (Visual Reinforcement Fine-Tuning). The use of out-of-domain data (i.e., images outside the standard training categories) increases the complexity of object recognition and reasoning for the models.  The table shows the mean average precision (mAP) for each model and setting, highlighting the improved generalization ability of Visual-RFT compared to SFT in challenging, out-of-domain visual tasks, even when data is scarce (4-shot and 16-shot settings). The mAP scores for each category (bird, feline-or-canid, serpent, slime, and wyvern) are also provided.
> <details>
> <summary>read the caption</summary>
> Table 5:  Few-shot results on MG dataset of 5 categories. By introducing out-of-domain data, we increased the difficulty of model recognition and reasoning, further demonstrating the strong generalization ability of reinforcement fine-tuning in visual perception tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T6.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T6.3.3.4">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1">mIoU<math alttext="{}_{\text{test}}" class="ltx_Math" display="inline" id="S4.T6.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.m1.1a"><msub id="S4.T6.1.1.1.m1.1.1" xref="S4.T6.1.1.1.m1.1.1.cmml"><mi id="S4.T6.1.1.1.m1.1.1a" xref="S4.T6.1.1.1.m1.1.1.cmml"></mi><mtext id="S4.T6.1.1.1.m1.1.1.1" xref="S4.T6.1.1.1.m1.1.1.1a.cmml">test</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.m1.1b"><apply id="S4.T6.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.m1.1.1"><ci id="S4.T6.1.1.1.m1.1.1.1a.cmml" xref="S4.T6.1.1.1.m1.1.1.1"><mtext id="S4.T6.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T6.1.1.1.m1.1.1.1">test</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.m1.1c">{}_{\text{test}}</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.m1.1d">start_FLOATSUBSCRIPT test end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.2.2.2">mIoU<math alttext="{}_{\text{val}}" class="ltx_Math" display="inline" id="S4.T6.2.2.2.m1.1"><semantics id="S4.T6.2.2.2.m1.1a"><msub id="S4.T6.2.2.2.m1.1.1" xref="S4.T6.2.2.2.m1.1.1.cmml"><mi id="S4.T6.2.2.2.m1.1.1a" xref="S4.T6.2.2.2.m1.1.1.cmml"></mi><mtext id="S4.T6.2.2.2.m1.1.1.1" xref="S4.T6.2.2.2.m1.1.1.1a.cmml">val</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.m1.1b"><apply id="S4.T6.2.2.2.m1.1.1.cmml" xref="S4.T6.2.2.2.m1.1.1"><ci id="S4.T6.2.2.2.m1.1.1.1a.cmml" xref="S4.T6.2.2.2.m1.1.1.1"><mtext id="S4.T6.2.2.2.m1.1.1.1.cmml" mathsize="70%" xref="S4.T6.2.2.2.m1.1.1.1">val</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.m1.1c">{}_{\text{val}}</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.m1.1d">start_FLOATSUBSCRIPT val end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.3.3.3">gIoU<math alttext="{}_{\text{test}}" class="ltx_Math" display="inline" id="S4.T6.3.3.3.m1.1"><semantics id="S4.T6.3.3.3.m1.1a"><msub id="S4.T6.3.3.3.m1.1.1" xref="S4.T6.3.3.3.m1.1.1.cmml"><mi id="S4.T6.3.3.3.m1.1.1a" xref="S4.T6.3.3.3.m1.1.1.cmml"></mi><mtext id="S4.T6.3.3.3.m1.1.1.1" xref="S4.T6.3.3.3.m1.1.1.1a.cmml">test</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T6.3.3.3.m1.1b"><apply id="S4.T6.3.3.3.m1.1.1.cmml" xref="S4.T6.3.3.3.m1.1.1"><ci id="S4.T6.3.3.3.m1.1.1.1a.cmml" xref="S4.T6.3.3.3.m1.1.1.1"><mtext id="S4.T6.3.3.3.m1.1.1.1.cmml" mathsize="70%" xref="S4.T6.3.3.3.m1.1.1.1">test</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.3.3.m1.1c">{}_{\text{test}}</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.3.3.m1.1d">start_FLOATSUBSCRIPT test end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.9.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.9.10.1.1">OV-Seg <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01785v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.10.1.2">28.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.10.1.3">30.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.10.1.4">26.1</td>
</tr>
<tr class="ltx_tr" id="S4.T6.9.11.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.9.11.2.1">X-Decoder <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01785v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T6.9.11.2.2">28.5</td>
<td class="ltx_td ltx_align_center" id="S4.T6.9.11.2.3">29.1</td>
<td class="ltx_td ltx_align_center" id="S4.T6.9.11.2.4">24.3</td>
</tr>
<tr class="ltx_tr" id="S4.T6.9.12.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.9.12.3.1">GroundedSAM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01785v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T6.9.12.3.2">26.2</td>
<td class="ltx_td ltx_align_center" id="S4.T6.9.12.3.3">28.6</td>
<td class="ltx_td ltx_align_center" id="S4.T6.9.12.3.4">21.3</td>
</tr>
<tr class="ltx_tr" id="S4.T6.9.13.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.9.13.4.1">Qwen2-VL-2B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.13.4.2">26.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.13.4.3">30.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.13.4.4">25.3</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.4.4.1">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T6.4.4.1.m1.1"><semantics id="S4.T6.4.4.1.m1.1a"><mo id="S4.T6.4.4.1.m1.1.1" xref="S4.T6.4.4.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T6.4.4.1.m1.1b"><plus id="S4.T6.4.4.1.m1.1.1.cmml" xref="S4.T6.4.4.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.4.4.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T6.4.4.1.m1.1d">+</annotation></semantics></math> SFT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.4.2">28.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.4.3">29.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.4.4">25.3</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.5" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.5.5.1">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T6.5.5.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T6.5.5.1.m1.1a"><mo id="S4.T6.5.5.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T6.5.5.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T6.5.5.1.m1.1b"><plus id="S4.T6.5.5.1.m1.1.1.cmml" xref="S4.T6.5.5.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.5.5.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T6.5.5.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T6.5.5.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.2"><span class="ltx_text" id="S4.T6.5.5.2.1" style="background-color:#DAEFF9;">37.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.3"><span class="ltx_text" id="S4.T6.5.5.3.1" style="background-color:#DAEFF9;">34.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.4"><span class="ltx_text" id="S4.T6.5.5.4.1" style="background-color:#DAEFF9;">34.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.6.6.1"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T6.6.6.1.m1.1"><semantics id="S4.T6.6.6.1.m1.1a"><mi id="S4.T6.6.6.1.m1.1.1" mathvariant="normal" xref="S4.T6.6.6.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T6.6.6.1.m1.1b"><ci id="S4.T6.6.6.1.m1.1.1.cmml" xref="S4.T6.6.6.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.6.6.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T6.6.6.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.2"><span class="ltx_text ltx_font_bold" id="S4.T6.6.6.2.1" style="color:#00B04F;">+10.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.3"><span class="ltx_text ltx_font_bold" id="S4.T6.6.6.3.1" style="color:#00B04F;">+4.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.4"><span class="ltx_text ltx_font_bold" id="S4.T6.6.6.4.1" style="color:#00B04F;">+9.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.9.14.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.9.14.5.1">Qwen2-VL-7B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.14.5.2">40.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.14.5.3">45.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.14.5.4">38.0</td>
</tr>
<tr class="ltx_tr" id="S4.T6.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.7.7.1">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T6.7.7.1.m1.1"><semantics id="S4.T6.7.7.1.m1.1a"><mo id="S4.T6.7.7.1.m1.1.1" xref="S4.T6.7.7.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T6.7.7.1.m1.1b"><plus id="S4.T6.7.7.1.m1.1.1.cmml" xref="S4.T6.7.7.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.7.7.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T6.7.7.1.m1.1d">+</annotation></semantics></math> SFT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.7.7.2">39.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.7.7.3">43.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.7.7.4">37.2</td>
</tr>
<tr class="ltx_tr" id="S4.T6.8.8" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.8.8.1">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T6.8.8.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T6.8.8.1.m1.1a"><mo id="S4.T6.8.8.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T6.8.8.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T6.8.8.1.m1.1b"><plus id="S4.T6.8.8.1.m1.1.1.cmml" xref="S4.T6.8.8.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.8.8.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T6.8.8.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T6.8.8.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T6.8.8.2"><span class="ltx_text" id="S4.T6.8.8.2.1" style="background-color:#DAEFF9;">43.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.8.8.3"><span class="ltx_text" id="S4.T6.8.8.3.1" style="background-color:#DAEFF9;">47.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.8.8.4"><span class="ltx_text" id="S4.T6.8.8.4.1" style="background-color:#DAEFF9;">43.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T6.9.9.1"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T6.9.9.1.m1.1"><semantics id="S4.T6.9.9.1.m1.1a"><mi id="S4.T6.9.9.1.m1.1.1" mathvariant="normal" xref="S4.T6.9.9.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T6.9.9.1.m1.1b"><ci id="S4.T6.9.9.1.m1.1.1.cmml" xref="S4.T6.9.9.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.9.9.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T6.9.9.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.9.9.2"><span class="ltx_text ltx_font_bold" id="S4.T6.9.9.2.1" style="color:#00B04F;">+3.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.9.9.3"><span class="ltx_text ltx_font_bold" id="S4.T6.9.9.3.1" style="color:#00B04F;">+1.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.9.9.4"><span class="ltx_text ltx_font_bold" id="S4.T6.9.9.4.1" style="color:#00B04F;">+5.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of reasoning grounding experiments conducted on the LISA dataset [11].  The experiment used 239 training images.  It compares the performance of Visual-RFT (Visual Reinforcement Fine-Tuning) against Supervised Fine-Tuning (SFT). The comparison is done across three different evaluation metrics: mIoUtest, mIoUval, and gIoUtest.  The table shows that Visual-RFT achieves superior results compared to SFT on all metrics, indicating its improved ability in reasoning grounding tasks.
> <details>
> <summary>read the caption</summary>
> Table 6: Reasoning Grounding Results on LISA [11]. Visual-RFT surpasses SFT in reasoning grounding with 239 training images.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T7.9.9.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T7.3.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T7.3.3.3.3.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.3.3.3.3.4.1">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.1.1.1.1.1" style="padding-left:10.0pt;padding-right:10.0pt;"><math alttext="mAP_{n}" class="ltx_Math" display="inline" id="S4.T7.1.1.1.1.1.m1.1"><semantics id="S4.T7.1.1.1.1.1.m1.1a"><mrow id="S4.T7.1.1.1.1.1.m1.1.1" xref="S4.T7.1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T7.1.1.1.1.1.m1.1.1.2" xref="S4.T7.1.1.1.1.1.m1.1.1.2.cmml">m</mi><mo id="S4.T7.1.1.1.1.1.m1.1.1.1" xref="S4.T7.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T7.1.1.1.1.1.m1.1.1.3" xref="S4.T7.1.1.1.1.1.m1.1.1.3.cmml">A</mi><mo id="S4.T7.1.1.1.1.1.m1.1.1.1a" xref="S4.T7.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><msub id="S4.T7.1.1.1.1.1.m1.1.1.4" xref="S4.T7.1.1.1.1.1.m1.1.1.4.cmml"><mi id="S4.T7.1.1.1.1.1.m1.1.1.4.2" xref="S4.T7.1.1.1.1.1.m1.1.1.4.2.cmml">P</mi><mi id="S4.T7.1.1.1.1.1.m1.1.1.4.3" xref="S4.T7.1.1.1.1.1.m1.1.1.4.3.cmml">n</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T7.1.1.1.1.1.m1.1b"><apply id="S4.T7.1.1.1.1.1.m1.1.1.cmml" xref="S4.T7.1.1.1.1.1.m1.1.1"><times id="S4.T7.1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T7.1.1.1.1.1.m1.1.1.1"></times><ci id="S4.T7.1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T7.1.1.1.1.1.m1.1.1.2">𝑚</ci><ci id="S4.T7.1.1.1.1.1.m1.1.1.3.cmml" xref="S4.T7.1.1.1.1.1.m1.1.1.3">𝐴</ci><apply id="S4.T7.1.1.1.1.1.m1.1.1.4.cmml" xref="S4.T7.1.1.1.1.1.m1.1.1.4"><csymbol cd="ambiguous" id="S4.T7.1.1.1.1.1.m1.1.1.4.1.cmml" xref="S4.T7.1.1.1.1.1.m1.1.1.4">subscript</csymbol><ci id="S4.T7.1.1.1.1.1.m1.1.1.4.2.cmml" xref="S4.T7.1.1.1.1.1.m1.1.1.4.2">𝑃</ci><ci id="S4.T7.1.1.1.1.1.m1.1.1.4.3.cmml" xref="S4.T7.1.1.1.1.1.m1.1.1.4.3">𝑛</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.1.1.1.1.1.m1.1c">mAP_{n}</annotation><annotation encoding="application/x-llamapun" id="S4.T7.1.1.1.1.1.m1.1d">italic_m italic_A italic_P start_POSTSUBSCRIPT italic_n end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.2.2.2.2.2" style="padding-left:10.0pt;padding-right:10.0pt;"><math alttext="mAP_{b}" class="ltx_Math" display="inline" id="S4.T7.2.2.2.2.2.m1.1"><semantics id="S4.T7.2.2.2.2.2.m1.1a"><mrow id="S4.T7.2.2.2.2.2.m1.1.1" xref="S4.T7.2.2.2.2.2.m1.1.1.cmml"><mi id="S4.T7.2.2.2.2.2.m1.1.1.2" xref="S4.T7.2.2.2.2.2.m1.1.1.2.cmml">m</mi><mo id="S4.T7.2.2.2.2.2.m1.1.1.1" xref="S4.T7.2.2.2.2.2.m1.1.1.1.cmml">⁢</mo><mi id="S4.T7.2.2.2.2.2.m1.1.1.3" xref="S4.T7.2.2.2.2.2.m1.1.1.3.cmml">A</mi><mo id="S4.T7.2.2.2.2.2.m1.1.1.1a" xref="S4.T7.2.2.2.2.2.m1.1.1.1.cmml">⁢</mo><msub id="S4.T7.2.2.2.2.2.m1.1.1.4" xref="S4.T7.2.2.2.2.2.m1.1.1.4.cmml"><mi id="S4.T7.2.2.2.2.2.m1.1.1.4.2" xref="S4.T7.2.2.2.2.2.m1.1.1.4.2.cmml">P</mi><mi id="S4.T7.2.2.2.2.2.m1.1.1.4.3" xref="S4.T7.2.2.2.2.2.m1.1.1.4.3.cmml">b</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T7.2.2.2.2.2.m1.1b"><apply id="S4.T7.2.2.2.2.2.m1.1.1.cmml" xref="S4.T7.2.2.2.2.2.m1.1.1"><times id="S4.T7.2.2.2.2.2.m1.1.1.1.cmml" xref="S4.T7.2.2.2.2.2.m1.1.1.1"></times><ci id="S4.T7.2.2.2.2.2.m1.1.1.2.cmml" xref="S4.T7.2.2.2.2.2.m1.1.1.2">𝑚</ci><ci id="S4.T7.2.2.2.2.2.m1.1.1.3.cmml" xref="S4.T7.2.2.2.2.2.m1.1.1.3">𝐴</ci><apply id="S4.T7.2.2.2.2.2.m1.1.1.4.cmml" xref="S4.T7.2.2.2.2.2.m1.1.1.4"><csymbol cd="ambiguous" id="S4.T7.2.2.2.2.2.m1.1.1.4.1.cmml" xref="S4.T7.2.2.2.2.2.m1.1.1.4">subscript</csymbol><ci id="S4.T7.2.2.2.2.2.m1.1.1.4.2.cmml" xref="S4.T7.2.2.2.2.2.m1.1.1.4.2">𝑃</ci><ci id="S4.T7.2.2.2.2.2.m1.1.1.4.3.cmml" xref="S4.T7.2.2.2.2.2.m1.1.1.4.3">𝑏</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.2.2.2.2.2.m1.1c">mAP_{b}</annotation><annotation encoding="application/x-llamapun" id="S4.T7.2.2.2.2.2.m1.1d">italic_m italic_A italic_P start_POSTSUBSCRIPT italic_b end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.3.3.3.3.3" style="padding-left:10.0pt;padding-right:10.0pt;"><math alttext="mAP_{all}" class="ltx_Math" display="inline" id="S4.T7.3.3.3.3.3.m1.1"><semantics id="S4.T7.3.3.3.3.3.m1.1a"><mrow id="S4.T7.3.3.3.3.3.m1.1.1" xref="S4.T7.3.3.3.3.3.m1.1.1.cmml"><mi id="S4.T7.3.3.3.3.3.m1.1.1.2" xref="S4.T7.3.3.3.3.3.m1.1.1.2.cmml">m</mi><mo id="S4.T7.3.3.3.3.3.m1.1.1.1" xref="S4.T7.3.3.3.3.3.m1.1.1.1.cmml">⁢</mo><mi id="S4.T7.3.3.3.3.3.m1.1.1.3" xref="S4.T7.3.3.3.3.3.m1.1.1.3.cmml">A</mi><mo id="S4.T7.3.3.3.3.3.m1.1.1.1a" xref="S4.T7.3.3.3.3.3.m1.1.1.1.cmml">⁢</mo><msub id="S4.T7.3.3.3.3.3.m1.1.1.4" xref="S4.T7.3.3.3.3.3.m1.1.1.4.cmml"><mi id="S4.T7.3.3.3.3.3.m1.1.1.4.2" xref="S4.T7.3.3.3.3.3.m1.1.1.4.2.cmml">P</mi><mrow id="S4.T7.3.3.3.3.3.m1.1.1.4.3" xref="S4.T7.3.3.3.3.3.m1.1.1.4.3.cmml"><mi id="S4.T7.3.3.3.3.3.m1.1.1.4.3.2" xref="S4.T7.3.3.3.3.3.m1.1.1.4.3.2.cmml">a</mi><mo id="S4.T7.3.3.3.3.3.m1.1.1.4.3.1" xref="S4.T7.3.3.3.3.3.m1.1.1.4.3.1.cmml">⁢</mo><mi id="S4.T7.3.3.3.3.3.m1.1.1.4.3.3" xref="S4.T7.3.3.3.3.3.m1.1.1.4.3.3.cmml">l</mi><mo id="S4.T7.3.3.3.3.3.m1.1.1.4.3.1a" xref="S4.T7.3.3.3.3.3.m1.1.1.4.3.1.cmml">⁢</mo><mi id="S4.T7.3.3.3.3.3.m1.1.1.4.3.4" xref="S4.T7.3.3.3.3.3.m1.1.1.4.3.4.cmml">l</mi></mrow></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T7.3.3.3.3.3.m1.1b"><apply id="S4.T7.3.3.3.3.3.m1.1.1.cmml" xref="S4.T7.3.3.3.3.3.m1.1.1"><times id="S4.T7.3.3.3.3.3.m1.1.1.1.cmml" xref="S4.T7.3.3.3.3.3.m1.1.1.1"></times><ci id="S4.T7.3.3.3.3.3.m1.1.1.2.cmml" xref="S4.T7.3.3.3.3.3.m1.1.1.2">𝑚</ci><ci id="S4.T7.3.3.3.3.3.m1.1.1.3.cmml" xref="S4.T7.3.3.3.3.3.m1.1.1.3">𝐴</ci><apply id="S4.T7.3.3.3.3.3.m1.1.1.4.cmml" xref="S4.T7.3.3.3.3.3.m1.1.1.4"><csymbol cd="ambiguous" id="S4.T7.3.3.3.3.3.m1.1.1.4.1.cmml" xref="S4.T7.3.3.3.3.3.m1.1.1.4">subscript</csymbol><ci id="S4.T7.3.3.3.3.3.m1.1.1.4.2.cmml" xref="S4.T7.3.3.3.3.3.m1.1.1.4.2">𝑃</ci><apply id="S4.T7.3.3.3.3.3.m1.1.1.4.3.cmml" xref="S4.T7.3.3.3.3.3.m1.1.1.4.3"><times id="S4.T7.3.3.3.3.3.m1.1.1.4.3.1.cmml" xref="S4.T7.3.3.3.3.3.m1.1.1.4.3.1"></times><ci id="S4.T7.3.3.3.3.3.m1.1.1.4.3.2.cmml" xref="S4.T7.3.3.3.3.3.m1.1.1.4.3.2">𝑎</ci><ci id="S4.T7.3.3.3.3.3.m1.1.1.4.3.3.cmml" xref="S4.T7.3.3.3.3.3.m1.1.1.4.3.3">𝑙</ci><ci id="S4.T7.3.3.3.3.3.m1.1.1.4.3.4.cmml" xref="S4.T7.3.3.3.3.3.m1.1.1.4.3.4">𝑙</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.3.3.3.3.3.m1.1c">mAP_{all}</annotation><annotation encoding="application/x-llamapun" id="S4.T7.3.3.3.3.3.m1.1d">italic_m italic_A italic_P start_POSTSUBSCRIPT italic_a italic_l italic_l end_POSTSUBSCRIPT</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T7.9.9.9.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T7.9.9.9.10.1.1" style="padding-left:10.0pt;padding-right:10.0pt;">Qwen2-VL-2B</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.9.9.9.10.1.2" style="padding-left:10.0pt;padding-right:10.0pt;">9.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.9.9.9.10.1.3" style="padding-left:10.0pt;padding-right:10.0pt;">6.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.9.9.9.10.1.4" style="padding-left:10.0pt;padding-right:10.0pt;">6.7</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T7.4.4.4.4.1" style="padding-left:10.0pt;padding-right:10.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T7.4.4.4.4.1.m1.1"><semantics id="S4.T7.4.4.4.4.1.m1.1a"><mo id="S4.T7.4.4.4.4.1.m1.1.1" xref="S4.T7.4.4.4.4.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T7.4.4.4.4.1.m1.1b"><plus id="S4.T7.4.4.4.4.1.m1.1.1.cmml" xref="S4.T7.4.4.4.4.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.4.4.4.4.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T7.4.4.4.4.1.m1.1d">+</annotation></semantics></math> SFT</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.4.4.4.4.2" style="padding-left:10.0pt;padding-right:10.0pt;">13.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.4.4.4.4.3" style="padding-left:10.0pt;padding-right:10.0pt;">7.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.4.4.4.4.4" style="padding-left:10.0pt;padding-right:10.0pt;">8.9</td>
</tr>
<tr class="ltx_tr" id="S4.T7.5.5.5.5" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.5.5.5.5.1" style="padding-left:10.0pt;padding-right:10.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T7.5.5.5.5.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T7.5.5.5.5.1.m1.1a"><mo id="S4.T7.5.5.5.5.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T7.5.5.5.5.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T7.5.5.5.5.1.m1.1b"><plus id="S4.T7.5.5.5.5.1.m1.1.1.cmml" xref="S4.T7.5.5.5.5.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.5.5.5.5.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T7.5.5.5.5.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T7.5.5.5.5.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<td class="ltx_td ltx_align_left" id="S4.T7.5.5.5.5.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T7.5.5.5.5.2.1" style="background-color:#DAEFF9;">31.3</span></td>
<td class="ltx_td ltx_align_left" id="S4.T7.5.5.5.5.3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T7.5.5.5.5.3.1" style="background-color:#DAEFF9;">20.6</span></td>
<td class="ltx_td ltx_align_left" id="S4.T7.5.5.5.5.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T7.5.5.5.5.4.1" style="background-color:#DAEFF9;">22.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.6.6.6.6.1" style="padding-left:10.0pt;padding-right:10.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T7.6.6.6.6.1.m1.1"><semantics id="S4.T7.6.6.6.6.1.m1.1a"><mi id="S4.T7.6.6.6.6.1.m1.1.1" mathvariant="normal" xref="S4.T7.6.6.6.6.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T7.6.6.6.6.1.m1.1b"><ci id="S4.T7.6.6.6.6.1.m1.1.1.cmml" xref="S4.T7.6.6.6.6.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.6.6.6.6.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T7.6.6.6.6.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_left" id="S4.T7.6.6.6.6.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.6.6.6.6.2.1" style="color:#00B04F;">+21.5</span></td>
<td class="ltx_td ltx_align_left" id="S4.T7.6.6.6.6.3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.6.6.6.6.3.1" style="color:#00B04F;">+14.6</span></td>
<td class="ltx_td ltx_align_left" id="S4.T7.6.6.6.6.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.6.6.6.6.4.1" style="color:#00B04F;">+15.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.9.9.9.11.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T7.9.9.9.11.2.1" style="padding-left:10.0pt;padding-right:10.0pt;">Qwen2-VL-7B</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.9.9.9.11.2.2" style="padding-left:10.0pt;padding-right:10.0pt;">26.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.9.9.9.11.2.3" style="padding-left:10.0pt;padding-right:10.0pt;">17.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.9.9.9.11.2.4" style="padding-left:10.0pt;padding-right:10.0pt;">19.2</td>
</tr>
<tr class="ltx_tr" id="S4.T7.7.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T7.7.7.7.7.1" style="padding-left:10.0pt;padding-right:10.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T7.7.7.7.7.1.m1.1"><semantics id="S4.T7.7.7.7.7.1.m1.1a"><mo id="S4.T7.7.7.7.7.1.m1.1.1" xref="S4.T7.7.7.7.7.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T7.7.7.7.7.1.m1.1b"><plus id="S4.T7.7.7.7.7.1.m1.1.1.cmml" xref="S4.T7.7.7.7.7.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.7.7.7.7.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T7.7.7.7.7.1.m1.1d">+</annotation></semantics></math> SFT</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.7.7.7.7.2" style="padding-left:10.0pt;padding-right:10.0pt;">25.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.7.7.7.7.3" style="padding-left:10.0pt;padding-right:10.0pt;">17.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.7.7.7.7.4" style="padding-left:10.0pt;padding-right:10.0pt;">19.0</td>
</tr>
<tr class="ltx_tr" id="S4.T7.8.8.8.8" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.8.8.8.8.1" style="padding-left:10.0pt;padding-right:10.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T7.8.8.8.8.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T7.8.8.8.8.1.m1.1a"><mo id="S4.T7.8.8.8.8.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T7.8.8.8.8.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T7.8.8.8.8.1.m1.1b"><plus id="S4.T7.8.8.8.8.1.m1.1.1.cmml" xref="S4.T7.8.8.8.8.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.8.8.8.8.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T7.8.8.8.8.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T7.8.8.8.8.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<td class="ltx_td ltx_align_left" id="S4.T7.8.8.8.8.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T7.8.8.8.8.2.1" style="background-color:#DAEFF9;">35.8</span></td>
<td class="ltx_td ltx_align_left" id="S4.T7.8.8.8.8.3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T7.8.8.8.8.3.1" style="background-color:#DAEFF9;">25.4</span></td>
<td class="ltx_td ltx_align_left" id="S4.T7.8.8.8.8.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T7.8.8.8.8.4.1" style="background-color:#DAEFF9;">27.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.9.9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T7.9.9.9.9.1" style="padding-left:10.0pt;padding-right:10.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T7.9.9.9.9.1.m1.1"><semantics id="S4.T7.9.9.9.9.1.m1.1a"><mi id="S4.T7.9.9.9.9.1.m1.1.1" mathvariant="normal" xref="S4.T7.9.9.9.9.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T7.9.9.9.9.1.m1.1b"><ci id="S4.T7.9.9.9.9.1.m1.1.1.cmml" xref="S4.T7.9.9.9.9.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.9.9.9.9.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T7.9.9.9.9.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T7.9.9.9.9.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.9.9.9.9.2.1" style="color:#00B04F;">+9.5</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T7.9.9.9.9.3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.9.9.9.9.3.1" style="color:#00B04F;">+7.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T7.9.9.9.9.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.9.9.9.9.4.1" style="color:#00B04F;">+8.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an open vocabulary object detection experiment conducted on the MS COCO dataset.  The model was initially trained on 65 common object categories. Subsequently, its performance was evaluated on 15 novel (unseen during training) categories to assess its generalization capabilities in identifying objects outside its initial training scope. The table likely shows various metrics such as mean Average Precision (mAP) to quantify the model's accuracy and performance on these novel categories, comparing different model variations or training strategies.
> <details>
> <summary>read the caption</summary>
> Table 7:  Open Vocabulary Object Detection Results on COCO dataset. We trained on 65 base categories and tested on 15 novel categories.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T8.6.6.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T8.6.6.6.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T8.6.6.6.7.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.7.1.1.1">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T8.6.6.6.7.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.7.1.2.1">mAP</span></th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T8.6.6.6.7.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T8.6.6.6.7.1.3.1" style="width:6.9pt;height:37.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:37.9pt;transform:translate(-15.49pt,-15.49pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T8.6.6.6.7.1.3.1.1">casserole</p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T8.6.6.6.7.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T8.6.6.6.7.1.4.1" style="width:6.9pt;height:12.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:12.8pt;transform:translate(-2.92pt,-2.92pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T8.6.6.6.7.1.4.1.1">die</p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T8.6.6.6.7.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T8.6.6.6.7.1.5.1" style="width:8.9pt;height:32.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:32.3pt;transform:translate(-11.68pt,-10.71pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T8.6.6.6.7.1.5.1.1">egg roll</p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T8.6.6.6.7.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T8.6.6.6.7.1.6.1" style="width:6.9pt;height:23.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.1pt;transform:translate(-8.06pt,-8.06pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T8.6.6.6.7.1.6.1.1">futon</p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T8.6.6.6.7.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T8.6.6.6.7.1.7.1" style="width:8.9pt;height:33.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:33.9pt;transform:translate(-12.51pt,-11.54pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T8.6.6.6.7.1.7.1.1">garbage</p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T8.6.6.6.7.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T8.6.6.6.7.1.8.1" style="width:6.9pt;height:37.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:37.6pt;transform:translate(-15.31pt,-15.31pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T8.6.6.6.7.1.8.1.1">handsaw</p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T8.6.6.6.7.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T8.6.6.6.7.1.9.1" style="width:8.9pt;height:62pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:62.0pt;transform:translate(-26.56pt,-25.58pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T8.6.6.6.7.1.9.1.1">hippopotamus</p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T8.6.6.6.7.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T8.6.6.6.7.1.10.1" style="width:6.9pt;height:56.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:56.7pt;transform:translate(-24.86pt,-24.86pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T8.6.6.6.7.1.10.1.1">kitchen table</p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T8.6.6.6.7.1.11" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T8.6.6.6.7.1.11.1" style="width:6.9pt;height:27.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:27.2pt;transform:translate(-10.14pt,-10.14pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T8.6.6.6.7.1.11.1.1">mallet</p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T8.6.6.6.7.1.12" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T8.6.6.6.7.1.12.1" style="width:6.9pt;height:28.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.9pt;transform:translate(-10.97pt,-10.97pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T8.6.6.6.7.1.12.1.1">omelet</p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T8.6.6.6.7.1.13" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T8.6.6.6.7.1.13.1" style="width:8.9pt;height:42.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:42.4pt;transform:translate(-16.75pt,-15.78pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T8.6.6.6.7.1.13.1.1">shot glass</p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T8.6.6.6.7.1.14" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T8.6.6.6.7.1.14.1" style="width:8.9pt;height:45.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:45.1pt;transform:translate(-18.1pt,-17.13pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T8.6.6.6.7.1.14.1.1">stepladder</p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T8.6.6.6.7.1.15" style="padding-left:4.0pt;padding-right:4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T8.6.6.6.7.1.15.1" style="width:8.9pt;height:47.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:47.3pt;transform:translate(-19.21pt,-18.24pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T8.6.6.6.7.1.15.1.1">sugar bowl</p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.6.6.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T8.6.6.6.8.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">GroudingDINO-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01785v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T8.6.6.6.8.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">23.9</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.8.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">17.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.8.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.8.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">2.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.8.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">47.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.8.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">27.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.8.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">13.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.8.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">15.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.8.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">92.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.8.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.8.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">26.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.8.2.13" style="padding-left:4.0pt;padding-right:4.0pt;">16.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.8.2.14" style="padding-left:4.0pt;padding-right:4.0pt;">41.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.8.2.15" style="padding-left:4.0pt;padding-right:4.0pt;">10.7</td>
</tr>
<tr class="ltx_tr" id="S4.T8.6.6.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T8.6.6.6.9.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">Qwen2-VL-2B</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T8.6.6.6.9.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">2.7</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.9.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">1.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.9.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">1.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.9.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.9.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">2.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.9.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.9.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">10.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.9.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.9.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">13.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.9.3.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.9.3.12" style="padding-left:4.0pt;padding-right:4.0pt;">4.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.9.3.13" style="padding-left:4.0pt;padding-right:4.0pt;">2.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.9.3.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.9.3.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="S4.T8.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T8.1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T8.1.1.1.1.1.m1.1"><semantics id="S4.T8.1.1.1.1.1.m1.1a"><mo id="S4.T8.1.1.1.1.1.m1.1.1" xref="S4.T8.1.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T8.1.1.1.1.1.m1.1b"><plus id="S4.T8.1.1.1.1.1.m1.1.1.cmml" xref="S4.T8.1.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.1.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T8.1.1.1.1.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T8.1.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">7.6</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.1.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">3.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.1.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">21.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.1.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.1.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.1.1.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">10.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.1.1.1.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">9.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.1.1.1.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">11.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.1.1.1.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">19.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.1.1.1.1.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.1.1.1.1.12" style="padding-left:4.0pt;padding-right:4.0pt;">11.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.1.1.1.1.13" style="padding-left:4.0pt;padding-right:4.0pt;">6.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.1.1.1.1.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.1.1.1.1.15" style="padding-left:4.0pt;padding-right:4.0pt;">5.2</td>
</tr>
<tr class="ltx_tr" id="S4.T8.2.2.2.2" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T8.2.2.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T8.2.2.2.2.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T8.2.2.2.2.1.m1.1a"><mo id="S4.T8.2.2.2.2.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T8.2.2.2.2.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T8.2.2.2.2.1.m1.1b"><plus id="S4.T8.2.2.2.2.1.m1.1.1.cmml" xref="S4.T8.2.2.2.2.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.2.2.2.2.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T8.2.2.2.2.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T8.2.2.2.2.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T8.2.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.2.2.2.2.2.1" style="background-color:#DAEFF9;">20.7</span></th>
<td class="ltx_td ltx_align_left" id="S4.T8.2.2.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.2.2.2.2.3.1" style="background-color:#DAEFF9;">24.5</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.2.2.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.2.2.2.2.4.1" style="background-color:#DAEFF9;">23.4</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.2.2.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.2.2.2.2.5.1" style="background-color:#DAEFF9;">2.0</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.2.2.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.2.2.2.2.6.1" style="background-color:#DAEFF9;">16.0</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.2.2.2.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.2.2.2.2.7.1" style="background-color:#DAEFF9;">27.7</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.2.2.2.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.2.2.2.2.8.1" style="background-color:#DAEFF9;">20.2</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.2.2.2.2.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.2.2.2.2.9.1" style="background-color:#DAEFF9;">14.4</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.2.2.2.2.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.2.2.2.2.10.1" style="background-color:#DAEFF9;">45.8</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.2.2.2.2.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.2.2.2.2.11.1" style="background-color:#DAEFF9;">11.1</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.2.2.2.2.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.2.2.2.2.12.1" style="background-color:#DAEFF9;">22.7</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.2.2.2.2.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.2.2.2.2.13.1" style="background-color:#DAEFF9;">6.0</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.2.2.2.2.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.2.2.2.2.14.1" style="background-color:#DAEFF9;">6.0</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.2.2.2.2.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.2.2.2.2.15.1" style="background-color:#DAEFF9;">40.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T8.3.3.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T8.3.3.3.3.1.m1.1"><semantics id="S4.T8.3.3.3.3.1.m1.1a"><mi id="S4.T8.3.3.3.3.1.m1.1.1" mathvariant="normal" xref="S4.T8.3.3.3.3.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T8.3.3.3.3.1.m1.1b"><ci id="S4.T8.3.3.3.3.1.m1.1.1.cmml" xref="S4.T8.3.3.3.3.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.3.3.3.3.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T8.3.3.3.3.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T8.3.3.3.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.3.3.3.2.1" style="color:#00B04F;">+18.0</span></th>
<td class="ltx_td ltx_align_left" id="S4.T8.3.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.3.3.3.3.1" style="color:#00B04F;">+22.9</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.3.3.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.3.3.3.4.1" style="color:#00B04F;">+22.2</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.3.3.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.3.3.3.5.1" style="color:#00B04F;">+2.0</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.3.3.3.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.3.3.3.6.1" style="color:#00B04F;">+13.6</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.3.3.3.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.3.3.3.7.1" style="color:#00B04F;">+27.7</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.3.3.3.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.3.3.3.8.1" style="color:#00B04F;">+10.2</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.3.3.3.3.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.3.3.3.9.1" style="color:#00B04F;">+14.4</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.3.3.3.3.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.3.3.3.10.1" style="color:#00B04F;">+32.4</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.3.3.3.3.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.3.3.3.11.1" style="color:#00B04F;">+10.9</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.3.3.3.3.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.3.3.3.12.1" style="color:#00B04F;">+18.0</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.3.3.3.3.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.3.3.3.13.1" style="color:#00B04F;">+3.9</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.3.3.3.3.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.3.3.3.14.1" style="color:#00B04F;">+6.0</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.3.3.3.3.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.3.3.3.15.1" style="color:#00B04F;">+40.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.6.6.6.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T8.6.6.6.10.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Qwen2-VL-7B</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T8.6.6.6.10.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">15.7</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.10.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">3.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.10.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">21.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.10.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.10.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">24.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.10.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">15.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.10.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">19.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.10.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">13.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.10.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">14.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.10.4.11" style="padding-left:4.0pt;padding-right:4.0pt;">11.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.10.4.12" style="padding-left:4.0pt;padding-right:4.0pt;">18.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.10.4.13" style="padding-left:4.0pt;padding-right:4.0pt;">27.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.10.4.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.6.6.6.10.4.15" style="padding-left:4.0pt;padding-right:4.0pt;">33.8</td>
</tr>
<tr class="ltx_tr" id="S4.T8.4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T8.4.4.4.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T8.4.4.4.4.1.m1.1"><semantics id="S4.T8.4.4.4.4.1.m1.1a"><mo id="S4.T8.4.4.4.4.1.m1.1.1" xref="S4.T8.4.4.4.4.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T8.4.4.4.4.1.m1.1b"><plus id="S4.T8.4.4.4.4.1.m1.1.1.cmml" xref="S4.T8.4.4.4.4.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.4.4.4.4.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T8.4.4.4.4.1.m1.1d">+</annotation></semantics></math> SFT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T8.4.4.4.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">24.0</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.4.4.4.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">20.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.4.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">25.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.4.4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.4.4.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">41.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.4.4.4.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">12.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.4.4.4.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">19.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.4.4.4.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">18.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.4.4.4.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">42.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.4.4.4.4.11" style="padding-left:4.0pt;padding-right:4.0pt;">11.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.4.4.4.4.12" style="padding-left:4.0pt;padding-right:4.0pt;">15.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.4.4.4.4.13" style="padding-left:4.0pt;padding-right:4.0pt;">27.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.4.4.4.4.14" style="padding-left:4.0pt;padding-right:4.0pt;">28.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.4.4.4.4.15" style="padding-left:4.0pt;padding-right:4.0pt;">47.8</td>
</tr>
<tr class="ltx_tr" id="S4.T8.5.5.5.5" style="background-color:#DAEFF9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T8.5.5.5.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T8.5.5.5.5.1.m1.1" style="background-color:#DAEFF9;"><semantics id="S4.T8.5.5.5.5.1.m1.1a"><mo id="S4.T8.5.5.5.5.1.m1.1.1" mathbackground="#DAEFF9" xref="S4.T8.5.5.5.5.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T8.5.5.5.5.1.m1.1b"><plus id="S4.T8.5.5.5.5.1.m1.1.1.cmml" xref="S4.T8.5.5.5.5.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.5.5.5.5.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T8.5.5.5.5.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T8.5.5.5.5.1.1" style="background-color:#DAEFF9;"> Visual-RFT</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T8.5.5.5.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.5.2.1" style="background-color:#DAEFF9;">30.4</span></th>
<td class="ltx_td ltx_align_left" id="S4.T8.5.5.5.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.5.3.1" style="background-color:#DAEFF9;">19.7</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.5.5.5.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.5.4.1" style="background-color:#DAEFF9;">27.8</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.5.5.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.5.5.1" style="background-color:#DAEFF9;">4.3</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.5.5.5.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.5.6.1" style="background-color:#DAEFF9;">41.8</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.5.5.5.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.5.7.1" style="background-color:#DAEFF9;">17.4</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.5.5.5.5.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.5.8.1" style="background-color:#DAEFF9;">35.1</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.5.5.5.5.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.5.9.1" style="background-color:#DAEFF9;">20.0</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.5.5.5.5.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.5.10.1" style="background-color:#DAEFF9;">70.6</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.5.5.5.5.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.5.11.1" style="background-color:#DAEFF9;">16.7</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.5.5.5.5.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.5.12.1" style="background-color:#DAEFF9;">23.5</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.5.5.5.5.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.5.13.1" style="background-color:#DAEFF9;">29.8</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.5.5.5.5.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.5.14.1" style="background-color:#DAEFF9;">29.3</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.5.5.5.5.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.5.15.1" style="background-color:#DAEFF9;">59.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.6.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T8.6.6.6.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T8.6.6.6.6.1.m1.1"><semantics id="S4.T8.6.6.6.6.1.m1.1a"><mi id="S4.T8.6.6.6.6.1.m1.1.1" mathvariant="normal" xref="S4.T8.6.6.6.6.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T8.6.6.6.6.1.m1.1b"><ci id="S4.T8.6.6.6.6.1.m1.1.1.cmml" xref="S4.T8.6.6.6.6.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.6.6.6.6.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T8.6.6.6.6.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T8.6.6.6.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.6.2.1" style="color:#00B04F;">+14.7</span></th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T8.6.6.6.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.6.3.1" style="color:#00B04F;">+16.0</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T8.6.6.6.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.6.4.1" style="color:#00B04F;">+5.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T8.6.6.6.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.6.5.1" style="color:#00B04F;">+3.6</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T8.6.6.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.6.6.1" style="color:#00B04F;">+17.3</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T8.6.6.6.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.6.7.1" style="color:#00B04F;">+2.1</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T8.6.6.6.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.6.8.1" style="color:#00B04F;">+15.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T8.6.6.6.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.6.9.1" style="color:#00B04F;">+6.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T8.6.6.6.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.6.10.1" style="color:#00B04F;">+56.1</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T8.6.6.6.6.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.6.11.1" style="color:#00B04F;">+4.8</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T8.6.6.6.6.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.6.12.1" style="color:#00B04F;">+5.4</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T8.6.6.6.6.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.6.13.1" style="color:#00B04F;">+1.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T8.6.6.6.6.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.6.14.1" style="color:#00B04F;">+29.3</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T8.6.6.6.6.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.6.15.1" style="color:#00B04F;">+26.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an open vocabulary object detection experiment on the LVIS dataset.  The model was initially trained on 65 common categories from the COCO dataset, and then its performance was evaluated on 13 rare categories from the LVIS dataset that were not included in the initial training.  The results show the mean Average Precision (mAP) for different models, comparing the baseline performance (Qwen2-VL-2B) against the performance after supervised fine-tuning (SFT) and visual reinforcement fine-tuning (Visual-RFT).  The table demonstrates the effectiveness of Visual-RFT in handling rare and unseen object categories.
> <details>
> <summary>read the caption</summary>
> Table 8:  Open Vocabulary Object Detection Results on LVIS dataset. We trained on the 65 base categories of the COCO dataset and tested on the 13 rare categories of the LVIS dataset.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.01785/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01785/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01785/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01785/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01785/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01785/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01785/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01785/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01785/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01785/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01785/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01785/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}