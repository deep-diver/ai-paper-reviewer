---
title: "V2V-LLM: Vehicle-to-Vehicle Cooperative Autonomous Driving with Multi-Modal Large Language Models"
summary: "V2V-LLM leverages multi-modal LLMs for safer cooperative autonomous driving by fusing perception data from multiple vehicles, answering driving-related questions, and improving trajectory planning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Autonomous Vehicles", "🏢 NVIDIA",]
showSummary: true
date: 2025-02-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.09980 {{< /keyword >}}
{{< keyword icon="writer" >}} Hsu-kuang Chiu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.09980" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.09980" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.09980/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current autonomous driving systems heavily rely on individual vehicle sensors, leading to safety issues when sensors malfunction or are occluded.  Cooperative perception methods using vehicle-to-vehicle communication improve this but are largely limited to detection and tracking, leaving overall cooperative planning performance underexplored.  This paper aims to address these limitations.

The paper proposes V2V-LLM, a novel method that integrates a large language model (LLM) into vehicle-to-vehicle cooperative autonomous driving.  It introduces a new dataset (V2V-QA) for this problem setting and benchmarks V2V-LLM against baseline methods with various fusion approaches.  **Results show that V2V-LLM effectively fuses perception information from multiple vehicles and outperforms other methods in critical tasks like notable object identification and planning**, paving the way for safer and more efficient autonomous driving.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel problem setting is proposed that integrates LLMs into cooperative autonomous driving. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A new benchmark dataset (V2V-QA) is created for evaluating LLM-based cooperative autonomous driving approaches. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed V2V-LLM method shows promising results, outperforming other baseline methods in key tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because **it introduces a novel problem setting for cooperative autonomous driving using LLMs**, which is a significant advancement in the field.  It also presents **a new benchmark dataset (V2V-QA) and a strong baseline method (V2V-LLM)**, which will allow other researchers to easily compare their methods. Lastly, it opens up **new research avenues** for improving safety and efficiency of autonomous driving systems.

------
#### Visual Insights



![](https://arxiv.org/html/2502.09980/x1.png)

> 🔼 This figure illustrates the system architecture of V2V-LLM, a novel approach to cooperative autonomous driving that leverages large language models (LLMs).  Multiple connected autonomous vehicles (CAVs) simultaneously share their perception data (e.g., sensor readings, object detections) with a central LLM.  Any CAV can then query the LLM in natural language about aspects of the driving environment, such as potential hazards or optimal trajectories. The LLM processes the aggregated perception data from all CAVs to answer the query, providing helpful information to improve driving safety and decision-making.  This cooperative perception system aims to enhance the reliability of autonomous driving, especially in situations where individual vehicle sensors may be unreliable or limited.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of our problem setting of LLM-based cooperative autonomous driving. All CAVs share their perception information with the LLM. Any CAV can ask the LLM a question to obtain useful information for driving safety.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S1.T1.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S1.T1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Dataset</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">Publication</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"># CAVs</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">Sim/Real</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S1.T1.2.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"># Frames</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S1.T1.2.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"># QA</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S1.T1.2.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"># QA/frame</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">Point Cloud</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">Planning</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S1.T1.2.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.2.2.2.1.1" style="font-size:70%;">AD</span></td>
<td class="ltx_td ltx_border_tt" id="S1.T1.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S1.T1.2.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S1.T1.2.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S1.T1.2.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S1.T1.2.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S1.T1.2.2.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S1.T1.2.2.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S1.T1.2.2.2.9" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.3.3">
<td class="ltx_td ltx_align_left" id="S1.T1.2.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">NuScenes <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.3.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">CVPR 2020</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">400K</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.3.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.3.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.3.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td" id="S1.T1.2.3.3.9" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.4.4">
<td class="ltx_td ltx_align_left" id="S1.T1.2.4.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Waymo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.4.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">CVPR 2020</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.4.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">200K</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.4.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.4.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td" id="S1.T1.2.4.4.9" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.5.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.2.5.5.1.1" style="font-size:70%;">Cooperative perception in AD</span></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.5.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.5.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.5.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.5.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.5.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.5.5.8" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.5.5.9" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.6.6">
<td class="ltx_td ltx_align_left" id="S1.T1.2.6.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">OPV2V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.6.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">ICRA 2022</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.6.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">2-7</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.6.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">Sim</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.6.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">11K</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.6.6.7" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.6.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td" id="S1.T1.2.6.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.7.7">
<td class="ltx_td ltx_align_left" id="S1.T1.2.7.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">V2XSet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.7.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">ECCV 2022</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.7.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">2-5</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.7.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">Sim</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.7.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">11K</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.7.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.7.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td" id="S1.T1.2.7.7.9" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.8.8">
<td class="ltx_td ltx_align_left" id="S1.T1.2.8.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">V2V4Real <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.8.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">CVPR 2023</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.8.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.8.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.8.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">20K<sup class="ltx_sup" id="S1.T1.2.8.8.5.1">†</sup>
</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.8.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.8.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.8.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td" id="S1.T1.2.8.8.9" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.9.9">
<td class="ltx_td ltx_align_left" id="S1.T1.2.9.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">V2X-Real <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a>]</cite><sup class="ltx_sup" id="S1.T1.2.9.9.1.1">‡</sup>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.9.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">ECCV 2024</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.9.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.9.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.9.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">33K</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.9.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.9.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.9.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td" id="S1.T1.2.9.9.9" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.10.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.10.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.2.10.10.1.1" style="font-size:70%;">LLM-based AD</span></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.10.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.10.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.10.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.10.10.5" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.10.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.10.10.7" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.10.10.8" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.2.10.10.9" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.11.11">
<td class="ltx_td ltx_align_left" id="S1.T1.2.11.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">NuScenes-QA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.11.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">AAAI 2024</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.11.11.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.11.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.11.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">34K</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.11.11.6" style="padding-left:4.0pt;padding-right:4.0pt;">460K</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.11.11.7" style="padding-left:4.0pt;padding-right:4.0pt;">13.5</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.11.11.8" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td" id="S1.T1.2.11.11.9" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.12.12">
<td class="ltx_td ltx_align_left" id="S1.T1.2.12.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">Lingo-QA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.12.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">ECCV 2024</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.12.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.12.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.12.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">28K</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.12.12.6" style="padding-left:4.0pt;padding-right:4.0pt;">420K</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.12.12.7" style="padding-left:4.0pt;padding-right:4.0pt;">15.3</td>
<td class="ltx_td" id="S1.T1.2.12.12.8" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.12.12.9" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.13.13">
<td class="ltx_td ltx_align_left" id="S1.T1.2.13.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">MAPLM-QA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.13.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">CVPR 2024</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.13.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.13.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.13.13.5" style="padding-left:4.0pt;padding-right:4.0pt;">14K</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.13.13.6" style="padding-left:4.0pt;padding-right:4.0pt;">61K</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.13.13.7" style="padding-left:4.0pt;padding-right:4.0pt;">4.4</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.13.13.8" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td" id="S1.T1.2.13.13.9" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.14.14">
<td class="ltx_td ltx_align_left" id="S1.T1.2.14.14.1" style="padding-left:4.0pt;padding-right:4.0pt;">DriveLM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.14.14.2" style="padding-left:4.0pt;padding-right:4.0pt;">ECCV 2024</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.14.14.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.14.14.4" style="padding-left:4.0pt;padding-right:4.0pt;">Sim+Real</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.14.14.5" style="padding-left:4.0pt;padding-right:4.0pt;">69K</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.14.14.6" style="padding-left:4.0pt;padding-right:4.0pt;">2M</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.14.14.7" style="padding-left:4.0pt;padding-right:4.0pt;">29.1</td>
<td class="ltx_td" id="S1.T1.2.14.14.8" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.14.14.9" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.15.15">
<td class="ltx_td ltx_align_left" id="S1.T1.2.15.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">TOKEN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.15.15.2" style="padding-left:4.0pt;padding-right:4.0pt;">CoRL 2024</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.15.15.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.15.15.4" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.15.15.5" style="padding-left:4.0pt;padding-right:4.0pt;">28K</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.15.15.6" style="padding-left:4.0pt;padding-right:4.0pt;">434K</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.15.15.7" style="padding-left:4.0pt;padding-right:4.0pt;">15.5</td>
<td class="ltx_td" id="S1.T1.2.15.15.8" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.15.15.9" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.16.16">
<td class="ltx_td ltx_align_left" id="S1.T1.2.16.16.1" style="padding-left:4.0pt;padding-right:4.0pt;">OmniDrive-nuScenes <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.16.16.2" style="padding-left:4.0pt;padding-right:4.0pt;">arXiv 2024</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.16.16.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.16.16.4" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.16.16.5" style="padding-left:4.0pt;padding-right:4.0pt;">34K</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.16.16.6" style="padding-left:4.0pt;padding-right:4.0pt;">450K</td>
<td class="ltx_td ltx_align_right" id="S1.T1.2.16.16.7" style="padding-left:4.0pt;padding-right:4.0pt;">13.2</td>
<td class="ltx_td" id="S1.T1.2.16.16.8" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.16.16.9" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.17.17">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S1.T1.2.17.17.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.17.17.1.1">V2V-QA (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.2.17.17.2" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.2.17.17.3" style="padding-left:4.0pt;padding-right:4.0pt;">2</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.2.17.17.4" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_t" id="S1.T1.2.17.17.5" style="padding-left:4.0pt;padding-right:4.0pt;">18K</td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_t" id="S1.T1.2.17.17.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.17.17.6.1">577K</span></td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_t" id="S1.T1.2.17.17.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.17.17.7.1">31.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.2.17.17.8" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.2.17.17.9" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 compares the V2V-QA dataset with other relevant autonomous driving datasets.  It details key characteristics including the number of autonomous vehicles involved in data collection (CAVs), whether the data is simulated or from real-world driving scenarios (Sim/Real), the total number of frames, the number of question-answer pairs, the number of questions per frame, whether point cloud data is included, and whether planning information is provided.  Note that the frame count for V2V4Real includes the validation set which is not publicly available and that V2X-Real only made a subset of its data public.
> <details>
> <summary>read the caption</summary>
> Table 1:  Comparison between our V2V-QA and recent related Autonomous Driving (AD) datasets. † This number of frames includes the validation split of V2V4Real [53], which is not released to the public. We build our V2V-QA upon the released training and testing splits of V2V4Real [53]. ‡ V2X-Real [48] only releases a subset of data to the public.
> </details>





### In-depth insights


#### V2V-LLM Overview
A hypothetical 'V2V-LLM Overview' section would delve into the architecture and functionality of the Vehicle-to-Vehicle Large Language Model (V2V-LLM).  It would likely begin by explaining how the system leverages **multi-modal inputs**, combining data from various sensors (LiDAR, cameras) of multiple autonomous vehicles (CAVs).  The core of the overview would describe the **LLM's role in fusing this data**, highlighting its ability to integrate diverse perception streams and answer driving-related questions.  Key features, such as its capacity for **grounding, object identification, and planning**, would be elaborated upon, showcasing the system's decision-making capabilities within a cooperative environment.  Finally, a discussion of the **advantages of V2V-LLM** over traditional methods—like improved safety and reliability due to the fusion of multiple perspectives—would conclude this section.  It would emphasize the novelty of using an LLM for cooperative driving and underscore the potential for increased safety and efficiency in autonomous vehicle systems.

#### Cooperative Perception
Cooperative perception in autonomous driving leverages the combined sensor data from multiple vehicles to achieve a more robust and complete understanding of the environment than relying on individual vehicle sensors alone. This is particularly crucial in scenarios with sensor occlusion or malfunction, where individual vehicles may fail to detect important objects or events.  **Communication protocols** are key to enabling cooperative perception, with vehicles sharing sensor data, typically using V2V (vehicle-to-vehicle) communication.  **Data fusion techniques** then integrate this diverse information, addressing challenges like differing sensor modalities, varying data rates, and potential inconsistencies across sources.  The resulting enhanced perception improves the accuracy and reliability of object detection, tracking, and scene understanding. This enhanced situational awareness directly benefits the downstream tasks of planning and decision-making, leading to **safer and more efficient autonomous driving**.  Future research directions include exploring more efficient communication strategies, developing robust fusion algorithms adaptable to diverse data quality and types, and investigating the security and privacy implications of sharing data between autonomous vehicles.

#### V2V-QA Dataset
The V2V-QA dataset represents a **significant contribution** to the field of cooperative autonomous driving.  Its novelty lies in the integration of a large language model (LLM) within a cooperative perception framework, addressing a gap in existing datasets that primarily focus on perception tasks.  By creating question-answer pairs around grounding, notable object identification, and planning scenarios, V2V-QA **provides a comprehensive benchmark** for evaluating LLM-based cooperative driving systems. The dataset's utilization of real-world data from V2V4Real enhances its practical relevance and allows for more realistic testing. The **diversity of question types** is also crucial, as it compels models to demonstrate understanding of context, spatial reasoning, and predictive capabilities crucial for safe and robust autonomous systems. The careful design of V2V-QA thus makes it a powerful tool for advancing research in this rapidly evolving area.

