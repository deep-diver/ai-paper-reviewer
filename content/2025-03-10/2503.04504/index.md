---
title: "AnyAnomaly: Zero-Shot Customizable Video Anomaly Detection with LVLM"
summary: "AnyAnomaly: LVLM for customizable zero-shot video anomaly detection, adapting to diverse environments without retraining."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Yonsei University",]
showSummary: true
date: 2025-03-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.04504 {{< /keyword >}}
{{< keyword icon="writer" >}} Sunghyun Ahn et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.04504" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.04504" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.04504/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Video Anomaly Detection (VAD) models often fail to generalize across diverse environments due to their reliance on pre-trained normal patterns, which requires costly retraining. This paper tackles this challenge by introducing Customizable Video Anomaly Detection (**C-VAD**), a technique that uses user-defined text to identify abnormal events in videos. Unlike traditional methods, C-VAD dynamically adapts to new environments without needing additional training data. This approach aims to improve the practical usability of VAD systems in real-world scenarios. 



To realize C-VAD, the authors developed **AnyAnomaly**, a model that employs context-aware Visual Question Answering (VQA) using Large Vision Language Models (LVLMs). AnyAnomaly uses a key frame selection module and integrates positional and temporal contexts to enhance the analysis of video segments. The model was evaluated on both standard VAD benchmarks and newly created C-VAD datasets, demonstrating competitive performance and superior generalization capabilities. AnyAnomaly achieved state-of-the-art results on the UBnormal dataset and showed improvements across various anomaly types.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces C-VAD: a novel technique for customizable video anomaly detection based on user-defined anomalies. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents AnyAnomaly: a model leveraging context-aware VQA with LVLMs for effective C-VAD without additional training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates state-of-the-art performance and superior generalization on multiple VAD datasets. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research addresses the critical issue of **generalization in VAD** and offers a practical solution that can be readily deployed in diverse real-world scenarios. The use of LVLMs and context-aware VQA opens new avenues for VAD research and offers a pathway towards more adaptable and intelligent surveillance systems. The **C-VAD** technique and the datasets will facilitate further exploration in this area.

------
#### Visual Insights



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure1.png)

> 🔼 This figure compares traditional Video Anomaly Detection (VAD) and the proposed Customizable Video Anomaly Detection (C-VAD).  Traditional VAD methods typically train on a specific environment and learn patterns of 'normal' behavior. When encountering a new environment or scenarios with different normal activities, these models often fail due to poor generalization. This is illustrated in the left side of the figure, showing a traditional VAD model trained in a campus setting incorrectly flagging a car in a road environment as anomalous.  In contrast, C-VAD uses user-defined textual descriptions to specify what constitutes an anomaly. This approach removes the need to train on specific normal patterns, offering better generalization across diverse settings, as shown on the right. The AnyAnomaly model is introduced as an example of a C-VAD approach.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of traditional video Anomaly Detection (VAD) and customizable video anomaly detection (C-VAD). Traditional VAD models struggle with generalization, making them hard to apply in diverse environments, while C-VAD can handle various video environments.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.4.1">
<tr class="ltx_tr" id="S4.T1.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.4.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.1.2.1">Class</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.1.3.1">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.1.4.1">+KSM</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.1.5.1">+KSM/PC</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.1.6.1">+KSM/TC</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.1.7.1">Proposed</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.1.8.1">Improvement (%)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.1.2.1" rowspan="7"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.2.1.1">Action</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.1.2.2">Skateboarding</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.2.3.1">61.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.4">57.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.5">57.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.2.6.1">73.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.7"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.2.7.1">73.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.8">+20.16</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.3">
<td class="ltx_td ltx_align_left" id="S4.T1.4.1.3.1">Throwing</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.3.2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.3.2.1">91.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.3.3">72.82</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.3.4">88.74</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.3.5">82.53</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.3.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.3.6.1">90.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.3.7">-0.81</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.4">
<td class="ltx_td ltx_align_left" id="S4.T1.4.1.4.1">Running</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.2">53.13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.3">51.93</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.4">53.68</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.4.5.1">59.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.4.6.1">60.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.7">+13.14</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.5">
<td class="ltx_td ltx_align_left" id="S4.T1.4.1.5.1">Loitering</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.2">61.98</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.3">51.96</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.5.4.1">81.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.5.5.1">76.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.5.6.1">81.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.7">+31.12</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.6">
<td class="ltx_td ltx_align_left" id="S4.T1.4.1.6.1">Jumping</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.2">82.84</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.3">92.89</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.6.4.1">92.91</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.6.5.1">95.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.6.6.1">95.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.7">+15.05</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.7">
<td class="ltx_td ltx_align_left" id="S4.T1.4.1.7.1">Falling</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.7.2">78.31</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.7.3">78.95</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.7.4">79.24</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.7.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.7.5.1">88.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.7.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.7.6.1">88.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.7.7">+12.39</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.8">
<td class="ltx_td ltx_align_left" id="S4.T1.4.1.8.1">Fighting</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.8.2">84.48</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.8.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.8.3.1">91.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.8.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.8.4.1">91.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.8.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.8.5.1">98.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.8.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.8.6.1">98.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.8.7">+16.07</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.9">
<td class="ltx_td" id="S4.T1.4.1.9.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.1.9.2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.9.2.1">Average</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.9.3">73.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.9.4">72.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.9.5">77.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.9.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.9.6.1">82.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.9.7"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.9.7.1">83.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.9.8">+14.34</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.1.10.1" rowspan="5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.10.1.1">Appearance</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.1.10.2">Car</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.10.3">88.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.10.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.10.4.1">90.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.10.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.10.5.1">91.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.10.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.10.6.1">90.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.10.7"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.10.7.1">91.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.10.8">+3.09</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.11">
<td class="ltx_td ltx_align_left" id="S4.T1.4.1.11.1">Hand truck</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.11.2">95.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.11.3">98.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.11.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.11.4.1">98.91</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.11.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.11.5.1">99.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.11.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.11.6.1">99.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.11.7">+3.87</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.12">
<td class="ltx_td ltx_align_left" id="S4.T1.4.1.12.1">Bicycle</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.12.2">72.36</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.12.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.12.3.1">72.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.12.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.12.4.1">78.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.12.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.12.5.1">72.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.12.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.12.6.1">78.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.12.7">+8.44</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.13">
<td class="ltx_td ltx_align_left" id="S4.T1.4.1.13.1">Motorcycle</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.13.2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.13.2.1">88.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.13.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.13.3.1">86.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.13.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.13.4.1">86.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.13.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.13.5.1">86.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.13.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.13.6.1">86.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.13.7">-1.50</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.1.14.1"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.14.1.1">Average</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.14.2">86.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.14.3">87.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.14.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.14.4.1">88.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.14.5">87.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.14.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.14.6.1">88.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.14.7">+3.25</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.15" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T1.4.1.15.1"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.15.1.1" style="background-color:#E6E6FF;">Overall Average</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S4.T1.4.1.15.2"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.4.1.15.3"><span class="ltx_text" id="S4.T1.4.1.15.3.1" style="background-color:#E6E6FF;">78.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.4.1.15.4"><span class="ltx_text" id="S4.T1.4.1.15.4.1" style="background-color:#E6E6FF;">77.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.4.1.15.5"><span class="ltx_text" id="S4.T1.4.1.15.5.1" style="background-color:#E6E6FF;">81.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.4.1.15.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.1.15.6.1" style="background-color:#E6E6FF;">83.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.4.1.15.7"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.15.7.1" style="background-color:#E6E6FF;">85.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.4.1.15.8"><span class="ltx_text" id="S4.T1.4.1.15.8.1" style="background-color:#E6E6FF;">+9.88</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a performance comparison of different methods for video anomaly detection on the Customizable ShanghaiTech Campus (C-ShT) dataset.  It compares the baseline method (frame-level visual question answering) against variations incorporating a key frame selection module (KSM), position context (PC), and temporal context (TC). The table shows the performance (measured as improvement percentage) of each method for various anomaly categories (categorized into Action and Appearance classes), and the overall average.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison on C-ShT dataset
> </details>





