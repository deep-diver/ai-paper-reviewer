---
title: "DyMU: Dynamic Merging and Virtual Unmerging for Efficient VLMs"
summary: "DYMU: Efficient VLMs via Dynamic Token Management"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 University of Illinois Urbana-Champaign",]
showSummary: true
date: 2025-04-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.17040 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhenhailong Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.17040" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.17040" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.17040/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Vision-Language Models (VLMs) often process images with a fixed number of visual tokens, regardless of image complexity, leading to computational inefficiency. To address this, the paper introduces Dynamic Merging and Virtual Unmerging (DYMU). DYMU dynamically reduces visual token lengths based on image complexity; simpler images are represented using fewer tokens, while more complex images retain more tokens. This training-free framework aims to reduce the computational burden of VLMs while maintaining high task performance. 



DYMU comprises two key components: Dynamic Token Merging (DToMe), which reduces the number of visual token embeddings by merging similar tokens, and Virtual Token Unmerging (VTU), which simulates the expected token sequence for LLMs by efficiently reconstructing the attention dynamics of a full sequence. Experimental results demonstrate that DYMU can reduce the average visual token count by 32%-85% while achieving comparable performance to full-length models across diverse VLM architectures. **DYMU offers a more efficient plug-and-play alternative to VLMs**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DYMU dynamically adjusts visual token lengths based on image complexity, improving efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method maintains competitive performance while significantly reducing computational costs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DYMU is training-free and applicable to various VLM architectures. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces DYMU, a method for **dynamically adjusting visual token counts** in VLMs, enhancing efficiency and opening new avenues for adaptive, content-aware processing in multimodal AI.

------
#### Visual Insights