#### LLM Fusion Method
The concept of an "LLM Fusion Method" in the context of vehicle-to-vehicle (V2V) cooperative autonomous driving is a novel and powerful approach.  It leverages the strengths of Large Language Models (LLMs) to integrate and reason over multi-modal data from multiple vehicles. Unlike traditional fusion techniques that primarily focus on low-level feature concatenation or aggregation, the LLM acts as a high-level reasoning engine.  **This allows the system to go beyond simple sensor fusion, incorporating contextual understanding, common-sense reasoning, and even uncertainty management into the decision-making process.** The LLM's ability to handle diverse data types (e.g., raw sensor readings, object detections, and even natural language descriptions) is crucial for robust and safe cooperative driving, particularly in scenarios with sensor occlusions or malfunctions.  **The key is the LLM's capacity to learn complex relationships and patterns from vast amounts of training data,** enabling it to synthesize information from various sources effectively.  This approach potentially leads to improved safety and efficiency compared to methods relying solely on low-level data fusion strategies.  **However, challenges associated with LLM's computational cost and explainability must be carefully addressed.**  Moreover, data requirements for effective training are significant, demanding substantial and diverse V2V datasets.  Further research on efficient LLM architectures and training methods tailored for autonomous driving is essential for practical implementation.

#### Future Work
Future research directions stemming from this V2V-LLM model could explore several promising avenues. **Expanding the dataset to encompass more diverse driving scenarios** and a wider range of cooperative driving tasks would significantly enhance the model's robustness and generalizability.  **Incorporating HD map data** into the model's input could significantly improve the accuracy and safety of the generated trajectories, especially in complex intersections and challenging road conditions. Investigating **alternative LLM architectures** better suited for multi-modal fusion and real-time processing within the context of autonomous driving is also essential for optimizing performance.  Finally, a detailed analysis of the model's limitations and failure cases, as identified in the qualitative evaluation, should inform the development of strategies for error mitigation and enhanced safety protocols.  The integration of explainable AI techniques could provide valuable insights into the model's decision-making process, improving trust and facilitating broader adoption.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.09980/x2.png)

> 🔼 This figure shows an example of a question-answer pair in the V2V-QA dataset for the task of grounding at a reference location.  The question asks if there is anything at a specific location (x1, y1). The answer confirms the presence of a car and provides its center location.  This task assesses the model's ability to identify objects at specified coordinates, which is crucial for safe and reliable autonomous driving.
> <details>
> <summary>read the caption</summary>
> (a) Q1: Grounding at a reference location.
> </details>



![](https://arxiv.org/html/2502.09980/x3.png)

> 🔼 This figure demonstrates a question-answering pair related to grounding in a cooperative autonomous driving scenario.  The question asks whether any objects are present behind a specific reference object located at a particular location. The image visually depicts the scene, highlighting the reference object and the objects located behind it. This illustrates how the system uses multi-modal input from multiple vehicles to answer complex queries involving spatial reasoning and object occlusion.
> <details>
> <summary>read the caption</summary>
> (b) Q2: Grounding behind a reference object at a location.
> </details>



![](https://arxiv.org/html/2502.09980/x4.png)

> 🔼 This figure demonstrates a type of question-answer pair from the V2V-QA dataset.  The question asks if there is anything behind a reference object in a specific direction. The figure shows a visual representation of the scene, including the reference object, a car behind it in the specified direction, and the predicted location based on the question. This illustrates the challenge of grounding questions in cooperative autonomous driving, where the visibility of objects for each vehicle might be limited, and relying on information from multiple vehicles is crucial.
> <details>
> <summary>read the caption</summary>
> (c) Q3: Grounding behind a reference object in a direction.
> </details>



![](https://arxiv.org/html/2502.09980/x5.png)

> 🔼 This figure shows an example of the 'Notable Object Identification' question-answer pair in the V2V-QA dataset.  The question asks whether there are any notable objects that the autonomous vehicle needs to be aware of near its planned trajectory. The answer from the LLM includes the location of nearby objects of interest, providing context to inform the vehicle's planning system. This example demonstrates the use of multi-modal information from multiple connected autonomous vehicles (CAVs) to inform safe and efficient driving decisions.
> <details>
> <summary>read the caption</summary>
> (d) Q4: Notable object identification.
> </details>



![](https://arxiv.org/html/2502.09980/x6.png)

> 🔼 This figure shows an example of a planning question-answer pair in the V2V-QA dataset.  An autonomous vehicle (CAV) asks the central LLM:  'I am CAV. What is the suggested future trajectory...?'.  The LLM considers the fused perception information from multiple CAVs and generates an answer showing a suggested trajectory to avoid collisions.
> <details>
> <summary>read the caption</summary>
> (e) Q5: Planning.
> </details>



![](https://arxiv.org/html/2502.09980/x7.png)

> 🔼 This figure illustrates the five question-answering (QA) pair types included in the V2V-QA dataset.  These QAs are designed for cooperative driving scenarios.  The five types are: (a) Grounding at a reference location: Asks whether an object exists at a specified location. (b) Grounding behind a reference object at a location:  Asks whether an object is behind another object at a specific location. (c) Grounding behind a reference object in a direction: Asks whether an object exists in a specified direction behind a reference object. (d) Notable object identification: Asks to identify notable objects near planned future trajectories. (e) Planning: Asks for suggested future trajectories to avoid collisions. The arrows pointing toward the LLM in the diagram highlight that all connected autonomous vehicles (CAVs) share perception data with the LLM, enabling cooperative responses.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Illustration of V2V-QA’s 5555 types of QA pairs. The arrows pointing at LLM indicate the perception data from CAVs.
> </details>



![](https://arxiv.org/html/2502.09980/x8.png)

> 🔼 The figure illustrates the architecture of the Vehicle-to-Vehicle Large Language Model (V2V-LLM) for cooperative autonomous driving.  It shows multiple connected autonomous vehicles (CAVs) each independently extracting scene-level feature maps and object-level feature vectors from their LiDAR point cloud data using a 3D object detector. This information is then sent to a central Large Language Model (LLM). The LLM fuses the perception data from all CAVs and answers driving-related questions (provided as language input) using a projector network to align the visual and language embeddings. The final output is a natural language answer.
> <details>
> <summary>read the caption</summary>
> Figure 3: Model diagram of our proposed V2V-LLM for cooperative autonomous driving.
> </details>



![](https://arxiv.org/html/2502.09980/x9.png)

> 🔼 This figure shows the architecture of the baseline method with no fusion.  In this approach, only a single CAV's LiDAR point cloud is fed to a 3D object detector to extract scene-level feature maps and object-level feature vectors. These are then directly used as the input to the LLM.  This method is expected to perform poorly compared to those using multi-CAV data because it ignores the sensor inputs from other CAVs.
> <details>
> <summary>read the caption</summary>
> (a) No fusion
> </details>



![](https://arxiv.org/html/2502.09980/x10.png)

> 🔼 This figure shows the early fusion method used as a baseline in the paper.  In early fusion, LiDAR point clouds from two CAVs (Connected Autonomous Vehicles) are merged before being processed by a 3D object detector. The resulting scene-level feature map and object-level feature vectors are then used as the visual input for the LLM (Large Language Model). This approach aims to leverage all sensor data but may be less efficient for large-scale deployments due to the high communication bandwidth required.
> <details>
> <summary>read the caption</summary>
> (b) Early fusion
> </details>



![](https://arxiv.org/html/2502.09980/x11.png)

> 🔼 This figure shows the intermediate fusion approach used as a baseline method in the paper.  It depicts how feature maps from multiple connected autonomous vehicles (CAVs) are merged. Unlike early fusion which merges raw LiDAR data from all CAVs before feature extraction, intermediate fusion first extracts scene-level feature maps and object-level feature vectors from each CAV individually.  Then, these features are combined using techniques like attention mechanisms (as seen in works cited [50, 51, 52]) to produce a unified representation for the LLM. This approach offers a balance between the computational cost of early fusion and the potential loss of information inherent in no fusion.
> <details>
> <summary>read the caption</summary>
> (c) Intermediate fusion [50, 51, 52]
> </details>



![](https://arxiv.org/html/2502.09980/x12.png)

> 🔼 This figure illustrates the different feature extraction methods used in the baseline models for cooperative autonomous driving. It compares three approaches: no fusion, early fusion, and intermediate fusion.  The 'no fusion' approach processes each vehicle's LiDAR data independently, using a separate 3D object detector for each. The 'early fusion' approach merges the LiDAR point clouds from all vehicles before processing them with a single 3D object detector.  The 'intermediate fusion' approach uses a cooperative detector (like those explored in prior works) to process the data from each vehicle before passing features to the LLM. Each approach highlights a different way of combining data from multiple vehicles, demonstrating varying levels of computation and communication complexity.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Feature encoder diagrams of the baseline methods from different fusion approaches.
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q1_x.png)

> 🔼 This figure visualizes the performance of the V2V-LLM model on the grounding subtask of the V2V-QA dataset.  Grounding involves identifying objects at specific locations.  Each row represents a different sample from the testing set. Magenta circles indicate the location specified in the question (query location).  Yellow crosses show the location predicted by the V2V-LLM model. Green circles indicate the ground truth location of the relevant object. The figure demonstrates the model's ability to accurately locate objects based on textual queries, highlighting instances where predictions align well with ground truth, while showing potential limitations of the model where the prediction is less accurate.
> <details>
> <summary>read the caption</summary>
> Figure 5: V2V-LLM’s grounding results on V2V-QA’s testing split. Magenta ∘\circ∘: reference locations in questions. Yellow +++: model output locations. Green ∘\circ∘: ground-truth answers.
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q1_y.png)

> 🔼 Figure 6 presents a qualitative analysis of the V2V-LLM model's performance on notable object identification and trajectory planning tasks within the V2V-QA testing dataset. The top half illustrates the notable object identification results.  Magenta curves represent the planned future trajectories from the questions. Green circles denote the ground truth locations of notable objects. Yellow and cyan markings indicate the identified objects by V2V-LLM, distinguishing between the ego vehicle (CAV_EGO) and another vehicle (CAV_1). The bottom half showcases planning results.  Green lines depict ground truth future trajectories, while yellow and cyan curves show trajectories generated by V2V-LLM for CAV_EGO and CAV_1, respectively.
> <details>
> <summary>read the caption</summary>
> Figure 6: V2V-LLM’s notable object identification and planning results on V2V-QA’s testing split. For notable object identification, Magenta curve: planned future trajectories in questions. Green ∘\circ∘: ground-truth notable object locations. Yellow +++ and Cyan ×\times×: model identification outputs corresponding to CAV_EGO and CAV_1, respectively. For planning, Green line: future trajectories in ground-truth answers. Yellow curve and Cyan curve: model planning outputs corresponding to CAV_EGO and CAV_1, respectively.
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q1_dist.png)

> 🔼 This figure shows the distribution of ground-truth answer locations relative to the CAV (Connected Autonomous Vehicle) in V2V-QA's Q1, which is the grounding task at a reference location. The figure consists of four subplots: (a) shows the distribution of x-coordinates (meters), (b) shows the distribution of y-coordinates (meters), (c) shows the distribution of distances (meters) between the ground-truth answers and the CAV, and (d) shows the distribution of angles (degrees) between the ground-truth answers and the CAV.  The x-axis represents the coordinates and the distance, while the y-axis represents the probability density.  The plots illustrate the spatial distribution of objects relevant to the grounding questions within the context of the autonomous driving scenario.
> <details>
> <summary>read the caption</summary>
> (a) x (meters)
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q1_angle.png)

> 🔼 This figure shows the distribution of ground-truth answer locations' y-coordinate relative to the CAV in V2V-QA's Q2, which is the question type of grounding behind a reference object at a location. The y-axis represents the probability density, and the x-axis represents the y-coordinate in meters.  The distribution is shown in a histogram with different color representing different ranges of distances. The figure helps to understand the spatial distribution of the answers relative to the CAV for this specific question type.
> <details>
> <summary>read the caption</summary>
> (b) y (meters)
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q2_x.png)

> 🔼 This figure shows the distribution of ground-truth answer locations relative to the CAV in V2V-QA's Q3: Grounding behind a reference object in a direction.  The x-axis represents the x-coordinate in meters, where positive x is in the direction the CAV is facing, and the y-axis is the y-coordinate in meters, with positive y to the right of the CAV. The plot shows the probability density function of the distance (in meters) between the CAV's location and the locations of answers. The distribution of the angle (in degrees) between the CAV's front direction and the direction of answer locations is also displayed. The distributions are shown in the same order as in Fig. 8.
> <details>
> <summary>read the caption</summary>
> (c) distance (meters)
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q2_y.png)

> 🔼 This histogram shows the distribution of the angle (in degrees) of the ground truth answer locations relative to the CAV (Connected Autonomous Vehicle) in the V2V-QA (Vehicle-to-Vehicle Question Answering) dataset for question type Q3: Grounding behind a reference object in a direction. The angle is calculated based on the relative position of the answer location with respect to the reference object's position from the perspective of the CAV.
> <details>
> <summary>read the caption</summary>
> (d) angle (degrees)
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q2_dist.png)

> 🔼 This figure visualizes the distribution of ground truth answer locations relative to the autonomous vehicle (CAV) in the V2V-QA dataset's Q1 task, which focuses on grounding at a reference location.  The plots illustrate the distribution along the x-axis (front-facing direction of the CAV), the y-axis (right-facing direction of the CAV), the distance from the CAV, and the angle relative to the CAV. These distributions provide insights into the spatial characteristics of the ground truth answers within the dataset for this specific task, showing how they are distributed relative to the CAV's perspective.
> <details>
> <summary>read the caption</summary>
> Figure 7:  The distribution of ground-truth answer locations relative to CAV in V2V-QA’s Q1: Grounding at a reference location.
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q2_angle.png)

> 🔼 This figure shows the distribution of ground-truth answer locations relative to the CAV (Connected Autonomous Vehicle) in the V2V-QA dataset's Q1 task (Grounding at a reference location).  The x-axis represents the x-coordinate (meters) in the local coordinate system of the CAV, where x=0 is the CAV's front direction. Similarly, the y-axis represents the y-coordinate (meters), where y=0 is the CAV's right direction. The figure contains four subplots. (a) shows the distribution of x-coordinates, (b) shows the distribution of y-coordinates, (c) shows the distribution of distances (meters) between the CAV and the answer locations, and (d) shows the distribution of angles (degrees) of the answer locations relative to the CAV's front direction. This visualization helps to understand the spatial characteristics of the question-answer pairs in this specific grounding task.
> <details>
> <summary>read the caption</summary>
> (a) x (meters)
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q3_x.png)

> 🔼 This figure shows the distribution of ground-truth answer locations' y-coordinates relative to the CAV (Connected Autonomous Vehicle) in the V2V-QA dataset.  The y-axis represents the probability density, and the x-axis shows the y-coordinate in meters. The figure helps illustrate the spatial distribution of the answers in the dataset, indicating the range and frequency of y-coordinates of the answers relative to the CAVs.  This is crucial for understanding the data distribution and evaluating the performance of models on various spatial scenarios.
> <details>
> <summary>read the caption</summary>
> (b) y (meters)
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q3_y.png)

