---
title: "A Strategic Coordination Framework of Small LLMs Matches Large LLMs in Data Synthesis"
summary: "Smaller LLMs, strategically coordinated, rival large LLMs in data synthesis! GRA framework enables efficient, high-quality data generation with reduced resource demands."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Shanghai AI Laboratory",]
showSummary: true
date: 2025-04-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.12322 {{< /keyword >}}
{{< keyword icon="writer" >}} Xin Gao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.12322" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.12322" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.12322/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Data synthesis and distillation often rely on Large Language Models (LLMs), which have high costs and potential biases. Smaller LLMs are accessible but lack generating quality data. Addressing this, this paper introduces a multiple small LLMs framework, GRA, which uses Generator, Reviewer, and Adjudicator roles to simulate peer-review. This framework aggregates specialized roles across small LLMs for refinement and quality control, similar to single large LLMs. 



 The study uses collaborative small LLMs which achieve data-level parity with large LLM-based distillation. Experiments show that GRA-produced data matches or exceeds single large LLM outputs, such as Qwen-2.5-72B-Instruct. The work demonstrates strategically coordinated smaller agents and challenges the necessity of large models for data synthesis. Datasets, models, and code are publicly available.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Small LLMs can achieve data-level parity with large LLMs through strategic coordination. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The GRA framework offers a resource-efficient approach to data synthesis by specializing roles across multiple small LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Collaborative frameworks can potentially mitigate biases and enhance data diversity compared to single large LLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel **collaborative data synthesis framework that leverages smaller LLMs to match the data quality of larger models**, potentially reducing computational costs and environmental impact. By challenging the necessity of monolithic LLMs for data synthesis, this work **opens new avenues for sustainable AI research** and resource-efficient model development.

------
#### Visual Insights



