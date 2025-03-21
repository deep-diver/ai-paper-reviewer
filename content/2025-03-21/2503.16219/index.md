---
title: "Reinforcement Learning for Reasoning in Small LLMs: What Works and What Doesn't"
summary: "RL fine-tuning enhances reasoning in small LLMs, achieving competitive performance with limited resources, despite optimization & length challenges."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 VNU University of Science, Vietnam",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16219 {{< /keyword >}}
{{< keyword icon="writer" >}} Quy-Anh Dang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16219" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16219" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16219/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) typically need massive computational resources and datasets. This limits accessibility for resource-constrained settings. It is important to investigate the potential of reinforcement learning (RL) to improve reasoning in smaller LLMs. The study will focus on a 1.5B parameter model under strict constraints. Training is done on 4 NVIDIA A40 GPUs within 24 hours. The study aims to addresses the question of whether LLM can be elevated using an RL-based approach.



The paper adapts the Group Relative Policy Optimization (GRPO) algorithm and curates a compact, high-quality mathematical reasoning dataset. This enables three experiments to explore model behavior and performance. The findings show reasoning gains using only 7,000 samples at a low training cost. The code and datasets are released as open-source resources. The **Open-RS** models outperform other models. For example, the Open-RS3 achieves the highest AIME24 score, surpassing o1-preview.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Small LLMs can achieve rapid reasoning improvements with limited high-quality data using Reinforcement Learning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Mixing easy and hard problems with reduced length constraints enhances early performance and stabilizes reasoning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Cosine rewards stabilize completion lengths, improving training consistency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research offers a **cost-effective** alternative to scaling LLMs. It provides insights into trade-offs and lays the foundation for scalable, reasoning-capable LLMs in **resource-limited** environments. By releasing code/datasets as open-source resources, it fosters reproducibility and further exploration by the research community.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.2" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.2.1">AIME24</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.3" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.3.1">MATH-500</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.4" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.4.1">AMC23</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.5" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.5.1">Minerva</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.6" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.6.1">OlympiadBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.7" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.7.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.2.2.1" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.1.2.2.1.1">General Models</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.2.2.2" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.2.2.3" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.2.2.4" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.2.2.5" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.2.2.6" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.2.2.7" style="padding:0.5pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.3.3.1" style="padding:0.5pt 2.0pt;">Llama-3.1-70B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.3.3.2" style="padding:0.5pt 2.0pt;">16.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.3.3.3" style="padding:0.5pt 2.0pt;">64.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.3.3.4" style="padding:0.5pt 2.0pt;">30.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.3.3.5" style="padding:0.5pt 2.0pt;">35.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.3.3.6" style="padding:0.5pt 2.0pt;">31.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.3.3.7" style="padding:0.5pt 2.0pt;">35.7</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4.4">
<td class="ltx_td ltx_align_left" id="S3.T1.1.4.4.1" style="padding:0.5pt 2.0pt;">o1-preview</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.4.2" style="padding:0.5pt 2.0pt;">44.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.4.3" style="padding:0.5pt 2.0pt;">85.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.4.4" style="padding:0.5pt 2.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.4.5" style="padding:0.5pt 2.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.4.6" style="padding:0.5pt 2.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.4.7" style="padding:0.5pt 2.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.5.5.1" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.1.5.5.1.1">7B Models</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.5.5.2" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.5.5.3" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.5.5.4" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.5.5.5" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.5.5.6" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.5.5.7" style="padding:0.5pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.6.6.1" style="padding:0.5pt 2.0pt;">Qwen-2.5-Math-7B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.6.6.2" style="padding:0.5pt 2.0pt;">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.6.6.3" style="padding:0.5pt 2.0pt;">79.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.6.6.4" style="padding:0.5pt 2.0pt;">50.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.6.6.5" style="padding:0.5pt 2.0pt;">34.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.6.6.6" style="padding:0.5pt 2.0pt;">40.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.6.6.7" style="padding:0.5pt 2.0pt;">43.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.7.7">
<td class="ltx_td ltx_align_left" id="S3.T1.1.7.7.1" style="padding:0.5pt 2.0pt;">rStar-Math-7B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.7.2" style="padding:0.5pt 2.0pt;">26.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.7.3" style="padding:0.5pt 2.0pt;">78.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.7.4" style="padding:0.5pt 2.0pt;">47.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.7.5" style="padding:0.5pt 2.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.7.6" style="padding:0.5pt 2.0pt;">47.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.7.7" style="padding:0.5pt 2.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.8.8">
<td class="ltx_td ltx_align_left" id="S3.T1.1.8.8.1" style="padding:0.5pt 2.0pt;">Eurus-2-7B-PRIME</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.8.2" style="padding:0.5pt 2.0pt;">26.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.8.3" style="padding:0.5pt 2.0pt;">79.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.8.4" style="padding:0.5pt 2.0pt;">57.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.8.5" style="padding:0.5pt 2.0pt;">38.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.8.6" style="padding:0.5pt 2.0pt;">42.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.8.7" style="padding:0.5pt 2.0pt;">48.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.9.9">
<td class="ltx_td ltx_align_left" id="S3.T1.1.9.9.1" style="padding:0.5pt 2.0pt;">Qwen2.5-7B-SimpleRL</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.9.2" style="padding:0.5pt 2.0pt;">26.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.9.3" style="padding:0.5pt 2.0pt;">82.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.9.4" style="padding:0.5pt 2.0pt;">62.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.9.5" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.9.9.5.1">39.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.9.6" style="padding:0.5pt 2.0pt;">43.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.9.7" style="padding:0.5pt 2.0pt;">50.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.10.10.1" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.1.10.10.1.1">1.5B Models</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.10.10.2" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.10.10.3" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.10.10.4" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.10.10.5" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.10.10.6" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.10.10.7" style="padding:0.5pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.11.11.1" style="padding:0.5pt 2.0pt;">DeepSeek-R1-Distill-Qwen-1.5B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.11.11.2" style="padding:0.5pt 2.0pt;">28.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.11.11.3" style="padding:0.5pt 2.0pt;">82.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.11.11.4" style="padding:0.5pt 2.0pt;">62.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.11.11.5" style="padding:0.5pt 2.0pt;">26.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.11.11.6" style="padding:0.5pt 2.0pt;">43.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.11.11.7" style="padding:0.5pt 2.0pt;">48.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.12.12">
<td class="ltx_td ltx_align_left" id="S3.T1.1.12.12.1" style="padding:0.5pt 2.0pt;">Still-3-1.5B-Preview</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.12.12.2" style="padding:0.5pt 2.0pt;">32.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.12.12.3" style="padding:0.5pt 2.0pt;">84.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.12.12.4" style="padding:0.5pt 2.0pt;">66.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.12.12.5" style="padding:0.5pt 2.0pt;">29.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.12.12.6" style="padding:0.5pt 2.0pt;">45.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.12.12.7" style="padding:0.5pt 2.0pt;">51.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.13.13">
<td class="ltx_td ltx_align_left" id="S3.T1.1.13.13.1" style="padding:0.5pt 2.0pt;">DeepScaleR-1.5B-Preview</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.13.13.2" style="padding:0.5pt 2.0pt;">43.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.13.13.3" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.13.13.3.1">87.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.13.13.4" style="padding:0.5pt 2.0pt;">73.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.13.13.5" style="padding:0.5pt 2.0pt;">30.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.13.13.6" style="padding:0.5pt 2.0pt;">50.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.13.13.7" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.13.13.7.1">57.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.14.14.1" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.1.14.14.1.1">Our Models</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.14.14.2" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.14.14.3" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.14.14.4" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.14.14.5" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.14.14.6" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.14.14.7" style="padding:0.5pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.15.15.1" style="padding:0.5pt 2.0pt;">Open-RS1 (100 steps)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.15.15.2" style="padding:0.5pt 2.0pt;">30.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.15.15.3" style="padding:0.5pt 2.0pt;">83.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.15.15.4" style="padding:0.5pt 2.0pt;">70.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.15.15.5" style="padding:0.5pt 2.0pt;">29.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.15.15.6" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.15.15.6.1">52.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.15.15.7" style="padding:0.5pt 2.0pt;">53.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.16.16">
<td class="ltx_td ltx_align_left" id="S3.T1.1.16.16.1" style="padding:0.5pt 2.0pt;">Open-RS2 (50 steps)</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.16.16.2" style="padding:0.5pt 2.0pt;">30.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.16.16.3" style="padding:0.5pt 2.0pt;">85.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.16.16.4" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.16.16.4.1">80.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.16.16.5" style="padding:0.5pt 2.0pt;">30.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.16.16.6" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.16.16.6.1">52.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.16.16.7" style="padding:0.5pt 2.0pt;">55.7</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.17.17">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.1.17.17.1" style="padding:0.5pt 2.0pt;">Open-RS3 (50 steps)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.17.17.2" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.17.17.2.1">46.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.17.17.3" style="padding:0.5pt 2.0pt;">84.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.17.17.4" style="padding:0.5pt 2.0pt;">72.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.17.17.5" style="padding:0.5pt 2.0pt;">26.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.17.17.6" style="padding:0.5pt 2.0pt;">51.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.17.17.7" style="padding:0.5pt 2.0pt;">56.3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of zero-shot performance across multiple mathematics reasoning benchmarks.  Zero-shot means the models were not given any examples before evaluation. Pass@1 refers to the percentage of problems solved correctly on the first try.  The table compares the performance of several different large language models (LLMs), including the authors' models (Open-RS1, Open-RS2, and Open-RS3) and various baselines. The best result for each benchmark is highlighted in bold. Note that some official scores were unavailable for some baselines, indicated by dashes. The table indicates the source of the scores used for comparison.
> <details>
> <summary>read the caption</summary>
> Table 1: Zero-shot pass@1 performance across benchmarks. Bold indicates the highest score per benchmark. Dashes (–) denote unavailable official scores. Scores for o1-preview are sourced from AI (2024b); others from Zeng et al. (2025); Luo et al. (2025). Our models are evaluated using the lighteval package Fourrier et al. (2023).
> </details>





