---
title: "SoS1: O1 and R1-Like Reasoning LLMs are Sum-of-Square Solvers"
summary: "SoS1: O1 and R1-Like Reasoning LLMs are Sum-of-Square Solvers."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 Nanjing University of Aeronautics and Astronautics",]
showSummary: true
date: 2025-02-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.20545 {{< /keyword >}}
{{< keyword icon="writer" >}} Kechen Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.20545" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.20545" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.20545/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Large Language Models (LLMs) have shown impressive abilities, but struggle with rigorous mathematical reasoning**. Determining if a polynomial is non-negative, crucial for optimization, remains a challenge. This paper introduces SoS-1K, a dataset of 1,000 polynomials, with expert-designed instructions based on five increasingly difficult criteria. Evaluating state-of-the-art LLMs reveals poor performance without guidance, hovering near random guessing. LLMs need explicit help to perform this math task. 



The study demonstrated that **providing high-quality reasoning instructions significantly boosts LLM accuracy**. A fine-tuned 7B model, SoS-7B, outperforms much larger models. Findings highlight LLMs' potential to push mathematical reasoning boundaries and tackle computationally hard (NP-hard) problems. Code is available at the project's github.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} High-quality reasoning instructions significantly improve LLM accuracy in solving SoS problems, boosting performance up to 81%. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Fine-tuning a 7B model (SoS-7B) on the SoS-1K dataset outperforms larger models like DeepSeek-V3 and GPT-40-mini with less computation time. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Reasoning-focused LLMs generally outperform general-purpose LLMs in solving SoS problems. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper pioneers the use of LLMs in solving complex mathematical problems like determining polynomial non-negativity. It highlights the potential of **AI to advance mathematical research** and tackle NP-hard problems, paving the way for future advancements. The meticulously curated SoS-1K dataset will serve as a valuable resource for future research.

------
#### Visual Insights



