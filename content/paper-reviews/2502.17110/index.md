---
title: "Mobile-Agent-V: Learning Mobile Device Operation Through Video-Guided Multi-Agent Collaboration"
summary: "Mobile-Agent-V: Automating mobile tasks using video guidance for efficient, scalable operation, outperforming existing frameworks by 30%."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Beijing Jiaotong University",]
showSummary: true
date: 2025-02-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.17110 {{< /keyword >}}
{{< keyword icon="writer" >}} Junyang Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.17110" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.17110" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.17110/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current AI-driven frameworks struggle with insufficient operational knowledge for mobile device automation. Manually written knowledge is labor-intensive and inefficient. To address this, a new framework is needed for seamlessly automating tasks. By improving knowledge acquisition, the researchers hope to enhance how devices respond to their owners. 



To tackle these issues, Mobile-Agent-V is introduced, a framework leveraging video guidance for rich and cost-effective operational knowledge. It enhances task execution by using video inputs without specialized sampling or preprocessing. A sliding window strategy and agents ensure actions align with user instructions. Mobile-Agent-V demonstrates a 30% performance improvement over existing methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Video guidance offers a scalable and cost-effective approach to operational knowledge injection for mobile automation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The sliding window mechanism and video agent efficiently process video inputs and adapt to device states. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The deep-reflection agent enhances decision accuracy by refining actions and mitigating inconsistencies. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **addresses the critical need for improved mobile device automation**. The innovative video-guided approach offers a more scalable and adaptable solution to operational knowledge acquisition, impacting areas like accessibility, productivity, and human-computer interaction.

------
#### Visual Insights



