---
title: "Phi-4-Mini Technical Report: Compact yet Powerful Multimodal Language Models via Mixture-of-LoRAs"
summary: "Phi-4: Compact Multimodal Language Models via Mixture-of-LoRAs"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Microsoft",]
showSummary: true
date: 2025-03-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.01743 {{< /keyword >}}
{{< keyword icon="writer" >}} Abdelrahman Abouelenin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.01743" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.01743" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.01743/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The paper addresses the challenge of creating powerful yet compact multimodal models. Existing multimodal models are large and difficult to deploy on resource-constrained devices and often require fine-tuning the base language model, reducing original language capabilities. Phi-4-Multimodal aims to solve these problems by unifying text, vision and audio into a single model. 



 Phi-4-Multimodal introduces a novel "mixture of LoRAs" technique to achieve multimodal capabilities without modifying the base language model. It has modality-specific LoRA adapters and encoders allowing efficient handling of vision and audio inputs. The model supports several tasks such as QA, summarization, and translation, outperforming larger models in a range of benchmarks. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Phi-4-Multimodal achieves SOTA performance by mixture-of-LoRAs {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Introduces Dynamic Multi-crop strategy for vision inputs {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Introduces reasoning enhancements to the Phi-4 architecture {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces efficient multimodal models, crucial for advancing AI in resource-constrained environments. By leveraging LoRA techniques, it sets a new benchmark for integrating diverse data types, paving the way for future research on scalable and versatile AI systems. The findings enable new applications on edge devices.

------
#### Visual Insights



![](https://arxiv.org/html/2503.01743/x1.png)

> 🔼 Phi-4-Multimodal is a unified multimodal model that processes multiple input modalities (text, vision, audio/speech) simultaneously.  The architecture uses a frozen language model (Phi-4-Mini) as its base. Modality-specific encoders (vision, audio) project their respective features to the language model's embedding space. LoRA adapters are applied to the language decoder to adapt to the different modalities, allowing seamless integration of modalities.  This approach ensures that the language model is only adapted and is not fine-tuned, thereby maintaining original language model performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: A overview of the Multimodal architecture for Phi-4-Multimodal
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.7">
<tr class="ltx_tr" id="S4.T3.7.8">
<td class="ltx_td ltx_border_tt" id="S4.T3.7.8.1"></td>
<td class="ltx_td ltx_border_tt" id="S4.T3.7.8.2"></td>
<td class="ltx_td ltx_border_tt" id="S4.T3.7.8.3"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.7.8.4"><span class="ltx_text ltx_font_typewriter" id="S4.T3.7.8.4.1" style="font-size:50%;">Phi-4-Multimodal</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.7.8.5"><span class="ltx_text" id="S4.T3.7.8.5.1" style="font-size:50%;">WhisperV3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.7.8.6"><span class="ltx_text" id="S4.T3.7.8.6.1" style="font-size:50%;">SeamlessM4T-V2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.7.8.7"><span class="ltx_text" id="S4.T3.7.8.7.1" style="font-size:50%;">Qwen2-audio</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.7.8.8"><span class="ltx_text" id="S4.T3.7.8.8.1" style="font-size:50%;">Gemini-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.7.8.9"><span class="ltx_text" id="S4.T3.7.8.9.1" style="font-size:50%;">GPT-4o</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.9">
<td class="ltx_td ltx_align_left" id="S4.T3.7.9.1"><span class="ltx_text" id="S4.T3.7.9.1.1" style="font-size:50%;">Task</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.9.2"><span class="ltx_text" id="S4.T3.7.9.2.1" style="font-size:50%;">Metric</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.9.3"><span class="ltx_text" id="S4.T3.7.9.3.1" style="font-size:50%;">Dataset</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.9.4"><span class="ltx_text" id="S4.T3.7.9.4.1" style="font-size:50%;">5.6B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.9.5"><span class="ltx_text" id="S4.T3.7.9.5.1" style="font-size:50%;">1.5B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.9.6"><span class="ltx_text" id="S4.T3.7.9.6.1" style="font-size:50%;">2.3B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.9.7"><span class="ltx_text" id="S4.T3.7.9.7.1" style="font-size:50%;">8B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.9.8"><span class="ltx_text" id="S4.T3.7.9.8.1" style="font-size:50%;">2.0-Flash</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.9.9"><span class="ltx_text" id="S4.T3.7.9.9.1" style="font-size:50%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.1.1.2" rowspan="3"><span class="ltx_text" id="S4.T3.1.1.2.1" style="font-size:50%;">ASR</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1" rowspan="3"><span class="ltx_text" id="S4.T3.1.1.1.1" style="font-size:50%;">WER <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.3"><span class="ltx_text" id="S4.T3.1.1.3.1" style="font-size:50%;">CV15</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.1" style="font-size:50%;">6.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.5"><span class="ltx_text" id="S4.T3.1.1.5.1" style="font-size:50%;">8.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.6"><span class="ltx_text" id="S4.T3.1.1.6.1" style="font-size:50%;">8.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.7"><span class="ltx_text" id="S4.T3.1.1.7.1" style="font-size:50%;">8.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.8"><span class="ltx_text" id="S4.T3.1.1.8.1" style="font-size:50%;">9.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.9"><span class="ltx_text" id="S4.T3.1.1.9.1" style="font-size:50%;">18.14</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.10">
<td class="ltx_td ltx_align_center" id="S4.T3.7.10.1"><span class="ltx_text" id="S4.T3.7.10.1.1" style="font-size:50%;">FLEURS</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.10.2"><span class="ltx_text ltx_font_bold" id="S4.T3.7.10.2.1" style="font-size:50%;">4.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.10.3"><span class="ltx_text" id="S4.T3.7.10.3.1" style="font-size:50%;">4.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.10.4"><span class="ltx_text" id="S4.T3.7.10.4.1" style="font-size:50%;">7.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.10.5"><span class="ltx_text" id="S4.T3.7.10.5.1" style="font-size:50%;">8.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.10.6"><span class="ltx_text" id="S4.T3.7.10.6.1" style="font-size:50%;">4.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.10.7"><span class="ltx_text" id="S4.T3.7.10.7.1" style="font-size:50%;">5.42</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.11">
<td class="ltx_td ltx_align_center" id="S4.T3.7.11.1"><span class="ltx_text" id="S4.T3.7.11.1.1" style="font-size:50%;">OpenASR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.11.2"><span class="ltx_text ltx_font_bold" id="S4.T3.7.11.2.1" style="font-size:50%;">6.14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.11.3"><span class="ltx_text" id="S4.T3.7.11.3.1" style="font-size:50%;">7.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.11.4"><span class="ltx_text" id="S4.T3.7.11.4.1" style="font-size:50%;">20.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.11.5"><span class="ltx_text" id="S4.T3.7.11.5.1" style="font-size:50%;">7.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.11.6"><span class="ltx_text" id="S4.T3.7.11.6.1" style="font-size:50%;">8.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.11.7"><span class="ltx_text" id="S4.T3.7.11.7.1" style="font-size:50%;">15.76</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.2.2.2" rowspan="5"><span class="ltx_text" id="S4.T3.2.2.2.1" style="font-size:50%;">AST</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.1" rowspan="4"><span class="ltx_text" id="S4.T3.2.2.1.1" style="font-size:50%;">BLEU <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.1.1.m1.1"><semantics id="S4.T3.2.2.1.1.m1.1a"><mo id="S4.T3.2.2.1.1.m1.1.1" stretchy="false" xref="S4.T3.2.2.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.1.1.m1.1b"><ci id="S4.T3.2.2.1.1.m1.1.1.cmml" xref="S4.T3.2.2.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3"><span class="ltx_text" id="S4.T3.2.2.3.1" style="font-size:50%;">Inference Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.4"><span class="ltx_text" id="S4.T3.2.2.4.1" style="font-size:50%;">(0-shot, CoT)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.5"><span class="ltx_text" id="S4.T3.2.2.5.1" style="font-size:50%;">0-shot</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.6"><span class="ltx_text" id="S4.T3.2.2.6.1" style="font-size:50%;">0-shot</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.7"><span class="ltx_text" id="S4.T3.2.2.7.1" style="font-size:50%;">0-shot</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.8"><span class="ltx_text" id="S4.T3.2.2.8.1" style="font-size:50%;">0-shot</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.9"><span class="ltx_text" id="S4.T3.2.2.9.1" style="font-size:50%;">0-shot</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.12">
<td class="ltx_td ltx_align_center" id="S4.T3.7.12.1"><span class="ltx_text" id="S4.T3.7.12.1.1" style="font-size:50%;">CoVoST2 X-EN</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.12.2">
<span class="ltx_text" id="S4.T3.7.12.2.1" style="font-size:50%;">(39.33, </span><span class="ltx_text ltx_font_bold" id="S4.T3.7.12.2.2" style="font-size:50%;">40.76</span><span class="ltx_text" id="S4.T3.7.12.2.3" style="font-size:50%;">)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.12.3"><span class="ltx_text" id="S4.T3.7.12.3.1" style="font-size:50%;">33.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.12.4"><span class="ltx_text" id="S4.T3.7.12.4.1" style="font-size:50%;">37.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.12.5"><span class="ltx_text" id="S4.T3.7.12.5.1" style="font-size:50%;">34.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.12.6"><span class="ltx_text" id="S4.T3.7.12.6.1" style="font-size:50%;">36.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.12.7"><span class="ltx_text" id="S4.T3.7.12.7.1" style="font-size:50%;">37.09</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.13">
<td class="ltx_td ltx_align_center" id="S4.T3.7.13.1"><span class="ltx_text" id="S4.T3.7.13.1.1" style="font-size:50%;">CoVoST2 EN-X</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.13.2">
<span class="ltx_text" id="S4.T3.7.13.2.1" style="font-size:50%;">(37.82, </span><span class="ltx_text ltx_font_bold" id="S4.T3.7.13.2.2" style="font-size:50%;">38.73</span><span class="ltx_text" id="S4.T3.7.13.2.3" style="font-size:50%;">)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.13.3"><span class="ltx_text" id="S4.T3.7.13.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.13.4"><span class="ltx_text" id="S4.T3.7.13.4.1" style="font-size:50%;">32.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.13.5"><span class="ltx_text" id="S4.T3.7.13.5.1" style="font-size:50%;">34.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.13.6"><span class="ltx_text" id="S4.T3.7.13.6.1" style="font-size:50%;">35.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.13.7"><span class="ltx_text" id="S4.T3.7.13.7.1" style="font-size:50%;">37.19</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.14">
<td class="ltx_td ltx_align_center" id="S4.T3.7.14.1"><span class="ltx_text" id="S4.T3.7.14.1.1" style="font-size:50%;">FLEURS X-EN</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.14.2"><span class="ltx_text" id="S4.T3.7.14.2.1" style="font-size:50%;">(29.86, 32.35)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.14.3"><span class="ltx_text" id="S4.T3.7.14.3.1" style="font-size:50%;">25.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.14.4"><span class="ltx_text" id="S4.T3.7.14.4.1" style="font-size:50%;">28.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.14.5"><span class="ltx_text" id="S4.T3.7.14.5.1" style="font-size:50%;">23.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.14.6"><span class="ltx_text" id="S4.T3.7.14.6.1" style="font-size:50%;">30.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.14.7"><span class="ltx_text ltx_font_bold" id="S4.T3.7.14.7.1" style="font-size:50%;">32.61</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.15">
<td class="ltx_td" id="S4.T3.7.15.1"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.15.2"><span class="ltx_text" id="S4.T3.7.15.2.1" style="font-size:50%;">FLEURS EN-X</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.15.3"><span class="ltx_text" id="S4.T3.7.15.3.1" style="font-size:50%;">(32.15, 33.56)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.15.4"><span class="ltx_text" id="S4.T3.7.15.4.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.15.5"><span class="ltx_text" id="S4.T3.7.15.5.1" style="font-size:50%;">30.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.15.6"><span class="ltx_text" id="S4.T3.7.15.6.1" style="font-size:50%;">23.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.15.7"><span class="ltx_text ltx_font_bold" id="S4.T3.7.15.7.1" style="font-size:50%;">37.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.15.8"><span class="ltx_text" id="S4.T3.7.15.8.1" style="font-size:50%;">36.78</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.3.3.2" rowspan="2"><span class="ltx_text" id="S4.T3.3.3.2.1" style="font-size:50%;">SQQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.1">
<span class="ltx_text" id="S4.T3.3.3.1.1" style="font-size:50%;">Score 1-10 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.1.m1.1"><semantics id="S4.T3.3.3.1.m1.1a"><mo id="S4.T3.3.3.1.m1.1.1" mathsize="50%" stretchy="false" xref="S4.T3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.1.m1.1b"><ci id="S4.T3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.3"><span class="ltx_text" id="S4.T3.3.3.3.1" style="font-size:50%;">MT-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.4"><span class="ltx_text" id="S4.T3.3.3.4.1" style="font-size:50%;">7.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.5"><span class="ltx_text" id="S4.T3.3.3.5.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.6"><span class="ltx_text" id="S4.T3.3.3.6.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.7"><span class="ltx_text" id="S4.T3.3.3.7.1" style="font-size:50%;">4.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.8"><span class="ltx_text" id="S4.T3.3.3.8.1" style="font-size:50%;">8.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.9"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.9.1" style="font-size:50%;">8.11</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4">
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.1">
<span class="ltx_text" id="S4.T3.4.4.1.1" style="font-size:50%;">ACC </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.1.m1.1"><semantics id="S4.T3.4.4.1.m1.1a"><mo id="S4.T3.4.4.1.m1.1.1" mathsize="50%" stretchy="false" xref="S4.T3.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.1.m1.1b"><ci id="S4.T3.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.2"><span class="ltx_text" id="S4.T3.4.4.2.1" style="font-size:50%;">MMMLU</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.3"><span class="ltx_text" id="S4.T3.4.4.3.1" style="font-size:50%;">38.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4"><span class="ltx_text" id="S4.T3.4.4.4.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.5"><span class="ltx_text" id="S4.T3.4.4.5.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.6"><span class="ltx_text" id="S4.T3.4.4.6.1" style="font-size:50%;">15.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.7"><span class="ltx_text" id="S4.T3.4.4.7.1" style="font-size:50%;">72.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.8"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.8.1" style="font-size:50%;">72.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.5.2" rowspan="2"><span class="ltx_text" id="S4.T3.5.5.2.1" style="font-size:50%;">SSUM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.1" rowspan="2"><span class="ltx_text" id="S4.T3.5.5.1.1" style="font-size:50%;">Score 1-7 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.5.1.1.m1.1"><semantics id="S4.T3.5.5.1.1.m1.1a"><mo id="S4.T3.5.5.1.1.m1.1.1" stretchy="false" xref="S4.T3.5.5.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.1.1.m1.1b"><ci id="S4.T3.5.5.1.1.m1.1.1.cmml" xref="S4.T3.5.5.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.3"><span class="ltx_text" id="S4.T3.5.5.3.1" style="font-size:50%;">Golden3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.4"><span class="ltx_text" id="S4.T3.5.5.4.1" style="font-size:50%;">6.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5"><span class="ltx_text" id="S4.T3.5.5.5.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.6"><span class="ltx_text" id="S4.T3.5.5.6.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.7"><span class="ltx_text" id="S4.T3.5.5.7.1" style="font-size:50%;">2.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.8"><span class="ltx_text" id="S4.T3.5.5.8.1" style="font-size:50%;">6.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.9"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.9.1" style="font-size:50%;">6.76</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.16">
<td class="ltx_td ltx_align_center" id="S4.T3.7.16.1"><span class="ltx_text" id="S4.T3.7.16.1.1" style="font-size:50%;">AMI</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.16.2"><span class="ltx_text" id="S4.T3.7.16.2.1" style="font-size:50%;">6.29</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.16.3"><span class="ltx_text" id="S4.T3.7.16.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.16.4"><span class="ltx_text" id="S4.T3.7.16.4.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.16.5"><span class="ltx_text" id="S4.T3.7.16.5.1" style="font-size:50%;">1.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.16.6"><span class="ltx_text" id="S4.T3.7.16.6.1" style="font-size:50%;">5.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.16.7"><span class="ltx_text ltx_font_bold" id="S4.T3.7.16.7.1" style="font-size:50%;">6.53</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T3.6.6.2" rowspan="2"><span class="ltx_text" id="S4.T3.6.6.2.1" style="font-size:50%;">AU</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.1">
<span class="ltx_text" id="S4.T3.6.6.1.1" style="font-size:50%;">Score 1-10 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.6.1.m1.1"><semantics id="S4.T3.6.6.1.m1.1a"><mo id="S4.T3.6.6.1.m1.1.1" mathsize="50%" stretchy="false" xref="S4.T3.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.1.m1.1b"><ci id="S4.T3.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.3"><span class="ltx_text" id="S4.T3.6.6.3.1" style="font-size:50%;">AirBench-chat</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.4"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.4.1" style="font-size:50%;">6.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.5"><span class="ltx_text" id="S4.T3.6.6.5.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.6"><span class="ltx_text" id="S4.T3.6.6.6.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.7"><span class="ltx_text" id="S4.T3.6.6.7.1" style="font-size:50%;">6.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.8"><span class="ltx_text" id="S4.T3.6.6.8.1" style="font-size:50%;">6.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.9"><span class="ltx_text" id="S4.T3.6.6.9.1" style="font-size:50%;">6.54</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.1">
<span class="ltx_text" id="S4.T3.7.7.1.1" style="font-size:50%;">ACC </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.7.7.1.m1.1"><semantics id="S4.T3.7.7.1.m1.1a"><mo id="S4.T3.7.7.1.m1.1.1" mathsize="50%" stretchy="false" xref="S4.T3.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.1.m1.1b"><ci id="S4.T3.7.7.1.m1.1.1.cmml" xref="S4.T3.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.2"><span class="ltx_text" id="S4.T3.7.7.2.1" style="font-size:50%;">MMAU</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.3"><span class="ltx_text" id="S4.T3.7.7.3.1" style="font-size:50%;">55.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.4"><span class="ltx_text" id="S4.T3.7.7.4.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.5"><span class="ltx_text" id="S4.T3.7.7.5.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.6"><span class="ltx_text" id="S4.T3.7.7.6.1" style="font-size:50%;">52.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.7"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.7.1" style="font-size:50%;">61.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.8"><span class="ltx_text" id="S4.T3.7.7.8.1" style="font-size:50%;">53.29</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of Phi-4-Multimodal and other state-of-the-art vision-language models across thirteen public benchmarks.  The benchmarks evaluate various aspects of vision-language understanding, including reasoning and perception capabilities.  All results were obtained using the same internal evaluation pipeline to ensure fair comparison.  Minor discrepancies with previously published results might be attributed to differences in prompt phrasing.  A notable exception is the relatively low performance of Gemini-2.0-Flash on the MathVista benchmark; this is attributed to the model's inability to consistently adhere to the specified output format, thus rendering the evaluation results unreliable.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison results on public vision-language benchmarks. All the reported numbers are produced with the exact same internal pipeline to ensure that the numbers are comparable. These numbers might differ from other published numbers due to slightly different prompts. ∗*∗ Note that for MathVista number of Gemini-2.0-Flash, we find the low performance is because its output sometimes cannot follow the format defined in the input instruction and the evaluation script cannot parse the answer easily.
> </details>





### In-depth insights


#### LoRA Mixture SLM
The concept of a LoRA (Low-Rank Adaptation) Mixture SLM (Small Language Model) presents a compelling approach to enhancing multimodal capabilities within resource constraints. By employing a "mixture of LoRAs," the model can integrate modality-specific adaptations while keeping the base language model frozen. This contrasts with full fine-tuning, which can diminish original language prowess. This mixture of LoRAs enables a nuanced approach, offering a path to balance multimodal competence without compromising the core language model's established abilities. **Crucially, it promotes modularity,** allowing seamless integration of new modalities via additional LoRAs without disrupting existing functionalities. This modular design contrasts with cross-attention mechanisms, offering a novel trade-off between performance and flexibility, and presents a new path for the community while achieving minimal performance loss on multimodal benchmarks compared to fully fine-tuned baselines. The mixture of LoRAs enables **handling multiple inference modes combining various modalities without interference.**

#### Vision-Speech SOTA
**Vision-Speech SOTA** models represent a frontier in multimodal AI, seamlessly integrating visual and auditory information. These models aim to understand scenes and events by processing both what is seen and heard, leading to enhanced performance in tasks like activity recognition, scene understanding, and human-computer interaction. The core challenge lies in effectively fusing these disparate modalities, capturing the complex correlations between visual cues and corresponding sounds. Recent advancements leverage deep learning architectures, particularly transformers, to achieve state-of-the-art results. **Key research areas** include developing novel fusion mechanisms, addressing the temporal alignment of vision and speech, and improving robustness to noisy or ambiguous inputs. Datasets for vision-speech tasks are becoming increasingly large and diverse, facilitating the training of more capable models. However, significant challenges remain in creating models that generalize well across different environments and exhibit robust performance under real-world conditions. The success of vision-speech models hinges on their ability to capture both fine-grained details and high-level contextual information from both modalities, ultimately creating a holistic understanding of the world.

#### Enhanced Reason
The 'Enhanced Reasoning' section likely details how the model's capacity for logical deduction, problem-solving, and knowledge application has been improved. It probably involves **training techniques**, **architectural augmentations**, or **data enhancements** specifically designed to bolster reasoning skills. A crucial aspect would be the model's performance on tasks demanding multi-step inference or abstract concept manipulation. Key metrics probably include accuracy on benchmarks that assess **common-sense reasoning**, **mathematical problem-solving**, or **symbolic reasoning**. The section would need to demonstrate how the changes impact the model's ability to extrapolate and generalize beyond the training data.

#### Dynamic MultiCrop
**Dynamic MultiCrop** strategies are crucial for handling varying resolutions in visual inputs. The technique allows models to efficiently process images with diverse aspect ratios without excessive resizing that could distort features. **A key benefit is adaptability**, enabling the model to dynamically adjust the number and size of crops based on the input image's dimensions. This maximizes information retention while minimizing computational overhead. **Effective multi-crop** avoids simply upscaling small images or downscaling large ones to maintain a consistent input size. Instead, it smartly divides the image to capture crucial details from high-resolution inputs and prevents over-expansion of smaller images, thereby preserving their inherent characteristics. **Careful implementation** improves overall performance in tasks requiring detailed visual understanding.

#### Multi Tier1 Safety
Multi-Tier 1 Safety in AI development emphasizes a comprehensive risk mitigation approach, addressing harmful content generation across languages. This involves employing datasets to enhance model helpfulness and harmlessness, conducting red-teaming to uncover vulnerabilities, and performing systematic safety evaluations. **The goal is to reduce toxicity** in AI responses across violence, sexual content, self-harm, and hate speech. **It is crucial to balance safety with utility**, preventing over-cautious refusals of innocuous prompts. This often entails fine-tuning to improve model robustness against jailbreaks, and focusing on fairness to ensure equitable performance across demographics. **The success hinges on creating a safe and valuable AI experience**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.01743/extracted/6234065/figures/phio_vision_demo_case.png)

> 🔼 Figure 2 presents a demonstration of Phi-4-Multimodal's capabilities in understanding and reasoning with vision and language.  The example shows a chart depicting the percentage of people across various generations using AI tools at work, and the model correctly answers a question based on this chart. This showcases the model's ability to process visual data along with text inputs, demonstrating its multimodal understanding and reasoning skills.
> <details>
> <summary>read the caption</summary>
> Figure 2: One demo case to show the vision-language understanding and reasoning capability of Phi-4-Multimodal.
> </details>



![](https://arxiv.org/html/2503.01743/extracted/6234065/figures/phio_speech_demo.png)

> 🔼 Figure 3 presents a comprehensive example illustrating the multimodal capabilities of Phi-4-Multimodal.  It showcases the model's ability to process audio input, perform automatic speech recognition (ASR) to transcribe the audio into text, and then automatic speech translation (AST) to translate the audio into another language. Further, the figure displays the model's capacity for summarization by generating a concise summary of the conversation contained within the audio clip.  This example highlights Phi-4-Multimodal's proficiency in handling multiple modalities simultaneously and delivering coherent, insightful responses.
> <details>
> <summary>read the caption</summary>
> Figure 3: An example to showcase the understanding capabilities for Phi-4-Multimodal, including audio understanding, summarization, ASR, and AST.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.7">
<tr class="ltx_tr" id="S4.T4.7.1">
<td class="ltx_td ltx_border_tt" id="S4.T4.7.1.1"></td>
<td class="ltx_td ltx_border_tt" id="S4.T4.7.1.2"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.7.1.3"><span class="ltx_text ltx_font_typewriter" id="S4.T4.7.1.3.1" style="font-size:50%;">Phi-4-Multimodal</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.7.1.4"><span class="ltx_text" id="S4.T4.7.1.4.1" style="font-size:50%;">nvidia/canary</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.7.1.5"><span class="ltx_text" id="S4.T4.7.1.5.1" style="font-size:50%;">WhisperV3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.7.1.6"><span class="ltx_text" id="S4.T4.7.1.6.1" style="font-size:50%;">SeamlessM4T-V2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.7.1.7"><span class="ltx_text" id="S4.T4.7.1.7.1" style="font-size:50%;">Qwen2-audio</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.7.1.8"><span class="ltx_text" id="S4.T4.7.1.8.1" style="font-size:50%;">Gemini-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.7.1.9"><span class="ltx_text" id="S4.T4.7.1.9.1" style="font-size:50%;">GPT-4o</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.2">
<td class="ltx_td ltx_align_left" id="S4.T4.7.2.1"><span class="ltx_text" id="S4.T4.7.2.1.1" style="font-size:50%;">Dataset</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.2.2"><span class="ltx_text" id="S4.T4.7.2.2.1" style="font-size:50%;">Sub-Category</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.2.3"><span class="ltx_text" id="S4.T4.7.2.3.1" style="font-size:50%;">5.6B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.2.4"><span class="ltx_text" id="S4.T4.7.2.4.1" style="font-size:50%;">1B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.2.5"><span class="ltx_text" id="S4.T4.7.2.5.1" style="font-size:50%;">1.5B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.2.6"><span class="ltx_text" id="S4.T4.7.2.6.1" style="font-size:50%;">2.3B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.2.7"><span class="ltx_text" id="S4.T4.7.2.7.1" style="font-size:50%;">8B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.2.8"><span class="ltx_text" id="S4.T4.7.2.8.1" style="font-size:50%;">2.0-Flash</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.2.9"><span class="ltx_text" id="S4.T4.7.2.9.1" style="font-size:50%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.7.3.1" rowspan="9"><span class="ltx_text" id="S4.T4.7.3.1.1" style="font-size:50%;">CV15</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.7.3.2"><span class="ltx_text" id="S4.T4.7.3.2.1" style="font-size:50%;">EN</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.7.3.3"><span class="ltx_text" id="S4.T4.7.3.3.1" style="font-size:50%;">7.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.7.3.4"><span class="ltx_text" id="S4.T4.7.3.4.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.7.3.5"><span class="ltx_text" id="S4.T4.7.3.5.1" style="font-size:50%;">9.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.7.3.6"><span class="ltx_text" id="S4.T4.7.3.6.1" style="font-size:50%;">7.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.7.3.7"><span class="ltx_text" id="S4.T4.7.3.7.1" style="font-size:50%;">8.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.7.3.8"><span class="ltx_text" id="S4.T4.7.3.8.1" style="font-size:50%;">11.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.7.3.9"><span class="ltx_text" id="S4.T4.7.3.9.1" style="font-size:50%;">21.48</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.4">
<td class="ltx_td ltx_align_center" id="S4.T4.7.4.1"><span class="ltx_text" id="S4.T4.7.4.1.1" style="font-size:50%;">DE</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.4.2"><span class="ltx_text" id="S4.T4.7.4.2.1" style="font-size:50%;">5.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.4.3"><span class="ltx_text" id="S4.T4.7.4.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.4.4"><span class="ltx_text" id="S4.T4.7.4.4.1" style="font-size:50%;">5.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.4.5"><span class="ltx_text" id="S4.T4.7.4.5.1" style="font-size:50%;">6.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.4.6"><span class="ltx_text" id="S4.T4.7.4.6.1" style="font-size:50%;">7.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.4.7"><span class="ltx_text" id="S4.T4.7.4.7.1" style="font-size:50%;">6.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.4.8"><span class="ltx_text" id="S4.T4.7.4.8.1" style="font-size:50%;">10.91</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.5">
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.1"><span class="ltx_text" id="S4.T4.7.5.1.1" style="font-size:50%;">ES</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.2"><span class="ltx_text" id="S4.T4.7.5.2.1" style="font-size:50%;">4.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.3"><span class="ltx_text" id="S4.T4.7.5.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.4"><span class="ltx_text" id="S4.T4.7.5.4.1" style="font-size:50%;">4.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.5"><span class="ltx_text" id="S4.T4.7.5.5.1" style="font-size:50%;">5.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.6"><span class="ltx_text" id="S4.T4.7.5.6.1" style="font-size:50%;">5.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.7"><span class="ltx_text" id="S4.T4.7.5.7.1" style="font-size:50%;">4.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.8"><span class="ltx_text" id="S4.T4.7.5.8.1" style="font-size:50%;">11.24</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.6">
<td class="ltx_td ltx_align_center" id="S4.T4.7.6.1"><span class="ltx_text" id="S4.T4.7.6.1.1" style="font-size:50%;">FR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.6.2"><span class="ltx_text" id="S4.T4.7.6.2.1" style="font-size:50%;">8.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.6.3"><span class="ltx_text" id="S4.T4.7.6.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.6.4"><span class="ltx_text" id="S4.T4.7.6.4.1" style="font-size:50%;">10.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.6.5"><span class="ltx_text" id="S4.T4.7.6.5.1" style="font-size:50%;">9.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.6.6"><span class="ltx_text" id="S4.T4.7.6.6.1" style="font-size:50%;">9.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.6.7"><span class="ltx_text" id="S4.T4.7.6.7.1" style="font-size:50%;">10.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.6.8"><span class="ltx_text" id="S4.T4.7.6.8.1" style="font-size:50%;">17.63</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.7">
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.1"><span class="ltx_text" id="S4.T4.7.7.1.1" style="font-size:50%;">IT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.2"><span class="ltx_text" id="S4.T4.7.7.2.1" style="font-size:50%;">3.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.3"><span class="ltx_text" id="S4.T4.7.7.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.4"><span class="ltx_text" id="S4.T4.7.7.4.1" style="font-size:50%;">5.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.5"><span class="ltx_text" id="S4.T4.7.7.5.1" style="font-size:50%;">5.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.6"><span class="ltx_text" id="S4.T4.7.7.6.1" style="font-size:50%;">6.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.7"><span class="ltx_text" id="S4.T4.7.7.7.1" style="font-size:50%;">4.88</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.8"><span class="ltx_text" id="S4.T4.7.7.8.1" style="font-size:50%;">13.84</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.8">
<td class="ltx_td ltx_align_center" id="S4.T4.7.8.1"><span class="ltx_text" id="S4.T4.7.8.1.1" style="font-size:50%;">JA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.8.2"><span class="ltx_text" id="S4.T4.7.8.2.1" style="font-size:50%;">10.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.8.3"><span class="ltx_text" id="S4.T4.7.8.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.8.4"><span class="ltx_text" id="S4.T4.7.8.4.1" style="font-size:50%;">10.30</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.8.5"><span class="ltx_text" id="S4.T4.7.8.5.1" style="font-size:50%;">12.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.8.6"><span class="ltx_text" id="S4.T4.7.8.6.1" style="font-size:50%;">13.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.8.7"><span class="ltx_text" id="S4.T4.7.8.7.1" style="font-size:50%;">13.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.8.8"><span class="ltx_text" id="S4.T4.7.8.8.1" style="font-size:50%;">19.36</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.9">
<td class="ltx_td ltx_align_center" id="S4.T4.7.9.1"><span class="ltx_text" id="S4.T4.7.9.1.1" style="font-size:50%;">PT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.9.2"><span class="ltx_text" id="S4.T4.7.9.2.1" style="font-size:50%;">6.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.9.3"><span class="ltx_text" id="S4.T4.7.9.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.9.4"><span class="ltx_text" id="S4.T4.7.9.4.1" style="font-size:50%;">5.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.9.5"><span class="ltx_text" id="S4.T4.7.9.5.1" style="font-size:50%;">9.19</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.9.6"><span class="ltx_text" id="S4.T4.7.9.6.1" style="font-size:50%;">10.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.9.7"><span class="ltx_text" id="S4.T4.7.9.7.1" style="font-size:50%;">7.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.9.8"><span class="ltx_text" id="S4.T4.7.9.8.1" style="font-size:50%;">23.07</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.10">
<td class="ltx_td ltx_align_center" id="S4.T4.7.10.1"><span class="ltx_text" id="S4.T4.7.10.1.1" style="font-size:50%;">ZH</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.10.2"><span class="ltx_text" id="S4.T4.7.10.2.1" style="font-size:50%;">7.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.10.3"><span class="ltx_text" id="S4.T4.7.10.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.10.4"><span class="ltx_text" id="S4.T4.7.10.4.1" style="font-size:50%;">12.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.10.5"><span class="ltx_text" id="S4.T4.7.10.5.1" style="font-size:50%;">11.36</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.10.6"><span class="ltx_text" id="S4.T4.7.10.6.1" style="font-size:50%;">6.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.10.7"><span class="ltx_text" id="S4.T4.7.10.7.1" style="font-size:50%;">15.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.10.8"><span class="ltx_text" id="S4.T4.7.10.8.1" style="font-size:50%;">27.55</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.11">
<td class="ltx_td ltx_align_center" id="S4.T4.7.11.1"><span class="ltx_text ltx_font_bold" id="S4.T4.7.11.1.1" style="font-size:50%;">Average</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.11.2"><span class="ltx_text ltx_font_bold" id="S4.T4.7.11.2.1" style="font-size:50%;">6.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.11.3"><span class="ltx_text" id="S4.T4.7.11.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.11.4"><span class="ltx_text ltx_font_bold" id="S4.T4.7.11.4.1" style="font-size:50%;">8.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.11.5"><span class="ltx_text ltx_font_bold" id="S4.T4.7.11.5.1" style="font-size:50%;">8.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.11.6"><span class="ltx_text ltx_font_bold" id="S4.T4.7.11.6.1" style="font-size:50%;">8.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.11.7"><span class="ltx_text ltx_font_bold" id="S4.T4.7.11.7.1" style="font-size:50%;">9.29</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.11.8"><span class="ltx_text ltx_font_bold" id="S4.T4.7.11.8.1" style="font-size:50%;">18.14</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.7.12.1" rowspan="9"><span class="ltx_text" id="S4.T4.7.12.1.1" style="font-size:50%;">FLEURS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.12.2"><span class="ltx_text" id="S4.T4.7.12.2.1" style="font-size:50%;">EN</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.12.3"><span class="ltx_text" id="S4.T4.7.12.3.1" style="font-size:50%;">3.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.12.4"><span class="ltx_text" id="S4.T4.7.12.4.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.12.5"><span class="ltx_text" id="S4.T4.7.12.5.1" style="font-size:50%;">4.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.12.6"><span class="ltx_text" id="S4.T4.7.12.6.1" style="font-size:50%;">6.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.12.7"><span class="ltx_text" id="S4.T4.7.12.7.1" style="font-size:50%;">5.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.12.8"><span class="ltx_text" id="S4.T4.7.12.8.1" style="font-size:50%;">3.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.12.9"><span class="ltx_text" id="S4.T4.7.12.9.1" style="font-size:50%;">6.52</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.13">
<td class="ltx_td ltx_align_center" id="S4.T4.7.13.1"><span class="ltx_text" id="S4.T4.7.13.1.1" style="font-size:50%;">DE</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.13.2"><span class="ltx_text" id="S4.T4.7.13.2.1" style="font-size:50%;">3.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.13.3"><span class="ltx_text" id="S4.T4.7.13.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.13.4"><span class="ltx_text" id="S4.T4.7.13.4.1" style="font-size:50%;">4.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.13.5"><span class="ltx_text" id="S4.T4.7.13.5.1" style="font-size:50%;">6.95</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.13.6"><span class="ltx_text" id="S4.T4.7.13.6.1" style="font-size:50%;">8.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.13.7"><span class="ltx_text" id="S4.T4.7.13.7.1" style="font-size:50%;">4.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.13.8"><span class="ltx_text" id="S4.T4.7.13.8.1" style="font-size:50%;">4.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.14">
<td class="ltx_td ltx_align_center" id="S4.T4.7.14.1"><span class="ltx_text" id="S4.T4.7.14.1.1" style="font-size:50%;">ES</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.14.2"><span class="ltx_text" id="S4.T4.7.14.2.1" style="font-size:50%;">3.02</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.14.3"><span class="ltx_text" id="S4.T4.7.14.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.14.4"><span class="ltx_text" id="S4.T4.7.14.4.1" style="font-size:50%;">2.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.14.5"><span class="ltx_text" id="S4.T4.7.14.5.1" style="font-size:50%;">5.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.14.6"><span class="ltx_text" id="S4.T4.7.14.6.1" style="font-size:50%;">6.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.14.7"><span class="ltx_text" id="S4.T4.7.14.7.1" style="font-size:50%;">2.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.14.8"><span class="ltx_text" id="S4.T4.7.14.8.1" style="font-size:50%;">3.69</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.15">
<td class="ltx_td ltx_align_center" id="S4.T4.7.15.1"><span class="ltx_text" id="S4.T4.7.15.1.1" style="font-size:50%;">FR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.15.2"><span class="ltx_text" id="S4.T4.7.15.2.1" style="font-size:50%;">4.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.15.3"><span class="ltx_text" id="S4.T4.7.15.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.15.4"><span class="ltx_text" id="S4.T4.7.15.4.1" style="font-size:50%;">5.30</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.15.5"><span class="ltx_text" id="S4.T4.7.15.5.1" style="font-size:50%;">7.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.15.6"><span class="ltx_text" id="S4.T4.7.15.6.1" style="font-size:50%;">9.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.15.7"><span class="ltx_text" id="S4.T4.7.15.7.1" style="font-size:50%;">5.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.15.8"><span class="ltx_text" id="S4.T4.7.15.8.1" style="font-size:50%;">6.42</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.16">
<td class="ltx_td ltx_align_center" id="S4.T4.7.16.1"><span class="ltx_text" id="S4.T4.7.16.1.1" style="font-size:50%;">IT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.16.2"><span class="ltx_text" id="S4.T4.7.16.2.1" style="font-size:50%;">1.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.16.3"><span class="ltx_text" id="S4.T4.7.16.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.16.4"><span class="ltx_text" id="S4.T4.7.16.4.1" style="font-size:50%;">3.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.16.5"><span class="ltx_text" id="S4.T4.7.16.5.1" style="font-size:50%;">4.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.16.6"><span class="ltx_text" id="S4.T4.7.16.6.1" style="font-size:50%;">5.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.16.7"><span class="ltx_text" id="S4.T4.7.16.7.1" style="font-size:50%;">1.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.16.8"><span class="ltx_text" id="S4.T4.7.16.8.1" style="font-size:50%;">3.28</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.17">
<td class="ltx_td ltx_align_center" id="S4.T4.7.17.1"><span class="ltx_text" id="S4.T4.7.17.1.1" style="font-size:50%;">JA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.17.2"><span class="ltx_text" id="S4.T4.7.17.2.1" style="font-size:50%;">4.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.17.3"><span class="ltx_text" id="S4.T4.7.17.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.17.4"><span class="ltx_text" id="S4.T4.7.17.4.1" style="font-size:50%;">4.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.17.5"><span class="ltx_text" id="S4.T4.7.17.5.1" style="font-size:50%;">11.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.17.6"><span class="ltx_text" id="S4.T4.7.17.6.1" style="font-size:50%;">12.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.17.7"><span class="ltx_text" id="S4.T4.7.17.7.1" style="font-size:50%;">4.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.17.8"><span class="ltx_text" id="S4.T4.7.17.8.1" style="font-size:50%;">5.18</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.18">
<td class="ltx_td ltx_align_center" id="S4.T4.7.18.1"><span class="ltx_text" id="S4.T4.7.18.1.1" style="font-size:50%;">PT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.18.2"><span class="ltx_text" id="S4.T4.7.18.2.1" style="font-size:50%;">3.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.18.3"><span class="ltx_text" id="S4.T4.7.18.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.18.4"><span class="ltx_text" id="S4.T4.7.18.4.1" style="font-size:50%;">4.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.18.5"><span class="ltx_text" id="S4.T4.7.18.5.1" style="font-size:50%;">7.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.18.6"><span class="ltx_text" id="S4.T4.7.18.6.1" style="font-size:50%;">10.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.18.7"><span class="ltx_text" id="S4.T4.7.18.7.1" style="font-size:50%;">3.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.18.8"><span class="ltx_text" id="S4.T4.7.18.8.1" style="font-size:50%;">6.33</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.19">
<td class="ltx_td ltx_align_center" id="S4.T4.7.19.1"><span class="ltx_text" id="S4.T4.7.19.1.1" style="font-size:50%;">ZH</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.19.2"><span class="ltx_text" id="S4.T4.7.19.2.1" style="font-size:50%;">6.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.19.3"><span class="ltx_text" id="S4.T4.7.19.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.19.4"><span class="ltx_text" id="S4.T4.7.19.4.1" style="font-size:50%;">7.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.19.5"><span class="ltx_text" id="S4.T4.7.19.5.1" style="font-size:50%;">8.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.19.6"><span class="ltx_text" id="S4.T4.7.19.6.1" style="font-size:50%;">7.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.19.7"><span class="ltx_text" id="S4.T4.7.19.7.1" style="font-size:50%;">11.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.19.8"><span class="ltx_text" id="S4.T4.7.19.8.1" style="font-size:50%;">7.77</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.20">
<td class="ltx_td ltx_align_center" id="S4.T4.7.20.1"><span class="ltx_text ltx_font_bold" id="S4.T4.7.20.1.1" style="font-size:50%;">Average</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.20.2"><span class="ltx_text ltx_font_bold" id="S4.T4.7.20.2.1" style="font-size:50%;">4.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.20.3"><span class="ltx_text" id="S4.T4.7.20.3.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.20.4"><span class="ltx_text ltx_font_bold" id="S4.T4.7.20.4.1" style="font-size:50%;">4.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.20.5"><span class="ltx_text ltx_font_bold" id="S4.T4.7.20.5.1" style="font-size:50%;">7.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.20.6"><span class="ltx_text ltx_font_bold" id="S4.T4.7.20.6.1" style="font-size:50%;">8.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.20.7"><span class="ltx_text ltx_font_bold" id="S4.T4.7.20.7.1" style="font-size:50%;">4.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.20.8"><span class="ltx_text ltx_font_bold" id="S4.T4.7.20.8.1" style="font-size:50%;">5.42</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.21">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T4.7.21.1" rowspan="9"><span class="ltx_text" id="S4.T4.7.21.1.1" style="font-size:50%;">OpenASR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.21.2"><span class="ltx_text" id="S4.T4.7.21.2.1" style="font-size:50%;">AMI</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.21.3"><span class="ltx_text" id="S4.T4.7.21.3.1" style="font-size:50%;">11.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.21.4"><span class="ltx_text" id="S4.T4.7.21.4.1" style="font-size:50%;">13.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.21.5"><span class="ltx_text" id="S4.T4.7.21.5.1" style="font-size:50%;">15.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.21.6"><span class="ltx_text" id="S4.T4.7.21.6.1" style="font-size:50%;">56.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.21.7"><span class="ltx_text" id="S4.T4.7.21.7.1" style="font-size:50%;">15.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.21.8"><span class="ltx_text" id="S4.T4.7.21.8.1" style="font-size:50%;">21.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.21.9"><span class="ltx_text" id="S4.T4.7.21.9.1" style="font-size:50%;">57.76</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.22">
<td class="ltx_td ltx_align_center" id="S4.T4.7.22.1"><span class="ltx_text" id="S4.T4.7.22.1.1" style="font-size:50%;">Earnings22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.22.2"><span class="ltx_text" id="S4.T4.7.22.2.1" style="font-size:50%;">10.16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.22.3"><span class="ltx_text" id="S4.T4.7.22.3.1" style="font-size:50%;">12.19</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.22.4"><span class="ltx_text" id="S4.T4.7.22.4.1" style="font-size:50%;">11.29</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.22.5"><span class="ltx_text" id="S4.T4.7.22.5.1" style="font-size:50%;">37.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.22.6"><span class="ltx_text" id="S4.T4.7.22.6.1" style="font-size:50%;">14.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.22.7"><span class="ltx_text" id="S4.T4.7.22.7.1" style="font-size:50%;">13.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.22.8"><span class="ltx_text" id="S4.T4.7.22.8.1" style="font-size:50%;">20.94</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.23">
<td class="ltx_td ltx_align_center" id="S4.T4.7.23.1"><span class="ltx_text" id="S4.T4.7.23.1.1" style="font-size:50%;">Gigaspeech</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.23.2"><span class="ltx_text" id="S4.T4.7.23.2.1" style="font-size:50%;">9.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.23.3"><span class="ltx_text" id="S4.T4.7.23.3.1" style="font-size:50%;">10.12</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.23.4"><span class="ltx_text" id="S4.T4.7.23.4.1" style="font-size:50%;">10.02</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.23.5"><span class="ltx_text" id="S4.T4.7.23.5.1" style="font-size:50%;">26.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.23.6"><span class="ltx_text" id="S4.T4.7.23.6.1" style="font-size:50%;">10.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.23.7"><span class="ltx_text" id="S4.T4.7.23.7.1" style="font-size:50%;">10.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.23.8"><span class="ltx_text" id="S4.T4.7.23.8.1" style="font-size:50%;">13.64</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.24">
<td class="ltx_td ltx_align_center" id="S4.T4.7.24.1"><span class="ltx_text" id="S4.T4.7.24.1.1" style="font-size:50%;">Spgispeech</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.24.2"><span class="ltx_text" id="S4.T4.7.24.2.1" style="font-size:50%;">3.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.24.3"><span class="ltx_text" id="S4.T4.7.24.3.1" style="font-size:50%;">2.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.24.4"><span class="ltx_text" id="S4.T4.7.24.4.1" style="font-size:50%;">2.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.24.5"><span class="ltx_text" id="S4.T4.7.24.5.1" style="font-size:50%;">12.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.24.6"><span class="ltx_text" id="S4.T4.7.24.6.1" style="font-size:50%;">3.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.24.7"><span class="ltx_text" id="S4.T4.7.24.7.1" style="font-size:50%;">3.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.24.8"><span class="ltx_text" id="S4.T4.7.24.8.1" style="font-size:50%;">5.66</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.25">
<td class="ltx_td ltx_align_center" id="S4.T4.7.25.1"><span class="ltx_text" id="S4.T4.7.25.1.1" style="font-size:50%;">Tedlium</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.25.2"><span class="ltx_text" id="S4.T4.7.25.2.1" style="font-size:50%;">2.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.25.3"><span class="ltx_text" id="S4.T4.7.25.3.1" style="font-size:50%;">3.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.25.4"><span class="ltx_text" id="S4.T4.7.25.4.1" style="font-size:50%;">3.91</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.25.5"><span class="ltx_text" id="S4.T4.7.25.5.1" style="font-size:50%;">19.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.25.6"><span class="ltx_text" id="S4.T4.7.25.6.1" style="font-size:50%;">4.05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.25.7"><span class="ltx_text" id="S4.T4.7.25.7.1" style="font-size:50%;">3.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.25.8"><span class="ltx_text" id="S4.T4.7.25.8.1" style="font-size:50%;">5.79</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.26">
<td class="ltx_td ltx_align_center" id="S4.T4.7.26.1"><span class="ltx_text" id="S4.T4.7.26.1.1" style="font-size:50%;">LS-clean</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.26.2"><span class="ltx_text" id="S4.T4.7.26.2.1" style="font-size:50%;">1.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.26.3"><span class="ltx_text" id="S4.T4.7.26.3.1" style="font-size:50%;">1.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.26.4"><span class="ltx_text" id="S4.T4.7.26.4.1" style="font-size:50%;">2.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.26.5"><span class="ltx_text" id="S4.T4.7.26.5.1" style="font-size:50%;">2.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.26.6"><span class="ltx_text" id="S4.T4.7.26.6.1" style="font-size:50%;">1.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.26.7"><span class="ltx_text" id="S4.T4.7.26.7.1" style="font-size:50%;">2.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.26.8"><span class="ltx_text" id="S4.T4.7.26.8.1" style="font-size:50%;">3.48</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.27">
<td class="ltx_td ltx_align_center" id="S4.T4.7.27.1"><span class="ltx_text" id="S4.T4.7.27.1.1" style="font-size:50%;">LS-other</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.27.2"><span class="ltx_text" id="S4.T4.7.27.2.1" style="font-size:50%;">3.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.27.3"><span class="ltx_text" id="S4.T4.7.27.3.1" style="font-size:50%;">2.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.27.4"><span class="ltx_text" id="S4.T4.7.27.4.1" style="font-size:50%;">3.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.27.5"><span class="ltx_text" id="S4.T4.7.27.5.1" style="font-size:50%;">4.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.27.6"><span class="ltx_text" id="S4.T4.7.27.6.1" style="font-size:50%;">4.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.27.7"><span class="ltx_text" id="S4.T4.7.27.7.1" style="font-size:50%;">5.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.27.8"><span class="ltx_text" id="S4.T4.7.27.8.1" style="font-size:50%;">7.97</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.28">
<td class="ltx_td ltx_align_center" id="S4.T4.7.28.1"><span class="ltx_text" id="S4.T4.7.28.1.1" style="font-size:50%;">Voxpopuli</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.28.2"><span class="ltx_text" id="S4.T4.7.28.2.1" style="font-size:50%;">5.91</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.28.3"><span class="ltx_text" id="S4.T4.7.28.3.1" style="font-size:50%;">5.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.28.4"><span class="ltx_text" id="S4.T4.7.28.4.1" style="font-size:50%;">9.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.28.5"><span class="ltx_text" id="S4.T4.7.28.5.1" style="font-size:50%;">7.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.28.6"><span class="ltx_text" id="S4.T4.7.28.6.1" style="font-size:50%;">7.05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.28.7"><span class="ltx_text" id="S4.T4.7.28.7.1" style="font-size:50%;">7.89</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.28.8"><span class="ltx_text" id="S4.T4.7.28.8.1" style="font-size:50%;">10.83</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.29">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.7.29.1"><span class="ltx_text ltx_font_bold" id="S4.T4.7.29.1.1" style="font-size:50%;">Average</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.7.29.2"><span class="ltx_text ltx_font_bold" id="S4.T4.7.29.2.1" style="font-size:50%;">6.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.7.29.3"><span class="ltx_text ltx_font_bold" id="S4.T4.7.29.3.1" style="font-size:50%;">6.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.7.29.4"><span class="ltx_text ltx_font_bold" id="S4.T4.7.29.4.1" style="font-size:50%;">7.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.7.29.5"><span class="ltx_text ltx_font_bold" id="S4.T4.7.29.5.1" style="font-size:50%;">20.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.7.29.6"><span class="ltx_text ltx_font_bold" id="S4.T4.7.29.6.1" style="font-size:50%;">7.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.7.29.7"><span class="ltx_text ltx_font_bold" id="S4.T4.7.29.7.1" style="font-size:50%;">8.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.7.29.8"><span class="ltx_text ltx_font_bold" id="S4.T4.7.29.8.1" style="font-size:50%;">15.76</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of Phi-4-Multimodal against several other vision-speech models on publicly available benchmark datasets.  The results are directly comparable because the same internal evaluation pipeline was used for all models.  The table shows that Phi-4-Multimodal performs competitively, often outperforming larger models.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison results on public vision-speech benchmarks. All the reported numbers are produced with the exact same internal pipeline to ensure that the numbers are comparable.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.3">
<tr class="ltx_tr" id="S4.T5.3.1">
<td class="ltx_td ltx_border_tt" id="S4.T5.3.1.2"></td>
<td class="ltx_td ltx_border_tt" id="S4.T5.3.1.3"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.1.4"><span class="ltx_text ltx_font_typewriter" id="S4.T5.3.1.4.1" style="font-size:50%;">Phi-4-Multimodal</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.1.1">
<span class="ltx_text" id="S4.T5.3.1.1.1" style="font-size:50%;">(</span><math alttext="+" class="ltx_Math" display="inline" id="S4.T5.3.1.1.m1.1"><semantics id="S4.T5.3.1.1.m1.1a"><mo id="S4.T5.3.1.1.m1.1.1" mathsize="50%" xref="S4.T5.3.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.1.1.m1.1b"><plus id="S4.T5.3.1.1.m1.1.1.cmml" xref="S4.T5.3.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.1.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T5.3.1.1.2" style="font-size:50%;">CoT)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.1.5"><span class="ltx_text" id="S4.T5.3.1.5.1" style="font-size:50%;">WhisperV3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.1.6"><span class="ltx_text" id="S4.T5.3.1.6.1" style="font-size:50%;">SeamlessM4T-V2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.1.7"><span class="ltx_text" id="S4.T5.3.1.7.1" style="font-size:50%;">Qwen2-audio</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.1.8"><span class="ltx_text" id="S4.T5.3.1.8.1" style="font-size:50%;">Gemini-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.1.9"><span class="ltx_text" id="S4.T5.3.1.9.1" style="font-size:50%;">GPT-4o</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.2">
<td class="ltx_td ltx_align_left" id="S4.T5.3.2.1"><span class="ltx_text" id="S4.T5.3.2.1.1" style="font-size:50%;">Dataset</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.2.2"><span class="ltx_text" id="S4.T5.3.2.2.1" style="font-size:50%;">Sub-Category</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T5.3.2.3"><span class="ltx_text" id="S4.T5.3.2.3.1" style="font-size:50%;">5.6B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.2.4"><span class="ltx_text" id="S4.T5.3.2.4.1" style="font-size:50%;">1.5B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.2.5"><span class="ltx_text" id="S4.T5.3.2.5.1" style="font-size:50%;">2.3B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.2.6"><span class="ltx_text" id="S4.T5.3.2.6.1" style="font-size:50%;">8B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.2.7"><span class="ltx_text" id="S4.T5.3.2.7.1" style="font-size:50%;">2.0-Flash</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.2.8"><span class="ltx_text" id="S4.T5.3.2.8.1" style="font-size:50%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T5.3.3.1" rowspan="8"><span class="ltx_text" id="S4.T5.3.3.1.1" style="font-size:50%;">CoVoST2 X-EN</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.3.2"><span class="ltx_text" id="S4.T5.3.3.2.1" style="font-size:50%;">DE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.3.3"><span class="ltx_text" id="S4.T5.3.3.3.1" style="font-size:50%;">39.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.3.4"><span class="ltx_text" id="S4.T5.3.3.4.1" style="font-size:50%;">40.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.3.5"><span class="ltx_text" id="S4.T5.3.3.5.1" style="font-size:50%;">34.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.3.6"><span class="ltx_text" id="S4.T5.3.3.6.1" style="font-size:50%;">39.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.3.7"><span class="ltx_text" id="S4.T5.3.3.7.1" style="font-size:50%;">34.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.3.8"><span class="ltx_text" id="S4.T5.3.3.8.1" style="font-size:50%;">38.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.3.9"><span class="ltx_text" id="S4.T5.3.3.9.1" style="font-size:50%;">39.29</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.4">
<td class="ltx_td ltx_align_center" id="S4.T5.3.4.1"><span class="ltx_text" id="S4.T5.3.4.1.1" style="font-size:50%;">ES</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.4.2"><span class="ltx_text" id="S4.T5.3.4.2.1" style="font-size:50%;">43.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.4.3"><span class="ltx_text" id="S4.T5.3.4.3.1" style="font-size:50%;">44.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.4.4"><span class="ltx_text" id="S4.T5.3.4.4.1" style="font-size:50%;">39.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.4.5"><span class="ltx_text" id="S4.T5.3.4.5.1" style="font-size:50%;">42.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.4.6"><span class="ltx_text" id="S4.T5.3.4.6.1" style="font-size:50%;">39.91</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.4.7"><span class="ltx_text" id="S4.T5.3.4.7.1" style="font-size:50%;">41.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.4.8"><span class="ltx_text" id="S4.T5.3.4.8.1" style="font-size:50%;">41.49</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.5">
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.1"><span class="ltx_text" id="S4.T5.3.5.1.1" style="font-size:50%;">FR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.2"><span class="ltx_text" id="S4.T5.3.5.2.1" style="font-size:50%;">42.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.3"><span class="ltx_text" id="S4.T5.3.5.3.1" style="font-size:50%;">43.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.4"><span class="ltx_text" id="S4.T5.3.5.4.1" style="font-size:50%;">35.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.5"><span class="ltx_text" id="S4.T5.3.5.5.1" style="font-size:50%;">42.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.6"><span class="ltx_text" id="S4.T5.3.5.6.1" style="font-size:50%;">38.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.7"><span class="ltx_text" id="S4.T5.3.5.7.1" style="font-size:50%;">38.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.8"><span class="ltx_text" id="S4.T5.3.5.8.1" style="font-size:50%;">38.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.6">
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.1"><span class="ltx_text" id="S4.T5.3.6.1.1" style="font-size:50%;">IT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.2"><span class="ltx_text" id="S4.T5.3.6.2.1" style="font-size:50%;">41.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.3"><span class="ltx_text" id="S4.T5.3.6.3.1" style="font-size:50%;">42.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.4"><span class="ltx_text" id="S4.T5.3.6.4.1" style="font-size:50%;">35.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.5"><span class="ltx_text" id="S4.T5.3.6.5.1" style="font-size:50%;">39.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.6"><span class="ltx_text" id="S4.T5.3.6.6.1" style="font-size:50%;">36.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.7"><span class="ltx_text" id="S4.T5.3.6.7.1" style="font-size:50%;">37.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.8"><span class="ltx_text" id="S4.T5.3.6.8.1" style="font-size:50%;">37.33</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.7">
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.1"><span class="ltx_text" id="S4.T5.3.7.1.1" style="font-size:50%;">JA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.2"><span class="ltx_text" id="S4.T5.3.7.2.1" style="font-size:50%;">30.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.3"><span class="ltx_text" id="S4.T5.3.7.3.1" style="font-size:50%;">31.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.4"><span class="ltx_text" id="S4.T5.3.7.4.1" style="font-size:50%;">23.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.5"><span class="ltx_text" id="S4.T5.3.7.5.1" style="font-size:50%;">22.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.6"><span class="ltx_text" id="S4.T5.3.7.6.1" style="font-size:50%;">22.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.7"><span class="ltx_text" id="S4.T5.3.7.7.1" style="font-size:50%;">28.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.8"><span class="ltx_text" id="S4.T5.3.7.8.1" style="font-size:50%;">30.46</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.8">
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.1"><span class="ltx_text" id="S4.T5.3.8.1.1" style="font-size:50%;">PT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.2"><span class="ltx_text" id="S4.T5.3.8.2.1" style="font-size:50%;">55.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.3"><span class="ltx_text" id="S4.T5.3.8.3.1" style="font-size:50%;">56.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.4"><span class="ltx_text" id="S4.T5.3.8.4.1" style="font-size:50%;">50.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.5"><span class="ltx_text" id="S4.T5.3.8.5.1" style="font-size:50%;">53.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.6"><span class="ltx_text" id="S4.T5.3.8.6.1" style="font-size:50%;">47.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.7"><span class="ltx_text" id="S4.T5.3.8.7.1" style="font-size:50%;">50.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.8"><span class="ltx_text" id="S4.T5.3.8.8.1" style="font-size:50%;">50.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.9">
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.1"><span class="ltx_text" id="S4.T5.3.9.1.1" style="font-size:50%;">ZH</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.2"><span class="ltx_text" id="S4.T5.3.9.2.1" style="font-size:50%;">22.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.3"><span class="ltx_text" id="S4.T5.3.9.3.1" style="font-size:50%;">25.64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.4"><span class="ltx_text" id="S4.T5.3.9.4.1" style="font-size:50%;">14.36</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.5"><span class="ltx_text" id="S4.T5.3.9.5.1" style="font-size:50%;">21.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.6"><span class="ltx_text" id="S4.T5.3.9.6.1" style="font-size:50%;">23.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.7"><span class="ltx_text" id="S4.T5.3.9.7.1" style="font-size:50%;">20.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.8"><span class="ltx_text" id="S4.T5.3.9.8.1" style="font-size:50%;">21.93</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.10">
<td class="ltx_td ltx_align_center" id="S4.T5.3.10.1"><span class="ltx_text ltx_font_bold" id="S4.T5.3.10.1.1" style="font-size:50%;">Average</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.10.2"><span class="ltx_text ltx_font_bold" id="S4.T5.3.10.2.1" style="font-size:50%;">39.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.10.3"><span class="ltx_text ltx_font_bold" id="S4.T5.3.10.3.1" style="font-size:50%;">40.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.10.4"><span class="ltx_text ltx_font_bold" id="S4.T5.3.10.4.1" style="font-size:50%;">33.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.10.5"><span class="ltx_text ltx_font_bold" id="S4.T5.3.10.5.1" style="font-size:50%;">37.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.10.6"><span class="ltx_text ltx_font_bold" id="S4.T5.3.10.6.1" style="font-size:50%;">34.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.10.7"><span class="ltx_text ltx_font_bold" id="S4.T5.3.10.7.1" style="font-size:50%;">36.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.10.8"><span class="ltx_text ltx_font_bold" id="S4.T5.3.10.8.1" style="font-size:50%;">37.09</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.11">
<td class="ltx_td ltx_align_left" id="S4.T5.3.11.1" rowspan="4"><span class="ltx_text" id="S4.T5.3.11.1.1" style="font-size:50%;">CoVoST2 EN-X</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.11.2"><span class="ltx_text" id="S4.T5.3.11.2.1" style="font-size:50%;">DE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.11.3"><span class="ltx_text" id="S4.T5.3.11.3.1" style="font-size:50%;">34.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.11.4"><span class="ltx_text" id="S4.T5.3.11.4.1" style="font-size:50%;">34.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.11.5"><span class="ltx_text" id="S4.T5.3.11.5.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.11.6"><span class="ltx_text" id="S4.T5.3.11.6.1" style="font-size:50%;">37.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.11.7"><span class="ltx_text" id="S4.T5.3.11.7.1" style="font-size:50%;">29.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.11.8"><span class="ltx_text" id="S4.T5.3.11.8.1" style="font-size:50%;">34.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.11.9"><span class="ltx_text" id="S4.T5.3.11.9.1" style="font-size:50%;">34.38</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.12">
<td class="ltx_td ltx_align_center" id="S4.T5.3.12.1"><span class="ltx_text" id="S4.T5.3.12.1.1" style="font-size:50%;">JA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.12.2"><span class="ltx_text" id="S4.T5.3.12.2.1" style="font-size:50%;">32.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.12.3"><span class="ltx_text" id="S4.T5.3.12.3.1" style="font-size:50%;">34.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.12.4"><span class="ltx_text" id="S4.T5.3.12.4.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.12.5"><span class="ltx_text" id="S4.T5.3.12.5.1" style="font-size:50%;">24.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.12.6"><span class="ltx_text" id="S4.T5.3.12.6.1" style="font-size:50%;">27.30</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.12.7"><span class="ltx_text" id="S4.T5.3.12.7.1" style="font-size:50%;">32.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.12.8"><span class="ltx_text" id="S4.T5.3.12.8.1" style="font-size:50%;">32.98</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.13">
<td class="ltx_td ltx_align_center" id="S4.T5.3.13.1"><span class="ltx_text" id="S4.T5.3.13.1.1" style="font-size:50%;">ZH</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.13.2"><span class="ltx_text" id="S4.T5.3.13.2.1" style="font-size:50%;">46.30</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.13.3"><span class="ltx_text" id="S4.T5.3.13.3.1" style="font-size:50%;">47.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.13.4"><span class="ltx_text" id="S4.T5.3.13.4.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.13.5"><span class="ltx_text" id="S4.T5.3.13.5.1" style="font-size:50%;">36.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.13.6"><span class="ltx_text" id="S4.T5.3.13.6.1" style="font-size:50%;">45.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.13.7"><span class="ltx_text" id="S4.T5.3.13.7.1" style="font-size:50%;">40.91</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.13.8"><span class="ltx_text" id="S4.T5.3.13.8.1" style="font-size:50%;">44.22</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.14">
<td class="ltx_td ltx_align_center" id="S4.T5.3.14.1"><span class="ltx_text ltx_font_bold" id="S4.T5.3.14.1.1" style="font-size:50%;">Average</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.14.2"><span class="ltx_text ltx_font_bold" id="S4.T5.3.14.2.1" style="font-size:50%;">37.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.14.3"><span class="ltx_text ltx_font_bold" id="S4.T5.3.14.3.1" style="font-size:50%;">38.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.14.4"><span class="ltx_text" id="S4.T5.3.14.4.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.14.5"><span class="ltx_text ltx_font_bold" id="S4.T5.3.14.5.1" style="font-size:50%;">32.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.14.6"><span class="ltx_text ltx_font_bold" id="S4.T5.3.14.6.1" style="font-size:50%;">34.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.14.7"><span class="ltx_text ltx_font_bold" id="S4.T5.3.14.7.1" style="font-size:50%;">35.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.14.8"><span class="ltx_text ltx_font_bold" id="S4.T5.3.14.8.1" style="font-size:50%;">37.19</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.15">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T5.3.15.1" rowspan="8"><span class="ltx_text" id="S4.T5.3.15.1.1" style="font-size:50%;">FLEURS X-EN</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.15.2"><span class="ltx_text" id="S4.T5.3.15.2.1" style="font-size:50%;">DE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.15.3"><span class="ltx_text" id="S4.T5.3.15.3.1" style="font-size:50%;">37.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.15.4"><span class="ltx_text" id="S4.T5.3.15.4.1" style="font-size:50%;">39.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.15.5"><span class="ltx_text" id="S4.T5.3.15.5.1" style="font-size:50%;">33.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.15.6"><span class="ltx_text" id="S4.T5.3.15.6.1" style="font-size:50%;">36.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.15.7"><span class="ltx_text" id="S4.T5.3.15.7.1" style="font-size:50%;">32.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.15.8"><span class="ltx_text" id="S4.T5.3.15.8.1" style="font-size:50%;">38.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.15.9"><span class="ltx_text" id="S4.T5.3.15.9.1" style="font-size:50%;">41.03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.16">
<td class="ltx_td ltx_align_center" id="S4.T5.3.16.1"><span class="ltx_text" id="S4.T5.3.16.1.1" style="font-size:50%;">ES</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.16.2"><span class="ltx_text" id="S4.T5.3.16.2.1" style="font-size:50%;">25.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.16.3"><span class="ltx_text" id="S4.T5.3.16.3.1" style="font-size:50%;">27.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.16.4"><span class="ltx_text" id="S4.T5.3.16.4.1" style="font-size:50%;">22.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.16.5"><span class="ltx_text" id="S4.T5.3.16.5.1" style="font-size:50%;">25.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.16.6"><span class="ltx_text" id="S4.T5.3.16.6.1" style="font-size:50%;">22.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.16.7"><span class="ltx_text" id="S4.T5.3.16.7.1" style="font-size:50%;">26.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.16.8"><span class="ltx_text" id="S4.T5.3.16.8.1" style="font-size:50%;">29.10</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.17">
<td class="ltx_td ltx_align_center" id="S4.T5.3.17.1"><span class="ltx_text" id="S4.T5.3.17.1.1" style="font-size:50%;">FR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.17.2"><span class="ltx_text" id="S4.T5.3.17.2.1" style="font-size:50%;">35.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.17.3"><span class="ltx_text" id="S4.T5.3.17.3.1" style="font-size:50%;">37.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.17.4"><span class="ltx_text" id="S4.T5.3.17.4.1" style="font-size:50%;">30.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.17.5"><span class="ltx_text" id="S4.T5.3.17.5.1" style="font-size:50%;">33.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.17.6"><span class="ltx_text" id="S4.T5.3.17.6.1" style="font-size:50%;">30.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.17.7"><span class="ltx_text" id="S4.T5.3.17.7.1" style="font-size:50%;">35.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.17.8"><span class="ltx_text" id="S4.T5.3.17.8.1" style="font-size:50%;">37.98</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.18">
<td class="ltx_td ltx_align_center" id="S4.T5.3.18.1"><span class="ltx_text" id="S4.T5.3.18.1.1" style="font-size:50%;">IT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.18.2"><span class="ltx_text" id="S4.T5.3.18.2.1" style="font-size:50%;">26.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.18.3"><span class="ltx_text" id="S4.T5.3.18.3.1" style="font-size:50%;">28.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.18.4"><span class="ltx_text" id="S4.T5.3.18.4.1" style="font-size:50%;">23.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.18.5"><span class="ltx_text" id="S4.T5.3.18.5.1" style="font-size:50%;">26.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.18.6"><span class="ltx_text" id="S4.T5.3.18.6.1" style="font-size:50%;">22.12</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.18.7"><span class="ltx_text" id="S4.T5.3.18.7.1" style="font-size:50%;">25.02</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.18.8"><span class="ltx_text" id="S4.T5.3.18.8.1" style="font-size:50%;">28.51</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.19">
<td class="ltx_td ltx_align_center" id="S4.T5.3.19.1"><span class="ltx_text" id="S4.T5.3.19.1.1" style="font-size:50%;">JA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.19.2"><span class="ltx_text" id="S4.T5.3.19.2.1" style="font-size:50%;">21.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.19.3"><span class="ltx_text" id="S4.T5.3.19.3.1" style="font-size:50%;">25.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.19.4"><span class="ltx_text" id="S4.T5.3.19.4.1" style="font-size:50%;">16.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.19.5"><span class="ltx_text" id="S4.T5.3.19.5.1" style="font-size:50%;">18.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.19.6"><span class="ltx_text" id="S4.T5.3.19.6.1" style="font-size:50%;">4.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.19.7"><span class="ltx_text" id="S4.T5.3.19.7.1" style="font-size:50%;">23.89</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.19.8"><span class="ltx_text" id="S4.T5.3.19.8.1" style="font-size:50%;">24.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.20">
<td class="ltx_td ltx_align_center" id="S4.T5.3.20.1"><span class="ltx_text" id="S4.T5.3.20.1.1" style="font-size:50%;">PT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.20.2"><span class="ltx_text" id="S4.T5.3.20.2.1" style="font-size:50%;">40.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.20.3"><span class="ltx_text" id="S4.T5.3.20.3.1" style="font-size:50%;">42.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.20.4"><span class="ltx_text" id="S4.T5.3.20.4.1" style="font-size:50%;">37.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.20.5"><span class="ltx_text" id="S4.T5.3.20.5.1" style="font-size:50%;">37.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.20.6"><span class="ltx_text" id="S4.T5.3.20.6.1" style="font-size:50%;">35.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.20.7"><span class="ltx_text" id="S4.T5.3.20.7.1" style="font-size:50%;">41.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.20.8"><span class="ltx_text" id="S4.T5.3.20.8.1" style="font-size:50%;">43.33</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.21">
<td class="ltx_td ltx_align_center" id="S4.T5.3.21.1"><span class="ltx_text" id="S4.T5.3.21.1.1" style="font-size:50%;">ZH</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.21.2"><span class="ltx_text" id="S4.T5.3.21.2.1" style="font-size:50%;">22.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.21.3"><span class="ltx_text" id="S4.T5.3.21.3.1" style="font-size:50%;">25.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.21.4"><span class="ltx_text" id="S4.T5.3.21.4.1" style="font-size:50%;">16.07</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.21.5"><span class="ltx_text" id="S4.T5.3.21.5.1" style="font-size:50%;">22.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.21.6"><span class="ltx_text" id="S4.T5.3.21.6.1" style="font-size:50%;">17.95</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.21.7"><span class="ltx_text" id="S4.T5.3.21.7.1" style="font-size:50%;">24.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.21.8"><span class="ltx_text" id="S4.T5.3.21.8.1" style="font-size:50%;">24.12</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.22">
<td class="ltx_td ltx_align_center" id="S4.T5.3.22.1"><span class="ltx_text ltx_font_bold" id="S4.T5.3.22.1.1" style="font-size:50%;">Average</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.22.2"><span class="ltx_text ltx_font_bold" id="S4.T5.3.22.2.1" style="font-size:50%;">29.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.22.3"><span class="ltx_text ltx_font_bold" id="S4.T5.3.22.3.1" style="font-size:50%;">32.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.22.4"><span class="ltx_text ltx_font_bold" id="S4.T5.3.22.4.1" style="font-size:50%;">25.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.22.5"><span class="ltx_text ltx_font_bold" id="S4.T5.3.22.5.1" style="font-size:50%;">28.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.22.6"><span class="ltx_text ltx_font_bold" id="S4.T5.3.22.6.1" style="font-size:50%;">23.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.22.7"><span class="ltx_text ltx_font_bold" id="S4.T5.3.22.7.1" style="font-size:50%;">30.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.22.8"><span class="ltx_text ltx_font_bold" id="S4.T5.3.22.8.1" style="font-size:50%;">32.61</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.23">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.3.23.1" rowspan="8"><span class="ltx_text" id="S4.T5.3.23.1.1" style="font-size:50%;">FLEURS EN-X</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.23.2"><span class="ltx_text" id="S4.T5.3.23.2.1" style="font-size:50%;">DE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.23.3"><span class="ltx_text" id="S4.T5.3.23.3.1" style="font-size:50%;">34.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.23.4"><span class="ltx_text" id="S4.T5.3.23.4.1" style="font-size:50%;">35.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.23.5"><span class="ltx_text" id="S4.T5.3.23.5.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.23.6"><span class="ltx_text" id="S4.T5.3.23.6.1" style="font-size:50%;">32.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.23.7"><span class="ltx_text" id="S4.T5.3.23.7.1" style="font-size:50%;">23.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.23.8"><span class="ltx_text" id="S4.T5.3.23.8.1" style="font-size:50%;">37.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.23.9"><span class="ltx_text" id="S4.T5.3.23.9.1" style="font-size:50%;">36.68</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.24">
<td class="ltx_td ltx_align_center" id="S4.T5.3.24.1"><span class="ltx_text" id="S4.T5.3.24.1.1" style="font-size:50%;">ES</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.24.2"><span class="ltx_text" id="S4.T5.3.24.2.1" style="font-size:50%;">23.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.24.3"><span class="ltx_text" id="S4.T5.3.24.3.1" style="font-size:50%;">25.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.24.4"><span class="ltx_text" id="S4.T5.3.24.4.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.24.5"><span class="ltx_text" id="S4.T5.3.24.5.1" style="font-size:50%;">23.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.24.6"><span class="ltx_text" id="S4.T5.3.24.6.1" style="font-size:50%;">19.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.24.7"><span class="ltx_text" id="S4.T5.3.24.7.1" style="font-size:50%;">26.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.24.8"><span class="ltx_text" id="S4.T5.3.24.8.1" style="font-size:50%;">25.99</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.25">
<td class="ltx_td ltx_align_center" id="S4.T5.3.25.1"><span class="ltx_text" id="S4.T5.3.25.1.1" style="font-size:50%;">FR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.25.2"><span class="ltx_text" id="S4.T5.3.25.2.1" style="font-size:50%;">37.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.25.3"><span class="ltx_text" id="S4.T5.3.25.3.1" style="font-size:50%;">40.12</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.25.4"><span class="ltx_text" id="S4.T5.3.25.4.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.25.5"><span class="ltx_text" id="S4.T5.3.25.5.1" style="font-size:50%;">42.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.25.6"><span class="ltx_text" id="S4.T5.3.25.6.1" style="font-size:50%;">27.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.25.7"><span class="ltx_text" id="S4.T5.3.25.7.1" style="font-size:50%;">46.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.25.8"><span class="ltx_text" id="S4.T5.3.25.8.1" style="font-size:50%;">44.26</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.26">
<td class="ltx_td ltx_align_center" id="S4.T5.3.26.1"><span class="ltx_text" id="S4.T5.3.26.1.1" style="font-size:50%;">IT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.26.2"><span class="ltx_text" id="S4.T5.3.26.2.1" style="font-size:50%;">23.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.26.3"><span class="ltx_text" id="S4.T5.3.26.3.1" style="font-size:50%;">24.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.26.4"><span class="ltx_text" id="S4.T5.3.26.4.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.26.5"><span class="ltx_text" id="S4.T5.3.26.5.1" style="font-size:50%;">24.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.26.6"><span class="ltx_text" id="S4.T5.3.26.6.1" style="font-size:50%;">19.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.26.7"><span class="ltx_text" id="S4.T5.3.26.7.1" style="font-size:50%;">29.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.26.8"><span class="ltx_text" id="S4.T5.3.26.8.1" style="font-size:50%;">28.59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.27">
<td class="ltx_td ltx_align_center" id="S4.T5.3.27.1"><span class="ltx_text" id="S4.T5.3.27.1.1" style="font-size:50%;">JA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.27.2"><span class="ltx_text" id="S4.T5.3.27.2.1" style="font-size:50%;">30.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.27.3"><span class="ltx_text" id="S4.T5.3.27.3.1" style="font-size:50%;">30.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.27.4"><span class="ltx_text" id="S4.T5.3.27.4.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.27.5"><span class="ltx_text" id="S4.T5.3.27.5.1" style="font-size:50%;">20.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.27.6"><span class="ltx_text" id="S4.T5.3.27.6.1" style="font-size:50%;">12.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.27.7"><span class="ltx_text" id="S4.T5.3.27.7.1" style="font-size:50%;">35.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.27.8"><span class="ltx_text" id="S4.T5.3.27.8.1" style="font-size:50%;">33.99</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.28">
<td class="ltx_td ltx_align_center" id="S4.T5.3.28.1"><span class="ltx_text" id="S4.T5.3.28.1.1" style="font-size:50%;">PT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.28.2"><span class="ltx_text" id="S4.T5.3.28.2.1" style="font-size:50%;">37.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.28.3"><span class="ltx_text" id="S4.T5.3.28.3.1" style="font-size:50%;">38.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.28.4"><span class="ltx_text" id="S4.T5.3.28.4.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.28.5"><span class="ltx_text" id="S4.T5.3.28.5.1" style="font-size:50%;">42.36</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.28.6"><span class="ltx_text" id="S4.T5.3.28.6.1" style="font-size:50%;">32.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.28.7"><span class="ltx_text" id="S4.T5.3.28.7.1" style="font-size:50%;">45.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.28.8"><span class="ltx_text" id="S4.T5.3.28.8.1" style="font-size:50%;">45.82</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.29">
<td class="ltx_td ltx_align_center" id="S4.T5.3.29.1"><span class="ltx_text" id="S4.T5.3.29.1.1" style="font-size:50%;">ZH</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.29.2"><span class="ltx_text" id="S4.T5.3.29.2.1" style="font-size:50%;">37.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.29.3"><span class="ltx_text" id="S4.T5.3.29.3.1" style="font-size:50%;">39.19</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.29.4"><span class="ltx_text" id="S4.T5.3.29.4.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.29.5"><span class="ltx_text" id="S4.T5.3.29.5.1" style="font-size:50%;">27.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.29.6"><span class="ltx_text" id="S4.T5.3.29.6.1" style="font-size:50%;">27.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.29.7"><span class="ltx_text" id="S4.T5.3.29.7.1" style="font-size:50%;">41.36</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.29.8"><span class="ltx_text" id="S4.T5.3.29.8.1" style="font-size:50%;">42.16</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.30">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.30.1"><span class="ltx_text ltx_font_bold" id="S4.T5.3.30.1.1" style="font-size:50%;">Average</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.30.2"><span class="ltx_text ltx_font_bold" id="S4.T5.3.30.2.1" style="font-size:50%;">32.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.30.3"><span class="ltx_text ltx_font_bold" id="S4.T5.3.30.3.1" style="font-size:50%;">33.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.30.4"><span class="ltx_text" id="S4.T5.3.30.4.1" style="font-size:50%;">N/A</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.30.5"><span class="ltx_text ltx_font_bold" id="S4.T5.3.30.5.1" style="font-size:50%;">30.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.30.6"><span class="ltx_text ltx_font_bold" id="S4.T5.3.30.6.1" style="font-size:50%;">23.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.30.7"><span class="ltx_text ltx_font_bold" id="S4.T5.3.30.7.1" style="font-size:50%;">37.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.30.8"><span class="ltx_text ltx_font_bold" id="S4.T5.3.30.8.1" style="font-size:50%;">36.78</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of Phi-4-Multimodal and several other models on various speech benchmarks.  It includes results for automatic speech recognition (ASR), automatic speech translation (AST), spoken query question answering (SQQA), speech summarization (SSUM), and audio understanding (AU).  The evaluation methods vary by task, using zero-shot, chain-of-thought (CoT), and multi-turn conversation approaches.  The scores are evaluated and ranked by GPT-4-0613.  'N/A' means the model doesn't support that specific task.
> <details>
> <summary>read the caption</summary>
> Table 3: Main Results on the speech benchmarks. All results are obtained with 0-shot evaluations except additional CoT evaluations on the AST task, where CoT refers to chain-of-thoughts decoding with transcription plus translation in generation. MT-Bench results are averaged scores over two-turn SQA conversations. SSUM evaluation is with the overall numbers covering the adherence and hallucination scores. The scores in the table are judged by GPT-4-0613. N/A indicates the model does not have such a capability.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T6.11">
<tr class="ltx_tr" id="S4.T6.11.12">
<td class="ltx_td ltx_border_tt" id="S4.T6.11.12.1"></td>
<td class="ltx_td ltx_border_tt" id="S4.T6.11.12.2"></td>
<td class="ltx_td ltx_border_tt" id="S4.T6.11.12.3"></td>
<td class="ltx_td ltx_border_tt" id="S4.T6.11.12.4"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.11.12.5"><span class="ltx_text ltx_font_typewriter" id="S4.T6.11.12.5.1" style="font-size:50%;">Phi-4-Multimodal</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.11.12.6"><span class="ltx_text" id="S4.T6.11.12.6.1" style="font-size:50%;">Qwen2-audio</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.11.12.7"><span class="ltx_text" id="S4.T6.11.12.7.1" style="font-size:50%;">Gemini-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.11.12.8"><span class="ltx_text" id="S4.T6.11.12.8.1" style="font-size:50%;">GPT-4o</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.13">
<td class="ltx_td ltx_align_left" id="S4.T6.11.13.1"><span class="ltx_text" id="S4.T6.11.13.1.1" style="font-size:50%;">Task</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.13.2"><span class="ltx_text" id="S4.T6.11.13.2.1" style="font-size:50%;">Metric</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.13.3"><span class="ltx_text" id="S4.T6.11.13.3.1" style="font-size:50%;">Dataset</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.13.4"><span class="ltx_text" id="S4.T6.11.13.4.1" style="font-size:50%;">Sub-Category</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.13.5"><span class="ltx_text" id="S4.T6.11.13.5.1" style="font-size:50%;">5.6B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.13.6"><span class="ltx_text" id="S4.T6.11.13.6.1" style="font-size:50%;">8B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.13.7"><span class="ltx_text" id="S4.T6.11.13.7.1" style="font-size:50%;">2.0-Flash</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.13.8"><span class="ltx_text" id="S4.T6.11.13.8.1" style="font-size:50%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T6.1.1.2" rowspan="12"><span class="ltx_text" id="S4.T6.1.1.2.1" style="font-size:50%;">SQQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.1.1.1" rowspan="3"><span class="ltx_text" id="S4.T6.1.1.1.1" style="font-size:50%;">Score 1-10 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.m1.1a"><mo id="S4.T6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.m1.1b"><ci id="S4.T6.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.1.1.3" rowspan="3"><span class="ltx_text" id="S4.T6.1.1.3.1" style="font-size:50%;">MT-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.1.1.4"><span class="ltx_text" id="S4.T6.1.1.4.1" style="font-size:50%;">turn-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.1.1.5"><span class="ltx_text" id="S4.T6.1.1.5.1" style="font-size:50%;">7.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.1.1.6"><span class="ltx_text" id="S4.T6.1.1.6.1" style="font-size:50%;">5.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.1.1.7"><span class="ltx_text" id="S4.T6.1.1.7.1" style="font-size:50%;">8.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.1.1.8"><span class="ltx_text" id="S4.T6.1.1.8.1" style="font-size:50%;">8.27</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.14">
<td class="ltx_td ltx_align_center" id="S4.T6.11.14.1"><span class="ltx_text" id="S4.T6.11.14.1.1" style="font-size:50%;">turn-2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.14.2"><span class="ltx_text" id="S4.T6.11.14.2.1" style="font-size:50%;">6.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.14.3"><span class="ltx_text" id="S4.T6.11.14.3.1" style="font-size:50%;">4.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.14.4"><span class="ltx_text" id="S4.T6.11.14.4.1" style="font-size:50%;">8.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.14.5"><span class="ltx_text" id="S4.T6.11.14.5.1" style="font-size:50%;">7.94</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.15">
<td class="ltx_td ltx_align_center" id="S4.T6.11.15.1"><span class="ltx_text ltx_font_bold" id="S4.T6.11.15.1.1" style="font-size:50%;">AVG</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.15.2"><span class="ltx_text ltx_font_bold" id="S4.T6.11.15.2.1" style="font-size:50%;">7.05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.15.3"><span class="ltx_text ltx_font_bold" id="S4.T6.11.15.3.1" style="font-size:50%;">4.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.15.4"><span class="ltx_text ltx_font_bold" id="S4.T6.11.15.4.1" style="font-size:50%;">8.07</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.15.5"><span class="ltx_text ltx_font_bold" id="S4.T6.11.15.5.1" style="font-size:50%;">8.11</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.1" rowspan="9"><span class="ltx_text" id="S4.T6.2.2.1.1" style="font-size:50%;">ACC <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.2.2.1.1.m1.1"><semantics id="S4.T6.2.2.1.1.m1.1a"><mo id="S4.T6.2.2.1.1.m1.1.1" stretchy="false" xref="S4.T6.2.2.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.1.1.m1.1b"><ci id="S4.T6.2.2.1.1.m1.1.1.cmml" xref="S4.T6.2.2.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.2" rowspan="9"><span class="ltx_text" id="S4.T6.2.2.2.1" style="font-size:50%;">MMMLU</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.3"><span class="ltx_text" id="S4.T6.2.2.3.1" style="font-size:50%;">EN</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.4"><span class="ltx_text" id="S4.T6.2.2.4.1" style="font-size:50%;">54.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.5"><span class="ltx_text" id="S4.T6.2.2.5.1" style="font-size:50%;">16.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.6"><span class="ltx_text" id="S4.T6.2.2.6.1" style="font-size:50%;">74.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.7"><span class="ltx_text" id="S4.T6.2.2.7.1" style="font-size:50%;">78.75</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.16">
<td class="ltx_td ltx_align_center" id="S4.T6.11.16.1"><span class="ltx_text" id="S4.T6.11.16.1.1" style="font-size:50%;">DE</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.16.2"><span class="ltx_text" id="S4.T6.11.16.2.1" style="font-size:50%;">39.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.16.3"><span class="ltx_text" id="S4.T6.11.16.3.1" style="font-size:50%;">10.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.16.4"><span class="ltx_text" id="S4.T6.11.16.4.1" style="font-size:50%;">78.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.16.5"><span class="ltx_text" id="S4.T6.11.16.5.1" style="font-size:50%;">73.70</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.17">
<td class="ltx_td ltx_align_center" id="S4.T6.11.17.1"><span class="ltx_text" id="S4.T6.11.17.1.1" style="font-size:50%;">ES</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.17.2"><span class="ltx_text" id="S4.T6.11.17.2.1" style="font-size:50%;">42.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.17.3"><span class="ltx_text" id="S4.T6.11.17.3.1" style="font-size:50%;">25.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.17.4"><span class="ltx_text" id="S4.T6.11.17.4.1" style="font-size:50%;">75.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.17.5"><span class="ltx_text" id="S4.T6.11.17.5.1" style="font-size:50%;">78.32</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.18">
<td class="ltx_td ltx_align_center" id="S4.T6.11.18.1"><span class="ltx_text" id="S4.T6.11.18.1.1" style="font-size:50%;">FR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.18.2"><span class="ltx_text" id="S4.T6.11.18.2.1" style="font-size:50%;">38.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.18.3"><span class="ltx_text" id="S4.T6.11.18.3.1" style="font-size:50%;">19.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.18.4"><span class="ltx_text" id="S4.T6.11.18.4.1" style="font-size:50%;">74.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.18.5"><span class="ltx_text" id="S4.T6.11.18.5.1" style="font-size:50%;">76.21</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.19">
<td class="ltx_td ltx_align_center" id="S4.T6.11.19.1"><span class="ltx_text" id="S4.T6.11.19.1.1" style="font-size:50%;">IT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.19.2"><span class="ltx_text" id="S4.T6.11.19.2.1" style="font-size:50%;">35.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.19.3"><span class="ltx_text" id="S4.T6.11.19.3.1" style="font-size:50%;">18.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.19.4"><span class="ltx_text" id="S4.T6.11.19.4.1" style="font-size:50%;">70.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.19.5"><span class="ltx_text" id="S4.T6.11.19.5.1" style="font-size:50%;">71.84</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.20">
<td class="ltx_td ltx_align_center" id="S4.T6.11.20.1"><span class="ltx_text" id="S4.T6.11.20.1.1" style="font-size:50%;">JA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.20.2"><span class="ltx_text" id="S4.T6.11.20.2.1" style="font-size:50%;">30.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.20.3"><span class="ltx_text" id="S4.T6.11.20.3.1" style="font-size:50%;">14.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.20.4"><span class="ltx_text" id="S4.T6.11.20.4.1" style="font-size:50%;">68.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.20.5"><span class="ltx_text" id="S4.T6.11.20.5.1" style="font-size:50%;">67.40</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.21">
<td class="ltx_td ltx_align_center" id="S4.T6.11.21.1"><span class="ltx_text" id="S4.T6.11.21.1.1" style="font-size:50%;">PT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.21.2"><span class="ltx_text" id="S4.T6.11.21.2.1" style="font-size:50%;">34.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.21.3"><span class="ltx_text" id="S4.T6.11.21.3.1" style="font-size:50%;">11.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.21.4"><span class="ltx_text" id="S4.T6.11.21.4.1" style="font-size:50%;">70.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.21.5"><span class="ltx_text" id="S4.T6.11.21.5.1" style="font-size:50%;">70.48</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.22">
<td class="ltx_td ltx_align_center" id="S4.T6.11.22.1"><span class="ltx_text" id="S4.T6.11.22.1.1" style="font-size:50%;">ZH</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.22.2"><span class="ltx_text" id="S4.T6.11.22.2.1" style="font-size:50%;">34.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.22.3"><span class="ltx_text" id="S4.T6.11.22.3.1" style="font-size:50%;">9.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.22.4"><span class="ltx_text" id="S4.T6.11.22.4.1" style="font-size:50%;">66.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.22.5"><span class="ltx_text" id="S4.T6.11.22.5.1" style="font-size:50%;">63.77</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.23">
<td class="ltx_td ltx_align_center" id="S4.T6.11.23.1"><span class="ltx_text ltx_font_bold" id="S4.T6.11.23.1.1" style="font-size:50%;">AVG</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.23.2"><span class="ltx_text ltx_font_bold" id="S4.T6.11.23.2.1" style="font-size:50%;">38.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.23.3"><span class="ltx_text ltx_font_bold" id="S4.T6.11.23.3.1" style="font-size:50%;">15.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.23.4"><span class="ltx_text ltx_font_bold" id="S4.T6.11.23.4.1" style="font-size:50%;">72.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.23.5"><span class="ltx_text ltx_font_bold" id="S4.T6.11.23.5.1" style="font-size:50%;">72.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.4.4.3" rowspan="6"><span class="ltx_text" id="S4.T6.4.4.3.1" style="font-size:50%;">SSUM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.3.1" rowspan="6"><span class="ltx_text" id="S4.T6.3.3.1.1" style="font-size:50%;">Score 1-7 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.3.3.1.1.m1.1"><semantics id="S4.T6.3.3.1.1.m1.1a"><mo id="S4.T6.3.3.1.1.m1.1.1" stretchy="false" xref="S4.T6.3.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.3.3.1.1.m1.1b"><ci id="S4.T6.3.3.1.1.m1.1.1.cmml" xref="S4.T6.3.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.3.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.4.4" rowspan="3"><span class="ltx_text" id="S4.T6.4.4.4.1" style="font-size:50%;">Golden3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.4.2">
<span class="ltx_text" id="S4.T6.4.4.2.1" style="font-size:50%;">Hallucination </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.4.4.2.m1.1"><semantics id="S4.T6.4.4.2.m1.1a"><mo id="S4.T6.4.4.2.m1.1.1" mathsize="50%" stretchy="false" xref="S4.T6.4.4.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.4.4.2.m1.1b"><ci id="S4.T6.4.4.2.m1.1.1.cmml" xref="S4.T6.4.4.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.4.4.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.4.4.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.4.5"><span class="ltx_text" id="S4.T6.4.4.5.1" style="font-size:50%;">0.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.4.6"><span class="ltx_text" id="S4.T6.4.4.6.1" style="font-size:50%;">0.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.4.7"><span class="ltx_text" id="S4.T6.4.4.7.1" style="font-size:50%;">0.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.4.8"><span class="ltx_text" id="S4.T6.4.4.8.1" style="font-size:50%;">0.09</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.5">
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.1">
<span class="ltx_text" id="S4.T6.5.5.1.1" style="font-size:50%;">Instruction adherence </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.5.5.1.m1.1"><semantics id="S4.T6.5.5.1.m1.1a"><mo id="S4.T6.5.5.1.m1.1.1" mathsize="50%" stretchy="false" xref="S4.T6.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.5.5.1.m1.1b"><ci id="S4.T6.5.5.1.m1.1.1.cmml" xref="S4.T6.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.5.5.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.2"><span class="ltx_text" id="S4.T6.5.5.2.1" style="font-size:50%;">5.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.3"><span class="ltx_text" id="S4.T6.5.5.3.1" style="font-size:50%;">2.64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.4"><span class="ltx_text" id="S4.T6.5.5.4.1" style="font-size:50%;">6.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.5"><span class="ltx_text" id="S4.T6.5.5.5.1" style="font-size:50%;">6.73</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.6">
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.1"><span class="ltx_text ltx_font_bold" id="S4.T6.6.6.1.1" style="font-size:50%;">Overall <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.6.6.1.1.m1.1"><semantics id="S4.T6.6.6.1.1.m1.1a"><mo id="S4.T6.6.6.1.1.m1.1.1" stretchy="false" xref="S4.T6.6.6.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.6.6.1.1.m1.1b"><ci id="S4.T6.6.6.1.1.m1.1.1.cmml" xref="S4.T6.6.6.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.6.6.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.6.6.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.2"><span class="ltx_text ltx_font_bold" id="S4.T6.6.6.2.1" style="font-size:50%;">6.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.3"><span class="ltx_text ltx_font_bold" id="S4.T6.6.6.3.1" style="font-size:50%;">2.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.4"><span class="ltx_text ltx_font_bold" id="S4.T6.6.6.4.1" style="font-size:50%;">6.29</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.5"><span class="ltx_text ltx_font_bold" id="S4.T6.6.6.5.1" style="font-size:50%;">6.76</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.7.7.2" rowspan="3"><span class="ltx_text" id="S4.T6.7.7.2.1" style="font-size:50%;">AMI</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.7.7.1">
<span class="ltx_text" id="S4.T6.7.7.1.1" style="font-size:50%;">Hallucination </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.7.7.1.m1.1"><semantics id="S4.T6.7.7.1.m1.1a"><mo id="S4.T6.7.7.1.m1.1.1" mathsize="50%" stretchy="false" xref="S4.T6.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.7.7.1.m1.1b"><ci id="S4.T6.7.7.1.m1.1.1.cmml" xref="S4.T6.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.7.7.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.7.7.3"><span class="ltx_text" id="S4.T6.7.7.3.1" style="font-size:50%;">0.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.7.7.4"><span class="ltx_text" id="S4.T6.7.7.4.1" style="font-size:50%;">0.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.7.7.5"><span class="ltx_text" id="S4.T6.7.7.5.1" style="font-size:50%;">0.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.7.7.6"><span class="ltx_text" id="S4.T6.7.7.6.1" style="font-size:50%;">0.10</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.8.8">
<td class="ltx_td ltx_align_center" id="S4.T6.8.8.1">
<span class="ltx_text" id="S4.T6.8.8.1.1" style="font-size:50%;">Instruction adherence </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.8.8.1.m1.1"><semantics id="S4.T6.8.8.1.m1.1a"><mo id="S4.T6.8.8.1.m1.1.1" mathsize="50%" stretchy="false" xref="S4.T6.8.8.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.8.8.1.m1.1b"><ci id="S4.T6.8.8.1.m1.1.1.cmml" xref="S4.T6.8.8.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.8.8.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.8.8.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.8.8.2"><span class="ltx_text" id="S4.T6.8.8.2.1" style="font-size:50%;">6.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.8.8.3"><span class="ltx_text" id="S4.T6.8.8.3.1" style="font-size:50%;">1.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.8.8.4"><span class="ltx_text" id="S4.T6.8.8.4.1" style="font-size:50%;">6.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.8.8.5"><span class="ltx_text" id="S4.T6.8.8.5.1" style="font-size:50%;">6.83</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.9.9">
<td class="ltx_td ltx_align_center" id="S4.T6.9.9.1"><span class="ltx_text ltx_font_bold" id="S4.T6.9.9.1.1" style="font-size:50%;">Overall <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.9.9.1.1.m1.1"><semantics id="S4.T6.9.9.1.1.m1.1a"><mo id="S4.T6.9.9.1.1.m1.1.1" stretchy="false" xref="S4.T6.9.9.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.9.9.1.1.m1.1b"><ci id="S4.T6.9.9.1.1.m1.1.1.cmml" xref="S4.T6.9.9.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.9.9.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.9.9.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.9.9.2"><span class="ltx_text ltx_font_bold" id="S4.T6.9.9.2.1" style="font-size:50%;">6.29</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.9.9.3"><span class="ltx_text ltx_font_bold" id="S4.T6.9.9.3.1" style="font-size:50%;">1.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.9.9.4"><span class="ltx_text ltx_font_bold" id="S4.T6.9.9.4.1" style="font-size:50%;">5.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.9.9.5"><span class="ltx_text ltx_font_bold" id="S4.T6.9.9.5.1" style="font-size:50%;">6.53</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.10.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T6.10.10.2" rowspan="9"><span class="ltx_text" id="S4.T6.10.10.2.1" style="font-size:50%;">AU</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.10.10.1" rowspan="5"><span class="ltx_text" id="S4.T6.10.10.1.1" style="font-size:50%;">Score 1-10 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.10.10.1.1.m1.1"><semantics id="S4.T6.10.10.1.1.m1.1a"><mo id="S4.T6.10.10.1.1.m1.1.1" stretchy="false" xref="S4.T6.10.10.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.10.10.1.1.m1.1b"><ci id="S4.T6.10.10.1.1.m1.1.1.cmml" xref="S4.T6.10.10.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.10.10.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.10.10.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.10.10.3" rowspan="5"><span class="ltx_text" id="S4.T6.10.10.3.1" style="font-size:50%;">AirBench-chat</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.10.10.4"><span class="ltx_text" id="S4.T6.10.10.4.1" style="font-size:50%;">mixed</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.10.10.5"><span class="ltx_text" id="S4.T6.10.10.5.1" style="font-size:50%;">6.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.10.10.6"><span class="ltx_text" id="S4.T6.10.10.6.1" style="font-size:50%;">6.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.10.10.7"><span class="ltx_text" id="S4.T6.10.10.7.1" style="font-size:50%;">6.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.10.10.8"><span class="ltx_text" id="S4.T6.10.10.8.1" style="font-size:50%;">6.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.24">
<td class="ltx_td ltx_align_center" id="S4.T6.11.24.1"><span class="ltx_text" id="S4.T6.11.24.1.1" style="font-size:50%;">music</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.24.2"><span class="ltx_text" id="S4.T6.11.24.2.1" style="font-size:50%;">6.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.24.3"><span class="ltx_text" id="S4.T6.11.24.3.1" style="font-size:50%;">6.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.24.4"><span class="ltx_text" id="S4.T6.11.24.4.1" style="font-size:50%;">6.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.24.5"><span class="ltx_text" id="S4.T6.11.24.5.1" style="font-size:50%;">5.55</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.25">
<td class="ltx_td ltx_align_center" id="S4.T6.11.25.1"><span class="ltx_text" id="S4.T6.11.25.1.1" style="font-size:50%;">sound</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.25.2"><span class="ltx_text" id="S4.T6.11.25.2.1" style="font-size:50%;">7.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.25.3"><span class="ltx_text" id="S4.T6.11.25.3.1" style="font-size:50%;">6.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.25.4"><span class="ltx_text" id="S4.T6.11.25.4.1" style="font-size:50%;">5.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.25.5"><span class="ltx_text" id="S4.T6.11.25.5.1" style="font-size:50%;">7.45</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.26">
<td class="ltx_td ltx_align_center" id="S4.T6.11.26.1"><span class="ltx_text" id="S4.T6.11.26.1.1" style="font-size:50%;">speech</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.26.2"><span class="ltx_text" id="S4.T6.11.26.2.1" style="font-size:50%;">7.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.26.3"><span class="ltx_text" id="S4.T6.11.26.3.1" style="font-size:50%;">7.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.26.4"><span class="ltx_text" id="S4.T6.11.26.4.1" style="font-size:50%;">7.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.26.5"><span class="ltx_text" id="S4.T6.11.26.5.1" style="font-size:50%;">7.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.27">
<td class="ltx_td ltx_align_center" id="S4.T6.11.27.1"><span class="ltx_text ltx_font_bold" id="S4.T6.11.27.1.1" style="font-size:50%;">AVG</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.27.2"><span class="ltx_text ltx_font_bold" id="S4.T6.11.27.2.1" style="font-size:50%;">6.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.27.3"><span class="ltx_text ltx_font_bold" id="S4.T6.11.27.3.1" style="font-size:50%;">6.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.27.4"><span class="ltx_text ltx_font_bold" id="S4.T6.11.27.4.1" style="font-size:50%;">6.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.27.5"><span class="ltx_text ltx_font_bold" id="S4.T6.11.27.5.1" style="font-size:50%;">6.54</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.11">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T6.11.11.1" rowspan="4"><span class="ltx_text" id="S4.T6.11.11.1.1" style="font-size:50%;">ACC <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.11.11.1.1.m1.1"><semantics id="S4.T6.11.11.1.1.m1.1a"><mo id="S4.T6.11.11.1.1.m1.1.1" stretchy="false" xref="S4.T6.11.11.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.11.11.1.1.m1.1b"><ci id="S4.T6.11.11.1.1.m1.1.1.cmml" xref="S4.T6.11.11.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.11.11.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.11.11.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T6.11.11.2" rowspan="4"><span class="ltx_text" id="S4.T6.11.11.2.1" style="font-size:50%;">MMAU</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.11.3"><span class="ltx_text" id="S4.T6.11.11.3.1" style="font-size:50%;">music</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.11.4"><span class="ltx_text" id="S4.T6.11.11.4.1" style="font-size:50%;">52.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.11.5"><span class="ltx_text" id="S4.T6.11.11.5.1" style="font-size:50%;">53.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.11.6"><span class="ltx_text" id="S4.T6.11.11.6.1" style="font-size:50%;">58.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.11.7"><span class="ltx_text" id="S4.T6.11.11.7.1" style="font-size:50%;">55.27</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.28">
<td class="ltx_td ltx_align_center" id="S4.T6.11.28.1"><span class="ltx_text" id="S4.T6.11.28.1.1" style="font-size:50%;">sound</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.28.2"><span class="ltx_text" id="S4.T6.11.28.2.1" style="font-size:50%;">60.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.28.3"><span class="ltx_text" id="S4.T6.11.28.3.1" style="font-size:50%;">58.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.28.4"><span class="ltx_text" id="S4.T6.11.28.4.1" style="font-size:50%;">62.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.28.5"><span class="ltx_text" id="S4.T6.11.28.5.1" style="font-size:50%;">48.30</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.29">
<td class="ltx_td ltx_align_center" id="S4.T6.11.29.1"><span class="ltx_text" id="S4.T6.11.29.1.1" style="font-size:50%;">speech</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.29.2"><span class="ltx_text" id="S4.T6.11.29.2.1" style="font-size:50%;">52.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.29.3"><span class="ltx_text" id="S4.T6.11.29.3.1" style="font-size:50%;">45.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.29.4"><span class="ltx_text" id="S4.T6.11.29.4.1" style="font-size:50%;">62.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.29.5"><span class="ltx_text" id="S4.T6.11.29.5.1" style="font-size:50%;">56.30</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.30">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.11.30.1"><span class="ltx_text ltx_font_bold" id="S4.T6.11.30.1.1" style="font-size:50%;">AVG</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.11.30.2"><span class="ltx_text ltx_font_bold" id="S4.T6.11.30.2.1" style="font-size:50%;">55.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.11.30.3"><span class="ltx_text ltx_font_bold" id="S4.T6.11.30.3.1" style="font-size:50%;">52.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.11.30.4"><span class="ltx_text ltx_font_bold" id="S4.T6.11.30.4.1" style="font-size:50%;">61.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.11.30.5"><span class="ltx_text ltx_font_bold" id="S4.T6.11.30.5.1" style="font-size:50%;">53.29</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a detailed comparison of Automatic Speech Recognition (ASR) performance across various models and benchmarks.  It specifically focuses on Character Error Rate (CER) for Japanese (JA) and Chinese (ZH) and Word Error Rate (WER) for other languages. A key highlight is that the nvidia/canary-1B model is identified as the top-performing model on the Huggingface OpenASR leaderboard. The table contrasts results from different models, noting that the results for nvidia/canary-1B and WhisperV3 are sourced directly from official reports, while the remaining model results were generated through internal testing. All evaluations were conducted on the same test data version for a consistent comparison.
> <details>
> <summary>read the caption</summary>
> Table 4: Detailed results on ASR benchmarks. We compute CER (↓↓\downarrow↓) for JA and ZH, and WER (↓↓\downarrow↓) for other languages. nvidia/canary-1B model is the best performing model on the Huggingface OpenASR leaderboard to date. The results of canary and WhisperV3 are from the official report while others are obtained through internal evaluation on the same test data version.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T12.2">
<tr class="ltx_tr" id="S5.T12.2.3">
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S5.T12.2.3.1"><span class="ltx_text" id="S5.T12.2.3.1.1" style="font-size:90%;">Refusal Rate</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T12.2.3.2"><span class="ltx_text ltx_font_typewriter" id="S5.T12.2.3.2.1" style="font-size:90%;">Phi-4-Mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T12.2.3.3"><span class="ltx_text ltx_font_typewriter" id="S5.T12.2.3.3.1" style="font-size:90%;">Phi-4-Multimodal</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T12.2.3.4"><span class="ltx_text" id="S5.T12.2.3.4.1" style="font-size:90%;">Phi-3.5-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T12.2.3.5"><span class="ltx_text" id="S5.T12.2.3.5.1" style="font-size:90%;">Llama-3.2-3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T12.2.3.6"><span class="ltx_text" id="S5.T12.2.3.6.1" style="font-size:90%;">Qwen-2.5-3B</span></td>
</tr>
<tr class="ltx_tr" id="S5.T12.1.1">
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S5.T12.1.1.1">
<span class="ltx_text" id="S5.T12.1.1.1.1" style="font-size:90%;">IPRR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T12.1.1.1.m1.1"><semantics id="S5.T12.1.1.1.m1.1a"><mo id="S5.T12.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T12.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T12.1.1.1.m1.1b"><ci id="S5.T12.1.1.1.m1.1.1.cmml" xref="S5.T12.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T12.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T12.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T12.1.1.2"><span class="ltx_text" id="S5.T12.1.1.2.1" style="font-size:90%;">93.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T12.1.1.3"><span class="ltx_text" id="S5.T12.1.1.3.1" style="font-size:90%;">92%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T12.1.1.4"><span class="ltx_text" id="S5.T12.1.1.4.1" style="font-size:90%;">87%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T12.1.1.5"><span class="ltx_text" id="S5.T12.1.1.5.1" style="font-size:90%;">92.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T12.1.1.6"><span class="ltx_text" id="S5.T12.1.1.6.1" style="font-size:90%;">92%</span></td>
</tr>
<tr class="ltx_tr" id="S5.T12.2.2">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_rr" id="S5.T12.2.2.1">
<span class="ltx_text" id="S5.T12.2.2.1.1" style="font-size:90%;">VPRR </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T12.2.2.1.m1.1"><semantics id="S5.T12.2.2.1.m1.1a"><mo id="S5.T12.2.2.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T12.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T12.2.2.1.m1.1b"><ci id="S5.T12.2.2.1.m1.1.1.cmml" xref="S5.T12.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T12.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T12.2.2.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T12.2.2.2"><span class="ltx_text" id="S5.T12.2.2.2.1" style="font-size:90%;">20.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T12.2.2.3"><span class="ltx_text" id="S5.T12.2.2.3.1" style="font-size:90%;">26.4%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T12.2.2.4"><span class="ltx_text" id="S5.T12.2.2.4.1" style="font-size:90%;">21.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T12.2.2.5"><span class="ltx_text" id="S5.T12.2.2.5.1" style="font-size:90%;">15.6%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T12.2.2.6"><span class="ltx_text" id="S5.T12.2.2.6.1" style="font-size:90%;">25.6%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a detailed comparison of Automatic Speech Translation (AST) performance across various models and languages on two benchmark datasets, COVOST2 and FLEURS.  The evaluation focuses on BLEU scores, a common metric assessing the quality of machine translation.  Different tokenizers within the Sacrebleu toolkit (zh, ja-mecab, and 13a) were used to optimize BLEU score calculation for Chinese, Japanese, and the remaining six languages, respectively.  The results shown are entirely based on internal evaluations performed by the authors.
> <details>
> <summary>read the caption</summary>
> Table 5: Detailed results on AST benchmarks with BLEU (↑↑\uparrow↑) score reported. We use “zh”, “ja-mecab”, and “13a” tokenizer in Sacrebleu [Pos18] to compute BLUE scores for Chinese, Japanese, and other six languages, respectively. All results are obtained through our internal evaluation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T14.2">
<tr class="ltx_tr" id="S5.T14.2.1">
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S5.T14.2.1.1"><span class="ltx_text" id="S5.T14.2.1.1.1" style="font-size:90%;">Defect Rate</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T14.2.1.2"><span class="ltx_text ltx_font_typewriter" id="S5.T14.2.1.2.1" style="font-size:90%;">Phi-4-Multimodal</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T14.2.1.3"><span class="ltx_text" id="S5.T14.2.1.3.1" style="font-size:90%;">GPT-4o</span></td>
</tr>
<tr class="ltx_tr" id="S5.T14.2.2">
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S5.T14.2.2.1"><span class="ltx_text" id="S5.T14.2.2.1.1" style="font-size:90%;">Violence</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T14.2.2.2"><span class="ltx_text" id="S5.T14.2.2.2.1" style="font-size:90%;">4%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T14.2.2.3"><span class="ltx_text" id="S5.T14.2.2.3.1" style="font-size:90%;">2%</span></td>
</tr>
<tr class="ltx_tr" id="S5.T14.2.3">
<td class="ltx_td ltx_align_center ltx_border_rr" id="S5.T14.2.3.1"><span class="ltx_text" id="S5.T14.2.3.1.1" style="font-size:90%;">Sexual</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T14.2.3.2"><span class="ltx_text" id="S5.T14.2.3.2.1" style="font-size:90%;">4%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T14.2.3.3"><span class="ltx_text" id="S5.T14.2.3.3.1" style="font-size:90%;">1%</span></td>
</tr>
<tr class="ltx_tr" id="S5.T14.2.4">
<td class="ltx_td ltx_align_center ltx_border_rr" id="S5.T14.2.4.1"><span class="ltx_text" id="S5.T14.2.4.1.1" style="font-size:90%;">Self-Harm</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T14.2.4.2"><span class="ltx_text" id="S5.T14.2.4.2.1" style="font-size:90%;">1%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T14.2.4.3"><span class="ltx_text" id="S5.T14.2.4.3.1" style="font-size:90%;">1%</span></td>
</tr>
<tr class="ltx_tr" id="S5.T14.2.5">
<td class="ltx_td ltx_align_center ltx_border_rr" id="S5.T14.2.5.1"><span class="ltx_text" id="S5.T14.2.5.1.1" style="font-size:90%;">Hateful</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T14.2.5.2"><span class="ltx_text" id="S5.T14.2.5.2.1" style="font-size:90%;">4%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T14.2.5.3"><span class="ltx_text" id="S5.T14.2.5.3.1" style="font-size:90%;">0%</span></td>
</tr>
<tr class="ltx_tr" id="S5.T14.2.6">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_rr ltx_border_t" id="S5.T14.2.6.1"><span class="ltx_text" id="S5.T14.2.6.1.1" style="font-size:90%;">Average</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S5.T14.2.6.2"><span class="ltx_text" id="S5.T14.2.6.2.1" style="font-size:90%;">3.25%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T14.2.6.3"><span class="ltx_text" id="S5.T14.2.6.3.1" style="font-size:90%;">1%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the performance of various multi-modal models on speech-related tasks, including question answering (QA), summarization (SSUM), and audio understanding (AU).  The models are evaluated across different benchmarks and sub-categories, providing a comprehensive assessment of their capabilities.  GPT-4 (version 0613) is used as the evaluation metric.
> <details>
> <summary>read the caption</summary>
> Table 6: Result details on speech QA/summarization/audio understanding tasks for multi-modal models. The scores are obtained using GPT-4-0613 as a judge.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T15.2">
<tr class="ltx_tr" id="S5.T15.2.1">
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S5.T15.2.1.1"><span class="ltx_text" id="S5.T15.2.1.1.1" style="font-size:90%;">Text &amp; Vision</span></td>
<td class="ltx_td ltx_border_t" id="S5.T15.2.1.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T15.2.1.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T15.2.1.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T15.2.1.5"></td>
<td class="ltx_td ltx_border_t" id="S5.T15.2.1.6"></td>
</tr>
<tr class="ltx_tr" id="S5.T15.2.2">
<td class="ltx_td ltx_align_center ltx_border_rr" id="S5.T15.2.2.1"><span class="ltx_text" id="S5.T15.2.2.1.1" style="font-size:90%;">Safety Evaluation</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T15.2.2.2"><span class="ltx_text ltx_font_typewriter" id="S5.T15.2.2.2.1" style="font-size:90%;">Phi-4-Multimodal</span></td>
<td class="ltx_td ltx_align_center" id="S5.T15.2.2.3"><span class="ltx_text" id="S5.T15.2.2.3.1" style="font-size:90%;">Phi-3.5-Vision</span></td>
<td class="ltx_td ltx_align_center" id="S5.T15.2.2.4"><span class="ltx_text" id="S5.T15.2.2.4.1" style="font-size:90%;">Llava-1.6 Vicuna</span></td>
<td class="ltx_td ltx_align_center" id="S5.T15.2.2.5"><span class="ltx_text" id="S5.T15.2.2.5.1" style="font-size:90%;">Qwen-VL-Chat</span></td>
<td class="ltx_td ltx_align_center" id="S5.T15.2.2.6"><span class="ltx_text" id="S5.T15.2.2.6.1" style="font-size:90%;">GPT4-V</span></td>
</tr>
<tr class="ltx_tr" id="S5.T15.2.3">
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S5.T15.2.3.1"><span class="ltx_text" id="S5.T15.2.3.1.1" style="font-size:90%;">Internal (private)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T15.2.3.2"><span class="ltx_text" id="S5.T15.2.3.2.1" style="font-size:90%;">7.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T15.2.3.3"><span class="ltx_text" id="S5.T15.2.3.3.1" style="font-size:90%;">8.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T15.2.3.4"><span class="ltx_text" id="S5.T15.2.3.4.1" style="font-size:90%;">5.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T15.2.3.5"><span class="ltx_text" id="S5.T15.2.3.5.1" style="font-size:90%;">7.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T15.2.3.6"><span class="ltx_text" id="S5.T15.2.3.6.1" style="font-size:90%;">8.55</span></td>
</tr>
<tr class="ltx_tr" id="S5.T15.2.4">
<td class="ltx_td ltx_align_center ltx_border_rr" id="S5.T15.2.4.1"><span class="ltx_text" id="S5.T15.2.4.1.1" style="font-size:90%;">RTVLM (public)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T15.2.4.2"><span class="ltx_text" id="S5.T15.2.4.2.1" style="font-size:90%;">6.39</span></td>
<td class="ltx_td ltx_align_center" id="S5.T15.2.4.3"><span class="ltx_text" id="S5.T15.2.4.3.1" style="font-size:90%;">5.44</span></td>
<td class="ltx_td ltx_align_center" id="S5.T15.2.4.4"><span class="ltx_text" id="S5.T15.2.4.4.1" style="font-size:90%;">3.86</span></td>
<td class="ltx_td ltx_align_center" id="S5.T15.2.4.5"><span class="ltx_text" id="S5.T15.2.4.5.1" style="font-size:90%;">4.78</span></td>
<td class="ltx_td ltx_align_center" id="S5.T15.2.4.6"><span class="ltx_text" id="S5.T15.2.4.6.1" style="font-size:90%;">6.81</span></td>
</tr>
<tr class="ltx_tr" id="S5.T15.2.5">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_rr" id="S5.T15.2.5.1"><span class="ltx_text" id="S5.T15.2.5.1.1" style="font-size:90%;">VLGuard (public)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T15.2.5.2"><span class="ltx_text" id="S5.T15.2.5.2.1" style="font-size:90%;">8.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T15.2.5.3"><span class="ltx_text" id="S5.T15.2.5.3.1" style="font-size:90%;">9.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T15.2.5.4"><span class="ltx_text" id="S5.T15.2.5.4.1" style="font-size:90%;">5.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T15.2.5.5"><span class="ltx_text" id="S5.T15.2.5.5.1" style="font-size:90%;">8.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T15.2.5.6"><span class="ltx_text" id="S5.T15.2.5.6.1" style="font-size:90%;">8.90</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of Phi-4-Mini's performance on various language benchmarks against several other language models, including Llama 3.2, Llama 3.1-8B, Qwen 2.5, Ministral, and Gemma series.  The benchmarks assess different aspects of language understanding capabilities, such as reasoning, math, and coding skills. The table allows readers to directly compare the performance of Phi-4-Mini to these models across multiple tasks, highlighting its strengths and weaknesses relative to its size and capabilities.
> <details>
> <summary>read the caption</summary>
> Table 7: Phi-4-Mini language benchmark scores in comparison with Llama 3.2, Llama 3.1-8B, Qwen 2.5, Ministral and Gemma series.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.p1.1">
<tr class="ltx_tr" id="A2.p1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.1.1.1">
<span class="ltx_p" id="A2.p1.1.1.1.1.1" style="width:142.3pt;">Abdelrahman Abouelenin</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.1.2.1">
<span class="ltx_p" id="A2.p1.1.1.2.1.1" style="width:142.3pt;">Yuxuan Hu</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.1.3.1">
<span class="ltx_p" id="A2.p1.1.1.3.1.1" style="width:142.3pt;">Bo Ren</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.2.1.1">
<span class="ltx_p" id="A2.p1.1.2.1.1.1" style="width:142.3pt;">Atabak Ashfaq</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.2.2.1">
<span class="ltx_p" id="A2.p1.1.2.2.1.1" style="width:142.3pt;">Xin Jin</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.2.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.2.3.1">
<span class="ltx_p" id="A2.p1.1.2.3.1.1" style="width:142.3pt;">Liliang Ren</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.3.1.1">
<span class="ltx_p" id="A2.p1.1.3.1.1.1" style="width:142.3pt;">Adam Atkinson</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.3.2.1">
<span class="ltx_p" id="A2.p1.1.3.2.1.1" style="width:142.3pt;">Mahmoud Khademi</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.3.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.3.3.1">
<span class="ltx_p" id="A2.p1.1.3.3.1.1" style="width:142.3pt;">Sambuddha Roy</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.4.1.1">
<span class="ltx_p" id="A2.p1.1.4.1.1.1" style="width:142.3pt;">Hany Awadalla</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.4.2.1">
<span class="ltx_p" id="A2.p1.1.4.2.1.1" style="width:142.3pt;">Dongwoo Kim</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.4.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.4.3.1">
<span class="ltx_p" id="A2.p1.1.4.3.1.1" style="width:142.3pt;">Ning Shang</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.5.1.1">
<span class="ltx_p" id="A2.p1.1.5.1.1.1" style="width:142.3pt;">Nguyen Bach</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.5.2.1">
<span class="ltx_p" id="A2.p1.1.5.2.1.1" style="width:142.3pt;">Young Jin Kim</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.5.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.5.3.1">
<span class="ltx_p" id="A2.p1.1.5.3.1.1" style="width:142.3pt;">Yelong Shen</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.6.1.1">
<span class="ltx_p" id="A2.p1.1.6.1.1.1" style="width:142.3pt;">Jianmin Bao</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.6.2.1">
<span class="ltx_p" id="A2.p1.1.6.2.1.1" style="width:142.3pt;">Gina Lee</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.6.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.6.3.1">
<span class="ltx_p" id="A2.p1.1.6.3.1.1" style="width:142.3pt;">Saksham Singhal</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.7.1.1">
<span class="ltx_p" id="A2.p1.1.7.1.1.1" style="width:142.3pt;">Alon Benhaim</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.7.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.7.2.1">
<span class="ltx_p" id="A2.p1.1.7.2.1.1" style="width:142.3pt;">Jinyu Li</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.7.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.7.3.1">
<span class="ltx_p" id="A2.p1.1.7.3.1.1" style="width:142.3pt;">Subhojit Som</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.8.1.1">
<span class="ltx_p" id="A2.p1.1.8.1.1.1" style="width:142.3pt;">Martin Cai</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.8.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.8.2.1">
<span class="ltx_p" id="A2.p1.1.8.2.1.1" style="width:142.3pt;">Yunsheng Li</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.8.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.8.3.1">
<span class="ltx_p" id="A2.p1.1.8.3.1.1" style="width:142.3pt;">Xia Song</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.9.1.1">
<span class="ltx_p" id="A2.p1.1.9.1.1.1" style="width:142.3pt;">Vishrav Chaudhary</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.9.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.9.2.1">
<span class="ltx_p" id="A2.p1.1.9.2.1.1" style="width:142.3pt;">Chen Liang</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.9.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.9.3.1">
<span class="ltx_p" id="A2.p1.1.9.3.1.1" style="width:142.3pt;">Tetyana Sych</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.10.1.1">
<span class="ltx_p" id="A2.p1.1.10.1.1.1" style="width:142.3pt;">Congcong Chen</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.10.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.10.2.1">
<span class="ltx_p" id="A2.p1.1.10.2.1.1" style="width:142.3pt;">Xihui Lin</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.10.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.10.3.1">
<span class="ltx_p" id="A2.p1.1.10.3.1.1" style="width:142.3pt;">Praneetha Vaddamanu</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.11.1.1">
<span class="ltx_p" id="A2.p1.1.11.1.1.1" style="width:142.3pt;">Dong Chen</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.11.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.11.2.1">
<span class="ltx_p" id="A2.p1.1.11.2.1.1" style="width:142.3pt;">Zeqi Lin</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.11.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.11.3.1">
<span class="ltx_p" id="A2.p1.1.11.3.1.1" style="width:142.3pt;">Shuohang Wang</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.12.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.12.1.1">
<span class="ltx_p" id="A2.p1.1.12.1.1.1" style="width:142.3pt;">Dongdong Chen</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.12.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.12.2.1">
<span class="ltx_p" id="A2.p1.1.12.2.1.1" style="width:142.3pt;">Mengchen Liu</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.12.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.12.3.1">
<span class="ltx_p" id="A2.p1.1.12.3.1.1" style="width:142.3pt;">Yiming Wang</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.13.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.13.1.1">
<span class="ltx_p" id="A2.p1.1.13.1.1.1" style="width:142.3pt;">Junkun Chen</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.13.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.13.2.1">
<span class="ltx_p" id="A2.p1.1.13.2.1.1" style="width:142.3pt;">Yang Liu</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.13.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.13.3.1">
<span class="ltx_p" id="A2.p1.1.13.3.1.1" style="width:142.3pt;">Zhenghao Wang</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.14.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.14.1.1">
<span class="ltx_p" id="A2.p1.1.14.1.1.1" style="width:142.3pt;">Weizhu Chen</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.14.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.14.2.1">
<span class="ltx_p" id="A2.p1.1.14.2.1.1" style="width:142.3pt;">Gilsinia Lopez</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.14.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.14.3.1">
<span class="ltx_p" id="A2.p1.1.14.3.1.1" style="width:142.3pt;">Haibin Wu</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.15.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.15.1.1">
<span class="ltx_p" id="A2.p1.1.15.1.1.1" style="width:142.3pt;">Yen-Chun Chen</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.15.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.15.2.1">
<span class="ltx_p" id="A2.p1.1.15.2.1.1" style="width:142.3pt;">Chong Luo</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.15.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.15.3.1">
<span class="ltx_p" id="A2.p1.1.15.3.1.1" style="width:142.3pt;">Haoran Xu</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.16.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.16.1.1">
<span class="ltx_p" id="A2.p1.1.16.1.1.1" style="width:142.3pt;">Yi-ling Chen</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.16.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.16.2.1">
<span class="ltx_p" id="A2.p1.1.16.2.1.1" style="width:142.3pt;">Piyush Madan</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.16.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.16.3.1">
<span class="ltx_p" id="A2.p1.1.16.3.1.1" style="width:142.3pt;">Weijian Xu</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.17.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.17.1.1">
<span class="ltx_p" id="A2.p1.1.17.1.1.1" style="width:142.3pt;">Qi Dai</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.17.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.17.2.1">
<span class="ltx_p" id="A2.p1.1.17.2.1.1" style="width:142.3pt;">Vadim Mazalov</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.17.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.17.3.1">
<span class="ltx_p" id="A2.p1.1.17.3.1.1" style="width:142.3pt;">Yifan Yang</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.18.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.18.1.1">
<span class="ltx_p" id="A2.p1.1.18.1.1.1" style="width:142.3pt;">Xiyang Dai</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.18.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.18.2.1">
<span class="ltx_p" id="A2.p1.1.18.2.1.1" style="width:142.3pt;">Ali Mousavi</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.18.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.18.3.1">
<span class="ltx_p" id="A2.p1.1.18.3.1.1" style="width:142.3pt;">Ziyi Yang</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.19.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.19.1.1">
<span class="ltx_p" id="A2.p1.1.19.1.1.1" style="width:142.3pt;">Ruchao Fan</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.19.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.19.2.1">
<span class="ltx_p" id="A2.p1.1.19.2.1.1" style="width:142.3pt;">Anh Nguyen</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.19.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.19.3.1">
<span class="ltx_p" id="A2.p1.1.19.3.1.1" style="width:142.3pt;">Donghan Yu</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.20.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.20.1.1">
<span class="ltx_p" id="A2.p1.1.20.1.1.1" style="width:142.3pt;">Mei Gao</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.20.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.20.2.1">
<span class="ltx_p" id="A2.p1.1.20.2.1.1" style="width:142.3pt;">Jing Pan</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.20.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.20.3.1">
<span class="ltx_p" id="A2.p1.1.20.3.1.1" style="width:142.3pt;">Ishmam Zabir</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.21">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.21.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.21.1.1">
<span class="ltx_p" id="A2.p1.1.21.1.1.1" style="width:142.3pt;">Min Gao</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.21.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.21.2.1">
<span class="ltx_p" id="A2.p1.1.21.2.1.1" style="width:142.3pt;">Daniel Perez-Becker</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.21.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.21.3.1">
<span class="ltx_p" id="A2.p1.1.21.3.1.1" style="width:142.3pt;">Jianwen Zhang</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.22">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.22.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.22.1.1">
<span class="ltx_p" id="A2.p1.1.22.1.1.1" style="width:142.3pt;">Amit Garg</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.22.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.22.2.1">
<span class="ltx_p" id="A2.p1.1.22.2.1.1" style="width:142.3pt;">Jacob Platin</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.22.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.22.3.1">
<span class="ltx_p" id="A2.p1.1.22.3.1.1" style="width:142.3pt;">Li Lyna Zhang</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.23">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.23.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.23.1.1">
<span class="ltx_p" id="A2.p1.1.23.1.1.1" style="width:142.3pt;">Abhishek Goswami</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.23.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.23.2.1">
<span class="ltx_p" id="A2.p1.1.23.2.1.1" style="width:142.3pt;">Thomas Portet</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.23.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.23.3.1">
<span class="ltx_p" id="A2.p1.1.23.3.1.1" style="width:142.3pt;">Yunan Zhang</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.24">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.24.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.24.1.1">
<span class="ltx_p" id="A2.p1.1.24.1.1.1" style="width:142.3pt;">Junheng Hao</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.24.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.24.2.1">
<span class="ltx_p" id="A2.p1.1.24.2.1.1" style="width:142.3pt;">Kai Qiu</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.24.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.24.3.1">
<span class="ltx_p" id="A2.p1.1.24.3.1.1" style="width:142.3pt;">Xiren Zhou</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.p1.1.25">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.25.1">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.25.1.1">
<span class="ltx_p" id="A2.p1.1.25.1.1.1" style="width:142.3pt;">Amr Hendy</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.25.2">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.25.2.1">
<span class="ltx_p" id="A2.p1.1.25.2.1.1" style="width:142.3pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.p1.1.25.3">
<span class="ltx_inline-block ltx_align_top" id="A2.p1.1.25.3.1">
<span class="ltx_p" id="A2.p1.1.25.3.1.1" style="width:142.3pt;"></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of Phi-4-Mini's performance on various coding benchmarks against several other language models, including Llama 3.2, Llama 3.1-8B, Qwen 2.5, Ministral, and Gemma models.  The benchmarks assess different coding capabilities, offering a comprehensive evaluation of Phi-4-Mini's strengths and weaknesses in code generation, understanding, and related tasks.  The comparison highlights the relative performance of Phi-4-Mini across various model sizes and architectures, providing insights into its efficiency and effectiveness in the coding domain.  For each benchmark, the table shows the score achieved by each model, allowing for a direct comparison of performance.
> <details>
> <summary>read the caption</summary>
> Table 8: Phi-4-Mini coding performance comparison with Llama 3.2, Llama 3.1-8B, Qwen 2.5, Ministral and Gemma models.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.01743/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01743/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}