### In-depth insights


#### Customizable VAD
**Customizable Video Anomaly Detection (VAD)** represents a significant advancement over traditional methods by allowing users to define abnormal events through text, offering **zero-shot** adaptability to diverse environments without retraining. This approach leverages the power of **Large Vision Language Models (LVLMs)** to dynamically detect anomalies based on user-specified criteria. This contrasts sharply with conventional VAD systems that rely on pre-learned normal patterns, which struggle to generalize across varying scenarios. By enabling users to define anomalies, customizable VAD enhances the practicality and applicability of video analysis in real-world settings, where the definition of 'abnormal' can be highly context-dependent. However, challenges exist in balancing accuracy and computational cost, particularly with complex scenarios or multiple simultaneous anomalies. Future research should focus on improving the efficiency and robustness of LVLM-based customizable VAD systems to ensure they can be deployed effectively in real-time applications.

#### Context-Aware VQA
**Context-aware Visual Question Answering (VQA)** is a critical component for advanced image and video understanding. It allows models to not only identify objects but also interpret their relationships and the overall scene context. **This is particularly important in scenarios like video anomaly detection**, where understanding the environment and temporal dependencies is crucial for accurate predictions. Traditional VQA focuses on answering questions based solely on the visual content, while context-aware VQA incorporates additional information like spatial relationships, scene attributes, and temporal context. This contextual enrichment enhances the model's ability to reason about the scene and provide more accurate and relevant answers. In video analysis, this could involve understanding the flow of events over time or the typical behavior expected in a given location. **By leveraging context, VQA systems can move beyond simple object recognition to a more nuanced understanding of the visual world, leading to better performance in complex tasks**.

#### AnyAnomaly Model
The AnyAnomaly model pioneers a novel approach to video anomaly detection by ingeniously leveraging large vision language models (LVLMs) without requiring task-specific fine-tuning. This customizable video anomaly detection (C-VAD) technique redefines anomaly detection by considering user-defined textual descriptions of abnormal events, enabling zero-shot adaptability across diverse environments. The architecture likely incorporates a key frame selection module to reduce computational overhead, followed by a context-aware visual question answering (VQA) module enhanced with positional and temporal contexts to improve understanding of surveillance video characteristics. **The model's innovation lies in its ability to dynamically detect anomalies based on user-specified criteria**, overcoming the limitations of traditional methods that rely on pre-learned normal patterns. The combination of efficient frame selection and contextual VQA allows the AnyAnomaly model to achieve competitive performance on standard datasets and superior generalization capabilities.

#### Zero-Shot C-VAD
Zero-Shot Customizable Video Anomaly Detection (C-VAD) presents a significant leap, moving beyond the constraints of traditional models dependent on extensive training data and predefined normal patterns. Its core strength lies in its **adaptability to diverse environments without retraining**, achieved by leveraging user-defined textual descriptions of abnormal events. This eliminates the need for specialized AI expertise, high-performance hardware, and extensive data collection. **LVLM's generalization** and the **context-aware visual question answering** technique, enable the system to identify anomalies dynamically based on user-provided descriptions. This flexibility is crucial for real-world applications where anomaly definitions can vary greatly. By considering user input, **C-VAD overcomes limitations** of fixed normal patterns, promising enhanced anomaly detection across various scenarios.

#### LVLM for C-VAD
LVLMs hold immense potential for C-VAD by leveraging their ability to understand both visual and textual information. This can enable zero-shot or few-shot anomaly detection, where the model can identify abnormal events based on user-defined descriptions, without requiring extensive training on specific datasets. **Context-awareness is crucial**; LVLMs need to understand the scene's context (location, time, and activity) to accurately identify anomalies. Furthermore, they must be able to handle the complexity of surveillance videos, including occlusions, varying lighting conditions, and camera angles. **Temporal reasoning is also essential**, as anomalies often manifest as unusual sequences of events rather than isolated incidents. Effective prompt engineering is needed to elicit the desired behavior from LVLMs, guiding them to focus on relevant aspects of the scene and provide accurate anomaly scores. However, challenges remain in addressing the computational cost and latency associated with LVLMs, as well as mitigating biases and ensuring robustness to adversarial attacks. Future research can focus on developing efficient architectures and training strategies to overcome these limitations and unlock the full potential of LVLMs for C-VAD, leading to more accurate, robust, and customizable video surveillance systems.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.04504/extracted/6257000/figure2_2.jpg)

> 🔼 AnyAnomaly processes a video segment by first using a key frame selection module to choose representative frames.  These frames are then used to generate position context (PC) highlighting important locations and temporal context (TC) showing scene changes over time.  PC and TC, along with the representative frame, are fed into a large vision language model (LVLM) along with a user-defined text prompt describing the anomalous event. The LVLM outputs an anomaly score indicating the likelihood of the described event being present in the segment.
> <details>
> <summary>read the caption</summary>
> Figure 2: The architecture of AnyAnomaly
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure3a.png)

> 🔼 The Key Frames Selection Module (KSM) is a crucial component in AnyAnomaly's segment-level approach to video anomaly detection. It efficiently selects four keyframes from a video segment to represent the entire segment for processing.  This selection process utilizes the CLIP model to determine the frames most relevant to the user-defined abnormal event. By selecting representative keyframes, KSM significantly reduces computational cost while maintaining effective anomaly detection.
> <details>
> <summary>read the caption</summary>
> (a) Key frames Selection Module (KSM)
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure3b.png)

> 🔼 The WinCLIP-based Attention (WA) module enhances the object analysis capability of the Large Vision Language Model (LVLM) by emphasizing regions related to the user-provided text in the key frame.  It uses a multi-scale approach, generating embeddings from small, medium, and large-scale windows of the key frame. These embeddings are compared to the text embedding, generating a similarity map that highlights important regions. This similarity map, combined with the key frame, creates the position context (PC) input for the LVLM.
> <details>
> <summary>read the caption</summary>
> (b) WinCLIP-based Attention (WA)
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure3c.png)

> 🔼 This module generates temporal context (TC) for context-aware VQA.  It takes the key frames selected by the Key Frame Selection Module as input. These frames are divided into multiple windows, and windows at the same position are combined into a 2x2 grid to create grid images at different scales (small, medium, and large).  These grid images represent the temporal evolution of the scene across these key frames. Finally, the grid image with the highest similarity to the user-provided text is selected as the temporal context to be fed to the large vision language model.
> <details>
> <summary>read the caption</summary>
> (c) Grid Image Generation (GIG)
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure4.png)

> 🔼 This figure details the architecture of the AnyAnomaly model's core modules.  The Key Frame Selection Module (KSM) is highlighted as fundamental to the model's segment-level processing, which improves efficiency by analyzing groups of frames instead of individual frames.  The figure then illustrates the WinCLIP-based Attention (WA) and Grid Image Generation (GIG) modules. WA refines object analysis by focusing attention on relevant image regions based on textual input. GIG incorporates temporal context by generating grid-based representations from sequences of frames, enhancing the model's understanding of actions and events over time.  The combination of KSM, WA, and GIG enables context-aware visual question answering (VQA), allowing AnyAnomaly to accurately detect anomalies based on user-defined descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 3: Architecture of the proposed modules. KSM is essential for the segment-level approach, and WA and GIG are crucial for context generation.
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure5.png)