### In-depth insights


#### RL's Efficiency
**RL's efficiency** in this context centers on achieving substantial reasoning gains with minimal resources. The paper demonstrates that even under strict computational constraints, small LLMs can exhibit rapid improvement. This contrasts with traditional approaches that demand extensive datasets and computational power. The authors highlight the importance of a compact, high-quality dataset curated for mathematical reasoning, enabling efficient learning. Furthermore, the adaptation of the GRPO algorithm, designed to reduce computational overhead by eliminating the need for a separate critic model, contributes to resource efficiency. However, the study also reveals challenges, such as optimization instability and length constraints, that emerge with prolonged training, suggesting a trade-off between efficiency and sustained performance.

#### GRPO Adaptation
**Adapting GRPO for smaller LLMs involves key considerations**. Resource constraints necessitate a balance between exploration and exploitation, with careful tuning of hyperparameters like clipping range and KL penalty. **GRPO's inherent efficiency, eliminating the need for a separate critic model, makes it suitable**, but the group size 'G' must be optimized to ensure sufficient baseline estimation without excessive computational overhead. Reward design is critical; a rule-based system balancing correctness, efficiency, and structural clarity is preferable to resource-intensive neural reward models. Additionally, techniques like reward shaping and curriculum learning could further enhance the adaptation process for better optimization.