![](https://arxiv.org/html/2502.20545/x1.png)

> 🔼 This figure compares three different prompting methods used to guide large language models (LLMs) in determining whether a given polynomial can be expressed as a sum of squares (SoS).  SoS Plain shows a simple question with no additional guidance. SoS Simple provides a structured classification based on simple criteria, while SoS Reasoning offers a detailed, step-by-step approach with progressively challenging criteria and expert-designed reasoning instructions. The figure highlights the increasing level of detail and guidance provided to the LLM, demonstrating how the structured prompts improve the accuracy and reasoning process.
> <details>
> <summary>read the caption</summary>
> Figure 1: Demonstration of SoS Plain (left), SoS Simple (mid), and SoS Reasoning (right).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_rr ltx_border_tt" id="S2.T1.1.1.1.1.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S2.T1.1.1.1.1.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.2.1">Accuracy on Valid Samples</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S2.T1.1.1.1.1.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.3.1">Accuracy on Total Samples</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S2.T1.1.1.1.1.4" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.4.1">Response Time (s)</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_rr ltx_border_t" id="S2.T1.1.1.2.2.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.1.1">Instruction Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.2.2.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.2.1">SoS Plain</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.2.2.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.3.1">SoS Simple</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S2.T1.1.1.2.2.4" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.4.1">SoS Reasoning</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.2.2.5" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.5.1">SoS Plain</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.2.2.6" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.6.1">SoS Simple</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S2.T1.1.1.2.2.7" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.7.1">SoS Reasoning</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.2.2.8" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.8.1">SoS Plain</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.2.2.9" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.9.1">SoS Simple</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.2.2.10" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.10.1">SoS Reasoning</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="S2.T1.1.1.3.3.1" style="padding:1pt 3.0pt;">General-purpose LLMs</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_rr" id="S2.T1.1.1.4.4.1" style="padding:1pt 3.0pt;">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.4.4.2" style="padding:1pt 3.0pt;">55%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.4.4.3" style="padding:1pt 3.0pt;">61%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.4.4.4" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.4.4.4.1">76%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.4.4.5" style="padding:1pt 3.0pt;">52%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.4.4.6" style="padding:1pt 3.0pt;">59%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.4.4.7" style="padding:1pt 3.0pt;">62%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.4.4.8" style="padding:1pt 3.0pt;">22.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.4.4.9" style="padding:1pt 3.0pt;">31.2</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.4.10" style="padding:1pt 3.0pt;">68.5</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_rr" id="S2.T1.1.1.5.5.1" style="padding:1pt 3.0pt;">Qwen2.5-7B-Instruct-1M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.5.5.2" style="padding:1pt 3.0pt;">54%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.5.5.3" style="padding:1pt 3.0pt;">64%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.5.5.4" style="padding:1pt 3.0pt;">75%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.5.5.5" style="padding:1pt 3.0pt;">54%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.5.5.6" style="padding:1pt 3.0pt;">64%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.5.5.7" style="padding:1pt 3.0pt;">63%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.5.5.8" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.5.5.8.1">5.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.5.5.9" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.5.5.9.1">8.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.5.10" style="padding:1pt 3.0pt;">35.2</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_rr" id="S2.T1.1.1.6.6.1" style="padding:1pt 3.0pt;">Qwen2.5-14B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.6.6.2" style="padding:1pt 3.0pt;">55%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.6.6.3" style="padding:1pt 3.0pt;">66%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.6.6.4" style="padding:1pt 3.0pt;">74%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.6.6.5" style="padding:1pt 3.0pt;">52%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.6.6.6" style="padding:1pt 3.0pt;">66%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.6.6.7" style="padding:1pt 3.0pt;">69%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.6.6.8" style="padding:1pt 3.0pt;">12.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.6.6.9" style="padding:1pt 3.0pt;">23.1</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.6.10" style="padding:1pt 3.0pt;">48.3</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_rr" id="S2.T1.1.1.7.7.1" style="padding:1pt 3.0pt;">Qwen2.5-14B-Instruct-1M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.7.7.2" style="padding:1pt 3.0pt;">56%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.7.7.3" style="padding:1pt 3.0pt;">60%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.7.7.4" style="padding:1pt 3.0pt;">74%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.7.7.5" style="padding:1pt 3.0pt;">56%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.7.7.6" style="padding:1pt 3.0pt;">59%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.7.7.7" style="padding:1pt 3.0pt;">67%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.7.7.8" style="padding:1pt 3.0pt;">12.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.7.7.9" style="padding:1pt 3.0pt;">20.7</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.7.10" style="padding:1pt 3.0pt;">52.7</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_rr" id="S2.T1.1.1.8.8.1" style="padding:1pt 3.0pt;">Qwen2.5-32B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.8.8.2" style="padding:1pt 3.0pt;">56%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.8.8.3" style="padding:1pt 3.0pt;">58%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.8.8.4" style="padding:1pt 3.0pt;">67%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.8.8.5" style="padding:1pt 3.0pt;">55%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.8.8.6" style="padding:1pt 3.0pt;">58%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.8.8.7" style="padding:1pt 3.0pt;">62%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.8.8.8" style="padding:1pt 3.0pt;">13.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.8.8.9" style="padding:1pt 3.0pt;">18.0</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.8.10" style="padding:1pt 3.0pt;">37.4</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_rr" id="S2.T1.1.1.9.9.1" style="padding:1pt 3.0pt;">DeepSeek-V3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.9.9.2" style="padding:1pt 3.0pt;">54%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.9.9.3" style="padding:1pt 3.0pt;">60%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.9.9.4" style="padding:1pt 3.0pt;">70%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.9.9.5" style="padding:1pt 3.0pt;">54%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.9.9.6" style="padding:1pt 3.0pt;">60%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.9.9.7" style="padding:1pt 3.0pt;">69%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.9.9.8" style="padding:1pt 3.0pt;">29.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.9.9.9" style="padding:1pt 3.0pt;">39.8</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.9.10" style="padding:1pt 3.0pt;">95.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_rr" id="S2.T1.1.1.10.10.1" style="padding:1pt 3.0pt;">GPT-4o-mini</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.10.10.2" style="padding:1pt 3.0pt;">59%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.10.10.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.10.10.3.1">67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.10.10.4" style="padding:1pt 3.0pt;">72%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.10.10.5" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.10.10.5.1">59%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.10.10.6" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.10.10.6.1">67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.10.10.7" style="padding:1pt 3.0pt;">69%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.10.10.8" style="padding:1pt 3.0pt;">10.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.10.10.9" style="padding:1pt 3.0pt;">15.4</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.10.10" style="padding:1pt 3.0pt;">53.1</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_rr" id="S2.T1.1.1.11.11.1" style="padding:1pt 3.0pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.11.11.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.11.11.2.1">60%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.11.11.3" style="padding:1pt 3.0pt;">61%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.11.11.4" style="padding:1pt 3.0pt;">75%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.11.11.5" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.11.11.5.1">59%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.11.11.6" style="padding:1pt 3.0pt;">61%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.11.11.7" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.11.11.7.1">75%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.11.11.8" style="padding:1pt 3.0pt;">14.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.11.11.9" style="padding:1pt 3.0pt;">16.2</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.11.10" style="padding:1pt 3.0pt;">27.8</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.12.12">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="S2.T1.1.1.12.12.1" style="padding:1pt 3.0pt;">Reasoning-purpose LLMs</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_rr" id="S2.T1.1.1.13.13.1" style="padding:1pt 3.0pt;">QwQ-32B-Preview</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.13.13.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.13.13.2.1">64%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.13.13.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.13.13.3.1">71%</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.13.13.4" style="padding:1pt 3.0pt;">79%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.13.13.5" style="padding:1pt 3.0pt;">44%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.13.13.6" style="padding:1pt 3.0pt;">54%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.13.13.7" style="padding:1pt 3.0pt;">52%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.13.13.8" style="padding:1pt 3.0pt;">105.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.13.13.9" style="padding:1pt 3.0pt;">101.8</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.13.10" style="padding:1pt 3.0pt;">100.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_rr" id="S2.T1.1.1.14.14.1" style="padding:1pt 3.0pt;">DeepSeek-R1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.14.14.2" style="padding:1pt 3.0pt;">62%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.14.14.3" style="padding:1pt 3.0pt;">62%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.14.14.4" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.14.14.4.1">81%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.14.14.5" style="padding:1pt 3.0pt;">55%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.14.14.6" style="padding:1pt 3.0pt;">55%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.14.14.7" style="padding:1pt 3.0pt;">56%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.14.14.8" style="padding:1pt 3.0pt;">514.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.14.14.9" style="padding:1pt 3.0pt;">565.6</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.14.10" style="padding:1pt 3.0pt;">492.5</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_rr" id="S2.T1.1.1.15.15.1" style="padding:1pt 3.0pt;">OpenAI o1-mini</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.15.15.2" style="padding:1pt 3.0pt;">58%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.15.15.3" style="padding:1pt 3.0pt;">61%</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.15.15.4" style="padding:1pt 3.0pt;">77%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.15.15.5" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.15.15.5.1">57%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.15.15.6" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.15.15.6.1">61%</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S2.T1.1.1.15.15.7" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.15.15.7.1">76%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.15.15.8" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.15.15.8.1">8.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.15.15.9" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.15.15.9.1">18.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.15.10" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.15.15.10.1">34.9</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.16.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_rr ltx_border_t" id="S2.T1.1.1.16.16.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.16.16.1.1">Average</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.1.16.16.2" style="padding:1pt 3.0pt;">57%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.1.16.16.3" style="padding:1pt 3.0pt;">63%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_rr ltx_border_t" id="S2.T1.1.1.16.16.4" style="padding:1pt 3.0pt;">75%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.1.16.16.5" style="padding:1pt 3.0pt;">54%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.1.16.16.6" style="padding:1pt 3.0pt;">60%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_rr ltx_border_t" id="S2.T1.1.1.16.16.7" style="padding:1pt 3.0pt;">65%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.1.16.16.8" style="padding:1pt 3.0pt;">68.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.1.16.16.9" style="padding:1pt 3.0pt;">78.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.16.16.10" style="padding:1pt 3.0pt;">95.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the accuracy of various state-of-the-art Large Language Models (LLMs) on a subset of the SoS-1K dataset.  The SoS-1K dataset contains approximately 1000 polynomials, and the subset used here contains 340 randomly selected polynomials. The accuracy is evaluated using three different prompting methods (SoS Plain, SoS Simple, and SoS Reasoning), which provide progressively more structured guidance to the LLMs.  The table shows the accuracy achieved by each LLM on both valid samples (where the LLM produced a response within the time limit) and total samples.  The results reveal the performance difference between general-purpose and reasoning-focused LLMs, highlighting the impact of instruction quality on LLM accuracy for this type of complex mathematical reasoning problem.
> <details>
> <summary>read the caption</summary>
> Table 1: Accuracy comparison across various SOTA LLMs on a subset of SoS-1K with 340 samples. Results are divided into “Valid Samples” and “Total Samples”, as we found that LLMs sometimes suffer from timeout issues.
> </details>





### In-depth insights


#### SoS1: O1-R1 LLMs
The paper **introduces SoS-1K**, a novel dataset designed to evaluate the mathematical reasoning capabilities of Large Language Models (LLMs) specifically in the domain of sum-of-squares (SoS) problems. It investigates whether LLMs can determine if a given multivariate polynomial is nonnegative, a computationally intractable problem with applications in various fields. The research further explores whether the **promise of test-time scaling** can extend to research-level mathematics, an area largely unexplored. It is designed to probe the capacity of LLMs like Openai 01 and DeepSeek-R1 to solve large-scale SoS programming problems. This involves a carefully constructed dataset of approximately 1,000 polynomials, accompanied by expert-designed reasoning-guiding instructions based on five progressively challenging criteria and is aimed at pushing mathematical reasoning of LLMs.

#### NP-Hard SoS-1K
**SoS-1K addresses the NP-hard problem** of determining polynomial non-negativity. **Directly tackling NP-hard challenges** positions LLMs at the forefront of mathematical problem-solving. The implication is **LLMs can be used in traditionally intractable optimization problems**. The '1K' suggests a dataset scale aiming to stress-test LLMs beyond toy examples, **benchmarking their ability in realistic problems**. This is because real-world mathematical problems often have an NP-hard structure. The use of **SoS offers a structured path** through the complexity, guiding the LLMs with a mathematically principled approach. **This shows how LLMs can handle a specific class of NP-hard problems**, which is the one that is related to sum of squares.

#### LLMs for SoS?
The paper investigates the potential of **Large Language Models (LLMs) in tackling Sum of Squares (SoS) problems**, a computationally challenging area within polynomial optimization closely related to Hilbert's Seventeenth Problem.  The research introduces SoS-1K, a curated dataset of approximately 1,000 polynomials designed to evaluate LLMs' reasoning abilities. The study reveals that **LLMs struggle with SoS problems without explicit, structured guidance**, highlighting the importance of high-quality, expert-designed instructions. A key finding is that providing LLMs with detailed reasoning traces significantly improves accuracy, demonstrating their latent capacity for mathematical reasoning when effectively prompted. Furthermore, the research shows that **fine-tuning a smaller 7B model on the SoS-1K dataset can outperform much larger models like DeepSeek-V3 and GPT-40-mini in accuracy and computation time**, suggesting potential for efficient application of LLMs in mathematical problem-solving.

#### Reasoning boost
**Reasoning boost** in LLMs is pivotal for tackling complex mathematical tasks like determining if a multivariate polynomial is a sum of squares (SoS). The study reveals that without structured guidance, LLMs perform poorly. High-quality reasoning instructions significantly improve accuracy, boosting performance considerably. This suggests LLMs possess underlying knowledge but need structured instructions to retrieve and apply it effectively. Reasoning-focused LLMs generally outperform general-purpose ones, emphasizing the importance of reasoning capabilities. Higher-capacity models require fewer thinking tokens, while lower-capacity models need more reasoning steps to achieve optimal performance. Supervised fine-tuning further enhances accuracy and reduces response times, highlighting the potential of LLMs to push mathematical reasoning boundaries and tackle NP-hard problems.

#### Future of AI SoS
The "Future of AI SoS" is ripe with potential, especially considering the advancements highlighted in the paper. **AI's role in Sum-of-Squares (SoS) problem-solving could revolutionize mathematical research**, making NP-hard problems more tractable. Future research should focus on enhancing LLMs' reasoning capabilities further, perhaps by incorporating more structured knowledge or developing specialized architectures. **The trend of test-time scaling shows promise**, suggesting that LLMs can generate more complex solutions with additional computational resources. Addressing current limitations, such as handling longer polynomials and ensuring the validity of LLM decisions, is crucial. **Datasets like SoS-1K serve as valuable benchmarks**, but expanding them to encompass even more challenging problems will be essential. The potential for AI to not only solve but also generate new mathematical insights, as demonstrated by Qwen-14B-1M's NNSoS example, signals a paradigm shift in mathematical exploration. However, **ethical considerations regarding AI's role in mathematical discovery** needs careful consideration to ensure credibility.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.20545/x2.png)