![](https://arxiv.org/html/2504.12322/x1.png)

> 🔼 This figure displays a bar chart comparing the average performance of different models on a specific benchmark, using the Qwen-2.5-7B model as a base.  The models compared include GRA (the proposed multi-agent small LLM framework), the vanilla seed dataset used for training, and data distilled from large language models (LLMs).  The chart allows for a visual assessment of how GRA performs against traditional methods of data synthesis.  Each bar represents the average performance across various tasks, demonstrating the relative effectiveness of each approach.
> <details>
> <summary>read the caption</summary>
> Figure 1: Average performance across GRA, vanilla seed dataset and lagrge LLMs distilled data with Qwen-2.5-7B base model.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.1.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.1.1.1.3" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.3.1">Math</span></td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.1.4" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.1.1.1.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.5.1">Coding</span></td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.1.6" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S4.T1.1.1.1.7" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.7.1">Reasoning</span></td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.1.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.1.1.1.9" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.9.1">General</span></td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.1.10" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.1.11" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.2">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.1.1">Dataset</span></td>
<td class="ltx_td" id="S4.T1.1.1.2.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">GSM8K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">MATH</td>
<td class="ltx_td" id="S4.T1.1.1.2.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">Humaneval</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">MBPP</td>
<td class="ltx_td" id="S4.T1.1.1.2.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">HellaSwag</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">ARC-C</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">GPQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">BBH</td>
<td class="ltx_td" id="S4.T1.1.1.2.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">MMLU</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">IFEval</td>
<td class="ltx_td" id="S4.T1.1.1.2.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.2.17" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.17.1">AVG</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="S4.T1.1.1.3.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.1.1.3.1.1">★ Qwen-2.5-7B Base Model</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.4.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Alpaca</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.4.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">60.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">27.00</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.4.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">32.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">61.20</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.4.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">72.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">23.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">60.42</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.4.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">44.95</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.4.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">49.32</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.5.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.5.1.1">Qwen-2.5-7B-GRA</span></td>
<td class="ltx_td" id="S4.T1.1.1.5.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.3" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.5.3.1" style="background-color:#D2E6FA;">70.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">33.82</td>
<td class="ltx_td" id="S4.T1.1.1.5.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.6" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.5.6.1" style="background-color:#D2E6FA;">76.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.80</td>
<td class="ltx_td" id="S4.T1.1.1.5.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.9" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.5.9.1" style="background-color:#D2E6FA;">80.23</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.10" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.5.10.1" style="background-color:#D2E6FA;">74.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.11" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.5.11.1" style="background-color:#D2E6FA;">24.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.12" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.5.12.1" style="background-color:#D2E6FA;">60.57</span></td>
<td class="ltx_td" id="S4.T1.1.1.5.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.14" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.5.14.1" style="background-color:#D2E6FA;">65.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.16</td>
<td class="ltx_td" id="S4.T1.1.1.5.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.17" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.5.17.1" style="background-color:#D2E6FA;">60.36</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.6.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen-2.5-32B-Instruct-Distilled</td>
<td class="ltx_td" id="S4.T1.1.1.6.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.23</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.4" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.6.4.1" style="background-color:#D2E6FA;">56.26</span></td>
<td class="ltx_td" id="S4.T1.1.1.6.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">76.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.7" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.6.7.1" style="background-color:#D2E6FA;">65.40</span></td>
<td class="ltx_td" id="S4.T1.1.1.6.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">72.02</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">56.61</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">20.71</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">42.04</td>
<td class="ltx_td" id="S4.T1.1.1.6.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">49.05</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.15" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.6.15.1" style="background-color:#D2E6FA;">53.71</span></td>
<td class="ltx_td" id="S4.T1.1.1.6.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">55.36</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.7.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen-2.5-72B-Instruct-Distilled</td>
<td class="ltx_td" id="S4.T1.1.1.7.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.64</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">55.80</td>
<td class="ltx_td" id="S4.T1.1.1.7.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">74.39</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.40</td>
<td class="ltx_td" id="S4.T1.1.1.7.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">74.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">56.95</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">23.74</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">38.75</td>
<td class="ltx_td" id="S4.T1.1.1.7.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">37.37</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.33</td>
<td class="ltx_td" id="S4.T1.1.1.7.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.03</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.8.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">WizardLM</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.8.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.8.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.8.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">31.94</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.8.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.8.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.8.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.20</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.8.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.8.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.8.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">40.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.8.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">21.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.8.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">39.34</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.8.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.8.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">31.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.8.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.12</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.8.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.8.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.71</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.9">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.9.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.9.1.1">Qwen-2.5-7B-GRA</span></td>
<td class="ltx_td" id="S4.T1.1.1.9.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">58.98</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.84</td>
<td class="ltx_td" id="S4.T1.1.1.9.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">76.83</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.60</td>
<td class="ltx_td" id="S4.T1.1.1.9.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.9.9.1" style="background-color:#D2E6FA;">81.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.10" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.9.10.1" style="background-color:#D2E6FA;">79.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.11" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.9.11.1" style="background-color:#D2E6FA;">28.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.12" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.9.12.1" style="background-color:#D2E6FA;">63.99</span></td>
<td class="ltx_td" id="S4.T1.1.1.9.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.14" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.9.14.1" style="background-color:#D2E6FA;">65.23</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.15" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.9.15.1" style="background-color:#D2E6FA;">54.15</span></td>
<td class="ltx_td" id="S4.T1.1.1.9.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.17" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.9.17.1" style="background-color:#D2E6FA;">62.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.10">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.10.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen-2.5-32B-Instruct-Distilled</td>
<td class="ltx_td" id="S4.T1.1.1.10.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">59.36</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">54.96</td>
<td class="ltx_td" id="S4.T1.1.1.10.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">72.56</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.7" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.10.7.1" style="background-color:#D2E6FA;">66.20</span></td>
<td class="ltx_td" id="S4.T1.1.1.10.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">54.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">54.58</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">21.21</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">37.63</td>
<td class="ltx_td" id="S4.T1.1.1.10.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">46.99</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.96</td>
<td class="ltx_td" id="S4.T1.1.1.10.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.33</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.11">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.11.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen-2.5-72B-Instruct-Distilled</td>
<td class="ltx_td" id="S4.T1.1.1.11.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.3" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.11.3.1" style="background-color:#D2E6FA;">69.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.4" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.11.4.1" style="background-color:#D2E6FA;">56.30</span></td>
<td class="ltx_td" id="S4.T1.1.1.11.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.6" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.11.6.1" style="background-color:#D2E6FA;">79.88</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.20</td>
<td class="ltx_td" id="S4.T1.1.1.11.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">57.85</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">56.61</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">16.67</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">37.02</td>
<td class="ltx_td" id="S4.T1.1.1.11.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">35.02</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.96</td>
<td class="ltx_td" id="S4.T1.1.1.11.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.93</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.12.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Condor</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.12.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">57.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.60</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.12.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.60</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.12.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">55.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">66.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">24.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">39.96</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.12.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">49.86</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.12.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.61</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.13">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.13.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.13.1.1">Qwen-2.5-7B-GRA</span></td>
<td class="ltx_td" id="S4.T1.1.1.13.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.75</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">42.82</td>
<td class="ltx_td" id="S4.T1.1.1.13.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.6" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.13.6.1" style="background-color:#D2E6FA;">76.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.60</td>
<td class="ltx_td" id="S4.T1.1.1.13.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.9" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.13.9.1" style="background-color:#D2E6FA;">79.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.10" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.13.10.1" style="background-color:#D2E6FA;">75.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.11" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.13.11.1" style="background-color:#D2E6FA;">26.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.12" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.13.12.1" style="background-color:#D2E6FA;">61.49</span></td>
<td class="ltx_td" id="S4.T1.1.1.13.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.14" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.13.14.1" style="background-color:#D2E6FA;">64.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.15" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.13.15.1" style="background-color:#D2E6FA;">54.02</span></td>
<td class="ltx_td" id="S4.T1.1.1.13.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.17" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.13.17.1" style="background-color:#D2E6FA;">61.12</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.14">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.14.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen-2.5-32B-Instruct-Distilled</td>
<td class="ltx_td" id="S4.T1.1.1.14.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.3" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.14.3.1" style="background-color:#D2E6FA;">71.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.4" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.14.4.1" style="background-color:#D2E6FA;">56.00</span></td>
<td class="ltx_td" id="S4.T1.1.1.14.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">68.90</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.7" style="background-color:#D2E6FA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.14.7.1" style="background-color:#D2E6FA;">66.40</span></td>
<td class="ltx_td" id="S4.T1.1.1.14.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.93</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">61.02</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">18.69</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">37.53</td>
<td class="ltx_td" id="S4.T1.1.1.14.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">54.56</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.95</td>
<td class="ltx_td" id="S4.T1.1.1.14.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">54.93</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.15">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.15.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen-2.5-72B-Instruct-Distilled</td>
<td class="ltx_td" id="S4.T1.1.1.15.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">62.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">54.46</td>
<td class="ltx_td" id="S4.T1.1.1.15.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">75.61</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.40</td>
<td class="ltx_td" id="S4.T1.1.1.15.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">61.99</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.88</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">14.14</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">32.18</td>
<td class="ltx_td" id="S4.T1.1.1.15.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">39.61</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.41</td>
<td class="ltx_td" id="S4.T1.1.1.15.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.21</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.16">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="S4.T1.1.1.16.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.1.1.16.1.1">▲ Llama-3.1-8B Base Model</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.17">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.17.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Alpaca</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.17.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.17.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.17.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">11.32</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.17.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.17.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">43.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.17.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.20</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.17.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.17.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.17.10" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.17.10.1" style="background-color:#E2F0DA;">75.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.17.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">21.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.17.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">61.86</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.17.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.17.14" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.17.14.1" style="background-color:#E2F0DA;">52.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.17.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">43.06</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.17.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.17.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.88</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.18">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.18.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.18.1.1">Llama-3.1-8B-GRA</span></td>
<td class="ltx_td" id="S4.T1.1.1.18.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.58</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">17.20</td>
<td class="ltx_td" id="S4.T1.1.1.18.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.6" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.18.6.1" style="background-color:#E2F0DA;">52.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.60</td>
<td class="ltx_td" id="S4.T1.1.1.18.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">66.30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">71.53</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.11" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.18.11.1" style="background-color:#E2F0DA;">29.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.50</td>
<td class="ltx_td" id="S4.T1.1.1.18.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.58</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">56.80</td>
<td class="ltx_td" id="S4.T1.1.1.18.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.13</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.19">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.19.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen-2.5-32B-Instruct Distilled</td>
<td class="ltx_td" id="S4.T1.1.1.19.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">23.32</td>
<td class="ltx_td" id="S4.T1.1.1.19.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.17</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">49.20</td>
<td class="ltx_td" id="S4.T1.1.1.19.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.9" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.19.9.1" style="background-color:#E2F0DA;">69.14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">69.49</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">26.77</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.12" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.19.12.1" style="background-color:#E2F0DA;">65.07</span></td>
<td class="ltx_td" id="S4.T1.1.1.19.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.78</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">55.73</td>
<td class="ltx_td" id="S4.T1.1.1.19.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.71</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.20">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.20.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen-2.5-72B-Instruct Distilled</td>
<td class="ltx_td" id="S4.T1.1.1.20.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.3" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.20.3.1" style="background-color:#E2F0DA;">67.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.4" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.20.4.1" style="background-color:#E2F0DA;">23.82</span></td>
<td class="ltx_td" id="S4.T1.1.1.20.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.78</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.7" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.20.7.1" style="background-color:#E2F0DA;">50.60</span></td>
<td class="ltx_td" id="S4.T1.1.1.20.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.95</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">74.24</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">26.77</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.77</td>
<td class="ltx_td" id="S4.T1.1.1.20.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.09</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.15" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.20.15.1" style="background-color:#E2F0DA;">58.39</span></td>
<td class="ltx_td" id="S4.T1.1.1.20.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.17" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.20.17.1" style="background-color:#E2F0DA;">52.68</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.21">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.21.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">WizardLM</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.21.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.21.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.21.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">16.78</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.21.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.21.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.21.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.00</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.21.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.21.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">67.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.21.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.21.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">9.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.21.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">62.98</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.21.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.21.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">40.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.21.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.90</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.21.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.21.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">46.59</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.22">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.22.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.22.1.1">Llama-3.1-8B-GRA</span></td>
<td class="ltx_td" id="S4.T1.1.1.22.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.88</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">18.98</td>
<td class="ltx_td" id="S4.T1.1.1.22.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.00</td>
<td class="ltx_td" id="S4.T1.1.1.22.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">66.54</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.10" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.22.10.1" style="background-color:#E2F0DA;">72.88</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.11" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.22.11.1" style="background-color:#E2F0DA;">26.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.28</td>
<td class="ltx_td" id="S4.T1.1.1.22.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">43.10</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.52</td>
<td class="ltx_td" id="S4.T1.1.1.22.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.92</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.23">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.23.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen-2.5-32B-Instruct Distilled</td>
<td class="ltx_td" id="S4.T1.1.1.23.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.97</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">23.50</td>
<td class="ltx_td" id="S4.T1.1.1.23.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.6" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.23.6.1" style="background-color:#E2F0DA;">51.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.00</td>
<td class="ltx_td" id="S4.T1.1.1.23.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.9" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.23.9.1" style="background-color:#E2F0DA;">67.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.08</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">23.74</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.12" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.23.12.1" style="background-color:#E2F0DA;">65.03</span></td>
<td class="ltx_td" id="S4.T1.1.1.23.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">43.31</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">54.51</td>
<td class="ltx_td" id="S4.T1.1.1.23.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.10</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.24">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.24.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen-2.5-72B-Instruct Distilled</td>
<td class="ltx_td" id="S4.T1.1.1.24.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.3" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.24.3.1" style="background-color:#E2F0DA;">66.64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.4" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.24.4.1" style="background-color:#E2F0DA;">24.12</span></td>
<td class="ltx_td" id="S4.T1.1.1.24.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.6" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.24.6.1" style="background-color:#E2F0DA;">51.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.7" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.24.7.1" style="background-color:#E2F0DA;">48.60</span></td>
<td class="ltx_td" id="S4.T1.1.1.24.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.76</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">69.15</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.11" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.24.11.1" style="background-color:#E2F0DA;">26.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.60</td>
<td class="ltx_td" id="S4.T1.1.1.24.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.14" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.24.14.1" style="background-color:#E2F0DA;">46.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.15" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.24.15.1" style="background-color:#E2F0DA;">56.28</span></td>
<td class="ltx_td" id="S4.T1.1.1.24.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.17" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.24.17.1" style="background-color:#E2F0DA;">52.18</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.25">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.25.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Condor</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.25.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.25.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">61.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.25.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">22.12</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.25.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.25.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">38.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.25.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.40</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.25.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.25.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.25.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.25.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">15.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.25.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.28</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.25.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.25.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">27.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.25.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.35</td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.25.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.25.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">43.04</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.26">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.26.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.26.1.1">Llama-3.1-8B-GRA</span></td>
<td class="ltx_td" id="S4.T1.1.1.26.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.58</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">15.82</td>
<td class="ltx_td" id="S4.T1.1.1.26.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.61</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.80</td>
<td class="ltx_td" id="S4.T1.1.1.26.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">69.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.10" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.26.10.1" style="background-color:#E2F0DA;">72.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.11" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.26.11.1" style="background-color:#E2F0DA;">26.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.48</td>
<td class="ltx_td" id="S4.T1.1.1.26.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.14" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.26.14.1" style="background-color:#E2F0DA;">45.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.54</td>
<td class="ltx_td" id="S4.T1.1.1.26.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.60</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.27">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.27.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen-2.5-32B-Instruct Distilled</td>
<td class="ltx_td" id="S4.T1.1.1.27.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.94</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">23.00</td>
<td class="ltx_td" id="S4.T1.1.1.27.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.6" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.27.6.1" style="background-color:#E2F0DA;">54.88</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">49.80</td>
<td class="ltx_td" id="S4.T1.1.1.27.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.9" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.27.9.1" style="background-color:#E2F0DA;">71.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.08</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">24.24</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.12" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.27.12.1" style="background-color:#E2F0DA;">66.12</span></td>
<td class="ltx_td" id="S4.T1.1.1.27.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">44.37</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.64</td>
<td class="ltx_td" id="S4.T1.1.1.27.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.17" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.27.17.1" style="background-color:#E2F0DA;">51.81</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.28">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen-2.5-72B-Instruct Distilled</td>
<td class="ltx_td ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.3" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.28.3.1" style="background-color:#E2F0DA;">69.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.4" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.28.4.1" style="background-color:#E2F0DA;">23.30</span></td>
<td class="ltx_td ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.05</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.7" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.28.7.1" style="background-color:#E2F0DA;">50.20</span></td>
<td class="ltx_td ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">67.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">68.14</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">21.72</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.71</td>
<td class="ltx_td ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.02</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.15" style="background-color:#E2F0DA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T1.1.1.28.15.1" style="background-color:#E2F0DA;">53.94</span></td>
<td class="ltx_td ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S4.T1.1.1.28.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.56</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of the proposed GRA method against several baselines across various benchmarks.  The baselines include using vanilla seed datasets (Alpaca, WizardLM, Condor) and data distilled from large language models (Qwen-2.5-32B-Instruct and Qwen-2.5-72B-Instruct). The table shows the average performance across different benchmarks for each method, highlighting the superior performance of GRA in achieving data-level parity with large LLM-based distillation.  The best result for each benchmark is indicated by color coding.
> <details>
> <summary>read the caption</summary>
> Table 1: Main Comparison between our proposed method, the vanilla seed datasets, and the data distilled from large-scale LLMs (Qwen-2.5-32B-Instruct and Qwen-2.5-72B-Instruct). Colored values represent the best results.
> </details>





### In-depth insights


#### Small LLM Coord.
The paper introduces GRA, a framework coordinating multiple small LLMs, as a strategic approach in data synthesis, challenging reliance on monolithic large models. **GRA's key innovation lies in mimicking human peer review**, utilizing specialized LLMs as Generator, Reviewer, and Adjudicator. This addresses the computational cost and potential biases of large LLMs, making data synthesis more accessible and sustainable.  It leverages the collective intelligence of smaller models through task specialization and iterative quality control, essentially embodying the “wisdom of crowds” principle. **Experimental results across diverse benchmarks demonstrate GRA's parity or superiority to large LLMs**  like Qwen-2.5-72B-Instruct, while requiring significantly fewer resources. This supports strategic coordination of smaller agents, and **paves the way for sustainable data synthesis.**

#### GRA Framework
The paper introduces GRA, a **strategic coordination framework for small LLMs** aimed at matching the performance of large LLMs in data synthesis. GRA draws inspiration from collaborative human processes, like peer review, by employing a system of specialized roles (**Generator, Reviewer, and Adjudicator**). This addresses limitations of reliance on large LLMs by suggesting a **resource-efficient and sustainable approach** to data distillation. The framework facilitates iterative refinement and quality control via specialized small LLMs, addressing the high computational costs, environmental inefficiency, and potential biases associated with large, monolithic models.GRA aims to address issues in high-quality data by focusing on leveraging a **multi-agent system** to create synthetic data, that matches or exceeds performance of large LLMs.

#### Iterative Refinement
**Iterative refinement** is a cornerstone of improving data quality in machine learning. The process involves **repeatedly evaluating and adjusting** the synthesized data. Each iteration leverages feedback from previous rounds to enhance both quality and diversity, crucial for robust model training. This cyclical process ensures that synthesized data converges toward higher standards. **Effective iterative refinement requires careful design of evaluation metrics and adjustment strategies** to avoid overfitting and ensure that models generalize well. Moreover, it enables a higher fidelity data output by small LLMs, such that the repeated reviewing and refining process facilitates a collaboration across multiple reviewers and adjudicators to closely align with the results a single large model data could generate.

#### GRA outperforms
Based on the provided paper, a focal point is the **superiority** of the proposed GRA framework. This suggests that GRA **consistently achieves better results** compared to other baselines or existing methodologies. The paper likely showcases experimental results where GRA surpasses alternative approaches in certain tasks or benchmarks. These benchmarks might include data synthesis quality, efficiency, or other relevant metrics. The outperformance might be particularly evident in contexts where smaller LLMs are used, showcasing GRA's ability to **boost their capabilities through strategic collaboration**. Another key insight might be about its ability to achieve higher quality and more sustainable data distillation. Finally, results demonstrate the GRA-produced data matches or exceeds the quality of single large LLM outputs, challenging the necessity of large models for data synthesis.

#### Future: MultiModal
The research indicates a promising direction in extending the framework to multimodal scenarios. **Adapting GRA to process diverse data types** like images, audio, and video could unlock new possibilities in areas like robotics, content creation, and accessibility. The challenge lies in **designing effective evaluation metrics and collaboration strategies** for these different modalities. This would involve training specialized Reviewers and Adjudicators capable of assessing the quality and relevance of multimodal content, ensuring the final output maintains high standards of coherence and consistency. In addition, the creation of **appropriate prompts to generate multi modal** data, for various use cases would also have to be adapted as compared to the prompt creation for texts.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.12322/x2.png)

