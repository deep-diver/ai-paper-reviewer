---
title: "MultiAgentBench: Evaluating the Collaboration and Competition of LLM agents"
summary: "MultiAgentBench: A benchmark for evaluating collaboration and competition in LLM agents across diverse, interactive scenarios with novel metrics and protocols."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 University of Illinois Urbana-Champaign",]
showSummary: true
date: 2025-03-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.01935 {{< /keyword >}}
{{< keyword icon="writer" >}} Kunlun Zhu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.01935" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.01935" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.01935/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

LLMs excel as autonomous agents, but benchmarks lack multi-agent dynamics. Existing benchmarks either focus on single-agent tasks or are confined to narrow domains, failing to capture the dynamics of multi-agent coordination and competition. Thus, there is a need to evaluate LLM-based multi-agent systems across diverse, interactive scenarios. Current evaluation paradigms remain insufficient for multi-agent scenarios. Traditional single-agent benchmarks primarily focus on isolated reasoning and generation, overlooking the dynamics intrinsic to multi-agent interactions. 



The study introduces **MultiAgentBench**, a benchmark to evaluate LLM-based multi-agent systems across task-solving and simulation scenarios. The MARBLE framework supports communication topologies. Experiments evaluated coordination protocols such as star, chain, and graph topologies, alongside strategies such as group discussion and cognitive planning. Notably, gpt-4o-mini reached the highest task score, while graph structure performed best in research, and cognitive planning improved milestone achievement rates.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces MultiAgentBench, a benchmark that rigorously evaluates LLM-based multi-agent systems in diverse interactive scenarios. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Proposes innovative evaluation metrics including milestone-based KPIs and structured planning and communication scores to evaluate coordination quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Reveals emergent social behaviors in agents, promising insights toward AGI-level collaboration. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**MultiAgentBench** offers diverse scenarios for LLM-based agents, advancing AGI-level collaboration insights. It aids complex task-solving and simulation, offering a structured evaluation, fostering future research and applications.

------
#### Visual Insights