![](https://arxiv.org/html/2504.17040/extracted/6384571/assets/method.png)

> 🔼 The figure illustrates the core idea of DyMU, a method for efficient processing of visual information in Vision-Language Models (VLMs).  The left side shows how DyMU dynamically adjusts the number of visual tokens based on image complexity: simpler images use fewer tokens, while complex images use more.  This contrasts with existing methods (like CLIP) that always use a fixed number of tokens. The right side demonstrates that using DyMU with various recent VLMs achieves competitive performance even with significant reductions in the number of tokens, highlighting its efficiency and plug-and-play nature. The method is training-free, preserving important semantic information.
> <details>
> <summary>read the caption</summary>
> Figure 1: Dynamic Merging and Virtual Unmerging (DyMU) adaptively reduces visual token lengths based on image complexity, as shown on the left where simpler images are represented using fewer tokens. In contrast, existing representations (like CLIP) always use the same number of tokens regardless of image content. DyMU applied to recent VLMs (right) maintains competitive performance across different token compression levels. This training-free approach preserves key semantic information, offering a more efficient plug-and-play alternative to VLMs with fixed-length visual tokens.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.36.36.36">
<tr class="ltx_tr" id="S2.36.36.36.37" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_border_tt" id="S2.36.36.36.37.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S2.36.36.36.37.2" style="width:45.5pt;padding-top:1pt;padding-bottom:1pt;">
<table class="ltx_tabular ltx_align_top" id="S2.36.36.36.37.2.1">
<tr class="ltx_tr" id="S2.36.36.36.37.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.2.1.1.1.1">Component</span></td>
</tr>
<tr class="ltx_tr" id="S2.36.36.36.37.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.2.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.2.1.2.1.1" style="background-color:#FFFFFF;">Improved</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S2.36.36.36.37.3" style="width:29.9pt;padding-top:1pt;padding-bottom:1pt;">
<table class="ltx_tabular ltx_align_top" id="S2.36.36.36.37.3.1">
<tr class="ltx_tr" id="S2.36.36.36.37.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.3.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.3.1.1.1.1">Dynamic</span></td>
</tr>
<tr class="ltx_tr" id="S2.36.36.36.37.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.3.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.3.1.2.1.1" style="background-color:#FFFFFF;">Length</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S2.36.36.36.37.4" style="width:34.1pt;padding-top:1pt;padding-bottom:1pt;">
<table class="ltx_tabular ltx_align_top" id="S2.36.36.36.37.4.1">
<tr class="ltx_tr" id="S2.36.36.36.37.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.4.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.4.1.1.1.1">No Addn.</span></td>
</tr>
<tr class="ltx_tr" id="S2.36.36.36.37.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.4.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.4.1.2.1.1" style="background-color:#FFFFFF;">Modules</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S2.36.36.36.37.5" style="width:32.7pt;padding-top:1pt;padding-bottom:1pt;">
<table class="ltx_tabular ltx_align_top" id="S2.36.36.36.37.5.1">
<tr class="ltx_tr" id="S2.36.36.36.37.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.5.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.5.1.1.1.1">Training</span></td>
</tr>
<tr class="ltx_tr" id="S2.36.36.36.37.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.5.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.5.1.2.1.1" style="background-color:#FFFFFF;">Free</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S2.36.36.36.37.6" style="width:39.8pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.36.36.36.37.6.1">
<span class="ltx_p" id="S2.36.36.36.37.6.1.1"><span class="ltx_text ltx_font_bold ltx_inline-block" id="S2.36.36.36.37.6.1.1.1" style="width:39.8pt;">
<span class="ltx_tabular ltx_align_middle" id="S2.36.36.36.37.6.1.1.1.1">
<span class="ltx_tr" id="S2.36.36.36.37.6.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.6.1.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Granularity</span></span>
<span class="ltx_tr" id="S2.36.36.36.37.6.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.6.1.1.1.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S2.36.36.36.37.6.1.1.1.1.2.1.1" style="background-color:#FFFFFF;">Control</span></span></span>
</span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="S2.36.36.36.37.7" style="width:28.5pt;padding-top:1pt;padding-bottom:1pt;">
<table class="ltx_tabular ltx_align_top" id="S2.36.36.36.37.7.1">
<tr class="ltx_tr" id="S2.36.36.36.37.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.7.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.7.1.1.1.1">Extra</span></td>
</tr>
<tr class="ltx_tr" id="S2.36.36.36.37.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.7.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.7.1.2.1.1" style="background-color:#FFFFFF;">Cond.</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S2.4.4.4.4" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.4.4.4.4.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S2.4.4.4.4.5.1" style="background-color:#FFFFFF;">LLaMA-VID <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17040v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S2.4.4.4.4.6" style="width:45.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.4.4.4.4.6.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.4.4.4.4.6.1.1">Projector</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S2.1.1.1.1.1" style="width:29.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.1.1.1.1.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.1.1.1.1.1.1.1"><span class="ltx_text" id="S2.1.1.1.1.1.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.1.1.1.1.1.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S2.2.2.2.2.2" style="width:34.1pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.2.2.2.2.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.2.2.2.2.2.1.1"><span class="ltx_text" id="S2.2.2.2.2.2.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.2.2.2.2.2.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S2.3.3.3.3.3" style="width:32.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.3.3.3.3.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.3.3.3.3.3.1.1"><span class="ltx_text" id="S2.3.3.3.3.3.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.3.3.3.3.3.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S2.4.4.4.4.4" style="width:39.8pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.4.4.4.4.4.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.4.4.4.4.4.1.1"><span class="ltx_text" id="S2.4.4.4.4.4.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.4.4.4.4.4.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S2.4.4.4.4.7" style="width:28.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.4.4.4.4.7.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.4.4.4.4.7.1.1">None</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.8.8.8.8" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left" id="S2.8.8.8.8.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S2.8.8.8.8.5.1" style="background-color:#F2F2F2;">Fast-V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17040v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.8.8.8.8.6" style="width:45.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.8.8.8.8.6.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.8.8.8.8.6.1.1">Decoder</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.5.5.5.5.1" style="width:29.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.5.5.5.5.1.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.5.5.5.5.1.1.1"><span class="ltx_text" id="S2.5.5.5.5.1.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.5.5.5.5.1.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.6.6.6.6.2" style="width:34.1pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.6.6.6.6.2.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.6.6.6.6.2.1.1"><span class="ltx_text" id="S2.6.6.6.6.2.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.6.6.6.6.2.1.1.1.g1" src="extracted/6384571/assets/emojis/check.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.7.7.7.7.3" style="width:32.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.7.7.7.7.3.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.7.7.7.7.3.1.1"><span class="ltx_text" id="S2.7.7.7.7.3.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.7.7.7.7.3.1.1.1.g1" src="extracted/6384571/assets/emojis/check.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.8.8.8.8.4" style="width:39.8pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.8.8.8.8.4.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.8.8.8.8.4.1.1"><span class="ltx_text" id="S2.8.8.8.8.4.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.8.8.8.8.4.1.1.1.g1" src="extracted/6384571/assets/emojis/check.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle" id="S2.8.8.8.8.7" style="width:28.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.8.8.8.8.7.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.8.8.8.8.7.1.1">None</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.12.12.12.12" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left" id="S2.12.12.12.12.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S2.12.12.12.12.5.1" style="background-color:#FFFFFF;">SparseVLM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17040v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.12.12.12.12.6" style="width:45.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.12.12.12.12.6.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.12.12.12.12.6.1.1">Decoder</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.9.9.9.9.1" style="width:29.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.9.9.9.9.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.9.9.9.9.1.1.1"><span class="ltx_text" id="S2.9.9.9.9.1.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.9.9.9.9.1.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.10.10.10.10.2" style="width:34.1pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.10.10.10.10.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.10.10.10.10.2.1.1"><span class="ltx_text" id="S2.10.10.10.10.2.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.10.10.10.10.2.1.1.1.g1" src="extracted/6384571/assets/emojis/check.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.11.11.11.11.3" style="width:32.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.11.11.11.11.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.11.11.11.11.3.1.1"><span class="ltx_text" id="S2.11.11.11.11.3.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.11.11.11.11.3.1.1.1.g1" src="extracted/6384571/assets/emojis/check.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.12.12.12.12.4" style="width:39.8pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.12.12.12.12.4.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.12.12.12.12.4.1.1"><span class="ltx_text" id="S2.12.12.12.12.4.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.12.12.12.12.4.1.1.1.g1" src="extracted/6384571/assets/emojis/check.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle" id="S2.12.12.12.12.7" style="width:28.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.12.12.12.12.7.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.12.12.12.12.7.1.1">Text</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.16.16.16.16" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left" id="S2.16.16.16.16.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S2.16.16.16.16.5.1" style="background-color:#F2F2F2;">MQT-LLaVA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17040v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.16.16.16.16.6" style="width:45.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.16.16.16.16.6.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.16.16.16.16.6.1.1">Projector</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.13.13.13.13.1" style="width:29.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.13.13.13.13.1.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.13.13.13.13.1.1.1"><span class="ltx_text" id="S2.13.13.13.13.1.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.13.13.13.13.1.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.14.14.14.14.2" style="width:34.1pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.14.14.14.14.2.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.14.14.14.14.2.1.1"><span class="ltx_text" id="S2.14.14.14.14.2.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.14.14.14.14.2.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.15.15.15.15.3" style="width:32.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.15.15.15.15.3.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.15.15.15.15.3.1.1"><span class="ltx_text" id="S2.15.15.15.15.3.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.15.15.15.15.3.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.16.16.16.16.4" style="width:39.8pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.16.16.16.16.4.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.16.16.16.16.4.1.1"><span class="ltx_text" id="S2.16.16.16.16.4.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.16.16.16.16.4.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle" id="S2.16.16.16.16.7" style="width:28.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.16.16.16.16.7.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.16.16.16.16.7.1.1">None</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.20.20.20.20" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left" id="S2.20.20.20.20.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S2.20.20.20.20.5.1" style="background-color:#FFFFFF;">LLaVA-Prumerge <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17040v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.20.20.20.20.6" style="width:45.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.20.20.20.20.6.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.20.20.20.20.6.1.1">Projector</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.17.17.17.17.1" style="width:29.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.17.17.17.17.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.17.17.17.17.1.1.1"><span class="ltx_text" id="S2.17.17.17.17.1.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.17.17.17.17.1.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.18.18.18.18.2" style="width:34.1pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.18.18.18.18.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.18.18.18.18.2.1.1"><span class="ltx_text" id="S2.18.18.18.18.2.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.18.18.18.18.2.1.1.1.g1" src="extracted/6384571/assets/emojis/check.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.19.19.19.19.3" style="width:32.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.19.19.19.19.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.19.19.19.19.3.1.1"><span class="ltx_text" id="S2.19.19.19.19.3.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.19.19.19.19.3.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.20.20.20.20.4" style="width:39.8pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.20.20.20.20.4.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.20.20.20.20.4.1.1"><span class="ltx_text" id="S2.20.20.20.20.4.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.20.20.20.20.4.1.1.1.g1" src="extracted/6384571/assets/emojis/check.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle" id="S2.20.20.20.20.7" style="width:28.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.20.20.20.20.7.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.20.20.20.20.7.1.1">None</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.24.24.24.24" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left" id="S2.24.24.24.24.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S2.24.24.24.24.5.1" style="background-color:#F2F2F2;">TokenPacker <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17040v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.24.24.24.24.6" style="width:45.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.24.24.24.24.6.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.24.24.24.24.6.1.1">Projector</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.21.21.21.21.1" style="width:29.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.21.21.21.21.1.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.21.21.21.21.1.1.1"><span class="ltx_text" id="S2.21.21.21.21.1.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.21.21.21.21.1.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.22.22.22.22.2" style="width:34.1pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.22.22.22.22.2.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.22.22.22.22.2.1.1"><span class="ltx_text" id="S2.22.22.22.22.2.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.22.22.22.22.2.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.23.23.23.23.3" style="width:32.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.23.23.23.23.3.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.23.23.23.23.3.1.1"><span class="ltx_text" id="S2.23.23.23.23.3.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.23.23.23.23.3.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.24.24.24.24.4" style="width:39.8pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.24.24.24.24.4.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.24.24.24.24.4.1.1"><span class="ltx_text" id="S2.24.24.24.24.4.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.24.24.24.24.4.1.1.1.g1" src="extracted/6384571/assets/emojis/check.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle" id="S2.24.24.24.24.7" style="width:28.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.24.24.24.24.7.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.24.24.24.24.7.1.1">None</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.28.28.28.28" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left" id="S2.28.28.28.28.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S2.28.28.28.28.5.1" style="background-color:#FFFFFF;">ATP-LLaVA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17040v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.28.28.28.28.6" style="width:45.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.28.28.28.28.6.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.28.28.28.28.6.1.1">Decoder</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.25.25.25.25.1" style="width:29.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.25.25.25.25.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.25.25.25.25.1.1.1"><span class="ltx_text" id="S2.25.25.25.25.1.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.25.25.25.25.1.1.1.1.g1" src="extracted/6384571/assets/emojis/check.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.26.26.26.26.2" style="width:34.1pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.26.26.26.26.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.26.26.26.26.2.1.1"><span class="ltx_text" id="S2.26.26.26.26.2.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.26.26.26.26.2.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.27.27.27.27.3" style="width:32.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.27.27.27.27.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.27.27.27.27.3.1.1"><span class="ltx_text" id="S2.27.27.27.27.3.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.27.27.27.27.3.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.28.28.28.28.4" style="width:39.8pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.28.28.28.28.4.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.28.28.28.28.4.1.1"><span class="ltx_text" id="S2.28.28.28.28.4.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.28.28.28.28.4.1.1.1.g1" src="extracted/6384571/assets/emojis/check.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle" id="S2.28.28.28.28.7" style="width:28.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.28.28.28.28.7.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.28.28.28.28.7.1.1">Text</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.32.32.32.32" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left" id="S2.32.32.32.32.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S2.32.32.32.32.5.1" style="background-color:#F2F2F2;">LLaVA-mini <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17040v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.32.32.32.32.6" style="width:45.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.32.32.32.32.6.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.32.32.32.32.6.1.1">Projector</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.29.29.29.29.1" style="width:29.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.29.29.29.29.1.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.29.29.29.29.1.1.1"><span class="ltx_text" id="S2.29.29.29.29.1.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.29.29.29.29.1.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.30.30.30.30.2" style="width:34.1pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.30.30.30.30.2.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.30.30.30.30.2.1.1"><span class="ltx_text" id="S2.30.30.30.30.2.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.30.30.30.30.2.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.31.31.31.31.3" style="width:32.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.31.31.31.31.3.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.31.31.31.31.3.1.1"><span class="ltx_text" id="S2.31.31.31.31.3.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.31.31.31.31.3.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S2.32.32.32.32.4" style="width:39.8pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.32.32.32.32.4.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.32.32.32.32.4.1.1"><span class="ltx_text" id="S2.32.32.32.32.4.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.32.32.32.32.4.1.1.1.g1" src="extracted/6384571/assets/emojis/cross.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle" id="S2.32.32.32.32.7" style="width:28.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.32.32.32.32.7.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S2.32.32.32.32.7.1.1">None</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.36.36.36.36" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.36.36.36.36.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_ERROR undefined" id="S2.36.36.36.36.5.1">\ours</span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S2.36.36.36.36.6" style="width:45.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.36.36.36.36.6.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.36.36.36.36.6.1.1">Encoder &amp; Decoder</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S2.33.33.33.33.1" style="width:29.9pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.33.33.33.33.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.33.33.33.33.1.1.1"><span class="ltx_text" id="S2.33.33.33.33.1.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.33.33.33.33.1.1.1.1.g1" src="extracted/6384571/assets/emojis/check.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S2.34.34.34.34.2" style="width:34.1pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.34.34.34.34.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.34.34.34.34.2.1.1"><span class="ltx_text" id="S2.34.34.34.34.2.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.34.34.34.34.2.1.1.1.g1" src="extracted/6384571/assets/emojis/check.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S2.35.35.35.35.3" style="width:32.7pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.35.35.35.35.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.35.35.35.35.3.1.1"><span class="ltx_text" id="S2.35.35.35.35.3.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.35.35.35.35.3.1.1.1.g1" src="extracted/6384571/assets/emojis/check.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S2.36.36.36.36.4" style="width:39.8pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.36.36.36.36.4.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.36.36.36.36.4.1.1"><span class="ltx_text" id="S2.36.36.36.36.4.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.36.36.36.36.4.1.1.1.g1" src="extracted/6384571/assets/emojis/check.png" width="17"/></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb" id="S2.36.36.36.36.7" style="width:28.5pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.36.36.36.36.7.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S2.36.36.36.36.7.1.1">None</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the computational cost (measured in Million Floating Point Operations Per Second, or MFLOPS) of the standard self-attention mechanism in large language models (LLMs) with the proposed Virtual Token Unmerging (VTU) method.  It shows how VTU reduces the computational cost by processing only a subset of unique tokens compared to processing the full length sequence. The comparison is done for three levels of token reduction (low, mid, and high) and uses a fixed setting of batch size 1, 32 attention heads, and a head dimension of 128. The FLOPS are calculated using the fvcore package.  The table is crucial for demonstrating the efficiency gains achieved by VTU.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of million floating-point operations per second (MFLOPs) between original attention and Virtual Token Unmerging (VTU) attention. N𝑁Nitalic_N refers to full sequence length, Nu⁢nsubscript𝑁𝑢𝑛N_{un}italic_N start_POSTSUBSCRIPT italic_u italic_n end_POSTSUBSCRIPT refers to unique sequence length after merging. The statistics are computed with batch size 1, head number 32, and head dimension 128. We use the fvcore package for counting FLOPs.
> </details>





### In-depth insights


#### Adaptive Tokenization
Adaptive tokenization represents a paradigm shift in processing visual data for VLMs. Instead of fixed-length token sequences, the model dynamically adjusts the number of tokens based on image complexity. This offers several advantages: **increased efficiency by reducing computational burden for simple images, improved detail retention for complex scenes, and greater user control over computational cost.** The key challenge lies in balancing token reduction with preserving semantic information, ensuring that the LLM receives sufficient context for accurate reasoning. Strategies for adaptive tokenization could involve merging similar tokens, pruning less important tokens, or employing hierarchical tokenization schemes. Success hinges on devising mechanisms that accurately assess image complexity and allocate tokens accordingly, while seamlessly integrating with existing VLM architectures.

#### Training-Free VLMs
**Training-free VLMs** represent a compelling area of research, offering a path to efficient adaptation and deployment. The ability to modify existing, pre-trained Vision-Language Models without extensive fine-tuning is highly desirable, as it reduces computational costs and data requirements. Techniques such as dynamic token merging can be implemented without the need for retraining, making them attractive for practical applications. A key challenge lies in preserving performance while reducing computational burden, and balancing compression ratios to maintain semantic detail. Training-free approaches offer greater flexibility, adapting the model's behavior without requiring retraining or additional modules. Exploring this field enables greater customization, allowing users to tailor VLM architectures to specific tasks without incurring substantial overhead.

#### ROPE Attention Fix
**RoPE (Rotary Position Embedding)**, is crucial for incorporating positional information in self-attention mechanisms, particularly in large language models (LLMs). Standard attention mechanisms often struggle to differentiate between token order. RoPE addresses this by encoding absolute positional data into the queries and keys, allowing the model to discern relative positions effectively. Enhancements might involve modifications to mitigate issues like performance degradation at extreme sequence lengths. Addressing inaccuracies could encompass novel normalization techniques or refined parameterizations of rotation angles to ensure smooth positional encoding. Further research aims at minimizing computational overhead while maintaining robust positional awareness, especially in memory constrained environments. The objective is refining RoPE such that it accurately represents relative positions of tokens.

#### Token Cost Control
**Token cost control** is a crucial aspect of efficient Vision-Language Model (VLM) design, directly impacting computational burden and resource allocation.  The work emphasizes the capability to dynamically adjust token numbers based on image complexity, offering a significant advantage over fixed-token approaches. By reducing tokens for simpler regions while preserving detail in complex areas, this strategy ensures efficient resource utilization. This method's flexibility is highlighted in the ability to combine with other vision tools like background removal and object detection, further optimizing token usage by focusing on relevant regions and achieving substantial reduction. The framework's adaptive nature allows for **direct user control** over computational cost, addressing limitations in existing systems where token allocation is fixed regardless of content. This provides significant **flexibility** in resource management and optimization based on specific task demands.

#### Spatial Tasks Lack
While the paper does not explicitly contain a section titled 'Spatial Tasks Lack', we can infer potential discussions around limitations in how VLMs handle spatial reasoning. This could manifest as difficulties in **understanding spatial relationships** between objects in an image (e.g., 'the cat is *under* the table'), **reasoning about object positions** relative to each other, or **integrating spatial information** from text with visual input. These limitations are likely due to the **fixed-length tokenization** or other related issues. Furthermore, the paper presents DYMU to better address these potential issues while **reducing the computational burden** of VLMs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.17040/x1.png)

