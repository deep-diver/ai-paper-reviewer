---
title: "NeoBERT: A Next-Generation BERT"
summary: "NeoBERT: A new encoder that enhances bidirectional language understanding with cutting-edge architecture, data, and training, achieving SOTA results with only 250M parameters."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Polytechnique Montréal",]
showSummary: true
date: 2025-02-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.19587 {{< /keyword >}}
{{< keyword icon="writer" >}} Lola Le Breton et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.19587" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.19587" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.19587/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent progress in auto-regressive models has overshadowed advancements in encoders like BERT, crucial for many NLP tasks. There's a growing need for updated encoders leveraging modern techniques. Existing solutions focus on fine-tuning but neglect inherent limitations of pre-trained backbones. The lack of standardized evaluation makes comparison between the pre-trained backbones difficult.



To tackle this, the study introduces **NeoBERT**, a next-generation encoder with state-of-the-art architecture, data, and training methods. It is a plug-and-play replacement with an optimal depth-to-width ratio and an extended context length. It uses a standardized fine-tuning to ensure fair evaluation and achieves state-of-the-art results on MTEB with only 250M parameters. The released code, data, and checkpoints promote research.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} NeoBERT, a next-generation BERT, achieves state-of-the-art performance on MTEB with a compact 250M parameter size. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The paper introduces a systematic fine-tuning strategy to isolate the impact of pre-training improvements. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Extensive ablations identify key architectural and training modifications that significantly enhance encoder performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
NeoBERT offers researchers a robust, efficient, and accessible encoder model, pushing the boundaries of bidirectional language understanding and providing a valuable tool for diverse NLP applications, especially in resource-constrained environments. Its detailed ablation studies and standardized evaluation framework promote reproducibility and fair comparisons.

------
#### Visual Insights



