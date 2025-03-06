---
title: "Interact, Instruct to Improve: A LLM-Driven Parallel Actor-Reasoner Framework for Enhancing Autonomous Vehicle Interactions"
summary: "LLM-driven framework enhances autonomous vehicle interactions with human drivers in real-time."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Autonomous Vehicles", "🏢 Tongji University",]
showSummary: true
date: 2025-03-01
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.00502 {{< /keyword >}}
{{< keyword icon="writer" >}} Shiyu Fang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-06 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.00502" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.00502" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.00502/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Autonomous Vehicles face challenges in interacting with human drivers due to limited intent expression. Recent Large Language Models (LLMs) offer potential for better communication but struggle with real-time decision-making. Issues include adapting to dynamic environments, handling unpredictable human behaviors, and navigating diverse scenarios. These limitations impact the safety and efficiency of AVs.



To address this, a parallel Actor-Reasoner framework is introduced. It leverages LLMs for real-time AV-HV interactions across various scenarios. By simulating interactions between the LLM-driven Reasoner and heterogeneous simulated HVs, an interaction memory database (Actor) is created. This framework enhances safety and efficiency. The effectiveness is confirmed through field tests. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Actor-Reasoner framework improves AV-HV interaction through LLM-driven reasoning and memory retrieval. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Parallel processing and memory partitioning enhance real-time adaptability and interpretability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Field tests validate the framework's effectiveness in diverse driving scenarios. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is vital for AV researchers, offering a novel LLM-driven framework that **enhances AV interaction** and intent expression. It addresses a critical gap in **real-time AV-HV communication**, providing a practical solution validated in diverse scenarios and real-world tests, paving the way for **safer and more efficient autonomous driving**.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T1.1">
<tr class="ltx_tr" id="S5.T1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.1.1.1" rowspan="2"><span class="ltx_text" id="S5.T1.1.1.1.1">Metrics</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T1.1.1.2">Models</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.1.2.1">Llama3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.1.2.2">Qwen2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.1.2.3">Gemma</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.4">Deepseek-r1</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.1.3.1">Success Rate</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.1.3.2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.3.2.1">98%*</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.1.3.3">82%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.1.3.4">96%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.3.5">94%</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.4">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T1.1.4.1">Inference time (s)</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T1.1.4.2">2.6</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T1.1.4.3">3.6</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T1.1.4.4">1.8</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.1.4.5">10.2</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of various Large Language Models (LLMs) used as the foundation for the Reasoner component within the Actor-Reasoner framework.  The comparison focuses on two key metrics: the success rate of the model in achieving its objective within driving interaction tasks, and the inference time, representing the speed at which the LLM processes information.  This allows for an evaluation of the different LLMs' performance in terms of both accuracy and efficiency for real-time applications.
> <details>
> <summary>read the caption</summary>
> TABLE I: Performance of Reasoner with Different LLMs
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.00502/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00502/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00502/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00502/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00502/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00502/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00502/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00502/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00502/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00502/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00502/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00502/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}