> 🔼 The figure illustrates the GRA framework's architecture, detailing its four main modules.  The Generator produces initial data samples for a specific domain. These samples are then collaboratively evaluated by multiple Reviewers, who assess their quality and consistency.  Any conflicts in the reviewers' evaluations are resolved by the Adjudicator. Finally, a post-processing module refines the dataset by removing redundant or low-quality samples.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of GRA’s architecture, highlighting its four key modules: (a) The Generator creates domain-specific samples, (b) followed by collaborative evaluation by Reviewers, (c) The Adjudicator resolves conflicts, and (d) Post-Processing refines the results by removing redundancies.
> </details>



![](https://arxiv.org/html/2504.12322/x3.png)

> 🔼 This figure illustrates the performance of the Qwen-2.5-7B-Base language model as it is trained on data generated iteratively by the GRA framework.  The x-axis represents the cumulative amount of synthetic data used for training, measured in thousands of samples (10K, 20K, 30K, 40K, 50K). The y-axis displays the average performance of the model across various benchmark datasets. The figure shows how the model's performance improves with each iteration of data synthesis, demonstrating the effectiveness of GRA's iterative data refinement process.
> <details>
> <summary>read the caption</summary>
> Figure 3: Performance along data iterations with Qwen-2.5-7B-Base model.
> </details>



![](https://arxiv.org/html/2504.12322/x4.png)

> 🔼 This figure displays a bar chart comparing the average performance across different settings of the GRA model. Specifically, it contrasts the performance when there is no reviewer, only a single Llama-3.1-8B model as a reviewer, a GRA setting with multiple reviewers, and a GRA setting without an adjudicator. The Alpaca dataset served as the seed dataset for all settings, and Llama-3.1-8B was the base model used for training.
> <details>
> <summary>read the caption</summary>
> Figure 4: comparison across different setting of reviewer and adjudicator, with alpaca as seed dataset and Llama-3.1-8B as base model.
> </details>



![](https://arxiv.org/html/2504.12322/x5.png)

> 🔼 This figure uses t-SNE dimensionality reduction to visualize the data distribution of both the vanilla seed dataset and the data generated by GRA.  By comparing the spread and coverage of data points across the 2D embedding space, the figure helps demonstrate GRA's ability to enhance data diversity and explore regions under-represented in the original seed dataset.  The visual comparison highlights how GRA generates synthetic data that expands the scope and distribution of the original dataset.
> <details>
> <summary>read the caption</summary>
> Figure 5: Data coverage comparison between vanilla seed dataset and GRA synthetic data.
> </details>



![](https://arxiv.org/html/2504.12322/x6.png)

> 🔼 This figure displays a t-SNE visualization comparing the diversity of data generated by GRA and data created using distillation from large language models.  The plot shows the distribution of data points in a two-dimensional embedding space, with each point representing an instruction.  A wider spread of points indicates greater data diversity.  The comparison helps to demonstrate whether GRA, using multiple smaller LLMs, can match or exceed the data diversity produced by the traditional method of distilling knowledge from a single, large LLM.
> <details>
> <summary>read the caption</summary>
> Figure 6: Data coverage comparison between large LLMs distilled data and GRA synthetic data.
> </details>



![](https://arxiv.org/html/2504.12322/x7.png)

> 🔼 This figure presents a comparative analysis of data quality scores generated by the GRA framework and a single large language model (LLM), specifically Qwen-2.5-72B-Instruct.  It displays the frequency distribution of quality scores, offering insights into the distribution and range of scores obtained by both methods. By visually comparing the distributions, one can assess whether GRA produces data with comparable or superior quality to the single large LLM.  The x-axis represents the quality score range, and the y-axis represents the frequency of scores within that range.
> <details>
> <summary>read the caption</summary>
> Figure 7: Data quality score comparison between GRA and single Large LLMs—Qwen-2.5-72B-Instruct.
> </details>



![](https://arxiv.org/html/2504.12322/x8.png)

> 🔼 Figure 8 presents a comparison of Instruction Following Difficulty (IFD) scores across three datasets: data generated using the GRA framework, the WizardLM vanilla seed dataset, and data distilled from the Qwen-2.5-72B-Instruct large language model.  The IFD score measures the complexity and knowledge density of the data.  Higher IFD scores indicate that the data requires a more advanced understanding and reasoning capabilities from the model.
> <details>
> <summary>read the caption</summary>
> Figure 8: The IFD score comparison between the data generated by GRA, the vanilla seed dataset WizardLM, and single large LLM (Qwen-2.5-72B-Instruct) distilled data.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.1.1">
<tr class="ltx_tr" id="S5.T2.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Data / Seed Dataset</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.1.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">Alpaca</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.1.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">WizardLM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.1.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">Condor</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Llama-3.1-8B-Base</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.3.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Vanilla Seed Data</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.3.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.3.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">46.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.3.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">43.04</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.4">
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.4.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA-Refined Seed Data</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.4.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.39</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.4.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.81</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.4.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.68</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.5">
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA Synthetic Data</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.14</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.74</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.16</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.6">
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA Integrated Data</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.93</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.35</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.22</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T2.1.1.7.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen-2.5-7B-Base</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.8.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Vanilla Seed Data</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.8.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">49.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.8.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.8.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.61</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.9">
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.9.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA-Refined Seed Data</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.9.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">59.97</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.9.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">58.34</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.9.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.5</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.10">
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA Synthetic Data</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">59.52</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">62.17</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">61.13</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.11">
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.1.1.11.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA Integrated Data</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.1.1.11.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">61.19</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.1.1.11.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">59.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.1.1.11.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">62.1</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed analysis of a single data point that demonstrates the GRA framework's ability to handle inconsistent evaluations. It highlights a situation where reviewers provided conflicting assessments of a data sample, showcasing the adjudicator's role in resolving these discrepancies and maintaining data quality.  The table details the individual reviewer scores, their comments, the adjudication process, and the final decision regarding the data sample's inclusion or exclusion. It illustrates how GRA effectively integrates multiple perspectives to ensure the reliability and consistency of its generated data.
> <details>
> <summary>read the caption</summary>
> Case 1: A case analysis of inconsistent data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T3a.1.1">
<tr class="ltx_tr" id="A5.T3a.1.1.1">
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.1.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A5.T3a.1.1.1.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">Math</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.1.4" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A5.T3a.1.1.1.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">Coding</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.1.6" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A5.T3a.1.1.1.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">Reasoning</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.1.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A5.T3a.1.1.1.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">General</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.1.10" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.1.11" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.2">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">SIZE</td>
<td class="ltx_td" id="A5.T3a.1.1.2.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.2.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">GSM8K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.2.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">MATH</td>
<td class="ltx_td" id="A5.T3a.1.1.2.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.2.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">Humaneval</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.2.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">MBPP</td>
<td class="ltx_td" id="A5.T3a.1.1.2.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.2.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">HellaSwag</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.2.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">ARC-C</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.2.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">GPQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.2.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">BBH</td>
<td class="ltx_td" id="A5.T3a.1.1.2.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.2.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">MMLU</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.2.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">IFEval</td>
<td class="ltx_td" id="A5.T3a.1.1.2.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.2.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">AVG</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="A5.T3a.1.1.3.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">LLama3.1 8B</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.4" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="A5.T3a.1.1.4.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="A5.T3a.1.1.4.1.1" style="background-color:#E6E6E6;">Condor</span></td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.5.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">10K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.5.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.5.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.5.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">11.26</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.5.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.5.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.5.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">46.60</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.5.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.5.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">59.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.5.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">69.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.5.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">24.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.5.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.46</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.5.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.5.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">39.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.5.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">43.17</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.5.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.5.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.21</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.6">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.6.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">20K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.6.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA2</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.6.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.88</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.6.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.6.4.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.6.4.2">16.22</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.6.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.6.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.6.6.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.6.6.2">51.83</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.6.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.40</td>
<td class="ltx_td" id="A5.T3a.1.1.6.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.6.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.83</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.6.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">70.51</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.6.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.6.11.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.6.11.2">28.79</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.6.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.28</td>
<td class="ltx_td" id="A5.T3a.1.1.6.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.6.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">44.89</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.6.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.40</td>
<td class="ltx_td" id="A5.T3a.1.1.6.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.6.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.31</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.7">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.7.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">30K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.7.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA3</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.7.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.7.3.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.7.3.2">67.10</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.7.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">15.38</td>
<td class="ltx_td" id="A5.T3a.1.1.7.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.7.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.7.6.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.7.6.2">51.83</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.7.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.40</td>
<td class="ltx_td" id="A5.T3a.1.1.7.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.7.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">61.82</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.7.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">69.15</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.7.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">25.25</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.7.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.13</td>
<td class="ltx_td" id="A5.T3a.1.1.7.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.7.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.7.14.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.7.14.2">45.60</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.7.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.03</td>
<td class="ltx_td" id="A5.T3a.1.1.7.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.7.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">49.57</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.8">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.8.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">40K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.8.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA4</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.8.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.88</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.8.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">14.64</td>
<td class="ltx_td" id="A5.T3a.1.1.8.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.8.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.8.6.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.8.6.2">51.83</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.8.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.40</td>
<td class="ltx_td" id="A5.T3a.1.1.8.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.8.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">66.07</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.8.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">72.20</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.8.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">27.27</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.8.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.8.12.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.8.12.2">64.75</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.8.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.8.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">42.90</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.8.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.8.15.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.8.15.2">54.49</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.8.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.8.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.75</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.9">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.9.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">50K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.9.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA5</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.9.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.58</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.9.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">15.82</td>
<td class="ltx_td" id="A5.T3a.1.1.9.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.9.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.61</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.9.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.9.7.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.9.7.2">48.80</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.9.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.9.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.9.9.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.9.9.2">69.22</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.9.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.9.10.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.9.10.2">72.54</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.9.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">26.77</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.9.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.48</td>
<td class="ltx_td" id="A5.T3a.1.1.9.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.9.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.22</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.9.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.54</td>
<td class="ltx_td" id="A5.T3a.1.1.9.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.9.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.9.17.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.9.17.2">51.60</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.10" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="A5.T3a.1.1.10.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="A5.T3a.1.1.10.1.1" style="background-color:#E6E6E6;">Alpaca</span></td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.11.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">10K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.11.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.11.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.11.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">10.22</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.11.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.11.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.11.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.20</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.11.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.11.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">61.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.11.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">69.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.11.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.11.11.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.11.11.2">29.80</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.11.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.80</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.11.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.11.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">35.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.11.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">46.08</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.11.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.11.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.58</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.12">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.12.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">20K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.12.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA2</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.12.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.66</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.12.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">14.86</td>
<td class="ltx_td" id="A5.T3a.1.1.12.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.12.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.12.6.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.12.6.2">53.66</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.12.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.00</td>
<td class="ltx_td" id="A5.T3a.1.1.12.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.12.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.41</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.12.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">71.19</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.12.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">27.78</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.12.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.62</td>
<td class="ltx_td" id="A5.T3a.1.1.12.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.12.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.05</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.12.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.16</td>
<td class="ltx_td" id="A5.T3a.1.1.12.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.12.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.44</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.13">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.13.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">30K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.13.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA3</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.13.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.13</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.13.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">11.02</td>
<td class="ltx_td" id="A5.T3a.1.1.13.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.13.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.13.6.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.13.6.2">53.66</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.13.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.00</td>
<td class="ltx_td" id="A5.T3a.1.1.13.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.13.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">62.11</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.13.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">70.17</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.13.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">26.77</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.13.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">62.91</td>
<td class="ltx_td" id="A5.T3a.1.1.13.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.13.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.35</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.13.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.41</td>
<td class="ltx_td" id="A5.T3a.1.1.13.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.13.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">49.86</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.14">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.14.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">40K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.14.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA4</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.14.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.14.3.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.14.3.2">66.41</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.14.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">15.16</td>
<td class="ltx_td" id="A5.T3a.1.1.14.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.14.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.61</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.14.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.14.7.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.14.7.2">49.20</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.14.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.14.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.32</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.14.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.14.10.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.14.10.2">73.56</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.14.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">29.29</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.14.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.14.12.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.14.12.2">64.78</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.14.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.14.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.63</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.14.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">55.31</td>
<td class="ltx_td" id="A5.T3a.1.1.14.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.14.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.53</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.15">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.15.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">50K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.15.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA5</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.15.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.58</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.15.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.15.4.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.15.4.2">17.2</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.15.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.15.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.44</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.15.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.60</td>
<td class="ltx_td" id="A5.T3a.1.1.15.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.15.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.15.9.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.15.9.2">66.30</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.15.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">71.53</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.15.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.15.11.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.15.11.2">29.80</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.15.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.50</td>
<td class="ltx_td" id="A5.T3a.1.1.15.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.15.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.15.14.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.15.14.2">48.58</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.15.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.15.15.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.15.15.2">56.80</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.15.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.15.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.15.17.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.15.17.2">52.14</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.16" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="A5.T3a.1.1.16.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="A5.T3a.1.1.16.1.1" style="background-color:#E6E6E6;">WizardLM</span></td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.17">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.17.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">10K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.17.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.17.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.17.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">10.08</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.17.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.17.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">49.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.17.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.80</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.17.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.17.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">61.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.17.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">68.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.17.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.17.11.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.17.11.2">29.80</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.17.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.35</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.17.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.17.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">42.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.17.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.47</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.17.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.17.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.56</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.18">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.18.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">20K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.18.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA2</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.18.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.96</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.18.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">16.98</td>
<td class="ltx_td" id="A5.T3a.1.1.18.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.18.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.61</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.18.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.20</td>
<td class="ltx_td" id="A5.T3a.1.1.18.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.18.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.25</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.18.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">72.54</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.18.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">26.77</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.18.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.18.12.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.18.12.2">64.97</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.18.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.18.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">44.07</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.18.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.44</td>
<td class="ltx_td" id="A5.T3a.1.1.18.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.18.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.58</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.19">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.19.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">30K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.19.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA3</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.19.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.19.3.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.19.3.2">68.16</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.19.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">14.50</td>
<td class="ltx_td" id="A5.T3a.1.1.19.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.19.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.19.6.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.19.6.2">52.44</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.19.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.19.7.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.19.7.2">50.00</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.19.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.19.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.49</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.19.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">69.15</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.19.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">28.28</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.19.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.13</td>
<td class="ltx_td" id="A5.T3a.1.1.19.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.19.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.19.14.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.19.14.2">44.93</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.19.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.28</td>
<td class="ltx_td" id="A5.T3a.1.1.19.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.19.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.74</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.20">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.20.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">40K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.20.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA4</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.20.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.88</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.20.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.20.4.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.20.4.2">18.98</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.20.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.20.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.22</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.20.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.00</td>
<td class="ltx_td" id="A5.T3a.1.1.20.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.20.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.20.9.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.20.9.2">66.54</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.20.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">72.88</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.20.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">26.77</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.20.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.28</td>
<td class="ltx_td" id="A5.T3a.1.1.20.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.20.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">43.10</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.20.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.52</td>
<td class="ltx_td" id="A5.T3a.1.1.20.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.20.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.20.17.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.20.17.2">50.92</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.21">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.21.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">50K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.21.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA5</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.21.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.66</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.21.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">14.14</td>
<td class="ltx_td" id="A5.T3a.1.1.21.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.21.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">47.56</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.21.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.20</td>
<td class="ltx_td" id="A5.T3a.1.1.21.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.21.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.54</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.21.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.21.10.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.21.10.2">73.22</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.21.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">28.28</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.21.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.25</td>
<td class="ltx_td" id="A5.T3a.1.1.21.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.21.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">42.14</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.21.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.21.15.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.21.15.2">55.27</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.21.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.21.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.43</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.22">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="A5.T3a.1.1.22.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen2.5 7B</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.23" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="A5.T3a.1.1.23.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="A5.T3a.1.1.23.1.1" style="background-color:#E6E6E6;">Condor</span></td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.24">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.24.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">10K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.24.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.24.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">49.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.24.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">20.10</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.24.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.24.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">72.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.24.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.40</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.24.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.24.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">62.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.24.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">62.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.24.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">19.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.24.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">41.18</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.24.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.24.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">54.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.24.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.13</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.24.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.24.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">49.72</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.25">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.25.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">20K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.25.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA2</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.25.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">60.88</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.25.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">42.10</td>
<td class="ltx_td" id="A5.T3a.1.1.25.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.25.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">75.00</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.25.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">66.40</td>
<td class="ltx_td" id="A5.T3a.1.1.25.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.25.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">73.56</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.25.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">74.24</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.25.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.25.11.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.25.11.2">26.77</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.25.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.95</td>
<td class="ltx_td" id="A5.T3a.1.1.25.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.25.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.70</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.25.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.97</td>
<td class="ltx_td" id="A5.T3a.1.1.25.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.25.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">58.56</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.26">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.26.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">30K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.26.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA3</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.26.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.88</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.26.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">34.30</td>
<td class="ltx_td" id="A5.T3a.1.1.26.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.26.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">78.05</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.26.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">66.00</td>
<td class="ltx_td" id="A5.T3a.1.1.26.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.26.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">77.74</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.26.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">73.90</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.26.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.26.11.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.26.11.2">26.77</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.26.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">57.26</td>
<td class="ltx_td" id="A5.T3a.1.1.26.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.26.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.08</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.26.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.52</td>
<td class="ltx_td" id="A5.T3a.1.1.26.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.26.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">59.75</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.27">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.27.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">40K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.27.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA4</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.27.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.27.3.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.27.3.2">67.25</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.27.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">39.04</td>
<td class="ltx_td" id="A5.T3a.1.1.27.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.27.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.27.6.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.27.6.2">79.27</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.27.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.27.7.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.27.7.2">66.60</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.27.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.27.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">74.23</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.27.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">73.22</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.27.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">26.26</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.27.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.11</td>
<td class="ltx_td" id="A5.T3a.1.1.27.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.27.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.12</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.27.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.86</td>
<td class="ltx_td" id="A5.T3a.1.1.27.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.27.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">59.30</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.28">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.28.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">50K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.28.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA5</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.28.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.75</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.28.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.28.4.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.28.4.2">42.82</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.28.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.28.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">76.22</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.28.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.60</td>
<td class="ltx_td" id="A5.T3a.1.1.28.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.28.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.28.9.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.28.9.2">79.90</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.28.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.28.10.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.28.10.2">75.59</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.28.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">26.26</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.28.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.28.12.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.28.12.2">61.49</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.28.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.28.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.28.14.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.28.14.2">64.59</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.28.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.28.15.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.28.15.2">54.02</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.28.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.28.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.28.17.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.28.17.2">61.13</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.29" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="A5.T3a.1.1.29.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="A5.T3a.1.1.29.1.1" style="background-color:#E6E6E6;">Alpaca</span></td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.30">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.30.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">10K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.30.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.30.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.30.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">20.42</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.30.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.30.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">71.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.30.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.60</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.30.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.30.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">70.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.30.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">70.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.30.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">19.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.30.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.00</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.30.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.30.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">57.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.30.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.37</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.30.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.30.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">52.23</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.31">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.31.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">20K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.31.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA2</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.31.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.68</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.31.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">33.50</td>
<td class="ltx_td" id="A5.T3a.1.1.31.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.31.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">73.17</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.31.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.31.7.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.31.7.2">65.80</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.31.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.31.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">71.59</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.31.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">71.19</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.31.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.31.11.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.31.11.2">24.24</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.31.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.49</td>
<td class="ltx_td" id="A5.T3a.1.1.31.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.31.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">58.66</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.31.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">49.91</td>
<td class="ltx_td" id="A5.T3a.1.1.31.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.31.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">55.72</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.32">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.32.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">30K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.32.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA3</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.32.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">70.28</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.32.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">33.82</td>
<td class="ltx_td" id="A5.T3a.1.1.32.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.32.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.32.6.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.32.6.2">76.83</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.32.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.80</td>
<td class="ltx_td" id="A5.T3a.1.1.32.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.32.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">80.23</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.32.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">74.24</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.32.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.32.11.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.32.11.2">24.24</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.32.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">60.57</td>
<td class="ltx_td" id="A5.T3a.1.1.32.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.32.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.42</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.32.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.16</td>
<td class="ltx_td" id="A5.T3a.1.1.32.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.32.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">60.36</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.33">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.33.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">40K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.33.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA4</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.33.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.33.3.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.33.3.2">72.78</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.33.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.33.4.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.33.4.2">46.48</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.33.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.33.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">75.00</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.33.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.33.7.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.33.7.2">65.80</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.33.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.33.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">76.99</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.33.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">71.19</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.33.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.33.11.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.33.11.2">24.24</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.33.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">45.27</td>
<td class="ltx_td" id="A5.T3a.1.1.33.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.33.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">61.86</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.33.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.33.15.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.33.15.2">55.53</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.33.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.33.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">59.52</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.34">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.34.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">50K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.34.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA5</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.34.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.71</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.34.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">44.62</td>
<td class="ltx_td" id="A5.T3a.1.1.34.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.34.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">74.39</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.34.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.60</td>
<td class="ltx_td" id="A5.T3a.1.1.34.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.34.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.34.9.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.34.9.2">81.62</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.34.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.34.10.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.34.10.2">77.63</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.34.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">20.71</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.34.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.34.12.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.34.12.2">62.97</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.34.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.34.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.34.14.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.34.14.2">65.06</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.34.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">54.58</td>
<td class="ltx_td" id="A5.T3a.1.1.34.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.34.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.34.17.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.34.17.2">59.79</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.35" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="A5.T3a.1.1.35.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="A5.T3a.1.1.35.1.1" style="background-color:#E6E6E6;">WizardLM</span></td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.36">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.36.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">10K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.36.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.36.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.36.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">23.20</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.36.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.36.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">73.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.36.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.20</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.36.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.36.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">73.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.36.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">70.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.36.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">22.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.36.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">48.30</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.36.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.36.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">59.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.36.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.08</td>
<td class="ltx_td ltx_border_t" id="A5.T3a.1.1.36.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3a.1.1.36.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">54.13</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.37">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.37.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">20K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.37.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA2</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.37.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">59.74</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.37.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">31.02</td>
<td class="ltx_td" id="A5.T3a.1.1.37.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.37.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">73.17</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.37.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.37.7.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.37.7.2">65.80</span>
</td>
<td class="ltx_td" id="A5.T3a.1.1.37.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.37.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">76.44</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.37.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">73.22</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.37.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">20.71</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.37.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.02</td>
<td class="ltx_td" id="A5.T3a.1.1.37.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.37.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">63.12</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.37.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">50.59</td>
<td class="ltx_td" id="A5.T3a.1.1.37.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.37.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">56.69</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.38">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.38.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">30K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.38.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA3</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.38.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">66.72</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.38.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">27.70</td>
<td class="ltx_td" id="A5.T3a.1.1.38.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.38.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">75.61</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.38.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.80</td>
<td class="ltx_td" id="A5.T3a.1.1.38.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.38.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">78.47</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.38.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">74.24</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.38.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">23.74</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.38.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.38</td>
<td class="ltx_td" id="A5.T3a.1.1.38.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.38.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.60</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.38.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">51.17</td>
<td class="ltx_td" id="A5.T3a.1.1.38.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.38.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">58.04</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.39">
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.39.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">40K</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.39.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA4</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.39.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.39.3.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.39.3.2">70.89</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.39.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">38.58</td>
<td class="ltx_td" id="A5.T3a.1.1.39.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.39.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">76.22</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.39.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.60</td>
<td class="ltx_td" id="A5.T3a.1.1.39.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.39.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">79.02</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.39.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">77.63</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.39.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">19.19</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.39.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">59.29</td>
<td class="ltx_td" id="A5.T3a.1.1.39.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.39.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">65.10</td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.39.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">53.55</td>
<td class="ltx_td" id="A5.T3a.1.1.39.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center" id="A5.T3a.1.1.39.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">60.41</td>
</tr>
<tr class="ltx_tr" id="A5.T3a.1.1.40">
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T3a.1.1.40.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">50K</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T3a.1.1.40.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">GRA5</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T3a.1.1.40.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">58.98</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T3a.1.1.40.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.40.4.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.40.4.2">47.84</span>
</td>
<td class="ltx_td ltx_border_b" id="A5.T3a.1.1.40.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T3a.1.1.40.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.40.6.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.40.6.2">76.83</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T3a.1.1.40.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">64.60</td>
<td class="ltx_td ltx_border_b" id="A5.T3a.1.1.40.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T3a.1.1.40.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.40.9.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.40.9.2">81.58</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T3a.1.1.40.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.40.10.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.40.10.2">79.66</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T3a.1.1.40.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.40.11.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.40.11.2">28.79</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T3a.1.1.40.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.40.12.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.40.12.2">63.99</span>
</td>
<td class="ltx_td ltx_border_b" id="A5.T3a.1.1.40.13" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T3a.1.1.40.14" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.40.14.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.40.14.2">65.23</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T3a.1.1.40.15" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.40.15.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.40.15.2">54.15</span>
</td>
<td class="ltx_td ltx_border_b" id="A5.T3a.1.1.40.16" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T3a.1.1.40.17" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_ERROR undefined" id="A5.T3a.1.1.40.17.1">\ul</span><span class="ltx_text ltx_font_bold" id="A5.T3a.1.1.40.17.2">62.17</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance achieved using four different datasets: the original vanilla seed data, the seed data refined by GRA, the synthetic data generated by GRA, and the integrated data which combines the refined seed data and GRA-generated synthetic data.  The comparison is done across various benchmarks (Alpaca, WizardLM, and Condor) and different base models (Llama-3.1-8B and Qwen-2.5-7B).  The table aims to demonstrate the incremental improvements in data quality and diversity achieved through each stage of the GRA process, ultimately showing how the integrated data outperforms the other datasets.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison across Vanilla Seed Data, GRA-Refined Seed Data, GRA Synthetic Data and GRA Integrated Data.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.12322/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12322/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}