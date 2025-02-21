---
title: "Scaling Text-Rich Image Understanding via Code-Guided Synthetic Multimodal Data Generation"
summary: "CoSyn: Code-guided synth data for scaling text-rich image understanding, achieving SOTA via targeted multimodal data generation!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 University of Pennsylvania",]
showSummary: true
date: 2025-02-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.14846 {{< /keyword >}}
{{< keyword icon="writer" >}} Yue Yang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.14846" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.14846" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.14846/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Vision-Language Models (VLMs) struggle with text-rich images due to limited data. They tend to over-rely on language priors. The paper tackles this by introducing **CoSyn**, a framework that uses code-guided generation to create synthetic data for vision-language instruction tuning. It leverages the coding capabilities of text-only LLMs to automatically create synthetic text-rich multimodal data. Given input text describing a target domain, it prompts an LLM to generate code for rendering synthetic images. 



Using CoSyn, the authors constructed a large-scale dataset of 400K images and 2.7M rows of instruction-tuning data. Experiments on seven benchmarks show that models trained on this data achieve state-of-the-art performance. CoSyn also enables sample-efficient learning and improves performance on tasks requiring multi-hop reasoning. It can synthesize pointing data, enabling VLMs to ground information within input images. This showcases the potential for developing multimodal agents capable of acting in real-world environments.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Code-guided synthetic data generation enhances VLM performance on text-rich images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} CoSyn improves generalization to new tasks with targeted synthetic data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Synthetic data helps mitigate biases in multimodal benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
CoSyn offers a promising approach to **boost VLM performance** by generating synthetic data, which helps address the lack of diverse text-rich data. This research opens new avenues for **developing multimodal agents** and **improving VLM capabilities** in real-world applications.

------
#### Visual Insights