![](https://arxiv.org/html/2502.19587/x1.png)

> 🔼 This figure displays the results of an ablation study conducted on the GLUE benchmark.  The study systematically incorporates modifications to a BERT-base model, evaluating the impact of each change on the overall GLUE score. The x-axis represents the successive models (M0-M10), with each model incorporating a modification. The y-axis shows the GLUE development set score. The figure highlights that increasing dataset size (M2) and model size (M7) lead to the largest positive impact on performance.  Conversely,  modifying the tokenizer (M3) and packing sequences (M6) result in significant performance decreases. The greyed-out modifications indicate changes that were not included in subsequent model iterations.
> <details>
> <summary>read the caption</summary>
> Figure 1: GLUE ablation scores on the development set. Modifications in grey are not included in the subsequent models. Increasing data size and diversity leads to the highest relative improvement (M⁢2𝑀2M2italic_M 2, +3.6%percent3.6+3.6\%+ 3.6 %), followed by the model size (M⁢7𝑀7M7italic_M 7, +2.9%percent2.9+2.9\%+ 2.9 %). Packing the sequences and using the LLaMA 2 tokenizer cause the largest relative drops (M⁢6𝑀6M6italic_M 6, −2.9%percent2.9-2.9\%- 2.9 %, M⁢3𝑀3M3italic_M 3, −2.1%percent2.1-2.1\%- 2.1 %).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.11.11">
<tr class="ltx_tr" id="S3.T1.11.11.12">
<td class="ltx_td ltx_border_tt" id="S3.T1.11.11.12.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.11.11.12.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.12.2.1" style="font-size:90%;">BERT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.11.11.12.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.12.3.1" style="font-size:90%;">RoBERTa</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.11.11.12.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.12.4.1" style="font-size:90%;">NomicBERT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.11.11.12.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.12.5.1" style="font-size:90%;">ModernBERT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.11.11.12.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.12.6.1" style="font-size:90%;">NeoBERT</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.13">
<td class="ltx_td" id="S3.T1.11.11.13.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.13.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.11.11.13.2.1" style="font-size:90%;">base</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.13.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.11.11.13.3.1" style="font-size:90%;">large</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.13.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.11.11.13.4.1" style="font-size:90%;">base</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.13.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.11.11.13.5.1" style="font-size:90%;">large</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.13.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.11.11.13.6.1" style="font-size:90%;">base</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.13.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.11.11.13.7.1" style="font-size:90%;">base</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.13.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.11.11.13.8.1" style="font-size:90%;">large</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.13.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.11.11.13.9.1" style="font-size:90%;">medium</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.11.11.14.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.14.1.1" style="font-size:90%;">Layers</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.14.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.14.2.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.14.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.14.3.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.14.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.14.4.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.14.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.14.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.14.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.14.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.14.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.14.7.1" style="font-size:90%;">22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.14.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.14.8.1" style="font-size:90%;">28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.14.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.14.9.1" style="font-size:90%;">28</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.3">
<td class="ltx_td ltx_align_left" id="S3.T1.3.3.3.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.4.1" style="font-size:90%;">Hidden Size</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.3.3.3.5.1" style="font-size:90%;">768</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><math alttext="1,024" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.2"><semantics id="S3.T1.1.1.1.1.m1.2a"><mrow id="S3.T1.1.1.1.1.m1.2.3.2" xref="S3.T1.1.1.1.1.m1.2.3.1.cmml"><mn id="S3.T1.1.1.1.1.m1.1.1" mathsize="90%" xref="S3.T1.1.1.1.1.m1.1.1.cmml">1</mn><mo id="S3.T1.1.1.1.1.m1.2.3.2.1" mathsize="90%" xref="S3.T1.1.1.1.1.m1.2.3.1.cmml">,</mo><mn id="S3.T1.1.1.1.1.m1.2.2" mathsize="90%" xref="S3.T1.1.1.1.1.m1.2.2.cmml">024</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.2b"><list id="S3.T1.1.1.1.1.m1.2.3.1.cmml" xref="S3.T1.1.1.1.1.m1.2.3.2"><cn id="S3.T1.1.1.1.1.m1.1.1.cmml" type="integer" xref="S3.T1.1.1.1.1.m1.1.1">1</cn><cn id="S3.T1.1.1.1.1.m1.2.2.cmml" type="integer" xref="S3.T1.1.1.1.1.m1.2.2">024</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.2c">1,024</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.2d">1 , 024</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.3.3.3.6.1" style="font-size:90%;">768</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><math alttext="1,024" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m1.2"><semantics id="S3.T1.2.2.2.2.m1.2a"><mrow id="S3.T1.2.2.2.2.m1.2.3.2" xref="S3.T1.2.2.2.2.m1.2.3.1.cmml"><mn id="S3.T1.2.2.2.2.m1.1.1" mathsize="90%" xref="S3.T1.2.2.2.2.m1.1.1.cmml">1</mn><mo id="S3.T1.2.2.2.2.m1.2.3.2.1" mathsize="90%" xref="S3.T1.2.2.2.2.m1.2.3.1.cmml">,</mo><mn id="S3.T1.2.2.2.2.m1.2.2" mathsize="90%" xref="S3.T1.2.2.2.2.m1.2.2.cmml">024</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m1.2b"><list id="S3.T1.2.2.2.2.m1.2.3.1.cmml" xref="S3.T1.2.2.2.2.m1.2.3.2"><cn id="S3.T1.2.2.2.2.m1.1.1.cmml" type="integer" xref="S3.T1.2.2.2.2.m1.1.1">1</cn><cn id="S3.T1.2.2.2.2.m1.2.2.cmml" type="integer" xref="S3.T1.2.2.2.2.m1.2.2">024</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.2c">1,024</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.2d">1 , 024</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.3.3.3.7.1" style="font-size:90%;">768</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.3.3.3.8.1" style="font-size:90%;">768</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><math alttext="1,024" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.m1.2"><semantics id="S3.T1.3.3.3.3.m1.2a"><mrow id="S3.T1.3.3.3.3.m1.2.3.2" xref="S3.T1.3.3.3.3.m1.2.3.1.cmml"><mn id="S3.T1.3.3.3.3.m1.1.1" mathsize="90%" xref="S3.T1.3.3.3.3.m1.1.1.cmml">1</mn><mo id="S3.T1.3.3.3.3.m1.2.3.2.1" mathsize="90%" xref="S3.T1.3.3.3.3.m1.2.3.1.cmml">,</mo><mn id="S3.T1.3.3.3.3.m1.2.2" mathsize="90%" xref="S3.T1.3.3.3.3.m1.2.2.cmml">024</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.m1.2b"><list id="S3.T1.3.3.3.3.m1.2.3.1.cmml" xref="S3.T1.3.3.3.3.m1.2.3.2"><cn id="S3.T1.3.3.3.3.m1.1.1.cmml" type="integer" xref="S3.T1.3.3.3.3.m1.1.1">1</cn><cn id="S3.T1.3.3.3.3.m1.2.2.cmml" type="integer" xref="S3.T1.3.3.3.3.m1.2.2">024</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.m1.2c">1,024</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.m1.2d">1 , 024</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.3.3.3.9.1" style="font-size:90%;">768</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.15">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.15.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.15.1.1" style="font-size:90%;">Attention Heads</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.15.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.15.2.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.15.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.15.3.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.15.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.15.4.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.15.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.15.5.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.15.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.15.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.15.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.15.7.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.15.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.15.8.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.15.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.15.9.1" style="font-size:90%;">12</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.16">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.16.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.16.1.1" style="font-size:90%;">Parameters</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.16.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.16.2.1" style="font-size:90%;">120M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.16.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.16.3.1" style="font-size:90%;">350M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.16.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.16.4.1" style="font-size:90%;">125M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.16.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.16.5.1" style="font-size:90%;">355M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.16.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.16.6.1" style="font-size:90%;">137M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.16.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.16.7.1" style="font-size:90%;">149M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.16.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.16.8.1" style="font-size:90%;">395M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.16.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.16.9.1" style="font-size:90%;">250M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.17">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.17.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.17.1.1" style="font-size:90%;">Activation Function</span></td>
<td class="ltx_td ltx_align_center" colspan="4" id="S3.T1.11.11.17.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.17.2.1" style="font-size:90%;">GeLU</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.17.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.17.3.1" style="font-size:90%;">SwiGLU</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.17.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.17.4.1" style="font-size:90%;">GeGLU</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.17.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.17.5.1" style="font-size:90%;">SwiGLU</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.18">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.18.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.18.1.1" style="font-size:90%;">Positional Encoding</span></td>
<td class="ltx_td ltx_align_center" colspan="4" id="S3.T1.11.11.18.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.18.2.1" style="font-size:90%;">Positional Embeddings</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.18.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.18.3.1" style="font-size:90%;">RoPE</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.18.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.18.4.1" style="font-size:90%;">RoPE</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.18.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.18.5.1" style="font-size:90%;">RoPE</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.19">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.19.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.19.1.1" style="font-size:90%;">Normalization</span></td>
<td class="ltx_td ltx_align_center" colspan="4" id="S3.T1.11.11.19.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.19.2.1" style="font-size:90%;">Post-LayerNorm</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.19.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.19.3.1" style="font-size:90%;">Post-LayerNorm</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.19.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.19.4.1" style="font-size:90%;">Pre-LayerNorm</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.19.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.19.5.1" style="font-size:90%;">Pre-RMSNorm</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.20">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.11.11.20.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.20.1.1" style="font-size:90%;">Data Sources</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.11.11.20.2" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.11.11.20.2.1">
<tr class="ltx_tr" id="S3.T1.11.11.20.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.20.2.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.20.2.1.1.1.1" style="font-size:90%;">BooksCorpus</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.20.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.20.2.1.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.20.2.1.2.1.1" style="font-size:90%;">Wikipedia</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.11.11.20.3" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.11.11.20.3.1">
<tr class="ltx_tr" id="S3.T1.11.11.20.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.20.3.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.20.3.1.1.1.1" style="font-size:90%;">BooksCorpus</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.20.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.20.3.1.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.20.3.1.2.1.1" style="font-size:90%;">OpenWebText</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.20.3.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.20.3.1.3.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.20.3.1.3.1.1" style="font-size:90%;">Stories / CC-News</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.20.4" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.11.11.20.4.1">
<tr class="ltx_tr" id="S3.T1.11.11.20.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.20.4.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.20.4.1.1.1.1" style="font-size:90%;">BooksCorpus</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.20.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.20.4.1.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.20.4.1.2.1.1" style="font-size:90%;">Wikipedia</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.11.11.20.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.20.5.1" style="font-size:90%;">Undisclosed</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.20.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.20.6.1" style="font-size:90%;">RefinedWeb</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.21">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.21.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.21.1.1" style="font-size:90%;">Dataset Size</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.21.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.21.2.1" style="font-size:90%;">13GB</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.21.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.21.3.1" style="font-size:90%;">160GB</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.21.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.21.4.1" style="font-size:90%;">13GB</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.21.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.21.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.21.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.21.6.1" style="font-size:90%;">2.8TB</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.22">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.22.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.22.1.1" style="font-size:90%;">Dataset Year</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.22.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.22.2.1" style="font-size:90%;">2019</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.22.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.22.3.1" style="font-size:90%;">2019</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.22.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.22.4.1" style="font-size:90%;">2023</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.22.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.22.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.22.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.22.6.1" style="font-size:90%;">2023</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.23">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.23.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.23.1.1" style="font-size:90%;">Tokenizer Level</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.23.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.23.2.1" style="font-size:90%;">Character</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.23.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.23.3.1" style="font-size:90%;">Byte</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.23.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.23.4.1" style="font-size:90%;">Character</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.23.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.23.5.1" style="font-size:90%;">Character</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.23.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.23.6.1" style="font-size:90%;">Character</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.24">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.24.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.24.1.1" style="font-size:90%;">Vocabulary Size</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.24.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.24.2.1" style="font-size:90%;">30K</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.24.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.24.3.1" style="font-size:90%;">50K</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.24.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.24.4.1" style="font-size:90%;">30K</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.24.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.24.5.1" style="font-size:90%;">50K</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.24.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.24.6.1" style="font-size:90%;">30K</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.10.10.10.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.10.10.10.8.1" style="font-size:90%;">Sequence Length</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.10.10.10.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.10.10.10.9.1" style="font-size:90%;">512</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.10.10.10.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.10.10.10.10.1" style="font-size:90%;">512</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.4.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><math alttext="2,048" class="ltx_Math" display="inline" id="S3.T1.4.4.4.1.m1.2"><semantics id="S3.T1.4.4.4.1.m1.2a"><mrow id="S3.T1.4.4.4.1.m1.2.3.2" xref="S3.T1.4.4.4.1.m1.2.3.1.cmml"><mn id="S3.T1.4.4.4.1.m1.1.1" mathsize="90%" xref="S3.T1.4.4.4.1.m1.1.1.cmml">2</mn><mo id="S3.T1.4.4.4.1.m1.2.3.2.1" mathsize="90%" xref="S3.T1.4.4.4.1.m1.2.3.1.cmml">,</mo><mn id="S3.T1.4.4.4.1.m1.2.2" mathsize="90%" xref="S3.T1.4.4.4.1.m1.2.2.cmml">048</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.1.m1.2b"><list id="S3.T1.4.4.4.1.m1.2.3.1.cmml" xref="S3.T1.4.4.4.1.m1.2.3.2"><cn id="S3.T1.4.4.4.1.m1.1.1.cmml" type="integer" xref="S3.T1.4.4.4.1.m1.1.1">2</cn><cn id="S3.T1.4.4.4.1.m1.2.2.cmml" type="integer" xref="S3.T1.4.4.4.1.m1.2.2">048</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.1.m1.2c">2,048</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.1.m1.2d">2 , 048</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.7.7.7.4" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<math alttext="1,024" class="ltx_Math" display="inline" id="S3.T1.5.5.5.2.m1.2"><semantics id="S3.T1.5.5.5.2.m1.2a"><mrow id="S3.T1.5.5.5.2.m1.2.3.2" xref="S3.T1.5.5.5.2.m1.2.3.1.cmml"><mn id="S3.T1.5.5.5.2.m1.1.1" mathsize="90%" xref="S3.T1.5.5.5.2.m1.1.1.cmml">1</mn><mo id="S3.T1.5.5.5.2.m1.2.3.2.1" mathsize="90%" xref="S3.T1.5.5.5.2.m1.2.3.1.cmml">,</mo><mn id="S3.T1.5.5.5.2.m1.2.2" mathsize="90%" xref="S3.T1.5.5.5.2.m1.2.2.cmml">024</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.2.m1.2b"><list id="S3.T1.5.5.5.2.m1.2.3.1.cmml" xref="S3.T1.5.5.5.2.m1.2.3.2"><cn id="S3.T1.5.5.5.2.m1.1.1.cmml" type="integer" xref="S3.T1.5.5.5.2.m1.1.1">1</cn><cn id="S3.T1.5.5.5.2.m1.2.2.cmml" type="integer" xref="S3.T1.5.5.5.2.m1.2.2">024</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.2.m1.2c">1,024</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.2.m1.2d">1 , 024</annotation></semantics></math><span class="ltx_text" id="S3.T1.7.7.7.4.1" style="font-size:90%;"> </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S3.T1.6.6.6.3.m2.1"><semantics id="S3.T1.6.6.6.3.m2.1a"><mo id="S3.T1.6.6.6.3.m2.1.1" mathsize="90%" stretchy="false" xref="S3.T1.6.6.6.3.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.3.m2.1b"><ci id="S3.T1.6.6.6.3.m2.1.1.cmml" xref="S3.T1.6.6.6.3.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.3.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.3.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S3.T1.7.7.7.4.2" style="font-size:90%;"> </span><math alttext="8,192" class="ltx_Math" display="inline" id="S3.T1.7.7.7.4.m3.2"><semantics id="S3.T1.7.7.7.4.m3.2a"><mrow id="S3.T1.7.7.7.4.m3.2.3.2" xref="S3.T1.7.7.7.4.m3.2.3.1.cmml"><mn id="S3.T1.7.7.7.4.m3.1.1" mathsize="90%" xref="S3.T1.7.7.7.4.m3.1.1.cmml">8</mn><mo id="S3.T1.7.7.7.4.m3.2.3.2.1" mathsize="90%" xref="S3.T1.7.7.7.4.m3.2.3.1.cmml">,</mo><mn id="S3.T1.7.7.7.4.m3.2.2" mathsize="90%" xref="S3.T1.7.7.7.4.m3.2.2.cmml">192</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.4.m3.2b"><list id="S3.T1.7.7.7.4.m3.2.3.1.cmml" xref="S3.T1.7.7.7.4.m3.2.3.2"><cn id="S3.T1.7.7.7.4.m3.1.1.cmml" type="integer" xref="S3.T1.7.7.7.4.m3.1.1">8</cn><cn id="S3.T1.7.7.7.4.m3.2.2.cmml" type="integer" xref="S3.T1.7.7.7.4.m3.2.2">192</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.4.m3.2c">8,192</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.4.m3.2d">8 , 192</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.7" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<math alttext="1,024" class="ltx_Math" display="inline" id="S3.T1.8.8.8.5.m1.2"><semantics id="S3.T1.8.8.8.5.m1.2a"><mrow id="S3.T1.8.8.8.5.m1.2.3.2" xref="S3.T1.8.8.8.5.m1.2.3.1.cmml"><mn id="S3.T1.8.8.8.5.m1.1.1" mathsize="90%" xref="S3.T1.8.8.8.5.m1.1.1.cmml">1</mn><mo id="S3.T1.8.8.8.5.m1.2.3.2.1" mathsize="90%" xref="S3.T1.8.8.8.5.m1.2.3.1.cmml">,</mo><mn id="S3.T1.8.8.8.5.m1.2.2" mathsize="90%" xref="S3.T1.8.8.8.5.m1.2.2.cmml">024</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.5.m1.2b"><list id="S3.T1.8.8.8.5.m1.2.3.1.cmml" xref="S3.T1.8.8.8.5.m1.2.3.2"><cn id="S3.T1.8.8.8.5.m1.1.1.cmml" type="integer" xref="S3.T1.8.8.8.5.m1.1.1">1</cn><cn id="S3.T1.8.8.8.5.m1.2.2.cmml" type="integer" xref="S3.T1.8.8.8.5.m1.2.2">024</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.5.m1.2c">1,024</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.5.m1.2d">1 , 024</annotation></semantics></math><span class="ltx_text" id="S3.T1.10.10.10.7.1" style="font-size:90%;"> </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S3.T1.9.9.9.6.m2.1"><semantics id="S3.T1.9.9.9.6.m2.1a"><mo id="S3.T1.9.9.9.6.m2.1.1" mathsize="90%" stretchy="false" xref="S3.T1.9.9.9.6.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.6.m2.1b"><ci id="S3.T1.9.9.9.6.m2.1.1.cmml" xref="S3.T1.9.9.9.6.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.6.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.6.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S3.T1.10.10.10.7.2" style="font-size:90%;"> </span><math alttext="4,096" class="ltx_Math" display="inline" id="S3.T1.10.10.10.7.m3.2"><semantics id="S3.T1.10.10.10.7.m3.2a"><mrow id="S3.T1.10.10.10.7.m3.2.3.2" xref="S3.T1.10.10.10.7.m3.2.3.1.cmml"><mn id="S3.T1.10.10.10.7.m3.1.1" mathsize="90%" xref="S3.T1.10.10.10.7.m3.1.1.cmml">4</mn><mo id="S3.T1.10.10.10.7.m3.2.3.2.1" mathsize="90%" xref="S3.T1.10.10.10.7.m3.2.3.1.cmml">,</mo><mn id="S3.T1.10.10.10.7.m3.2.2" mathsize="90%" xref="S3.T1.10.10.10.7.m3.2.2.cmml">096</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.7.m3.2b"><list id="S3.T1.10.10.10.7.m3.2.3.1.cmml" xref="S3.T1.10.10.10.7.m3.2.3.2"><cn id="S3.T1.10.10.10.7.m3.1.1.cmml" type="integer" xref="S3.T1.10.10.10.7.m3.1.1">4</cn><cn id="S3.T1.10.10.10.7.m3.2.2.cmml" type="integer" xref="S3.T1.10.10.10.7.m3.2.2">096</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.7.m3.2c">4,096</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.7.m3.2d">4 , 096</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.25">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.25.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.25.1.1" style="font-size:90%;">Objective</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.25.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.25.2.1" style="font-size:90%;">MLM + NSP</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.25.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.25.3.1" style="font-size:90%;">MLM</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.25.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.25.4.1" style="font-size:90%;">MLM</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.25.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.25.5.1" style="font-size:90%;">MLM</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.25.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.25.6.1" style="font-size:90%;">MLM</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.26">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.26.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.26.1.1" style="font-size:90%;">Masking Rate</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.26.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.26.2.1" style="font-size:90%;">15%</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.26.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.26.3.1" style="font-size:90%;">15%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.26.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.26.4.1" style="font-size:90%;">30%</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.26.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.26.5.1" style="font-size:90%;">30%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.26.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.26.6.1" style="font-size:90%;">20%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.27">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.27.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.27.1.1" style="font-size:90%;">Masking Scheme</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.27.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.27.2.1" style="font-size:90%;">80/10/10</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.27.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.27.3.1" style="font-size:90%;">80/10/10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.27.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.27.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.27.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.27.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.27.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.27.6.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.28">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.28.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.28.1.1" style="font-size:90%;">Optimizer</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.28.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.28.2.1" style="font-size:90%;">Adam</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.28.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.28.3.1" style="font-size:90%;">Adam</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.28.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.28.4.1" style="font-size:90%;">AdamW</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.28.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.28.5.1" style="font-size:90%;">StableAdamW</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.28.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.28.6.1" style="font-size:90%;">AdamW</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.29">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.29.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.29.1.1" style="font-size:90%;">Scheduler</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.29.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.29.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.29.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.29.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.29.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.29.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.29.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.29.5.1" style="font-size:90%;">WSD</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.29.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.29.6.1" style="font-size:90%;">CosineDecay</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.30">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.30.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.30.1.1" style="font-size:90%;">Batch Size</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.30.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.30.2.1" style="font-size:90%;">131k tokens</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.30.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.30.3.1" style="font-size:90%;">131k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.30.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.30.4.1" style="font-size:90%;">8M</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.30.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.30.5.1" style="font-size:90%;">448k to 5M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.30.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.30.6.1" style="font-size:90%;">2M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.11">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.11.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.11.2.1" style="font-size:90%;">Tokens Seen</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.11.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.11.3.1" style="font-size:90%;">131B</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.11.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.11.4.1" style="font-size:90%;">131B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.11.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.11.11.11.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<math alttext="\sim" class="ltx_Math" display="inline" id="S3.T1.11.11.11.1.m1.1"><semantics id="S3.T1.11.11.11.1.m1.1a"><mo id="S3.T1.11.11.11.1.m1.1.1" mathsize="90%" xref="S3.T1.11.11.11.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.11.1.m1.1b"><csymbol cd="latexml" id="S3.T1.11.11.11.1.m1.1.1.cmml" xref="S3.T1.11.11.11.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.11.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.11.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S3.T1.11.11.11.1.1" style="font-size:90%;"> 2T</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.11.6.1" style="font-size:90%;">2.1T</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.31">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.11.11.31.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.31.1.1" style="font-size:90%;">Training</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S3.T1.11.11.31.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.31.2.1" style="font-size:90%;">DDP</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S3.T1.11.11.31.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.31.3.1" style="font-size:90%;">DDP</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.11.31.4" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.11.11.31.4.1">
<tr class="ltx_tr" id="S3.T1.11.11.31.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.31.4.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.31.4.1.1.1.1" style="font-size:90%;">DeepSpeed</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.31.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.31.4.1.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.31.4.1.2.1.1" style="font-size:90%;">FlashAttention</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S3.T1.11.11.31.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.11.11.31.5.1">
<tr class="ltx_tr" id="S3.T1.11.11.31.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.31.5.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.31.5.1.1.1.1" style="font-size:90%;">Alternate Attention</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.31.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.31.5.1.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.31.5.1.2.1.1" style="font-size:90%;">Unpadding</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.31.5.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.31.5.1.3.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.31.5.1.3.1.1" style="font-size:90%;">FlashAttention</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.11.31.6" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.11.11.31.6.1">
<tr class="ltx_tr" id="S3.T1.11.11.31.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.31.6.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.31.6.1.1.1.1" style="font-size:90%;">DeepSpeed</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.31.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.31.6.1.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.31.6.1.2.1.1" style="font-size:90%;">FlashAttention</span></td>
</tr>
</table>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table provides a detailed comparison of the architectures, training data, and pre-training configurations used for several BERT-like language models, including BERT, RoBERTa, NomicBERT, ModernBERT, and NeoBERT.  For each model, it lists key architectural parameters such as the number of layers, hidden size, attention heads, and the total number of parameters.  It also details the training data used (size and source), the vocabulary size, sequence length, the pre-training objective (masked language modeling, and next sentence prediction if used), masking rate, masking scheme, optimizer, learning rate scheduler, batch size, and the total number of tokens seen during training. This allows for a comprehensive understanding of the differences in model design and training procedures across these related models.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Model Architectures, Training Data, and Pre-Training Configurations.
> </details>





### In-depth insights


#### NeoBERT Intro
**NeoBERT**, a next-generation encoder, aims to bridge the gap between the rapid advancements in auto-regressive language models and the relatively stagnant progress of bidirectional encoders like **BERT** and **RoBERTa**. The paper addresses the need for incorporating state-of-the-art innovations in architecture, data, and pre-training methodologies into BERT-like models. **NeoBERT** is designed for seamless adoption as a plug-and-play replacement, with an optimal depth-to-width ratio and an extended context length. It achieves superior results on the MTEB benchmark while maintaining a compact size, outperforming larger models. The authors also emphasize their commitment to open research by releasing all code, data, checkpoints, and training scripts. This makes **NeoBERT** a valuable contribution to the NLP community.

#### GLUE Analysis
The **GLUE benchmark's role** as a cornerstone for language modeling is discussed, yet its limitations due to its age and tendency for models to overfit are acknowledged. Despite these limitations, the paper uses **GLUE scores** to allow for comparison with existing encoders. To fine-tune, the standard practices are followed: classical hyperparameter search and transfer learning between related tasks. As a result of the above **NeoBERT shows comparable results to large models**, despite being 100M to 150M parameters smaller, and the full results are in Table 3. 


#### MTEB Focus
The paper emphasizes MTEB (Massive Text Embedding Benchmark) as a crucial evaluation benchmark, going beyond traditional metrics like GLUE. It highlights MTEB's capacity to assess embedding models across diverse tasks. **A key focus is the decoupling of pre-training and fine-tuning impacts on MTEB performance**. The authors critique existing approaches that heavily rely on complex, task-specific fine-tuning, making it difficult to isolate the benefits of the underlying pre-trained models. They advocate for a standardized, model-agnostic fine-tuning strategy to fairly compare different pre-training techniques. The approach emphasizes the need for simple, reproducible fine-tuning. **The core idea is to establish a clear understanding of how pre-training enhancements translate to downstream performance** without the confounding effects of intricate fine-tuning methods. Ultimately, this helps drive progress in pre-training and unlocks more generalizable encoder models.

#### Future Encoder
While the provided paper centers on **NeoBERT, a next-generation encoder model, and doesn't explicitly detail 'Future Encoder' concepts**, one can infer potential advancements. Future encoders will likely leverage **novel architectural designs** beyond the current Transformer, perhaps exploring attention alternatives or incorporating ideas from mixture of experts paradigm. They will be pre-trained on **increasingly massive and diverse datasets**, potentially synthetic or incorporating multi-modal information. Future progress includes **efficient long context handling** using techniques like sparse attention or recurrence, allowing modeling of complex relationships. Crucially, future research will involve **standardizing fine-tuning protocols** and developing **zero-shot evaluation methods** to ensure unbiased assessments and fair comparisons of different encoder architectures, contributing towards robust, adaptable, and high-performing models.

#### Training Detail
The training details section is crucial for understanding the experimental setup. **NeoBERT** used 8 H100 GPUs for 1,050,000 steps, totaling 6,000 GPU hours, showcasing resource intensity. A local batch size of 32 was used with 8 gradient accumulation steps, equaling a 2M token batch size. The max sequence length was 1,024 initially, and raised to 4,096 later. **Keeping the batch size fixed while extending sequence length** is vital, influencing model performance. This methodology helps maximize memory and compute resources during training, optimizing the architecture and training hyperparameters.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.19587/x4.png)