#### Data's Impact
While the paper does not explicitly have a heading called "Data's Impact," one can infer the significance of data throughout the study. **High-quality data** is crucial for effective training, especially in resource-constrained scenarios. The study shows that smaller, well-curated datasets tailored to mathematical reasoning can be surprisingly effective in improving the performance of small LLMs. It's highlighted that mixing 'easy' and 'hard' examples can improve the learning dynamics. However, data alone is not sufficient; there are **trade-offs with model size and optimization strategies**. Length constraints during training also influence the reasoning abilities of LLMs, implying careful consideration is needed to find the right balance between data quantity, quality, and training methodologies. The cost-effectiveness of the RL-based fine-tuning suggests that with thoughtfully designed data curation, one can achieve comparable, and in some cases superior, results to larger models trained with more extensive resources.

#### Length Limits
**Length limits** present a multifaceted challenge in training language models, particularly smaller ones via reinforcement learning.  Constrained generation length, as observed, can prematurely truncate reasoning processes, hindering performance on complex tasks needing extended chains of thought.  Balancing generation length is crucial; too short, and solutions are cut off, while excessive lengths can lead to instability and irrelevant content. **Optimal length** must align with task complexity. Length constraints likely interact with data complexity; simpler datasets may necessitate shorter generations, while harder ones demand expanded limits. The use of cosine reward is a promising strategy to regulate completion lengths, however, extending length limits are necessary for extremely hard tasks, particularly with multilingual base models. Future solutions might involve multi-stage length schedules that adjust generation length dynamically. Further research should explore balancing solution completeness with the risk of instability during prolonged generation.

