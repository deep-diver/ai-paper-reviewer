---
title: "GoT: Unleashing Reasoning Capability of Multimodal Large Language Model for Visual Generation and Editing"
summary: "GoT: Reasoning guides vivid image generation and editing!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 CUHK MMLab",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10639 {{< /keyword >}}
{{< keyword icon="writer" >}} Rongyao Fang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10639" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10639" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10639/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current image generation methods often lack explicit reasoning, struggling with complex scenes. The paper addresses this by introducing Generation Chain-of-Thought (GoT), a novel paradigm that enables generation and editing through an explicit language reasoning process. This approach transforms conventional text-to-image methods into a reasoning-guided framework that analyzes semantic relationships and spatial arrangements to enhance outputs. 



The authors define the formulation of GoT and construct large-scale GoT datasets with detailed reasoning chains capturing semantic-spatial relationships. To leverage GoT, they implement a unified framework that integrates a reasoning chain generation with an end-to-end diffusion model enhanced by a novel Semantic-Spatial Guidance Module. Experiments show the framework achieves excellent performance on both generation and editing tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces Generation Chain-of-Thought (GoT), a new paradigm for visual generation and editing. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Formulates semantic-spatial reasoning chains and creates large-scale GoT datasets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Develops a unified framework integrating MLLMs and diffusion models with a Semantic-Spatial Guidance Module. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important as it pioneers **reasoning-driven visual generation and editing**, paving the way for more intuitive and controllable image creation. It offers a novel framework and a large-scale dataset that can significantly impact future research in multimodal AI and visual content generation.

------
#### Visual Insights