> 🔼 This figure illustrates the two-stage process of DYMU (Dynamic Merging and Virtual Unmerging).  First, Dynamic Token Merging (DToMe) pre-computes thresholds for merging similar visual tokens in a vision transformer.  This is done by feeding a large batch of images into the model and identifying redundant tokens based on similarity scores. The algorithm prioritizes merging tokens in simpler images, leaving complex images relatively unchanged. During inference, DToMe dynamically merges tokens on a per-image basis using these pre-computed thresholds, leading to variable-length visual token sequences. Second, Virtual Token Unmerging (VTU) reconstructs the attention dynamics of a full-length token sequence for the language model, efficiently simulating the attention interactions that would have occurred with the complete sequence. This simulates the attention process that the language model expects, preserving its original weights and avoiding any performance degradation, despite the reduced token number.  This process is completely training-free.
> <details>
> <summary>read the caption</summary>
> Figure 2: Method Overview. \ours, is composed of two key ideas: Dynamic Token Merging (DToMe) and Virtual Token Unmerging (VTU). DToMe first determines per‐layer thresholds (left) by feeding a large batch of images into the vision transformer and computing bipartite token similarities. We rank these edges across the entire batch and choose the top-B⁢r𝐵𝑟Britalic_B italic_r (r=𝑟absentr=italic_r = desired average number of tokens, batch size B𝐵Bitalic_B). This leads to more edges from simpler images (with more redundancy) being chosen, while complex images remain less merged. During inference, DToMe merges tokens on a per‐image basis using these pre-computed thresholds. We then apply VTU (right) in the self‐attention layers of the pretrained VLM to efficiently expand the attention matrices to the standard token count—ensuring the model’s original weights and outputs remain compatible—before re‐merging the tokens for the next layer. The overall process is training‐free and utilizes crucial image information by allocating the token budget more effectively for both simple and complex images.
> </details>