![](https://arxiv.org/html/2502.14846/x1.png)

> 🔼 This figure illustrates the Code-Guided Synthetic Multimodal Data Generation system.  Given a new task (such as answering questions about nutrition labels), the system uses a large language model (LLM) to generate code (e.g., in Python, HTML, or LaTeX) that renders a synthetic image related to that task. The generated code acts as a textual representation of the image, allowing the LLM to produce high-quality instruction-tuning data, which can be used to train a vision-language model (VLM). This synthetic data helps address the scarcity of real-world text-rich image data for training VLMs, ultimately improving their performance on complex reasoning tasks involving text and images.
> <details>
> <summary>read the caption</summary>
> Figure 1: Given a novel task (e.g., answering questions about nutrition facts), our code-guided generation system can produce targeted synthetic data to enhance the performance of VLMs on that specific task.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T1.10">
<tr class="ltx_tr" id="S5.T1.10.11">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.10.11.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.11.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.10.11.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.11.2.1">ChartQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.10.11.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.11.3.1">DocVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.10.11.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.11.4.1">InfoVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.10.11.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.11.5.1">TableVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.10.11.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.11.6.1">AI2D</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.10.11.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.11.7.1">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.10.11.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.11.8.1">ScreenQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.10.11.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.11.9.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.10.12.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.12.1.1" style="color:#808080;">GPT-4V</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.12.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.12.2.1" style="color:#808080;">78.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.12.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.12.3.1" style="color:#808080;">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.12.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.12.4.1" style="color:#808080;">75.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.12.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.12.5.1" style="color:#808080;">60.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.12.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.12.6.1" style="color:#808080;">89.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.12.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.12.7.1" style="color:#808080;">78.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.12.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.12.8.1" style="color:#808080;">41.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.12.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.12.9.1" style="color:#808080;">72.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.13">
<td class="ltx_td ltx_align_left" id="S5.T1.10.13.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.13.1.1" style="color:#808080;">Gemini 1.5 Flash</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.13.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.13.2.1" style="color:#808080;">85.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.13.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.13.3.1" style="color:#808080;">89.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.13.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.13.4.1" style="color:#808080;">75.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.13.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.13.5.1" style="color:#808080;">72.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.13.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.13.6.1" style="color:#808080;">91.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.13.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.13.7.1" style="color:#808080;">78.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.13.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.13.8.1" style="color:#808080;">40.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.13.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.13.9.1" style="color:#808080;">76.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.14">
<td class="ltx_td ltx_align_left" id="S5.T1.10.14.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.14.1.1" style="color:#808080;">Claude-3 Opus</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.14.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.14.2.1" style="color:#808080;">80.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.14.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.14.3.1" style="color:#808080;">89.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.14.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.14.4.1" style="color:#808080;">55.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.14.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.14.5.1" style="color:#808080;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.14.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.14.6.1" style="color:#808080;">88.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.14.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.14.7.1" style="color:#808080;">67.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.14.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.14.8.1" style="color:#808080;">39.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.14.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.14.9.1" style="color:#808080;">70.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.1.1" style="padding-left:4.5pt;padding-right:4.5pt;">PaliGemma-3B<sup class="ltx_sup" id="S5.T1.1.1.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.2" style="padding-left:4.5pt;padding-right:4.5pt;">71.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3" style="padding-left:4.5pt;padding-right:4.5pt;">84.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.4" style="padding-left:4.5pt;padding-right:4.5pt;">47.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.5" style="padding-left:4.5pt;padding-right:4.5pt;">46.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.6" style="padding-left:4.5pt;padding-right:4.5pt;">73.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.7" style="padding-left:4.5pt;padding-right:4.5pt;">76.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.8" style="padding-left:4.5pt;padding-right:4.5pt;">32.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.9" style="padding-left:4.5pt;padding-right:4.5pt;">61.8</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.2">
<td class="ltx_td ltx_align_left" id="S5.T1.2.2.1" style="padding-left:4.5pt;padding-right:4.5pt;">BLIP-3-4B<sup class="ltx_sup" id="S5.T1.2.2.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2" style="padding-left:4.5pt;padding-right:4.5pt;">60.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.3" style="padding-left:4.5pt;padding-right:4.5pt;">61.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.4" style="padding-left:4.5pt;padding-right:4.5pt;">31.5</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.5" style="padding-left:4.5pt;padding-right:4.5pt;">24.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.6" style="padding-left:4.5pt;padding-right:4.5pt;">74.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.7" style="padding-left:4.5pt;padding-right:4.5pt;">71.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.8" style="padding-left:4.5pt;padding-right:4.5pt;">26.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.9" style="padding-left:4.5pt;padding-right:4.5pt;">49.8</td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3">
<td class="ltx_td ltx_align_left" id="S5.T1.3.3.1" style="padding-left:4.5pt;padding-right:4.5pt;">Cambrian-7B<sup class="ltx_sup" id="S5.T1.3.3.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.2" style="padding-left:4.5pt;padding-right:4.5pt;">73.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3" style="padding-left:4.5pt;padding-right:4.5pt;">77.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.4" style="padding-left:4.5pt;padding-right:4.5pt;">41.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.5" style="padding-left:4.5pt;padding-right:4.5pt;">40.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.6" style="padding-left:4.5pt;padding-right:4.5pt;">73.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.7" style="padding-left:4.5pt;padding-right:4.5pt;">71.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.8" style="padding-left:4.5pt;padding-right:4.5pt;">44.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.9" style="padding-left:4.5pt;padding-right:4.5pt;">64.2</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.5">
<td class="ltx_td ltx_align_left" id="S5.T1.5.5.2" style="padding-left:4.5pt;padding-right:4.5pt;">LLaVA-1.5-7B<sup class="ltx_sup" id="S5.T1.5.5.2.1">†</sup><sup class="ltx_sup" id="S5.T1.5.5.2.2">∗</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.3" style="padding-left:4.5pt;padding-right:4.5pt;">17.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.4" style="padding-left:4.5pt;padding-right:4.5pt;">28.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.5" style="padding-left:4.5pt;padding-right:4.5pt;">25.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.6" style="padding-left:4.5pt;padding-right:4.5pt;">33.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.7" style="padding-left:4.5pt;padding-right:4.5pt;">55.5</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.8" style="padding-left:4.5pt;padding-right:4.5pt;">58.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.9" style="padding-left:4.5pt;padding-right:4.5pt;">17.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.10" style="padding-left:4.5pt;padding-right:4.5pt;">33.7</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6">
<td class="ltx_td ltx_align_left" id="S5.T1.6.6.1" style="padding-left:4.5pt;padding-right:4.5pt;">LLaVA-Next-8B<sup class="ltx_sup" id="S5.T1.6.6.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.2" style="padding-left:4.5pt;padding-right:4.5pt;">69.5</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.3" style="padding-left:4.5pt;padding-right:4.5pt;">78.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.4" style="padding-left:4.5pt;padding-right:4.5pt;">43.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.5" style="padding-left:4.5pt;padding-right:4.5pt;">43.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.6" style="padding-left:4.5pt;padding-right:4.5pt;">71.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.7" style="padding-left:4.5pt;padding-right:4.5pt;">65.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.8" style="padding-left:4.5pt;padding-right:4.5pt;">34.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9" style="padding-left:4.5pt;padding-right:4.5pt;">58.1</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7">
<td class="ltx_td ltx_align_left" id="S5.T1.7.7.1" style="padding-left:4.5pt;padding-right:4.5pt;">LLaVA-OneVision-7B<sup class="ltx_sup" id="S5.T1.7.7.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.2" style="padding-left:4.5pt;padding-right:4.5pt;">80.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.3" style="padding-left:4.5pt;padding-right:4.5pt;">87.5</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.7.7.4.1">68.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.5" style="padding-left:4.5pt;padding-right:4.5pt;">64.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.7.7.6.1">81.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.7.7.7.1">78.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.8" style="padding-left:4.5pt;padding-right:4.5pt;">46.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.9" style="padding-left:4.5pt;padding-right:4.5pt;">72.4</td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.15">
<td class="ltx_td ltx_align_left" id="S5.T1.10.15.1" style="padding-left:4.5pt;padding-right:4.5pt;">Pixtral-12B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.15.2" style="padding-left:4.5pt;padding-right:4.5pt;">81.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.15.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.15.3.1">90.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.15.4" style="padding-left:4.5pt;padding-right:4.5pt;">50.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.15.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.15.5.1">67.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.15.6" style="padding-left:4.5pt;padding-right:4.5pt;">79.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.15.7" style="padding-left:4.5pt;padding-right:4.5pt;">75.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.15.8" style="padding-left:4.5pt;padding-right:4.5pt;">39.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.15.9" style="padding-left:4.5pt;padding-right:4.5pt;">69.2</td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.16">
<td class="ltx_td ltx_align_left" id="S5.T1.10.16.1" style="padding-left:4.5pt;padding-right:4.5pt;">Llama 3.2 11B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.16.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.10.16.2.1">83.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.16.3" style="padding-left:4.5pt;padding-right:4.5pt;">88.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.16.4" style="padding-left:4.5pt;padding-right:4.5pt;">63.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.16.5" style="padding-left:4.5pt;padding-right:4.5pt;">51.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.16.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.16.6.1">91.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.16.7" style="padding-left:4.5pt;padding-right:4.5pt;">73.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.16.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.16.8.1">87.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.16.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.10.16.9.1">77.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.8.8.1" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.8.8.1.1" style="background-color:#F2F2F2;">Ours (7B)<sup class="ltx_sup" id="S5.T1.8.8.1.1.1"><span class="ltx_text" id="S5.T1.8.8.1.1.1.1" style="background-color:#F2F2F2;">†</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.2" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.8.8.2.1" style="background-color:#F2F2F2;">86.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.3" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.8.8.3.1" style="background-color:#F2F2F2;">90.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.4" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.8.8.4.1" style="background-color:#F2F2F2;">70.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.5" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.8.8.5.1" style="background-color:#F2F2F2;">65.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.6" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.8.8.6.1" style="background-color:#F2F2F2;">91.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.7" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.8.8.7.1" style="background-color:#F2F2F2;">82.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.8" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.8.8.8.1" style="background-color:#F2F2F2;">80.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.9" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.8.8.9.1" style="background-color:#F2F2F2;">80.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T1.10.10.2" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.10.2.2" style="background-color:#F2F2F2;">Ours (7B-zero-shot)<sup class="ltx_sup" id="S5.T1.10.10.2.2.1"><span class="ltx_text" id="S5.T1.10.10.2.2.1.1" style="background-color:#F2F2F2;">†</span></sup><sup class="ltx_sup" id="S5.T1.10.10.2.2.2"><span class="ltx_text" id="S5.T1.10.10.2.2.2.1" style="background-color:#F2F2F2;">∗</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.10.10.3" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.10.3.1" style="background-color:#F2F2F2;">80.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.10.10.4" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.10.4.1" style="background-color:#F2F2F2;">82.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.10.10.5" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.10.5.1" style="background-color:#F2F2F2;">59.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.10.10.6" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.10.6.1" style="background-color:#F2F2F2;">64.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.10.10.7" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.10.7.1" style="background-color:#F2F2F2;">83.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.10.10.8" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.10.8.1" style="background-color:#F2F2F2;">72.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.10.10.9" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.10.9.1" style="background-color:#F2F2F2;">78.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.10.10.10" style="background-color:#F2F2F2;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T1.10.10.10.1" style="background-color:#F2F2F2;">74.7</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance comparison of various vision-language models (VLMs) on seven established text-rich image understanding benchmarks.  The models are evaluated based on their ability to answer questions about images containing text, such as charts, documents, and diagrams. The table highlights the state-of-the-art performance of models trained on synthetic data generated by the CoSyn system, showcasing both supervised and zero-shot results.  The presence of open data and code, as well as the zero-shot capabilities of certain models, is explicitly indicated. This allows readers to compare proprietary models (GPT-4V, Gemini) with open-source alternatives.
> <details>
> <summary>read the caption</summary>
> Table 1: Results on 7 text-rich benchmarks. The result of the best-performing open-source model is bold, and the second-best is underlined. Models with † stand for open data and code for multimodal training. Models with ∗ are zero-shot models, which means the models are not trained on instances from any of the evaluation datasets.
> </details>





### In-depth insights


#### Code-Guided Gen
The work focuses on **code-guided generation (CoSyn)** of synthetic multimodal data. The core idea is to utilize code as an intermediate representation to bridge images and text, where text-only LLMs, known for code generation, are prompted to produce code (Python, HTML, LaTeX, etc.) that renders synthetic images. This code then serves as context for LLMs to generate corresponding textual instructions, enabling the creation of high-quality instruction-tuning data for VLMs. This is especially useful in text-rich domains, since such images are typically rendered from code and this approach provides grounded instructions.

#### Text-Rich Scaling
Scaling text-rich image understanding is crucial for advancing VLMs. The scarcity of diverse data in this domain hinders progress. **CoSyn addresses this by leveraging text-only LLMs to generate synthetic multimodal data**. The approach involves coding images, enabling high-quality instruction tuning. The goal is to improve VLMs' ability to interpret and reason about text-rich images, unlocking their potential for real-world applications. This scaling enhances VLMs in understanding text-rich images and unlocks their potential for broader applications. **Synthetic data generation offers a path to overcome data limitations**.

#### CoSyn Framework
CoSyn, the code-guided synthetic data generation framework, **addresses the scarcity of diverse text-rich vision-language data**, a critical bottleneck for VLMs. It **leverages the coding capabilities of text-only LLMs** to create synthetic multimodal data automatically. The framework, driven by short natural language queries, prompts an LLM to generate code in languages like Python or HTML. This code is used to render synthetic images. The **underlying code becomes a textual representation of the images**. The system generates high-quality instruction-tuning data by again relying on a text-only LLM, with **the code serving as context**. CoSyn's architecture enables the creation of a targeted dataset, enhancing the VLM performance.

#### Synthetic VLMs
The concept of "Synthetic VLMs," while not explicitly a heading in this document, can be interpreted as the core idea of using synthetically generated data to train Vision-Language Models (VLMs). The research **leverages the coding capabilities of LLMs to create diverse text-rich multimodal data**. This addresses the **limitation of high-quality, realistic, and diverse vision-language datasets** which often hinders VLM performance, particularly in tasks requiring text and spatial reasoning. By generating data and code, the system offers high-quality instruction-tuning data, enabling VLMs to learn effectively in domains where real data is scarce. Ultimately, this approach unlocks the potential of VLMs for real-world applications, where understanding text-rich images is crucial.

#### Pointing Agents
While not explicitly discussed, the paper implicitly touches on pointing agents through its exploration of multimodal understanding and code-guided synthetic data generation. **CoSyn's ability to create synthetic pointing data**, as seen in the ScreenSpot experiments, suggests its potential for training agents that can interact with and ground themselves in visual environments. This highlights the framework's value in **developing agents capable of performing tasks** such as object recognition, navigation, and decision-making based on visual cues, opening avenues for real-world applications like robotics and autonomous systems.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.14846/x2.png)