![](https://arxiv.org/html/2502.17110/extracted/6219047/intro.png)

> 🔼 This figure compares three approaches to mobile device automation: a baseline agent without operational knowledge, a manually-written knowledge base, and the proposed Mobile-Agent-V.  The baseline agent fails to complete the task, requiring many steps. Manually creating a knowledge base is time-consuming and requires repeated testing.  Mobile-Agent-V, in contrast, uses video demonstrations for knowledge injection, making the process significantly more efficient. Users simply record a video of the task, and the system learns from it, reducing effort and increasing efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison between a baseline agent, manually written knowledge, and Mobile-Agent-V. The baseline agent, lacking operation knowledge, struggles to complete the task, requiring excessive steps and still failing. Manually written knowledge requires documentation and iterative verification. In contrast, Mobile-Agent-V leverages operation videos, requiring only execution and recording, making knowledge injection far more efficient.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt ltx_border_t" id="S4.T1.1.1.2.1.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_t" colspan="4" id="S4.T1.1.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.1.2.1">Basic Instruction</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_t" colspan="4" id="S4.T1.1.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.1.3.1">Normal Instruction</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_t" colspan="4" id="S4.T1.1.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.1.4.1">Advanced Instruction</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.2.1.1">SR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.2.2.1">CR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.2.3.1">DA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.2.4.1">Step</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.2.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.2.5.1">SR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.2.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.2.6.1">CR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.2.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.2.7.1">DA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.2.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.2.8.1">Step</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.2.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.2.9.1">SR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.2.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.2.10.1">CR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.2.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.2.11.1">DA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.2.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.2.12.1">Step</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">AppAgent</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;">85.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;">78.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.5" style="padding-top:1pt;padding-bottom:1pt;">5.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.6" style="padding-top:1pt;padding-bottom:1pt;">50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.7" style="padding-top:1pt;padding-bottom:1pt;">70.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.8" style="padding-top:1pt;padding-bottom:1pt;">50.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.9" style="padding-top:1pt;padding-bottom:1pt;">12.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.10" style="padding-top:1pt;padding-bottom:1pt;">10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.11" style="padding-top:1pt;padding-bottom:1pt;">40.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.12" style="padding-top:1pt;padding-bottom:1pt;">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.13" style="padding-top:1pt;padding-bottom:1pt;">19.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">Mobile-Agent-v1</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;">86.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;">79.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.5" style="padding-top:1pt;padding-bottom:1pt;">5.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.6" style="padding-top:1pt;padding-bottom:1pt;">40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.7" style="padding-top:1pt;padding-bottom:1pt;">72.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.8" style="padding-top:1pt;padding-bottom:1pt;">48.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.9" style="padding-top:1pt;padding-bottom:1pt;">11.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.10" style="padding-top:1pt;padding-bottom:1pt;">10</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.11" style="padding-top:1pt;padding-bottom:1pt;">43.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.12" style="padding-top:1pt;padding-bottom:1pt;">27.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.13" style="padding-top:1pt;padding-bottom:1pt;">19.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">Mobile-Agent-v2</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">90</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;">90.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;">84.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.5" style="padding-top:1pt;padding-bottom:1pt;">5.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.6" style="padding-top:1pt;padding-bottom:1pt;">60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.7" style="padding-top:1pt;padding-bottom:1pt;">76.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.8" style="padding-top:1pt;padding-bottom:1pt;">54.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.9" style="padding-top:1pt;padding-bottom:1pt;">10.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.10" style="padding-top:1pt;padding-bottom:1pt;">20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.11" style="padding-top:1pt;padding-bottom:1pt;">49.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.12" style="padding-top:1pt;padding-bottom:1pt;">31.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.13" style="padding-top:1pt;padding-bottom:1pt;">18.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.1.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">Mobile-Agent-V</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.6.2.1">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.6.3.1">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;">97.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.6.5.1">4.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.6" style="padding-top:1pt;padding-bottom:1pt;">90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.7" style="padding-top:1pt;padding-bottom:1pt;">93.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.8" style="padding-top:1pt;padding-bottom:1pt;">80.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.9" style="padding-top:1pt;padding-bottom:1pt;">6.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.6.10.1">70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.6.11.1">86.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.6.12.1">60.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.13" style="padding-top:1pt;padding-bottom:1pt;">10.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mi id="S4.T1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S4.T1.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.1.2.1" style="color:#0000FF;">+10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.1.3.1" style="color:#0000FF;">+10.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.1.4.1" style="color:#0000FF;">+13.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.1.5.1" style="color:#0000FF;">-0.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.1.6.1" style="color:#0000FF;">+30</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.1.7.1" style="color:#0000FF;">+17.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.1.8.1" style="color:#0000FF;">+25.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.1.9.1" style="color:#0000FF;">-3.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.1.10.1" style="color:#0000FF;">+50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.1.11.1" style="color:#0000FF;">+37.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.1.12.1" style="color:#0000FF;">+18.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.1.13.1" style="color:#0000FF;">-7.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8.7" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S4.T1.1.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.8.7.1.1" style="background-color:#ECECEC;">Human-Know.</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="S4.T1.1.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.7.2.1" style="background-color:#ECECEC;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="S4.T1.1.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.7.3.1" style="background-color:#ECECEC;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="S4.T1.1.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.7.4.1" style="background-color:#ECECEC;">98.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="S4.T1.1.1.8.7.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.7.5.1" style="background-color:#ECECEC;">4.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="S4.T1.1.1.8.7.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.7.6.1" style="background-color:#ECECEC;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="S4.T1.1.1.8.7.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.7.7.1" style="background-color:#ECECEC;">95.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="S4.T1.1.1.8.7.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.7.8.1" style="background-color:#ECECEC;">83.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="S4.T1.1.1.8.7.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.7.9.1" style="background-color:#ECECEC;">6.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="S4.T1.1.1.8.7.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.7.10.1" style="background-color:#ECECEC;">70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="S4.T1.1.1.8.7.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.8.7.11.1" style="background-color:#ECECEC;">82.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="S4.T1.1.1.8.7.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.8.7.12.1" style="background-color:#ECECEC;">58.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="S4.T1.1.1.8.7.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.7.13.1" style="background-color:#ECECEC;">10.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of Mobile-Agent-V's performance against several baseline methods across various task complexities.  The tasks are categorized into three difficulty levels: Basic, Normal, and Advanced, reflecting increasing levels of operational knowledge required.  For each level, the table displays the Success Rate (SR), Completion Rate (CR), Decision Accuracy (DA), and average number of Steps taken. A final row shows the performance of a human expert who has access to the operational knowledge, serving as an upper bound for performance comparison.  The results highlight Mobile-Agent-V's superior performance across all levels, showcasing its ability to leverage video guidance effectively for mobile automation.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation results across different instructions, where Human-Know. denotes human-curated knowledge.
> </details>





### In-depth insights


#### Video-Guided AI
**Video-guided AI** represents a significant paradigm shift, leveraging visual data for enhanced learning and task execution. Unlike traditional methods relying on pre-programmed rules or extensive text-based training data, this approach utilizes videos to impart operational knowledge. This offers several advantages, including reducing the need for manual annotation, capturing nuanced interactions, and adapting to dynamic environments. By observing demonstrations, AI agents can learn complex procedures and improve decision-making, mirroring human learning processes. **Scalability and adaptability** are also key benefits, enabling the development of robust systems capable of handling diverse tasks and adapting to new situations. However, challenges remain in processing and understanding video data effectively, requiring innovative techniques for feature extraction, knowledge representation, and reasoning. Further research is needed to optimize video-guided AI systems and unlock their full potential.

#### Multi-Agent Auto
**Multi-agent automation** represents a paradigm shift, enabling sophisticated task orchestration through collaborative AI. Unlike single-agent systems, **multiple agents** can concurrently address diverse sub-problems, improving efficiency and robustness. This approach allows for **specialization**, where each agent excels in a specific area (e.g., perception, planning, execution). Key challenges involve agent communication, conflict resolution, and maintaining overall system coherence. Successful implementation necessitates a well-defined architecture that supports effective agent interaction and resource allocation to prevent bottlenecking of the system and to maximize output capabilities.

#### Sliding Keyframes
The research addresses challenges in mobile device automation by proposing a novel sliding window approach for **processing operational videos**. This technique aims to improve video comprehension for MLLMs by reducing input length and focusing on **keyframes relevant to the current operation**. The sliding window dynamically adjusts, selecting keyframes between start and end points to predict state transitions. The window size is typically greater than two to provide context. Overall, it balances the need for detailed visual information with the constraints of MLLM input sizes, to derive valuable insights.

#### Operational Learn
The paper introduces a innovative method for mobile automation using video guidance. By leveraging video inputs, the system aims to enhance task execution capabilities without requiring specialized sampling or pre-processing, addressing limitations of existing AI frameworks that often struggle due to insufficient operational knowledge. **The core innovation lies in the Mobile-Agent-V framework, which integrates a sliding window strategy alongside video and deep-reflection agents**. This ensures actions align with user instructions, enabling autonomous learning and efficient task execution from guided recordings. Experimental results demonstrate a 30% performance improvement, highlighting the effectiveness of video-based operational knowledge injection, offering a pathway for scalable agent learning.

#### Task Generalize
**Mobile-Agent-V** demonstrates a valuable capacity for task generalization. The system still manages to complete tasks reasonably well, highlighting its ability to **extend operational knowledge beyond direct instruction mapping.** The value of diverse video demonstrations to **enhance cross-instruction generalization** is highlighted by those insights. The results show that baseline methods, despite their performance on Basic Instructions, suffer from **lower decision accuracy** that leads to redundant actions. In contrast, **Mobile-Agent-V's precise decision-making streamlines task execution**, particularly for complex operations.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.17110/extracted/6219047/framework.png)

> 🔼 The figure illustrates the workflow of Mobile-Agent-V, a framework designed for mobile device automation using video guidance.  It shows how video input (V) is processed through uniform sampling and redundancy removal to create keyframes (F'). A sliding window (Vw) selects a subset of keyframes for the decision agent (Da), which generates actions (Oi) based on the window, video instructions (Iv), device state (Di), user instructions (Iu), and historical operations.  The deep-reflection agent (Ra) refines these actions (ROi), which are then executed on the device, updating its state (Di+1). Finally, the video agent (Va) determines the next window's starting point (Si+1), dynamically adjusting the observation scope as the task progresses.
> <details>
> <summary>read the caption</summary>
> Figure 2: The framework of Mobile-Agent-V.
> </details>



![](https://arxiv.org/html/2502.17110/extracted/6219047/CD.png)

> 🔼 This figure compares the performance of Mobile-Agent-V on two types of instructions: video-aligned and video-misaligned.  Video-aligned instructions refer to scenarios where the instructions given to the user and the demonstrated actions in the video are consistent (in-domain).  Video-misaligned instructions, conversely, represent cases where the instructions and the video demonstration are inconsistent (cross-domain). The figure shows how well Mobile-Agent-V generalizes beyond exact video matches to instructions.  It displays success rate (SR), completion rate (CR), decision accuracy (DA), and step count for basic, normal, and advanced instructions under both aligned and misaligned conditions.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of video-misaligned instructions and video-aligned instructions. The in-domain means that the video instruction is consistent with the user instruction, and the cross-domain instruction is inconsistent.
> </details>



![](https://arxiv.org/html/2502.17110/extracted/6219047/window.png)

> 🔼 This figure shows the effect of different sliding window sizes on the performance of Mobile-Agent-V.  The x-axis represents different window sizes, and the y-axis represents the performance metrics including success rate (SR), completion rate (CR), decision accuracy (DA), and step count (Step) for three different instruction types (Basic, Normal, and Advanced). The results indicate that larger window sizes generally improve performance, but beyond a certain point, adding more frames to the window starts to negatively affect the model's performance, highlighting the importance of balancing temporal context in the model.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of different sliding window sizes.
> </details>



![](https://arxiv.org/html/2502.17110/extracted/6219047/keyframe.png)

> 🔼 This figure compares the performance of Mobile-Agent-V using different keyframe extraction methods.  It contrasts the results of using manually selected high-quality keyframes against the automatically generated keyframes produced by the model's uniform sampling and filtering technique.  The goal is to illustrate the impact of keyframe quality on the model's performance, specifically in terms of Success Rate (SR), Completion Rate (CR), Decision Accuracy (DA), and the number of Steps taken to complete a task.  The manual selection method serves as an upper bound of performance.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of different keyframe quality.
> </details>



![](https://arxiv.org/html/2502.17110/extracted/6219047/DR.png)

> 🔼 This figure compares the performance of Mobile-Agent-V with and without the deep-reflection (DR) agent across different instruction difficulty levels (Basic, Normal, Advanced).  It displays the success rate (SR), completion rate (CR), decision accuracy (DA), and step count for each condition and difficulty level, illustrating the impact of the DR agent on the overall performance of the model.  The bars visually represent the quantitative differences in these metrics between the two versions of the model.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison of w/o DR and w/ DR across different instructions.
> </details>



![](https://arxiv.org/html/2502.17110/extracted/6219047/case.jpg)

> 🔼 This figure illustrates a scenario where the decision agent in Mobile-Agent-V initially makes an incorrect action. However, the deep-reflection agent intervenes by verifying the actions against the video instructions and the current device state.  The deep-reflection agent identifies the discrepancy and provides the corrected action. The video agent also dynamically adjusts the sliding window, updating the context for the decision-making process. This example demonstrates the collaborative functionality of Mobile-Agent-V's multi-agent architecture in ensuring accurate and efficient task completion.
> <details>
> <summary>read the caption</summary>
> Figure 7: A complete execution case of Mobile-Agent-V. The decision agent initially makes an incorrect action, but the deep-reflection agent verifies the operation video, compares the device state, and corrects the action.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt ltx_border_t" id="A1.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.1.1.1">Action</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt ltx_border_t" id="A1.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.1.2.1">Parameter</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt ltx_border_t" id="A1.T2.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.1.1.3.1">
<span class="ltx_p" id="A1.T2.1.1.1.3.1.1" style="width:313.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.1.3.1.1.1">Description</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T2.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt ltx_border_t" id="A1.T2.1.2.1.1">Click</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt ltx_border_t" id="A1.T2.1.2.1.2">id</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt ltx_border_t" id="A1.T2.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.2.1.3.1">
<span class="ltx_p" id="A1.T2.1.2.1.3.1.1" style="width:313.0pt;">The "id" represents the numeric identifier of the detection box to be clicked.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.3.2.1">Click_text</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.3.2.2">text</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T2.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.3.2.3.1">
<span class="ltx_p" id="A1.T2.1.3.2.3.1.1" style="width:313.0pt;">The "text" specifies the target text to be clicked, used only when no detection box or corresponding ID exists at the target location.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.4.3.1">Scroll</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.4.3.2">direction</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T2.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.4.3.3.1">
<span class="ltx_p" id="A1.T2.1.4.3.3.1.1" style="width:313.0pt;">The "direction" can be either "up" or "down," allowing the agent to scroll the screen accordingly.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.5.4.1">Type</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.5.4.2">text</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T2.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.5.4.3.1">
<span class="ltx_p" id="A1.T2.1.5.4.3.1.1" style="width:313.0pt;">The "text" parameter defines the content to be entered into a text field.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.6.5.1">Back</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.6.5.2">None</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T2.1.6.5.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.6.5.3.1">
<span class="ltx_p" id="A1.T2.1.6.5.3.1.1" style="width:313.0pt;">Returns to the previous screen.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.7.6.1">Home</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.7.6.2">None</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T2.1.7.6.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.7.6.3.1">
<span class="ltx_p" id="A1.T2.1.7.6.3.1.1" style="width:313.0pt;">Navigates to the home screen.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="A1.T2.1.8.7.1">Done</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="A1.T2.1.8.7.2">None</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_b ltx_border_t" id="A1.T2.1.8.7.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.8.7.3.1">
<span class="ltx_p" id="A1.T2.1.8.7.3.1.1" style="width:313.0pt;">Signals task completion.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the six fundamental actions Mobile-Agent-V uses to interact with mobile devices. Each action has a parameter that refines the action's effect.  For example, the 'Click' action uses an 'id' parameter which specifies the numeric identifier of the target on-screen element.  'Click_text' provides an alternative way to click using text instead of an ID.  'Scroll' has a direction parameter ('up' or 'down'). 'Type' takes a text parameter to input text, while 'Back' and 'Home' navigate back and to the home screen, respectively. Finally, 'Done' signals the task's completion.
> <details>
> <summary>read the caption</summary>
> Table 2: Action space definition for Mobile-Agent-V.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt ltx_border_t" id="A1.T3.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.1.1">Knowledge Injection Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt ltx_border_t" id="A1.T3.1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.2.1">Average Time</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T3.1.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">Video Recording</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">&lt;1 min</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_b ltx_border_r" id="A1.T3.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">Manually Writing Knowledge</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="A1.T3.1.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">~5 min</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the time required for two different methods of knowledge injection: video recording and manual knowledge writing. It shows that creating a video of a task takes significantly less time (less than 1 minute on average) compared to manually documenting the same task (approximately 5 minutes on average). This highlights a key advantage of using video guidance for Mobile-Agent-V, as it offers greater efficiency in acquiring operational knowledge.
> <details>
> <summary>read the caption</summary>
> Table 3: Time consumption for video recording and manual documentation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt ltx_border_t" id="A1.T4.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">APP</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt ltx_border_t" id="A1.T4.1.1.1.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.2.1">Level</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt ltx_border_t" id="A1.T4.1.1.1.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.1.1.3.1">
<span class="ltx_p" id="A1.T4.1.1.1.1.3.1.1" style="width:199.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.3.1.1.1">Video Instruction &amp; Video-Aligned User Instruction</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt ltx_border_t" id="A1.T4.1.1.1.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.1.1.4.1">
<span class="ltx_p" id="A1.T4.1.1.1.1.4.1.1" style="width:199.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.4.1.1.1">Video-Misaligned User Instruction</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.2.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Phone</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.2.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Basic</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T4.1.1.2.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.2.1.3.1">
<span class="ltx_p" id="A1.T4.1.1.2.1.3.1.1" style="width:199.2pt;">Help me dial 123.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T4.1.1.2.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.2.1.4.1">
<span class="ltx_p" id="A1.T4.1.1.2.1.4.1.1" style="width:199.2pt;">Help me dial 321.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.3.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.3.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.3.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Normal</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.3.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.3.2.3.1">
<span class="ltx_p" id="A1.T4.1.1.3.2.3.1.1" style="width:199.2pt;">Please turn on the call recording for me.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.3.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.3.2.4.1">
<span class="ltx_p" id="A1.T4.1.1.3.2.4.1.1" style="width:199.2pt;">Please view all call recording for me.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.4.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.4.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.4.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Advanced</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.4.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.4.3.3.1">
<span class="ltx_p" id="A1.T4.1.1.4.3.3.1.1" style="width:199.2pt;">Help me add the mobile number 1234567890 to the blacklist.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.4.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.4.3.4.1">
<span class="ltx_p" id="A1.T4.1.1.4.3.4.1.1" style="width:199.2pt;">Help me add the mobile number 9876543210 to the whitelist.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.5.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Messages</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.5.4.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Basic</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T4.1.1.5.4.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.5.4.3.1">
<span class="ltx_p" id="A1.T4.1.1.5.4.3.1.1" style="width:199.2pt;">Help me set up messages and notifications to be displayed together in Messages.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T4.1.1.5.4.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.5.4.4.1">
<span class="ltx_p" id="A1.T4.1.1.5.4.4.1.1" style="width:199.2pt;">Help me set up messages and notifications not to be displayed together in Messages.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.6.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.6.5.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.6.5.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Normal</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.6.5.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.6.5.3.1">
<span class="ltx_p" id="A1.T4.1.1.6.5.3.1.1" style="width:199.2pt;">Please send a message to 123456 with text "Hello"</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.6.5.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.6.5.4.1">
<span class="ltx_p" id="A1.T4.1.1.6.5.4.1.1" style="width:199.2pt;">Please send a message to 9876543210 with text "Goodbye".</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.7.6">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.7.6.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.7.6.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Advanced</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.7.6.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.7.6.3.1">
<span class="ltx_p" id="A1.T4.1.1.7.6.3.1.1" style="width:199.2pt;">Send a message to 123456 with my current location information.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.7.6.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.7.6.4.1">
<span class="ltx_p" id="A1.T4.1.1.7.6.4.1.1" style="width:199.2pt;">Send a message to 987654 with my contact card.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.8.7.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Setting</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.8.7.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Basic</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T4.1.1.8.7.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.8.7.3.1">
<span class="ltx_p" id="A1.T4.1.1.8.7.3.1.1" style="width:199.2pt;">Help me turn off the auto brightness in Setting.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T4.1.1.8.7.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.8.7.4.1">
<span class="ltx_p" id="A1.T4.1.1.8.7.4.1.1" style="width:199.2pt;">Help me turn on the auto brightness in Setting.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.9.8">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.9.8.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.9.8.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Normal</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.9.8.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.9.8.3.1">
<span class="ltx_p" id="A1.T4.1.1.9.8.3.1.1" style="width:199.2pt;">Help me turn off the status bar network speed display.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.9.8.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.9.8.4.1">
<span class="ltx_p" id="A1.T4.1.1.9.8.4.1.1" style="width:199.2pt;">Help me turn off the status bar NFC display.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.10.9">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.10.9.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.10.9.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Advanced</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.10.9.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.10.9.3.1">
<span class="ltx_p" id="A1.T4.1.1.10.9.3.1.1" style="width:199.2pt;">Help me open three-finger screenshots.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.10.9.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.10.9.4.1">
<span class="ltx_p" id="A1.T4.1.1.10.9.4.1.1" style="width:199.2pt;">Help me open three-finger touch and hold.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.11.10.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Photo</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.11.10.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Basic</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T4.1.1.11.10.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.11.10.3.1">
<span class="ltx_p" id="A1.T4.1.1.11.10.3.1.1" style="width:199.2pt;">Help me turn on the shared albums setting in Photos.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T4.1.1.11.10.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.11.10.4.1">
<span class="ltx_p" id="A1.T4.1.1.11.10.4.1.1" style="width:199.2pt;">Help me turn off the shared albums setting in Photos.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.12.11">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.12.11.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.12.11.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Normal</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.12.11.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.12.11.3.1">
<span class="ltx_p" id="A1.T4.1.1.12.11.3.1.1" style="width:199.2pt;">Help me clear recently deleted photos.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.12.11.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.12.11.4.1">
<span class="ltx_p" id="A1.T4.1.1.12.11.4.1.1" style="width:199.2pt;">Help me restore recently deleted photos.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.13.12">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.13.12.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.13.12.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Advanced</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.13.12.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.13.12.3.1">
<span class="ltx_p" id="A1.T4.1.1.13.12.3.1.1" style="width:199.2pt;">Help me set up not to record location when taking photos.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.13.12.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.13.12.4.1">
<span class="ltx_p" id="A1.T4.1.1.13.12.4.1.1" style="width:199.2pt;">Help me set up not to record properties when taking photos.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.14.13.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Manager</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.14.13.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Basic</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T4.1.1.14.13.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.14.13.3.1">
<span class="ltx_p" id="A1.T4.1.1.14.13.3.1.1" style="width:199.2pt;">Help me turn on the App cleaner reminder in Phone Manager.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T4.1.1.14.13.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.14.13.4.1">
<span class="ltx_p" id="A1.T4.1.1.14.13.4.1.1" style="width:199.2pt;">Help me turn off the App cleaner reminder in Phone Manager.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.15.14">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.15.14.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.15.14.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Normal</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.15.14.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.15.14.3.1">
<span class="ltx_p" id="A1.T4.1.1.15.14.3.1.1" style="width:199.2pt;">Help me turn on the automatic phone call for help.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.15.14.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.15.14.4.1">
<span class="ltx_p" id="A1.T4.1.1.15.14.4.1.1" style="width:199.2pt;">Help me turn on the automatic phone call for help and countdown sound.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.16.15">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.16.15.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.16.15.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Advanced</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.16.15.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.16.15.3.1">
<span class="ltx_p" id="A1.T4.1.1.16.15.3.1.1" style="width:199.2pt;">Help me clean up QQ’s storage.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.16.15.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.16.15.4.1">
<span class="ltx_p" id="A1.T4.1.1.16.15.4.1.1" style="width:199.2pt;">Help me clean up WhatsApp’s storage.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.17.16.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Recorder</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.17.16.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Basic</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T4.1.1.17.16.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.17.16.3.1">
<span class="ltx_p" id="A1.T4.1.1.17.16.3.1.1" style="width:199.2pt;">Help me start recording.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T4.1.1.17.16.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.17.16.4.1">
<span class="ltx_p" id="A1.T4.1.1.17.16.4.1.1" style="width:199.2pt;">Help me stop recording.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.18.17">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.18.17.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.18.17.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Normal</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.18.17.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.18.17.3.1">
<span class="ltx_p" id="A1.T4.1.1.18.17.3.1.1" style="width:199.2pt;">Help me change the audio format of my recording.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.18.17.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.18.17.4.1">
<span class="ltx_p" id="A1.T4.1.1.18.17.4.1.1" style="width:199.2pt;">Help me turn on the cloud recording.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.19.18">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.19.18.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.19.18.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Advanced</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.19.18.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.19.18.3.1">
<span class="ltx_p" id="A1.T4.1.1.19.18.3.1.1" style="width:199.2pt;">Help me show recently deleted recordings.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.19.18.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.19.18.4.1">
<span class="ltx_p" id="A1.T4.1.1.19.18.4.1.1" style="width:199.2pt;">Help me show call recordings.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.20.19.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Files</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.20.19.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Basic</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T4.1.1.20.19.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.20.19.3.1">
<span class="ltx_p" id="A1.T4.1.1.20.19.3.1.1" style="width:199.2pt;">Help me view photos in My Files.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T4.1.1.20.19.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.20.19.4.1">
<span class="ltx_p" id="A1.T4.1.1.20.19.4.1.1" style="width:199.2pt;">Help me view videos in My Files.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.21.20">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.21.20.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.21.20.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Normal</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.21.20.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.21.20.3.1">
<span class="ltx_p" id="A1.T4.1.1.21.20.3.1.1" style="width:199.2pt;">Help me create a new tag named "test".</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.21.20.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.21.20.4.1">
<span class="ltx_p" id="A1.T4.1.1.21.20.4.1.1" style="width:199.2pt;">Help me create a new tag named "mobile".</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.22.21">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.22.21.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.22.21.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Advanced</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.22.21.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.22.21.3.1">
<span class="ltx_p" id="A1.T4.1.1.22.21.3.1.1" style="width:199.2pt;">Help me turn on the option to show hidden files.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.22.21.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.22.21.4.1">
<span class="ltx_p" id="A1.T4.1.1.22.21.4.1.1" style="width:199.2pt;">Help me turn off the option to show hidden files.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.23.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.23.22.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Clock</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.23.22.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Basic</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T4.1.1.23.22.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.23.22.3.1">
<span class="ltx_p" id="A1.T4.1.1.23.22.3.1.1" style="width:199.2pt;">Help me start stopwatch in Clock.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T4.1.1.23.22.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.23.22.4.1">
<span class="ltx_p" id="A1.T4.1.1.23.22.4.1.1" style="width:199.2pt;">Help me reset stopwatch in Clock.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.24.23">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.24.23.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.24.23.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Normal</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.24.23.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.24.23.3.1">
<span class="ltx_p" id="A1.T4.1.1.24.23.3.1.1" style="width:199.2pt;">Help me set the gesture to turn off the alarm to swipe up.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.24.23.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.24.23.4.1">
<span class="ltx_p" id="A1.T4.1.1.24.23.4.1.1" style="width:199.2pt;">Help me set the gesture to turn off the alarm to press button.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.25.24">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.25.24.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.25.24.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Advanced</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.25.24.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.25.24.3.1">
<span class="ltx_p" id="A1.T4.1.1.25.24.3.1.1" style="width:199.2pt;">Help me delete the last city of the current world clock and add London.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.25.24.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.25.24.4.1">
<span class="ltx_p" id="A1.T4.1.1.25.24.4.1.1" style="width:199.2pt;">Help me delete the first city of the current world clock and add New York.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.26.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.26.25.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Weather</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.26.25.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Basic</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T4.1.1.26.25.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.26.25.3.1">
<span class="ltx_p" id="A1.T4.1.1.26.25.3.1.1" style="width:199.2pt;">Help me turn on the meteorological alert setting in Weather.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T4.1.1.26.25.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.26.25.4.1">
<span class="ltx_p" id="A1.T4.1.1.26.25.4.1.1" style="width:199.2pt;">Help me turn off the meteorological alert setting in Weather.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.27.26">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.27.26.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.27.26.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Normal</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.27.26.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.27.26.3.1">
<span class="ltx_p" id="A1.T4.1.1.27.26.3.1.1" style="width:199.2pt;">Help me turn on the rain reminder.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.27.26.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.27.26.4.1">
<span class="ltx_p" id="A1.T4.1.1.27.26.4.1.1" style="width:199.2pt;">Help me turn off the rain reminder.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.28.27">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.28.27.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.28.27.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Advanced</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.28.27.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.28.27.3.1">
<span class="ltx_p" id="A1.T4.1.1.28.27.3.1.1" style="width:199.2pt;">Help me turn on the UV intensity display and view the UV intensity at your current location.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.28.27.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.28.27.4.1">
<span class="ltx_p" id="A1.T4.1.1.28.27.4.1.1" style="width:199.2pt;">Help me turn on the Sunset display and view the sunset at your current location.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.29.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.29.28.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Calendar</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.29.28.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Basic</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T4.1.1.29.28.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.29.28.3.1">
<span class="ltx_p" id="A1.T4.1.1.29.28.3.1.1" style="width:199.2pt;">Help me turn on fixed time zone setting in Calendar.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T4.1.1.29.28.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.29.28.4.1">
<span class="ltx_p" id="A1.T4.1.1.29.28.4.1.1" style="width:199.2pt;">Help me turn off fixed time zone setting in Calendar.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.30.29">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.30.29.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.1.30.29.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Normal</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T4.1.1.30.29.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.30.29.3.1">
<span class="ltx_p" id="A1.T4.1.1.30.29.3.1.1" style="width:199.2pt;">Help me turn on calendar meeting reminders.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.30.29.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.30.29.4.1">
<span class="ltx_p" id="A1.T4.1.1.30.29.4.1.1" style="width:199.2pt;">Help me turn on fixed time zone.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.31.30">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb ltx_border_b ltx_border_r" id="A1.T4.1.1.31.30.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_b ltx_border_r" id="A1.T4.1.1.31.30.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Advanced</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_b ltx_border_r" id="A1.T4.1.1.31.30.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.31.30.3.1">
<span class="ltx_p" id="A1.T4.1.1.31.30.3.1.1" style="width:199.2pt;">Help me subscribe to horoscope and choose Aries.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_b" id="A1.T4.1.1.31.30.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.31.30.4.1">
<span class="ltx_p" id="A1.T4.1.1.31.30.4.1.1" style="width:199.2pt;">Help me subscribe to today in history.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents benchmark tasks designed to evaluate the performance of mobile automation agents.  The tasks are categorized by app (e.g., Phone, Messages, Settings) and difficulty level (Basic, Normal, Advanced). Each task includes two sets of instructions: one aligned with the video demonstration used for training and one misaligned to test generalization capabilities. The table highlights the complexity and variance of real-world mobile device operations, providing a nuanced assessment of the agent's ability to learn and adapt.
> <details>
> <summary>read the caption</summary>
> Table 4: Benchmark tasks with different difficulty levels and instruction variations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.8.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.8.8.9.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt ltx_border_t" id="A1.T5.8.8.9.1.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.9.1.1.1">
<span class="ltx_p" id="A1.T5.8.8.9.1.1.1.1" style="width:483.7pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.8.8.9.1.1.1.1.1">System</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.8.8.10.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.8.8.10.1.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.10.1.1.1">
<span class="ltx_p" id="A1.T5.8.8.10.1.1.1.1" style="width:483.7pt;">You are a mobile phone operation assistant. Below is a description of this conversation.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.11.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.11.2.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.11.2.1.1">
<span class="ltx_p" id="A1.T5.8.8.11.2.1.1.1" style="width:483.7pt;">In the following part, I will upload a large image made up of many screenshots. These screenshots in this image are all from a screen recording of a mobile phone operation. I will tell you the task completed in the screen recording. You need to observe this screen recording.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.12.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.12.3.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.12.3.1.1">
<span class="ltx_p" id="A1.T5.8.8.12.3.1.1.1" style="width:483.7pt;">Then, you need to complete a new task, which is related to the task in the screen recording. You need to combine the operation experience provided by the screen recording and gradually complete this task. I will upload the current screenshot of the device. There will be many detection boxes on this screenshot, and there will be a number in the upper left and lower right corners of the detection box. You need to perform operations on the current page. In order to better operate the phone, the following are the operation tools you can use:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.13.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.13.4.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.13.4.1.1">
<span class="ltx_p" id="A1.T5.8.8.13.4.1.1.1" style="width:483.7pt;">- Click (id): The "id" is the numeric serial number of the detection box you need to click.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.14.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.14.5.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.14.5.1.1">
<span class="ltx_p" id="A1.T5.8.8.14.5.1.1.1" style="width:483.7pt;">- Click_text (text): The "text" is the text you need to click. This is only used when the detection box and the corresponding id do not exist at the location to be clicked.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.15.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.15.6.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.15.6.1.1">
<span class="ltx_p" id="A1.T5.8.8.15.6.1.1.1" style="width:483.7pt;">- Scroll (direction): The "direction" selects from "up", "down", "left", and "right". You can scroll the page a certain distance in the specified direction.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.16.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.16.7.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.16.7.1.1">
<span class="ltx_p" id="A1.T5.8.8.16.7.1.1.1" style="width:483.7pt;">- Type (text): The "text" is the content you need to enter.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.17.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.17.8.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.17.8.1.1">
<span class="ltx_p" id="A1.T5.8.8.17.8.1.1.1" style="width:483.7pt;">- Back: You can use this operation to return to the previous page.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.18.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.18.9.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.18.9.1.1">
<span class="ltx_p" id="A1.T5.8.8.18.9.1.1.1" style="width:483.7pt;">- Home: You can use this operation to return to the home page.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.19.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.19.10.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.19.10.1.1">
<span class="ltx_p" id="A1.T5.8.8.19.10.1.1.1" style="width:483.7pt;">- Done: You can use this operation when the task is completed.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.20.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.20.11.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.20.11.1.1">
<span class="ltx_p" id="A1.T5.8.8.20.11.1.1.1" style="width:483.7pt;">You need to strictly follow the following json output format:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.21.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.21.12.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.21.12.1.1">
<span class="ltx_p" id="A1.T5.8.8.21.12.1.1.1" style="width:483.7pt;">"Thought": You need to think about how to perform this operation on the current device based on the operation path in the video, "Operation": Select one from the operation tools, "Summary": Briefly summarize this operation</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.22.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.8.8.22.13.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.22.13.1.1">
<span class="ltx_p" id="A1.T5.8.8.22.13.1.1.1" style="width:483.7pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.8.8.22.13.1.1.1.1">User during the first operation</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.1.1.1.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.1.1.1">
<span class="ltx_p" id="A1.T5.1.1.1.1.1.1" style="width:483.7pt;">The first image is the screen recording, in which the tasks are completed: {<math alttext="I_{v}" class="ltx_Math" display="inline" id="A1.T5.1.1.1.1.1.1.m1.1"><semantics id="A1.T5.1.1.1.1.1.1.m1.1a"><msub id="A1.T5.1.1.1.1.1.1.m1.1.1" xref="A1.T5.1.1.1.1.1.1.m1.1.1.cmml"><mi id="A1.T5.1.1.1.1.1.1.m1.1.1.2" xref="A1.T5.1.1.1.1.1.1.m1.1.1.2.cmml">I</mi><mi id="A1.T5.1.1.1.1.1.1.m1.1.1.3" xref="A1.T5.1.1.1.1.1.1.m1.1.1.3.cmml">v</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.1.1.1.1.1.1.m1.1b"><apply id="A1.T5.1.1.1.1.1.1.m1.1.1.cmml" xref="A1.T5.1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.1.1.1.1.1.1.m1.1.1.1.cmml" xref="A1.T5.1.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T5.1.1.1.1.1.1.m1.1.1.2.cmml" xref="A1.T5.1.1.1.1.1.1.m1.1.1.2">𝐼</ci><ci id="A1.T5.1.1.1.1.1.1.m1.1.1.3.cmml" xref="A1.T5.1.1.1.1.1.1.m1.1.1.3">𝑣</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.1.1.1.1.1.1.m1.1c">I_{v}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.1.1.1.1.1.1.m1.1d">italic_I start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT</annotation></semantics></math>}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.2.2.2.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.2.1.1">
<span class="ltx_p" id="A1.T5.2.2.2.1.1.1" style="width:483.7pt;">The second image is the screenshot of the current device, in which you need to complete the following tasks: {<math alttext="I_{u}" class="ltx_Math" display="inline" id="A1.T5.2.2.2.1.1.1.m1.1"><semantics id="A1.T5.2.2.2.1.1.1.m1.1a"><msub id="A1.T5.2.2.2.1.1.1.m1.1.1" xref="A1.T5.2.2.2.1.1.1.m1.1.1.cmml"><mi id="A1.T5.2.2.2.1.1.1.m1.1.1.2" xref="A1.T5.2.2.2.1.1.1.m1.1.1.2.cmml">I</mi><mi id="A1.T5.2.2.2.1.1.1.m1.1.1.3" xref="A1.T5.2.2.2.1.1.1.m1.1.1.3.cmml">u</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.2.2.2.1.1.1.m1.1b"><apply id="A1.T5.2.2.2.1.1.1.m1.1.1.cmml" xref="A1.T5.2.2.2.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.2.2.2.1.1.1.m1.1.1.1.cmml" xref="A1.T5.2.2.2.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T5.2.2.2.1.1.1.m1.1.1.2.cmml" xref="A1.T5.2.2.2.1.1.1.m1.1.1.2">𝐼</ci><ci id="A1.T5.2.2.2.1.1.1.m1.1.1.3.cmml" xref="A1.T5.2.2.2.1.1.1.m1.1.1.3">𝑢</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.2.2.2.1.1.1.m1.1c">I_{u}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.2.2.2.1.1.1.m1.1d">italic_I start_POSTSUBSCRIPT italic_u end_POSTSUBSCRIPT</annotation></semantics></math>}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.23.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.23.14.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.23.14.1.1">
<span class="ltx_p" id="A1.T5.8.8.23.14.1.1.1" style="width:483.7pt;">Note: You need to refer to the operation path in the video more than relying on your own operation experience. Because you may make mistakes.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.24.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.24.15.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.24.15.1.1">
<span class="ltx_p" id="A1.T5.8.8.24.15.1.1.1" style="width:483.7pt;">Note: You need to refer to the operation path in the video more than relying on your own operation experience. Because you may make mistakes."</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.4.4.4.2" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.4.4.4.2.2">
<span class="ltx_p" id="A1.T5.4.4.4.2.2.2" style="width:483.7pt;">&lt;image: <math alttext="V_{w}" class="ltx_Math" display="inline" id="A1.T5.3.3.3.1.1.1.m1.1"><semantics id="A1.T5.3.3.3.1.1.1.m1.1a"><msub id="A1.T5.3.3.3.1.1.1.m1.1.1" xref="A1.T5.3.3.3.1.1.1.m1.1.1.cmml"><mi id="A1.T5.3.3.3.1.1.1.m1.1.1.2" xref="A1.T5.3.3.3.1.1.1.m1.1.1.2.cmml">V</mi><mi id="A1.T5.3.3.3.1.1.1.m1.1.1.3" xref="A1.T5.3.3.3.1.1.1.m1.1.1.3.cmml">w</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.3.3.3.1.1.1.m1.1b"><apply id="A1.T5.3.3.3.1.1.1.m1.1.1.cmml" xref="A1.T5.3.3.3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.3.3.3.1.1.1.m1.1.1.1.cmml" xref="A1.T5.3.3.3.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T5.3.3.3.1.1.1.m1.1.1.2.cmml" xref="A1.T5.3.3.3.1.1.1.m1.1.1.2">𝑉</ci><ci id="A1.T5.3.3.3.1.1.1.m1.1.1.3.cmml" xref="A1.T5.3.3.3.1.1.1.m1.1.1.3">𝑤</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.3.3.3.1.1.1.m1.1c">V_{w}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.3.3.3.1.1.1.m1.1d">italic_V start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT</annotation></semantics></math>&gt;&lt;image: <math alttext="D_{i}" class="ltx_Math" display="inline" id="A1.T5.4.4.4.2.2.2.m2.1"><semantics id="A1.T5.4.4.4.2.2.2.m2.1a"><msub id="A1.T5.4.4.4.2.2.2.m2.1.1" xref="A1.T5.4.4.4.2.2.2.m2.1.1.cmml"><mi id="A1.T5.4.4.4.2.2.2.m2.1.1.2" xref="A1.T5.4.4.4.2.2.2.m2.1.1.2.cmml">D</mi><mi id="A1.T5.4.4.4.2.2.2.m2.1.1.3" xref="A1.T5.4.4.4.2.2.2.m2.1.1.3.cmml">i</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.4.4.4.2.2.2.m2.1b"><apply id="A1.T5.4.4.4.2.2.2.m2.1.1.cmml" xref="A1.T5.4.4.4.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="A1.T5.4.4.4.2.2.2.m2.1.1.1.cmml" xref="A1.T5.4.4.4.2.2.2.m2.1.1">subscript</csymbol><ci id="A1.T5.4.4.4.2.2.2.m2.1.1.2.cmml" xref="A1.T5.4.4.4.2.2.2.m2.1.1.2">𝐷</ci><ci id="A1.T5.4.4.4.2.2.2.m2.1.1.3.cmml" xref="A1.T5.4.4.4.2.2.2.m2.1.1.3">𝑖</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.4.4.4.2.2.2.m2.1c">D_{i}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.4.4.4.2.2.2.m2.1d">italic_D start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT</annotation></semantics></math>&gt;</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.25.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.8.8.25.16.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.25.16.1.1">
<span class="ltx_p" id="A1.T5.8.8.25.16.1.1.1" style="width:483.7pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.8.8.25.16.1.1.1.1">User during subsequent operations</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.5.5.5.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.5.5.5.1.1">
<span class="ltx_p" id="A1.T5.5.5.5.1.1.1" style="width:483.7pt;">The first image is the screen recording, in which the tasks are completed: {<math alttext="I_{v}" class="ltx_Math" display="inline" id="A1.T5.5.5.5.1.1.1.m1.1"><semantics id="A1.T5.5.5.5.1.1.1.m1.1a"><msub id="A1.T5.5.5.5.1.1.1.m1.1.1" xref="A1.T5.5.5.5.1.1.1.m1.1.1.cmml"><mi id="A1.T5.5.5.5.1.1.1.m1.1.1.2" xref="A1.T5.5.5.5.1.1.1.m1.1.1.2.cmml">I</mi><mi id="A1.T5.5.5.5.1.1.1.m1.1.1.3" xref="A1.T5.5.5.5.1.1.1.m1.1.1.3.cmml">v</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.5.5.5.1.1.1.m1.1b"><apply id="A1.T5.5.5.5.1.1.1.m1.1.1.cmml" xref="A1.T5.5.5.5.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.5.5.5.1.1.1.m1.1.1.1.cmml" xref="A1.T5.5.5.5.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T5.5.5.5.1.1.1.m1.1.1.2.cmml" xref="A1.T5.5.5.5.1.1.1.m1.1.1.2">𝐼</ci><ci id="A1.T5.5.5.5.1.1.1.m1.1.1.3.cmml" xref="A1.T5.5.5.5.1.1.1.m1.1.1.3">𝑣</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.5.5.5.1.1.1.m1.1c">I_{v}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.5.5.5.1.1.1.m1.1d">italic_I start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT</annotation></semantics></math>}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.6.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.6.6.6.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.6.6.6.1.1">
<span class="ltx_p" id="A1.T5.6.6.6.1.1.1" style="width:483.7pt;">The second image is the screenshot of the current device, in which you need to complete the following tasks: {<math alttext="I_{u}" class="ltx_Math" display="inline" id="A1.T5.6.6.6.1.1.1.m1.1"><semantics id="A1.T5.6.6.6.1.1.1.m1.1a"><msub id="A1.T5.6.6.6.1.1.1.m1.1.1" xref="A1.T5.6.6.6.1.1.1.m1.1.1.cmml"><mi id="A1.T5.6.6.6.1.1.1.m1.1.1.2" xref="A1.T5.6.6.6.1.1.1.m1.1.1.2.cmml">I</mi><mi id="A1.T5.6.6.6.1.1.1.m1.1.1.3" xref="A1.T5.6.6.6.1.1.1.m1.1.1.3.cmml">u</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.6.6.6.1.1.1.m1.1b"><apply id="A1.T5.6.6.6.1.1.1.m1.1.1.cmml" xref="A1.T5.6.6.6.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.6.6.6.1.1.1.m1.1.1.1.cmml" xref="A1.T5.6.6.6.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T5.6.6.6.1.1.1.m1.1.1.2.cmml" xref="A1.T5.6.6.6.1.1.1.m1.1.1.2">𝐼</ci><ci id="A1.T5.6.6.6.1.1.1.m1.1.1.3.cmml" xref="A1.T5.6.6.6.1.1.1.m1.1.1.3">𝑢</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.6.6.6.1.1.1.m1.1c">I_{u}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.6.6.6.1.1.1.m1.1d">italic_I start_POSTSUBSCRIPT italic_u end_POSTSUBSCRIPT</annotation></semantics></math>}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.26.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.26.17.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.26.17.1.1">
<span class="ltx_p" id="A1.T5.8.8.26.17.1.1.1" style="width:483.7pt;">Here is your operation history:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.27.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.27.18.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.27.18.1.1">
<span class="ltx_p" id="A1.T5.8.8.27.18.1.1.1" style="width:483.7pt;">Step-1: {operation 1}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.28.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.28.19.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.28.19.1.1">
<span class="ltx_p" id="A1.T5.8.8.28.19.1.1.1" style="width:483.7pt;">Step-2: {operation 2}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.29.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.29.20.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.29.20.1.1">
<span class="ltx_p" id="A1.T5.8.8.29.20.1.1.1" style="width:483.7pt;">……</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.30.21">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.30.21.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.30.21.1.1">
<span class="ltx_p" id="A1.T5.8.8.30.21.1.1.1" style="width:483.7pt;">Step-n: {operation n}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.31.22">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.31.22.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.31.22.1.1">
<span class="ltx_p" id="A1.T5.8.8.31.22.1.1.1" style="width:483.7pt;">Note: If the operation history and current device can infer that the task has been completed, use Done.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.32.23">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.8.8.32.23.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.32.23.1.1">
<span class="ltx_p" id="A1.T5.8.8.32.23.1.1.1" style="width:483.7pt;">Note: You need to refer to the operation path in the video more than relying on your own operation experience. Because you may make mistakes."</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_b" id="A1.T5.8.8.8.2" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.8.2.2">
<span class="ltx_p" id="A1.T5.8.8.8.2.2.2" style="width:483.7pt;">&lt;image: <math alttext="V_{w}" class="ltx_Math" display="inline" id="A1.T5.7.7.7.1.1.1.m1.1"><semantics id="A1.T5.7.7.7.1.1.1.m1.1a"><msub id="A1.T5.7.7.7.1.1.1.m1.1.1" xref="A1.T5.7.7.7.1.1.1.m1.1.1.cmml"><mi id="A1.T5.7.7.7.1.1.1.m1.1.1.2" xref="A1.T5.7.7.7.1.1.1.m1.1.1.2.cmml">V</mi><mi id="A1.T5.7.7.7.1.1.1.m1.1.1.3" xref="A1.T5.7.7.7.1.1.1.m1.1.1.3.cmml">w</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.7.7.7.1.1.1.m1.1b"><apply id="A1.T5.7.7.7.1.1.1.m1.1.1.cmml" xref="A1.T5.7.7.7.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.7.7.7.1.1.1.m1.1.1.1.cmml" xref="A1.T5.7.7.7.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T5.7.7.7.1.1.1.m1.1.1.2.cmml" xref="A1.T5.7.7.7.1.1.1.m1.1.1.2">𝑉</ci><ci id="A1.T5.7.7.7.1.1.1.m1.1.1.3.cmml" xref="A1.T5.7.7.7.1.1.1.m1.1.1.3">𝑤</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.7.7.7.1.1.1.m1.1c">V_{w}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.7.7.7.1.1.1.m1.1d">italic_V start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT</annotation></semantics></math>&gt;&lt;image: <math alttext="D_{i}" class="ltx_Math" display="inline" id="A1.T5.8.8.8.2.2.2.m2.1"><semantics id="A1.T5.8.8.8.2.2.2.m2.1a"><msub id="A1.T5.8.8.8.2.2.2.m2.1.1" xref="A1.T5.8.8.8.2.2.2.m2.1.1.cmml"><mi id="A1.T5.8.8.8.2.2.2.m2.1.1.2" xref="A1.T5.8.8.8.2.2.2.m2.1.1.2.cmml">D</mi><mi id="A1.T5.8.8.8.2.2.2.m2.1.1.3" xref="A1.T5.8.8.8.2.2.2.m2.1.1.3.cmml">i</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.8.8.8.2.2.2.m2.1b"><apply id="A1.T5.8.8.8.2.2.2.m2.1.1.cmml" xref="A1.T5.8.8.8.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="A1.T5.8.8.8.2.2.2.m2.1.1.1.cmml" xref="A1.T5.8.8.8.2.2.2.m2.1.1">subscript</csymbol><ci id="A1.T5.8.8.8.2.2.2.m2.1.1.2.cmml" xref="A1.T5.8.8.8.2.2.2.m2.1.1.2">𝐷</ci><ci id="A1.T5.8.8.8.2.2.2.m2.1.1.3.cmml" xref="A1.T5.8.8.8.2.2.2.m2.1.1.3">𝑖</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.8.8.8.2.2.2.m2.1c">D_{i}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.8.8.8.2.2.2.m2.1d">italic_D start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT</annotation></semantics></math>&gt;</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays the prompt given to the decision agent within the Mobile-Agent-V framework. The prompt guides the agent on how to process a series of screenshots from a mobile device operation video and complete a specified task based on the visual input and operational knowledge gained from the video.
> <details>
> <summary>read the caption</summary>
> Table 5: The prompt for decision agent.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.4.4.5.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt ltx_border_t" id="A1.T6.4.4.5.1.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.5.1.1.1">
<span class="ltx_p" id="A1.T6.4.4.5.1.1.1.1" style="width:426.8pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.4.4.5.1.1.1.1.1">System</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.1.1.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.1.1.1.1">
<span class="ltx_p" id="A1.T6.1.1.1.1.1.1" style="width:426.8pt;">You are an expert in mobile phone operation. I will upload two images below. The first image is a keyframe mosaic from an operation video, in which the completed task is "{<math alttext="I_{v}" class="ltx_Math" display="inline" id="A1.T6.1.1.1.1.1.1.m1.1"><semantics id="A1.T6.1.1.1.1.1.1.m1.1a"><msub id="A1.T6.1.1.1.1.1.1.m1.1.1" xref="A1.T6.1.1.1.1.1.1.m1.1.1.cmml"><mi id="A1.T6.1.1.1.1.1.1.m1.1.1.2" xref="A1.T6.1.1.1.1.1.1.m1.1.1.2.cmml">I</mi><mi id="A1.T6.1.1.1.1.1.1.m1.1.1.3" xref="A1.T6.1.1.1.1.1.1.m1.1.1.3.cmml">v</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T6.1.1.1.1.1.1.m1.1b"><apply id="A1.T6.1.1.1.1.1.1.m1.1.1.cmml" xref="A1.T6.1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T6.1.1.1.1.1.1.m1.1.1.1.cmml" xref="A1.T6.1.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T6.1.1.1.1.1.1.m1.1.1.2.cmml" xref="A1.T6.1.1.1.1.1.1.m1.1.1.2">𝐼</ci><ci id="A1.T6.1.1.1.1.1.1.m1.1.1.3.cmml" xref="A1.T6.1.1.1.1.1.1.m1.1.1.3">𝑣</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.1.1.1.1.1.1.m1.1c">I_{v}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.1.1.1.1.1.1.m1.1d">italic_I start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT</annotation></semantics></math>}"; the second image is a screenshot of the current status of the mobile phone.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.2.2.2.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.2.2.2.1.1">
<span class="ltx_p" id="A1.T6.2.2.2.1.1.1" style="width:426.8pt;">On the mobile phone shown in the second image, the task to be completed is: "{<math alttext="I_{u}" class="ltx_Math" display="inline" id="A1.T6.2.2.2.1.1.1.m1.1"><semantics id="A1.T6.2.2.2.1.1.1.m1.1a"><msub id="A1.T6.2.2.2.1.1.1.m1.1.1" xref="A1.T6.2.2.2.1.1.1.m1.1.1.cmml"><mi id="A1.T6.2.2.2.1.1.1.m1.1.1.2" xref="A1.T6.2.2.2.1.1.1.m1.1.1.2.cmml">I</mi><mi id="A1.T6.2.2.2.1.1.1.m1.1.1.3" xref="A1.T6.2.2.2.1.1.1.m1.1.1.3.cmml">u</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T6.2.2.2.1.1.1.m1.1b"><apply id="A1.T6.2.2.2.1.1.1.m1.1.1.cmml" xref="A1.T6.2.2.2.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T6.2.2.2.1.1.1.m1.1.1.1.cmml" xref="A1.T6.2.2.2.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T6.2.2.2.1.1.1.m1.1.1.2.cmml" xref="A1.T6.2.2.2.1.1.1.m1.1.1.2">𝐼</ci><ci id="A1.T6.2.2.2.1.1.1.m1.1.1.3.cmml" xref="A1.T6.2.2.2.1.1.1.m1.1.1.3">𝑢</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.2.2.2.1.1.1.m1.1c">I_{u}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.2.2.2.1.1.1.m1.1d">italic_I start_POSTSUBSCRIPT italic_u end_POSTSUBSCRIPT</annotation></semantics></math>}". The user will perform the following operation:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.6.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.4.4.6.1.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.6.1.1.1">
<span class="ltx_p" id="A1.T6.4.4.6.1.1.1.1" style="width:426.8pt;">{Operation from decision agent}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.7.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.4.4.7.2.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.7.2.1.1">
<span class="ltx_p" id="A1.T6.4.4.7.2.1.1.1" style="width:426.8pt;">Now please observe whether this operation conforms to the operation path shown in the first image. If it conforms, please output "True", otherwise please modify the operation content according to the above json format.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.8.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.4.4.8.3.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.8.3.1.1">
<span class="ltx_p" id="A1.T6.4.4.8.3.1.1.1" style="width:426.8pt;">The operation should be:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.9.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.4.4.9.4.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.9.4.1.1">
<span class="ltx_p" id="A1.T6.4.4.9.4.1.1.1" style="width:426.8pt;">- Click (id): The "id" is the numeric serial number of the detection box you need to click.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.10.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.4.4.10.5.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.10.5.1.1">
<span class="ltx_p" id="A1.T6.4.4.10.5.1.1.1" style="width:426.8pt;">- Click_text (text): The "text" is the text you need to click. This is only used when the detection box and the corresponding id do not exist at the location to be clicked.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.11.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.4.4.11.6.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.11.6.1.1">
<span class="ltx_p" id="A1.T6.4.4.11.6.1.1.1" style="width:426.8pt;">- Scroll (direction): The "direction" selects from "up" and "down". You can scroll the page a certain distance in the specified direction.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.12.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.4.4.12.7.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.12.7.1.1">
<span class="ltx_p" id="A1.T6.4.4.12.7.1.1.1" style="width:426.8pt;">- Type (text): The "text" is the content you need to enter.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.13.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.4.4.13.8.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.13.8.1.1">
<span class="ltx_p" id="A1.T6.4.4.13.8.1.1.1" style="width:426.8pt;">- Back: You can use this operation to return to the previous page.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.14.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.4.4.14.9.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.14.9.1.1">
<span class="ltx_p" id="A1.T6.4.4.14.9.1.1.1" style="width:426.8pt;">- Home: You can use this operation to return to the home page.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.15.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.4.4.15.10.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.15.10.1.1">
<span class="ltx_p" id="A1.T6.4.4.15.10.1.1.1" style="width:426.8pt;">- Done: You can use this operation when the task is completed.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.16.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.4.4.16.11.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.16.11.1.1">
<span class="ltx_p" id="A1.T6.4.4.16.11.1.1.1" style="width:426.8pt;">Note: If the operation history and current device can infer that the task has been completed, use Done.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.17.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.4.4.17.12.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.17.12.1.1">
<span class="ltx_p" id="A1.T6.4.4.17.12.1.1.1" style="width:426.8pt;">You need to think in the following way:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.18.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.4.4.18.13.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.18.13.1.1">
<span class="ltx_p" id="A1.T6.4.4.18.13.1.1.1" style="width:426.8pt;">1. Observe the operation of each step in the video (especially frame-3 and frame-4).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.19.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.4.4.19.14.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.19.14.1.1">
<span class="ltx_p" id="A1.T6.4.4.19.14.1.1.1" style="width:426.8pt;">2. Anchor the position of the current device in the video.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.20.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.4.4.20.15.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.20.15.1.1">
<span class="ltx_p" id="A1.T6.4.4.20.15.1.1.1" style="width:426.8pt;">3. Complete the current step according to the operation in the video.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.21.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.4.4.21.16.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.21.16.1.1">
<span class="ltx_p" id="A1.T6.4.4.21.16.1.1.1" style="width:426.8pt;">Please output your thought about this step by step before you output your response.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.22.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.4.4.22.17.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.22.17.1.1">
<span class="ltx_p" id="A1.T6.4.4.22.17.1.1.1" style="width:426.8pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.4.4.22.17.1.1.1.1">User</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_b ltx_border_t" id="A1.T6.4.4.4.2" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.4.4.4.2.2">
<span class="ltx_p" id="A1.T6.4.4.4.2.2.2" style="width:426.8pt;">&lt;image: <math alttext="V_{w}" class="ltx_Math" display="inline" id="A1.T6.3.3.3.1.1.1.m1.1"><semantics id="A1.T6.3.3.3.1.1.1.m1.1a"><msub id="A1.T6.3.3.3.1.1.1.m1.1.1" xref="A1.T6.3.3.3.1.1.1.m1.1.1.cmml"><mi id="A1.T6.3.3.3.1.1.1.m1.1.1.2" xref="A1.T6.3.3.3.1.1.1.m1.1.1.2.cmml">V</mi><mi id="A1.T6.3.3.3.1.1.1.m1.1.1.3" xref="A1.T6.3.3.3.1.1.1.m1.1.1.3.cmml">w</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T6.3.3.3.1.1.1.m1.1b"><apply id="A1.T6.3.3.3.1.1.1.m1.1.1.cmml" xref="A1.T6.3.3.3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T6.3.3.3.1.1.1.m1.1.1.1.cmml" xref="A1.T6.3.3.3.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T6.3.3.3.1.1.1.m1.1.1.2.cmml" xref="A1.T6.3.3.3.1.1.1.m1.1.1.2">𝑉</ci><ci id="A1.T6.3.3.3.1.1.1.m1.1.1.3.cmml" xref="A1.T6.3.3.3.1.1.1.m1.1.1.3">𝑤</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.3.3.3.1.1.1.m1.1c">V_{w}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.3.3.3.1.1.1.m1.1d">italic_V start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT</annotation></semantics></math>&gt;&lt;image: <math alttext="D_{i}" class="ltx_Math" display="inline" id="A1.T6.4.4.4.2.2.2.m2.1"><semantics id="A1.T6.4.4.4.2.2.2.m2.1a"><msub id="A1.T6.4.4.4.2.2.2.m2.1.1" xref="A1.T6.4.4.4.2.2.2.m2.1.1.cmml"><mi id="A1.T6.4.4.4.2.2.2.m2.1.1.2" xref="A1.T6.4.4.4.2.2.2.m2.1.1.2.cmml">D</mi><mi id="A1.T6.4.4.4.2.2.2.m2.1.1.3" xref="A1.T6.4.4.4.2.2.2.m2.1.1.3.cmml">i</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T6.4.4.4.2.2.2.m2.1b"><apply id="A1.T6.4.4.4.2.2.2.m2.1.1.cmml" xref="A1.T6.4.4.4.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="A1.T6.4.4.4.2.2.2.m2.1.1.1.cmml" xref="A1.T6.4.4.4.2.2.2.m2.1.1">subscript</csymbol><ci id="A1.T6.4.4.4.2.2.2.m2.1.1.2.cmml" xref="A1.T6.4.4.4.2.2.2.m2.1.1.2">𝐷</ci><ci id="A1.T6.4.4.4.2.2.2.m2.1.1.3.cmml" xref="A1.T6.4.4.4.2.2.2.m2.1.1.3">𝑖</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.4.4.4.2.2.2.m2.1c">D_{i}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.4.4.4.2.2.2.m2.1d">italic_D start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT</annotation></semantics></math>&gt;</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the prompt given to the deep-reflection agent within the Mobile-Agent-V framework.  The prompt instructs the agent to analyze the provided video keyframes and compare them to the current device state (shown in a second image). The agent must determine if the decision agent's proposed operation aligns with the video's demonstrated steps; if not, the agent must correct the operation and output the corrected action in a specific JSON format.  The prompt emphasizes the importance of using the video as a guide, rather than solely relying on the agent's own knowledge or reasoning.
> <details>
> <summary>read the caption</summary>
> Table 6: The prompt for deep-reflection agent.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T7.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.4.4.5.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt ltx_border_t" id="A1.T7.4.4.5.1.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.4.4.5.1.1.1">
<span class="ltx_p" id="A1.T7.4.4.5.1.1.1.1" style="width:426.8pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.4.5.1.1.1.1.1">System</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.2.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.2.2.2.2" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.2.2.2.2.2">
<span class="ltx_p" id="A1.T7.2.2.2.2.2.2" style="width:426.8pt;">You are a mobile phone operation assistant. I will provide you with two images. The first image is a long picture of key frames from a mobile phone operation video, which shows a correct operation trajectory to complete the task: {<math alttext="I_{v}" class="ltx_Math" display="inline" id="A1.T7.1.1.1.1.1.1.m1.1"><semantics id="A1.T7.1.1.1.1.1.1.m1.1a"><msub id="A1.T7.1.1.1.1.1.1.m1.1.1" xref="A1.T7.1.1.1.1.1.1.m1.1.1.cmml"><mi id="A1.T7.1.1.1.1.1.1.m1.1.1.2" xref="A1.T7.1.1.1.1.1.1.m1.1.1.2.cmml">I</mi><mi id="A1.T7.1.1.1.1.1.1.m1.1.1.3" xref="A1.T7.1.1.1.1.1.1.m1.1.1.3.cmml">v</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T7.1.1.1.1.1.1.m1.1b"><apply id="A1.T7.1.1.1.1.1.1.m1.1.1.cmml" xref="A1.T7.1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T7.1.1.1.1.1.1.m1.1.1.1.cmml" xref="A1.T7.1.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T7.1.1.1.1.1.1.m1.1.1.2.cmml" xref="A1.T7.1.1.1.1.1.1.m1.1.1.2">𝐼</ci><ci id="A1.T7.1.1.1.1.1.1.m1.1.1.3.cmml" xref="A1.T7.1.1.1.1.1.1.m1.1.1.3">𝑣</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.1.1.1.1.1.1.m1.1c">I_{v}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.1.1.1.1.1.1.m1.1d">italic_I start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT</annotation></semantics></math>}. The second image is two screenshots before and after an operation from the user. The user want to complete the task: {<math alttext="I_{u}" class="ltx_Math" display="inline" id="A1.T7.2.2.2.2.2.2.m2.1"><semantics id="A1.T7.2.2.2.2.2.2.m2.1a"><msub id="A1.T7.2.2.2.2.2.2.m2.1.1" xref="A1.T7.2.2.2.2.2.2.m2.1.1.cmml"><mi id="A1.T7.2.2.2.2.2.2.m2.1.1.2" xref="A1.T7.2.2.2.2.2.2.m2.1.1.2.cmml">I</mi><mi id="A1.T7.2.2.2.2.2.2.m2.1.1.3" xref="A1.T7.2.2.2.2.2.2.m2.1.1.3.cmml">u</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T7.2.2.2.2.2.2.m2.1b"><apply id="A1.T7.2.2.2.2.2.2.m2.1.1.cmml" xref="A1.T7.2.2.2.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="A1.T7.2.2.2.2.2.2.m2.1.1.1.cmml" xref="A1.T7.2.2.2.2.2.2.m2.1.1">subscript</csymbol><ci id="A1.T7.2.2.2.2.2.2.m2.1.1.2.cmml" xref="A1.T7.2.2.2.2.2.2.m2.1.1.2">𝐼</ci><ci id="A1.T7.2.2.2.2.2.2.m2.1.1.3.cmml" xref="A1.T7.2.2.2.2.2.2.m2.1.1.3">𝑢</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.2.2.2.2.2.2.m2.1c">I_{u}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.2.2.2.2.2.2.m2.1d">italic_I start_POSTSUBSCRIPT italic_u end_POSTSUBSCRIPT</annotation></semantics></math>}. Please note that these two images are not necessarily the complete operation trajectories, they may only be part of the continuous operation.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.6.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.4.4.6.1.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.4.4.6.1.1.1">
<span class="ltx_p" id="A1.T7.4.4.6.1.1.1.1" style="width:426.8pt;">Although the task shown in the video may not be exactly the same as the task the user needs to complete, there is a strong correlation between the two. So the user is referring to the operation in the video to complete this task.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.7.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.4.4.7.2.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.4.4.7.2.1.1">
<span class="ltx_p" id="A1.T7.4.4.7.2.1.1.1" style="width:426.8pt;">Now you need to determine which frame of the video the user is in after the device is operated. You need to use a number to represent it. If the device is in the state between two frames, the previous frame is output.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.8.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.4.4.8.3.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.4.4.8.3.1.1">
<span class="ltx_p" id="A1.T7.4.4.8.3.1.1.1" style="width:426.8pt;">If the device is not in any frame of the video, please output the number 0 to indicate an operation error and generate an error cause analysis.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.9.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.4.4.9.4.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.4.4.9.4.1.1">
<span class="ltx_p" id="A1.T7.4.4.9.4.1.1.1" style="width:426.8pt;">You need to output in the following json format:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.10.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.4.4.10.5.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.4.4.10.5.1.1">
<span class="ltx_p" id="A1.T7.4.4.10.5.1.1.1" style="width:426.8pt;">{"Thought": Your thought of current question, "Frame": a number, "Analysis": If Frame is 0, generate an error cause analysis, otherwise output null, "Need_Back": If Frame is 0, you need to think about how to get back on track. If you need to return to the previous page, please output true. If you need to continue to perform an operation on the current page to get back on track, please output false. If Frame is not 0, please output False directly.}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.11.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.4.4.11.6.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.4.4.11.6.1.1">
<span class="ltx_p" id="A1.T7.4.4.11.6.1.1.1" style="width:426.8pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.4.11.6.1.1.1.1">User</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.12.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.4.4.12.7.1" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.4.4.12.7.1.1">
<span class="ltx_p" id="A1.T7.4.4.12.7.1.1.1" style="width:426.8pt;">Here are the video and operation:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_b" id="A1.T7.4.4.4.2" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.4.4.4.2.2">
<span class="ltx_p" id="A1.T7.4.4.4.2.2.2" style="width:426.8pt;">&lt;image: <math alttext="V_{w}" class="ltx_Math" display="inline" id="A1.T7.3.3.3.1.1.1.m1.1"><semantics id="A1.T7.3.3.3.1.1.1.m1.1a"><msub id="A1.T7.3.3.3.1.1.1.m1.1.1" xref="A1.T7.3.3.3.1.1.1.m1.1.1.cmml"><mi id="A1.T7.3.3.3.1.1.1.m1.1.1.2" xref="A1.T7.3.3.3.1.1.1.m1.1.1.2.cmml">V</mi><mi id="A1.T7.3.3.3.1.1.1.m1.1.1.3" xref="A1.T7.3.3.3.1.1.1.m1.1.1.3.cmml">w</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T7.3.3.3.1.1.1.m1.1b"><apply id="A1.T7.3.3.3.1.1.1.m1.1.1.cmml" xref="A1.T7.3.3.3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T7.3.3.3.1.1.1.m1.1.1.1.cmml" xref="A1.T7.3.3.3.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T7.3.3.3.1.1.1.m1.1.1.2.cmml" xref="A1.T7.3.3.3.1.1.1.m1.1.1.2">𝑉</ci><ci id="A1.T7.3.3.3.1.1.1.m1.1.1.3.cmml" xref="A1.T7.3.3.3.1.1.1.m1.1.1.3">𝑤</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.3.3.3.1.1.1.m1.1c">V_{w}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.3.3.3.1.1.1.m1.1d">italic_V start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT</annotation></semantics></math>&gt;&lt;image: <math alttext="D_{i}" class="ltx_Math" display="inline" id="A1.T7.4.4.4.2.2.2.m2.1"><semantics id="A1.T7.4.4.4.2.2.2.m2.1a"><msub id="A1.T7.4.4.4.2.2.2.m2.1.1" xref="A1.T7.4.4.4.2.2.2.m2.1.1.cmml"><mi id="A1.T7.4.4.4.2.2.2.m2.1.1.2" xref="A1.T7.4.4.4.2.2.2.m2.1.1.2.cmml">D</mi><mi id="A1.T7.4.4.4.2.2.2.m2.1.1.3" xref="A1.T7.4.4.4.2.2.2.m2.1.1.3.cmml">i</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T7.4.4.4.2.2.2.m2.1b"><apply id="A1.T7.4.4.4.2.2.2.m2.1.1.cmml" xref="A1.T7.4.4.4.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="A1.T7.4.4.4.2.2.2.m2.1.1.1.cmml" xref="A1.T7.4.4.4.2.2.2.m2.1.1">subscript</csymbol><ci id="A1.T7.4.4.4.2.2.2.m2.1.1.2.cmml" xref="A1.T7.4.4.4.2.2.2.m2.1.1.2">𝐷</ci><ci id="A1.T7.4.4.4.2.2.2.m2.1.1.3.cmml" xref="A1.T7.4.4.4.2.2.2.m2.1.1.3">𝑖</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.4.4.4.2.2.2.m2.1c">D_{i}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.4.4.4.2.2.2.m2.1d">italic_D start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT</annotation></semantics></math>&gt;</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 7 shows the prompt given to the video agent in the Mobile-Agent-V framework.  The prompt instructs the agent to analyze a video of a user performing a mobile task and two screenshots representing the device state before and after a single user action. The agent must determine which frame in the video corresponds to the current state of the device, indicating if the action aligns with the video demonstration. If there's a mismatch (the device isn't in any of the video frames), the agent must output 0, analyze the error, and suggest whether to return to the previous screen or continue from the current screen.
> <details>
> <summary>read the caption</summary>
> Table 7: The prompt for video agent.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.17110/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17110/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17110/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17110/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17110/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17110/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17110/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17110/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17110/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17110/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17110/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17110/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17110/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17110/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17110/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17110/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}