> 🔼 This figure shows the accuracy of the OpenAI 01-mini language model on various subsets of the SoS-1K dataset, categorized by difficulty. It compares the model's performance under three different prompting conditions: SoS Plain (a simple question), SoS Simple (with simple instructions), and SoS Reasoning (with detailed, step-by-step instructions). The x-axis represents the test sets and the y-axis represents the accuracy. The figure illustrates how the quality of instructions significantly affects the model's ability to solve the SoS problem. Each test set has varying degrees of difficulty with some focusing on specific properties of SOS polynomials.
> <details>
> <summary>read the caption</summary>
> Figure 2: Accuracy of different test sets using o1-mini.
> </details>



![](https://arxiv.org/html/2502.20545/x3.png)

> 🔼 This figure shows the relationship between the length of the LLMs' responses (in thousands of tokens) and the number of correct answers they provide for SoS problems.  It demonstrates how different models' performance varies depending on the length of their reasoning processes. For example, some models achieve peak accuracy at a shorter response length, while others require longer reasoning chains to get more correct answers.  This illustrates the effect of 'thinking steps' on accuracy, revealing different capabilities between different models.
> <details>
> <summary>read the caption</summary>
> Figure 3: Number of correct samples with various response lengths.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S5.T2.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.1.1.2.1">
<span class="ltx_p" id="S5.T2.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.2.1.1.1">Size</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S5.T2.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.1.1.3.1">
<span class="ltx_p" id="S5.T2.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.3.1.1.1">Acc. (%)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.1.2.2.1"><span class="ltx_text ltx_font_italic" id="S5.T2.1.2.2.1.1">Closed Source</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S5.T2.1.2.2.2"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S5.T2.1.2.2.3"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.1.3.3.1">GPT-4o</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S5.T2.1.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.3.3.2.1">
<span class="ltx_p" id="S5.T2.1.3.3.2.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S5.T2.1.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.3.3.3.1">
<span class="ltx_p" id="S5.T2.1.3.3.3.1.1">75</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.4.4">
<td class="ltx_td ltx_align_left" id="S5.T2.1.4.4.1">o1-mini</td>
<td class="ltx_td ltx_align_justify" id="S5.T2.1.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.4.4.2.1">
<span class="ltx_p" id="S5.T2.1.4.4.2.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S5.T2.1.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.4.4.3.1">
<span class="ltx_p" id="S5.T2.1.4.4.3.1.1">76</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.1.5.5.1"><span class="ltx_text ltx_font_italic" id="S5.T2.1.5.5.1.1">Open Source</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S5.T2.1.5.5.2"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S5.T2.1.5.5.3"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.1.6.6.1">Qwen2.5-7B-Instruct-1M</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S5.T2.1.6.6.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.6.6.2.1">
<span class="ltx_p" id="S5.T2.1.6.6.2.1.1"><span class="ltx_text ltx_phantom" id="S5.T2.1.6.6.2.1.1.1"><span style="visibility:hidden">11</span></span>7B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S5.T2.1.6.6.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.6.6.3.1">
<span class="ltx_p" id="S5.T2.1.6.6.3.1.1">63</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.7.7">
<td class="ltx_td ltx_align_left" id="S5.T2.1.7.7.1">Qwen2.5-32B-Instruct</td>
<td class="ltx_td ltx_align_justify" id="S5.T2.1.7.7.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.7.7.2.1">
<span class="ltx_p" id="S5.T2.1.7.7.2.1.1"><span class="ltx_text ltx_phantom" id="S5.T2.1.7.7.2.1.1.1"><span style="visibility:hidden">1</span></span>32B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S5.T2.1.7.7.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.7.7.3.1">
<span class="ltx_p" id="S5.T2.1.7.7.3.1.1">62</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.8.8">
<td class="ltx_td ltx_align_left" id="S5.T2.1.8.8.1">QwQ-32B-Preview</td>
<td class="ltx_td ltx_align_justify" id="S5.T2.1.8.8.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.8.8.2.1">
<span class="ltx_p" id="S5.T2.1.8.8.2.1.1"><span class="ltx_text ltx_phantom" id="S5.T2.1.8.8.2.1.1.1"><span style="visibility:hidden">1</span></span>32B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S5.T2.1.8.8.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.8.8.3.1">
<span class="ltx_p" id="S5.T2.1.8.8.3.1.1">52</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.9.9">
<td class="ltx_td ltx_align_left" id="S5.T2.1.9.9.1">DeepSeek-V3</td>
<td class="ltx_td ltx_align_justify" id="S5.T2.1.9.9.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.9.9.2.1">
<span class="ltx_p" id="S5.T2.1.9.9.2.1.1">671B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S5.T2.1.9.9.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.9.9.3.1">
<span class="ltx_p" id="S5.T2.1.9.9.3.1.1">69</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.10.10">
<td class="ltx_td ltx_align_left" id="S5.T2.1.10.10.1">DeepSeek-R1</td>
<td class="ltx_td ltx_align_justify" id="S5.T2.1.10.10.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.10.10.2.1">
<span class="ltx_p" id="S5.T2.1.10.10.2.1.1">671B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S5.T2.1.10.10.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.10.10.3.1">
<span class="ltx_p" id="S5.T2.1.10.10.3.1.1">56</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.1.11.11.1"><span class="ltx_text ltx_font_bold" id="S5.T2.1.11.11.1.1">SoS-7B (Ours)</span></td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S5.T2.1.11.11.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.11.11.2.1">
<span class="ltx_p" id="S5.T2.1.11.11.2.1.1"><span class="ltx_text ltx_phantom" id="S5.T2.1.11.11.2.1.1.1"><span style="visibility:hidden">11</span></span><span class="ltx_text ltx_font_bold" id="S5.T2.1.11.11.2.1.1.2">7B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S5.T2.1.11.11.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.1.11.11.3.1">
<span class="ltx_p" id="S5.T2.1.11.11.3.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.1.11.11.3.1.1.1">70</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the accuracy of various Large Language Models (LLMs) on the Sum of Squares (SoS) Reasoning benchmark.  It compares the performance of both closed-source and open-source models of different sizes, indicating their accuracy in determining whether a given polynomial is an SoS. The accuracy is calculated based on the total number of evaluation samples and not just a subset, providing a comprehensive assessment of model capabilities.
> <details>
> <summary>read the caption</summary>
> Table 2: Accuracy Comparison on SoS Reasoning Benchmark, where '—' denotes the undisclosed model size. Accuracy is measured on full evaluation samples.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T3.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T3.1.1.2.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.1.1.2.1.1.1">Polynomial Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T3.1.1.2.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">length<span class="ltx_text ltx_font_bold" id="A5.T3.1.1.2.1.2.1">&lt;4000</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T3.1.1.2.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">length<span class="ltx_text ltx_font_bold" id="A5.T3.1.1.2.1.3.1">&gt;4000</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T3.1.1.2.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.1.1.2.1.4.1">Total</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T3.1.1.2.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.1.1.2.1.5.1">Is it SoS?</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T3.1.1.2.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.1.1.2.1.6.1">Difficulty</span></td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T3.1.1.3.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 1: Odd Degree Polynomial</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.3.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">150</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.3.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.3.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">200</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.3.2.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">NO</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.3.2.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Easy</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T3.1.1.4.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 2a: SoS (Expanded Form)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.4.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.4.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.4.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">120</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.4.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">YES</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.4.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Hard</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.5.4">
<td class="ltx_td ltx_align_left" id="A5.T3.1.1.5.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 2b: Negative (Expanded Form)</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.5.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">23</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.5.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">40</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.5.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">63</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.5.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">NO</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.5.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Hard</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.6.5">
<td class="ltx_td ltx_align_left" id="A5.T3.1.1.6.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 2.1a: SoS (Squared Form)</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.6.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">105</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.6.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">15</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.6.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">120</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.6.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">YES</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.6.5.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Easy</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.7.6">
<td class="ltx_td ltx_align_left" id="A5.T3.1.1.7.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 2.1b: Negative (Squared Form)</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.7.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">38</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.7.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">25</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.7.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">63</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.7.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">NO</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.7.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Easy</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T3.1.1.8.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 3.1a: Nonnegative Quadratic Quartic</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.8.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.8.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.8.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.8.7.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">YES</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.8.7.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Medium</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.9.8">
<td class="ltx_td ltx_align_left" id="A5.T3.1.1.9.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 3.1b: Negative Quadratic Quartic</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.9.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">100</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.9.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.9.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">100</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.9.8.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">NO</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.9.8.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Medium</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.10.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T3.1.1.10.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 3.2a: Nonnegative Quartic with 2 variables</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.10.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.10.9.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.10.9.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.10.9.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">YES</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.10.9.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Medium</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.11.10">
<td class="ltx_td ltx_align_left" id="A5.T3.1.1.11.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 3.2b: Negative Quartic</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.11.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">100</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.11.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.11.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">100</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.11.10.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">NO</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.11.10.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Medium</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.12.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T3.1.1.12.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 4a: Nonnegative Quadratic Quartic</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.12.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.12.11.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.12.11.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.12.11.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">YES</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.12.11.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Medium</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.13.12">
<td class="ltx_td ltx_align_left" id="A5.T3.1.1.13.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 4b: Negative Quartic</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.13.12.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">100</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.13.12.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.13.12.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">100</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.13.12.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">NO</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.13.12.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Medium</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.14.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T3.1.1.14.13.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 5.1a: PSD <span class="ltx_text ltx_font_bold" id="A5.T3.1.1.14.13.1.1">Q</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.14.13.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.14.13.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.14.13.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.14.13.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">YES</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.14.13.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Hard</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.15.14">
<td class="ltx_td ltx_align_left" id="A5.T3.1.1.15.14.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 5.1b: Non-PD <span class="ltx_text ltx_font_bold" id="A5.T3.1.1.15.14.1.1">Q</span>
</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.15.14.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">80</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.15.14.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">16</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.15.14.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">96</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.15.14.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">NO</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.15.14.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Hard</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.16.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T3.1.1.16.15.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 5.2a: PSD Spare <span class="ltx_text ltx_font_bold" id="A5.T3.1.1.16.15.1.1">Q</span> (Sparsity 0.1)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.16.15.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.16.15.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.16.15.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.16.15.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">YES</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.16.15.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Hard</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.17.16">
<td class="ltx_td ltx_align_left" id="A5.T3.1.1.17.16.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 5.2b: Non-PD Spare <span class="ltx_text ltx_font_bold" id="A5.T3.1.1.17.16.1.1">Q</span> (Sparsity 0.1)</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.17.16.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">56</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.17.16.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">16</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.17.16.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">72</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.17.16.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">NO</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.17.16.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Hard</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.18.17">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T3.1.1.18.17.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 5.3a: PSD Low Rank <span class="ltx_text ltx_font_bold" id="A5.T3.1.1.18.17.1.1">Q</span> (rank 3)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.18.17.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.18.17.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.18.17.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.18.17.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">YES</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.18.17.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Hard</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.19.18">
<td class="ltx_td ltx_align_left" id="A5.T3.1.1.19.18.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 5.3b: Non-PD Low Rank <span class="ltx_text ltx_font_bold" id="A5.T3.1.1.19.18.1.1">Q</span> (rank 3)</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.19.18.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">28</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.19.18.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">12</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.19.18.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">40</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.19.18.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">NO</td>
<td class="ltx_td ltx_align_center" id="A5.T3.1.1.19.18.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Hard</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T3.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 5.4a: PSD Ill-Conditioned <span class="ltx_text ltx_font_bold" id="A5.T3.1.1.1.1.1">Q</span> (<math alttext="\lambda=1-10^{12}" class="ltx_Math" display="inline" id="A5.T3.1.1.1.1.m1.1"><semantics id="A5.T3.1.1.1.1.m1.1a"><mrow id="A5.T3.1.1.1.1.m1.1.1" xref="A5.T3.1.1.1.1.m1.1.1.cmml"><mi id="A5.T3.1.1.1.1.m1.1.1.2" xref="A5.T3.1.1.1.1.m1.1.1.2.cmml">λ</mi><mo id="A5.T3.1.1.1.1.m1.1.1.1" xref="A5.T3.1.1.1.1.m1.1.1.1.cmml">=</mo><mrow id="A5.T3.1.1.1.1.m1.1.1.3" xref="A5.T3.1.1.1.1.m1.1.1.3.cmml"><mn id="A5.T3.1.1.1.1.m1.1.1.3.2" xref="A5.T3.1.1.1.1.m1.1.1.3.2.cmml">1</mn><mo id="A5.T3.1.1.1.1.m1.1.1.3.1" xref="A5.T3.1.1.1.1.m1.1.1.3.1.cmml">−</mo><msup id="A5.T3.1.1.1.1.m1.1.1.3.3" xref="A5.T3.1.1.1.1.m1.1.1.3.3.cmml"><mn id="A5.T3.1.1.1.1.m1.1.1.3.3.2" xref="A5.T3.1.1.1.1.m1.1.1.3.3.2.cmml">10</mn><mn id="A5.T3.1.1.1.1.m1.1.1.3.3.3" xref="A5.T3.1.1.1.1.m1.1.1.3.3.3.cmml">12</mn></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="A5.T3.1.1.1.1.m1.1b"><apply id="A5.T3.1.1.1.1.m1.1.1.cmml" xref="A5.T3.1.1.1.1.m1.1.1"><eq id="A5.T3.1.1.1.1.m1.1.1.1.cmml" xref="A5.T3.1.1.1.1.m1.1.1.1"></eq><ci id="A5.T3.1.1.1.1.m1.1.1.2.cmml" xref="A5.T3.1.1.1.1.m1.1.1.2">𝜆</ci><apply id="A5.T3.1.1.1.1.m1.1.1.3.cmml" xref="A5.T3.1.1.1.1.m1.1.1.3"><minus id="A5.T3.1.1.1.1.m1.1.1.3.1.cmml" xref="A5.T3.1.1.1.1.m1.1.1.3.1"></minus><cn id="A5.T3.1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A5.T3.1.1.1.1.m1.1.1.3.2">1</cn><apply id="A5.T3.1.1.1.1.m1.1.1.3.3.cmml" xref="A5.T3.1.1.1.1.m1.1.1.3.3"><csymbol cd="ambiguous" id="A5.T3.1.1.1.1.m1.1.1.3.3.1.cmml" xref="A5.T3.1.1.1.1.m1.1.1.3.3">superscript</csymbol><cn id="A5.T3.1.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A5.T3.1.1.1.1.m1.1.1.3.3.2">10</cn><cn id="A5.T3.1.1.1.1.m1.1.1.3.3.3.cmml" type="integer" xref="A5.T3.1.1.1.1.m1.1.1.3.3.3">12</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A5.T3.1.1.1.1.m1.1c">\lambda=1-10^{12}</annotation><annotation encoding="application/x-llamapun" id="A5.T3.1.1.1.1.m1.1d">italic_λ = 1 - 10 start_POSTSUPERSCRIPT 12 end_POSTSUPERSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">YES</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T3.1.1.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Hard</td>
</tr>
<tr class="ltx_tr" id="A5.T3.1.1.20.19">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T3.1.1.20.19.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Test Set 5.4b: Non-PD Ill-Conditioned <span class="ltx_text ltx_font_bold" id="A5.T3.1.1.20.19.1.1">Q</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T3.1.1.20.19.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T3.1.1.20.19.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">30</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T3.1.1.20.19.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">70</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T3.1.1.20.19.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">NO</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T3.1.1.20.19.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Hard</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 provides a summary of the SoS-1K dataset, which consists of approximately 1000 polynomials categorized into different subsets based on characteristics like polynomial degree, presence of specific structures, and difficulty level. Each subset is labeled to indicate whether its polynomials are sums of squares (SoS) or not, and the number of polynomials in each subset.  Additionally, the table shows the length distribution of polynomials (less than 4000 characters or more) within each subset and indicates the difficulty level of each subset.
> <details>
> <summary>read the caption</summary>
> Table 3: Summary of SoS-1K Test Sets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A7.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A7.T4.1.1.1.1.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A7.T4.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A7.T4.1.1.1.1.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A7.T4.1.1.1.1.2.1"># Total Samples</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="A7.T4.1.1.1.1.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A7.T4.1.1.1.1.3.1"># Valid Samples</span></th>
</tr>
<tr class="ltx_tr" id="A7.T4.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="A7.T4.1.1.2.2.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A7.T4.1.1.2.2.1.1">Instruction Type</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A7.T4.1.1.2.2.2" style="padding:1pt 3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A7.T4.1.1.2.2.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A7.T4.1.1.2.2.3.1">SoS Plain</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A7.T4.1.1.2.2.4" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A7.T4.1.1.2.2.4.1">SoS Simple</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T4.1.1.2.2.5" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A7.T4.1.1.2.2.5.1">SoS Reasoning</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T4.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A7.T4.1.1.3.1.1" style="padding:1pt 3.0pt;">DeepSeek-R1</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T4.1.1.3.1.2" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T4.1.1.3.1.3" style="padding:1pt 3.0pt;">300</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T4.1.1.3.1.4" style="padding:1pt 3.0pt;">302</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T4.1.1.3.1.5" style="padding:1pt 3.0pt;">234</td>
</tr>
<tr class="ltx_tr" id="A7.T4.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A7.T4.1.1.4.2.1" style="padding:1pt 3.0pt;">QWQ-32b</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.4.2.2" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.4.2.3" style="padding:1pt 3.0pt;">233</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.4.2.4" style="padding:1pt 3.0pt;">259</td>
<td class="ltx_td ltx_align_center" id="A7.T4.1.1.4.2.5" style="padding:1pt 3.0pt;">225</td>
</tr>
<tr class="ltx_tr" id="A7.T4.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A7.T4.1.1.5.3.1" style="padding:1pt 3.0pt;">o1-mini</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.5.3.2" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.5.3.3" style="padding:1pt 3.0pt;">338</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.5.3.4" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center" id="A7.T4.1.1.5.3.5" style="padding:1pt 3.0pt;">337</td>
</tr>
<tr class="ltx_tr" id="A7.T4.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A7.T4.1.1.6.4.1" style="padding:1pt 3.0pt;">Qwen2.5-7b</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.6.4.2" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.6.4.3" style="padding:1pt 3.0pt;">323</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.6.4.4" style="padding:1pt 3.0pt;">332</td>
<td class="ltx_td ltx_align_center" id="A7.T4.1.1.6.4.5" style="padding:1pt 3.0pt;">277</td>
</tr>
<tr class="ltx_tr" id="A7.T4.1.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A7.T4.1.1.7.5.1" style="padding:1pt 3.0pt;">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.7.5.2" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.7.5.3" style="padding:1pt 3.0pt;">336</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.7.5.4" style="padding:1pt 3.0pt;">338</td>
<td class="ltx_td ltx_align_center" id="A7.T4.1.1.7.5.5" style="padding:1pt 3.0pt;">337</td>
</tr>
<tr class="ltx_tr" id="A7.T4.1.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A7.T4.1.1.8.6.1" style="padding:1pt 3.0pt;">Qwen2.5-7b-1m</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.8.6.2" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.8.6.3" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.8.6.4" style="padding:1pt 3.0pt;">339</td>
<td class="ltx_td ltx_align_center" id="A7.T4.1.1.8.6.5" style="padding:1pt 3.0pt;">286</td>
</tr>
<tr class="ltx_tr" id="A7.T4.1.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A7.T4.1.1.9.7.1" style="padding:1pt 3.0pt;">Qwen2.5-14b</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.9.7.2" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.9.7.3" style="padding:1pt 3.0pt;">325</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.9.7.4" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center" id="A7.T4.1.1.9.7.5" style="padding:1pt 3.0pt;">316</td>
</tr>
<tr class="ltx_tr" id="A7.T4.1.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A7.T4.1.1.10.8.1" style="padding:1pt 3.0pt;">Qwen2.5-14b-1m</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.10.8.2" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.10.8.3" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.10.8.4" style="padding:1pt 3.0pt;">336</td>
<td class="ltx_td ltx_align_center" id="A7.T4.1.1.10.8.5" style="padding:1pt 3.0pt;">309</td>
</tr>
<tr class="ltx_tr" id="A7.T4.1.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A7.T4.1.1.11.9.1" style="padding:1pt 3.0pt;">GPT-4o-mini</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.11.9.2" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.11.9.3" style="padding:1pt 3.0pt;">339</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.11.9.4" style="padding:1pt 3.0pt;">339</td>
<td class="ltx_td ltx_align_center" id="A7.T4.1.1.11.9.5" style="padding:1pt 3.0pt;">327</td>
</tr>
<tr class="ltx_tr" id="A7.T4.1.1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A7.T4.1.1.12.10.1" style="padding:1pt 3.0pt;">DeepSeek-V1</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.12.10.2" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.12.10.3" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.12.10.4" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center" id="A7.T4.1.1.12.10.5" style="padding:1pt 3.0pt;">332</td>
</tr>
<tr class="ltx_tr" id="A7.T4.1.1.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A7.T4.1.1.13.11.1" style="padding:1pt 3.0pt;">Qwen2.5-32b</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.13.11.2" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.13.11.3" style="padding:1pt 3.0pt;">334</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T4.1.1.13.11.4" style="padding:1pt 3.0pt;">339</td>
<td class="ltx_td ltx_align_center" id="A7.T4.1.1.13.11.5" style="padding:1pt 3.0pt;">315</td>
</tr>
<tr class="ltx_tr" id="A7.T4.1.1.14.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="A7.T4.1.1.14.12.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A7.T4.1.1.14.12.1.1">Average</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A7.T4.1.1.14.12.2" style="padding:1pt 3.0pt;">340</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A7.T4.1.1.14.12.3" style="padding:1pt 3.0pt;">323</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A7.T4.1.1.14.12.4" style="padding:1pt 3.0pt;">328</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A7.T4.1.1.14.12.5" style="padding:1pt 3.0pt;">300</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of various Large Language Models (LLMs) on a subset of the SoS-1K dataset.  For each model, it shows the total number of samples tested, and the number of valid samples (i.e., samples for which the model produced a response within the time limit).  The table further breaks down the valid samples according to which prompting method was used (SoS Plain, SoS Simple, and SoS Reasoning). This allows for an assessment of how different prompting strategies impact the accuracy of each model's predictions regarding the sum-of-squares property of the polynomials.
> <details>
> <summary>read the caption</summary>
> Table 4: # Total Samples and Valid Samples of Different Models.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.20545/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20545/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20545/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20545/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20545/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20545/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20545/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20545/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20545/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20545/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20545/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20545/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20545/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20545/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20545/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20545/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}