#### Scaling Small LLMs
Scaling small LLMs presents a resource-efficient alternative to large models. The paper investigates the potential of Reinforcement Learning (RL) to improve reasoning in small LLMs under strict constraints, aiming to balance performance gains with limitations such as reduced computational overhead. A critical aspect is data curation focusing on high-quality datasets tailored to mathematical reasoning, which can minimize training costs. RL-based fine-tuning enables the models to refine decision-making processes by optimizing for task-specific rewards. Overcoming challenges like data efficiency, optimization stability, and length constraints is crucial. The study demonstrates that small LLMs can achieve competitive reasoning performance. A key finding is the potential of minimal resources to significantly enhance reasoning, thus promoting the democratization of advanced AI. **The emphasis is on scalable, reasoning-capable models**.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.4.5.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_tt" id="S3.T2.4.5.1.1" style="padding:0.5pt 2.0pt;"></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T2.4.5.1.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.5.1.2.1">
<span class="ltx_p" id="S3.T2.4.5.1.2.1.1" style="width:76.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.5.1.2.1.1.1">rStar-Math-7B</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T2.4.5.1.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.5.1.3.1">
<span class="ltx_p" id="S3.T2.4.5.1.3.1.1" style="width:76.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.5.1.3.1.1.1">Eurus-2-7B-PRIME</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T2.4.5.1.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.5.1.4.1">
<span class="ltx_p" id="S3.T2.4.5.1.4.1.1" style="width:76.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.5.1.4.1.1.1">Qwen2.5-7B-SimpleRL</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T2.4.5.1.5" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.5.1.5.1">
<span class="ltx_p" id="S3.T2.4.5.1.5.1.1" style="width:76.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.5.1.5.1.1.1">Open-RS</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S3.T2.4.6.1.1" style="padding:0.5pt 2.0pt;">Base Model</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T2.4.6.1.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.6.1.2.1">
<span class="ltx_p" id="S3.T2.4.6.1.2.1.1" style="width:76.8pt;">Qwen2.5-Math-7B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T2.4.6.1.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.6.1.3.1">
<span class="ltx_p" id="S3.T2.4.6.1.3.1.1" style="width:76.8pt;">Qwen2.5-Math-7B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T2.4.6.1.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.6.1.4.1">
<span class="ltx_p" id="S3.T2.4.6.1.4.1.1" style="width:76.8pt;">Qwen2.5-Math-7B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T2.4.6.1.5" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.6.1.5.1">
<span class="ltx_p" id="S3.T2.4.6.1.5.1.1" style="width:76.8pt;">DeepSeek-R1-Distill-Qwen-1.5B</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T2.4.7.2.1" style="padding:0.5pt 2.0pt;">SFT Data</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.7.2.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.7.2.2.1">
<span class="ltx_p" id="S3.T2.4.7.2.2.1.1" style="width:76.8pt;">7.3M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.7.2.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.7.2.3.1">
<span class="ltx_p" id="S3.T2.4.7.2.3.1.1" style="width:76.8pt;">230k</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.7.2.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.7.2.4.1">
<span class="ltx_p" id="S3.T2.4.7.2.4.1.1" style="width:76.8pt;">0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.7.2.5" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.7.2.5.1">
<span class="ltx_p" id="S3.T2.4.7.2.5.1.1" style="width:76.8pt;">0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T2.4.8.3.1" style="padding:0.5pt 2.0pt;">RM Data</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.8.3.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.8.3.2.1">
<span class="ltx_p" id="S3.T2.4.8.3.2.1.1" style="width:76.8pt;">7k</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.8.3.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.8.3.3.1">
<span class="ltx_p" id="S3.T2.4.8.3.3.1.1" style="width:76.8pt;">0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.8.3.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.8.3.4.1">
<span class="ltx_p" id="S3.T2.4.8.3.4.1.1" style="width:76.8pt;">0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.8.3.5" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.8.3.5.1">
<span class="ltx_p" id="S3.T2.4.8.3.5.1.1" style="width:76.8pt;">0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T2.4.9.4.1" style="padding:0.5pt 2.0pt;">RM</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.9.4.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.9.4.2.1">
<span class="ltx_p" id="S3.T2.4.9.4.2.1.1" style="width:76.8pt;">None</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.9.4.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.9.4.3.1">
<span class="ltx_p" id="S3.T2.4.9.4.3.1.1" style="width:76.8pt;">Eurus-2-7B-SFT</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.9.4.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.9.4.4.1">
<span class="ltx_p" id="S3.T2.4.9.4.4.1.1" style="width:76.8pt;">None</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.9.4.5" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.9.4.5.1">
<span class="ltx_p" id="S3.T2.4.9.4.5.1.1" style="width:76.8pt;">None</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T2.4.4.5" style="padding:0.5pt 2.0pt;">RL Data</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.1.1.1" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.1">
<span class="ltx_p" id="S3.T2.1.1.1.1.1" style="width:76.8pt;">3.647M <math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.1.m1.1.1" xref="S3.T2.1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.1.m1.1b"><times id="S3.T2.1.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.1.m1.1d">×</annotation></semantics></math> 16</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.2.2.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.2.2.1">
<span class="ltx_p" id="S3.T2.2.2.2.1.1" style="width:76.8pt;">150k <math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.2.2.2.1.1.m1.1"><semantics id="S3.T2.2.2.2.1.1.m1.1a"><mo id="S3.T2.2.2.2.1.1.m1.1.1" xref="S3.T2.2.2.2.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.1.1.m1.1b"><times id="S3.T2.2.2.2.1.1.m1.1.1.cmml" xref="S3.T2.2.2.2.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.1.1.m1.1d">×</annotation></semantics></math> 4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.3.3.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.3.3.1">
<span class="ltx_p" id="S3.T2.3.3.3.1.1" style="width:76.8pt;">8k <math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.3.3.3.1.1.m1.1"><semantics id="S3.T2.3.3.3.1.1.m1.1a"><mo id="S3.T2.3.3.3.1.1.m1.1.1" xref="S3.T2.3.3.3.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.1.1.m1.1b"><times id="S3.T2.3.3.3.1.1.m1.1.1.cmml" xref="S3.T2.3.3.3.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.1.1.m1.1d">×</annotation></semantics></math> 8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.4.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.4.4.1">
<span class="ltx_p" id="S3.T2.4.4.4.1.1" style="width:76.8pt;">7k <math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.4.4.4.1.1.m1.1"><semantics id="S3.T2.4.4.4.1.1.m1.1a"><mo id="S3.T2.4.4.4.1.1.m1.1.1" xref="S3.T2.4.4.4.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.1.1.m1.1b"><times id="S3.T2.4.4.4.1.1.m1.1.1.cmml" xref="S3.T2.4.4.4.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.1.1.m1.1d">×</annotation></semantics></math> 6</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T2.4.10.5.1" style="padding:0.5pt 2.0pt;">Hardware</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.10.5.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.10.5.2.1">
<span class="ltx_p" id="S3.T2.4.10.5.2.1.1" style="width:76.8pt;">10x 8 H100 80GB, 15x 4 A100 40GB</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.10.5.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.10.5.3.1">
<span class="ltx_p" id="S3.T2.4.10.5.3.1.1" style="width:76.8pt;">1x 8 A100 80GB</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.10.5.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.10.5.4.1">
<span class="ltx_p" id="S3.T2.4.10.5.4.1.1" style="width:76.8pt;">4x 6 A100 80GB</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.10.5.5" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.10.5.5.1">
<span class="ltx_p" id="S3.T2.4.10.5.5.1.1" style="width:76.8pt;">1x 4 A40 48GB</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T2.4.11.6.1" style="padding:0.5pt 2.0pt;">Time</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.11.6.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.11.6.2.1">
<span class="ltx_p" id="S3.T2.4.11.6.2.1.1" style="width:76.8pt;">–</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.11.6.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.11.6.3.1">
<span class="ltx_p" id="S3.T2.4.11.6.3.1.1" style="width:76.8pt;">72h</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.11.6.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.11.6.4.1">
<span class="ltx_p" id="S3.T2.4.11.6.4.1.1" style="width:76.8pt;">36h</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T2.4.11.6.5" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.11.6.5.1">
<span class="ltx_p" id="S3.T2.4.11.6.5.1.1" style="width:76.8pt;">24h</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_l ltx_border_r ltx_border_t" id="S3.T2.4.12.7.1" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.12.7.1.1">Cost Est.</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.4.12.7.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.12.7.2.1">
<span class="ltx_p" id="S3.T2.4.12.7.2.1.1" style="width:76.8pt;">–</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.4.12.7.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.12.7.3.1">
<span class="ltx_p" id="S3.T2.4.12.7.3.1.1" style="width:76.8pt;">$1088</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.4.12.7.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.12.7.4.1">
<span class="ltx_p" id="S3.T2.4.12.7.4.1.1" style="width:76.8pt;">$1633</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.4.12.7.5" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.4.12.7.5.1">
<span class="ltx_p" id="S3.T2.4.12.7.5.1.1" style="width:76.8pt;">$42</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the resource requirements and costs associated with training several 7-billion parameter language models.  It specifically highlights the differences in data used (supervision data, reinforcement learning data), the hardware used for training, the training time, and the estimated cost. The data for the models are either taken directly from the papers where the models were introduced or from publicly available GitHub issues where authors discuss training specifics and resource constraints.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of data usage and training costs for 7B models. Data are sourced from original papers or GitHub issues addressing author’s resource constraints.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.3.4.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_tt" id="S3.T3.3.4.1.1" style="padding:0.5pt 2.0pt;"></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T3.3.4.1.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.4.1.2.1">
<span class="ltx_p" id="S3.T3.3.4.1.2.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.4.1.2.1.1.1">DeepScaleR-1.5B-Preview</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T3.3.4.1.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.4.1.3.1">
<span class="ltx_p" id="S3.T3.3.4.1.3.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.4.1.3.1.1.1">Still-3-1.5B-Preview</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T3.3.4.1.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.4.1.4.1">
<span class="ltx_p" id="S3.T3.3.4.1.4.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.4.1.4.1.1.1">Open-RS</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S3.T3.3.5.1.1" style="padding:0.5pt 2.0pt;">Base Model</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T3.3.5.1.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.5.1.2.1">
<span class="ltx_p" id="S3.T3.3.5.1.2.1.1" style="width:99.6pt;">DeepSeek-R1-Distill-Qwen-1.5B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T3.3.5.1.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.5.1.3.1">
<span class="ltx_p" id="S3.T3.3.5.1.3.1.1" style="width:99.6pt;">DeepSeek-R1-Distill-Qwen-1.5B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T3.3.5.1.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.5.1.4.1">
<span class="ltx_p" id="S3.T3.3.5.1.4.1.1" style="width:99.6pt;">DeepSeek-R1-Distill-Qwen-1.5B</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.3.6.2.1" style="padding:0.5pt 2.0pt;">SFT Data</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.3.6.2.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.6.2.2.1">
<span class="ltx_p" id="S3.T3.3.6.2.2.1.1" style="width:99.6pt;">0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.3.6.2.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.6.2.3.1">
<span class="ltx_p" id="S3.T3.3.6.2.3.1.1" style="width:99.6pt;">0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.3.6.2.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.6.2.4.1">
<span class="ltx_p" id="S3.T3.3.6.2.4.1.1" style="width:99.6pt;">0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.3.7.3.1" style="padding:0.5pt 2.0pt;">RM Data</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.3.7.3.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.7.3.2.1">
<span class="ltx_p" id="S3.T3.3.7.3.2.1.1" style="width:99.6pt;">0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.3.7.3.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.7.3.3.1">
<span class="ltx_p" id="S3.T3.3.7.3.3.1.1" style="width:99.6pt;">0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.3.7.3.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.7.3.4.1">
<span class="ltx_p" id="S3.T3.3.7.3.4.1.1" style="width:99.6pt;">0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.3.8.4.1" style="padding:0.5pt 2.0pt;">RM</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.3.8.4.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.8.4.2.1">
<span class="ltx_p" id="S3.T3.3.8.4.2.1.1" style="width:99.6pt;">None</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.3.8.4.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.8.4.3.1">
<span class="ltx_p" id="S3.T3.3.8.4.3.1.1" style="width:99.6pt;">None</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.3.8.4.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.8.4.4.1">
<span class="ltx_p" id="S3.T3.3.8.4.4.1.1" style="width:99.6pt;">None</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.3.3.4" style="padding:0.5pt 2.0pt;">RL Data</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.1.1.1" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.1.1">
<span class="ltx_p" id="S3.T3.1.1.1.1.1" style="width:99.6pt;">40k <math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.1.1.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.1.1.m1.1a"><mo id="S3.T3.1.1.1.1.1.m1.1.1" xref="S3.T3.1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.1.1.m1.1b"><times id="S3.T3.1.1.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.1.1.m1.1d">×</annotation></semantics></math> 16</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.2.2.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.2.2.2.1">
<span class="ltx_p" id="S3.T3.2.2.2.1.1" style="width:99.6pt;">30k <math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.2.2.2.1.1.m1.1"><semantics id="S3.T3.2.2.2.1.1.m1.1a"><mo id="S3.T3.2.2.2.1.1.m1.1.1" xref="S3.T3.2.2.2.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.1.1.m1.1b"><times id="S3.T3.2.2.2.1.1.m1.1.1.cmml" xref="S3.T3.2.2.2.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.1.1.m1.1d">×</annotation></semantics></math> 8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.3.3.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.3.3.1">
<span class="ltx_p" id="S3.T3.3.3.3.1.1" style="width:99.6pt;">7k <math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.3.3.3.1.1.m1.1"><semantics id="S3.T3.3.3.3.1.1.m1.1a"><mo id="S3.T3.3.3.3.1.1.m1.1.1" xref="S3.T3.3.3.3.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.3.1.1.m1.1b"><times id="S3.T3.3.3.3.1.1.m1.1.1.cmml" xref="S3.T3.3.3.3.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.3.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.3.1.1.m1.1d">×</annotation></semantics></math> 6</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.3.9.5.1" style="padding:0.5pt 2.0pt;">Hardware</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.3.9.5.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.9.5.2.1">
<span class="ltx_p" id="S3.T3.3.9.5.2.1.1" style="width:99.6pt;">8x A100 80GB</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.3.9.5.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.9.5.3.1">
<span class="ltx_p" id="S3.T3.3.9.5.3.1.1" style="width:99.6pt;">1x 8 A100 80GB</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.3.9.5.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.9.5.4.1">
<span class="ltx_p" id="S3.T3.3.9.5.4.1.1" style="width:99.6pt;">1x 4 A40 48GB</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.3.10.6.1" style="padding:0.5pt 2.0pt;">Time</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.3.10.6.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.10.6.2.1">
<span class="ltx_p" id="S3.T3.3.10.6.2.1.1" style="width:99.6pt;">240h</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.3.10.6.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.10.6.3.1">
<span class="ltx_p" id="S3.T3.3.10.6.3.1.1" style="width:99.6pt;">150h</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T3.3.10.6.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.10.6.4.1">
<span class="ltx_p" id="S3.T3.3.10.6.4.1.1" style="width:99.6pt;">24h</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_l ltx_border_r ltx_border_t" id="S3.T3.3.11.7.1" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.11.7.1.1">Cost Est.</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S3.T3.3.11.7.2" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.11.7.2.1">
<span class="ltx_p" id="S3.T3.3.11.7.2.1.1" style="width:99.6pt;">$3629</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S3.T3.3.11.7.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.11.7.3.1">
<span class="ltx_p" id="S3.T3.3.11.7.3.1.1" style="width:99.6pt;">$2268</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S3.T3.3.11.7.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.11.7.4.1">
<span class="ltx_p" id="S3.T3.3.11.7.4.1.1" style="width:99.6pt;">$42</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the resource requirements (data usage and training costs) for training three different 1.5-billion parameter language models.  It highlights the significant differences in computational cost and dataset size between existing models and the model proposed in this paper (Open-RS).  The comparison is made to demonstrate the efficiency gains achieved by the proposed method, especially considering the constraints of limited resources.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of data usage and training costs for 1.5B models. Data are sourced from original papers or GitHub issues addressing author’s resource constraints.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A3.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A3.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.1.2.1"># Samples</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T4.1.2.1.1">AIME24</th>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="A3.T4.1.2.1.2">30</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T4.1.3.2.1">MATH-500</th>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="A3.T4.1.3.2.2">500</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T4.1.4.3.1">AMC23</th>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="A3.T4.1.4.3.2">40</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T4.1.5.4.1">Minerva</th>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="A3.T4.1.5.4.2">272</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A3.T4.1.6.5.1">OlympiadBench</th>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb" id="A3.T4.1.6.5.2">675</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the benchmark datasets used to evaluate the reasoning capabilities of the models.  It includes the dataset name, and the number of samples in each dataset. These datasets represent a diverse range of mathematical reasoning challenges, including problems from various competitions, academic sources, and other domains, varying in difficulty and problem type.  The purpose is to provide a comprehensive evaluation of model performance across different problem characteristics and difficulty levels.
> <details>
> <summary>read the caption</summary>
> Table 4: Benchmark Datasets and Sample Sizes for Evaluation
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A5.T5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T5.1.1.1.1.1">Parameter</span></th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A5.T5.1.1.1.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="2" id="A5.T5.1.2.2.1"><span class="ltx_text ltx_font_italic" id="A5.T5.1.2.2.1.1">General Settings</span></th>
</tr>
<tr class="ltx_tr" id="A5.T5.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.3.3.1">bf16</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.3.3.2">true</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.4.4.1">use_vllm</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.4.4.2">true</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.5.5.1">vllm_device</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.5.5.2">auto</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.6.6.1">vllm_enforce_eager</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.6.6.2">true</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.7.7.1">vllm_gpu_memory_utilization</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.7.7.2">0.7</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.8.8.1">vllm_max_model_len</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.8.8.2">4608</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.9.9.1">do_eval</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.9.9.2">false</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.10.10.1">output_dir</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.10.10.2">data/OpenRS-GRPO</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.11.11.1">overwrite_output_dir</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.11.11.2">true</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="2" id="A5.T5.1.12.12.1"><span class="ltx_text ltx_font_italic" id="A5.T5.1.12.12.1.1">Training Configuration</span></th>
</tr>
<tr class="ltx_tr" id="A5.T5.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.13.13.1">gradient_accumulation_steps</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.13.13.2">4</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.14.14.1">gradient_checkpointing</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.14.14.2">true</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.15.15.1">gradient_checkpointing_kwargs</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.15.15.2">use_reentrant: false</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.16.16.1">learning_rate</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.16.16.2">1.0e-06</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.17.17.1">lr_scheduler_type</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.17.17.2">cosine_with_min_lr</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.18.18.1">lr_scheduler_kwargs</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.18.18.2">min_lr_rate: 0.1</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.19.19.1">warmup_ratio</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.19.19.2">0.1</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.20.20.1">max_steps</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.20.20.2">500</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.21.21.1">num_train_epochs</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.21.21.2">1</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.22.22.1">per_device_train_batch_size</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.22.22.2">6</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.23.23.1">per_device_eval_batch_size</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.23.23.2">6</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="2" id="A5.T5.1.24.24.1"><span class="ltx_text ltx_font_italic" id="A5.T5.1.24.24.1.1">Generation Settings</span></th>
</tr>
<tr class="ltx_tr" id="A5.T5.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.25.25.1">max_prompt_length</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.25.25.2">512</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.26.26.1">max_completion_length</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.26.26.2">3584 or 4096</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.27.27.1">num_generations</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.27.27.2">6</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.28.28.1">temperature</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.28.28.2">0.7</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.29.29.1">seed</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.29.29.2">42</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="2" id="A5.T5.1.30.30.1"><span class="ltx_text ltx_font_italic" id="A5.T5.1.30.30.1.1">Logging and Saving</span></th>
</tr>
<tr class="ltx_tr" id="A5.T5.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.31.31.1">log_completions</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.31.31.2">true</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.32.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.32.32.1">log_level</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.32.32.2">info</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.33.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.33.33.1">logging_first_step</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.33.33.2">true</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.34.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.34.34.1">logging_steps</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.34.34.2">1</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.35.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.35.35.1">logging_strategy</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.35.35.2">steps</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.36.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.36.36.1">save_strategy</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.36.36.2">steps</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.37.37">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.37.37.1">save_steps</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.37.37.2">50</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.38.38">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.38.38.1">report_to</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.38.38.2">wandb</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.39.39">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="2" id="A5.T5.1.39.39.1"><span class="ltx_text ltx_font_italic" id="A5.T5.1.39.39.1.1">Reward Configuration</span></th>
</tr>
<tr class="ltx_tr" id="A5.T5.1.40.40">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.40.40.1">reward_funcs</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.40.40.2">format, accuracy (cosine)</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.41.41">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.41.41.1">reward_weights</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.41.41.2">1.0, 2.0</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.42.42">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="2" id="A5.T5.1.42.42.1"><span class="ltx_text ltx_font_italic" id="A5.T5.1.42.42.1.1">Hub Settings</span></th>
</tr>
<tr class="ltx_tr" id="A5.T5.1.43.43">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.43.43.1">hub_model_id</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.43.43.2">OpenRS-GRPO</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.44.44">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.1.44.44.1">hub_strategy</th>
<td class="ltx_td ltx_align_left" id="A5.T5.1.44.44.2">every_save</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.45.45">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A5.T5.1.45.45.1">push_to_hub</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T5.1.45.45.2">true</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used to configure the Group Relative Policy Optimization (GRPO) trainer during the reinforcement learning process.  It's divided into sections for general settings (overall training parameters), training configuration (optimizer specifics), generation settings (parameters controlling text generation), logging and saving settings (frequency of logging and model checkpoints), and reward configuration (weighting of different reward components). Each parameter's value is specified, offering a clear view of the training setup.
> <details>
> <summary>read the caption</summary>
> Table 5: Hyperparameter Setups for GRPO Trainer
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16219/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16219/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16219/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16219/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16219/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16219/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16219/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16219/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16219/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16219/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16219/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16219/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16219/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16219/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16219/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16219/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16219/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}