> 🔼 This figure shows the distribution of ground-truth answer locations relative to the CAV in V2V-QA's Q3: Grounding behind a reference object in a direction.  The x-axis represents the distance (in meters) between the CAV and the ground-truth answer location. The histogram visually represents the frequency or probability density of different distances observed in the dataset.
> <details>
> <summary>read the caption</summary>
> (c) distance (meters)
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q3_dist.png)

> 🔼 This histogram shows the distribution of the angles of ground-truth answer locations relative to the CAV (Connected Autonomous Vehicle) in the V2V-QA (Vehicle-to-Vehicle Question Answering) dataset for question type Q3: Grounding behind a reference object in a direction.  The angle is calculated as the direction of the ground truth answer location with respect to the CAV's heading.
> <details>
> <summary>read the caption</summary>
> (d) angle (degrees)
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q3_angle.png)

> 🔼 This figure shows the distribution of ground truth answer locations relative to the autonomous vehicle (CAV) in the V2V-QA dataset's Q2 task, which is 'Grounding behind a reference object at a location'.  The distributions are visualized in four subplots showing the x-coordinate, y-coordinate, distance, and angle of the ground truth answer locations relative to the CAV.  This provides insights into the spatial characteristics of the answers provided to this specific type of question within the dataset. The distributions help illustrate the range and frequency of various locations of objects behind reference objects, useful for understanding the complexity and variability of the cooperative perception task.
> <details>
> <summary>read the caption</summary>
> Figure 8:  The distribution of ground-truth answer locations relative to CAV in V2V-QA’s Q2: Grounding behind a reference object at a location.
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q4_x.png)

> 🔼 This figure visualizes the distribution of ground-truth answer locations relative to the CAV (connected autonomous vehicle) in V2V-QA's Q1 (Grounding at a reference location). The x-axis represents the x-coordinate (meters) and the y-axis represents the probability density. Subfigure (a) displays the distribution along the x-axis (front direction of the vehicle), (b) displays the distribution along the y-axis (right direction of the vehicle), (c) shows the distribution of distances (meters) between the ground truth locations and the CAV, and (d) presents the angular distribution (degrees) of the locations relative to the CAV.  These distributions help characterize the spatial characteristics of the grounding task in the dataset.
> <details>
> <summary>read the caption</summary>
> (a) x (meters)
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q4_y.png)

> 🔼 This histogram shows the distribution of the y-coordinates of ground-truth answer locations relative to the CAV (Connected Autonomous Vehicle) in the V2V-QA dataset's Q2 question type.  The y-axis represents the probability density, and the x-axis represents the y-coordinate in meters.  This visualization helps to understand the spatial distribution of objects relative to the CAV's position when answering grounding questions about objects located behind a reference object at a specific location. The distribution is centered around 0, reflecting the fact that most answers are near the reference object but spread across various Y locations.
> <details>
> <summary>read the caption</summary>
> (b) y (meters)
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q4_dist.png)

> 🔼 This figure shows the distribution of the distances between ground truth answer locations and the locations of the asking CAVs in the V2V-QA's Q3 dataset. The x-axis represents the distance in meters, and the y-axis represents the probability density. The distribution is shown for different perspectives, including the x-coordinate, y-coordinate, distance, and angle. The x-coordinate and y-coordinate show the distribution along the x-axis and y-axis of the CAV's local coordinate system. The distance shows the distribution of the distances between the ground truth answer locations and the asking CAVs. The angle shows the distribution of the angles between the ground truth answer locations and the asking CAVs. The figure helps to understand the spatial distribution of the objects relative to the asking CAVs.
> <details>
> <summary>read the caption</summary>
> (c) distance (meters)
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q4_angle.png)

> 🔼 This histogram shows the distribution of the angle (in degrees) of ground-truth answer locations relative to the CAV (Connected Autonomous Vehicle) in the V2V-QA dataset's Q4: Notable Object Identification task.  The angle is measured as the direction from the CAV to the ground truth answer location.
> <details>
> <summary>read the caption</summary>
> (d) angle (degrees)
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q5_x.png)

> 🔼 This figure shows the distribution of ground truth answer locations relative to the ego vehicle (CAV) for question type Q3 of the V2V-QA dataset.  Q3 questions are of the form: 'Is there anything behind the [direction] object?'  The distributions are visualized for x and y coordinates (in meters), distance from the ego vehicle (in meters), and angle from the ego vehicle’s forward direction (in degrees).  The distributions reveal the spatial spread of objects that satisfy Q3 queries in the dataset, which provides insight into the types of cooperative perception challenges addressed in the dataset and V2V-LLM model.
> <details>
> <summary>read the caption</summary>
> Figure 9:  The distribution of ground-truth answer locations relative to CAV in V2V-QA’s Q3: Grounding behind a reference object in a direction.
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q5_y.png)

> 🔼 This figure shows the distribution of ground-truth answer locations relative to the CAV (connected autonomous vehicle) in V2V-QA's Q1 (Grounding at a reference location).  The figure is composed of four subplots: (a) shows the distribution of x-coordinates (in meters), (b) shows the distribution of y-coordinates (in meters), (c) shows the distribution of distances (in meters) between the CAV and the answer location, and (d) shows the distribution of angles (in degrees) between the CAV's forward direction and the answer location.  Each subplot provides a histogram illustrating the frequency distribution of the respective metric. This visualization helps to understand the spatial characteristics and distribution of the answer locations relative to the CAV.
> <details>
> <summary>read the caption</summary>
> (a) x (meters)
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q5_dist.png)

> 🔼 This figure displays the distribution of ground-truth answer locations along the y-axis relative to the CAV (Connected Autonomous Vehicle) in the V2V-QA dataset.  The y-axis represents the lateral direction, with positive values indicating locations to the right of the CAV and negative values indicating locations to the left. The distribution is shown in a histogram, providing insights into the spatial distribution of objects relevant to the grounding questions in the dataset.
> <details>
> <summary>read the caption</summary>
> (b) y (meters)
> </details>