> 🔼 Figure 2 presents a comparison of the pseudo-perplexity scores achieved by two versions of the NeoBERT model – NeoBERT1024 and NeoBERT4096 – across varying sequence lengths.  Pseudo-perplexity serves as a measure of how well the model predicts the next token in a sequence; lower scores indicate better performance.  The left panel shows NeoBERT1024's performance, trained with a maximum sequence length of 1024 tokens. The right panel shows NeoBERT4096, which underwent an additional training phase with longer sequences (up to 4096 tokens). The figure demonstrates that extending the pre-training with longer sequences significantly improves the NeoBERT model's ability to handle and generate longer sequences accurately, as evidenced by the lower perplexity scores for NeoBERT4096, particularly at longer sequence lengths.
> <details>
> <summary>read the caption</summary>
> Figure 2: Pseudo-Perplexity in function of the sequence length for NeoBERT1024 (left) and NeoBERT4096 (right). This validates the effectiveness of the final pre-training stage on NeoBERT’s ability to model long sequences.
> </details>



![](https://arxiv.org/html/2502.19587/extracted/6236292/figures/mteb_pretrained.png)

> 🔼 Figure 3 illustrates the throughput (tokens processed per second) of various language models as the sequence length increases.  The models compared are BERTbase, ROBERTabase, BERTlarge, ROBERTalarge, NeoBERT, ModernBERTbase, and ModernBERTlarge.  The x-axis represents the sequence length, and the y-axis represents the throughput.  The figure shows that NeoBERT, despite having 100 million more parameters than ModernBERTbase, achieves a significantly higher throughput when the sequence length exceeds 1024 tokens. This highlights NeoBERT's efficiency in handling long sequences.
> <details>
> <summary>read the caption</summary>
> Figure 3: Model throughput (tokens per second) as a function of sequence length (↑↑\uparrow↑ is better). Above 1,02410241,0241 , 024 in sequence length, NeoBERT surpasses ModernBERTbase despite having 100⁢M100𝑀100M100 italic_M more parameters.
> </details>



![](https://arxiv.org/html/2502.19587/x5.png)

> 🔼 This figure displays the performance of BERT and RoBERTa models on the English subset of the MTEB benchmark without any fine-tuning.  It demonstrates the zero-shot performance of these models, meaning their performance is evaluated directly after pre-training without any task-specific adaptation.  The graph likely shows the average score across multiple tasks within the MTEB benchmark, indicating the models' inherent abilities to handle various tasks before any further training or optimization.
> <details>
> <summary>read the caption</summary>
> Figure 4: Zero-shot evaluation of BERT and RoBERTa on the English subset of MTEB.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.11.11.20.2.1">
<tr class="ltx_tr" id="S3.T1.11.11.20.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.20.2.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.20.2.1.1.1.1" style="font-size:90%;">BooksCorpus</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.20.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.20.2.1.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.20.2.1.2.1.1" style="font-size:90%;">Wikipedia</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the modifications made during a series of ablation experiments to improve a BERT-like model, ultimately resulting in NeoBERT.  It shows the changes introduced iteratively to the base model (M0, similar to BERT) in each step (M1-M9), highlighting modifications to embeddings, activation functions, normalization, datasets, tokenizers, optimizers, schedulers, masking schemes, model size, and context length.  The final model, M9, represents NeoBERT.
> <details>
> <summary>read the caption</summary>
> Table 2: Modifications between successive ablations. The initial M⁢0𝑀0M0italic_M 0 baseline corresponds to a model similar to BERT, while M⁢9𝑀9M9italic_M 9 corresponds to NeoBERT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.11.11.20.3.1">
<tr class="ltx_tr" id="S3.T1.11.11.20.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.20.3.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.20.3.1.1.1.1" style="font-size:90%;">BooksCorpus</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.20.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.20.3.1.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.20.3.1.2.1.1" style="font-size:90%;">OpenWebText</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.20.3.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.20.3.1.3.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.20.3.1.3.1.1" style="font-size:90%;">Stories / CC-News</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the GLUE (General Language Understanding Evaluation) benchmark scores achieved by various language models on their development sets.  It compares the performance of NeoBERT against several established models including BERT, RoBERTa, DeBERTa, NomicBERT, GTE, and ModernBERT.  The scores are broken down by individual tasks within the GLUE benchmark, allowing for a detailed comparison of each model's strengths and weaknesses across different NLP tasks. The table also indicates the size (in parameters) of each model, showing how NeoBERT's performance compares even with smaller model size.
> <details>
> <summary>read the caption</summary>
> Table 3: GLUE scores on the development set. Baseline scores were retrieved as follows: BERT from Table 1 of Devlin et al. (2019), RoBERTa from Table 8 of Liu et al. (2019), DeBERTa from Table 3 of He et al. (2023), NomicBERT from Table 2 of Nussbaum et al. (2024), GTE from Table 13 of Zhang et al. (2024), and ModernBERT from Table 5 of Warner et al. (2024).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.11.11.20.4.1">
<tr class="ltx_tr" id="S3.T1.11.11.20.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.20.4.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.20.4.1.1.1.1" style="font-size:90%;">BooksCorpus</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.20.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.20.4.1.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.20.4.1.2.1.1" style="font-size:90%;">Wikipedia</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the MTEB (Massive Text Embedding Benchmark) English subset evaluation.  Multiple pre-trained language models were fine-tuned using a contrastive learning approach for 2000 steps. The table shows the performance of each model across seven different tasks within the benchmark (Classification, Clustering, Pair Classification, Reranking, Retrieval, Semantic Textual Similarity (STS), and Summarization), along with the average score across all tasks.  The models are categorized by size (Base, Medium, Large), providing a comparison of performance across different model scales.
> <details>
> <summary>read the caption</summary>
> Table 4: MTEB scores on the English subset after 2,000 steps of fine-tuning with contrastive learning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.11.11.31.4.1">
<tr class="ltx_tr" id="S3.T1.11.11.31.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.31.4.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.31.4.1.1.1.1" style="font-size:90%;">DeepSpeed</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.31.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.31.4.1.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.31.4.1.2.1.1" style="font-size:90%;">FlashAttention</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents the optimal hyperparameters found through a grid search for fine-tuning the NeoBERT model on the GLUE benchmark. The search explored various combinations of batch sizes (2, 4, 8, 16, 32), learning rates (5e-6, 6e-6, 8e-6, 1e-5, 2e-5, 3e-5), and weight decay values (1e-2, 1e-5) for each of the GLUE tasks.  The table lists the optimal settings discovered for each task, aiding reproducibility and comparison of results.
> <details>
> <summary>read the caption</summary>
> Table 5: Optimal hyperparameters for GLUE tasks. The grid search was conducted over batch sizes {2,4,8,16,32}2481632\{2,4,8,16,32\}{ 2 , 4 , 8 , 16 , 32 }, learning rates {5⁢e−6,6⁢e−6,8⁢e−6,1⁢e−5,2⁢e−5,3⁢e−5}5𝑒66𝑒68𝑒61𝑒52𝑒53𝑒5\{5e-6,6e-6,8e-6,1e-5,2e-5,3e-5\}{ 5 italic_e - 6 , 6 italic_e - 6 , 8 italic_e - 6 , 1 italic_e - 5 , 2 italic_e - 5 , 3 italic_e - 5 }, and weight decay values {1⁢e−2,1⁢e−5}1𝑒21𝑒5\{1e-2,1e-5\}{ 1 italic_e - 2 , 1 italic_e - 5 }.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.11.11.31.5.1">
<tr class="ltx_tr" id="S3.T1.11.11.31.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.31.5.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.31.5.1.1.1.1" style="font-size:90%;">Alternate Attention</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.31.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.31.5.1.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.31.5.1.2.1.1" style="font-size:90%;">Unpadding</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.31.5.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.31.5.1.3.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.31.5.1.3.1.1" style="font-size:90%;">FlashAttention</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the instructions used for fine-tuning various pre-trained models on different contrastive learning datasets. Each row represents a dataset, specifying the task and the instructions given to the model for that task. The instructions provide context to the models, guiding them on how to process the data and generate appropriate outputs.  The information is crucial for understanding the fine-tuning process and how the models were prepared for the downstream evaluations.
> <details>
> <summary>read the caption</summary>
> Table 6: Instructions for fine-tuning on the different contrastive learning datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.11.11.31.6.1">
<tr class="ltx_tr" id="S3.T1.11.11.31.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.31.6.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.31.6.1.1.1.1" style="font-size:90%;">DeepSpeed</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.31.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.31.6.1.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S3.T1.11.11.31.6.1.2.1.1" style="font-size:90%;">FlashAttention</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the specific instructions used for evaluating model performance on each of the sub-tasks within the MTEB benchmark.  For each task, it provides a description outlining the input format and the expected output, clarifying the nature of the prediction required from the language model.
> <details>
> <summary>read the caption</summary>
> Table 7: Instructions for evaluation on the different MTEB tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.14.10">
<tr class="ltx_tr" id="S4.T2.14.10.11">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.14.10.11.1"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.11.1.1">Modification</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.14.10.11.2"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.11.2.1">Before</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.14.10.11.3"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.11.3.1">After</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.5.1.1.1" rowspan="3"><span class="ltx_text" id="S4.T2.5.1.1.1.1"><math alttext="M1" class="ltx_Math" display="inline" id="S4.T2.5.1.1.1.1.m1.1"><semantics id="S4.T2.5.1.1.1.1.m1.1a"><mrow id="S4.T2.5.1.1.1.1.m1.1.1" xref="S4.T2.5.1.1.1.1.m1.1.1.cmml"><mi id="S4.T2.5.1.1.1.1.m1.1.1.2" xref="S4.T2.5.1.1.1.1.m1.1.1.2.cmml">M</mi><mo id="S4.T2.5.1.1.1.1.m1.1.1.1" xref="S4.T2.5.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mn id="S4.T2.5.1.1.1.1.m1.1.1.3" xref="S4.T2.5.1.1.1.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.5.1.1.1.1.m1.1b"><apply id="S4.T2.5.1.1.1.1.m1.1.1.cmml" xref="S4.T2.5.1.1.1.1.m1.1.1"><times id="S4.T2.5.1.1.1.1.m1.1.1.1.cmml" xref="S4.T2.5.1.1.1.1.m1.1.1.1"></times><ci id="S4.T2.5.1.1.1.1.m1.1.1.2.cmml" xref="S4.T2.5.1.1.1.1.m1.1.1.2">𝑀</ci><cn id="S4.T2.5.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.5.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.1.1.1.1.m1.1c">M1</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.1.1.1.1.m1.1d">italic_M 1</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.5.1.1.2">Embedding</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.5.1.1.3">Positional</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.5.1.1.4">RoPE</td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.10.12">
<td class="ltx_td ltx_align_left" id="S4.T2.14.10.12.1">Activation</td>
<td class="ltx_td ltx_align_left" id="S4.T2.14.10.12.2">GELU</td>
<td class="ltx_td ltx_align_left" id="S4.T2.14.10.12.3">SwiGLU</td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.10.13">
<td class="ltx_td ltx_align_left" id="S4.T2.14.10.13.1">Pre-LN</td>
<td class="ltx_td ltx_align_left" id="S4.T2.14.10.13.2">LayerNorm</td>
<td class="ltx_td ltx_align_left" id="S4.T2.14.10.13.3">RMSNorm</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.6.2.2.1"><math alttext="M2" class="ltx_Math" display="inline" id="S4.T2.6.2.2.1.m1.1"><semantics id="S4.T2.6.2.2.1.m1.1a"><mrow id="S4.T2.6.2.2.1.m1.1.1" xref="S4.T2.6.2.2.1.m1.1.1.cmml"><mi id="S4.T2.6.2.2.1.m1.1.1.2" xref="S4.T2.6.2.2.1.m1.1.1.2.cmml">M</mi><mo id="S4.T2.6.2.2.1.m1.1.1.1" xref="S4.T2.6.2.2.1.m1.1.1.1.cmml">⁢</mo><mn id="S4.T2.6.2.2.1.m1.1.1.3" xref="S4.T2.6.2.2.1.m1.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.6.2.2.1.m1.1b"><apply id="S4.T2.6.2.2.1.m1.1.1.cmml" xref="S4.T2.6.2.2.1.m1.1.1"><times id="S4.T2.6.2.2.1.m1.1.1.1.cmml" xref="S4.T2.6.2.2.1.m1.1.1.1"></times><ci id="S4.T2.6.2.2.1.m1.1.1.2.cmml" xref="S4.T2.6.2.2.1.m1.1.1.2">𝑀</ci><cn id="S4.T2.6.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.6.2.2.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.2.2.1.m1.1c">M2</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.2.2.1.m1.1d">italic_M 2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.6.2.2.2">Dataset</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.6.2.2.3">Wiki + Book</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.6.2.2.4">RefinedWeb</td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.7.3.3.1"><math alttext="M3" class="ltx_Math" display="inline" id="S4.T2.7.3.3.1.m1.1"><semantics id="S4.T2.7.3.3.1.m1.1a"><mrow id="S4.T2.7.3.3.1.m1.1.1" xref="S4.T2.7.3.3.1.m1.1.1.cmml"><mi id="S4.T2.7.3.3.1.m1.1.1.2" xref="S4.T2.7.3.3.1.m1.1.1.2.cmml">M</mi><mo id="S4.T2.7.3.3.1.m1.1.1.1" xref="S4.T2.7.3.3.1.m1.1.1.1.cmml">⁢</mo><mn id="S4.T2.7.3.3.1.m1.1.1.3" xref="S4.T2.7.3.3.1.m1.1.1.3.cmml">3</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.7.3.3.1.m1.1b"><apply id="S4.T2.7.3.3.1.m1.1.1.cmml" xref="S4.T2.7.3.3.1.m1.1.1"><times id="S4.T2.7.3.3.1.m1.1.1.1.cmml" xref="S4.T2.7.3.3.1.m1.1.1.1"></times><ci id="S4.T2.7.3.3.1.m1.1.1.2.cmml" xref="S4.T2.7.3.3.1.m1.1.1.2">𝑀</ci><cn id="S4.T2.7.3.3.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.7.3.3.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.3.3.1.m1.1c">M3</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.3.3.1.m1.1d">italic_M 3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.7.3.3.2">Tokenizer</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.7.3.3.3">Google WordPiece</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.7.3.3.4">LLaMA BPE</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.4.4.1" rowspan="2"><span class="ltx_text" id="S4.T2.8.4.4.1.1"><math alttext="M4" class="ltx_Math" display="inline" id="S4.T2.8.4.4.1.1.m1.1"><semantics id="S4.T2.8.4.4.1.1.m1.1a"><mrow id="S4.T2.8.4.4.1.1.m1.1.1" xref="S4.T2.8.4.4.1.1.m1.1.1.cmml"><mi id="S4.T2.8.4.4.1.1.m1.1.1.2" xref="S4.T2.8.4.4.1.1.m1.1.1.2.cmml">M</mi><mo id="S4.T2.8.4.4.1.1.m1.1.1.1" xref="S4.T2.8.4.4.1.1.m1.1.1.1.cmml">⁢</mo><mn id="S4.T2.8.4.4.1.1.m1.1.1.3" xref="S4.T2.8.4.4.1.1.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.8.4.4.1.1.m1.1b"><apply id="S4.T2.8.4.4.1.1.m1.1.1.cmml" xref="S4.T2.8.4.4.1.1.m1.1.1"><times id="S4.T2.8.4.4.1.1.m1.1.1.1.cmml" xref="S4.T2.8.4.4.1.1.m1.1.1.1"></times><ci id="S4.T2.8.4.4.1.1.m1.1.1.2.cmml" xref="S4.T2.8.4.4.1.1.m1.1.1.2">𝑀</ci><cn id="S4.T2.8.4.4.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.8.4.4.1.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.4.4.1.1.m1.1c">M4</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.4.4.1.1.m1.1d">italic_M 4</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.4.4.2">Optimizer</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.4.4.3">Adam</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.4.4.4">AdamW</td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.10.14">
<td class="ltx_td ltx_align_left" id="S4.T2.14.10.14.1">Scheduler</td>
<td class="ltx_td ltx_align_left" id="S4.T2.14.10.14.2">Linear</td>
<td class="ltx_td ltx_align_left" id="S4.T2.14.10.14.3">Cosine</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.9.5.5.1"><math alttext="M5" class="ltx_Math" display="inline" id="S4.T2.9.5.5.1.m1.1"><semantics id="S4.T2.9.5.5.1.m1.1a"><mrow id="S4.T2.9.5.5.1.m1.1.1" xref="S4.T2.9.5.5.1.m1.1.1.cmml"><mi id="S4.T2.9.5.5.1.m1.1.1.2" xref="S4.T2.9.5.5.1.m1.1.1.2.cmml">M</mi><mo id="S4.T2.9.5.5.1.m1.1.1.1" xref="S4.T2.9.5.5.1.m1.1.1.1.cmml">⁢</mo><mn id="S4.T2.9.5.5.1.m1.1.1.3" xref="S4.T2.9.5.5.1.m1.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.9.5.5.1.m1.1b"><apply id="S4.T2.9.5.5.1.m1.1.1.cmml" xref="S4.T2.9.5.5.1.m1.1.1"><times id="S4.T2.9.5.5.1.m1.1.1.1.cmml" xref="S4.T2.9.5.5.1.m1.1.1.1"></times><ci id="S4.T2.9.5.5.1.m1.1.1.2.cmml" xref="S4.T2.9.5.5.1.m1.1.1.2">𝑀</ci><cn id="S4.T2.9.5.5.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.9.5.5.1.m1.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.5.5.1.m1.1c">M5</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.5.5.1.m1.1d">italic_M 5</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.9.5.5.2">Masking Scheme</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.9.5.5.3">15% (80 / 10 / 10)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.9.5.5.4">20% (100)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.10.6.6.1"><math alttext="M6" class="ltx_Math" display="inline" id="S4.T2.10.6.6.1.m1.1"><semantics id="S4.T2.10.6.6.1.m1.1a"><mrow id="S4.T2.10.6.6.1.m1.1.1" xref="S4.T2.10.6.6.1.m1.1.1.cmml"><mi id="S4.T2.10.6.6.1.m1.1.1.2" xref="S4.T2.10.6.6.1.m1.1.1.2.cmml">M</mi><mo id="S4.T2.10.6.6.1.m1.1.1.1" xref="S4.T2.10.6.6.1.m1.1.1.1.cmml">⁢</mo><mn id="S4.T2.10.6.6.1.m1.1.1.3" xref="S4.T2.10.6.6.1.m1.1.1.3.cmml">6</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.10.6.6.1.m1.1b"><apply id="S4.T2.10.6.6.1.m1.1.1.cmml" xref="S4.T2.10.6.6.1.m1.1.1"><times id="S4.T2.10.6.6.1.m1.1.1.1.cmml" xref="S4.T2.10.6.6.1.m1.1.1.1"></times><ci id="S4.T2.10.6.6.1.m1.1.1.2.cmml" xref="S4.T2.10.6.6.1.m1.1.1.2">𝑀</ci><cn id="S4.T2.10.6.6.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.10.6.6.1.m1.1.1.3">6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.6.6.1.m1.1c">M6</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.6.6.1.m1.1d">italic_M 6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.10.6.6.2">Sequence packing</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.10.6.6.3">False</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.10.6.6.4">True</td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.7.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.11.7.7.1"><math alttext="M7" class="ltx_Math" display="inline" id="S4.T2.11.7.7.1.m1.1"><semantics id="S4.T2.11.7.7.1.m1.1a"><mrow id="S4.T2.11.7.7.1.m1.1.1" xref="S4.T2.11.7.7.1.m1.1.1.cmml"><mi id="S4.T2.11.7.7.1.m1.1.1.2" xref="S4.T2.11.7.7.1.m1.1.1.2.cmml">M</mi><mo id="S4.T2.11.7.7.1.m1.1.1.1" xref="S4.T2.11.7.7.1.m1.1.1.1.cmml">⁢</mo><mn id="S4.T2.11.7.7.1.m1.1.1.3" xref="S4.T2.11.7.7.1.m1.1.1.3.cmml">7</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.11.7.7.1.m1.1b"><apply id="S4.T2.11.7.7.1.m1.1.1.cmml" xref="S4.T2.11.7.7.1.m1.1.1"><times id="S4.T2.11.7.7.1.m1.1.1.1.cmml" xref="S4.T2.11.7.7.1.m1.1.1.1"></times><ci id="S4.T2.11.7.7.1.m1.1.1.2.cmml" xref="S4.T2.11.7.7.1.m1.1.1.2">𝑀</ci><cn id="S4.T2.11.7.7.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.11.7.7.1.m1.1.1.3">7</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.7.7.1.m1.1c">M7</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.7.7.1.m1.1d">italic_M 7</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.11.7.7.2">Model Size</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.11.7.7.3">120M</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.11.7.7.4">250M</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.12.8.8.1"><math alttext="M8" class="ltx_Math" display="inline" id="S4.T2.12.8.8.1.m1.1"><semantics id="S4.T2.12.8.8.1.m1.1a"><mrow id="S4.T2.12.8.8.1.m1.1.1" xref="S4.T2.12.8.8.1.m1.1.1.cmml"><mi id="S4.T2.12.8.8.1.m1.1.1.2" xref="S4.T2.12.8.8.1.m1.1.1.2.cmml">M</mi><mo id="S4.T2.12.8.8.1.m1.1.1.1" xref="S4.T2.12.8.8.1.m1.1.1.1.cmml">⁢</mo><mn id="S4.T2.12.8.8.1.m1.1.1.3" xref="S4.T2.12.8.8.1.m1.1.1.3.cmml">8</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.12.8.8.1.m1.1b"><apply id="S4.T2.12.8.8.1.m1.1.1.cmml" xref="S4.T2.12.8.8.1.m1.1.1"><times id="S4.T2.12.8.8.1.m1.1.1.1.cmml" xref="S4.T2.12.8.8.1.m1.1.1.1"></times><ci id="S4.T2.12.8.8.1.m1.1.1.2.cmml" xref="S4.T2.12.8.8.1.m1.1.1.2">𝑀</ci><cn id="S4.T2.12.8.8.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.12.8.8.1.m1.1.1.3">8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.8.8.1.m1.1c">M8</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.8.8.1.m1.1d">italic_M 8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.12.8.8.2">Depth - Width</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.12.8.8.3">16 - 1056</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.12.8.8.4">28 - 768</td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.9.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.13.9.9.1" rowspan="2"><span class="ltx_text" id="S4.T2.13.9.9.1.1"><math alttext="M9" class="ltx_Math" display="inline" id="S4.T2.13.9.9.1.1.m1.1"><semantics id="S4.T2.13.9.9.1.1.m1.1a"><mrow id="S4.T2.13.9.9.1.1.m1.1.1" xref="S4.T2.13.9.9.1.1.m1.1.1.cmml"><mi id="S4.T2.13.9.9.1.1.m1.1.1.2" xref="S4.T2.13.9.9.1.1.m1.1.1.2.cmml">M</mi><mo id="S4.T2.13.9.9.1.1.m1.1.1.1" xref="S4.T2.13.9.9.1.1.m1.1.1.1.cmml">⁢</mo><mn id="S4.T2.13.9.9.1.1.m1.1.1.3" xref="S4.T2.13.9.9.1.1.m1.1.1.3.cmml">9</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.13.9.9.1.1.m1.1b"><apply id="S4.T2.13.9.9.1.1.m1.1.1.cmml" xref="S4.T2.13.9.9.1.1.m1.1.1"><times id="S4.T2.13.9.9.1.1.m1.1.1.1.cmml" xref="S4.T2.13.9.9.1.1.m1.1.1.1"></times><ci id="S4.T2.13.9.9.1.1.m1.1.1.2.cmml" xref="S4.T2.13.9.9.1.1.m1.1.1.2">𝑀</ci><cn id="S4.T2.13.9.9.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.13.9.9.1.1.m1.1.1.3">9</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.9.9.1.1.m1.1c">M9</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.9.9.1.1.m1.1d">italic_M 9</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.13.9.9.2">Batch size</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.13.9.9.3">131k</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.13.9.9.4">2M</td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.10.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.14.10.10.2">Context length</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.14.10.10.3">512</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.14.10.10.1"><math alttext="4,096" class="ltx_Math" display="inline" id="S4.T2.14.10.10.1.m1.2"><semantics id="S4.T2.14.10.10.1.m1.2a"><mrow id="S4.T2.14.10.10.1.m1.2.3.2" xref="S4.T2.14.10.10.1.m1.2.3.1.cmml"><mn id="S4.T2.14.10.10.1.m1.1.1" xref="S4.T2.14.10.10.1.m1.1.1.cmml">4</mn><mo id="S4.T2.14.10.10.1.m1.2.3.2.1" xref="S4.T2.14.10.10.1.m1.2.3.1.cmml">,</mo><mn id="S4.T2.14.10.10.1.m1.2.2" xref="S4.T2.14.10.10.1.m1.2.2.cmml">096</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.14.10.10.1.m1.2b"><list id="S4.T2.14.10.10.1.m1.2.3.1.cmml" xref="S4.T2.14.10.10.1.m1.2.3.2"><cn id="S4.T2.14.10.10.1.m1.1.1.cmml" type="integer" xref="S4.T2.14.10.10.1.m1.1.1">4</cn><cn id="S4.T2.14.10.10.1.m1.2.2.cmml" type="integer" xref="S4.T2.14.10.10.1.m1.2.2">096</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.10.10.1.m1.2c">4,096</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.10.10.1.m1.2d">4 , 096</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists instructions for evaluating various tasks within the MTEB (Massive Text Embedding Benchmark). Each row represents a different task, specifying the type of input given (e.g., a question, a review, a news summary) and what the model is expected to retrieve or classify in response (e.g., relevant documents, sentiment, intents).  The table provides a comprehensive overview of the diverse tasks included in MTEB, showing the range of natural language understanding abilities being assessed by the benchmark.
> <details>
> <summary>read the caption</summary>
> Table 8: Instructions for evaluation on the different MTEB tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.6.6">
<tr class="ltx_tr" id="S5.T3.6.6.7">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.6.7.1"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.1.1">Size</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.6.6.7.2"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.6.7.3"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.3.1">MNLI</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.6.7.4"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.4.1">QNLI</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.6.7.5"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.5.1">QQP</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.6.7.6"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.6.1">RTE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.6.7.7"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.7.1">SST</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.6.7.8"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.8.1">MRPC</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.6.7.9"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.9.1">CoLA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.6.6.7.10"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.10.1">STS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.6.7.11"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.11.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.1" rowspan="4"><span class="ltx_text" id="S5.T3.1.1.1.1.1"><span class="ltx_text" id="S5.T3.1.1.1.1.1.2"></span> <span class="ltx_text" id="S5.T3.1.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.1.1.1.1.1.1.1">
<span class="ltx_tr" id="S5.T3.1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.1.1.1.2.1">Base</span></span>
<span class="ltx_tr" id="S5.T3.1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.1.1.1.1.1"><span class="ltx_text" id="S5.T3.1.1.1.1.1.1.1.1.1.1" style="font-size:90%;">(<math alttext="\leq 150M" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1a"><mrow id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1" xref="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml"><mi id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.2" xref="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.2.cmml"></mi><mo id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.1" xref="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.1.cmml">≤</mo><mrow id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.3" xref="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.3.cmml"><mn id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.3.2" xref="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.3.2.cmml">150</mn><mo id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.3.1" xref="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.3.3" xref="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.3.3.cmml">M</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1b"><apply id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1"><leq id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.1.cmml" xref="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.1"></leq><csymbol cd="latexml" id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.2.cmml" xref="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.2">absent</csymbol><apply id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.3.cmml" xref="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.3"><times id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.3.1.cmml" xref="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.3.1"></times><cn id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.3.2">150</cn><ci id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.3.3.cmml" xref="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1.1.3.3">𝑀</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1c">\leq 150M</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.1.1.1.1.1.1.m1.1d">≤ 150 italic_M</annotation></semantics></math>)</span></span></span>
</span></span> <span class="ltx_text" id="S5.T3.1.1.1.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.1.1.1.2">BERT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.3">84.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.4">90.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.5">71.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.6">66.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.7">93.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.8">88.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.9">52.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.1.1.1.10">85.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.11">79.6</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.8">
<td class="ltx_td ltx_align_left" id="S5.T3.6.6.8.1">RoBERTa</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.8.2">87.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.8.3">92.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.8.4">91.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.8.5">78.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.8.6">94.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.8.7">90.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.8.8">63.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.6.8.9">91.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.8.10">86.4</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.9">
<td class="ltx_td ltx_align_left" id="S5.T3.6.6.9.1">GTE-en-8192</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.2">86.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.3">91.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.4">88.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.5">84.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.6">93.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.7">92.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.8">57.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.6.9.9">90.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.10">85.6</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2">
<td class="ltx_td ltx_align_left" id="S5.T3.2.2.2.1">NomicBERT<sub class="ltx_sub" id="S5.T3.2.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S5.T3.2.2.2.1.1.1">2048</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.2">86.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.3">92.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.4">92.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.5">82.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.6">93.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.7">88.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.8">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.2.2.9">90.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.10">84.0</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.10">
<td class="ltx_td" id="S5.T3.6.6.10.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T3.6.6.10.2">ModernBERT</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.6.10.3.1">89.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.6.10.4.1">93.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.6.10.5.1">92.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.6.10.6.1">87.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.6.10.7.1">96.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.6.10.8.1">92.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.6.10.9.1">65.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.6.10.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.6.10.10.1">91.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.6.10.11.1">88.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.3.3.1" rowspan="2"><span class="ltx_text" id="S5.T3.3.3.3.1.1"><span class="ltx_text" id="S5.T3.3.3.3.1.1.2"></span> <span class="ltx_text" id="S5.T3.3.3.3.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.3.3.3.1.1.1.1">
<span class="ltx_tr" id="S5.T3.3.3.3.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.3.3.3.1.1.1.1.2.1">Medium</span></span>
<span class="ltx_tr" id="S5.T3.3.3.3.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.3.3.3.1.1.1.1.1.1"><math alttext="250M" class="ltx_Math" display="inline" id="S5.T3.3.3.3.1.1.1.1.1.1.m1.1"><semantics id="S5.T3.3.3.3.1.1.1.1.1.1.m1.1a"><mrow id="S5.T3.3.3.3.1.1.1.1.1.1.m1.1.1" xref="S5.T3.3.3.3.1.1.1.1.1.1.m1.1.1.cmml"><mn id="S5.T3.3.3.3.1.1.1.1.1.1.m1.1.1.2" mathsize="90%" xref="S5.T3.3.3.3.1.1.1.1.1.1.m1.1.1.2.cmml">250</mn><mo id="S5.T3.3.3.3.1.1.1.1.1.1.m1.1.1.1" xref="S5.T3.3.3.3.1.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S5.T3.3.3.3.1.1.1.1.1.1.m1.1.1.3" mathsize="90%" xref="S5.T3.3.3.3.1.1.1.1.1.1.m1.1.1.3.cmml">M</mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.1.1.1.1.1.1.m1.1b"><apply id="S5.T3.3.3.3.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T3.3.3.3.1.1.1.1.1.1.m1.1.1"><times id="S5.T3.3.3.3.1.1.1.1.1.1.m1.1.1.1.cmml" xref="S5.T3.3.3.3.1.1.1.1.1.1.m1.1.1.1"></times><cn id="S5.T3.3.3.3.1.1.1.1.1.1.m1.1.1.2.cmml" type="integer" xref="S5.T3.3.3.3.1.1.1.1.1.1.m1.1.1.2">250</cn><ci id="S5.T3.3.3.3.1.1.1.1.1.1.m1.1.1.3.cmml" xref="S5.T3.3.3.3.1.1.1.1.1.1.m1.1.1.3">𝑀</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.1.1.1.1.1.1.m1.1c">250M</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.1.1.1.1.1.1.m1.1d">250 italic_M</annotation></semantics></math></span></span>
</span></span> <span class="ltx_text" id="S5.T3.3.3.3.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.4.4.4.2">NeoBERT<sub class="ltx_sub" id="S5.T3.4.4.4.2.1"><span class="ltx_text ltx_font_italic" id="S5.T3.4.4.4.2.1.1">1024</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4.3">88.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.4.4.4.4.1">93.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4.5">90.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4.6">91.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.4.4.4.7.1">95.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4.8">93.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4.9">64.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.4.4.4.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.4.4.4.10.1">92.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4.11">88.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.5">
<td class="ltx_td ltx_align_left" id="S5.T3.5.5.5.1">NeoBERT<sub class="ltx_sub" id="S5.T3.5.5.5.1.1"><span class="ltx_text ltx_font_italic" id="S5.T3.5.5.5.1.1.1">4096</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.5.5.5.2.1">89.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5.3">93.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.5.5.5.4.1">90.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.5.5.5.5.1">91.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5.6">95.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.5.5.5.7.1">93.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.5.5.5.8.1">66.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.5.5.5.9">91.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.5.5.5.10.1">89.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.6.6.6.1" rowspan="5"><span class="ltx_text" id="S5.T3.6.6.6.1.1"><span class="ltx_text" id="S5.T3.6.6.6.1.1.2"></span> <span class="ltx_text" id="S5.T3.6.6.6.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.6.6.6.1.1.1.1">
<span class="ltx_tr" id="S5.T3.6.6.6.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.6.6.6.1.1.1.1.2.1">Large</span></span>
<span class="ltx_tr" id="S5.T3.6.6.6.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.6.6.6.1.1.1.1.1.1"><span class="ltx_text" id="S5.T3.6.6.6.1.1.1.1.1.1.1" style="font-size:90%;">(<math alttext="\geq 340M" class="ltx_Math" display="inline" id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1"><semantics id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1a"><mrow id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1" xref="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.cmml"><mi id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.2" xref="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.2.cmml"></mi><mo id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.1" xref="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.1.cmml">≥</mo><mrow id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.3" xref="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.3.cmml"><mn id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.3.2" xref="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.3.2.cmml">340</mn><mo id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.3.1" xref="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.3.3" xref="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.3.3.cmml">M</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1b"><apply id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1"><geq id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.1.cmml" xref="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.1"></geq><csymbol cd="latexml" id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.2.cmml" xref="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.2">absent</csymbol><apply id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.3.cmml" xref="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.3"><times id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.3.1.cmml" xref="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.3.1"></times><cn id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.3.2">340</cn><ci id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.3.3.cmml" xref="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1.1.3.3">𝑀</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1c">\geq 340M</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.6.1.1.1.1.1.1.1.m1.1d">≥ 340 italic_M</annotation></semantics></math>)</span></span></span>
</span></span> <span class="ltx_text" id="S5.T3.6.6.6.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.6.6.6.2">BERT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.6.3">86.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.6.4">92.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.6.5">72.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.6.6">70.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.6.7">94.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.6.8">89.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.6.9">60.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.6.6.10">86.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.6.11">82.1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.11">
<td class="ltx_td ltx_align_left" id="S5.T3.6.6.11.1">RoBERTa</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.2">90.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.3">94.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.4">92.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.5">86.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.6">96.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.7">90.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.8">68.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.6.11.9">92.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.10">88.9</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.12">
<td class="ltx_td ltx_align_left" id="S5.T3.6.6.12.1">DeBERTaV3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.2"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.12.2.1">91.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.3"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.12.3.1">96.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.4"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.12.4.1">93.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.5"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.12.5.1">92.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.6">96.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.7">91.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.8"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.12.8.1">75.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.6.12.9"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.12.9.1">93.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.10"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.12.10.1">91.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.13">
<td class="ltx_td ltx_align_left" id="S5.T3.6.6.13.1">GTE-en-8192</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.2">89.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.3">93.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.4">89.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.5">88.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.6">95.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.7"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.13.7.1">93.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.8">60.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.6.13.9">91.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.10">87.6</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.6.6.14.1">ModernBERT</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.14.2">90.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.14.3">95.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.14.4">92.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.14.5">92.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.14.6"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.14.6.1">97.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.14.7">91.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.14.8">71.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.6.6.14.9">92.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.14.10">90.5</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the throughput, measured in thousands of tokens processed per second, for different language models at various sequence lengths.  The throughput is determined using the optimal batch size for each model and sequence length combination. This allows for a comparison of the efficiency of each model in handling different input sizes, which is critical for real-world applications where processing speed is often a major constraint. The models are grouped by size (base, medium, large).
> <details>
> <summary>read the caption</summary>
> Table 9: Throughput (103superscript10310^{3}10 start_POSTSUPERSCRIPT 3 end_POSTSUPERSCRIPT tokens / second) in function of the sequence length, with optimal batch size.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.19587/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19587/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}