![](https://arxiv.org/html/2503.01935/x1.png)

> 🔼 This figure illustrates the MultiAgentBench evaluation process, focusing on multi-agent system coordination within diverse interactive scenarios. It highlights three key aspects of the evaluation: the different environments used (with examples shown), the key performance indicators (KPIs) used to measure task completion, and the various coordination protocols being evaluated.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of MultiAgentBench evaluation process: Multi-Agent System Coordination in various interactive environments, with a focus on task performance, and coordination.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1.1" rowspan="2" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.1.1.1.1.2" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.2.1">Research</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.1.1.1.1.3" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.3.1">Minecraft</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.1.1.1.1.4" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.4.1">Database</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T1.1.1.1.1.5" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.5.1">Coding</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.1.1.1.1.6" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.6.1">Bargaining</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.1.1.1.1.7" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.7.1">WereWolf</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.1" style="background-color:#D0E1F9;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.1.1" style="background-color:#D0E1F9;">TS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.2" style="background-color:#D0E1F9;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.2.1" style="background-color:#D0E1F9;">CS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.3" style="background-color:#D5F5E3;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.3.1" style="background-color:#D5F5E3;">TS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.4" style="background-color:#D5F5E3;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.4.1" style="background-color:#D5F5E3;">CS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.5" style="background-color:#FFF9C4;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.5.1" style="background-color:#FFF9C4;">TS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.6" style="background-color:#FFF9C4;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.6.1" style="background-color:#FFF9C4;">CS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.7" style="background-color:#FFE0B2;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.7.1" style="background-color:#FFE0B2;">TS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.8" style="background-color:#FFE0B2;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.8.1" style="background-color:#FFE0B2;">CS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.9" style="background-color:#E1BEE7;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.9.1" style="background-color:#E1BEE7;">TS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.10" style="background-color:#E1BEE7;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.10.1" style="background-color:#E1BEE7;">CS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.11" style="background-color:#F8BBD0;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.11.1" style="background-color:#F8BBD0;">TS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.12" style="background-color:#F8BBD0;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.12.1" style="background-color:#F8BBD0;">CS</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.3.3.1" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.3.1.1">Meta-Llama-3.1-8B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.3.2" style="background-color:#D0E1F9;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.3.2.1" style="background-color:#D0E1F9;">80.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.3.3.3" style="background-color:#D0E1F9;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.3.3.1" style="background-color:#D0E1F9;">52.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.3.4" style="background-color:#D5F5E3;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.3.4.1" style="background-color:#D5F5E3;">6.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.3.3.5" style="background-color:#D5F5E3;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.3.5.1" style="background-color:#D5F5E3;">54.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.3.6" style="background-color:#FFF9C4;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.3.6.1" style="background-color:#FFF9C4;">34.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.3.3.7" style="background-color:#FFF9C4;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.3.7.1" style="background-color:#FFF9C4;">40.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.3.8" style="background-color:#FFE0B2;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.3.8.1" style="background-color:#FFE0B2;">59.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.3.3.9" style="background-color:#FFE0B2;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.3.9.1" style="background-color:#FFE0B2;">67.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.3.10" style="background-color:#E1BEE7;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.3.10.1" style="background-color:#E1BEE7;">72.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.3.3.11" style="background-color:#E1BEE7;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.3.11.1" style="background-color:#E1BEE7;">73.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.3.12" style="background-color:#F8BBD0;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.3.12.1" style="background-color:#F8BBD0;">12.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.3.13" style="background-color:#F8BBD0;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.3.13.1" style="background-color:#F8BBD0;">60.00</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.4.4.1" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.4.1.1">Meta-Llama-3.1-70B</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.4.2" style="background-color:#D0E1F9;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.4.4.2.1" style="background-color:#D0E1F9;">80.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.4.4.3" style="background-color:#D0E1F9;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.4.4.3.1" style="background-color:#D0E1F9;">49.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.4.4" style="background-color:#D5F5E3;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.4.4.4.1" style="background-color:#D5F5E3;">0.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.4.4.5" style="background-color:#D5F5E3;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.4.4.5.1" style="background-color:#D5F5E3;">75.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.4.6" style="background-color:#FFF9C4;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.4.6.1" style="background-color:#FFF9C4;">53.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.4.4.7" style="background-color:#FFF9C4;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.4.4.7.1" style="background-color:#FFF9C4;">37.70</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.4.8" style="background-color:#FFE0B2;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.4.4.8.1" style="background-color:#FFE0B2;">62.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.4.4.9" style="background-color:#FFE0B2;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.4.4.9.1" style="background-color:#FFE0B2;">67.18</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.4.10" style="background-color:#E1BEE7;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.4.4.10.1" style="background-color:#E1BEE7;">72.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.4.4.11" style="background-color:#E1BEE7;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.4.4.11.1" style="background-color:#E1BEE7;">71.46</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.4.12" style="background-color:#F8BBD0;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.4.4.12.1" style="background-color:#F8BBD0;">19.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.4.13" style="background-color:#F8BBD0;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.4.4.13.1" style="background-color:#F8BBD0;">60.60</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.5.5.1" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.5.1.1">Meta-Llama-3.3-70B</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.5.2" style="background-color:#D0E1F9;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.5.5.2.1" style="background-color:#D0E1F9;">80.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.5.3" style="background-color:#D0E1F9;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.5.3.1" style="background-color:#D0E1F9;">72.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.5.4" style="background-color:#D5F5E3;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.5.5.4.1" style="background-color:#D5F5E3;">9.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.5.5" style="background-color:#D5F5E3;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.5.5.5.1" style="background-color:#D5F5E3;">69.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.5.6" style="background-color:#FFF9C4;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.5.5.6.1" style="background-color:#FFF9C4;">28.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.5.7" style="background-color:#FFF9C4;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.5.5.7.1" style="background-color:#FFF9C4;">40.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.5.8" style="background-color:#FFE0B2;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.5.5.8.1" style="background-color:#FFE0B2;">56.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.5.9" style="background-color:#FFE0B2;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.5.5.9.1" style="background-color:#FFE0B2;">74.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.5.10" style="background-color:#E1BEE7;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.5.5.10.1" style="background-color:#E1BEE7;">73.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.5.11" style="background-color:#E1BEE7;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.5.5.11.1" style="background-color:#E1BEE7;">69.56</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.5.12" style="background-color:#F8BBD0;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.5.12.1" style="background-color:#F8BBD0;">36.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.5.13" style="background-color:#F8BBD0;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.5.13.1" style="background-color:#F8BBD0;">76.30</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.6.6.1" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.6.6.1.1">gpt3.5-turbo</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.2" style="background-color:#D0E1F9;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.6.6.2.1" style="background-color:#D0E1F9;">70.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.6.6.3" style="background-color:#D0E1F9;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.6.6.3.1" style="background-color:#D0E1F9;">55.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.4" style="background-color:#D5F5E3;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.6.6.4.1" style="background-color:#D5F5E3;">5.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.6.6.5" style="background-color:#D5F5E3;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.6.6.5.1" style="background-color:#D5F5E3;">63.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.6" style="background-color:#FFF9C4;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.6.6.6.1" style="background-color:#FFF9C4;">45.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.6.6.7" style="background-color:#FFF9C4;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.6.6.7.1" style="background-color:#FFF9C4;">60.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.8" style="background-color:#FFE0B2;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.6.6.8.1" style="background-color:#FFE0B2;">55.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.6.6.9" style="background-color:#FFE0B2;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.6.6.9.1" style="background-color:#FFE0B2;">76.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.10" style="background-color:#E1BEE7;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.6.6.10.1" style="background-color:#E1BEE7;">71.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.6.6.11" style="background-color:#E1BEE7;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.6.6.11.1" style="background-color:#E1BEE7;">72.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.12" style="background-color:#F8BBD0;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.6.6.12.1" style="background-color:#F8BBD0;">15.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.13" style="background-color:#F8BBD0;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.6.6.13.1" style="background-color:#F8BBD0;">75.90</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.1.1.7.7.1" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.7.1.1">gpt-4o-mini</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.7.7.2" style="background-color:#D0E1F9;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.7.2.1" style="background-color:#D0E1F9;">84.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.1.7.7.3" style="background-color:#D0E1F9;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.7.7.3.1" style="background-color:#D0E1F9;">52.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.7.7.4" style="background-color:#D5F5E3;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.7.4.1" style="background-color:#D5F5E3;">33.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.1.7.7.5" style="background-color:#D5F5E3;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.7.7.5.1" style="background-color:#D5F5E3;">61.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.7.7.6" style="background-color:#FFF9C4;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.7.7.6.1" style="background-color:#FFF9C4;">45.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.1.7.7.7" style="background-color:#FFF9C4;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.7.7.7.1" style="background-color:#FFF9C4;">43.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.7.7.8" style="background-color:#FFE0B2;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.7.8.1" style="background-color:#FFE0B2;">65.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.1.7.7.9" style="background-color:#FFE0B2;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.7.7.9.1" style="background-color:#FFE0B2;">66.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.7.7.10" style="background-color:#E1BEE7;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.7.10.1" style="background-color:#E1BEE7;">74.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.1.7.7.11" style="background-color:#E1BEE7;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.7.11.1" style="background-color:#E1BEE7;">74.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.7.7.12" style="background-color:#F8BBD0;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.7.7.12.1" style="background-color:#F8BBD0;">14.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.7.7.13" style="background-color:#F8BBD0;padding:1pt 8.0pt;"><span class="ltx_text" id="S3.T1.1.1.7.7.13.1" style="background-color:#F8BBD0;">60.10</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance of five different large language models (LLMs) across five diverse multi-agent tasks: Minecraft, Database, Coding, Bargaining, and Werewolf.  The performance is measured using two key metrics: Task Score (TS), representing the overall success rate of the model in completing the task, and Coordination Score (CS), indicating the quality of collaboration between the agents within the model.  The TS values are displayed as percentages and multiplied by 20 for better readability. Notably, the table highlights that the inherent capabilities of the LLM itself are the primary driver of performance, however the Coordination Score is still a good indicator of Task Score.  Specifically, in three pairs of tasks, the model achieving the highest Task Score also achieves the highest Coordination Score, illustrating a clear correlation between these two metrics in those specific cases.
> <details>
> <summary>read the caption</summary>
> Table 1: Average Task Score (TS) (%) and the Coordination Score (CS) for Minecraft, Database, Coding, Bargaining, and WereWolf, scores are multiplied by 20. We can see that model abilities are still the key factor for task completion. CS is a good indicator for TS given three pairs of scenarios having the one model having the highest TS and CS at the same time.
> </details>





### In-depth insights


#### MARBLE: Eval Tool
**MultiAgentBench** introduces **MARBLE (Multi-agent coordination Backbone with LLM Engine)**, offering diverse communication topologies like star, chain, tree, and graphs to evaluate LLM-based multi-agent systems. It enhances the evaluation process by supporting varying coordination protocols and reasoning strategies, improving the realism and depth of multi-agent interaction analysis. **MARBLE** contributes significantly to assessing how LLMs coordinate in complex, interactive settings by integrating varied task metrics and flexible coordination topologies.

#### Multi-Agent Dynamics
Multi-agent dynamics refers to the **complex interactions** between autonomous agents in a shared environment, involving collaboration, competition, and emergent behaviors. Understanding these dynamics is crucial for designing effective multi-agent systems, especially as LLMs are increasingly used as agents. Key challenges involve **coordinating agents with diverse goals and capabilities**, managing communication and trust, and adapting to changing environments. Analyzing these dynamics requires novel evaluation metrics that go beyond task completion, considering factors like coordination quality and fairness. Studying multi-agent dynamics offers insights into designing robust systems capable of complex problem-solving.

#### Key Performance
**Key Performance Indicators (KPIs)** are essential for objectively evaluating multi-agent system performance, moving beyond simple task completion. These metrics must capture not only successful outcomes but also the **quality of collaboration and competition** inherent in complex scenarios. A robust KPI framework could incorporate **milestone-based achievements**, reflecting progress toward sub-goals and individual agent contributions. Furthermore, these KPI metrics must objectively quantify aspects such as **communication efficiency**, measured by information exchange and task execution; and also **strategic coordination**, measured by adaptability in goal management and role assignments. Well-defined KPIs would offer **valuable insights into how LLM agents perform**.

#### Coordination Types
Coordination in multi-agent systems is a complex process. **Centralized approaches** like star and tree offer strong oversight but can limit scalability. In contrast, **decentralized coordination** via graph-mesh networks promotes concurrency. The choice hinges on balancing control and agility. Adaptive mechanisms and self-organizing strategies are critical. Further investigation on hybrid approaches could lead to more effective solutions. These choices significantly impact the overall system’s performance. The ultimate goal is finding an optimal balance.

#### Emergent Social AI
**Emergent Social AI** signifies a critical frontier where artificial intelligence transcends individual capabilities to exhibit collective intelligence and social behaviors within multi-agent systems. This area explores how LLMs, when interacting, coordinate, compete, and collaborate, mirroring human social dynamics. Key aspects include the **emergence of cooperation**, the **development of negotiation strategies**, and the ability to **resolve conflicts** effectively. Evaluating these systems requires metrics beyond task completion, focusing on **communication quality, trust-building, and strategic adaptation**. Studying **real-world social behaviors** provides insights into complex social interactions and dynamics for designing AI systems. Emergent behaviors in **multi-agent systems** are pivotal to team coordination. By understanding these 'aha moments', we can catalyze spontaneous **multi-agent dynamics** and uncover novel coordination strategies that may lead to more advanced AI.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.01935/x2.png)