![](https://arxiv.org/html/2503.10639/x2.png)

> 🔼 Figure 1 illustrates the Generation Chain-of-Thought (GoT) process, a novel approach for image generation and editing.  The figure showcases how input prompts are transformed into detailed reasoning chains, incorporating spatial coordinates. This structured reasoning guides both the generation of vivid images and precise, localized editing. The top panel demonstrates semantically-grounded visual generation; the middle shows controllable interactive generation; and the bottom demonstrates localized image editing.  The central role of the reasoning chain in unifying spatial understanding across different visual tasks is highlighted.
> <details>
> <summary>read the caption</summary>
> Figure 1: Generation Chain-of-Thought (GoT) with Semantic-Spatial Reasoning. Our approach transforms input prompts into explicit reasoning chains with coordinates (middle), which guides vivid image generation and precise editing (right). This reasoning-based generation paradigm unifies spatial understanding across visual tasks: semantically-grounded visual generation (top), controllable interactive generation (middle), and localized image editing (bottom).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T1.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T1.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.2.1">Architecture</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.3.1">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.4.1">Single Obj.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.5.1">Two Obj.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.6.1">Counting</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.7.1">Colors</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.8.1">Position</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.9.1">Attr. Binding</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="9" id="S5.T1.2.1.2.2.1"><span class="ltx_text ltx_font_italic" id="S5.T1.2.1.2.2.1.1">Frozen Text Encoder Mapping Methods</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T1.2.1.3.3.1">SDv1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.1.3.3.2">Unet+CLIP</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.1.3.3.3">0.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.3.3.4">0.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.3.3.5">0.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.3.3.6">0.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.3.3.7">0.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.3.3.8">0.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.3.3.9">0.06</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.2.1.4.4.1">SDv2.1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.4.4.2">Unet+CLIP</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.4.4.3">0.50</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.4.4.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.2.1.4.4.4.1">0.98</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.4.4.5">0.51</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.4.4.6">0.44</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.4.4.7"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.4.4.7.1">0.85</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.4.4.8">0.07</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.4.4.9">0.17</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.2.1.5.5.1">SD-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.5.5.2">Unet+CLIP</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.5.5.3">0.55</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.2.1.5.5.4.1">0.98</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.5"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.5.5.5.1">0.74</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.6">0.39</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.7"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.5.5.7.1">0.85</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.8">0.15</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.9">0.23</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.2.1.6.6.1">DALLE-2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.6.6.2">Unet+CLIP</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.6.6.3">0.52</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.4">0.94</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.5">0.66</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.6">0.49</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.7">0.77</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.8">0.10</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.9">0.19</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.2.1.7.7.1">SD3 (d=24) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.7.7.2">MMDIT+CLIP+T5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.7.7.3">0.62</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.2.1.7.7.4.1">0.98</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.5"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.7.7.5.1">0.74</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.2.1.7.7.6.1">0.63</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.7">0.67</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.8">0.34</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.2.1.7.7.9.1">0.36</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="9" id="S5.T1.2.1.8.8.1"><span class="ltx_text ltx_font_italic" id="S5.T1.2.1.8.8.1.1">LLMs/MLLMs Enhanced Methods</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T1.2.1.9.9.1">LlamaGen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.1.9.9.2">Autoregressive</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.1.9.9.3">0.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.9.9.4">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.9.9.5">0.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.9.9.6">0.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.9.9.7">0.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.9.9.8">0.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.9.9.9">0.04</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.2.1.10.10.1">Chameleon <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.10.10.2">Autoregressive</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.10.10.3">0.39</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.7">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.9">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.2.1.11.11.1">LWM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.11.11.2">Autoregressive</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.11.11.3">0.47</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.4">0.93</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.5">0.41</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.6">0.46</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.7">0.79</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.8">0.09</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.9">0.15</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.2.1.12.12.1">SEED-X <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.12.12.2">Unet+Llama</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.12.12.3">0.49</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.4">0.97</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.5">0.58</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.6">0.26</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.7">0.80</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.8">0.19</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.9">0.14</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.2.1.13.13.1">Emu3-Gen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.13.13.2">Autoregressive</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.13.13.3">0.54</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.13.13.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.2.1.13.13.4.1">0.98</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.13.13.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.2.1.13.13.5.1">0.71</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.13.13.6">0.34</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.13.13.7">0.81</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.13.13.8">0.17</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.13.13.9">0.21</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.2.1.14.14.1">Janus <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.14.14.2">Autoregressive</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.14.14.3">0.61</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.14.14.4">0.97</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.14.14.5">0.68</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.14.14.6">0.30</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.14.14.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.2.1.14.14.7.1">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.14.14.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.2.1.14.14.8.1">0.46</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.14.14.9"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.14.14.9.1">0.42</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.2.1.15.15.1">JanusFlow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.15.15.2">Autoregressive</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.15.15.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.2.1.15.15.3.1">0.63</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.15.15.4">0.97</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.15.15.5">0.59</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.15.15.6">0.45</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.15.15.7">0.83</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.15.15.8"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.15.15.8.1">0.53</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.15.15.9"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.15.15.9.1">0.42</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.16.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S5.T1.2.1.16.16.1"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.16.16.1.1">GoT Framework</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T1.2.1.16.16.2">Unet+Qwen2.5-VL</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T1.2.1.16.16.3"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.16.16.3.1">0.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.1.16.16.4"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.16.16.4.1">0.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.1.16.16.5">0.69</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.1.16.16.6"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.16.16.6.1">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.1.16.16.7"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.16.16.7.1">0.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.1.16.16.8">0.34</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.1.16.16.9">0.27</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative evaluation of various text-to-image generation models on the GenEval benchmark.  It compares the performance of different models across several aspects of image generation, including overall image quality, the accuracy of generating single and multiple objects, the ability to correctly count objects in the scene, and the accuracy in depicting colors and object positions.  The models are evaluated based on how well they accurately represent object attributes and the relationships between objects.  The results highlight the strengths and weaknesses of different methods in producing high-quality and accurate images from textual descriptions.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation of text-to-image generation on GenEval benchmark [14]. Obj.: Object. Attr.: Attribution.
> </details>





### In-depth insights


#### GoT Formulation
While "GoT Formulation" wasn't explicitly a section, the research inherently formulates a novel approach to visual generation and editing. This involves translating textual prompts into structured, explicit reasoning chains that guide the generation or editing process. **The key insight lies in decomposing complex visual tasks into a sequence of simpler, spatially-aware operations**. This involves analyzing the semantic relationships between objects in a scene, determining their spatial arrangements using coordinate information, and then using this structured information to guide the image generation or editing process. Traditional methods often lack this explicit reasoning, leading to difficulties in controlling object placement, attributes, and inter-object relationships.  GoT's formulation also necessitates a new type of dataset: one that includes detailed reasoning chains alongside images, capturing both semantic and spatial information. **This formulation highlights the importance of integrating reasoning capabilities into visual generation**, moving beyond simple text-to-image translation. 

#### Semantic-Spatial GoT
The concept of "Semantic-Spatial GoT" likely refers to a **Generation Chain-of-Thought approach** that integrates both semantic understanding and spatial reasoning for visual generation/editing. Traditional GoT focuses on step-by-step reasoning, while the Semantic-Spatial GoT extends this by incorporating **spatial information** (object locations/relationships). This fusion enables more precise control over the generated image's content and layout. The semantic aspect ensures objects are logically related, and the spatial aspect grounds these relationships in specific locations. By encoding both semantic and spatial information into the reasoning chain, the model gains a deeper understanding of the desired scene composition. That is, instead of relying solely on textual prompts, the model explicitly reasons about where objects should be placed/how they relate to each other. This approach is particularly useful in complex scenes with multiple objects or when precise spatial arrangements are needed. It could involve techniques for parsing spatial descriptions, encoding locations, and ensuring consistency between spatial and semantic representations.

#### MLLM+Diffusion
**MLLMs combined with diffusion models** represent a burgeoning area in multimodal AI research. This synergy seeks to leverage the strengths of both architectures. **MLLMs excel at reasoning and contextual understanding**, providing high-level semantic guidance. **Diffusion models offer unparalleled fidelity in image generation**, producing photorealistic outputs. Challenges involve effectively channeling MLLM's reasoning into the diffusion process, ensuring generated visuals align with complex, reasoned prompts. Techniques like cross-attention manipulation and spatial guidance modules are crucial for seamless integration, achieving **reasoning-driven, high-quality image synthesis**.

#### Interactive GoT
**Interactive visual generation** through the Generation Chain-of-Thought (GoT) framework represents a significant advancement in AI-driven image creation. It allows users to modify text and bounding box positions, enabling iterative refinement of generated content. This interactive approach bridges the gap between human intention and AI execution, providing a more intuitive and controllable creative process. This paradigm shift offers unprecedented flexibility and precision, enabling users to steer the generation process according to their specific preferences, leading to highly customized and aligned visual outputs. This innovation marks a move towards more collaborative human-AI creation workflows, enhancing creative expression and problem-solving capabilities within image synthesis.

#### Reasoning Limits
While large language models exhibit impressive reasoning, inherent limits remain. **Over-reliance on superficial patterns** hinders true understanding, leading to errors when faced with novel situations or adversarial inputs. **Context window limitations** restrict the amount of information considered, impacting performance on tasks requiring long-range dependencies. Furthermore, models struggle with **common-sense reasoning** and physical laws, often generating outputs inconsistent with real-world knowledge. Addressing these limits requires developing architectures that promote deeper semantic understanding, improving context handling, and incorporating external knowledge sources. Overcoming these limitations are crucial for reliable and robust reasoning.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10639/x3.png)

