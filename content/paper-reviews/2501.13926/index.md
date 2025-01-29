---
title: "Can We Generate Images with CoT? Let's Verify and Reinforce Image Generation Step by Step"
summary: "Researchers significantly enhanced autoregressive image generation by integrating chain-of-thought reasoning strategies, achieving a remarkable +24% improvement on the GenEval benchmark."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Peking University",]
showSummary: true
date: 2025-01-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.13926 {{< /keyword >}}
{{< keyword icon="writer" >}} Ziyu Guo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.13926" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.13926" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.13926/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current large language models effectively use chain-of-thought (CoT) reasoning to solve complex problems. However, applying similar strategies to autoregressive image generation remains largely unexplored. This paper investigates the potential of CoT reasoning in enhancing autoregressive image generation, focusing on verification, preference alignment, and the interplay between these two techniques.  The core issue is that current methods often struggle to accurately evaluate the quality of generated images, especially at intermediate stages of the generation process. 

This research proposes new specialized reward models (PARM and PARM++) to address the evaluation challenges, which assess generation steps adaptively. They also integrated these models with preference alignment techniques to optimize the generation process.  Experimental results demonstrated significant improvements in image generation quality, surpassing existing state-of-the-art models by a considerable margin. The **integration of CoT reasoning successfully improved image generation by +24% on the GenEval benchmark,** suggesting a promising new approach to enhance image synthesis.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Chain-of-thought reasoning strategies can be effectively applied to enhance autoregressive image generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The proposed Potential Assessment Reward Model (PARM) significantly improves image generation quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Integrating test-time verification and preference alignment techniques yields complementary improvements. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it bridges the gap between chain-of-thought reasoning in language models and autoregressive image generation.  It introduces novel reward models and training strategies that significantly improve image generation quality, opening new avenues for research in both fields and potentially impacting various AI applications that rely on high-quality image generation. The **demonstrated +24% improvement on the GenEval benchmark is a significant achievement** and showcases the potential of this approach.

------
#### Visual Insights