> 🔼 This figure illustrates the CoSyn system, a code-guided synthetic data generation system.  CoSyn uses a user query (e.g., 'book cover') to trigger a series of steps. First, it selects relevant pipelines from a total of 20 available, each using one of 11 different rendering tools (like Python, HTML, or LaTeX).  Then, it generates diverse topics tailored to the query and conditioned on various personas.  Next, detailed data is created, which is then converted into code. This code is executed to generate synthetic text-rich images, and this code itself is used as input for a large language model (LLM) to generate the corresponding textual instruction-tuning data. Thus, CoSyn produces synthetic multimodal data (images and textual instructions) for training vision-language models (VLMs).
> <details>
> <summary>read the caption</summary>
> Figure 2: The overview of our Code Guided Synthetic data generation system (CoSyn), which has 20 generation pipelines based on 11 render tools. Given a user query, e.g., “book cover,” CoSyn selects the appropriate pipelines and starts with generating diverse topics conditioned on personas, then synthesizes detailed data for code generation. The code renders the image and is also fed as context for an LLM to construct instruction-tuning data.
> </details>



![](https://arxiv.org/html/2502.14846/x3.png)

> 🔼 The figure shows a breakdown of the CoSyn-400K dataset, a large-scale synthetic dataset created using the CoSyn framework.  It highlights the dataset's composition of 9 distinct categories of text-rich images, each including a substantial number of image-text pairs suitable for instruction tuning. The figure visually represents the categories and their respective image counts, emphasizing the dataset's diversity and scale (400,000 images and 2.7 million instruction-tuning data points).  It also notes that further qualitative examples with question-answer annotations are provided in Appendix C (Figures 12-18).
> <details>
> <summary>read the caption</summary>
> Figure 3: Our CoSyn-400K dataset consists of 9 categories of text-rich images with 2.7M instruction-tuning data. More qualitative examples, along with question-answer annotations, are available in Figure 12 -18 in Appendix C.
> </details>



![](https://arxiv.org/html/2502.14846/x4.png)

> 🔼 This ablation study investigates the impact of different training data combinations on model performance.  The model was trained using three types of datasets: auxiliary datasets (large, general-purpose multimodal data), synthetic datasets generated by the CoSyn method (text-rich images), and evaluation datasets (smaller, benchmark datasets). The figure displays the average performance across eight different benchmarks, comparing models trained with various combinations of these three data types. This allows assessment of the individual contribution and interactions of each type of dataset on the model's final accuracy. More detailed results for individual benchmarks are provided in Table 7.
> <details>
> <summary>read the caption</summary>
> Figure 4: Ablation on training data selection. Aux, Syn, and Eval stand for auxiliary, synthetic, and evaluation datasets, respectively. We report the average score on eight benchmarks. The detailed performance breakdown on each benchmark is in Table 7.
> </details>



![](https://arxiv.org/html/2502.14846/x5.png)

> 🔼 This figure demonstrates the zero-shot performance of various vision-language models (VLMs) on the NutritionQA benchmark.  The x-axis shows the amount of instruction-tuning data (number of training examples) used to fine-tune each model. The y-axis represents the accuracy achieved on NutritionQA.  The models in the upper left corner show superior data efficiency, achieving high accuracy with significantly less training data compared to the other models.
> <details>
> <summary>read the caption</summary>
> Figure 5: Zero shot performance on NutritionQA. The x-axis denotes the number of training examples used for the instruction-tuning stage. The models on the upper left side demonstrate better data efficiency.
> </details>



![](https://arxiv.org/html/2502.14846/x6.png)

> 🔼 This figure displays the results of an ablation study comparing the performance of a vision-language model (VLM) using two different prompting methods:  'Short Answer' and 'Chain-of-Thought (CoT)'. The 'Short Answer' prompt instructs the model to provide concise answers, while the 'CoT' prompt encourages the model to articulate its reasoning process step-by-step before providing the final answer.  The bar chart visually represents the performance differences across multiple datasets (ChartQA, DocVQA, InfoVQA, TableVQA, NutritionQA) for each prompting method.  The goal is to demonstrate the impact of incorporating chain-of-thought reasoning on the VLM's accuracy and ability to perform complex reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation of using Chain-of-Thought reasoning. Short Answer represents prompting model to output the answer as short as possible. +++ CoT stands for providing Chain-of-Thought reasoning before giving the final answer. Results on all datasets are in Table 6.
> </details>



![](https://arxiv.org/html/2502.14846/x8.png)

> 🔼 Figure 7 demonstrates how synthetic pointing data is generated and used to improve Vision-Language Models (VLMs).  Panel (a) details the process: an LLM generates a question requiring a pointer to a specific object within an image; then the code generating the image is modified to explicitly include the correct coordinates. Panel (b) shows that a VLM trained using this synthetic data can successfully perform pointing tasks on real-world screenshots, proving the method's generalizability.
> <details>
> <summary>read the caption</summary>
> Figure 7: The overview of enabling VLMs to point through synthetic data. (a) We synthesize pointing data by prompting an LLM to generate pointing questions and edit the code to draw the answer points explicitly. (b) We demonstrate that the VLM trained on synthetic pointing data can be generalized to real agentic tasks.
> </details>



![](https://arxiv.org/html/2502.14846/x9.png)

> 🔼 Figure 8 presents the prompt templates utilized in the HTML Document Pipeline of the CoSyn system.  It details the four stages of the generation process: topic generation (creating diverse topics based on specified personas), data generation (producing realistic data suitable for the chosen topic and persona), code generation (producing executable HTML code to render an image based on the data), and instruction generation (generating question-answer pairs for instruction tuning, using the code and data as context).  This figure provides a detailed look at how CoSyn prompts a large language model at each stage to create varied and realistic synthetic data for training vision-language models.
> <details>
> <summary>read the caption</summary>
> Figure 8: Prompt templates used for HTML Document Pipeline, including all four stages of generation: topic, data, code, and instruction.
> </details>



![](https://arxiv.org/html/2502.14846/x10.png)

> 🔼 This figure shows how model performance on the ChartQA benchmark is affected by the quantity of synthetic training data.  Specifically, it illustrates a zero-shot learning scenario where models are not pre-trained on any ChartQA data.  The x-axis represents the increasing amount of synthetic data used for fine-tuning, and the y-axis represents the accuracy achieved on the ChartQA benchmark.  The figure demonstrates that increased amounts of synthetic data correlate with improved model performance on this text-rich image understanding task, highlighting the effectiveness of synthetic data augmentation for vision-language models.
> <details>
> <summary>read the caption</summary>
> Figure 9: Scaling the Size of Synthetic Data. We evaluate the zero-shot performance on ChartQA of models fine-tuned on increasing numbers of synthetic images.
> </details>



![](https://arxiv.org/html/2502.14846/x11.png)

> 🔼 Figure 10 presents examples from the NutritionQA dataset, a newly created benchmark dataset for evaluating Vision-Language Models (VLMs) on the task of understanding and answering questions about nutrition fact labels.  The figure showcases several images of nutrition fact labels from different products, each paired with one or more example questions that a VLM should be able to answer.  This dataset is intended to test the ability of VLMs to handle real-world scenarios where multimodal reasoning (text and image) is required.
> <details>
> <summary>read the caption</summary>
> Figure 10: Examples from our newly collected NutritionQA dataset.
> </details>



![](https://arxiv.org/html/2502.14846/x12.png)

> 🔼 Figure 11 showcases examples from the newly created DocPointQA dataset.  This dataset focuses on visual question answering tasks applied to document images.  The figure displays several examples of document images, accompanied by questions requiring users to identify specific elements within the documents.  This highlights the dataset's focus on tasks involving locating and extracting information from complex visual layouts.
> <details>
> <summary>read the caption</summary>
> Figure 11: Examples from our newly collected DocPointQA dataset.
> </details>



![](https://arxiv.org/html/2502.14846/x13.png)

> 🔼 This figure showcases a small subset of the diverse chart types generated by the CoSyN system.  It visually demonstrates the variety in chart styles, complexity, and data representation achieved through the use of multiple rendering tools and diverse prompts.  The examples highlight the system's ability to generate charts for various applications and analytical needs.
> <details>
> <summary>read the caption</summary>
> Figure 12: Randomly selected examples from our synthetic chart data.
> </details>



![](https://arxiv.org/html/2502.14846/x14.png)

> 🔼 This figure showcases a variety of synthetically generated documents created using the CoSyn framework.  The documents exemplify the system's ability to produce diverse and realistic-looking text-rich content, ranging in style and format.  These samples illustrate the system's capacity to generate different document types such as meeting minutes, marketing materials, and incident reports, each complete with relevant text and layout.
> <details>
> <summary>read the caption</summary>
> Figure 13: Randomly selected examples from our synthetic document data.
> </details>



![](https://arxiv.org/html/2502.14846/x15.png)

> 🔼 Figure 14 presents a small subset of the synthetic table data generated by the CoSyN system.  The figure showcases the diversity of table styles, layouts, and content achieved through the system's ability to render tables from diverse data using various rendering tools (including LaTeX, Matplotlib, Plotly, and HTML). Each example includes a sample question and answer highlighting the visual question answering capability trained on this synthetic data.  This demonstrates the variety of tabular data types that CoSyN is able to generate, illustrating its effectiveness in creating a diverse and representative training dataset for VLMs (Vision-Language Models).
> <details>
> <summary>read the caption</summary>
> Figure 14: Randomly selected examples from our synthetic table data.
> </details>



![](https://arxiv.org/html/2502.14846/x16.png)

> 🔼 Figure 15 presents a small subset of the synthetic mathematical problems generated by the CoSyn system.  These problems showcase the diversity of mathematical concepts covered in the synthetic dataset, ranging from basic algebra and geometry to more complex calculus problems.  The image shows several examples, each with a corresponding question and answer, illustrating the variety of question types and difficulty levels found within the synthetic data. This variety is crucial for training robust and versatile vision-language models capable of solving diverse math problems presented visually.
> <details>
> <summary>read the caption</summary>
> Figure 15: Randomly selected examples from our synthetic math data.
> </details>



![](https://arxiv.org/html/2502.14846/x17.png)

> 🔼 Figure 16 showcases a small subset of the synthetic diagram data generated by the CoSyn system.  The diagrams illustrate the diversity of visual structures and complexities achievable through the CoSyn pipeline. These examples are representative of the larger dataset used to train and evaluate the vision-language models described in the paper. The accompanying questions highlight the model's capability in comprehending and reasoning about information presented in diagrammatic form.
> <details>
> <summary>read the caption</summary>
> Figure 16: Randomly selected examples from our synthetic diagram data.
> </details>



![](https://arxiv.org/html/2502.14846/x18.png)

> 🔼 This figure showcases a small sample of the diverse vector graphics generated using CoSyn.  The images illustrate various types of vector graphics, such as charts, diagrams, and geometric shapes, demonstrating the system's ability to generate a wide range of visual styles and complexities.  Each image is accompanied by a question-answer pair, highlighting the suitability of CoSyn for instruction-tuning vision-language models (VLMs).
> <details>
> <summary>read the caption</summary>
> Figure 17: Randomly selected examples from our synthetic vector graphic data.
> </details>



![](https://arxiv.org/html/2502.14846/x19.png)

> 🔼 Figure 18 presents a small subset of the synthetic data generated by CoSyn for sheet music, circuits, and chemical structures.  It showcases CoSyn's ability to generate diverse and realistic images across a range of data modalities, including those containing highly structured visual elements. The examples illustrate the variety of visual styles and information density achievable through CoSyn's multi-modal generation process.
> <details>
> <summary>read the caption</summary>
> Figure 18: Randomly selected examples from our synthetic sheet music, circuits and chemical structures.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S6.T2.1">
<tr class="ltx_tr" id="S6.T2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T2.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.2.1">ChartQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.3.1">Average</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.4.1">Machine</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.5.1">Human</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\Delta\downarrow" class="ltx_Math" display="inline" id="S6.T2.1.1.1.m1.1"><semantics id="S6.T2.1.1.1.m1.1a"><mrow id="S6.T2.1.1.1.m1.1.1" xref="S6.T2.1.1.1.m1.1.1.cmml"><mi id="S6.T2.1.1.1.m1.1.1.2" mathvariant="normal" xref="S6.T2.1.1.1.m1.1.1.2.cmml">Δ</mi><mo id="S6.T2.1.1.1.m1.1.1.1" stretchy="false" xref="S6.T2.1.1.1.m1.1.1.1.cmml">↓</mo><mi id="S6.T2.1.1.1.m1.1.1.3" xref="S6.T2.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S6.T2.1.1.1.m1.1b"><apply id="S6.T2.1.1.1.m1.1.1.cmml" xref="S6.T2.1.1.1.m1.1.1"><ci id="S6.T2.1.1.1.m1.1.1.1.cmml" xref="S6.T2.1.1.1.m1.1.1.1">↓</ci><ci id="S6.T2.1.1.1.m1.1.1.2.cmml" xref="S6.T2.1.1.1.m1.1.1.2">Δ</ci><csymbol cd="latexml" id="S6.T2.1.1.1.m1.1.1.3.cmml" xref="S6.T2.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.1.1.1.m1.1c">\Delta\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.1.1.1.m1.1d">roman_Δ ↓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">PaliGemma-3B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">71.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">88.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">54.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">34.3</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.3">
<td class="ltx_td ltx_align_left" id="S6.T2.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">ChartPali-5B</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">77.3</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.3.3.1">93.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">60.9</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">32.8</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T2.1.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Ours (w/o Syn)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">81.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">92.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">70.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">21.8</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T2.1.5.1" style="background-color:#F2F2F2;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S6.T2.1.5.1.1" style="background-color:#F2F2F2;">Ours (w/ Syn)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.1.5.2" style="background-color:#F2F2F2;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.5.2.1" style="background-color:#F2F2F2;">86.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.1.5.3" style="background-color:#F2F2F2;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S6.T2.1.5.3.1" style="background-color:#F2F2F2;">93.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.1.5.4" style="background-color:#F2F2F2;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.5.4.1" style="background-color:#F2F2F2;">79.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.1.5.5" style="background-color:#F2F2F2;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.5.5.1" style="background-color:#F2F2F2;">14.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of various models on ChartQA, a question answering benchmark for charts.  It breaks down the results based on whether the questions were written by humans or generated by a machine.  The pie charts illustrate the proportion of human-written vs. machine-generated questions in both the training and testing sets of ChartQA. The 'Δ' column shows the performance difference between the model's accuracy on human-written vs. machine-generated questions, highlighting any potential bias or overfitting to specific question types. A lower Δ value is preferable, indicating less of a performance gap between the two question types.
> <details>
> <summary>read the caption</summary>
> Table 2: Results on human and machine-generated questions of ChartQA. The pie charts above display the percentage distribution of two question types in training and testing. ΔΔ\Deltaroman_Δ (↓↓\downarrow↓ lower is better) denotes the performance gap between human and machine questions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T3.1">
<tr class="ltx_tr" id="S6.T3.1.1">
<td class="ltx_td ltx_border_tt" id="S6.T3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S6.T3.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.2.1">Mobile</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S6.T3.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.3.1">Desktop</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S6.T3.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.4.1">Web</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.5.1">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.2">
<td class="ltx_td ltx_align_left" id="S6.T3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.2.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">Text</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">Icon</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">Text</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">Icon</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">Text</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">Icon</td>
<td class="ltx_td" id="S6.T3.1.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T3.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">20.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">24.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">21.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">23.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">12.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">7.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">18.3</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.4">
<td class="ltx_td ltx_align_left" id="S6.T3.1.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">CogAgent</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">67.0</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">24.0</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">74.2</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">70.4</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">28.6</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">47.4</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.5">
<td class="ltx_td ltx_align_left" id="S6.T3.1.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">SeeClick</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">78.0</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">52.0</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">72.2</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">30.0</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">55.7</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">32.5</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">53.4</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.6">
<td class="ltx_td ltx_align_left" id="S6.T3.1.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">UGround</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">82.8</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T3.1.6.3.1">60.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">82.5</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T3.1.6.5.1">63.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T3.1.6.6.1">80.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.6.7.1">70.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T3.1.6.8.1">73.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T3.1.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">Synthetic</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.7.2.1">90.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">53.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">78.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">58.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">47.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">68.0</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.8">
<td class="ltx_td ltx_align_left" id="S6.T3.1.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">Human</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">84.2</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">59.0</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.8.4.1">88.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">52.9</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">76.5</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">50.5</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">68.5</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T3.1.9.1" style="background-color:#F2F2F2;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S6.T3.1.9.1.1" style="background-color:#F2F2F2;">Combined</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.1.9.2" style="background-color:#F2F2F2;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T3.1.9.2.1" style="background-color:#F2F2F2;">89.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.1.9.3" style="background-color:#F2F2F2;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.9.3.1" style="background-color:#F2F2F2;">65.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.1.9.4" style="background-color:#F2F2F2;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T3.1.9.4.1" style="background-color:#F2F2F2;">87.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.1.9.5" style="background-color:#F2F2F2;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.9.5.1" style="background-color:#F2F2F2;">65.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.1.9.6" style="background-color:#F2F2F2;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.9.6.1" style="background-color:#F2F2F2;">83.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.1.9.7" style="background-color:#F2F2F2;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T3.1.9.7.1" style="background-color:#F2F2F2;">58.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.1.9.8" style="background-color:#F2F2F2;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.9.8.1" style="background-color:#F2F2F2;">74.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of click accuracy results on the ScreenSpot benchmark across various vision-language models (VLMs).  The models were trained using different types of pointing data: human-annotated data from the PixMo-point dataset (Deitke et al., 2024), synthetically generated pointing data created by the authors' method, and a combination of both human and synthetic data. The table shows the performance of each model across different interfaces (Mobile, Desktop, and Web), providing a comprehensive evaluation of VLM performance on pointing tasks using different data sources and modalities.
> <details>
> <summary>read the caption</summary>
> Table 3: Click accuracy on ScreenSpot. We report our models trained on different pointing data. Human stands for using the human-annotated data from PixMo-point Deitke et al. (2024). Combined means combining human-annotated data with our synthetic pointing data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T4.1">
<tr class="ltx_tr" id="A2.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T4.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.2.1">Image Diversity</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.3.1">Text Diversity</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.1.2.1">FigureQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.2.2">0.268</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.2.3">0.567</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.3">
<td class="ltx_td ltx_align_left" id="A2.T4.1.3.1">DVQA</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.3.2">0.307</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.3.3">0.752</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.4">
<td class="ltx_td ltx_align_left" id="A2.T4.1.4.1">PlotQA</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.4.2">0.420</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.4.3">0.743</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.5">
<td class="ltx_td ltx_align_left" id="A2.T4.1.5.1">ChartQA</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.5.2">0.340</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.5.3">0.742</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T4.1.6.1" style="background-color:#E6E6E6;"><span class="ltx_text" id="A2.T4.1.6.1.1" style="background-color:#E6E6E6;">Ours (Charts)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.6.2" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.6.2.1" style="background-color:#E6E6E6;">0.596</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.6.3" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.6.3.1" style="background-color:#E6E6E6;">0.823</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of image and text diversity across various chart datasets.  It utilizes two metrics: image diversity and text diversity, calculated using cosine similarity to measure the pairwise distance between image and text embeddings, respectively.  The results show the relative diversity of images and text within each dataset, highlighting the differences in data composition and variability between datasets used in vision-language model training. The 10,000 samples randomly chosen from each dataset allow for a fair comparison while controlling for the impact of dataset size.
> <details>
> <summary>read the caption</summary>
> Table 4: Compare image and text diversity across different chart datasets. We randomly sample 10K instances from each dataset to compute the results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T5.1">
<tr class="ltx_tr" id="A2.T5.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T5.1.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.1.1">n. of Tools</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.1.1.2" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.2.1">Diversity</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A2.T5.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.3.1">ChartQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Average</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">Machine</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">Human</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">Single</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.572</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">73.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">66.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">81.5</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T5.1.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Multiple</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.1.4.2.1">0.607</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.1.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.1.4.3.1">75.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.1.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.1.4.4.1">68.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.1.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.1.4.5.1">82.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of models trained on synthetic chart data generated using either a single rendering tool (Matplotlib) or multiple tools (Matplotlib, HTML, LaTeX, Plotly, and VegaLite).  Each experimental condition used 45,000 synthetic images. The results demonstrate the impact of tool diversity on model performance, highlighting the benefit of using multiple rendering tools for generating more diverse and realistic synthetic data.
> <details>
> <summary>read the caption</summary>
> Table 5: Single vs. Multiple Rendering Tools for Data Generation. Each row uses the same number of 45K synthetic images. Single only uses Matplotlib, while Multiple involves four other rendering tools: HTML, LaTex, Plotly, and VegaLite.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T6.1">
<tr class="ltx_tr" id="A2.T6.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T6.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1">Prompt Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.2.1">ChartQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.3.1">DocVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.4.1">InfoVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.5"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.5.1">TableVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.6"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.6.1">AI2D</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.7"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.7.1">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.8"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.8.1">ScreenQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.9"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.9.1">NutritionQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.2.1">CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.2.2"><span class="ltx_text ltx_font_bold" id="A2.T6.1.2.2.1">86.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.2.3">87.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.2.4">63.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.2.5"><span class="ltx_text ltx_font_bold" id="A2.T6.1.2.5.1">65.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.2.6">86.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.2.7">70.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.2.8">79.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.2.9"><span class="ltx_text ltx_font_bold" id="A2.T6.1.2.9.1">76.0</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.1.3.1">Short Answer</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.3.2">83.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.3.3"><span class="ltx_text ltx_font_bold" id="A2.T6.1.3.3.1">90.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.3.4"><span class="ltx_text ltx_font_bold" id="A2.T6.1.3.4.1">70.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.3.5">64.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.3.6"><span class="ltx_text ltx_font_bold" id="A2.T6.1.3.6.1">91.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.3.7"><span class="ltx_text ltx_font_bold" id="A2.T6.1.3.7.1">82.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.3.8"><span class="ltx_text ltx_font_bold" id="A2.T6.1.3.8.1">80.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.3.9">62.0</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing the performance of a vision-language model when prompted using two different reasoning styles: Chain-of-Thought (CoT) and Short Answer.  The CoT prompting style guides the model to provide a step-by-step reasoning process before giving the final answer, while the Short Answer style prompts the model for a concise, direct answer. The table shows the performance of the model on seven different benchmark datasets (ChartQA, DocVQA, InfoVQA, TableVQA, AI2D, TextVQA, ScreenQA, and NutritionQA), highlighting how each prompting method impacts its ability to answer different types of questions.
> <details>
> <summary>read the caption</summary>
> Table 6: Alation of using chain-of-thought (CoT) in prompts. CoT means letting the model provide reasoning steps before giving the final answer. Short Answer prompts the model to answer with as few words as possible.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T7.5">
<tr class="ltx_tr" id="A2.T7.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T7.2.2.3"><span class="ltx_text ltx_font_bold" id="A2.T7.2.2.3.1">FT Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.2.2.4"><span class="ltx_text ltx_font_bold" id="A2.T7.2.2.4.1">ChartQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.2.2.5"><span class="ltx_text ltx_font_bold" id="A2.T7.2.2.5.1">DocVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.2.2.6"><span class="ltx_text ltx_font_bold" id="A2.T7.2.2.6.1">InfoVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1">TableVQA<sup class="ltx_sup" id="A2.T7.1.1.1.1.1"><span class="ltx_text ltx_font_medium" id="A2.T7.1.1.1.1.1.1">†</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.2.2.7"><span class="ltx_text ltx_font_bold" id="A2.T7.2.2.7.1">AI2D</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.2.2.8"><span class="ltx_text ltx_font_bold" id="A2.T7.2.2.8.1">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.2.2.2"><span class="ltx_text ltx_font_bold" id="A2.T7.2.2.2.1">ScreenQA<sup class="ltx_sup" id="A2.T7.2.2.2.1.1"><span class="ltx_text ltx_font_medium" id="A2.T7.2.2.2.1.1.1">†</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.2.2.9"><span class="ltx_text ltx_font_bold" id="A2.T7.2.2.9.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T7.3.3.1">Aux only<sup class="ltx_sup" id="A2.T7.3.3.1.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.3.3.2">60.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.3.3.3">56.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.3.3.4">39.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.3.3.5">43.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.3.3.6">81.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.3.3.7">68.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.3.3.8">61.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.3.3.9">58.7</td>
</tr>
<tr class="ltx_tr" id="A2.T7.4.4">
<td class="ltx_td ltx_align_left" id="A2.T7.4.4.1">Syn only<sup class="ltx_sup" id="A2.T7.4.4.1.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center" id="A2.T7.4.4.2">79.4</td>
<td class="ltx_td ltx_align_center" id="A2.T7.4.4.3">80.5</td>
<td class="ltx_td ltx_align_center" id="A2.T7.4.4.4">60.1</td>
<td class="ltx_td ltx_align_center" id="A2.T7.4.4.5">64.4</td>
<td class="ltx_td ltx_align_center" id="A2.T7.4.4.6">68.6</td>
<td class="ltx_td ltx_align_center" id="A2.T7.4.4.7">63.6</td>
<td class="ltx_td ltx_align_center" id="A2.T7.4.4.8">76.6</td>
<td class="ltx_td ltx_align_center" id="A2.T7.4.4.9">70.5</td>
</tr>
<tr class="ltx_tr" id="A2.T7.5.5">
<td class="ltx_td ltx_align_left" id="A2.T7.5.5.1">Aux + Syn<sup class="ltx_sup" id="A2.T7.5.5.1.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.5.2">80.8</td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.5.3">82.9</td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.5.4">59.8</td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.5.5">64.9</td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.5.6">83.9</td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.5.7">72.7</td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.5.8">78.1</td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.5.9">74.7</td>
</tr>
<tr class="ltx_tr" id="A2.T7.5.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T7.5.6.1">Eval only</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.6.2">77.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.6.3">87.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.6.4">63.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.6.5">51.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.6.6">91.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.6.7">81.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.6.8">78.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.6.9">75.9</td>
</tr>
<tr class="ltx_tr" id="A2.T7.5.7">
<td class="ltx_td ltx_align_left" id="A2.T7.5.7.1">Eval + Aux</td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.7.2">81.4</td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.7.3">87.9</td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.7.4">68.2</td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.7.5">53.6</td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.7.6">91.6</td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.7.7">81.8</td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.7.8">77.0</td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.7.9">77.3</td>
</tr>
<tr class="ltx_tr" id="A2.T7.5.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T7.5.8.1">Eval + Aux + Syn</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.8.2"><span class="ltx_text ltx_font_bold" id="A2.T7.5.8.2.1">86.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.8.3"><span class="ltx_text ltx_font_bold" id="A2.T7.5.8.3.1">90.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.8.4"><span class="ltx_text ltx_font_bold" id="A2.T7.5.8.4.1">70.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.8.5"><span class="ltx_text ltx_font_bold" id="A2.T7.5.8.5.1">65.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.8.6"><span class="ltx_text ltx_font_bold" id="A2.T7.5.8.6.1">91.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.8.7"><span class="ltx_text ltx_font_bold" id="A2.T7.5.8.7.1">82.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.8.8"><span class="ltx_text ltx_font_bold" id="A2.T7.5.8.8.1">80.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.8.9"><span class="ltx_text ltx_font_bold" id="A2.T7.5.8.9.1">80.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the selection of training datasets for supervised fine-tuning of vision-language models. It compares the performance of models trained using different combinations of three types of datasets: auxiliary datasets (general multimodal data), synthetic datasets generated using CoSyn, and evaluation datasets (text-rich image datasets used for benchmarking).  The results show the impact of each data type on the model's performance across several text-rich benchmarks.  Zero-shot results are also included, representing performance without using any training examples from the evaluation datasets. Some evaluation datasets have only test splits, meaning performance there is inherently zero-shot.
> <details>
> <summary>read the caption</summary>
> Table 7: Alation of the data selection for supervised fine-tuning. Aux, Syn, and Eval stand for auxiliary, synthetic, and evaluation datasets, respectively. The rows with ∗ represent zero-shot models (without using any training examples from any of the evaluation datasets). The datasets with † are test-only datasets (no training splits), which means all numbers on these datasets are zero-shot performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T8.1">
<tr class="ltx_tr" id="A2.T8.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T8.1.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1">LLM for Data Generation</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A2.T8.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.2.1">ChartQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Average</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">Machine</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">Human</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">72.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">65.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">78.9</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T8.1.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Claude-3.5-sonnet</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.4.2.1">77.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.4.3.1">71.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.4.4.1">83.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of two different large language models (LLMs), GPT-40 and Claude-3.5-sonnet, in generating synthetic chart data for training vision-language models (VLMs).  For each LLM, 100,000 synthetic charts were created and used for zero-shot fine-tuning of VLMs. The table shows the resulting zero-shot performance on the ChartQA benchmark, allowing for a direct comparison of the quality of synthetic data produced by each LLM.
> <details>
> <summary>read the caption</summary>
> Table 8: Compare the LLMs used for synthetic data generation. For both LLMs, we create 100K synthetic charts for fine-tuning the VLMs. We report the zero-shot evaluation results on ChartQA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T9.1">
<tr class="ltx_tr" id="A2.T9.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T9.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.2.1">Pointing Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.3.1">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.4.1">Recall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.5.1">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.1.1">Distance <math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T9.1.1.1.1.m1.1"><semantics id="A2.T9.1.1.1.1.m1.1a"><mo id="A2.T9.1.1.1.1.m1.1.1" stretchy="false" xref="A2.T9.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T9.1.1.1.1.m1.1b"><ci id="A2.T9.1.1.1.1.m1.1.1.cmml" xref="A2.T9.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T9.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T9.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">PixMo-point</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">49.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">49.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">52.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">17.3</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">Synthetic (Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">63.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">66.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">62.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">9.2</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T9.1.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Combined (Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.4.2.1">69.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.4.3.1">70.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.4.4.1">70.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.4.5.1">8.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of zero-shot performance on the DocPointQA benchmark across different models trained on various pointing datasets.  Specifically, it shows the precision, recall, F1-score, and L2 distance (a lower value indicates better performance) achieved by models trained solely on the PixMo-point dataset (human-annotated data), solely on the synthetic pointing data generated by the authors' method, and on a combination of both datasets. This analysis helps demonstrate the effectiveness of the synthetic data in enhancing the performance of vision-language models on pointing tasks.
> <details>
> <summary>read the caption</summary>
> Table 9: Zero-shot Pointing on DocPointQA. We compare the models trained on different pointing data. Combined stands for combining PixMo-point (human-annotated) Deitke et al. (2024) with our synthetic data.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.14846/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14846/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}