> 🔼 This figure details the process of constructing the GoT (Generation Chain-of-Thought) dataset, which is crucial for training the model.  The left side illustrates the pipeline for text-to-image generation.  Starting from a prompt, the pipeline uses Qwen2-VL [46] and Qwen2.5 [51] to generate detailed GoT annotations. These annotations include semantic content describing the scene and spatial coordinates precisely locating objects within the image. The right side shows the pipeline for image editing.  This pipeline takes a source image, a target image, and an editing instruction as input.  Again, using Qwen2-VL [46] and Qwen2.5 [51], entity-aware reasoning GoTs are generated with precise spatial grounding to guide the editing process.  Both pipelines ensure the generated GoTs capture comprehensive semantic-spatial relationships.
> <details>
> <summary>read the caption</summary>
> Figure 2: GoT Dataset Construction Process. Left: Text-to-image GoT annotation pipeline that labels detailed GoT with semantic content and spatial coordinates. Right: Editing GoT annotation pipeline that processes source image, target image, and instruction to generate entity-aware reasoning GoT with precise spatial grounding. Both pipelines leverage Qwen2-VL [46] and Qwen2.5 [51] models for various stages of the annotation process.
> </details>



![](https://arxiv.org/html/2503.10639/x4.png)

> 🔼 Figure 3 illustrates the GoT framework, a unified model for both text-to-image generation and image editing. The left panel shows the overall framework architecture, highlighting the integration of a multimodal large language model (MLLM) for reasoning and a diffusion model for image generation, guided by semantic and spatial information. The MLLM generates reasoning chains, which are then used by the SSGM (Semantic-Spatial Guidance Module) to condition the diffusion model. The right panel details the SSGM, which incorporates three types of guidance: spatial layout guidance (Gs), reference image guidance (Gr), and semantic guidance (Gt), to produce an image with precise content and spatial arrangement.
> <details>
> <summary>read the caption</summary>
> Figure 3: GoT Framework with Semantic-Spatial Guidance. Left: Our dual-task framework handling both text-to-image generation (T2I) and image editing. Right: The SSGM Diffusion Module, which combines spatial layouts guidance Gssubscript𝐺𝑠G_{s}italic_G start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT, reference image guidance Grsubscript𝐺𝑟G_{r}italic_G start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT, and semantic guidance Gtsubscript𝐺𝑡G_{t}italic_G start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT to generate the final image with precise content and spatial control.
> </details>



![](https://arxiv.org/html/2503.10639/x5.png)

> 🔼 This figure showcases example images generated by the GoT model.  The images demonstrate the model's ability to accurately interpret and translate textual descriptions into realistic and aesthetically pleasing visuals.  The GoT framework's capacity to reason about spatial relationships and object placement is evident in the precise positioning and arrangement of elements within each scene.  The high degree of alignment between the generated images and the input captions highlights the model's effectiveness in generating visually coherent and faithful representations of the intended concepts.
> <details>
> <summary>read the caption</summary>
> Figure 4: Text-to-Image samples generated by our model. The GoT framework can plan object placement based on the input caption and generate highly aligned and aesthetic images accordingly.
> </details>



![](https://arxiv.org/html/2503.10639/x6.png)

> 🔼 This figure showcases the interactive capabilities of the GoT framework.  Users can modify the generated image by adjusting the GoT's description and bounding box coordinates.  Three specific interactive editing operations are demonstrated: 1) replacing one object with another; 2) repositioning objects within the scene; and 3) altering an object's attributes (e.g., color).  The examples highlight the framework's ability to maintain scene coherence while precisely implementing user-specified changes.
> <details>
> <summary>read the caption</summary>
> Figure 5: Samples on interactive generation with GoT framework. By modifying GoT content (description and bounding box position), user can customize their text-to-image process with: 1. Object replacement 2. Object position adjustment 3. Object attribute modification.
> </details>



![](https://arxiv.org/html/2503.10639/x7.png)

> 🔼 Figure 6 showcases example results from image editing tasks, highlighting the GoT framework's ability to handle complex edits requiring both semantic understanding and precise spatial reasoning.  The examples demonstrate successful modifications of image content based on user instructions, such as removing objects, adding objects, or changing object attributes. Red bounding boxes overlaid on the images indicate the spatial regions identified by the multimodal large language model (MLLM) as relevant to the editing instructions. This visualization serves to illustrate the framework's capacity for precise control over visual elements and its superior performance compared to methods lacking explicit reasoning and spatial awareness.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative results of image editing. Our GoT framework demonstrates superior performance in settings that require semantic-spatial reasoning. Red bounding boxes indicate the coordinates predicted by MLLM within the GoT framework.
> </details>



![](https://arxiv.org/html/2503.10639/x8.png)

> 🔼 Figure 7 presents additional examples showcasing the capabilities of the GoT framework in image editing.  Each example shows an original image, the GoT reasoning chain generated by the model, the editing instructions and the final edited image. The GoT reasoning chain details the specific changes to be made, including coordinates for precise control of the editing process.
> <details>
> <summary>read the caption</summary>
> Figure 7: More samples on image editing with the GoT content generated by our model.
> </details>



![](https://arxiv.org/html/2503.10639/x9.png)

> 🔼 Figure 8 presents additional examples showcasing the interactive image generation capabilities of the GoT framework.  It demonstrates how users can modify various aspects of the generated image, such as object attributes, positions, and even the addition or removal of objects, by interactively adjusting the GoT reasoning chain.  The examples highlight the framework's flexibility and precision in allowing users to precisely control the final image output through explicit reasoning modifications.
> <details>
> <summary>read the caption</summary>
> Figure 8: More examples on interactive generation.
> </details>



![](https://arxiv.org/html/2503.10639/x10.png)

> 🔼 This figure visualizes the impact of different hyperparameter settings within the GoT framework's multi-guidance strategy on the quality of text-to-image generation.  It shows examples of images generated using various combinations of α and αs parameters, demonstrating how these settings affect the balance between semantic, spatial, and reference image guidance in the final output. The results illustrate the framework's ability to produce visually diverse outputs depending on the chosen hyperparameters.
> <details>
> <summary>read the caption</summary>
> Figure 9: Visualization on Multi-Guidance Strategy Hyper-parameter Selection. The above are text-to-image samples generated by GoT framework under different hyper-parameters.
> </details>



![](https://arxiv.org/html/2503.10639/x11.png)

> 🔼 Figure 10 shows examples from three datasets used in the paper: FLUX-GoT, JourneyDB-GoT, and Laion-Aesthetics-High-Resolution-GoT. Each example displays the image prompt, the generated image, and the corresponding GoT (Generation Chain-of-Thought). The GoT is a detailed, structured description of the image's content and layout that is automatically created by the model.  It includes semantic information (what objects are present) as well as spatial information (where they are located). These examples illustrate the structure of the dataset and how the GoT reasoning chains guide the image generation process.
> <details>
> <summary>read the caption</summary>
> Figure 10: Examples of GoT dataset for text-to-image generation, including FLUX-GoT, JourneyDB-GoT, and Laion-Aesthetics-High-Resolution-GoT.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T2.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S6.T2.1.1.2.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.2.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S6.T2.1.1.2.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.2.1.2.1">Params.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S6.T2.1.1.2.1.3"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.2.1.3.1">Emu-Edit</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T2.1.1.2.1.4"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.2.1.4.1">ImagenHub</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T2.1.1.2.1.5"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.2.1.5.1">Reason-Edit</span></th>
</tr>
<tr class="ltx_tr" id="S6.T2.1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T2.1.1.3.2.1"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.3.2.1.1">CLIP-I</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T2.1.1.3.2.2"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.3.2.2.1">CLIP-T</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T2.1.1.3.2.3"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.3.2.3.1">GPT-4o Eval.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T2.1.1.3.2.4"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.3.2.4.1">GPT-4o Eval.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T2.1.1.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.1.4.1.1">IP2P <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.1.4.1.2">0.9B+0.1B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.1.4.1.3">0.834</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.1.4.1.4">0.219</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.1.4.1.5">0.308</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.1.4.1.6">0.286</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.1.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.1.5.2.1">MagicBrush <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.1.5.2.2">0.9B+0.1B</th>
<td class="ltx_td ltx_align_center" id="S6.T2.1.1.5.2.3">0.838</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T2.1.1.5.2.4">0.222</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T2.1.1.5.2.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T2.1.1.5.2.5.1">0.513</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.1.5.2.6">0.334</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.1.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.1.6.3.1">MGIE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.1.6.3.2">0.9B+7B</th>
<td class="ltx_td ltx_align_center" id="S6.T2.1.1.6.3.3">0.783</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T2.1.1.6.3.4">0.253</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T2.1.1.6.3.5">0.392</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.1.6.3.6">0.264</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.1.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.1.7.4.1">Emu-Edit <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.1.7.4.2">-</th>
<td class="ltx_td ltx_align_center" id="S6.T2.1.1.7.4.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T2.1.1.7.4.3.1">0.859</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T2.1.1.7.4.4">0.231</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T2.1.1.7.4.5">-</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.1.7.4.6">-</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.1.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.1.8.5.1">SEED-X <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.1.8.5.2">2.8B+14B</th>
<td class="ltx_td ltx_align_center" id="S6.T2.1.1.8.5.3">0.825</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T2.1.1.8.5.4">0.272</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T2.1.1.8.5.5">0.166</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.1.8.5.6">0.239</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.1.1.1">SmartEdit<sup class="ltx_sup" id="S6.T2.1.1.1.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.1.1.2">0.9B+7B</th>
<td class="ltx_td ltx_align_center" id="S6.T2.1.1.1.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T2.1.1.1.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T2.1.1.1.5">-</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.6.1">0.572</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.1.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.1.9.6.1">CosXL-Edit <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10639v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.1.9.6.2">-</th>
<td class="ltx_td ltx_align_center" id="S6.T2.1.1.9.6.3">0.860</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T2.1.1.9.6.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T2.1.1.9.6.4.1">0.274</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T2.1.1.9.6.5">0.464</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.1.9.6.6">0.325</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.1.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S6.T2.1.1.10.7.1"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.10.7.1.1">GoT Framework</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S6.T2.1.1.10.7.2">2.8B+3B</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T2.1.1.10.7.3"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.10.7.3.1">0.864</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S6.T2.1.1.10.7.4"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.10.7.4.1">0.276</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S6.T2.1.1.10.7.5"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.10.7.5.1">0.533</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T2.1.1.10.7.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T2.1.1.10.7.6.1">0.561</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of various image editing models across multiple benchmark datasets.  The metrics evaluate the models' performance on different editing tasks, highlighting strengths and weaknesses.  One model, SmartEdit, is noted as primarily focusing on removing and replacing objects, and its scores are not fully comparable to models with broader editing capabilities.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparison on image editing benchmarks. † denotes that SmartEdit mainly supports removing and replacing operation and is not designed for general editing operations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T3.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T3.6.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T3.6.6.7.1.1"><span class="ltx_text ltx_font_bold" id="S6.T3.6.6.7.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T3.6.6.7.1.2"><span class="ltx_text ltx_font_bold" id="S6.T3.6.6.7.1.2.1">GoT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T3.6.6.7.1.3"><span class="ltx_text ltx_font_bold" id="S6.T3.6.6.7.1.3.1">SSGM</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T3.6.6.7.1.4"><span class="ltx_text ltx_font_bold" id="S6.T3.6.6.7.1.4.1">Pretrain</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T3.6.6.7.1.5"><span class="ltx_text ltx_font_bold" id="S6.T3.6.6.7.1.5.1">GenEval</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T3.6.6.7.1.6"><span class="ltx_text ltx_font_bold" id="S6.T3.6.6.7.1.6.1">ImagenHub</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T3.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T3.3.3.3.4">Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.1.1"><math alttext="\times" class="ltx_Math" display="inline" id="S6.T3.1.1.1.1.m1.1"><semantics id="S6.T3.1.1.1.1.m1.1a"><mo id="S6.T3.1.1.1.1.m1.1.1" xref="S6.T3.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.T3.1.1.1.1.m1.1b"><times id="S6.T3.1.1.1.1.m1.1.1.cmml" xref="S6.T3.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.T3.1.1.1.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.2.2.2.2"><math alttext="\times" class="ltx_Math" display="inline" id="S6.T3.2.2.2.2.m1.1"><semantics id="S6.T3.2.2.2.2.m1.1a"><mo id="S6.T3.2.2.2.2.m1.1.1" xref="S6.T3.2.2.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.T3.2.2.2.2.m1.1b"><times id="S6.T3.2.2.2.2.m1.1.1.cmml" xref="S6.T3.2.2.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.2.2.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.T3.2.2.2.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.3.3.3.3"><math alttext="\times" class="ltx_Math" display="inline" id="S6.T3.3.3.3.3.m1.1"><semantics id="S6.T3.3.3.3.3.m1.1a"><mo id="S6.T3.3.3.3.3.m1.1.1" xref="S6.T3.3.3.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.T3.3.3.3.3.m1.1b"><times id="S6.T3.3.3.3.3.m1.1.1.cmml" xref="S6.T3.3.3.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.3.3.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.T3.3.3.3.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.3.3.3.5">0.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.3.3.6">0.176</td>
</tr>
<tr class="ltx_tr" id="S6.T3.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T3.5.5.5.3">+ GoT</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T3.5.5.5.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T3.4.4.4.1"><math alttext="\times" class="ltx_Math" display="inline" id="S6.T3.4.4.4.1.m1.1"><semantics id="S6.T3.4.4.4.1.m1.1a"><mo id="S6.T3.4.4.4.1.m1.1.1" xref="S6.T3.4.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.T3.4.4.4.1.m1.1b"><times id="S6.T3.4.4.4.1.m1.1.1.cmml" xref="S6.T3.4.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.4.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.T3.4.4.4.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T3.5.5.5.2"><math alttext="\times" class="ltx_Math" display="inline" id="S6.T3.5.5.5.2.m1.1"><semantics id="S6.T3.5.5.5.2.m1.1a"><mo id="S6.T3.5.5.5.2.m1.1.1" xref="S6.T3.5.5.5.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.T3.5.5.5.2.m1.1b"><times id="S6.T3.5.5.5.2.m1.1.1.cmml" xref="S6.T3.5.5.5.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.5.5.5.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.T3.5.5.5.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T3.5.5.5.5">0.40</td>
<td class="ltx_td ltx_align_center" id="S6.T3.5.5.5.6">0.181</td>
</tr>
<tr class="ltx_tr" id="S6.T3.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T3.6.6.6.2">+ SSGM</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T3.6.6.6.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T3.6.6.6.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T3.6.6.6.1"><math alttext="\times" class="ltx_Math" display="inline" id="S6.T3.6.6.6.1.m1.1"><semantics id="S6.T3.6.6.6.1.m1.1a"><mo id="S6.T3.6.6.6.1.m1.1.1" xref="S6.T3.6.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.T3.6.6.6.1.m1.1b"><times id="S6.T3.6.6.6.1.m1.1.1.cmml" xref="S6.T3.6.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.6.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.T3.6.6.6.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T3.6.6.6.5">0.42</td>
<td class="ltx_td ltx_align_center" id="S6.T3.6.6.6.6">0.370</td>
</tr>
<tr class="ltx_tr" id="S6.T3.6.6.8.1">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S6.T3.6.6.8.1.1"><span class="ltx_text ltx_font_bold" id="S6.T3.6.6.8.1.1.1">GoT Framework</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T3.6.6.8.1.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T3.6.6.8.1.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T3.6.6.8.1.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T3.6.6.8.1.5"><span class="ltx_text ltx_font_bold" id="S6.T3.6.6.8.1.5.1">0.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.6.6.8.1.6"><span class="ltx_text ltx_font_bold" id="S6.T3.6.6.8.1.6.1">0.533</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different components of the GoT framework on the performance of text-to-image generation and image editing.  It compares the baseline model (without GoT and SSGM) against models incorporating GoT reasoning chains and the Semantic-Spatial Guidance Module (SSGM). The results are evaluated using two benchmarks: GenEval (overall performance) and ImagenHub (GPT-40 evaluation). The table shows how each component contributes to the overall performance improvements.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study of our GoT framework on GenEval overall and ImagenHub GPT-4o eval.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10639/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10639/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}