> 🔼 The MARBLE framework is a multi-agent coordination system that uses interconnected modules to enable effective collaboration and efficient task execution.  This figure illustrates how task information, persona data (agent profiles), and domain-specific databases are integrated with memory modules (short-term and long-term) via the Coordinate Engine and the Cognitive Module. The Coordinate Engine manages the overall workflow and inter-agent relationships, while the Cognitive Module handles agent reasoning and strategy adaptation. The interactions between these modules and the environment are shown, highlighting the dynamic flow of information and actions within the MARBLE framework.
> <details>
> <summary>read the caption</summary>
> Figure 2: MARBLE : showcasing interactions between task information, persona data, domain databases, memory modules, and the environment through the coordinate engine and cognitive module.
> </details>



![](https://arxiv.org/html/2503.01935/x3.png)

> 🔼 This figure illustrates the different coordination protocols and planning strategies used in the MultiAgentBench framework. Panel (a) shows four different coordination protocols: star, tree, graph, and chain.  These represent different ways the agents can communicate and coordinate their actions to complete a task. The star and tree structures are centralized, meaning a single agent or a small group of agents leads the coordination effort. The graph and chain structures are decentralized; in the graph structure, multiple agents communicate directly with each other, while in the chain structure, communication flows sequentially from one agent to the next. Panel (b) depicts four different prompt strategies for planning: Vanilla Prompting, Chain-of-Thought (CoT), Group Discussion, and Cognitive Evolving Planning.  These methods showcase how different approaches can influence the planning process. The vanilla prompt provides a basic instruction, while CoT guides the agent through step-by-step reasoning. Group discussion involves multiple agents sharing ideas and refining the plan collaboratively, whereas cognitive self-evolving planning allows agents to continually update their plans based on their experiences and feedback.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of coordination protocols and planning prompt strategies. (a) shows centralized and decentralized planning structures (e.g., star, tree, graph, and chain). (b) describes strategies like group discussions and cognitive prompts, incorporating iterative feedback and task updates for effective planning.
> </details>



![](https://arxiv.org/html/2503.01935/x4.png)

> 🔼 This figure illustrates the process of creating the MultiAgentBench benchmark and the method for dynamically detecting milestones to compute Key Performance Indicators (KPIs).  The benchmark curation involves both human-generated datasets (for fixed tasks) and dynamic milestone detection (for scenarios with evolving tasks).  Human-generated datasets provide a baseline of well-defined tasks. Dynamic milestone detection uses LLMs to monitor task progress and identify completion of intermediate steps or 'milestones,' contributing to a more nuanced evaluation of agent performance beyond just final task success.  The process is shown for two scenarios: Minecraft creation (a human-generated fixed dataset), and a bargaining scenario (dynamic milestone detection). The dynamic milestones are then used to calculate the KPI, providing a more comprehensive assessment of multi-agent system performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Illustration of our benchmark curation and the dynamic milestones detecting for KPI metric.
> </details>



![](https://arxiv.org/html/2503.01935/x5.png)

> 🔼 This figure compares four different multi-agent coordination protocols (Tree, Star, Graph, and Chain) across multiple evaluation metrics.  The metrics assess various aspects of the agents' performance, including task completion, communication effectiveness, planning quality, and resource usage (token usage).  The token usage metric is normalized, with 0 representing the lowest and 100 the highest usage.  Detailed information about the metrics used for the research task scenario is provided in Appendix A.4 of the paper. The figure visually represents the performance of each protocol, highlighting strengths and weaknesses of each approach for different aspects of coordination.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of Different Coordination Protocols.—Tree, Star, Graph, and Chain—across multiple evaluation metrics. Specially, the token usages are scaled such that the lowest value is 00 and the hightest value is 100100100100. Details about metrics used for research task can be found at A.4
> </details>



![](https://arxiv.org/html/2503.01935/x6.png)

> 🔼 The figure presents a bar chart comparing the average metrics (Task Score and Coordination Score) across four different planning prompt strategies applied to the Research Task within the MultiAgentBench framework. The strategies compared are Vanilla Prompting, Chain-of-Thought prompting, Group Discussion, and Cognitive Evolving Planning.  The chart clearly demonstrates that the Cognitive Evolving Planning strategy yields the highest Coordination Score, indicating its effectiveness in facilitating collaboration among the LLM agents.
> <details>
> <summary>read the caption</summary>
> Figure 6: Average Metrics for Research Tasks for different planning prompt strategies. Cognitive Evolve Planning show best result in CS.
> </details>



![](https://arxiv.org/html/2503.01935/x7.png)

> 🔼 This figure displays the performance of the gpt-4o-mini model across multiple iterations of a Minecraft task.  It tracks four key metrics over time: Task Score (TS), which measures the overall success in completing the Minecraft task; Communication Score (CS), which assesses the quality of communication between agents; Planning Score (PS), which evaluates the effectiveness of the planning process; and Collaboration Score (CoS), which represents a combination of communication and planning, reflecting overall team effectiveness. By observing the trends in each metric across iterations, we can understand the model's learning trajectory, its ability to improve task performance over time, and its efficiency in collaborative problem-solving.
> <details>
> <summary>read the caption</summary>
> Figure 7: Scores for gpt-4o-mini across different iterations in Minecraft. The figure presents Task Score (TS), Communication Score (CS), Planning Score (PS), and Collaboration Score (CoS) over multiple iterations.
> </details>



![](https://arxiv.org/html/2503.01935/x8.png)

> 🔼 This figure demonstrates the relationship between the number of agents involved in a research task and the overall performance metrics.  The x-axis represents the number of agents, while the y-axis displays three key performance indicators: KPI (Key Performance Indicator), Coordination Score, and Task Score.  The KPI represents the overall task completion success rate, the Coordination Score reflects the quality of collaboration and communication among agents, and the Task Score reflects the quality of the final research output. The graph shows how these three metrics change as the number of agents involved increases. This helps analyze the impact of team size on efficiency and collaboration in a multi-agent setting. 
> <details>
> <summary>read the caption</summary>
> Figure 8: Scaling on Agents Number in Research Scenario. This figure shows the impact of agent number on KPI, Coordination Score, and Task Score.
> </details>



![](https://arxiv.org/html/2503.01935/x9.png)

> 🔼 This figure shows an example of the task content provided to the agents in the Research scenario.  It displays the introduction to a research paper on the Neural Language of Thought Model (NLoTM), which is designed to learn hierarchical, composable discrete representations from non-linguistic data. The agents are tasked with generating a novel research idea based on this introduction, following a specified 5-question (5q) format to ensure clarity, feasibility, and relevance.
> <details>
> <summary>read the caption</summary>
> Figure 9: Task Content Case.
> </details>



![](https://arxiv.org/html/2503.01935/x10.png)

> 🔼 This figure shows an example of an agent profile used in the MultiAgentBench framework. The profile provides a detailed description of an agent's expertise, past work, and personality traits, which are relevant to the agent's participation in multi-agent tasks. This example illustrates the level of detail and specificity included in the agent profiles to ensure realistic interactions between agents in complex scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 10: Agent Profile Case.
> </details>



![](https://arxiv.org/html/2503.01935/x11.png)

> 🔼 This figure presents an example of a research idea formulated using the 5-question (5Q) format.  The 5Q format structures a research idea into five core questions addressing the problem's definition, significance, challenges, prior work, and proposed approach. The example showcases a research idea focused on enhancing malware detection and classification in network traffic using transformer-based models. Each of the five questions provides detailed information addressing various aspects of the proposed research, highlighting its novelty, relevance, challenges, and potential contributions.
> <details>
> <summary>read the caption</summary>
> Figure 11: 5Q cases.
> </details>



![](https://arxiv.org/html/2503.01935/x12.png)

> 🔼 This scatter plot visualizes the relationship between the 'Net Score' and the 'Result Score' in the Werewolf game simulations.  The Net Score represents the cumulative point difference between the Villagers and Werewolves throughout a game, reflecting the overall advantage of one team over the other. The Result Score indicates the final outcome of the game: the difference in the number of surviving villagers and werewolves. The plot shows that a higher Net Score strongly correlates with a positive Result Score (Villager victory), while a lower Net Score often leads to a negative Result Score (Werewolf victory). This suggests that the Net Score effectively predicts the game's outcome.
> <details>
> <summary>read the caption</summary>
> Figure 12: Net Score vs. Result Score (Scatter Plot)
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T2.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.1.1.2.1">Comm (Human)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.1.1.3.1">Plan (Human)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.1.1.4.1">Comm (Machine)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.1.1.5.1">Plan (Machine)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T2.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T2.1.1.2.1.1">llama31_70b</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.2.1.2">3.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.2.1.3">3.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.2.1.4">3.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.2.1.5">3.00</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T2.1.1.3.2.1">llama33</th>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.3.2.2">3.94</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.3.2.3">3.44</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.3.2.4">3.89</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.3.2.5">3.89</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T2.1.1.4.3.1">gpt-4o-mini</th>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.4.3.2">3.61</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.4.3.3">3.33</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.4.3.4">3.00</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.4.3.5">3.00</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T2.1.1.5.4.1">gpt3.5-turbo</th>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.5.4.2">3.75</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.5.4.3">3.44</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.5.4.4">4.00</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.5.4.5">3.75</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T2.1.1.6.5.1">llama31_8b</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.6.5.2">2.62</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.6.5.3">3.06</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.6.5.4">3.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.6.5.5">3.00</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of human and machine evaluation scores for the Werewolf game scenario.  It shows how well the automatically generated scores from the system's evaluation method align with human judgments.  For each model (llama31_70b, llama33, gpt-40-mini, gpt3.5-turbo, llama31_8b), it lists the human-assigned scores for both communication and planning aspects, followed by the corresponding machine-generated scores for these same aspects.  The comparison allows for an assessment of the accuracy and reliability of the automated scoring system in relation to human perception.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of human vs. machine evaluation scores in a Werewolf scenario.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.3.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T3.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T3.3.1.1.1.1">Faction</span></td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A1.T3.3.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.3.1.1.2.1">
<span class="ltx_p" id="A1.T3.3.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A1.T3.3.1.1.2.1.1.1">Action/Outcome</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.3.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T3.3.1.1.3.1">Points</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.3.2.2.1"><span class="ltx_text ltx_font_bold" id="A1.T3.3.2.2.1.1">Villager</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T3.3.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.3.2.2.2.1">
<span class="ltx_p" id="A1.T3.3.2.2.2.1.1">Villager candidate elected as sheriff</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.3.2.2.3">+2</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.3.3">
<td class="ltx_td" id="A1.T3.3.3.3.1"></td>
<td class="ltx_td ltx_align_justify" id="A1.T3.3.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.3.3.3.2.1">
<span class="ltx_p" id="A1.T3.3.3.3.2.1.1">Guard successfully protects a target from werewolf attack</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.3.3">+2</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.4.4">
<td class="ltx_td" id="A1.T3.3.4.4.1"></td>
<td class="ltx_td ltx_align_justify" id="A1.T3.3.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.3.4.4.2.1">
<span class="ltx_p" id="A1.T3.3.4.4.2.1.1">Witch successfully saves a target from werewolf attack</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.4.4.3">+2</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.5.5">
<td class="ltx_td" id="A1.T3.3.5.5.1"></td>
<td class="ltx_td ltx_align_justify" id="A1.T3.3.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.3.5.5.2.1">
<span class="ltx_p" id="A1.T3.3.5.5.2.1.1">Witch uses poison to kill a werewolf</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.5.5.3">+2</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.6.6">
<td class="ltx_td" id="A1.T3.3.6.6.1"></td>
<td class="ltx_td ltx_align_justify" id="A1.T3.3.6.6.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.3.6.6.2.1">
<span class="ltx_p" id="A1.T3.3.6.6.2.1.1">Werewolf is voted out during the day</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.6.6.3">+2</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.7.7">
<td class="ltx_td" id="A1.T3.3.7.7.1"></td>
<td class="ltx_td ltx_align_justify" id="A1.T3.3.7.7.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.3.7.7.2.1">
<span class="ltx_p" id="A1.T3.3.7.7.2.1.1">Each villager who votes for a werewolf</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.7.7.3">+0.2</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.8.8">
<td class="ltx_td" id="A1.T3.3.8.8.1"></td>
<td class="ltx_td ltx_align_justify" id="A1.T3.3.8.8.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.3.8.8.2.1">
<span class="ltx_p" id="A1.T3.3.8.8.2.1.1">Each villager who votes for a villager</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.8.8.3">-0.1</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.9.9">
<td class="ltx_td" id="A1.T3.3.9.9.1"></td>
<td class="ltx_td ltx_align_justify" id="A1.T3.3.9.9.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.3.9.9.2.1">
<span class="ltx_p" id="A1.T3.3.9.9.2.1.1">Witch uses poison to kill a villager</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.9.9.3">-2</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.10.10">
<td class="ltx_td" id="A1.T3.3.10.10.1"></td>
<td class="ltx_td ltx_align_justify" id="A1.T3.3.10.10.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.3.10.10.2.1">
<span class="ltx_p" id="A1.T3.3.10.10.2.1.1">Starting from the second day, the seer gains +1 point for each additional day survived</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.10.10.3">+1/day</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.11.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.3.11.11.1"><span class="ltx_text ltx_font_bold" id="A1.T3.3.11.11.1.1">Werewolf</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T3.3.11.11.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.3.11.11.2.1">
<span class="ltx_p" id="A1.T3.3.11.11.2.1.1">Werewolf candidate elected as sheriff</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.3.11.11.3">+2</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.12.12">
<td class="ltx_td" id="A1.T3.3.12.12.1"></td>
<td class="ltx_td ltx_align_justify" id="A1.T3.3.12.12.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.3.12.12.2.1">
<span class="ltx_p" id="A1.T3.3.12.12.2.1.1">Werewolves successfully choose a target to attack at night</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.12.12.3">+1</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.13.13">
<td class="ltx_td ltx_border_bb" id="A1.T3.3.13.13.1"></td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A1.T3.3.13.13.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.3.13.13.2.1">
<span class="ltx_p" id="A1.T3.3.13.13.2.1.1">A villager is voted out during the day</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.13.13.3">+1</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the scoring system used in the Werewolf game simulation within the MultiAgentBench framework.  It outlines how points are awarded to both Villagers and Werewolves based on their actions and the game's outcome.  Positive points are awarded to Villagers for successfully completing tasks like electing a sheriff, protecting key villagers, or eliminating werewolves.  Negative points are given to Villagers for incorrect votes or failures.  Werewolves earn points by eliminating villagers or being elected sheriff. This scoring system helps quantify the effectiveness of collaboration and strategic decision-making within the multi-agent game.
> <details>
> <summary>read the caption</summary>
> Table 3: Scoring Rules for Villagers and Werewolves in Full-Game Simulation
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.2.1">Completion Ratio</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.3.1">Villager Net Score</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T4.1.1.2.1.1">llama3.1-8B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.1.2">0.2412</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.1.3">-1.2055</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.3.2.1">llama3.1-70B</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.2.2">0.3641</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.2.3">-1.0736</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.4.3.1">llama3.3-70B</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.3.2">0.3754</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.3.3">0.2802</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.5.4.1">gpt-3.5-turbo</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.4.2">0.2217</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.4.3">-0.7272</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T4.1.1.6.5.1">gpt-4o-mini</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.1.6.5.2">0.2503</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.1.6.5.3">-1.4207</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of single-day simulations in the Werewolf game environment.  For each of the five evaluated language models (Meta-Llama-3.1-8B, Meta-Llama-3.1-70B, Meta-Llama-3.3-70B, GPT-3.5-turbo, and GPT-40-mini), it shows two key metrics: the Completion Ratio (representing the percentage of successfully completed daily tasks) and the Villager Net Score (the difference in points accumulated by the villagers versus the werewolves in a single day).  The data provides insights into the models' short-term performance in cooperative multi-agent scenarios, focusing on their ability to successfully execute immediate tasks within the context of a complex social setting.
> <details>
> <summary>read the caption</summary>
> Table 4: Single-Day Simulation metrics for each model: completion ratio, villager net score.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T5.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.2.1">Net Score</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.3.1">Result Score</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.4.1">Win Rate</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.1.2.1.1">llama3.1-8B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.2">-5.0839</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.3">-2.3793</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.4">0.0115</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.3.2.1">llama3.1-70B</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.2">-5.2892</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.3">-2.0000</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.4">0.0323</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.4.3.1">llama3.3-70B</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.2">0.4511</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.3">-0.1915</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.4">0.3511</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.5.4.1">gpt-3.5-turbo</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.2">-2.8230</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.3">-1.3448</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.4">0.0920</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.6.5.1">gpt-4o-mini</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.2">-4.6649</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.3">-2.0825</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.4">0.0309</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T5.1.1.7.6.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.7.6.1.1">gpt-4o(baseline)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.7.6.2">-2.1946</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.7.6.3">-0.7742</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.7.6.4">0.2473</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a full-game simulation in a Werewolf scenario, evaluating the performance of five different large language models (LLMs).  For each model, it shows the net score (the difference in points accumulated by villagers vs. werewolves), the result score (final difference in surviving villagers minus surviving werewolves), and the villager win rate (percentage of games won by the villagers). The results illustrate how the different models perform in terms of long-term strategic planning, cooperation, and adaptation within a complex, competitive environment.
> <details>
> <summary>read the caption</summary>
> Table 5: Full-Run Simulation metrics for each model: net score, result score, and villager win rate.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.1.1">Trait</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.2.1">Very Negative</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.3.1">Moderately Negative</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.4.1">Slightly Negative</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.5.1">Slightly Positive</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.6.1">Moderately Positive</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.7.1">Very Positive</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.2.1.1.1">OPE (Openness)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.2">60%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.3">71%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.4">
<span class="ltx_text ltx_font_italic" id="A1.T6.1.1.2.1.4.1">unimaginative</span> (62%)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.5">
<span class="ltx_text ltx_font_italic" id="A1.T6.1.1.2.1.5.1">imaginative</span> (55%)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.6">77%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.7">75%</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.3.2.1"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.3.2.1.1">CON (Conscientiousness)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.2">68%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.3">68%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.4">
<span class="ltx_text ltx_font_italic" id="A1.T6.1.1.3.2.4.1">irresponsible</span> (66%)</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.5">
<span class="ltx_text ltx_font_italic" id="A1.T6.1.1.3.2.5.1">responsible</span> (67%)</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.6">63%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.7">68%</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.4.3.1"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.4.3.1.1">EXT (Extraversion)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.2">60%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.3">67%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.4">
<span class="ltx_text ltx_font_italic" id="A1.T6.1.1.4.3.4.1">introverted</span> (59%)</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.5">
<span class="ltx_text ltx_font_italic" id="A1.T6.1.1.4.3.5.1">extraverted</span> (58%)</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.6">75%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.7">81%</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.5.4">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.5.4.1"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.5.4.1.1">AGR (Agreeableness)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.2">71%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.3">69%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.4">
<span class="ltx_text ltx_font_italic" id="A1.T6.1.1.5.4.4.1">distrustful</span> (59%)</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.5">
<span class="ltx_text ltx_font_italic" id="A1.T6.1.1.5.4.5.1">trustful</span> (71%)</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.6">68%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.7">62%</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T6.1.1.6.5.1"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.6.5.1.1">NEU (Neuroticism)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.6.5.2">59%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.6.5.3">59%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.6.5.4">
<span class="ltx_text ltx_font_italic" id="A1.T6.1.1.6.5.4.1">relaxed</span> (81%)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.6.5.5">
<span class="ltx_text ltx_font_italic" id="A1.T6.1.1.6.5.5.1">nervous</span> (70%)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.6.5.6">55%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.6.5.7">76%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the distribution of the Big Five personality traits (Openness, Conscientiousness, Extraversion, Agreeableness, and Neuroticism) across different categories in the dataset. Each trait is categorized into six levels ranging from Very Negative to Very Positive, with percentages indicating the proportion of occurrences in each level.  Descriptive adjectives are added to some categories to provide qualitative insights into personality tendencies.
> <details>
> <summary>read the caption</summary>
> Table 6: Distribution of Personality Traits in Percentage
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T7.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T7.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.2.1">B-Comm</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.3.1">B-Plan</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.4.1">B-Collab Avg</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.5.1">S-Comm</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.6.1">S-Plan</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.7.1">S-Collab Avg</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.8.1">Final Bargaining</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.2.1.1.1">gpt-3.5-turbo</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.2"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.2.1.2.1">3.590</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.3"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.2.1.3.1">3.550</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.4"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.2.1.4.1">3.570</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.5"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.2.1.5.1">3.700</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.6"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.2.1.6.1">3.560</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.7"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.2.1.7.1">3.630</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.8"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.2.1.8.1">3.600</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.1.3.2.1"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.3.2.1.1">gpt-4o-mini</span></th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.2"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.3.2.2.1">3.550</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.3"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.3.2.3.1">3.510</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.4"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.3.2.4.1">3.530</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.5"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.3.2.5.1">4.020</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.6"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.3.2.6.1">3.760</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.7"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.3.2.7.1">3.890</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.8"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.3.2.8.1">3.710</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.1.4.3.1"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.4.3.1.1">Llama-3.1-70B-Instruct-Turbo</span></th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.2"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.4.3.2.1">3.030</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.3"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.4.3.3.1">3.480</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.4"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.4.3.4.1">3.255</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.5"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.4.3.5.1">4.180</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.6"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.4.3.6.1">3.600</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.7"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.4.3.7.1">3.890</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.8"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.4.3.8.1">3.573</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.1.5.4.1"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.5.4.1.1">Llama-3.1-8B-Instruct-Turbo</span></th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.2"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.5.4.2.1">3.710</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.3"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.5.4.3.1">3.490</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.4"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.5.4.4.1">3.600</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.5"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.5.4.5.1">3.840</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.6"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.5.4.6.1">3.630</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.7"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.5.4.7.1">3.735</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.8"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.5.4.8.1">3.668</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T7.1.1.6.5.1"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.6.5.1.1">Llama-3.3-70B-Instruct-Turbo</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.1.6.5.2"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.6.5.2.1">3.010</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.1.6.5.3"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.6.5.3.1">3.430</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.1.6.5.4"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.6.5.4.1">3.220</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.1.6.5.5"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.6.5.5.1">3.930</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.1.6.5.6"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.6.5.6.1">3.540</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.1.6.5.7"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.6.5.7.1">3.735</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.1.6.5.8"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.6.5.8.1">3.478</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the performance of five different large language models (LLMs) in a multi-agent bargaining scenario.  For each model, it shows the individual Communication, Planning, and Collaboration scores (averaged across both buyer and seller roles) along with the overall Final Bargaining Score. The Collaboration score is an average of the Communication and Planning scores. This table allows for a nuanced comparison of the models' abilities in negotiation, highlighting their strengths and weaknesses in communication, strategic planning, and overall negotiation effectiveness.
> <details>
> <summary>read the caption</summary>
> Table 7: Buyer and Seller detailed scores (Communication, Planning, and their Collab average), plus the Final Bargaining Score for each model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T8.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" colspan="3" id="A1.T8.1.1.1.1" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.1">Bargaining (TS)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.1.2.1.1" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.2.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.2.1.2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.2.1.2.1">Buyer</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.2.1.3" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.2.1.3.1">Seller</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.1.3.2.1" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.3.2.1.1">Meta-Llama-3.1-8B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.3.2.2" style="padding:1pt 10.0pt;">3.573</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.3.2.3" style="padding:1pt 10.0pt;">3.708</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.4.3.1" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.4.3.1.1">Meta-Llama-3.1-70B</span></th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.4.3.2" style="padding:1pt 10.0pt;">3.557</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.4.3.3" style="padding:1pt 10.0pt;">3.656</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.5.4.1" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.5.4.1.1">Meta-Llama-3.3-70B</span></th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.5.4.2" style="padding:1pt 10.0pt;">3.519</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.5.4.3" style="padding:1pt 10.0pt;">3.796</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.1.6.5.1" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.6.5.1.1">gpt3.5-turbo</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.6.5.2" style="padding:1pt 10.0pt;">3.535</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.6.5.3" style="padding:1pt 10.0pt;">3.632</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T8.1.7.6.1" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.7.6.1.1">gpt-4o-mini</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.1.7.6.2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.7.6.2.1">3.578</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.1.7.6.3" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.7.6.3.1">3.869</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Task Scores (TS) achieved by different language models in the Bargaining task of the MultiAgentBench benchmark.  It specifically shows the performance of each model from the perspective of both the Buyer and Seller roles in a negotiation scenario. The scores reflect the quality of each model's negotiation strategies and outcomes.  A higher score indicates better performance in achieving a successful and mutually beneficial agreement.
> <details>
> <summary>read the caption</summary>
> Table 8: Bargaining (TS) Performance
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.01935/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01935/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}