![](https://arxiv.org/html/2502.09980/extracted/6203597/figure/stats/q5_angle.png)

> 🔼 This figure shows the distribution of the distance between the ground-truth answer locations and the asking CAV's location for question type Q3 (Grounding behind a reference object in a direction) in the V2V-QA dataset. The x-axis represents the distance in meters, and the y-axis represents the probability density. The distribution is shown as a histogram.
> <details>
> <summary>read the caption</summary>
> (c) distance (meters)
> </details>



![](https://arxiv.org/html/2502.09980/x13.png)

> 🔼 This histogram shows the distribution of the angles of ground-truth answer locations relative to the CAV's coordinate system in the V2V-QA's Q3 dataset. The angle is measured in degrees and represents the direction of the answer location with respect to the CAV's forward direction. This visualization helps to understand the spatial distribution of answers relative to the CAV, providing insights into the dataset's characteristics and the challenges involved in cooperative perception tasks.
> <details>
> <summary>read the caption</summary>
> (d) angle (degrees)
> </details>



![](https://arxiv.org/html/2502.09980/x14.png)

> 🔼 This figure visualizes the distribution of ground truth answer locations relative to the ego vehicle (CAV) for question type Q4 in the V2V-QA dataset.  Specifically, it shows how the x and y coordinates (relative to the CAV), the distance from the CAV, and the angle relative to the CAV are distributed for the ground truth answers of question type Q4. This provides insights into the spatial characteristics of the notable objects that the model is expected to identify and helps to understand the difficulty and distribution of the data for this question type.
> <details>
> <summary>read the caption</summary>
> Figure 10:  The distribution of ground-truth answer locations relative to CAV in V2V-QA’s Q4: Notable object identification.
> </details>



![](https://arxiv.org/html/2502.09980/x15.png)

> 🔼 This figure shows the distribution of ground-truth answer locations relative to the CAV (connected autonomous vehicle) in V2V-QA's Q1 (Grounding at a reference location).  The figure consists of four subplots: (a) shows the x-coordinate distribution in meters, (b) shows the y-coordinate distribution in meters, (c) shows the distance distribution in meters, and (d) shows the angle distribution in degrees. Each subplot provides a histogram visualizing the frequency of different values for the corresponding metric. This helps understand the spatial distribution of the objects referenced in the dataset's grounding questions relative to the CAV's perspective.
> <details>
> <summary>read the caption</summary>
> (a) x (meters)
> </details>



![](https://arxiv.org/html/2502.09980/x16.png)

> 🔼 This figure shows the distribution of ground-truth answer locations relative to the CAV in V2V-QA's Q2.  The y-axis represents the probability density, and the x-axis shows the y-coordinate of the ground truth answer location in meters. The figure provides four subplots: (a) x-coordinate distribution, (b) y-coordinate distribution, (c) distance distribution from the CAV to the answer location, and (d) angle distribution of the answer location relative to the CAV's heading.  These distributions are important to understand the characteristics of the dataset and the difficulty of the grounding task, as they show how the relevant information is distributed in the dataset.
> <details>
> <summary>read the caption</summary>
> (b) y (meters)
> </details>



![](https://arxiv.org/html/2502.09980/x17.png)

> 🔼 This figure shows the distribution of the ground-truth answer distances to the asking CAV in V2V-QA's Q3. The distance is calculated from the location of the ground-truth answer to the location of the asking CAV.  The distribution is shown as a histogram. The x-axis represents the distance in meters, and the y-axis represents the probability density.
> <details>
> <summary>read the caption</summary>
> (c) distance (meters)
> </details>



![](https://arxiv.org/html/2502.09980/x18.png)

> 🔼 This histogram shows the distribution of the angle (in degrees) of ground-truth answer locations relative to the CAV (Connected Autonomous Vehicle) in the V2V-QA (Vehicle-to-Vehicle Question Answering) dataset.  The angle is measured from the CAV's forward direction, indicating the orientation of the objects being located relative to the vehicle's heading. This distribution helps illustrate the range of object locations relative to the CAV that the models are tasked with identifying in the dataset and in the experiment.
> <details>
> <summary>read the caption</summary>
> (d) angle (degrees)
> </details>



![](https://arxiv.org/html/2502.09980/x19.png)

> 🔼 This figure visualizes the distribution of ground truth answer locations relative to the ego vehicle (CAV) for the planning questions in the V2V-QA dataset.  Specifically, it shows the distribution of the x-coordinate, y-coordinate, distance, and angle of the ending waypoints from the ground truth trajectories, providing insights into the spatial characteristics of the planning task within the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 11:  The distribution of ground-truth answer locations relative to CAV in V2V-QA’s Q5: Planning.
> </details>



![](https://arxiv.org/html/2502.09980/x20.png)

> 🔼 This figure compares the performance of V2V-LLM and several baseline methods (No Fusion, Early Fusion, AttFuse, V2X-VIT, COBEVT) on the grounding task of the V2V-QA dataset.  The grounding task involves identifying objects at specific locations.  Each row presents a different example. The image shows the point cloud data. Magenta circles indicate the reference location provided in the question.  Yellow plus signs (+) show the location predicted by the model. Green circles show the ground truth location of the object.
> <details>
> <summary>read the caption</summary>
> Figure 12: V2V-LLM and baseline methods’ grounding results on V2V-QA’s testing split. Magenta ∘\circ∘: reference locations in questions. Yellow +++: model output locations. Green ∘\circ∘: ground-truth answers.
> </details>



![](https://arxiv.org/html/2502.09980/x21.png)

> 🔼 Figure 13 presents a comparison of grounding results between the proposed V2V-LLM model and several baseline methods. The task is to identify objects at specified locations within a driving scene, using data from the V2V-QA testing split. The figure visualizes the results by showing LiDAR point cloud data for a section of the driving scene and highlighting relevant objects. Magenta circles denote the reference locations specified in the questions. Yellow plus symbols represent the locations predicted by each method. Ground truth object locations are shown as green circles. This comparison allows for an evaluation of the accuracy and effectiveness of each method in cooperative grounding tasks. In particular, it can assess how well each approach fuses information from multiple vehicles to accurately and reliably identify objects in the driving scene.
> <details>
> <summary>read the caption</summary>
> Figure 13: V2V-LLM and baseline methods’ grounding results on V2V-QA’s testing split. Magenta ∘\circ∘: reference locations in questions. Yellow +++: model output locations. Green ∘\circ∘: ground-truth answers.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.2.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.2.1.1.1"><span class="ltx_text" id="S3.T2.2.1.1.1.1" style="font-size:90%;">QA type</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S3.T2.2.1.1.2"><span class="ltx_text" id="S3.T2.2.1.1.2.1" style="font-size:90%;">Training</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T2.2.1.1.3"><span class="ltx_text" id="S3.T2.2.1.1.3.1" style="font-size:90%;">Testing</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S3.T2.2.1.1.4"><span class="ltx_text" id="S3.T2.2.1.1.4.1" style="font-size:90%;">Total</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.2.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.2.2.1.1"><span class="ltx_text" id="S3.T2.2.2.1.1.1" style="font-size:90%;">Q1</span></th>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T2.2.2.1.2"><span class="ltx_text" id="S3.T2.2.2.1.2.1" style="font-size:90%;">354820</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_tt" id="S3.T2.2.2.1.3"><span class="ltx_text" id="S3.T2.2.2.1.3.1" style="font-size:90%;">121383</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T2.2.2.1.4"><span class="ltx_text" id="S3.T2.2.2.1.4.1" style="font-size:90%;">476203</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.3.2.1"><span class="ltx_text" id="S3.T2.2.3.2.1.1" style="font-size:90%;">Q2</span></th>
<td class="ltx_td ltx_align_right" id="S3.T2.2.3.2.2"><span class="ltx_text" id="S3.T2.2.3.2.2.1" style="font-size:90%;">35700</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T2.2.3.2.3"><span class="ltx_text" id="S3.T2.2.3.2.3.1" style="font-size:90%;">13882</span></td>
<td class="ltx_td ltx_align_right" id="S3.T2.2.3.2.4"><span class="ltx_text" id="S3.T2.2.3.2.4.1" style="font-size:90%;">49582</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.4.3.1"><span class="ltx_text" id="S3.T2.2.4.3.1.1" style="font-size:90%;">Q3</span></th>
<td class="ltx_td ltx_align_right" id="S3.T2.2.4.3.2"><span class="ltx_text" id="S3.T2.2.4.3.2.1" style="font-size:90%;">14339</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T2.2.4.3.3"><span class="ltx_text" id="S3.T2.2.4.3.3.1" style="font-size:90%;">5097</span></td>
<td class="ltx_td ltx_align_right" id="S3.T2.2.4.3.4"><span class="ltx_text" id="S3.T2.2.4.3.4.1" style="font-size:90%;">19436</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.5.4.1"><span class="ltx_text" id="S3.T2.2.5.4.1.1" style="font-size:90%;">Q4</span></th>
<td class="ltx_td ltx_align_right" id="S3.T2.2.5.4.2"><span class="ltx_text" id="S3.T2.2.5.4.2.1" style="font-size:90%;">12290</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T2.2.5.4.3"><span class="ltx_text" id="S3.T2.2.5.4.3.1" style="font-size:90%;">3446</span></td>
<td class="ltx_td ltx_align_right" id="S3.T2.2.5.4.4"><span class="ltx_text" id="S3.T2.2.5.4.4.1" style="font-size:90%;">15736</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.6.5.1"><span class="ltx_text" id="S3.T2.2.6.5.1.1" style="font-size:90%;">Q5</span></th>
<td class="ltx_td ltx_align_right" id="S3.T2.2.6.5.2"><span class="ltx_text" id="S3.T2.2.6.5.2.1" style="font-size:90%;">12290</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T2.2.6.5.3"><span class="ltx_text" id="S3.T2.2.6.5.3.1" style="font-size:90%;">3446</span></td>
<td class="ltx_td ltx_align_right" id="S3.T2.2.6.5.4"><span class="ltx_text" id="S3.T2.2.6.5.4.1" style="font-size:90%;">15736</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.2.7.6.1"><span class="ltx_text" id="S3.T2.2.7.6.1.1" style="font-size:90%;">Total</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.2.7.6.2"><span class="ltx_text" id="S3.T2.2.7.6.2.1" style="font-size:90%;">429439</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T2.2.7.6.3"><span class="ltx_text" id="S3.T2.2.7.6.3.1" style="font-size:90%;">147254</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.2.7.6.4"><span class="ltx_text" id="S3.T2.2.7.6.4.1" style="font-size:90%;">576693</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a detailed breakdown of the V2V-QA dataset's composition.  It shows the number of question-answer pairs for each of the five question types.  These types are categorized as: Q1 (Grounding at a reference location), Q2 (Grounding behind a reference object at a location), Q3 (Grounding behind a reference object in a direction), Q4 (Notable object identification), and Q5 (Planning). The table displays the quantity of training and testing data for each question type and the overall total, offering insights into the dataset's size and balance across different tasks.
> <details>
> <summary>read the caption</summary>
> Table 2:  Dataset statistics of our V2V-QA. Q1: Grounding at a reference location. Q2: Grounding behind a reference object at a location. Q3: Grounding behind a reference object in a direction. Q4: Notable object identification. Q5: Planning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.18.18">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.2" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.1.1.2.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T3.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.1.1.3.1" style="font-size:90%;">Q1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T3.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.1.1.4.1" style="font-size:90%;">Q2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T3.1.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.1.1.5.1" style="font-size:90%;">Q3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.1.1.1.6.1" style="font-size:90%;">Q</span><sub class="ltx_sub" id="S5.T3.1.1.1.6.2"><span class="ltx_text" id="S5.T3.1.1.1.6.2.1" style="font-size:90%;">Gr</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T3.1.1.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.1.1.7.1" style="font-size:90%;">Q4</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T3.1.1.1.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.1.1.8.1" style="font-size:90%;">Q5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.1.1.1.1" style="font-size:90%;">Comm(MB) <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
<tr class="ltx_tr" id="S5.T3.18.18.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.2.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.2.2.2.1.1" style="font-size:90%;">F1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.1.m1.1"><semantics id="S5.T3.2.2.2.1.m1.1a"><mo id="S5.T3.2.2.2.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.1.m1.1b"><ci id="S5.T3.2.2.2.1.m1.1.1.cmml" xref="S5.T3.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.3.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.3.3.3.2.1" style="font-size:90%;">P </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.3.3.3.2.m1.1"><semantics id="S5.T3.3.3.3.2.m1.1a"><mo id="S5.T3.3.3.3.2.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.3.3.3.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.2.m1.1b"><ci id="S5.T3.3.3.3.2.m1.1.1.cmml" xref="S5.T3.3.3.3.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.4.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.4.4.4.3.1" style="font-size:90%;">R </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.4.4.4.3.m1.1"><semantics id="S5.T3.4.4.4.3.m1.1a"><mo id="S5.T3.4.4.4.3.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.4.4.4.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.3.m1.1b"><ci id="S5.T3.4.4.4.3.m1.1.1.cmml" xref="S5.T3.4.4.4.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.5.5.5.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.5.5.5.4.1" style="font-size:90%;">F1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.5.5.5.4.m1.1"><semantics id="S5.T3.5.5.5.4.m1.1a"><mo id="S5.T3.5.5.5.4.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.5.5.5.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.5.4.m1.1b"><ci id="S5.T3.5.5.5.4.m1.1.1.cmml" xref="S5.T3.5.5.5.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.5.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.5.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.6.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.6.6.6.5.1" style="font-size:90%;">P </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.6.6.6.5.m1.1"><semantics id="S5.T3.6.6.6.5.m1.1a"><mo id="S5.T3.6.6.6.5.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.6.6.6.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.6.5.m1.1b"><ci id="S5.T3.6.6.6.5.m1.1.1.cmml" xref="S5.T3.6.6.6.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.6.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.6.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.7.7.7.6" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.7.7.7.6.1" style="font-size:90%;">R </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.7.7.7.6.m1.1"><semantics id="S5.T3.7.7.7.6.m1.1a"><mo id="S5.T3.7.7.7.6.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.7.7.7.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.7.7.7.6.m1.1b"><ci id="S5.T3.7.7.7.6.m1.1.1.cmml" xref="S5.T3.7.7.7.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.7.7.7.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.7.7.7.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.8.8.8.7" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.8.8.8.7.1" style="font-size:90%;">F1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.8.8.8.7.m1.1"><semantics id="S5.T3.8.8.8.7.m1.1a"><mo id="S5.T3.8.8.8.7.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.8.8.8.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.8.8.8.7.m1.1b"><ci id="S5.T3.8.8.8.7.m1.1.1.cmml" xref="S5.T3.8.8.8.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.8.8.8.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.8.8.8.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.9.9.9.8" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.9.9.9.8.1" style="font-size:90%;">P </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.9.9.9.8.m1.1"><semantics id="S5.T3.9.9.9.8.m1.1a"><mo id="S5.T3.9.9.9.8.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.9.9.9.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.9.9.9.8.m1.1b"><ci id="S5.T3.9.9.9.8.m1.1.1.cmml" xref="S5.T3.9.9.9.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.9.9.9.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.9.9.9.8.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.10.10.10.9" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.10.10.10.9.1" style="font-size:90%;">R </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.10.10.10.9.m1.1"><semantics id="S5.T3.10.10.10.9.m1.1a"><mo id="S5.T3.10.10.10.9.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.10.10.10.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.10.10.10.9.m1.1b"><ci id="S5.T3.10.10.10.9.m1.1.1.cmml" xref="S5.T3.10.10.10.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.10.10.10.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.10.10.10.9.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.11.11.11.10" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.11.11.11.10.1" style="font-size:90%;">F1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.11.11.11.10.m1.1"><semantics id="S5.T3.11.11.11.10.m1.1a"><mo id="S5.T3.11.11.11.10.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.11.11.11.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.11.11.11.10.m1.1b"><ci id="S5.T3.11.11.11.10.m1.1.1.cmml" xref="S5.T3.11.11.11.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.11.11.11.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.11.11.11.10.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.12.12.12.11" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.12.12.12.11.1" style="font-size:90%;">F1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.12.12.12.11.m1.1"><semantics id="S5.T3.12.12.12.11.m1.1a"><mo id="S5.T3.12.12.12.11.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.12.12.12.11.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.12.12.12.11.m1.1b"><ci id="S5.T3.12.12.12.11.m1.1.1.cmml" xref="S5.T3.12.12.12.11.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.12.12.12.11.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.12.12.12.11.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.13.13.13.12" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.13.13.13.12.1" style="font-size:90%;">P </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.13.13.13.12.m1.1"><semantics id="S5.T3.13.13.13.12.m1.1a"><mo id="S5.T3.13.13.13.12.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.13.13.13.12.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.13.13.13.12.m1.1b"><ci id="S5.T3.13.13.13.12.m1.1.1.cmml" xref="S5.T3.13.13.13.12.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.13.13.13.12.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.13.13.13.12.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.14.14.14.13" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.14.14.14.13.1" style="font-size:90%;">R </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.14.14.14.13.m1.1"><semantics id="S5.T3.14.14.14.13.m1.1a"><mo id="S5.T3.14.14.14.13.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.14.14.14.13.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.14.14.14.13.m1.1b"><ci id="S5.T3.14.14.14.13.m1.1.1.cmml" xref="S5.T3.14.14.14.13.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.14.14.14.13.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.14.14.14.13.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.16.16.16.15" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.16.16.16.15.1" style="font-size:90%;">L2</span><sub class="ltx_sub" id="S5.T3.16.16.16.15.2"><span class="ltx_text ltx_font_italic" id="S5.T3.16.16.16.15.2.1" style="font-size:90%;">avg</span></sub><span class="ltx_text" id="S5.T3.16.16.16.15.3" style="font-size:90%;"> (m) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.16.16.16.15.m2.1"><semantics id="S5.T3.16.16.16.15.m2.1a"><mo id="S5.T3.16.16.16.15.m2.1.1" mathsize="90%" stretchy="false" xref="S5.T3.16.16.16.15.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.16.16.16.15.m2.1b"><ci id="S5.T3.16.16.16.15.m2.1.1.cmml" xref="S5.T3.16.16.16.15.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.16.16.16.15.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.16.16.16.15.m2.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.18.18.18.17" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.18.18.18.17.1" style="font-size:90%;">CR</span><sub class="ltx_sub" id="S5.T3.18.18.18.17.2"><span class="ltx_text ltx_font_italic" id="S5.T3.18.18.18.17.2.1" style="font-size:90%;">avg</span></sub><span class="ltx_text" id="S5.T3.18.18.18.17.3" style="font-size:90%;"> (%) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.18.18.18.17.m2.1"><semantics id="S5.T3.18.18.18.17.m2.1a"><mo id="S5.T3.18.18.18.17.m2.1.1" mathsize="90%" stretchy="false" xref="S5.T3.18.18.18.17.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.18.18.18.17.m2.1b"><ci id="S5.T3.18.18.18.17.m2.1.1.cmml" xref="S5.T3.18.18.18.17.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.18.18.18.17.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.18.18.18.17.m2.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.18.18.19.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.18.18.19.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S5.T3.18.18.19.1.1.1" style="font-size:90%;">No Fusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.18.18.19.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.19.1.2.1" style="font-size:90%;">66.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.18.18.19.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.19.1.3.1" style="font-size:90%;">77.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.18.18.19.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.19.1.4.1" style="font-size:90%;">58.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.18.18.19.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.19.1.5.1" style="font-size:90%;">22.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.18.18.19.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.19.1.6.1" style="font-size:90%;">29.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.18.18.19.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.19.1.7.1" style="font-size:90%;">18.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.18.18.19.1.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.19.1.8.1" style="font-size:90%;">17.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.18.18.19.1.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.19.1.9.1" style="font-size:90%;">17.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.18.18.19.1.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.19.1.10.1" style="font-size:90%;">16.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.18.18.19.1.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.19.1.11.1" style="font-size:90%;">35.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.18.18.19.1.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.19.1.12.1" style="font-size:90%;">47.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.18.18.19.1.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.19.1.13.1" style="font-size:90%;">49.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.18.18.19.1.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.19.1.14.1" style="font-size:90%;">45.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.18.18.19.1.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.19.1.15.1" style="font-size:90%;">6.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.18.18.19.1.16" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.19.1.16.1" style="font-size:90%;">4.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.18.18.19.1.17" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.18.18.19.1.17.1" style="font-size:90%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.18.18.20.2">
<td class="ltx_td ltx_align_left" id="S5.T3.18.18.20.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S5.T3.18.18.20.2.1.1" style="font-size:90%;">Early Fusion</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.20.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.18.18.20.2.2.1" style="font-size:90%;">73.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.20.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.18.18.20.2.3.1" style="font-size:90%;">82.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.20.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.20.2.4.1" style="font-size:90%;">66.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.20.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.20.2.5.1" style="font-size:90%;">23.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.20.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.20.2.6.1" style="font-size:90%;">29.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.20.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.20.2.7.1" style="font-size:90%;">19.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.20.2.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.20.2.8.1" style="font-size:90%;">20.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.20.2.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.20.2.9.1" style="font-size:90%;">22.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.20.2.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.20.2.10.1" style="font-size:90%;">19.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.20.2.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.20.2.11.1" style="font-size:90%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.20.2.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.20.2.12.1" style="font-size:90%;">53.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.20.2.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.20.2.13.1" style="font-size:90%;">55.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.20.2.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.20.2.14.1" style="font-size:90%;">52.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.20.2.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.20.2.15.1" style="font-size:90%;">6.20</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.20.2.16" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.20.2.16.1" style="font-size:90%;">3.55</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.20.2.17" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.20.2.17.1" style="font-size:90%;">0.96</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.18.18.21.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.18.18.21.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S5.T3.18.18.21.3.1.1" style="font-size:70%;">Intermediate Fusion</span></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.21.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.21.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.21.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.21.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.21.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.21.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.21.3.8" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.21.3.9" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.21.3.10" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.21.3.11" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.21.3.12" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.21.3.13" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.21.3.14" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.21.3.15" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.21.3.16" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.21.3.17" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S5.T3.18.18.22.4">
<td class="ltx_td ltx_align_left" id="S5.T3.18.18.22.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.18.18.22.4.1.1" style="font-size:90%;">AttFuse </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.18.18.22.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a><span class="ltx_text" id="S5.T3.18.18.22.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.22.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.22.4.2.1" style="font-size:90%;">70.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.22.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.22.4.3.1" style="font-size:90%;">79.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.22.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.22.4.4.1" style="font-size:90%;">63.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.22.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.22.4.5.1" style="font-size:90%;">26.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.22.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.22.4.6.1" style="font-size:90%;">31.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.22.4.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.22.4.7.1" style="font-size:90%;">22.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.22.4.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.22.4.8.1" style="font-size:90%;">18.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.22.4.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.22.4.9.1" style="font-size:90%;">19.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.22.4.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.22.4.10.1" style="font-size:90%;">17.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.22.4.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.22.4.11.1" style="font-size:90%;">38.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.22.4.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.22.4.12.1" style="font-size:90%;">56.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.22.4.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.22.4.13.1" style="font-size:90%;">57.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.22.4.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.22.4.14.1" style="font-size:90%;">56.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.22.4.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.22.4.15.1" style="font-size:90%;">6.83</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.22.4.16" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.22.4.16.1" style="font-size:90%;">4.12</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.22.4.17" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.22.4.17.1" style="font-size:90%;">0.20</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.18.18.23.5">
<td class="ltx_td ltx_align_left" id="S5.T3.18.18.23.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.18.18.23.5.1.1" style="font-size:90%;">V2X-ViT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.18.18.23.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S5.T3.18.18.23.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.23.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.23.5.2.1" style="font-size:90%;">70.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.23.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.23.5.3.1" style="font-size:90%;">81.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.23.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.23.5.4.1" style="font-size:90%;">62.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.23.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.23.5.5.1" style="font-size:90%;">28.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.23.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.23.5.6.1" style="font-size:90%;">33.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.23.5.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.23.5.7.1" style="font-size:90%;">23.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.23.5.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.18.18.23.5.8.1" style="font-size:90%;">22.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.23.5.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.18.18.23.5.9.1" style="font-size:90%;">25.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.23.5.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.23.5.10.1" style="font-size:90%;">20.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.23.5.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.23.5.11.1" style="font-size:90%;">40.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.23.5.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.23.5.12.1" style="font-size:90%;">57.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.23.5.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.23.5.13.1" style="font-size:90%;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.23.5.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.18.18.23.5.14.1" style="font-size:90%;">58.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.23.5.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.23.5.15.1" style="font-size:90%;">7.08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.23.5.16" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.23.5.16.1" style="font-size:90%;">4.33</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.23.5.17" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.23.5.17.1" style="font-size:90%;">0.20</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.18.18.24.6">
<td class="ltx_td ltx_align_left" id="S5.T3.18.18.24.6.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.18.18.24.6.1.1" style="font-size:90%;">CoBEVT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.18.18.24.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S5.T3.18.18.24.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.24.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.24.6.2.1" style="font-size:90%;">72.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.24.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.24.6.3.1" style="font-size:90%;">76.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.24.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.18.18.24.6.4.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.24.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.24.6.5.1" style="font-size:90%;">29.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.24.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.24.6.6.1" style="font-size:90%;">34.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.24.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.24.6.7.1" style="font-size:90%;">25.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.24.6.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.24.6.8.1" style="font-size:90%;">21.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.24.6.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.24.6.9.1" style="font-size:90%;">22.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.24.6.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.24.6.10.1" style="font-size:90%;">20.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.24.6.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.18.18.24.6.11.1" style="font-size:90%;">40.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.24.6.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.24.6.12.1" style="font-size:90%;">57.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.24.6.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.24.6.13.1" style="font-size:90%;">57.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.24.6.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.24.6.14.1" style="font-size:90%;">58.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.24.6.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.24.6.15.1" style="font-size:90%;">6.72</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.24.6.16" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.24.6.16.1" style="font-size:90%;">3.88</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.24.6.17" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.24.6.17.1" style="font-size:90%;">0.20</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.18.18.25.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.18.18.25.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S5.T3.18.18.25.7.1.1" style="font-size:70%;">LLM Fusion</span></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.25.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.25.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.25.7.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.25.7.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.25.7.6" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.25.7.7" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.25.7.8" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.25.7.9" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.25.7.10" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.25.7.11" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.25.7.12" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.25.7.13" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.25.7.14" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.25.7.15" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.25.7.16" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.18.18.25.7.17" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S5.T3.18.18.26.8">
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T3.18.18.26.8.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.26.8.1.1" style="font-size:90%;">V2V-LLM (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.18.18.26.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.26.8.2.1" style="font-size:90%;">70.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.18.18.26.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.26.8.3.1" style="font-size:90%;">80.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.18.18.26.8.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.26.8.4.1" style="font-size:90%;">62.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.18.18.26.8.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.18.18.26.8.5.1" style="font-size:90%;">30.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.18.18.26.8.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.18.18.26.8.6.1" style="font-size:90%;">36.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.18.18.26.8.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.18.18.26.8.7.1" style="font-size:90%;">26.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.18.18.26.8.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.26.8.8.1" style="font-size:90%;">21.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.18.18.26.8.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.26.8.9.1" style="font-size:90%;">21.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.18.18.26.8.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.18.18.26.8.10.1" style="font-size:90%;">20.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.18.18.26.8.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.18.18.26.8.11.1" style="font-size:90%;">40.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.18.18.26.8.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.18.18.26.8.12.1" style="font-size:90%;">59.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.18.18.26.8.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.18.18.26.8.13.1" style="font-size:90%;">61.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.18.18.26.8.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.26.8.14.1" style="font-size:90%;">57.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.18.18.26.8.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.18.18.26.8.15.1" style="font-size:90%;">4.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.18.18.26.8.16" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.18.18.26.8.16.1" style="font-size:90%;">3.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.18.18.26.8.17" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.18.18.26.8.17.1" style="font-size:90%;">0.203</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of various methods on the V2V-QA dataset. The methods include different fusion approaches: no fusion, early fusion, intermediate fusion, and the proposed V2V-LLM model.  The table shows the performance metrics (F1 score, precision, recall, L2 distance error, and collision rate) for five different question types in the V2V-QA dataset: grounding at a reference location (Q1), grounding behind a reference object at a location (Q2), grounding behind a reference object in a direction (Q3), notable object identification (Q4), and planning (Q5). The average performance across the three grounding questions is also provided (QGr).  The communication cost (Comm) for each method is also included.  The best results for each metric are shown in bold, and the second-best results are underlined.
> <details>
> <summary>read the caption</summary>
> Table 3:  V2V-LLM’s performance in V2V-QA’s testing split in comparison with baseline methods. Q1: Grounding at a reference location. Q2: Grounding behind a reference object at a location. Q3: Grounding behind a reference object in a direction. QGr: Average of grounding (Q1, Q2, and Q3). Q4: Notable object identification. Q5: Planning. P: Precision. R: Recall. L2: L2 distance error. CR: Collision Rate. Comm: Communication cost. In each column, the best results are in boldface, and the second-best results are in underline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.9.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.2" rowspan="2"><span class="ltx_text" id="S5.T4.1.1.1.2.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S5.T4.1.1.1.3"><span class="ltx_text" id="S5.T4.1.1.1.3.1" style="font-size:90%;">L2 (m)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S5.T4.1.1.1.4"><span class="ltx_text" id="S5.T4.1.1.1.4.1" style="font-size:90%;">CR (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1" rowspan="2"><span class="ltx_text" id="S5.T4.1.1.1.1.1" style="font-size:90%;">Comm (MB) <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.2.2.2.1">
<span class="ltx_text" id="S5.T4.2.2.2.1.1" style="font-size:90%;">1s </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.1.m1.1"><semantics id="S5.T4.2.2.2.1.m1.1a"><mo id="S5.T4.2.2.2.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T4.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.1.m1.1b"><ci id="S5.T4.2.2.2.1.m1.1.1.cmml" xref="S5.T4.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.3.3.3.2">
<span class="ltx_text" id="S5.T4.3.3.3.2.1" style="font-size:90%;">2s </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.2.m1.1"><semantics id="S5.T4.3.3.3.2.m1.1a"><mo id="S5.T4.3.3.3.2.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T4.3.3.3.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.2.m1.1b"><ci id="S5.T4.3.3.3.2.m1.1.1.cmml" xref="S5.T4.3.3.3.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.4.4.3">
<span class="ltx_text" id="S5.T4.4.4.4.3.1" style="font-size:90%;">3s </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.3.m1.1"><semantics id="S5.T4.4.4.4.3.m1.1a"><mo id="S5.T4.4.4.4.3.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T4.4.4.4.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.3.m1.1b"><ci id="S5.T4.4.4.4.3.m1.1.1.cmml" xref="S5.T4.4.4.4.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.5.5.5.4">
<span class="ltx_text" id="S5.T4.5.5.5.4.1" style="font-size:90%;">average </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.5.5.5.4.m1.1"><semantics id="S5.T4.5.5.5.4.m1.1a"><mo id="S5.T4.5.5.5.4.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T4.5.5.5.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.5.4.m1.1b"><ci id="S5.T4.5.5.5.4.m1.1.1.cmml" xref="S5.T4.5.5.5.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.5.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.5.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.6.6.6.5">
<span class="ltx_text" id="S5.T4.6.6.6.5.1" style="font-size:90%;">1s </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.6.6.6.5.m1.1"><semantics id="S5.T4.6.6.6.5.m1.1a"><mo id="S5.T4.6.6.6.5.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T4.6.6.6.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.6.5.m1.1b"><ci id="S5.T4.6.6.6.5.m1.1.1.cmml" xref="S5.T4.6.6.6.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.6.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.6.5.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.7.7.7.6">
<span class="ltx_text" id="S5.T4.7.7.7.6.1" style="font-size:90%;">2s </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.7.7.7.6.m1.1"><semantics id="S5.T4.7.7.7.6.m1.1a"><mo id="S5.T4.7.7.7.6.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T4.7.7.7.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.7.7.7.6.m1.1b"><ci id="S5.T4.7.7.7.6.m1.1.1.cmml" xref="S5.T4.7.7.7.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.7.7.7.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.7.7.7.6.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.8.8.8.7">
<span class="ltx_text" id="S5.T4.8.8.8.7.1" style="font-size:90%;">3s </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.8.8.8.7.m1.1"><semantics id="S5.T4.8.8.8.7.m1.1a"><mo id="S5.T4.8.8.8.7.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T4.8.8.8.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.8.8.8.7.m1.1b"><ci id="S5.T4.8.8.8.7.m1.1.1.cmml" xref="S5.T4.8.8.8.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.8.8.8.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.8.8.8.7.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.9.9.9.8">
<span class="ltx_text" id="S5.T4.9.9.9.8.1" style="font-size:90%;">average </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.9.9.9.8.m1.1"><semantics id="S5.T4.9.9.9.8.m1.1a"><mo id="S5.T4.9.9.9.8.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T4.9.9.9.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.9.9.9.8.m1.1b"><ci id="S5.T4.9.9.9.8.m1.1.1.cmml" xref="S5.T4.9.9.9.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.9.9.9.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.9.9.9.8.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.9.9.10.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.9.9.10.1.1"><span class="ltx_text ltx_font_italic" id="S5.T4.9.9.10.1.1.1" style="font-size:90%;">No Fusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.9.9.10.1.2"><span class="ltx_text" id="S5.T4.9.9.10.1.2.1" style="font-size:90%;">3.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.9.9.10.1.3"><span class="ltx_text" id="S5.T4.9.9.10.1.3.1" style="font-size:90%;">6.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.9.9.10.1.4"><span class="ltx_text" id="S5.T4.9.9.10.1.4.1" style="font-size:90%;">9.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.9.9.10.1.5"><span class="ltx_text" id="S5.T4.9.9.10.1.5.1" style="font-size:90%;">6.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.9.9.10.1.6"><span class="ltx_text" id="S5.T4.9.9.10.1.6.1" style="font-size:90%;">1.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.9.9.10.1.7"><span class="ltx_text" id="S5.T4.9.9.10.1.7.1" style="font-size:90%;">4.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.9.9.10.1.8"><span class="ltx_text" id="S5.T4.9.9.10.1.8.1" style="font-size:90%;">7.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.9.9.10.1.9"><span class="ltx_text" id="S5.T4.9.9.10.1.9.1" style="font-size:90%;">4.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.9.9.10.1.10"><span class="ltx_text ltx_font_bold" id="S5.T4.9.9.10.1.10.1" style="font-size:90%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.11.2">
<td class="ltx_td ltx_align_left" id="S5.T4.9.9.11.2.1"><span class="ltx_text ltx_font_italic" id="S5.T4.9.9.11.2.1.1" style="font-size:90%;">Early Fusion</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.11.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.9.9.11.2.2.1" style="font-size:90%;">3.68</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.11.2.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.9.9.11.2.3.1" style="font-size:90%;">6.19</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.11.2.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.9.9.11.2.4.1" style="font-size:90%;">8.74</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.11.2.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.9.9.11.2.5.1" style="font-size:90%;">6.20</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.11.2.6"><span class="ltx_text" id="S5.T4.9.9.11.2.6.1" style="font-size:90%;">0.96</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.11.2.7"><span class="ltx_text" id="S5.T4.9.9.11.2.7.1" style="font-size:90%;">3.86</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.11.2.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.9.9.11.2.8.1" style="font-size:90%;">5.83</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.11.2.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.9.9.11.2.9.1" style="font-size:90%;">3.55</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.11.2.10"><span class="ltx_text" id="S5.T4.9.9.11.2.10.1" style="font-size:90%;">0.96</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.12.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.9.9.12.3.1"><span class="ltx_text ltx_font_italic" id="S5.T4.9.9.12.3.1.1" style="font-size:70%;">Intermediate Fusion</span></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.12.3.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.12.3.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.12.3.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.12.3.5"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.12.3.6"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.12.3.7"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.12.3.8"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.12.3.9"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.12.3.10"></td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.13.4">
<td class="ltx_td ltx_align_left" id="S5.T4.9.9.13.4.1">
<span class="ltx_text" id="S5.T4.9.9.13.4.1.1" style="font-size:90%;">AttFuse </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.9.9.13.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a><span class="ltx_text" id="S5.T4.9.9.13.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.13.4.2"><span class="ltx_text" id="S5.T4.9.9.13.4.2.1" style="font-size:90%;">4.06</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.13.4.3"><span class="ltx_text" id="S5.T4.9.9.13.4.3.1" style="font-size:90%;">6.78</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.13.4.4"><span class="ltx_text" id="S5.T4.9.9.13.4.4.1" style="font-size:90%;">9.64</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.13.4.5"><span class="ltx_text" id="S5.T4.9.9.13.4.5.1" style="font-size:90%;">6.83</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.13.4.6"><span class="ltx_text" id="S5.T4.9.9.13.4.6.1" style="font-size:90%;">1.42</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.13.4.7"><span class="ltx_text" id="S5.T4.9.9.13.4.7.1" style="font-size:90%;">4.41</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.13.4.8"><span class="ltx_text" id="S5.T4.9.9.13.4.8.1" style="font-size:90%;">6.53</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.13.4.9"><span class="ltx_text" id="S5.T4.9.9.13.4.9.1" style="font-size:90%;">4.12</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.13.4.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.9.9.13.4.10.1" style="font-size:90%;">0.20</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.14.5">
<td class="ltx_td ltx_align_left" id="S5.T4.9.9.14.5.1">
<span class="ltx_text" id="S5.T4.9.9.14.5.1.1" style="font-size:90%;">V2X-ViT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.9.9.14.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S5.T4.9.9.14.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.14.5.2"><span class="ltx_text" id="S5.T4.9.9.14.5.2.1" style="font-size:90%;">4.21</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.14.5.3"><span class="ltx_text" id="S5.T4.9.9.14.5.3.1" style="font-size:90%;">7.05</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.14.5.4"><span class="ltx_text" id="S5.T4.9.9.14.5.4.1" style="font-size:90%;">9.99</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.14.5.5"><span class="ltx_text" id="S5.T4.9.9.14.5.5.1" style="font-size:90%;">7.08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.14.5.6"><span class="ltx_text" id="S5.T4.9.9.14.5.6.1" style="font-size:90%;">1.33</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.14.5.7"><span class="ltx_text" id="S5.T4.9.9.14.5.7.1" style="font-size:90%;">4.82</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.14.5.8"><span class="ltx_text" id="S5.T4.9.9.14.5.8.1" style="font-size:90%;">6.85</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.14.5.9"><span class="ltx_text" id="S5.T4.9.9.14.5.9.1" style="font-size:90%;">4.33</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.14.5.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.9.9.14.5.10.1" style="font-size:90%;">0.20</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.15.6">
<td class="ltx_td ltx_align_left" id="S5.T4.9.9.15.6.1">
<span class="ltx_text" id="S5.T4.9.9.15.6.1.1" style="font-size:90%;">CoBEVT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.9.9.15.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S5.T4.9.9.15.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.15.6.2"><span class="ltx_text" id="S5.T4.9.9.15.6.2.1" style="font-size:90%;">3.97</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.15.6.3"><span class="ltx_text" id="S5.T4.9.9.15.6.3.1" style="font-size:90%;">6.71</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.15.6.4"><span class="ltx_text" id="S5.T4.9.9.15.6.4.1" style="font-size:90%;">9.47</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.15.6.5"><span class="ltx_text" id="S5.T4.9.9.15.6.5.1" style="font-size:90%;">6.72</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.15.6.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.9.9.15.6.6.1" style="font-size:90%;">0.93</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.15.6.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.9.9.15.6.7.1" style="font-size:90%;">3.74</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.15.6.8"><span class="ltx_text" id="S5.T4.9.9.15.6.8.1" style="font-size:90%;">6.96</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.15.6.9"><span class="ltx_text" id="S5.T4.9.9.15.6.9.1" style="font-size:90%;">3.88</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.15.6.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.9.9.15.6.10.1" style="font-size:90%;">0.20</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.16.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.9.9.16.7.1"><span class="ltx_text ltx_font_italic" id="S5.T4.9.9.16.7.1.1" style="font-size:70%;">LLM Fusion</span></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.16.7.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.16.7.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.16.7.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.16.7.5"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.16.7.6"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.16.7.7"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.16.7.8"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.16.7.9"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.9.9.16.7.10"></td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.17.8">
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T4.9.9.17.8.1"><span class="ltx_text" id="S5.T4.9.9.17.8.1.1" style="font-size:90%;">V2V-LLM (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.9.9.17.8.2"><span class="ltx_text ltx_font_bold" id="S5.T4.9.9.17.8.2.1" style="font-size:90%;">2.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.9.9.17.8.3"><span class="ltx_text ltx_font_bold" id="S5.T4.9.9.17.8.3.1" style="font-size:90%;">4.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.9.9.17.8.4"><span class="ltx_text ltx_font_bold" id="S5.T4.9.9.17.8.4.1" style="font-size:90%;">7.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.9.9.17.8.5"><span class="ltx_text ltx_font_bold" id="S5.T4.9.9.17.8.5.1" style="font-size:90%;">4.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.9.9.17.8.6"><span class="ltx_text ltx_font_bold" id="S5.T4.9.9.17.8.6.1" style="font-size:90%;">0.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.9.9.17.8.7"><span class="ltx_text ltx_font_bold" id="S5.T4.9.9.17.8.7.1" style="font-size:90%;">3.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.9.9.17.8.8"><span class="ltx_text ltx_font_bold" id="S5.T4.9.9.17.8.8.1" style="font-size:90%;">5.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.9.9.17.8.9"><span class="ltx_text ltx_font_bold" id="S5.T4.9.9.17.8.9.1" style="font-size:90%;">3.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.9.9.17.8.10"><span class="ltx_text" id="S5.T4.9.9.17.8.10.1" style="font-size:90%;">0.203</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comparison of the planning performance of V2V-LLM against several baseline methods using the V2V-QA testing dataset.  The evaluation metrics used are the average L2 distance error (in meters) between planned and actual trajectories, and the average collision rate (percentage of instances where collisions occur).  For better readability, the best results for each metric are highlighted in bold, while the second-best results are underlined. This allows for a direct comparison of V2V-LLM's planning capabilities against methods utilizing different fusion approaches (no fusion, early fusion, and intermediate fusion).
> <details>
> <summary>read the caption</summary>
> Table 4:  V2V-LLM’s planning performance in V2V-QA’s testing split in comparison with baseline methods. L2: L2 distance error. CR: Collision Rate. In each column, the best results are in boldface. and the second-best results are in underline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T5.18.18">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.1.1.1.2" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.1.1.1.2.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T5.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.1.1.1.3.1" style="font-size:90%;">Q1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T5.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.1.1.1.4.1" style="font-size:90%;">Q2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T5.1.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.1.1.1.5.1" style="font-size:90%;">Q3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T5.1.1.1.6.1" style="font-size:90%;">Q</span><sub class="ltx_sub" id="S5.T5.1.1.1.6.2"><span class="ltx_text" id="S5.T5.1.1.1.6.2.1" style="font-size:90%;">Gr</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T5.1.1.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.1.1.1.7.1" style="font-size:90%;">Q4</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T5.1.1.1.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.1.1.1.8.1" style="font-size:90%;">Q5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.1.1.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.1.1.1.1.1" style="font-size:90%;">Comm (MB) <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.1.1.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.1.1.m1.1a"><mo id="S5.T5.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T5.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
<tr class="ltx_tr" id="S5.T5.18.18.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.2.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T5.2.2.2.1.1" style="font-size:90%;">F1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.2.2.2.1.m1.1"><semantics id="S5.T5.2.2.2.1.m1.1a"><mo id="S5.T5.2.2.2.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.1.m1.1b"><ci id="S5.T5.2.2.2.1.m1.1.1.cmml" xref="S5.T5.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.3.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T5.3.3.3.2.1" style="font-size:90%;">P </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.3.3.3.2.m1.1"><semantics id="S5.T5.3.3.3.2.m1.1a"><mo id="S5.T5.3.3.3.2.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.3.3.3.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.3.2.m1.1b"><ci id="S5.T5.3.3.3.2.m1.1.1.cmml" xref="S5.T5.3.3.3.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.3.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.3.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.4.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T5.4.4.4.3.1" style="font-size:90%;">R </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.4.4.4.3.m1.1"><semantics id="S5.T5.4.4.4.3.m1.1a"><mo id="S5.T5.4.4.4.3.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.4.4.4.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.4.4.4.3.m1.1b"><ci id="S5.T5.4.4.4.3.m1.1.1.cmml" xref="S5.T5.4.4.4.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.4.4.4.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.4.4.4.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.5.5.5.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T5.5.5.5.4.1" style="font-size:90%;">F1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.5.5.5.4.m1.1"><semantics id="S5.T5.5.5.5.4.m1.1a"><mo id="S5.T5.5.5.5.4.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.5.5.5.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.5.5.5.4.m1.1b"><ci id="S5.T5.5.5.5.4.m1.1.1.cmml" xref="S5.T5.5.5.5.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.5.5.5.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.5.5.5.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.6.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T5.6.6.6.5.1" style="font-size:90%;">P </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.6.6.6.5.m1.1"><semantics id="S5.T5.6.6.6.5.m1.1a"><mo id="S5.T5.6.6.6.5.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.6.6.6.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.6.6.6.5.m1.1b"><ci id="S5.T5.6.6.6.5.m1.1.1.cmml" xref="S5.T5.6.6.6.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.6.6.6.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.6.6.6.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.7.7.7.6" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T5.7.7.7.6.1" style="font-size:90%;">R </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.7.7.7.6.m1.1"><semantics id="S5.T5.7.7.7.6.m1.1a"><mo id="S5.T5.7.7.7.6.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.7.7.7.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.7.7.7.6.m1.1b"><ci id="S5.T5.7.7.7.6.m1.1.1.cmml" xref="S5.T5.7.7.7.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.7.7.7.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.7.7.7.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.8.8.8.7" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T5.8.8.8.7.1" style="font-size:90%;">F1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.8.8.8.7.m1.1"><semantics id="S5.T5.8.8.8.7.m1.1a"><mo id="S5.T5.8.8.8.7.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.8.8.8.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.8.8.8.7.m1.1b"><ci id="S5.T5.8.8.8.7.m1.1.1.cmml" xref="S5.T5.8.8.8.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.8.8.8.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.8.8.8.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.9.9.9.8" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T5.9.9.9.8.1" style="font-size:90%;">P </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.9.9.9.8.m1.1"><semantics id="S5.T5.9.9.9.8.m1.1a"><mo id="S5.T5.9.9.9.8.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.9.9.9.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.9.9.9.8.m1.1b"><ci id="S5.T5.9.9.9.8.m1.1.1.cmml" xref="S5.T5.9.9.9.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.9.9.9.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.9.9.9.8.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.10.10.10.9" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T5.10.10.10.9.1" style="font-size:90%;">R </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.10.10.10.9.m1.1"><semantics id="S5.T5.10.10.10.9.m1.1a"><mo id="S5.T5.10.10.10.9.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.10.10.10.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.10.10.10.9.m1.1b"><ci id="S5.T5.10.10.10.9.m1.1.1.cmml" xref="S5.T5.10.10.10.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.10.10.10.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.10.10.10.9.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.11.11.11.10" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T5.11.11.11.10.1" style="font-size:90%;">F1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.11.11.11.10.m1.1"><semantics id="S5.T5.11.11.11.10.m1.1a"><mo id="S5.T5.11.11.11.10.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.11.11.11.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.11.11.11.10.m1.1b"><ci id="S5.T5.11.11.11.10.m1.1.1.cmml" xref="S5.T5.11.11.11.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.11.11.11.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.11.11.11.10.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.12.12.12.11" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T5.12.12.12.11.1" style="font-size:90%;">F1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.12.12.12.11.m1.1"><semantics id="S5.T5.12.12.12.11.m1.1a"><mo id="S5.T5.12.12.12.11.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.12.12.12.11.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.12.12.12.11.m1.1b"><ci id="S5.T5.12.12.12.11.m1.1.1.cmml" xref="S5.T5.12.12.12.11.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.12.12.12.11.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.12.12.12.11.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.13.13.13.12" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T5.13.13.13.12.1" style="font-size:90%;">P </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.13.13.13.12.m1.1"><semantics id="S5.T5.13.13.13.12.m1.1a"><mo id="S5.T5.13.13.13.12.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.13.13.13.12.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.13.13.13.12.m1.1b"><ci id="S5.T5.13.13.13.12.m1.1.1.cmml" xref="S5.T5.13.13.13.12.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.13.13.13.12.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.13.13.13.12.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.14.14.14.13" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T5.14.14.14.13.1" style="font-size:90%;">R </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.14.14.14.13.m1.1"><semantics id="S5.T5.14.14.14.13.m1.1a"><mo id="S5.T5.14.14.14.13.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.14.14.14.13.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.14.14.14.13.m1.1b"><ci id="S5.T5.14.14.14.13.m1.1.1.cmml" xref="S5.T5.14.14.14.13.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.14.14.14.13.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.14.14.14.13.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.16.16.16.15" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T5.16.16.16.15.1" style="font-size:90%;">L2</span><sub class="ltx_sub" id="S5.T5.16.16.16.15.2"><span class="ltx_text ltx_font_italic" id="S5.T5.16.16.16.15.2.1" style="font-size:90%;">avg</span></sub><span class="ltx_text" id="S5.T5.16.16.16.15.3" style="font-size:90%;"> (m) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.16.16.16.15.m2.1"><semantics id="S5.T5.16.16.16.15.m2.1a"><mo id="S5.T5.16.16.16.15.m2.1.1" mathsize="90%" stretchy="false" xref="S5.T5.16.16.16.15.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.16.16.16.15.m2.1b"><ci id="S5.T5.16.16.16.15.m2.1.1.cmml" xref="S5.T5.16.16.16.15.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.16.16.16.15.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.16.16.16.15.m2.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.18.18.18.17" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T5.18.18.18.17.1" style="font-size:90%;">CR</span><sub class="ltx_sub" id="S5.T5.18.18.18.17.2"><span class="ltx_text ltx_font_italic" id="S5.T5.18.18.18.17.2.1" style="font-size:90%;">avg</span></sub><span class="ltx_text" id="S5.T5.18.18.18.17.3" style="font-size:90%;"> (%) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.18.18.18.17.m2.1"><semantics id="S5.T5.18.18.18.17.m2.1a"><mo id="S5.T5.18.18.18.17.m2.1.1" mathsize="90%" stretchy="false" xref="S5.T5.18.18.18.17.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.18.18.18.17.m2.1b"><ci id="S5.T5.18.18.18.17.m2.1.1.cmml" xref="S5.T5.18.18.18.17.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.18.18.18.17.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.18.18.18.17.m2.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.18.18.19.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T5.18.18.19.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.19.1.1.1" style="font-size:90%;">Scene-level only</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.18.18.19.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.19.1.2.1" style="font-size:90%;">69.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.18.18.19.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.19.1.3.1" style="font-size:90%;">74.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.18.18.19.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.18.18.19.1.4.1" style="font-size:90%;">65.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.18.18.19.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.19.1.5.1" style="font-size:90%;">15.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.18.18.19.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.19.1.6.1" style="font-size:90%;">19.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.18.18.19.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.19.1.7.1" style="font-size:90%;">12.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.18.18.19.1.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.19.1.8.1" style="font-size:90%;">17.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.18.18.19.1.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.18.18.19.1.9.1" style="font-size:90%;">26.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.18.18.19.1.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.19.1.10.1" style="font-size:90%;">13.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.18.18.19.1.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.19.1.11.1" style="font-size:90%;">34.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.18.18.19.1.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.19.1.12.1" style="font-size:90%;">43.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.18.18.19.1.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.19.1.13.1" style="font-size:90%;">40.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.18.18.19.1.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.19.1.14.1" style="font-size:90%;">46.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.18.18.19.1.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.19.1.15.1" style="font-size:90%;">7.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.18.18.19.1.16" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.19.1.16.1" style="font-size:90%;">15.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.18.18.19.1.17" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.19.1.17.1" style="font-size:90%;">0.20</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.18.18.20.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.18.18.20.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.20.2.1.1" style="font-size:90%;">Object-level only</span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.20.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.20.2.2.1" style="font-size:90%;">69.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.20.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.18.18.20.2.3.1" style="font-size:90%;">80.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.20.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.20.2.4.1" style="font-size:90%;">60.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.20.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.20.2.5.1" style="font-size:90%;">26.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.20.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.20.2.6.1" style="font-size:90%;">34.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.20.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.20.2.7.1" style="font-size:90%;">21.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.20.2.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.20.2.8.1" style="font-size:90%;">17.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.20.2.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.20.2.9.1" style="font-size:90%;">18.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.20.2.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.20.2.10.1" style="font-size:90%;">16.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.20.2.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.20.2.11.1" style="font-size:90%;">37.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.20.2.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.20.2.12.1" style="font-size:90%;">52.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.20.2.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.20.2.13.1" style="font-size:90%;">57.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.20.2.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.20.2.14.1" style="font-size:90%;">48.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.20.2.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.20.2.15.1" style="font-size:90%;">5.24</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.20.2.16" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.20.2.16.1" style="font-size:90%;">7.78</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.20.2.17" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.18.18.20.2.17.1" style="font-size:90%;">0.003</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.18.18.21.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.21.3.1.1" style="font-size:90%;">V2V-LLM (ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.18.18.21.3.2.1" style="font-size:90%;">70.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.21.3.3.1" style="font-size:90%;">80.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.21.3.4.1" style="font-size:90%;">62.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.18.18.21.3.5.1" style="font-size:90%;">30.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.18.18.21.3.6.1" style="font-size:90%;">36.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.18.18.21.3.7.1" style="font-size:90%;">26.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.18.18.21.3.8.1" style="font-size:90%;">21.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.21.3.9.1" style="font-size:90%;">21.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.18.18.21.3.10.1" style="font-size:90%;">20.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.18.18.21.3.11.1" style="font-size:90%;">40.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.18.18.21.3.12.1" style="font-size:90%;">59.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.18.18.21.3.13.1" style="font-size:90%;">61.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.18.18.21.3.14.1" style="font-size:90%;">57.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.18.18.21.3.15.1" style="font-size:90%;">4.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.16" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.18.18.21.3.16.1" style="font-size:90%;">3.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.18.18.21.3.17" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.18.18.21.3.17.1" style="font-size:90%;">0.203</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted on the V2V-QA dataset's testing split.  The study evaluates the performance of the V2V-LLM model under various configurations.  Specifically, it examines the impact of using only scene-level features or only object-level features, as opposed to using both, on the model's ability to perform different tasks. These tasks include grounding (Q1-Q3, an average of these three is QGr), notable object identification (Q4), and planning (Q5). The evaluation metrics used are F1 score, precision (P), recall (R), L2 distance error (L2), collision rate (CR), and communication cost (Comm). The results provide insights into the relative contributions of scene and object features to the overall performance of the V2V-LLM model across different tasks.
> <details>
> <summary>read the caption</summary>
> Table 5:  Ablation study in V2V-QA’s testing split. Q1: Grounding at a reference location. Q2: Grounding behind a reference object at a location. Q3: Grounding behind a reference object in a direction. QGr: Average of grounding (Q1, Q2, and Q3). Q4: Notable object identification. Q5: Planning. P: Precision. R: Recall. L2: L2 distance error. CR: Collision Rate. Comm: Communication cost.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S8.T6.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S8.T6.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S8.T6.4.4.5.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.5.1.1.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S8.T6.4.4.5.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.5.1.2.1" style="font-size:90%;">1 input frame</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S8.T6.4.4.5.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.5.1.3.1" style="font-size:90%;">3 input frames</span></th>
</tr>
<tr class="ltx_tr" id="S8.T6.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S8.T6.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S8.T6.1.1.1.1.1" style="font-size:90%;">L2 (m) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S8.T6.1.1.1.1.m1.1"><semantics id="S8.T6.1.1.1.1.m1.1a"><mo id="S8.T6.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S8.T6.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S8.T6.1.1.1.1.m1.1b"><ci id="S8.T6.1.1.1.1.m1.1.1.cmml" xref="S8.T6.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S8.T6.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S8.T6.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S8.T6.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S8.T6.2.2.2.2.1" style="font-size:90%;">CR (%) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S8.T6.2.2.2.2.m1.1"><semantics id="S8.T6.2.2.2.2.m1.1a"><mo id="S8.T6.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S8.T6.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S8.T6.2.2.2.2.m1.1b"><ci id="S8.T6.2.2.2.2.m1.1.1.cmml" xref="S8.T6.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S8.T6.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S8.T6.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S8.T6.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S8.T6.3.3.3.3.1" style="font-size:90%;">L2 (m) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S8.T6.3.3.3.3.m1.1"><semantics id="S8.T6.3.3.3.3.m1.1a"><mo id="S8.T6.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S8.T6.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S8.T6.3.3.3.3.m1.1b"><ci id="S8.T6.3.3.3.3.m1.1.1.cmml" xref="S8.T6.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S8.T6.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S8.T6.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S8.T6.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S8.T6.4.4.4.4.1" style="font-size:90%;">CR (%) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S8.T6.4.4.4.4.m1.1"><semantics id="S8.T6.4.4.4.4.m1.1a"><mo id="S8.T6.4.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S8.T6.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S8.T6.4.4.4.4.m1.1b"><ci id="S8.T6.4.4.4.4.m1.1.1.cmml" xref="S8.T6.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S8.T6.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S8.T6.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T6.4.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S8.T6.4.4.6.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S8.T6.4.4.6.1.1.1" style="font-size:90%;">No Fusion</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.4.4.6.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.6.1.2.1" style="font-size:90%;">6.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.4.4.6.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.6.1.3.1" style="font-size:90%;">4.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.4.4.6.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.6.1.4.1" style="font-size:90%;">5.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.4.4.6.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.6.1.5.1" style="font-size:90%;">3.77</span></td>
</tr>
<tr class="ltx_tr" id="S8.T6.4.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T6.4.4.7.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S8.T6.4.4.7.2.1.1" style="font-size:90%;">Early Fusion</span></th>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.7.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S8.T6.4.4.7.2.2.1" style="font-size:90%;">6.20</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.7.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S8.T6.4.4.7.2.3.1" style="font-size:90%;">3.55</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.7.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S8.T6.4.4.7.2.4.1" style="font-size:90%;">5.13</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.7.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S8.T6.4.4.7.2.5.1" style="font-size:90%;">3.04</span></td>
</tr>
<tr class="ltx_tr" id="S8.T6.4.4.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S8.T6.4.4.8.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S8.T6.4.4.8.3.1.1" style="font-size:70%;">Intermediate Fusion</span></th>
<td class="ltx_td ltx_border_t" id="S8.T6.4.4.8.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S8.T6.4.4.8.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S8.T6.4.4.8.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S8.T6.4.4.8.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S8.T6.4.4.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T6.4.4.9.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S8.T6.4.4.9.4.1.1" style="font-size:90%;">AttFuse </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T6.4.4.9.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a><span class="ltx_text" id="S8.T6.4.4.9.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.9.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.9.4.2.1" style="font-size:90%;">6.83</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.9.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.9.4.3.1" style="font-size:90%;">4.12</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.9.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.9.4.4.1" style="font-size:90%;">6.46</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.9.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.9.4.5.1" style="font-size:90%;">3.50</span></td>
</tr>
<tr class="ltx_tr" id="S8.T6.4.4.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T6.4.4.10.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S8.T6.4.4.10.5.1.1" style="font-size:90%;">V2X-ViT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T6.4.4.10.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S8.T6.4.4.10.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.10.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.10.5.2.1" style="font-size:90%;">7.08</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.10.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.10.5.3.1" style="font-size:90%;">4.33</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.10.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.10.5.4.1" style="font-size:90%;">5.52</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.10.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.10.5.5.1" style="font-size:90%;">3.84</span></td>
</tr>
<tr class="ltx_tr" id="S8.T6.4.4.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T6.4.4.11.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S8.T6.4.4.11.6.1.1" style="font-size:90%;">CoBEVT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T6.4.4.11.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.09980v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S8.T6.4.4.11.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.11.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.11.6.2.1" style="font-size:90%;">6.72</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.11.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.11.6.3.1" style="font-size:90%;">3.88</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.11.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.11.6.4.1" style="font-size:90%;">6.02</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.11.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.11.6.5.1" style="font-size:90%;">3.40</span></td>
</tr>
<tr class="ltx_tr" id="S8.T6.4.4.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S8.T6.4.4.12.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S8.T6.4.4.12.7.1.1" style="font-size:70%;">LLM Fusion</span></th>
<td class="ltx_td ltx_border_t" id="S8.T6.4.4.12.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S8.T6.4.4.12.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S8.T6.4.4.12.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S8.T6.4.4.12.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S8.T6.4.4.13.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S8.T6.4.4.13.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S8.T6.4.4.13.8.1.1" style="font-size:90%;">V2V-LLM (ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S8.T6.4.4.13.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S8.T6.4.4.13.8.2.1" style="font-size:90%;">4.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S8.T6.4.4.13.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S8.T6.4.4.13.8.3.1" style="font-size:90%;">3.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S8.T6.4.4.13.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S8.T6.4.4.13.8.4.1" style="font-size:90%;">4.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S8.T6.4.4.13.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S8.T6.4.4.13.8.5.1" style="font-size:90%;">2.93</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comparison of the planning performance of the proposed V2V-LLM model against several baseline methods on the V2V-QA testing dataset.  The performance is evaluated using two metrics: the average L2 distance error (L2) and the average collision rate (CR).  Lower L2 error indicates better trajectory planning accuracy, and a lower collision rate signifies improved safety.  The table highlights the best-performing model for each metric in boldface and the second-best performing model with an underline, indicating V2V-LLM's relative strengths and weaknesses in this specific task.
> <details>
> <summary>read the caption</summary>
> Table 6:  V2V-LLM’s planning performance in V2V-QA’s testing split in comparison with baseline methods. L2: L2 distance error. CR: Collision Rate. In each column, the best results are in boldface. and the second-best results are in underline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S11.T7.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S11.T7.2.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S11.T7.2.1.1.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.1.1.1.1" style="font-size:90%;">QA type</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S11.T7.2.1.1.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.1.1.2.1" style="font-size:90%;">Train-Pos</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S11.T7.2.1.1.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.1.1.3.1" style="font-size:90%;">Train-Neg</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S11.T7.2.1.1.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.1.1.4.1" style="font-size:90%;">Test-Pos</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S11.T7.2.1.1.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.1.1.5.1" style="font-size:90%;">Test-Neg</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S11.T7.2.1.1.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.1.1.6.1" style="font-size:90%;">Total</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S11.T7.2.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S11.T7.2.2.1.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.2.1.1.1" style="font-size:90%;">Q1</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S11.T7.2.2.1.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.2.1.2.1" style="font-size:90%;">217403</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_tt" id="S11.T7.2.2.1.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.2.1.3.1" style="font-size:90%;">137417</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S11.T7.2.2.1.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.2.1.4.1" style="font-size:90%;">76522</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_tt" id="S11.T7.2.2.1.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.2.1.5.1" style="font-size:90%;">44861</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S11.T7.2.2.1.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.2.1.6.1" style="font-size:90%;">476203</span></td>
</tr>
<tr class="ltx_tr" id="S11.T7.2.3.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S11.T7.2.3.2.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.3.2.1.1" style="font-size:90%;">Q2</span></td>
<td class="ltx_td ltx_align_right" id="S11.T7.2.3.2.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.3.2.2.1" style="font-size:90%;">17859</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S11.T7.2.3.2.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.3.2.3.1" style="font-size:90%;">17841</span></td>
<td class="ltx_td ltx_align_right" id="S11.T7.2.3.2.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.3.2.4.1" style="font-size:90%;">8391</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S11.T7.2.3.2.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.3.2.5.1" style="font-size:90%;">5491</span></td>
<td class="ltx_td ltx_align_right" id="S11.T7.2.3.2.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.3.2.6.1" style="font-size:90%;">49582</span></td>
</tr>
<tr class="ltx_tr" id="S11.T7.2.4.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S11.T7.2.4.3.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.4.3.1.1" style="font-size:90%;">Q3</span></td>
<td class="ltx_td ltx_align_right" id="S11.T7.2.4.3.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.4.3.2.1" style="font-size:90%;">7197</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S11.T7.2.4.3.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.4.3.3.1" style="font-size:90%;">7142</span></td>
<td class="ltx_td ltx_align_right" id="S11.T7.2.4.3.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.4.3.4.1" style="font-size:90%;">3082</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S11.T7.2.4.3.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.4.3.5.1" style="font-size:90%;">2015</span></td>
<td class="ltx_td ltx_align_right" id="S11.T7.2.4.3.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.4.3.6.1" style="font-size:90%;">19436</span></td>
</tr>
<tr class="ltx_tr" id="S11.T7.2.5.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S11.T7.2.5.4.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.5.4.1.1" style="font-size:90%;">Q4</span></td>
<td class="ltx_td ltx_align_right" id="S11.T7.2.5.4.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.5.4.2.1" style="font-size:90%;">9911</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S11.T7.2.5.4.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.5.4.3.1" style="font-size:90%;">2379</span></td>
<td class="ltx_td ltx_align_right" id="S11.T7.2.5.4.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.5.4.4.1" style="font-size:90%;">2517</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S11.T7.2.5.4.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.5.4.5.1" style="font-size:90%;">929</span></td>
<td class="ltx_td ltx_align_right" id="S11.T7.2.5.4.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.5.4.6.1" style="font-size:90%;">15736</span></td>
</tr>
<tr class="ltx_tr" id="S11.T7.2.6.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S11.T7.2.6.5.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.6.5.1.1" style="font-size:90%;">Total</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S11.T7.2.6.5.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.6.5.2.1" style="font-size:90%;">252370</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S11.T7.2.6.5.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.6.5.3.1" style="font-size:90%;">164779</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S11.T7.2.6.5.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.6.5.4.1" style="font-size:90%;">90512</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S11.T7.2.6.5.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.6.5.5.1" style="font-size:90%;">53296</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S11.T7.2.6.5.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S11.T7.2.6.5.6.1" style="font-size:90%;">560957</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a breakdown of the V2V-QA dataset, categorized by question type and the positive/negative class of each data point.  The dataset is used to evaluate models on cooperative autonomous driving tasks.  It shows the number of positive (at least one object satisfies the question's condition) and negative (no object satisfies the condition) examples in the training and testing sets for four question types: Q1 (Grounding at a reference location), Q2 (Grounding behind a reference object at a location), Q3 (Grounding behind a reference object in a direction), and Q4 (Notable object identification). This breakdown helps understand the class distribution within the dataset, informing the evaluation of model performance.
> <details>
> <summary>read the caption</summary>
> Table 7:  Dataset statistics of our V2V-QA’s positive and negative cases in the training and testing splits. Q1: Grounding at a reference location. Q2: Grounding behind a reference object at a location. Q3: Grounding behind a reference object in a direction. Q4: Notable object identification.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.09980/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09980/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}