> 🔼 This figure shows the detailed prompt engineering used for visual question answering (VQA) in the AnyAnomaly model.  The prompt is broken down into three main sections: Task, Consideration, and Output. The 'Task' section clearly defines the objective of the VQA task, which is to evaluate the presence of a user-specified textual description (e.g., 'bicycle') within a given image on a scale of 0 to 1. The 'Consideration' section provides additional instructions to guide the model towards more accurate results. It emphasizes that the presence of the target object, regardless of its visual prominence or central position within the image, should be considered. Finally, the 'Output' section specifies the desired format of the model's response, requiring a numerical score (rounded to one decimal place) along with a concise textual explanation justifying the score. For temporal context, an additional 'Context' section was added to describe the temporal sequence shown in the images.
> <details>
> <summary>read the caption</summary>
> Figure 4: Proposed prompt for VQA
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure6a.jpg)

> 🔼 Figure 5 illustrates the key difference in data organization between traditional Video Anomaly Detection (VAD) datasets and the proposed Customizable Video Anomaly Detection (C-VAD) datasets.  Traditional VAD datasets contain videos with a mix of normal and abnormal events, without explicitly labeling or categorizing the types of anomalies.  In contrast, C-VAD datasets organize videos into categories based on specific abnormal events (e.g., bicycle, car). Each category contains positive examples (videos showcasing the event) and negative examples (videos without the event). This structured approach allows for more precise evaluation of anomaly detection performance for specific anomaly types and is crucial for the zero-shot learning paradigm.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison between the VAD and C-VAD datasets
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure6b.jpg)

> 🔼 This figure visualizes the performance of the proposed AnyAnomaly model on two example video segments.  The top row shows a segment containing a bicycle, while the bottom row shows a segment with a person jumping. For each segment, it displays the anomaly scores over time (ground truth and prediction) and shows the importance of position context and temporal context in improving the accuracy of anomaly detection.  The visualizations demonstrate how including contextual information enhances AnyAnomaly's ability to correctly identify and classify anomalous events compared to using only the keyframe.
> <details>
> <summary>read the caption</summary>
> Figure 6: Anomaly score comparison and context visualization
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure10.png)

> 🔼 This figure details the design of prompts used for visual question answering (VQA) in the AnyAnomaly model. It shows three prompt variations.  The first, a 'simple version,' just requests an anomaly score. The second adds a 'reasoning' component, requiring a brief explanation along with the score. The third prompt includes a 'consideration' section emphasizing that an object's presence should be given a high score even if it isn't the main focus of the image.  A final version also adds a 'context' element to handle temporal data within a video segment, instructing the model to treat the input as a sequence of frames.
> <details>
> <summary>read the caption</summary>
> Figure S1: Prompt details. The content written in the simple version is not utilized when applying reasoning.
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure8a.png)

> 🔼 This figure demonstrates how position and temporal context contribute to the accuracy of video anomaly detection.  The top example shows a situation where a bicycle is partially visible in a frame. Using only the key frame yields a low anomaly score. However, incorporating position context (PC), which uses attention to highlight the relevant area of the key frame, significantly improves the score, accurately identifying the bicycle. The bottom example shows a person jumping. Again, the key frame alone doesn't fully capture the action. However, using temporal context (TC), which incorporates information across a sequence of frames to better understand the action, provides a much higher and more accurate anomaly score.  This illustrates the complementarity of position and temporal context for effective anomaly detection. 
> <details>
> <summary>read the caption</summary>
> Figure S2: Example of complementarity between position and temporal context. The first example highlights the importance of position context and the second example emphasizes the importance of temporal context.
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure8b.png)

> 🔼 This figure visualizes the anomaly detection scores for a video segment containing three types of anomalous events: jumping, falling, and a person picking something up. The plot displays the anomaly scores over time, with the ground truth labels indicating the presence and type of anomaly. The high scores in the corresponding regions indicate successful anomaly detection.
> <details>
> <summary>read the caption</summary>
> (a) jumping-falling-pickup
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure7a.png)

> 🔼 The figure shows the anomaly detection scores over time for a video segment containing both bicycle and running events. The top graph displays the anomaly scores generated by the model, while the bottom shows the ground truth labels for each frame indicating whether a bicycle or running activity is present.  The visualization helps illustrate the model's ability to detect different types of anomalous events within a single video sequence and highlights the temporal aspects of the detection process.
> <details>
> <summary>read the caption</summary>
> (b) bicycle-running
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure7b.png)

> 🔼 The figure displays the results of anomaly detection for a video segment containing both bicycles and strollers.  The top graph shows the anomaly score over time, with higher scores indicating a higher probability of an anomaly. The bottom row shows key frames from the video segment, illustrating instances where both bicycles and strollers are present, demonstrating the model's ability to distinguish between user-defined anomalies ('bicycle' and 'stroller').
> <details>
> <summary>read the caption</summary>
> (c) bicycle-stroller
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure7c.png)

> 🔼 Figure S3 showcases the AnyAnomaly model's ability to detect various types of anomalies in video sequences.  Each row displays results for a different anomaly type, visually demonstrating how the model's anomaly scores change over time, highlighting the temporal aspect of the detection. The scores are generated using the proposed AnyAnomaly model, showing its effectiveness in detecting diverse anomalies.
> <details>
> <summary>read the caption</summary>
> Figure S3: Anomaly detection in diverse scenarios. Various abnormal events can emerge over time.
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure9a.png)

> 🔼 The figure shows the results of video anomaly detection applied to a scene where the anomaly event is 'jaywalking'.  It visually demonstrates AnyAnomaly's performance by displaying the anomaly score over time (as a graph), the key frame, the position context (PC), and the temporal context (TC).  The position context highlights relevant image regions using a heatmap that is produced by a WinCLIP-based attention module. The temporal context depicts the temporal progression of the jaywalking event, by using a series of key frames in a grid. The text below the visualization provides a qualitative interpretation of the results, including explanations of why specific scores are assigned. This figure helps illustrate how AnyAnomaly, using context-aware Visual Question Answering (VQA), achieves a more accurate and contextual understanding of abnormal events compared to methods that rely only on key frames.
> <details>
> <summary>read the caption</summary>
> (a) Anomaly event: jaywalking
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure9b.png)

> 🔼 The figure visualizes the results of the AnyAnomaly model on a video segment containing the anomaly of a car driving outside its designated lane.  The top part shows the anomaly scores over time, generated by the model. The bottom part displays key frames from the video segment along with the position and temporal context information used by the model for its decision. The text under the image describes the model's reasoning process, indicating a high anomaly score (0.9) due to the observation of the car driving outside its designated lane in multiple frames.
> <details>
> <summary>read the caption</summary>
> (b) Anomaly event: driving outside lane
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure9c.png)

> 🔼 This figure visualizes the results of AnyAnomaly on a video segment depicting a car accident involving people. The top graph displays the anomaly scores generated by the model, highlighting the specific frames where an accident is detected. Below the graph, key frames, position context, and temporal context are shown.  The key frames provide visual snapshots of the accident, while the position and temporal contexts provide additional information which improves the model's ability to detect the abnormal event. The text below summarizes the model's output for the video segment.
> <details>
> <summary>read the caption</summary>
> (c) Anomaly event: people and car accident
> </details>