![](https://arxiv.org/html/2501.13926/x3.png)

> 🔼 This figure illustrates the core idea of the paper: applying chain-of-thought (CoT) reasoning to autoregressive image generation.  The left side shows the successful application of CoT reasoning in LLMs and LMMs for mathematical problem-solving, setting a precedent for the current work. The right side introduces the proposed approach for autoregressive image generation, highlighting the use of test-time verification, preference alignment, and two novel reward models (PARM and PARM++) to enhance the generation process.  It visually represents the conceptual transition from established CoT reasoning in language models to a novel application in image generation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Can We Verify and Reinforce Image Generation with Chain-of-Thought (CoT) Reasoning Strategies? Given the success of mathematical CoT reasoning in LLMs [1, 2] and LMMs [3, 4] (Left), we provide the first investigation to comprehensively explore the potential of applying current reasoning techniques to autoregressive image generation (Right), including test-time verification and preference alignment, with two newly proposed specialized reward models, termed PARM and PARM++.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.20">
<tr class="ltx_tr" id="S2.T1.20.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S2.T1.20.1.1">
<span class="ltx_text" id="S2.T1.20.1.1.1"></span><span class="ltx_text" id="S2.T1.20.1.1.2" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.20.1.1.2.1">
<span class="ltx_tr" id="S2.T1.20.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.20.1.1.2.1.1.1">Reasoning</span></span>
<span class="ltx_tr" id="S2.T1.20.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.20.1.1.2.1.2.1">Strategy</span></span>
</span></span><span class="ltx_text" id="S2.T1.20.1.1.3"></span><span class="ltx_text" id="S2.T1.20.1.1.4" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.20.1.2"><span class="ltx_text" id="S2.T1.20.1.2.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T1.20.1.3"><span class="ltx_text" id="S2.T1.20.1.3.1" style="font-size:90%;">Setting</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.20.1.4">
<span class="ltx_text" id="S2.T1.20.1.4.1"></span><span class="ltx_text" id="S2.T1.20.1.4.2" style="font-size:90%;"> </span><span class="ltx_text" id="S2.T1.20.1.4.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.20.1.4.3.1">
<span class="ltx_tr" id="S2.T1.20.1.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.20.1.4.3.1.1.1">Single</span></span>
<span class="ltx_tr" id="S2.T1.20.1.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.20.1.4.3.1.2.1">object</span></span>
</span></span><span class="ltx_text" id="S2.T1.20.1.4.4"></span><span class="ltx_text" id="S2.T1.20.1.4.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.20.1.5">
<span class="ltx_text" id="S2.T1.20.1.5.1"></span><span class="ltx_text" id="S2.T1.20.1.5.2" style="font-size:90%;"> </span><span class="ltx_text" id="S2.T1.20.1.5.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.20.1.5.3.1">
<span class="ltx_tr" id="S2.T1.20.1.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.20.1.5.3.1.1.1">Two</span></span>
<span class="ltx_tr" id="S2.T1.20.1.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.20.1.5.3.1.2.1">object</span></span>
</span></span><span class="ltx_text" id="S2.T1.20.1.5.4"></span><span class="ltx_text" id="S2.T1.20.1.5.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.20.1.6">
<span class="ltx_text" id="S2.T1.20.1.6.1"></span><span class="ltx_text" id="S2.T1.20.1.6.2" style="font-size:90%;"> </span><span class="ltx_text" id="S2.T1.20.1.6.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.20.1.6.3.1">
<span class="ltx_tr" id="S2.T1.20.1.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.20.1.6.3.1.1.1">Counting</span></span>
</span></span><span class="ltx_text" id="S2.T1.20.1.6.4"></span><span class="ltx_text" id="S2.T1.20.1.6.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.20.1.7">
<span class="ltx_text" id="S2.T1.20.1.7.1"></span><span class="ltx_text" id="S2.T1.20.1.7.2" style="font-size:90%;"> </span><span class="ltx_text" id="S2.T1.20.1.7.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.20.1.7.3.1">
<span class="ltx_tr" id="S2.T1.20.1.7.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.20.1.7.3.1.1.1">Colors</span></span>
</span></span><span class="ltx_text" id="S2.T1.20.1.7.4"></span><span class="ltx_text" id="S2.T1.20.1.7.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.20.1.8">
<span class="ltx_text" id="S2.T1.20.1.8.1"></span><span class="ltx_text" id="S2.T1.20.1.8.2" style="font-size:90%;"> </span><span class="ltx_text" id="S2.T1.20.1.8.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.20.1.8.3.1">
<span class="ltx_tr" id="S2.T1.20.1.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.20.1.8.3.1.1.1">Position</span></span>
</span></span><span class="ltx_text" id="S2.T1.20.1.8.4"></span><span class="ltx_text" id="S2.T1.20.1.8.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T1.20.1.9">
<span class="ltx_text" id="S2.T1.20.1.9.1"></span><span class="ltx_text" id="S2.T1.20.1.9.2" style="font-size:90%;"> </span><span class="ltx_text" id="S2.T1.20.1.9.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.20.1.9.3.1">
<span class="ltx_tr" id="S2.T1.20.1.9.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.20.1.9.3.1.1.1">Attribute</span></span>
<span class="ltx_tr" id="S2.T1.20.1.9.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.20.1.9.3.1.2.1">binding</span></span>
</span></span><span class="ltx_text" id="S2.T1.20.1.9.4"></span><span class="ltx_text" id="S2.T1.20.1.9.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.20.1.10"><span class="ltx_text ltx_font_bold" id="S2.T1.20.1.10.1" style="font-size:90%;">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.2" style="background-color:#F0F0F0;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.20.2.1"><span class="ltx_text" id="S2.T1.20.2.1.1" style="font-size:90%;background-color:#F0F0F0;">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.2.2"><span class="ltx_text" id="S2.T1.20.2.2.1" style="font-size:90%;background-color:#F0F0F0;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.20.2.3"><span class="ltx_text" id="S2.T1.20.2.3.1" style="font-size:90%;background-color:#F0F0F0;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.2.4"><span class="ltx_text" id="S2.T1.20.2.4.1" style="font-size:90%;background-color:#F0F0F0;">0.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.2.5"><span class="ltx_text" id="S2.T1.20.2.5.1" style="font-size:90%;background-color:#F0F0F0;">0.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.2.6"><span class="ltx_text" id="S2.T1.20.2.6.1" style="font-size:90%;background-color:#F0F0F0;">0.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.2.7"><span class="ltx_text" id="S2.T1.20.2.7.1" style="font-size:90%;background-color:#F0F0F0;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.2.8"><span class="ltx_text" id="S2.T1.20.2.8.1" style="font-size:90%;background-color:#F0F0F0;">0.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.20.2.9"><span class="ltx_text" id="S2.T1.20.2.9.1" style="font-size:90%;background-color:#F0F0F0;">0.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.2.10"><span class="ltx_text" id="S2.T1.20.2.10.1" style="font-size:90%;background-color:#F0F0F0;">0.53</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.20.3.1" rowspan="4"><span class="ltx_text" id="S2.T1.20.3.1.1" style="font-size:90%;"><span class="ltx_text" id="S2.T1.20.3.1.1.1"></span><span class="ltx_text" id="S2.T1.20.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.20.3.1.1.2.1">
<span class="ltx_tr" id="S2.T1.20.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.20.3.1.1.2.1.1.1">Test-time</span></span>
<span class="ltx_tr" id="S2.T1.20.3.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.20.3.1.1.2.1.2.1">Verifier</span></span>
</span></span> <span class="ltx_text" id="S2.T1.20.3.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.3.2" rowspan="2"><span class="ltx_text" id="S2.T1.20.3.2.1" style="font-size:90%;">ORM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.20.3.3"><span class="ltx_text" id="S2.T1.20.3.3.1" style="font-size:90%;">Zero-Shot</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.3.4"><span class="ltx_text" id="S2.T1.20.3.4.1" style="font-size:90%;">0.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.3.5"><span class="ltx_text" id="S2.T1.20.3.5.1" style="font-size:90%;">0.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.3.6"><span class="ltx_text" id="S2.T1.20.3.6.1" style="font-size:90%;">0.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.3.7"><span class="ltx_text" id="S2.T1.20.3.7.1" style="font-size:90%;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.3.8"><span class="ltx_text" id="S2.T1.20.3.8.1" style="font-size:90%;">0.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.20.3.9"><span class="ltx_text" id="S2.T1.20.3.9.1" style="font-size:90%;">0.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.3.10"><span class="ltx_text" id="S2.T1.20.3.10.1" style="font-size:90%;">0.61</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.20.4.1"><span class="ltx_text" id="S2.T1.20.4.1.1" style="font-size:90%;">Fine-tuned</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.4.2"><span class="ltx_text" id="S2.T1.20.4.2.1" style="font-size:90%;">0.99</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.4.3"><span class="ltx_text" id="S2.T1.20.4.3.1" style="font-size:90%;">0.72</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.4.4"><span class="ltx_text" id="S2.T1.20.4.4.1" style="font-size:90%;">0.65</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.4.5"><span class="ltx_text" id="S2.T1.20.4.5.1" style="font-size:90%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.4.6"><span class="ltx_text" id="S2.T1.20.4.6.1" style="font-size:90%;">0.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.20.4.7"><span class="ltx_text" id="S2.T1.20.4.7.1" style="font-size:90%;">0.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.4.8" style="background-color:#D9FFD9;"><span class="ltx_text" id="S2.T1.20.4.8.1" style="font-size:90%;background-color:#D9FFD9;">0.63</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.5.1" rowspan="2"><span class="ltx_text" id="S2.T1.20.5.1.1" style="font-size:90%;">PRM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.20.5.2"><span class="ltx_text" id="S2.T1.20.5.2.1" style="font-size:90%;">Zero-Shot</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.5.3"><span class="ltx_text" id="S2.T1.20.5.3.1" style="font-size:90%;">0.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.5.4"><span class="ltx_text" id="S2.T1.20.5.4.1" style="font-size:90%;">0.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.5.5"><span class="ltx_text" id="S2.T1.20.5.5.1" style="font-size:90%;">0.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.5.6"><span class="ltx_text" id="S2.T1.20.5.6.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.5.7"><span class="ltx_text" id="S2.T1.20.5.7.1" style="font-size:90%;">0.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.20.5.8"><span class="ltx_text" id="S2.T1.20.5.8.1" style="font-size:90%;">0.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.5.9"><span class="ltx_text" id="S2.T1.20.5.9.1" style="font-size:90%;">0.53</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.20.6.1"><span class="ltx_text" id="S2.T1.20.6.1.1" style="font-size:90%;">Fine-tuned</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.6.2"><span class="ltx_text" id="S2.T1.20.6.2.1" style="font-size:90%;">0.98</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.6.3"><span class="ltx_text" id="S2.T1.20.6.3.1" style="font-size:90%;">0.55</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.6.4"><span class="ltx_text" id="S2.T1.20.6.4.1" style="font-size:90%;">0.54</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.6.5"><span class="ltx_text" id="S2.T1.20.6.5.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.6.6"><span class="ltx_text" id="S2.T1.20.6.6.1" style="font-size:90%;">0.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.20.6.7"><span class="ltx_text" id="S2.T1.20.6.7.1" style="font-size:90%;">0.29</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.6.8" style="background-color:#D9FFD9;"><span class="ltx_text" id="S2.T1.20.6.8.1" style="font-size:90%;background-color:#D9FFD9;">0.55</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.20.7.1"><span class="ltx_text" id="S2.T1.20.7.1.1" style="font-size:90%;">Preference</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.20.7.2" rowspan="2"><span class="ltx_text" id="S2.T1.20.7.2.1" style="font-size:90%;"><span class="ltx_text" id="S2.T1.20.7.2.1.1"></span> <span class="ltx_text" id="S2.T1.20.7.2.1.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.20.7.2.1.2.1">
<span class="ltx_tr" id="S2.T1.20.7.2.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.20.7.2.1.2.1.1.1">DPO</span></span>
</span></span> <span class="ltx_text" id="S2.T1.20.7.2.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.20.7.3"><span class="ltx_text" id="S2.T1.20.7.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.7.4"><span class="ltx_text" id="S2.T1.20.7.4.1" style="font-size:90%;">0.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.7.5"><span class="ltx_text" id="S2.T1.20.7.5.1" style="font-size:90%;">0.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.7.6"><span class="ltx_text" id="S2.T1.20.7.6.1" style="font-size:90%;">0.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.7.7"><span class="ltx_text" id="S2.T1.20.7.7.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.7.8"><span class="ltx_text" id="S2.T1.20.7.8.1" style="font-size:90%;">0.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.20.7.9"><span class="ltx_text" id="S2.T1.20.7.9.1" style="font-size:90%;">0.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.7.10"><span class="ltx_text" id="S2.T1.20.7.10.1" style="font-size:90%;">0.62</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S2.T1.20.8.1"><span class="ltx_text" id="S2.T1.20.8.1.1" style="font-size:90%;">Alignment</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T1.20.8.2"><span class="ltx_text" id="S2.T1.20.8.2.1" style="font-size:90%;">Iterative</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.20.8.3"><span class="ltx_text" id="S2.T1.20.8.3.1" style="font-size:90%;">0.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.20.8.4"><span class="ltx_text" id="S2.T1.20.8.4.1" style="font-size:90%;">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.20.8.5"><span class="ltx_text" id="S2.T1.20.8.5.1" style="font-size:90%;">0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.20.8.6"><span class="ltx_text" id="S2.T1.20.8.6.1" style="font-size:90%;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.20.8.7"><span class="ltx_text" id="S2.T1.20.8.7.1" style="font-size:90%;">0.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T1.20.8.8"><span class="ltx_text" id="S2.T1.20.8.8.1" style="font-size:90%;">0.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.20.8.9" style="background-color:#D9FFD9;"><span class="ltx_text" id="S2.T1.20.8.9.1" style="font-size:90%;background-color:#D9FFD9;">0.65</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares three different approaches to enhance autoregressive image generation: using outcome reward models (ORM) and process reward models (PRM) for test-time verification, and using direct preference optimization (DPO) for preference alignment.  The experiment was conducted using the GenEval benchmark and the Show-o autoregressive model. The table shows the performance metrics (Single object, Two objects, Counting, Colors, Position, Attribute Binding, Overall) for each method with the best-performing variant highlighted in green.  The best-of-N selection approach with N=20 is used for test-time verifiers.
> <details>
> <summary>read the caption</summary>
> Table 1: Test-time Verifiers (ORM vs PRM) vs Preference Alignment. We evaluate text-to-image generation on the GenEval [38] benchmark and adopt Show-o [5] as the autoregressive baseline model. ‘ORM/PRM’ and ‘DPO’ denote Outcome/Process Reward Model and Direct Preference Optimization [46], respectively. We adopt the best-of-N𝑁Nitalic_N selection for test-time verifiers, setting N=20𝑁20N=20italic_N = 20, and highlight the better-performed variant of each reasoning strategy in green.
> </details>





### In-depth insights


#### CoT in ImageGen
The application of Chain-of-Thought (CoT) reasoning to image generation (ImageGen) is a novel area with significant potential.  **CoT's success in complex reasoning tasks suggests it could enhance ImageGen by enabling models to generate images through a series of intermediate steps, similar to how humans solve problems.** This step-by-step approach allows for better control and understanding of the generation process, leading to more coherent and high-quality outputs.  **Key challenges include adapting existing CoT methods, which were primarily designed for text, to the visual domain and developing effective reward models that can accurately assess the quality of intermediate images.** The paper explores several techniques, such as test-time verification and preference alignment, combined with specialized reward models, which are crucial for guiding the step-wise generation process towards desired outcomes. **The results demonstrate a significant improvement in image quality and generation performance, highlighting the effectiveness of integrating CoT reasoning into ImageGen.** Future research could investigate more sophisticated reward models and explore the integration of other advanced reasoning methods to further enhance the capabilities of ImageGen.

#### Reward Model Design
Effective reward model design is crucial for training AI models, especially in complex tasks like image generation.  This paper highlights the limitations of existing Outcome Reward Models (ORMs) and Process Reward Models (PRMs) for autoregressive image generation. **ORMs lack step-wise feedback**, while **PRMs struggle with blurry early-stage images and similar later-stage outputs**.  Therefore, the authors introduce the **Potential Assessment Reward Model (PARM)**, which addresses these shortcomings through a three-step process: clarity judgment, potential assessment, and best-of-N' selection.  This adaptive approach proves superior, significantly boosting performance. Furthermore, **PARM++ incorporates a reflection mechanism**, allowing the model to self-correct unsatisfactory outputs, leading to further improvements.  The design of PARM and PARM++, focusing on adaptive assessment and self-correction, demonstrates the importance of tailoring reward models to the specific challenges of the task.

#### DPO and Verification
The integration of Direct Preference Optimization (DPO) and verification methods offers a powerful approach to enhance autoregressive image generation.  **DPO effectively aligns model preferences with desired outputs by training on ranked image preferences**, implicitly incorporating user preferences into the model's decision-making process. However, DPO alone may not guarantee the generation of consistently high-quality images, as it primarily focuses on preference alignment rather than the overall quality of each step.  **Verification techniques, using reward models, provide a crucial mechanism to evaluate the quality of intermediate generations and select the best among multiple candidate images at each step.** This mitigates the risk of following inferior generation paths that might emerge due to noise or model inconsistencies within DPO.  By combining these approaches, we can harness the strengths of each: **DPO guides the model toward user preferences, while verification ensures the generation of high-quality images along the best-performing paths.** This synergistic interaction leads to significant improvements in the overall quality and consistency of autoregressive image generation outputs.

#### PARM and PARM++
The research paper introduces PARM (Potential Assessment Reward Model) and its enhanced version, PARM++, as novel reward models specifically designed for autoregressive image generation.  **PARM addresses the limitations of existing ORM (Outcome Reward Model) and PRM (Process Reward Model) by adaptively assessing each generation step.** Unlike ORM, which only evaluates the final image, and PRM, which struggles with blurry early-stage images and similar later-stage images, PARM incorporates a three-step process: clarity judgment, potential assessment, and best-of-N' selection.  **This allows PARM to effectively evaluate the generation process at appropriate stages, leveraging the strengths of both ORM and PRM.**  Building upon PARM, PARM++ further integrates a reflection mechanism enabling the model to self-correct unsatisfactory outputs. By identifying and addressing issues such as misalignment between generated image and text prompt, **PARM++ iteratively refines the generation process, resulting in significantly improved image quality.** The introduction of PARM and PARM++ showcases a significant advancement in reward model design for autoregressive image generation, highlighting the potential for integrating human-like reasoning strategies into AI models for better image synthesis.

#### Future of CoT
The future of Chain-of-Thought (CoT) reasoning in AI is incredibly promising, with potential advancements across various domains.  **Improved reward models** are crucial; current methods struggle with nuanced step-wise assessment in complex tasks like image generation.  Developing models that can better capture subtle details and effectively differentiate between stages of reasoning is vital.  **Integration with other techniques**, such as reinforcement learning and preference optimization, will likely lead to more robust and effective CoT systems.  Exploring the **combination of CoT with other reasoning paradigms** could also yield significant improvements.  Further research should focus on making CoT more **efficient and scalable**, reducing computational costs, and addressing issues of brittleness.  Ultimately, the goal is to develop more general-purpose CoT mechanisms that can adapt to a wide range of tasks and datasets, **bridging the gap between current narrow applications and truly general-purpose AI**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.13926/x4.png)