![](https://arxiv.org/html/2504.17040/x2.png)

> 🔼 Table 2 compares the performance of DYMU with other state-of-the-art methods designed to improve the efficiency of the LLaVA 1.5 vision-language model.  It demonstrates that DYMU-low achieves nearly the same performance as the original full-length model while using only about 15% of the visual tokens.  The table highlights that DYMU is unique because it's training-free and outperforms other training-free methods that use fixed-length token compression.  DYMU also offers the advantage of variable-length visual token outputs, adapting to the complexity of each image.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison with state-of-the-art methods for improving efficiency on LLaVA 1.5 [25]. \ours-low achieves 97.7% of the original full-length LLaVA baseline’s performance while using only ∼similar-to\sim∼15% of the tokens. Importantly, \oursis entirely training-free and generally outperforms previous fixed-length, training-free methods such as [3, 5, 46], while also enabling variable-length outputs.
> </details>



![](https://arxiv.org/html/2504.17040/x3.png)

> 🔼 Figure 3 visually analyzes the relationship between image complexity and the number of tokens generated by the proposed Dynamic Token Merging (DToMe) method, part of the DYMU framework. The left panel shows a scatter plot illustrating a strong positive correlation: more complex images lead to a higher token count.  The right panel compares the performance (MME accuracy) of ToMe (fixed-length token approach) and DToMe (dynamic-length token approach) across various image complexity levels. It highlights how DToMe's dynamic approach yields better accuracy, particularly for complex images, by adaptively assigning more tokens as needed.
> <details>
> <summary>read the caption</summary>
> Figure 3: Image Complexity vs Token Count and Accuracy   The scatter plot (left) demonstrates a strong correlation between DyMU’s token count and image complexity score—more complex images naturally receive more tokens. On the right, MME accuracy at varying complexity levels is compared between ToMe (fixed-length) and DyMU (dynamic-length), highlighting the benefit of assigning additional tokens to complex images.
> </details>



![](https://arxiv.org/html/2504.17040/extracted/6384571/assets/qualitative_v2.png)

> 🔼 This figure demonstrates the importance of Virtual Token Unmerging (VTU) in improving the performance of vision-language models (VLMs).  Two token reduction methods, ToMe (fixed-length token reduction) and DToMe (variable-length token reduction), were applied to the visual encoder of the LLaVA 1.5 model. The results show that adding VTU significantly enhances performance across various benchmarks. This improvement highlights VTU's ability to effectively maintain performance even with different token reduction methods and varying levels of token compression.
> <details>
> <summary>read the caption</summary>
> Figure 4: Importance of Virtual Token Unmerging (VTU). We ablate the performance of LLaVA 1.5 with two token reduction methods applied to the visual encoder—ToMe (fixed‐length) and DToMe (variable‐length). We observe that applying VTU significantly improves performance on 8 out of 9 benchmarks, demonstrating robustness to varied token reduction methods.
> </details>



![](https://arxiv.org/html/2504.17040/x4.png)

> 🔼 Figure 5 is a comparison of two different methods for finding optimal thresholds in the Dynamic Token Merging (DToMe) algorithm.  The top panel shows the number of tokens generated using thresholds derived from the LLaVA Instruct dataset versus thresholds derived from the Pixmo-Cap dataset.  Even though both methods used the same per-layer merging hyperparameter, the Pixmo-Cap dataset yielded fewer tokens, likely due to differences in image content and characteristics between the two datasets. The bottom panel displays the performance (accuracy) on multiple benchmark datasets when using thresholds derived from each of the two datasets.  Despite the differing number of tokens produced, performance remains nearly identical. This demonstrates the robustness of the DToMe threshold estimation technique across diverse datasets.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparing thresholds using LLaVA Instruct Data vs Pixmo-Cap. Although both methods use the same per‐layer merging hyperparameter (risubscript𝑟𝑖r_{i}italic_r start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT ), the Pixmo‐based thresholds lead to fewer tokens (top)—likely due to domain differences. However, performance across a range of benchmarks shows minimal drop (bottom), indicating the robustness of our threshold estimation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_top" id="S2.36.36.36.37.2.1">
<tr class="ltx_tr" id="S2.36.36.36.37.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.2.1.1.1.1">Component</span></td>
</tr>
<tr class="ltx_tr" id="S2.36.36.36.37.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.2.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.2.1.2.1.1" style="background-color:#FFFFFF;">Improved</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of the performance of the proposed DYMU method using two different visual encoders: the original LLaVA-1.5 visual encoder and the SigLIP visual encoder.  The table shows that DYMU maintains strong performance across various vision-language tasks (MME, GQA, MMB, etc.) even when significantly reducing the number of visual tokens.  Specifically, the low-compression variant of DYMU achieves nearly the same performance as the full model, but with only about 15% of the visual tokens.  This demonstrates DYMU's adaptability to different visual encoders and its effectiveness in reducing computational costs without sacrificing accuracy.
> <details>
> <summary>read the caption</summary>
> Table 3: \oursdemonstrates similar efficacy on a different visual encoder, SigLIP [44]. We obtain the baseline by following the same training recipe as LLaVA-1.5[25]. \ours-SigLIP-low achieves 96.2%percent96.296.2\%96.2 % of the baseline performance while using ∼similar-to\sim∼15% visual tokens.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_top" id="S2.36.36.36.37.3.1">
<tr class="ltx_tr" id="S2.36.36.36.37.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.3.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.3.1.1.1.1">Dynamic</span></td>
</tr>
<tr class="ltx_tr" id="S2.36.36.36.37.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.3.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.3.1.2.1.1" style="background-color:#FFFFFF;">Length</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comprehensive evaluation of the proposed DYMU method on the LLaVA-OneVision model, a large vision-language model with an AnyRes architecture.  It demonstrates DYMU's effectiveness across various image and video understanding benchmarks.  The results show that even with a significant reduction in the number of visual tokens (DYMU-ov-low uses only ~14%), the model maintains a high level of performance, achieving approximately 96.5% of the baseline's accuracy. This highlights the efficiency and effectiveness of DYMU in reducing computational costs without sacrificing accuracy.
> <details>
> <summary>read the caption</summary>
> Table 4: \oursshows consistent effectiveness on an AnyRes VLM backbone, LLaVA-OneVision [19]. We additionally show performance on two comprehensive video understanding benchmarks, where \ours-ov-low achieves ∼similar-to\sim∼96.5% of the baseline’s performance with only ∼similar-to\sim∼14% tokens.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_top" id="S2.36.36.36.37.4.1">
<tr class="ltx_tr" id="S2.36.36.36.37.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.4.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.4.1.1.1.1">No Addn.</span></td>
</tr>
<tr class="ltx_tr" id="S2.36.36.36.37.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.4.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.4.1.2.1.1" style="background-color:#FFFFFF;">Modules</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of different token merging schedules within the Dynamic Token Merging (DToMe) component of the DYMU framework. Three schedules are compared: a constant schedule (where the number of tokens merged per layer remains consistent), a linear schedule (where more tokens are merged in earlier layers and progressively fewer in later layers), and a reverse linear schedule (the opposite of the linear schedule). The results show that merging fewer tokens in the earlier layers leads to slightly better performance. However, the constant schedule offers a balanced trade-off between performance and the number of tokens, which is why it is used as the default setting.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on merging schedules in DToMe. We compare three strategies: constant, linear (more merging in early layers), and reverse linear (more merging in later layers). Results show that merging fewer tokens in early layers yields better performance, while the constant schedule provides a balanced trade-off between performance and token count.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_top" id="S2.36.36.36.37.5.1">
<tr class="ltx_tr" id="S2.36.36.36.37.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.5.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.5.1.1.1.1">Training</span></td>
</tr>
<tr class="ltx_tr" id="S2.36.36.36.37.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.5.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.5.1.2.1.1" style="background-color:#FFFFFF;">Free</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the impact of Virtual Token Unmerging (VTU) on the performance of various vision-language models.  It compares the performance of models with and without VTU applied after employing two different token reduction methods: ToMe and DToMe. The results across multiple benchmarks demonstrate how VTU significantly improves performance on most benchmarks by effectively reconstructing the attention dynamics and simulating full token sequences despite the reduction in visual token counts.
> <details>
> <summary>read the caption</summary>
> Table 6: Impact of Virtual Token Unmerging. Full results for Figure 4.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_top" id="S2.36.36.36.37.7.1">
<tr class="ltx_tr" id="S2.36.36.36.37.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.7.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.7.1.1.1.1">Extra</span></td>
</tr>
<tr class="ltx_tr" id="S2.36.36.36.37.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.36.36.36.37.7.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.36.36.36.37.7.1.2.1.1" style="background-color:#FFFFFF;">Cond.</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of the dataset used for threshold finding on the performance of the Dynamic Token Merging (DToMe) method. It compares the performance of DYMU-mid, using thresholds derived from two different datasets: the LLaVA instruct dataset (default) and the Pixmo-Cap dataset.  The table shows performance metrics (GQA, MMB, MME, POPE, SQA, SEED, VQAT, MMVet, LLaVAW, and average) across various benchmarks for both thresholding strategies, allowing for a direct comparison and assessment of the robustness and generalization capabilities of DToMe in relation to dataset variation.
> <details>
> <summary>read the caption</summary>
> Table 7: Impact of dataset for threshold finding. Full results for Figure 5.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.17040/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17040/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17040/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17040/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17040/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17040/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17040/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17040/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17040/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17040/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17040/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17040/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17040/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17040/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}