![](https://arxiv.org/html/2503.04504/extracted/6257000/figure9d.png)

> 🔼 This figure visualizes the results of AnyAnomaly on a video depicting the anomaly event of a person walking while appearing intoxicated.  The top graph shows the anomaly score over time, highlighting the model's detection of the anomalous activity. Below the graph, key frames from the video are displayed, along with visualizations produced by the position context (PC) and temporal context (TC) modules of AnyAnomaly. PC focuses on identifying specific objects of interest within a single frame, while TC analyzes the temporal evolution of events across multiple frames. The text below the image provides a description and reasoning behind AnyAnomaly's score.
> <details>
> <summary>read the caption</summary>
> (d) Anomaly event: walking drunk
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.4.1">
<tr class="ltx_tr" id="S4.T2.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.4.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.2.1">Class</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.3.1">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.4.1">+KSM</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.5.1">+KSM/PC</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.6.1">+KSM/TC</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.7.1">Proposed</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.8.1">Improvement (%)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.1.2">
<td class="ltx_td ltx_align_left ltx_align_middle ltx_border_t" id="S4.T2.4.1.2.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.2.1.1">Action</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.1.2.2">Throwing</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.3">78.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.4">80.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.5"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.2.5.1">89.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.1.2.6.1">82.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.7"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.2.7.1">89.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.8">+14.44</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.1.3">
<td class="ltx_td ltx_align_left" id="S4.T2.4.1.3.1">Running</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.2">75.82</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.1.3.3.1">77.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.1.3.4.1">77.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.5"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.3.5.1">77.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.6"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.3.6.1">77.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.7">+2.74</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.1.4">
<td class="ltx_td ltx_align_left" id="S4.T2.4.1.4.1">Dancing</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.1.4.2.1">85.65</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.3">72.28</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.4">76.64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.5"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.4.5.1">91.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.6"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.4.6.1">91.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.7">+7.32</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.1.5.1"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.5.1.1">Average</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.5.2">79.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.5.3">76.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.5.4">81.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.5.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.1.5.5.1">84.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.5.6"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.5.6.1">86.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.5.7">+8.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.1.6">
<td class="ltx_td ltx_align_left ltx_align_middle ltx_border_t" id="S4.T2.4.1.6.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.6.1.1">Appearance</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.1.6.2">Too close</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.6.3">57.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.6.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.1.6.4.1">61.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.6.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.1.6.5.1">61.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.6.6"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.6.6.1">91.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.6.7"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.6.7.1">91.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.6.8">+60.37</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.1.7">
<td class="ltx_td ltx_align_left" id="S4.T2.4.1.7.1">Bicycle</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.7.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.1.7.2.1">99.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.7.3">99.84</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.7.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.1.7.4.1">99.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.7.5">99.93</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.7.6"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.7.6.1">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.7.7">+0.01</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.1.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.1.8.1"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.8.1.1">Average</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.8.2">78.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.8.3">80.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.8.4">80.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.8.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.1.8.5.1">95.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.8.6"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.8.6.1">95.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.8.7">+21.98</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.1.9" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.4.1.9.1"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.9.1.1" style="background-color:#E6E6FF;">Overall Average</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S4.T2.4.1.9.2"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.4.1.9.3"><span class="ltx_text" id="S4.T2.4.1.9.3.1" style="background-color:#E6E6FF;">79.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.4.1.9.4"><span class="ltx_text" id="S4.T2.4.1.9.4.1" style="background-color:#E6E6FF;">78.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.4.1.9.5"><span class="ltx_text" id="S4.T2.4.1.9.5.1" style="background-color:#E6E6FF;">81.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.4.1.9.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.1.9.6.1" style="background-color:#E6E6FF;">88.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.4.1.9.7"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.9.7.1" style="background-color:#E6E6FF;">90.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.4.1.9.8"><span class="ltx_text" id="S4.T2.4.1.9.8.1" style="background-color:#E6E6FF;">+13.65</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of different methods on the Customizable-Ave (C-Ave) dataset.  It compares the baseline method (frame-level visual question answering) with various enhanced versions that incorporate key frame selection (KSM), position context (PC), and temporal context (TC) for more effective video anomaly detection.  The results are broken down by category (Action and Appearance) and class of anomaly, showing the improvement achieved by each enhancement over the baseline.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison on C-Ave dataset
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.4">
<tr class="ltx_tr" id="S4.T3.4.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.1.1">Segment length</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.2.1">C-ShT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.3.1">C-Ave</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.4.1">FPS</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.1"><span class="ltx_text" id="S4.T3.4.2.1.1" style="background-color:#F2F2F2;">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.2"><span class="ltx_text" id="S4.T3.4.2.2.1" style="background-color:#F2F2F2;">78.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.3"><span class="ltx_text" id="S4.T3.4.2.3.1" style="background-color:#F2F2F2;">79.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.4"><span class="ltx_text" id="S4.T3.4.2.4.1" style="background-color:#F2F2F2;">0.96</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.3.1">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.3.2">83.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.3.3">83.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.3.4">2.67</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4">
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.1">16</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.2">83.45</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.3">87.45</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4">4.49</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.5" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_center" id="S4.T3.4.5.1"><span class="ltx_text" id="S4.T3.4.5.1.1" style="background-color:#E6E6FF;">24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.5.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.5.2.1" style="background-color:#E6E6FF;">85.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.5.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.5.3.1" style="background-color:#E6E6FF;">90.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.5.4"><span class="ltx_text" id="S4.T3.4.5.4.1" style="background-color:#E6E6FF;">6.67</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.6.1">32</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.6.2">82.50</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.6.3">85.94</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.6.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.6.4.1">8.45</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the effect of varying segment lengths on the performance of the AnyAnomaly model.  It shows the micro-averaged Area Under the Receiver Operating Characteristic Curve (micro AUROC) scores for the Customizable ShanghaiTech Campus (C-ShT) and Customizable CUHK Avenue (C-Ave) datasets, along with the frames per second (FPS) achieved for each segment length. The different segment lengths tested were 8, 16, 24, and 32 frames. The baseline uses a single frame.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison on segment length
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.4">
<tr class="ltx_tr" id="S4.T4.4.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.1.1" rowspan="2"><span class="ltx_text" id="S4.T4.4.1.1.1">
<span class="ltx_inline-block" id="S4.T4.4.1.1.1.1">
<span class="ltx_p" id="S4.T4.4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.4.1.1.1.1.1.1">Key</span></span>
<span class="ltx_p" id="S4.T4.4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.4.1.1.1.1.2.1">frames</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.4.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.4.1.2.1">C-ShT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.4.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.4.1.3.1">C-Ave</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.2.1">Act.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.2.2">App.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.2.3">Total</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.2.4">Act.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.2.5">App.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.2.6">Total</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.3" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.3.1"><span class="ltx_text" id="S4.T4.4.3.1.1" style="background-color:#F2F2F2;">RD*</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.3.2"><span class="ltx_text" id="S4.T4.4.3.2.1" style="background-color:#F2F2F2;">69.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.3.3"><span class="ltx_text" id="S4.T4.4.3.3.1" style="background-color:#F2F2F2;">84.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.3.4"><span class="ltx_text" id="S4.T4.4.3.4.1" style="background-color:#F2F2F2;">75.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.3.5"><span class="ltx_text" id="S4.T4.4.3.5.1" style="background-color:#F2F2F2;">66.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.3.6"><span class="ltx_text" id="S4.T4.4.3.6.1" style="background-color:#F2F2F2;">78.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.3.7"><span class="ltx_text" id="S4.T4.4.3.7.1" style="background-color:#F2F2F2;">71.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.1"><span class="ltx_text" id="S4.T4.4.4.1.1" style="background-color:#F2F2F2;">CP*</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.2"><span class="ltx_text" id="S4.T4.4.4.2.1" style="background-color:#F2F2F2;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.3"><span class="ltx_text" id="S4.T4.4.4.3.1" style="background-color:#F2F2F2;">87.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4"><span class="ltx_text" id="S4.T4.4.4.4.1" style="background-color:#F2F2F2;">77.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.5"><span class="ltx_text" id="S4.T4.4.4.5.1" style="background-color:#F2F2F2;">76.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6"><span class="ltx_text" id="S4.T4.4.4.6.1" style="background-color:#F2F2F2;">80.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.7"><span class="ltx_text" id="S4.T4.4.4.7.1" style="background-color:#F2F2F2;">78.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.1">RD</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.2">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.3"><span class="ltx_text ltx_font_bold" id="S4.T4.4.5.3.1">89.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.4">83.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.5">79.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.6">92.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.7">84.4</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.6">
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.1">CP</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.2">81.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.3">88.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.4">84.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.5">84.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.6">81.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.7">83.1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.7">
<td class="ltx_td ltx_align_center" id="S4.T4.4.7.1">Gr. → CP</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.7.2">82.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.7.3">88.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.7.4">84.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.7.5">83.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.7.6">92.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.7.7">87.2</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.8" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.8.1"><span class="ltx_text" id="S4.T4.4.8.1.1" style="background-color:#E6E6FF;">CP → Gr.</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.8.2"><span class="ltx_text ltx_font_bold" id="S4.T4.4.8.2.1" style="background-color:#E6E6FF;">83.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.8.3"><span class="ltx_text" id="S4.T4.4.8.3.1" style="background-color:#E6E6FF;">89.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.8.4"><span class="ltx_text ltx_font_bold" id="S4.T4.4.8.4.1" style="background-color:#E6E6FF;">85.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.8.5"><span class="ltx_text ltx_font_bold" id="S4.T4.4.8.5.1" style="background-color:#E6E6FF;">86.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.8.6"><span class="ltx_text ltx_font_bold" id="S4.T4.4.8.6.1" style="background-color:#E6E6FF;">95.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.8.7"><span class="ltx_text ltx_font_bold" id="S4.T4.4.8.7.1" style="background-color:#E6E6FF;">90.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different key frame selection methods for video anomaly detection.  Three methods are evaluated: Random (RD), CLIP-based (CP), and Grouping (Gr).  The table shows results for both action and appearance classes, with and without contextual information.  The results demonstrate that a combined approach using CLIP-based selection followed by grouping achieves the best performance, particularly when contextual information is included.  Random selection performs poorly, highlighting the importance of selecting keyframes that are both temporally uniform and relevant to the user-defined anomaly.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison on key frames selection method. RD, CP and Gr. indicate random, CLIP and grouping, respectively. * indicates testing without context. Act. and App. indicate action and appearance class, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.4">
<tr class="ltx_tr" id="S4.T5.4.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.1.1" rowspan="2"><span class="ltx_text" id="S4.T5.4.1.1.1">
<span class="ltx_inline-block" id="S4.T5.4.1.1.1.1">
<span class="ltx_p" id="S4.T5.4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.1.1.1.1.1">Window</span></span>
<span class="ltx_p" id="S4.T5.4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.1.1.1.2.1">Size</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T5.4.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.2.1">C-ShT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T5.4.1.3"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.3.1">C-Ave</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.1">Act.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.2">App.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.3">Total</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.4">Act.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.5">App.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.6">Total</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.3.1">small</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.3.2">78.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.3.3"><span class="ltx_text ltx_font_bold" id="S4.T5.4.3.3.1">90.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.3.4">83.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.3.5">84.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.3.6">87.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.3.7">85.7</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4">
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.1">middle</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.2">81.2</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.3">89.0</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.4">84.1</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.5"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.5.1">87.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.6">92.0</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.7">89.3</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.5">
<td class="ltx_td ltx_align_center" id="S4.T5.4.5.1">large</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.5.2">82.1</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.5.3">89.7</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.5.4">84.9</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.5.5">86.8</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.5.6">86.4</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.5.7">86.6</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.6" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.6.1"><span class="ltx_text" id="S4.T5.4.6.1.1" style="background-color:#E6E6FF;">all</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.6.2"><span class="ltx_text ltx_font_bold" id="S4.T5.4.6.2.1" style="background-color:#E6E6FF;">83.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.6.3"><span class="ltx_text" id="S4.T5.4.6.3.1" style="background-color:#E6E6FF;">89.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.6.4"><span class="ltx_text ltx_font_bold" id="S4.T5.4.6.4.1" style="background-color:#E6E6FF;">85.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.6.5"><span class="ltx_text" id="S4.T5.4.6.5.1" style="background-color:#E6E6FF;">86.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.6.6"><span class="ltx_text ltx_font_bold" id="S4.T5.4.6.6.1" style="background-color:#E6E6FF;">95.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.6.7"><span class="ltx_text ltx_font_bold" id="S4.T5.4.6.7.1" style="background-color:#E6E6FF;">90.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the AnyAnomaly model on two C-VAD datasets (C-ShT and C-Ave) using different window sizes for generating position and temporal context. The results show how different window sizes impact the model's ability to detect anomalies related to actions (Act.) and appearance (App.). The 'Total' column represents the overall performance, combining both action and appearance anomaly detection results.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison on window size.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.4.1">
<tr class="ltx_tr" id="S4.T6.4.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.4.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.1.2.1">Venue</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.4.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.1.3.1">Training</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.4.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.1.4.1">Ave</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.4.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.1.5.1">ShT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.4.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.1.6.1">UB</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.2.1">AMMC-Net<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib6" title="">6</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.2.2">AAAI 21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.2.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.2.4">86.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.2.5">73.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.2.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.3">
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.3.1">STEAL-Net<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib5" title="">5</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.3.2">ICCV 21</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.3.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.3.4">87.1</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.3.5">73.7</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.3.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.4">
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.4.1">MPN<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib19" title="">19</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.4.2">CVPR 21</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.4.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.4.4">89.5</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.4.5">73.8</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.4.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.5">
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.5.1">Zhong et al.<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib36" title="">36</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.5.2">PR 22</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.5.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.5.4">88.9</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.5.5">70.7</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.5.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.6">
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.6.1">DLAN-AC<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib32" title="">32</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.6.2">ECCV 22</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.6.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.6.4">89.9</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.6.5">74.7</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.6.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.7">
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.7.1">UBnormal<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib1" title="">1</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.7.2">CVPR 22</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.7.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.7.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.7.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.7.6">68.5</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.8">
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.8.1">FPDM<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib31" title="">31</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.8.2">ICCV 23</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.8.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.8.4">90.1</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.8.5">78.6</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.8.6">62.7</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.9">
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.9.1">SLM<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib28" title="">28</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.9.2">ICCV 23</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.9.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.9.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.4.1.9.4.1">90.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.9.5">78.8</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.9.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.10">
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.10.1">USTN-DSC<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib33" title="">33</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.10.2">CVPR 23</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.10.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.10.4">89.9</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.10.5">73.8</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.10.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.11">
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.11.1">MULDE<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib21" title="">21</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.11.2">CVPR 24</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.11.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.11.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.11.5"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.11.5.1">81.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.11.6">72.8</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.12">
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.12.1">AED-MAE<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib25" title="">25</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.12.2">CVPR 24</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.12.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.12.4"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.12.4.1">91.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.12.5">79.1</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.12.6">58.5</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.13">
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.13.1">MA-PDM<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib37" title="">37</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.13.2">AAAI 25</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.13.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.13.4"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.13.4.1">91.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.13.5">79.2</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.13.6">63.4</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.14">
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.14.1">AccI-VAD<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib24" title="">24</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.14.2">TMLR 25</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.14.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.14.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.14.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.14.6">66.8</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.15" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.15.1"><span class="ltx_text" id="S4.T6.4.1.15.1.1" style="background-color:#E6E6FF;">AnyAnomaly*</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.15.2"><span class="ltx_text" id="S4.T6.4.1.15.2.1" style="background-color:#E6E6FF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.15.3"><span class="ltx_text" id="S4.T6.4.1.15.3.1" style="background-color:#E6E6FF;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.15.4"><span class="ltx_text" id="S4.T6.4.1.15.4.1" style="background-color:#E6E6FF;">81.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.15.5"><span class="ltx_text" id="S4.T6.4.1.15.5.1" style="background-color:#E6E6FF;">77.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.15.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.4.1.15.6.1" style="background-color:#E6E6FF;">73.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.16" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.1.16.1"><span class="ltx_text" id="S4.T6.4.1.16.1.1" style="background-color:#E6E6FF;">AnyAnomaly</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.1.16.2"><span class="ltx_text" id="S4.T6.4.1.16.2.1" style="background-color:#E6E6FF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.1.16.3"><span class="ltx_text" id="S4.T6.4.1.16.3.1" style="background-color:#E6E6FF;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.1.16.4"><span class="ltx_text" id="S4.T6.4.1.16.4.1" style="background-color:#E6E6FF;">87.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.1.16.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.4.1.16.5.1" style="background-color:#E6E6FF;">79.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.1.16.6"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.16.6.1" style="background-color:#E6E6FF;">74.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of the proposed AnyAnomaly model against other state-of-the-art (SOTA) video anomaly detection (VAD) methods on three benchmark datasets: CUHK Avenue, ShanghaiTech Campus, and UBnormal.  The results are presented in terms of Area Under the Receiver Operating Characteristic Curve (AUROC) scores for each dataset.  The table highlights whether each method used cross-domain training, few-shot learning, or auxiliary datasets to improve performance.  A comparison is also shown for the proposed model run both with and without context to illustrate the impact of contextual information. 
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison with state-of-the-art VAD methods. * indicates testing without context.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T7.4">
<tr class="ltx_tr" id="S4.T7.4.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.4.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.4.1.2"><span class="ltx_text ltx_font_bold" id="S4.T7.4.1.2.1">Tr.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.4.1.3"><span class="ltx_text ltx_font_bold" id="S4.T7.4.1.3.1">Few.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.4.1.4"><span class="ltx_text ltx_font_bold" id="S4.T7.4.1.4.1">Aux.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.4.1.5"><span class="ltx_text ltx_font_bold" id="S4.T7.4.1.5.1">Ave</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.4.1.6"><span class="ltx_text ltx_font_bold" id="S4.T7.4.1.6.1">ShT</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.2.1">STEAL-Net<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib5" title="">5</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.2.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.2.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.2.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.2.5">54.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.2.6">51.7</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.3">
<td class="ltx_td ltx_align_center" id="S4.T7.4.3.1">Jigsaw<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib29" title="">29</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.3.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.3.3">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.3.4">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.3.5">62.9</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.3.6">59.3</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.4" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.1"><span class="ltx_text" id="S4.T7.4.4.1.1" style="background-color:#F2F2F2;">rGAN<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib17" title="">17</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.2"><span class="ltx_text" id="S4.T7.4.4.2.1" style="background-color:#F2F2F2;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.3"><span class="ltx_text" id="S4.T7.4.4.3.1" style="background-color:#F2F2F2;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.4"><span class="ltx_text" id="S4.T7.4.4.4.1" style="background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.5"><span class="ltx_text" id="S4.T7.4.4.5.1" style="background-color:#F2F2F2;">76.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.6"><span class="ltx_text" id="S4.T7.4.4.6.1" style="background-color:#F2F2F2;">77.9*</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.5" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center" id="S4.T7.4.5.1"><span class="ltx_text" id="S4.T7.4.5.1.1" style="background-color:#F2F2F2;">MPN<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib19" title="">19</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.5.2"><span class="ltx_text" id="S4.T7.4.5.2.1" style="background-color:#F2F2F2;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.5.3"><span class="ltx_text" id="S4.T7.4.5.3.1" style="background-color:#F2F2F2;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.5.4"><span class="ltx_text" id="S4.T7.4.5.4.1" style="background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.5.5"><span class="ltx_text" id="S4.T7.4.5.5.1" style="background-color:#F2F2F2;">78.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.5.6"><span class="ltx_text" id="S4.T7.4.5.6.1" style="background-color:#F2F2F2;">73.8*</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.6" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center" id="S4.T7.4.6.1"><span class="ltx_text" id="S4.T7.4.6.1.1" style="background-color:#F2F2F2;">zxVAD<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib3" title="">3</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.6.2"><span class="ltx_text" id="S4.T7.4.6.2.1" style="background-color:#F2F2F2;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.6.3"><span class="ltx_text" id="S4.T7.4.6.3.1" style="background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.6.4"><span class="ltx_text" id="S4.T7.4.6.4.1" style="background-color:#F2F2F2;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.6.5"><span class="ltx_text" id="S4.T7.4.6.5.1" style="background-color:#F2F2F2;">82.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.6.6"><span class="ltx_text" id="S4.T7.4.6.6.1" style="background-color:#F2F2F2;">71.6*</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.7" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center" id="S4.T7.4.7.1"><span class="ltx_text" id="S4.T7.4.7.1.1" style="background-color:#F2F2F2;">Shibao et al.<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib8" title="">8</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.7.2"><span class="ltx_text" id="S4.T7.4.7.2.1" style="background-color:#F2F2F2;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.7.3"><span class="ltx_text" id="S4.T7.4.7.3.1" style="background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.7.4"><span class="ltx_text" id="S4.T7.4.7.4.1" style="background-color:#F2F2F2;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.7.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T7.4.7.5.1" style="background-color:#F2F2F2;">86.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.7.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T7.4.7.6.1" style="background-color:#F2F2F2;">78.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.8" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.8.1"><span class="ltx_text" id="S4.T7.4.8.1.1" style="background-color:#E6E6FF;">ZS CLIP<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib22" title="">22</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.8.2"><span class="ltx_text" id="S4.T7.4.8.2.1" style="background-color:#E6E6FF;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.8.3"><span class="ltx_text" id="S4.T7.4.8.3.1" style="background-color:#E6E6FF;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.8.4"><span class="ltx_text" id="S4.T7.4.8.4.1" style="background-color:#E6E6FF;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.8.5"><span class="ltx_text" id="S4.T7.4.8.5.1" style="background-color:#E6E6FF;">62.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.8.6"><span class="ltx_text" id="S4.T7.4.8.6.1" style="background-color:#E6E6FF;">60.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.9" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_center" id="S4.T7.4.9.1"><span class="ltx_text" id="S4.T7.4.9.1.1" style="background-color:#E6E6FF;">ZS ImageBind<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib9" title="">9</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.9.2"><span class="ltx_text" id="S4.T7.4.9.2.1" style="background-color:#E6E6FF;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.9.3"><span class="ltx_text" id="S4.T7.4.9.3.1" style="background-color:#E6E6FF;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.9.4"><span class="ltx_text" id="S4.T7.4.9.4.1" style="background-color:#E6E6FF;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.9.5"><span class="ltx_text" id="S4.T7.4.9.5.1" style="background-color:#E6E6FF;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.9.6"><span class="ltx_text" id="S4.T7.4.9.6.1" style="background-color:#E6E6FF;">61.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.10" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.10.1"><span class="ltx_text" id="S4.T7.4.10.1.1" style="background-color:#E6E6FF;">AnyAnomaly</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.10.2"><span class="ltx_text" id="S4.T7.4.10.2.1" style="background-color:#E6E6FF;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.10.3"><span class="ltx_text" id="S4.T7.4.10.3.1" style="background-color:#E6E6FF;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.10.4"><span class="ltx_text" id="S4.T7.4.10.4.1" style="background-color:#E6E6FF;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.10.5"><span class="ltx_text ltx_font_bold" id="S4.T7.4.10.5.1" style="background-color:#E6E6FF;">87.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.10.6"><span class="ltx_text ltx_font_bold" id="S4.T7.4.10.6.1" style="background-color:#E6E6FF;">79.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the generalization performance of various video anomaly detection (VAD) methods.  It assesses how well models trained on one dataset perform when tested on a different dataset (cross-domain training).  It also categorizes methods based on whether they utilize only a few training samples for adaptation, or if they leverage auxiliary datasets to improve performance.  Because some competing methods did not originally report cross-domain results on the ShanghaiTech Campus (ShT) dataset, their same-domain results are shown instead for a fair comparison.
> <details>
> <summary>read the caption</summary>
> Table 7: Generalization performance comparison. Tr.: cross-domain training where models trained on one VAD dataset are evaluated on another. Few.: methods that adapt to the target domain using only a few training samples, Aux.: methods that utilize auxiliary datasets, *: since competitors did not perform cross-domain evaluations on ShT, we present their same-domain results instead.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T1.6">
<tr class="ltx_tr" id="A1.T1.6.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T1.6.1.1"><span class="ltx_text ltx_font_bold" id="A1.T1.6.1.1.1" style="font-size:144%;">Prompt Tuning</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T1.6.1.2"><span class="ltx_text ltx_font_bold" id="A1.T1.6.1.2.1" style="font-size:144%;">C-ShT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T1.6.1.3"><span class="ltx_text ltx_font_bold" id="A1.T1.6.1.3.1" style="font-size:144%;">C-Ave</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.6.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T1.6.2.1"><span class="ltx_text" id="A1.T1.6.2.1.1" style="font-size:144%;">Baseline (simple)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T1.6.2.2"><span class="ltx_text" id="A1.T1.6.2.2.1" style="font-size:144%;">70.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T1.6.2.3"><span class="ltx_text" id="A1.T1.6.2.3.1" style="font-size:144%;">67.58</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.6.3">
<td class="ltx_td ltx_align_center" id="A1.T1.6.3.1"><span class="ltx_text" id="A1.T1.6.3.1.1" style="font-size:144%;">Baseline (+reasoning)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T1.6.3.2"><span class="ltx_text" id="A1.T1.6.3.2.1" style="font-size:144%;">71.58</span></td>
<td class="ltx_td ltx_align_center" id="A1.T1.6.3.3"><span class="ltx_text" id="A1.T1.6.3.3.1" style="font-size:144%;">72.79</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.6.4" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center" id="A1.T1.6.4.1"><span class="ltx_text" id="A1.T1.6.4.1.1" style="font-size:144%;background-color:#F2F2F2;">Baseline (+reasoning, consideration)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T1.6.4.2"><span class="ltx_text" id="A1.T1.6.4.2.1" style="font-size:144%;background-color:#F2F2F2;">78.01</span></td>
<td class="ltx_td ltx_align_center" id="A1.T1.6.4.3"><span class="ltx_text" id="A1.T1.6.4.3.1" style="font-size:144%;background-color:#F2F2F2;">79.43</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.6.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T1.6.5.1"><span class="ltx_text" id="A1.T1.6.5.1.1" style="font-size:144%;">Proposed (simple)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T1.6.5.2"><span class="ltx_text" id="A1.T1.6.5.2.1" style="font-size:144%;">79.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T1.6.5.3"><span class="ltx_text" id="A1.T1.6.5.3.1" style="font-size:144%;">74.01</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.6.6">
<td class="ltx_td ltx_align_center" id="A1.T1.6.6.1"><span class="ltx_text" id="A1.T1.6.6.1.1" style="font-size:144%;">Proposed (+reasoning)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T1.6.6.2"><span class="ltx_text" id="A1.T1.6.6.2.1" style="font-size:144%;">79.79</span></td>
<td class="ltx_td ltx_align_center" id="A1.T1.6.6.3"><span class="ltx_text" id="A1.T1.6.6.3.1" style="font-size:144%;">82.09</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.6.7" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T1.6.7.1"><span class="ltx_text" id="A1.T1.6.7.1.1" style="font-size:144%;background-color:#E6E6FF;">Proposed (+reasoning, consideration)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T1.6.7.2"><span class="ltx_text ltx_font_bold" id="A1.T1.6.7.2.1" style="font-size:144%;background-color:#E6E6FF;">85.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T1.6.7.3"><span class="ltx_text ltx_font_bold" id="A1.T1.6.7.3.1" style="font-size:144%;background-color:#E6E6FF;">90.27</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance achieved using different prompt designs within the AnyAnomaly model.  The prompts are categorized by complexity: simple, simple plus reasoning, and fully detailed (with reasoning and consideration).  The results are shown for two C-VAD datasets, C-ShT and C-Ave, demonstrating how the inclusion of reasoning and consideration elements in the prompt affects the model's accuracy.
> <details>
> <summary>read the caption</summary>
> Table S1: Comparison on prompt tuning
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T2.6">
<tr class="ltx_tr" id="A1.T2.6.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.6.1.1" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T2.6.1.1.1" style="font-size:144%;">Dataset</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T2.6.1.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T2.6.1.2.1" style="font-size:144%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.6.1.3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T2.6.1.3.1" style="font-size:144%;">Value</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.6.1.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T2.6.1.4.1" style="font-size:144%;">AUC</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.6.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.6.2.1" rowspan="3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.2.1.1" style="font-size:144%;">Ave</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T2.6.2.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.2.2.1" style="font-size:144%;">w/o context</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.6.2.3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.2.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.6.2.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.2.4.1" style="font-size:144%;">81.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.6.3">
<td class="ltx_td ltx_align_left" id="A1.T2.6.3.1" style="background-color:#F2F2F2;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.3.1.1" style="font-size:144%;background-color:#F2F2F2;">w/o tuning</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.3.2" style="background-color:#F2F2F2;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.3.2.1" style="font-size:144%;background-color:#F2F2F2;">1.0, 1.0, 1.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.3.3" style="background-color:#F2F2F2;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.3.3.1" style="font-size:144%;background-color:#F2F2F2;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T2.6.3.3.1.1">84.4</span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.6.4">
<td class="ltx_td ltx_align_left" id="A1.T2.6.4.1" style="background-color:#E6E6FF;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.4.1.1" style="font-size:144%;background-color:#E6E6FF;">w/ tuning</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.4.2" style="background-color:#E6E6FF;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.4.2.1" style="font-size:144%;background-color:#E6E6FF;">0.6, 0.3, 0.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.4.3" style="background-color:#E6E6FF;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.4.3.1" style="font-size:144%;background-color:#E6E6FF;"><span class="ltx_text ltx_font_bold" id="A1.T2.6.4.3.1.1" style="background-color:#E6E6FF;">87.3</span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.6.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.6.5.1" rowspan="3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.5.1.1" style="font-size:144%;">ShT</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T2.6.5.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.5.2.1" style="font-size:144%;">w/o context</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.6.5.3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.5.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.6.5.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.5.4.1" style="font-size:144%;">77.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.6.6">
<td class="ltx_td ltx_align_left" id="A1.T2.6.6.1" style="background-color:#F2F2F2;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.6.1.1" style="font-size:144%;background-color:#F2F2F2;">w/o tuning</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.6.2" style="background-color:#F2F2F2;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.6.2.1" style="font-size:144%;background-color:#F2F2F2;">1.0, 1.0, 1.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.6.3" style="background-color:#F2F2F2;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.6.3.1" style="font-size:144%;background-color:#F2F2F2;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T2.6.6.3.1.1">79.4</span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.6.7">
<td class="ltx_td ltx_align_left" id="A1.T2.6.7.1" style="background-color:#E6E6FF;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.7.1.1" style="font-size:144%;background-color:#E6E6FF;">w/ tuning</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.7.2" style="background-color:#E6E6FF;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.7.2.1" style="font-size:144%;background-color:#E6E6FF;">0.5, 0.3, 0.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.7.3" style="background-color:#E6E6FF;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.7.3.1" style="font-size:144%;background-color:#E6E6FF;"><span class="ltx_text ltx_font_bold" id="A1.T2.6.7.3.1.1" style="background-color:#E6E6FF;">79.7</span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.6.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T2.6.8.1" rowspan="3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.8.1.1" style="font-size:144%;">UB</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T2.6.8.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.8.2.1" style="font-size:144%;">w/o context</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.6.8.3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.8.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.6.8.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.8.4.1" style="font-size:144%;">73.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.6.9">
<td class="ltx_td ltx_align_left" id="A1.T2.6.9.1" style="background-color:#F2F2F2;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.9.1.1" style="font-size:144%;background-color:#F2F2F2;">w/o tuning</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.9.2" style="background-color:#F2F2F2;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.9.2.1" style="font-size:144%;background-color:#F2F2F2;">1.0, 1.0, 1.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.9.3" style="background-color:#F2F2F2;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.9.3.1" style="font-size:144%;background-color:#F2F2F2;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T2.6.9.3.1.1">73.8</span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.6.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T2.6.10.1" style="background-color:#E6E6FF;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.10.1.1" style="font-size:144%;background-color:#E6E6FF;">w/ tuning</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.6.10.2" style="background-color:#E6E6FF;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.10.2.1" style="font-size:144%;background-color:#E6E6FF;">0.6, 0.1, 0.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.6.10.3" style="background-color:#E6E6FF;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A1.T2.6.10.3.1" style="font-size:144%;background-color:#E6E6FF;"><span class="ltx_text ltx_font_bold" id="A1.T2.6.10.3.1.1" style="background-color:#E6E6FF;">74.5</span></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different anomaly detection methods applied to various datasets (Ave, ShT, UB).  It shows the Area Under the Receiver Operating Characteristic curve (AUC) scores achieved by each method under different conditions.  Specifically, it compares results with and without the use of contextual information and with and without hyperparameter tuning. This allows for an assessment of the impact of contextual data and optimized parameter settings on the overall performance of each model.
> <details>
> <summary>read the caption</summary>
> Table S2: Comparison of different methods on various datasets
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T3.6">
<tr class="ltx_tr" id="A4.T3.6.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T3.6.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A4.T3.6.1.1.1" style="font-size:144%;">LVLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T3.6.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="A4.T3.6.1.2.1" style="font-size:144%;">Pre-trained</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T3.6.1.3"><span class="ltx_text ltx_font_bold" id="A4.T3.6.1.3.1" style="font-size:144%;">C-ShT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T3.6.1.4"><span class="ltx_text ltx_font_bold" id="A4.T3.6.1.4.1" style="font-size:144%;">C-Ave</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T3.6.1.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="A4.T3.6.1.5.1" style="font-size:144%;">FPS</span></td>
</tr>
<tr class="ltx_tr" id="A4.T3.6.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.6.2.1"><span class="ltx_text" id="A4.T3.6.2.1.1" style="font-size:144%;">w/o context</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.6.2.2"><span class="ltx_text" id="A4.T3.6.2.2.1" style="font-size:144%;">Proposed</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.6.2.3"><span class="ltx_text" id="A4.T3.6.2.3.1" style="font-size:144%;">w/o context</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.6.2.4"><span class="ltx_text" id="A4.T3.6.2.4.1" style="font-size:144%;">Proposed</span></td>
</tr>
<tr class="ltx_tr" id="A4.T3.6.3" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.6.3.1"><span class="ltx_text" id="A4.T3.6.3.1.1" style="font-size:144%;background-color:#E6E6FF;">Chat-UniVi<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib13" title="">13</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.6.3.2"><span class="ltx_text" id="A4.T3.6.3.2.1" style="font-size:144%;background-color:#E6E6FF;">Chat-UniVi-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.6.3.3"><span class="ltx_text" id="A4.T3.6.3.3.1" style="font-size:144%;background-color:#E6E6FF;">77.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.6.3.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T3.6.3.4.1" style="font-size:144%;background-color:#E6E6FF;">85.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.6.3.5"><span class="ltx_text" id="A4.T3.6.3.5.1" style="font-size:144%;background-color:#E6E6FF;">78.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.6.3.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T3.6.3.6.1" style="font-size:144%;background-color:#E6E6FF;">90.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.6.3.7"><span class="ltx_text" id="A4.T3.6.3.7.1" style="font-size:144%;background-color:#E6E6FF;">6.67</span></td>
</tr>
<tr class="ltx_tr" id="A4.T3.6.4">
<td class="ltx_td ltx_align_center" id="A4.T3.6.4.1">
<span class="ltx_text" id="A4.T3.6.4.1.1" style="font-size:144%;">MiniGPT-4</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T3.6.4.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib38" title="">38</a><span class="ltx_text" id="A4.T3.6.4.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A4.T3.6.4.2"><span class="ltx_text" id="A4.T3.6.4.2.1" style="font-size:144%;">LLaMA-2 Chat 7B</span></td>
<td class="ltx_td ltx_align_center" id="A4.T3.6.4.3"><span class="ltx_text" id="A4.T3.6.4.3.1" style="font-size:144%;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T3.6.4.4"><span class="ltx_text" id="A4.T3.6.4.4.1" style="font-size:144%;">67.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T3.6.4.5"><span class="ltx_text" id="A4.T3.6.4.5.1" style="font-size:144%;">53.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T3.6.4.6"><span class="ltx_text" id="A4.T3.6.4.6.1" style="font-size:144%;">55.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T3.6.4.7"><span class="ltx_text" id="A4.T3.6.4.7.1" style="font-size:144%;">1.26</span></td>
</tr>
<tr class="ltx_tr" id="A4.T3.6.5" style="background-color:#F2E6F2;">
<td class="ltx_td ltx_align_center" id="A4.T3.6.5.1"><span class="ltx_text" id="A4.T3.6.5.1.1" style="font-size:144%;background-color:#F2E6F2;">MiniCPM-V<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib34" title="">34</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="A4.T3.6.5.2"><span class="ltx_text" id="A4.T3.6.5.2.1" style="font-size:144%;background-color:#F2E6F2;">MiniCPM-Llama3-V-2_5 (8B)</span></td>
<td class="ltx_td ltx_align_center" id="A4.T3.6.5.3"><span class="ltx_text" id="A4.T3.6.5.3.1" style="font-size:144%;background-color:#F2E6F2;">87.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T3.6.5.4"><span class="ltx_text ltx_font_bold" id="A4.T3.6.5.4.1" style="font-size:144%;background-color:#F2E6F2;">90.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T3.6.5.5"><span class="ltx_text" id="A4.T3.6.5.5.1" style="font-size:144%;background-color:#F2E6F2;">86.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T3.6.5.6"><span class="ltx_text ltx_font_bold" id="A4.T3.6.5.6.1" style="font-size:144%;background-color:#F2E6F2;">91.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T3.6.5.7"><span class="ltx_text" id="A4.T3.6.5.7.1" style="font-size:144%;background-color:#F2E6F2;">1.36</span></td>
</tr>
<tr class="ltx_tr" id="A4.T3.6.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.6.6.1">
<span class="ltx_text" id="A4.T3.6.6.1.1" style="font-size:144%;">LLAVA++</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T3.6.6.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.04504v1#bib.bib23" title="">23</a><span class="ltx_text" id="A4.T3.6.6.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.6.6.2"><span class="ltx_text" id="A4.T3.6.6.2.1" style="font-size:144%;">LLaVA-Meta-Llama-3-8B-Instruct-FT</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.6.6.3"><span class="ltx_text" id="A4.T3.6.6.3.1" style="font-size:144%;">73.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.6.6.4"><span class="ltx_text" id="A4.T3.6.6.4.1" style="font-size:144%;">82.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.6.6.5"><span class="ltx_text" id="A4.T3.6.6.5.1" style="font-size:144%;">59.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.6.6.6"><span class="ltx_text" id="A4.T3.6.6.6.1" style="font-size:144%;">69.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.6.6.7"><span class="ltx_text" id="A4.T3.6.6.7.1" style="font-size:144%;">7.25</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different Large Vision Language Models (LVLMs) on the Customizable Video Anomaly Detection (C-VAD) task.  The models are evaluated using two datasets (C-ShT and C-Ave), measuring their Area Under the Curve (AUC) scores with and without contextual information. The table highlights the most efficient model (blue) based on Frames Per Second (FPS) and the most effective model (purple) based on overall AUC score.  It provides a quantitative comparison of various LVLMs' suitability for C-VAD, allowing readers to assess trade-offs between efficiency and accuracy.
> <details>
> <summary>read the caption</summary>
> Table S3: Comparison of diverse LVLMs. The model highlighted in blue represents the most efficient model for the C-VAD task, while the one highlighted in purple indicates the most effective model.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.04504/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04504/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04504/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04504/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04504/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04504/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04504/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04504/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04504/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04504/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04504/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04504/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04504/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04504/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04504/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}