> 🔼 This figure demonstrates the impact of the proposed reasoning strategies on autoregressive image generation. The top row shows examples of images generated by the baseline model Show-o [5] without any reasoning strategies. These examples illustrate the unsatisfactory image generation quality produced by the baseline model. The bottom row shows the improved results after applying the developed reasoning strategies. The reasoning strategies involve integrating the Potential Assessment Reward Model (PARM) with iterative Direct Preference Optimization (DPO) for both reward model guidance and test-time verification. The enhanced generation process significantly improves the quality of the generated images. This figure visually showcases the effectiveness of the proposed methods in enhancing the autoregressive image generation process.
> <details>
> <summary>read the caption</summary>
> Figure 2: Autoregressive Image Generation without (Top) and with (Bottom) Our Reasoning Strategies. We adopt Show-o [5] as the baseline model that produces unsatisfactory text-to-image generation. After using our investigated reasoning strategies (integrating PARM with iterative DPO for both reward model guidance and test-time verification), the generation process is effectively enhanced.
> </details>



![](https://arxiv.org/html/2501.13926/x5.png)

> 🔼 This figure compares the performance of different reward models used for test-time verification in an autoregressive image generation model. The reward models are used to select the best image from a set of candidate images generated by the model. The figure shows the overall score on the GenEval benchmark for different reward models and varying numbers of candidates considered (best-of-N selection).  It shows that using reward models significantly improves the performance compared to a baseline without them. The fine-tuned ORM (Outcome Reward Model) demonstrates the best performance, consistently outperforming the other models, including the zero-shot ORM and PRM (Process Reward Model).
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of Reward Models as Test-time Verifiers. We adopt Show-o [5] as the ‘Baseline’ and evaluate Best-of-N𝑁Nitalic_N selection on the GenEval [38] benchmark.
> </details>



![](https://arxiv.org/html/2501.13926/x6.png)

> 🔼 This figure illustrates three reward models used for test-time verification in autoregressive image generation: Outcome Reward Model (ORM), Process Reward Model (PRM), and the novel Potential Assessment Reward Model (PARM).  Each model's architecture is shown, highlighting how they assess the image generation process.  ORM evaluates only the final generated image, while PRM scores each step of the generation process.  PARM combines aspects of both, adaptively evaluating only clear and promising steps to improve overall accuracy and address the limitations of the other models. The three main tasks of PARM are highlighted in blue, showcasing its adaptive assessment approach.
> <details>
> <summary>read the caption</summary>
> Figure 4: Investigation of Reward Models in Autoregressive Image Generation. For test-time verification, we implement Outcome Reward Model (ORM) and Process Reward Model (PRM), and introduce a new Potential Assessment Reward Model (PARM) customized for image generation scenarios, which progressively performs three tasks (highlighted in blue) to enhance the reasoning of generation.
> </details>



![](https://arxiv.org/html/2501.13926/x7.png)

> 🔼 The figure illustrates the reflection mechanism incorporated into the enhanced Potential Assessment Reward Model (PARM++).  PARM++ builds upon the original PARM by adding a reflection evaluation step.  This step involves assessing the generated image's alignment with the provided text prompt. If misalignment is detected, PARM++ identifies the issue (e.g., incorrect object attributes, inaccurate spatial relationships) and guides the generative model through a self-correction process to refine the image iteratively until it aligns with the prompt.
> <details>
> <summary>read the caption</summary>
> Figure 5: The Reflection Mechanism in Potential Assessment Reward Model ++ (PARM++). As an upgraded version of PARM, PARM++ incorporates a reflection evaluation task, enabling the generative model to self-correct its low-quality images.
> </details>



![](https://arxiv.org/html/2501.13926/x8.png)

> 🔼 This figure showcases qualitative examples demonstrating the effectiveness of PARM++'s reflection mechanism in autoregressive image generation.  PARM++ adds a reflection stage after image generation, where it assesses whether the generated image aligns with the text prompt. If misalignment is detected, PARM++ provides specific feedback (as seen in the caption bubbles) and guides a self-correction process. This iterative refinement aims to improve the accuracy and visual fidelity of the generated image.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative Results with Reflection in PARM++. The proposed PARM++ incorporates a reflection evaluation stage to detect text-image misalignments and provides detailed explanations to guide the self-correction process in autoregressive image generation models.
> </details>



![](https://arxiv.org/html/2501.13926/x9.png)

> 🔼 This figure showcases a comparison between images generated by the baseline model (Show-o) and images generated using the proposed reasoning strategies (integrating PARM with iterative DPO).  The results demonstrate the improvement in image quality and relevance to the text prompts when the reasoning strategies are employed. The figure visually presents examples of text prompts and then showcases the resulting images generated by both the baseline model and the enhanced model, highlighting the significant difference in image quality and fidelity.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative Results using Our Reasoning Strategies. Show-o [5] is adopted as the baseline model, and compared to our best-performing reasoning strategy: integrating PARM with iterative DPO for both reward model guidance and test-time verification.
> </details>



![](https://arxiv.org/html/2501.13926/x10.png)

> 🔼 Figure 8 presents a qualitative comparison of image generation results using different reasoning strategies. The top row shows examples generated by the baseline model, Show-o [5], which demonstrates suboptimal image generation.  The bottom row displays images generated using the authors' best-performing reasoning strategy. This strategy combines the Potential Assessment Reward Model (PARM) with iterative Direct Preference Optimization (DPO) for both reward model guidance and test-time verification. The comparison highlights the significant improvement in image quality and alignment with the text prompt achieved by integrating PARM and iterative DPO into the image generation process. Each text prompt is paired with multiple image samples illustrating both the baseline and enhanced strategies.
> <details>
> <summary>read the caption</summary>
> Figure 8: Qualitative Results using Our Reasoning Strategies. Show-o [5] is adopted as the baseline model, and compared to our best-performing reasoning strategy: integrating PARM with iterative DPO for both reward model guidance and test-time verification.
> </details>



![](https://arxiv.org/html/2501.13926/x11.png)

> 🔼 This figure displays a comparison of image generation results between the baseline model (Show-o) and the improved model using the proposed reasoning strategies.  The improved model incorporates the Potential Assessment Reward Model (PARM) with iterative Direct Preference Optimization (DPO) for both reward model guidance and test-time verification.  Each row presents a different text prompt, followed by the image generations from both the baseline and enhanced models. The image generations from the enhanced model demonstrate improved visual quality and alignment with the corresponding text prompts.
> <details>
> <summary>read the caption</summary>
> Figure 9: Qualitative Results using Our Reasoning Strategies. Show-o [5] is adopted as the baseline model, and compared to our best-performing reasoning strategy: integrating PARM with iterative DPO for both reward model guidance and test-time verification.
> </details>



![](https://arxiv.org/html/2501.13926/x12.png)

> 🔼 This figure displays a comparison of image generation results between the baseline model (Show-o) and the model enhanced with the authors' best-performing reasoning strategy. The enhanced strategy combines the Potential Assessment Reward Model (PARM) with iterative Direct Preference Optimization (DPO) for both reward model guidance and test-time verification.  The figure presents sets of images generated for various text prompts to illustrate the qualitative difference between the baseline and enhanced models. This showcases how the improved strategy leads to more accurate and coherent image generations, which better match the descriptions in the text prompts.
> <details>
> <summary>read the caption</summary>
> Figure 10: Qualitative Results using Our Reasoning Strategies. Show-o [5] is adopted as the baseline model, and compared to our best-performing reasoning strategy: integrating PARM with iterative DPO for both reward model guidance and test-time verification.
> </details>



![](https://arxiv.org/html/2501.13926/x13.png)

> 🔼 This figure showcases the qualitative improvements achieved in image generation by employing the proposed reasoning strategies. The top row displays results from the baseline model (Show-o) without any reasoning, illustrating shortcomings in image generation. The bottom row shows the results after applying the best-performing reasoning strategy: integrating PARM (Potential Assessment Reward Model) with iterative DPO (Direct Preference Optimization). This combination enhances image quality, ensuring better alignment with the text prompts. The improvements are evident across various image generation aspects, demonstrating the effectiveness of the proposed methods in overcoming limitations of the baseline model.
> <details>
> <summary>read the caption</summary>
> Figure 11: Qualitative Results using Our Reasoning Strategies. Show-o [5] is adopted as the baseline model, and compared to our best-performing reasoning strategy: integrating PARM with iterative DPO for both reward model guidance and test-time verification.
> </details>



![](https://arxiv.org/html/2501.13926/x14.png)

> 🔼 Figure 12 visualizes the intermediate steps of image generation using the Show-o model.  Early-stage images are too blurry for effective evaluation, while later-stage images become visually similar, hindering accurate assessment using Process Reward Models (PRMs).  This illustrates the challenges PRMs face in evaluating the generation process step-by-step, particularly with autoregressive image generation models.
> <details>
> <summary>read the caption</summary>
> Figure 12: Visualization of Early-stage and Later-stage Images. We visualize the generated images in the intermediate steps of Show-o [5], where the early-stage images are too blurry to interpret, while the later-stage images are too similar to discriminate, posing great challenges for PRMs to evaluate.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.13926/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13926/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}