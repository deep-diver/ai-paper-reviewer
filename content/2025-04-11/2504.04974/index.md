---
title: "Towards Visual Text Grounding of Multimodal Large Language Model"
summary: "TRIG: MLLMs get grounded in text-rich documents!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 University of Maryland",]
showSummary: true
date: 2025-04-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.04974 {{< /keyword >}}
{{< keyword icon="writer" >}} Ming Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.04974" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.04974" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.04974/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

MLLMs struggle with visual text grounding, especially in text-rich document images due to complex layouts. Existing benchmarks focus on natural images, not document images. To address this, the paper introduces Text-Rich Image Grounding (**TRIG**), a novel task and instruction dataset for benchmarking and improving text-rich image grounding capabilities of MLLMs. The dataset consists of manually annotated question-answer pairs and synthetic data based on diverse datasets. 



The paper proposes an OCR-LLM-human interaction pipeline to create the dataset and exposes the limitations of current MLLMs on text-rich images. Additionally, two methods, instruction tuning and plug-and-play efficient embedding, are proposed. **By finetuning MLLMs on the synthetic dataset, they improved spatial reasoning and grounding capabilities.** The dataset and benchmark provide a standardized framework for evaluating MLLMs in this domain.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} TRIG-Bench: a novel benchmark for evaluating text-rich image grounding in MLLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Instruction tuning and efficient embedding methods improve grounding capabilities on text-rich images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Existing MLLMs have limitations in grounding capability on text-rich images, needing specific training. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it introduces **TRIG-Bench**, a novel benchmark to evaluate MLLMs' text grounding in documents, filling a critical gap in the research. It also propose  methods based on instruction tuning and efficient embedding, **providing baseline performances and more insight into document grounding**.

------
#### Visual Insights



![](https://arxiv.org/html/2504.04974/extracted/6341787/figures/example3_cut.png)

> 🔼 Figure 1 presents an example from the InfographicsVQA dataset, illustrating the task of visual text grounding.  The image shows an infographic about social media platforms. A question is posed: 'What is the resource and expertise level needed for Pinterest?' The correct answer is 'high.'  The figure demonstrates the expected output from a multimodal large language model (MLLM): not only the answer itself, but also the identification of the relevant section within the infographic (via bounding boxes) that supports the answer. This highlights the challenge of requiring models to integrate visual and textual information for precise and accurate responses, demanding sophisticated spatial understanding and reasoning abilities. 
> <details>
> <summary>read the caption</summary>
> Figure 1: An example from InfographicsVQA. Question: What is the resource and expertise level needed for Pinterest? Answer: high. The LLM is expected to generate the answer together with the corresponding grounded bounding boxes that can support its answer, which requires deeper spatial understanding and reasoning and sometimes instruction-following abilities.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T1.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T1.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.1.1" style="font-size:90%;">Testsets</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.2.1" style="font-size:90%;">Chart</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.3.1" style="font-size:90%;">Doc</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.4.1" style="font-size:90%;">Info</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.5.1" style="font-size:90%;">Trins</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.6.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.2.1.2.2.1">
<span class="ltx_text ltx_font_bold" id="S5.T1.2.1.2.2.1.1" style="font-size:90%;">Metrics</span><span class="ltx_text" id="S5.T1.2.1.2.2.1.2" style="font-size:90%;"> (%)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.2.2.2.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.2.2.3.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.2.2.4.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.2.2.5.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.2.2.6.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.2.1.3.3.1"><span class="ltx_text" id="S5.T1.2.1.3.3.1.1" style="font-size:90%;">LLaVA-v1.6-Vicuna-13B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.1.3.3.2"><span class="ltx_text" id="S5.T1.2.1.3.3.2.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.1.3.3.3"><span class="ltx_text" id="S5.T1.2.1.3.3.3.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.1.3.3.4"><span class="ltx_text" id="S5.T1.2.1.3.3.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.1.3.3.5"><span class="ltx_text" id="S5.T1.2.1.3.3.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.3.3.6"><span class="ltx_text" id="S5.T1.2.1.3.3.6.1" style="font-size:90%;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.2.1.4.4.1"><span class="ltx_text" id="S5.T1.2.1.4.4.1.1" style="font-size:90%;">LLaVA-v1.6-Vicuna-7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.4.4.2"><span class="ltx_text" id="S5.T1.2.1.4.4.2.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.4.4.3"><span class="ltx_text" id="S5.T1.2.1.4.4.3.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.4.4.4"><span class="ltx_text" id="S5.T1.2.1.4.4.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.4.4.5"><span class="ltx_text" id="S5.T1.2.1.4.4.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.4.4.6"><span class="ltx_text" id="S5.T1.2.1.4.4.6.1" style="font-size:90%;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.2.1.5.5.1"><span class="ltx_text" id="S5.T1.2.1.5.5.1.1" style="font-size:90%;">Phi3-V</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.5.5.2"><span class="ltx_text" id="S5.T1.2.1.5.5.2.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.5.5.3"><span class="ltx_text" id="S5.T1.2.1.5.5.3.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.5.5.4"><span class="ltx_text" id="S5.T1.2.1.5.5.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.5.5.5"><span class="ltx_text" id="S5.T1.2.1.5.5.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.6"><span class="ltx_text" id="S5.T1.2.1.5.5.6.1" style="font-size:90%;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.2.1.6.6.1"><span class="ltx_text" id="S5.T1.2.1.6.6.1.1" style="font-size:90%;">DeepSeek-VL-7B-chat</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.6.6.2"><span class="ltx_text" id="S5.T1.2.1.6.6.2.1" style="font-size:90%;">0.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.6.6.3"><span class="ltx_text" id="S5.T1.2.1.6.6.3.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.6.6.4"><span class="ltx_text" id="S5.T1.2.1.6.6.4.1" style="font-size:90%;">0.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.6.6.5"><span class="ltx_text" id="S5.T1.2.1.6.6.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.6"><span class="ltx_text" id="S5.T1.2.1.6.6.6.1" style="font-size:90%;">0.02</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.2.1.7.7.1"><span class="ltx_text" id="S5.T1.2.1.7.7.1.1" style="font-size:90%;">Idefics2-8B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.7.7.2"><span class="ltx_text" id="S5.T1.2.1.7.7.2.1" style="font-size:90%;">0.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.7.7.3"><span class="ltx_text" id="S5.T1.2.1.7.7.3.1" style="font-size:90%;">0.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.7.7.4"><span class="ltx_text" id="S5.T1.2.1.7.7.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.7.7.5"><span class="ltx_text" id="S5.T1.2.1.7.7.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.6"><span class="ltx_text" id="S5.T1.2.1.7.7.6.1" style="font-size:90%;">0.06</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.2.1.8.8.1"><span class="ltx_text" id="S5.T1.2.1.8.8.1.1" style="font-size:90%;">Qwen-VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.8.8.2"><span class="ltx_text" id="S5.T1.2.1.8.8.2.1" style="font-size:90%;">0.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.8.8.3"><span class="ltx_text" id="S5.T1.2.1.8.8.3.1" style="font-size:90%;">0.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.8.8.4"><span class="ltx_text" id="S5.T1.2.1.8.8.4.1" style="font-size:90%;">0.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.8.8.5"><span class="ltx_text" id="S5.T1.2.1.8.8.5.1" style="font-size:90%;">0.23</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.8.8.6"><span class="ltx_text" id="S5.T1.2.1.8.8.6.1" style="font-size:90%;">0.22</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.2.1.9.9.1"><span class="ltx_text" id="S5.T1.2.1.9.9.1.1" style="font-size:90%;">CogVLM2-Llama3-19B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.9.9.2"><span class="ltx_text" id="S5.T1.2.1.9.9.2.1" style="font-size:90%;">0.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.9.9.3"><span class="ltx_text" id="S5.T1.2.1.9.9.3.1" style="font-size:90%;">0.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.9.9.4"><span class="ltx_text" id="S5.T1.2.1.9.9.4.1" style="font-size:90%;">0.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.9.9.5"><span class="ltx_text" id="S5.T1.2.1.9.9.5.1" style="font-size:90%;">0.66</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.9.9.6"><span class="ltx_text" id="S5.T1.2.1.9.9.6.1" style="font-size:90%;">0.25</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.2.1.10.10.1"><span class="ltx_text" id="S5.T1.2.1.10.10.1.1" style="font-size:90%;">InternLM-XComposer2-VL-7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.10.10.2"><span class="ltx_text" id="S5.T1.2.1.10.10.2.1" style="font-size:90%;">0.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.10.10.3"><span class="ltx_text" id="S5.T1.2.1.10.10.3.1" style="font-size:90%;">0.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.10.10.4"><span class="ltx_text" id="S5.T1.2.1.10.10.4.1" style="font-size:90%;">0.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.10.10.5"><span class="ltx_text" id="S5.T1.2.1.10.10.5.1" style="font-size:90%;">0.57</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.6"><span class="ltx_text" id="S5.T1.2.1.10.10.6.1" style="font-size:90%;">0.26</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.2.1.11.11.1"><span class="ltx_text" id="S5.T1.2.1.11.11.1.1" style="font-size:90%;">Monkey-Chat</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.11.11.2"><span class="ltx_text" id="S5.T1.2.1.11.11.2.1" style="font-size:90%;">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.11.11.3"><span class="ltx_text" id="S5.T1.2.1.11.11.3.1" style="font-size:90%;">0.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.11.11.4"><span class="ltx_text" id="S5.T1.2.1.11.11.4.1" style="font-size:90%;">0.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.11.11.5"><span class="ltx_text" id="S5.T1.2.1.11.11.5.1" style="font-size:90%;">0.45</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.6"><span class="ltx_text" id="S5.T1.2.1.11.11.6.1" style="font-size:90%;">0.39</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.2.1.12.12.1"><span class="ltx_text" id="S5.T1.2.1.12.12.1.1" style="font-size:90%;">InternLM-XComposer2-4KHD-7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.12.12.2"><span class="ltx_text" id="S5.T1.2.1.12.12.2.1" style="font-size:90%;">1.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.12.12.3"><span class="ltx_text" id="S5.T1.2.1.12.12.3.1" style="font-size:90%;">0.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.12.12.4"><span class="ltx_text" id="S5.T1.2.1.12.12.4.1" style="font-size:90%;">0.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.12.12.5"><span class="ltx_text" id="S5.T1.2.1.12.12.5.1" style="font-size:90%;">0.14</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.6"><span class="ltx_text" id="S5.T1.2.1.12.12.6.1" style="font-size:90%;">0.55</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.2.1.13.13.1"><span class="ltx_text" id="S5.T1.2.1.13.13.1.1" style="font-size:90%;">MiniCPM-Llama3-V 2.5</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.13.13.2"><span class="ltx_text" id="S5.T1.2.1.13.13.2.1" style="font-size:90%;">0.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.13.13.3"><span class="ltx_text" id="S5.T1.2.1.13.13.3.1" style="font-size:90%;">1.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.13.13.4"><span class="ltx_text" id="S5.T1.2.1.13.13.4.1" style="font-size:90%;">0.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.13.13.5"><span class="ltx_text" id="S5.T1.2.1.13.13.5.1" style="font-size:90%;">4.96</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.13.13.6"><span class="ltx_text" id="S5.T1.2.1.13.13.6.1" style="font-size:90%;">1.86</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.2.1.14.14.1"><span class="ltx_text" id="S5.T1.2.1.14.14.1.1" style="font-size:90%;">GPT-4o</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.1.14.14.2"><span class="ltx_text" id="S5.T1.2.1.14.14.2.1" style="font-size:90%;">3.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.1.14.14.3"><span class="ltx_text" id="S5.T1.2.1.14.14.3.1" style="font-size:90%;">1.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.1.14.14.4"><span class="ltx_text" id="S5.T1.2.1.14.14.4.1" style="font-size:90%;">1.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.1.14.14.5"><span class="ltx_text" id="S5.T1.2.1.14.14.5.1" style="font-size:90%;">13.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.14.14.6"><span class="ltx_text" id="S5.T1.2.1.14.14.6.1" style="font-size:90%;">5.26</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.2.1.15.15.1"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.15.15.1.1" style="font-size:90%;">Ours (Embedding)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.15.15.2"><span class="ltx_text" id="S5.T1.2.1.15.15.2.1" style="font-size:90%;">10.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.15.15.3"><span class="ltx_text" id="S5.T1.2.1.15.15.3.1" style="font-size:90%;">15.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.15.15.4"><span class="ltx_text" id="S5.T1.2.1.15.15.4.1" style="font-size:90%;">7.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.1.15.15.5"><span class="ltx_text" id="S5.T1.2.1.15.15.5.1" style="font-size:90%;">13.88</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.15.15.6"><span class="ltx_text" id="S5.T1.2.1.15.15.6.1" style="font-size:90%;">11.82</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T1.2.1.16.16.1"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.16.16.1.1" style="font-size:90%;">Ours (Instruction)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.2.1.16.16.2"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.16.16.2.1" style="font-size:90%;">27.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.2.1.16.16.3"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.16.16.3.1" style="font-size:90%;">23.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.2.1.16.16.4"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.16.16.4.1" style="font-size:90%;">8.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.2.1.16.16.5"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.16.16.5.1" style="font-size:90%;">59.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.2.1.16.16.6"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.16.16.6.1" style="font-size:90%;">29.98</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents the results of the OCR-free Grounding experiment, a challenging evaluation setting where models must generate both answers and corresponding bounding boxes for text-rich document images without the aid of pre-extracted OCR data.  The table evaluates various Multimodal Large Language Models (MLLMs) across four different datasets: ChartQA, DocVQA, InfographicsVQA, and TRINS, each representing a unique type of document image. The performance metric used is pixel-level Intersection over Union (IoU), measuring the overlap between predicted and ground truth bounding boxes. For each MLLM, the table shows individual IoU scores for each dataset and an average IoU score across all four datasets.  The models are ranked based on their average IoU scores, providing a clear comparison of their visual text grounding capabilities in this demanding scenario.
> <details>
> <summary>read the caption</summary>
> Table 1: OCR-free Grounding. Chart, Doc, Info, and Trins represent evaluation results on ChatQA, DocVQA, InfographicsVQA, and TRINS datasets, respectively. IoU represents the pixel-level IoU scores. Avg represents the average IoU score on the 4 datasets, and the ordering of each model is decided by this average score.
> </details>





### In-depth insights


#### TRIG:Text Ground
**TRIG, or Text-Rich Image Grounding**, addresses the under-explored area of grounding in text-rich QA tasks. It involves constructing an instruction dataset, benchmark, and evaluation protocols. The objective is for MLLMs to generate bounding boxes that support answers to questions about text-rich documents. **A key aim is to evaluate and improve MLLMs' ability to connect textual content with visual elements in documents** which is more complex than visual grounding. TRIG focuses on visual texts within documents as the main grounding target, acknowledging the advancement and efficiency of modern OCR models and promising reasoning of current LLMs.

#### MLLM vs. Humans
While not explicitly covered, comparing MLLMs to humans in visual text grounding reveals insightful nuances. **Humans excel at contextual understanding**, leveraging real-world knowledge to interpret text within images, a skill MLLMs struggle with due to limitations in reasoning and spatial awareness. However, MLLMs offer advantages in **processing speed and consistency**, efficiently analyzing large document sets without fatigue or bias, unlike humans. MLLMs can enhance human capabilities by automating initial grounding passes, **flagging key areas** for human review. Effective models could provide users with accurate grounded bounding boxes and accelerate reliance on AI.

#### Instruction Foll.
**Instruction following is crucial for MLLMs**, determining their ability to execute tasks as instructed. A high instruction-following rate, even with low grounding accuracy, indicates the model understood the task but lacked spatial reasoning. Conversely, low instruction following signifies a fundamental inability to parse and adhere to instructions. **GPT-4o excels in instruction following**, while open-source models often falter. Evaluation setting difficulty doesn't always correlate with instruction following, highlighting the nuances of model behavior. Robustness is key; useful information can sometimes hinder instruction-following ability. Overall, instruction following is a distinct capability from spatial understanding and crucial for reliable MLLM performance.

#### Text-Rich Images
Text-rich images, such as scanned documents, infographics, and web pages, present unique challenges for multimodal models. **The density and spatial arrangement of text** within these images require models to possess strong OCR capabilities and spatial reasoning skills to accurately ground information. Unlike natural images where objects are distinct, text in these images are often densely packed, requiring models to **discern the relevant textual components**. Furthermore, the semantic relationships between different text elements, such as headings, paragraphs, and captions, are crucial for understanding the overall context of the image. Models must also be robust to variations in font, size, and orientation of the text. **Advancements in visual text grounding** are essential for enabling effective document understanding, information retrieval, and question answering on text-rich images.

#### OCR Interactive
OCR, or Optical Character Recognition, is pivotal for multimodal document understanding. An interactive OCR system implies a dynamic process where user feedback or real-time adjustments enhance the accuracy of text extraction. **Such systems might allow users to correct OCR errors**, define regions of interest, or specify language models to improve recognition. An interactive OCR approach bridges the gap between raw text extraction and meaningful content understanding, especially valuable for complex layouts, historical documents, or low-quality images. **This interaction fosters a more reliable foundation for subsequent NLP tasks**, such as question answering, text summarization, and information retrieval.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.04974/extracted/6341787/figures/sample.png)

> 🔼 This figure shows examples of text-rich document images from four different datasets used in the paper: DocVQA, ChartQA, InfographicsVQA, and TRINS.  Each dataset presents unique challenges for visual text grounding due to variations in layout complexity, text density, and image content. The images highlight the diversity of document types and the need for robust models capable of handling the complexities inherent in visual text grounding.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Text-rich document image examples from different source datasets.
> </details>



![](https://arxiv.org/html/2504.04974/extracted/6341787/figures/main_figure.png)

> 🔼 This figure illustrates the four-step pipeline used to create the benchmark and training datasets.  First, the document images undergo preprocessing using PaddleOCR for OCR information extraction. Second, this OCR information is used with the question and answer to generate bounding boxes that support the answer.  Third, a correction step uses an LLM to refine the accuracy of the generated bounding boxes. Finally, human evaluation is performed to ensure high quality before inclusion in the benchmark dataset.  The training data only goes through the first three steps. 
> <details>
> <summary>read the caption</summary>
> Figure 3:  Main Constriction Pipeline. The pipeline contains 4 steps: Preprocessing, Generation, Correction, and Human Evaluation. The benchmark data will go through all of these 4 steps, and the training data will go through the previous 3 steps.
> </details>



![](https://arxiv.org/html/2504.04974/extracted/6341787/figures/embedding_illustrate.png)

> 🔼 Figure 4 illustrates the Embedding-Based Method proposed in the paper.  It uses an example from the ChartQA dataset, where the question is whether the percentage value of the 'STEM' segment is 52%, and the answer is yes. The figure visually compares ground-truth bounding boxes (left, green) with the model's predicted grounding patches (right, red). The process begins by dividing the input image into 32x32 patches. These patches are then fed into a Multimodal Large Language Model (MLLM) to generate image patch embeddings.  These embeddings, along with text token embeddings, are used to compute a similarity vector, the length of which corresponds to the number of image patches.  Higher similarity scores indicate better alignment between image and text; the corresponding patches are selected as the grounding regions. Note:  The figure simplifies the process by omitting details like embedding merging and the two-level selection mechanism.
> <details>
> <summary>read the caption</summary>
> Figure 4:  The illustrative pipeline of our Embedding-Based Method. The example is from ChartQA. Question: Is the percentage value of “STEM” segment 52? Answer: Yes. The visualization of ground-truth bounding boxes is presented on the left in green, and the visualization of the generated grounding area (patches) by our embedding-based method is presented on the right in red. The input image will be processed into 32×32323232\times 3232 × 32 patches before sending it into the MLLM and obtaining the image patch embeddings. After obtaining both the image patch embeddings and text token embeddings, a similarity vector with the length of the number of image patches is generated. The higher scores represent the alignment between image and text, whose position will be selected as the grounding patches. For simplicity, the embedding merge and 2-level selection mechanisms are not presented in this figure.
> </details>



![](https://arxiv.org/html/2504.04974/extracted/6341787/figures/eval.png)

> 🔼 Figure 5 illustrates the three different evaluation settings used in the paper. Setting 1 is the most challenging, as it requires the model to generate bounding boxes without any OCR data.  The model must perform both visual and textual grounding from scratch. Settings 2 and 3 are simpler, providing OCR data to aid in bounding box generation or selection. The instructions given in the prompt specify the expected format for the bounding boxes, guiding the model to produce results in the desired format.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Illustrations on Evaluation Settings. In evaluation setting 1, no OCR model is used, representing the hardest scenario. While in settings 2 & 3, an additional OCR model is utilized to facilitate LLM on grounding information generation. The “Instruction” in the prompt describes the requirement of generating grounded bounding boxes and defines the desired format.
> </details>



![](https://arxiv.org/html/2504.04974/extracted/6341787/figures/ablation_detailed.png)

> 🔼 This figure visualizes the results of ablation studies conducted on the embedding-based method used for OCR-free grounding.  The experiments systematically varied the number of image patches used in the grounding process. The key finding is that employing a two-level selection mechanism prevents performance degradation when an increased number of patches are included. The two-level approach selects top-performing patches and then incrementally adds neighboring patches only if they enhance the results, making the overall performance more stable and, ultimately, better.
> <details>
> <summary>read the caption</summary>
> Figure 6:  The visualization of detailed ablation studies of our embedding-based method on OCR-free grounding setting for the 2-level selection mechanism. The utilization of the 2-level selection mechanism avoids the performance decline when more patches are selected, making the performances more stable and getting better performances.
> </details>



![](https://arxiv.org/html/2504.04974/extracted/6341787/figures/evaluation_prompt.png)

> 🔼 Figure 7 displays the prompt used to instruct GPT-4 to generate the bounding boxes supporting the answer to a question. The prompt provides the question and answer, along with information about the image, including sentence-level bounding boxes and their indices. It requests that GPT-4 identify the indices of the bounding boxes that support the answer and provide a rationale for its choices.
> <details>
> <summary>read the caption</summary>
> Figure 7:  The prompt we used to request GPT4o to generate the grounded bounding boxes that support the answer to the question.
> </details>



![](https://arxiv.org/html/2504.04974/extracted/6341787/figures/example_chart.png)

> 🔼 Figure 8 shows the prompt used to evaluate the bounding boxes generated by the model in the previous step.  Specifically, it provides instructions for GPT-4 to act as an assistant in analyzing the previously generated bounding boxes.  The prompt includes the question, answer, and the list of indexes with corresponding text for the bounding boxes.  GPT-4 is then asked to determine if the provided bounding boxes accurately and sufficiently support the answer to the question, outputting either 'YES' or 'NO' followed by a justification.
> <details>
> <summary>read the caption</summary>
> Figure 8:  The prompt we used to request GPT4o to evaluate the grounded bounding boxes generated in the previous step.
> </details>



![](https://arxiv.org/html/2504.04974/extracted/6341787/figures/example_doc.png)

> 🔼 Figure 9 shows the different prompts used for evaluating the three visual grounding settings in the paper.  Each setting has three variations of the prompt, differing in how the model is instructed to provide the bounding boxes (using CSS, a simple list format, or relative coordinates).  The prompts are designed to evaluate the model's ability to perform visual grounding at different levels of difficulty and with varied output formats.
> <details>
> <summary>read the caption</summary>
> Figure 9:  The evaluation prompts for different evaluation settings.
> </details>



![](https://arxiv.org/html/2504.04974/extracted/6341787/figures/example_info.png)

> 🔼 Figure 10 presents four example questions and answers from the ChartQA dataset. Each example displays a chart followed by a question about the chart's data. The answers are accompanied by bounding boxes highlighting the relevant parts of the chart that support the answer. These examples showcase the complexity and variety of visual text grounding in document images.  The bounding boxes are already drawn on the images to show the exact parts that correspond to the answers.
> <details>
> <summary>read the caption</summary>
> Figure 10:  Benchmark data examples from ChatQA. The grounded bounding boxes have already been visualized in the original image for better illustration.
> </details>



![](https://arxiv.org/html/2504.04974/extracted/6341787/figures/example_trins.png)

> 🔼 Figure 11 presents example data from the DocVQA dataset, which is used to evaluate visual text grounding in text-rich documents.  The figure showcases several diverse document images, each with a question and answer pair, highlighting the challenge of accurately identifying and localizing the specific regions within the image that provide support for the answer.  Bounding boxes are overlaid onto the images to visually indicate the ground truth locations relevant to the corresponding answers. This is to improve understanding of the task and demonstrate the complexity of visual text grounding in such document images.
> <details>
> <summary>read the caption</summary>
> Figure 11:  Benchmark data examples from DocVQA. The grounded bounding boxes have already been visualized in the original image for better illustration.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.1.1.1" style="font-size:90%;">Testsets</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S5.T2.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.1.2.1" style="font-size:90%;">ChartQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S5.T2.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.1.3.1" style="font-size:90%;">DocVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S5.T2.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.1.4.1" style="font-size:90%;">InfographicsVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S5.T2.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.1.5.1" style="font-size:90%;">TRINS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.1.6.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.1">
<span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.1.1" style="font-size:90%;">Metrics</span><span class="ltx_text" id="S5.T2.2.1.2.2.1.2" style="font-size:90%;"> (%)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.2.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.3.1" style="font-size:90%;">P</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.4.1" style="font-size:90%;">R</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.5.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.6.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.7.1" style="font-size:90%;">P</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.8"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.8.1" style="font-size:90%;">R</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.9"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.9.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.10"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.10.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.11"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.11.1" style="font-size:90%;">P</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.12"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.12.1" style="font-size:90%;">R</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.13"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.13.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.14"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.14.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.15"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.15.1" style="font-size:90%;">P</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.16"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.16.1" style="font-size:90%;">R</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.2.2.17"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.17.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.2.2.18"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.2.18.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.1"><span class="ltx_text" id="S5.T2.2.1.3.3.1.1" style="font-size:90%;">LLaVA-v1.6-Vicuna-13B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.2"><span class="ltx_text" id="S5.T2.2.1.3.3.2.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.3"><span class="ltx_text" id="S5.T2.2.1.3.3.3.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.4"><span class="ltx_text" id="S5.T2.2.1.3.3.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.5"><span class="ltx_text" id="S5.T2.2.1.3.3.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.6"><span class="ltx_text" id="S5.T2.2.1.3.3.6.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.7"><span class="ltx_text" id="S5.T2.2.1.3.3.7.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.8"><span class="ltx_text" id="S5.T2.2.1.3.3.8.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.9"><span class="ltx_text" id="S5.T2.2.1.3.3.9.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.10"><span class="ltx_text" id="S5.T2.2.1.3.3.10.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.11"><span class="ltx_text" id="S5.T2.2.1.3.3.11.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.12"><span class="ltx_text" id="S5.T2.2.1.3.3.12.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.13"><span class="ltx_text" id="S5.T2.2.1.3.3.13.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.14"><span class="ltx_text" id="S5.T2.2.1.3.3.14.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.15"><span class="ltx_text" id="S5.T2.2.1.3.3.15.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.16"><span class="ltx_text" id="S5.T2.2.1.3.3.16.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.17"><span class="ltx_text" id="S5.T2.2.1.3.3.17.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.3.3.18"><span class="ltx_text" id="S5.T2.2.1.3.3.18.1" style="font-size:90%;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.4.4.1"><span class="ltx_text" id="S5.T2.2.1.4.4.1.1" style="font-size:90%;">LLaVA-v1.6-Vicuna-7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.4.2"><span class="ltx_text" id="S5.T2.2.1.4.4.2.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.4.3"><span class="ltx_text" id="S5.T2.2.1.4.4.3.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.4.4"><span class="ltx_text" id="S5.T2.2.1.4.4.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.4.5"><span class="ltx_text" id="S5.T2.2.1.4.4.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.4.6"><span class="ltx_text" id="S5.T2.2.1.4.4.6.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.4.7"><span class="ltx_text" id="S5.T2.2.1.4.4.7.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.4.8"><span class="ltx_text" id="S5.T2.2.1.4.4.8.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.4.9"><span class="ltx_text" id="S5.T2.2.1.4.4.9.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.4.10"><span class="ltx_text" id="S5.T2.2.1.4.4.10.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.4.11"><span class="ltx_text" id="S5.T2.2.1.4.4.11.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.4.12"><span class="ltx_text" id="S5.T2.2.1.4.4.12.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.4.13"><span class="ltx_text" id="S5.T2.2.1.4.4.13.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.4.14"><span class="ltx_text" id="S5.T2.2.1.4.4.14.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.4.15"><span class="ltx_text" id="S5.T2.2.1.4.4.15.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.4.16"><span class="ltx_text" id="S5.T2.2.1.4.4.16.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.4.17"><span class="ltx_text" id="S5.T2.2.1.4.4.17.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.4.4.18"><span class="ltx_text" id="S5.T2.2.1.4.4.18.1" style="font-size:90%;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.5.5.1"><span class="ltx_text" id="S5.T2.2.1.5.5.1.1" style="font-size:90%;">Idefics2-8b</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.5.5.2"><span class="ltx_text" id="S5.T2.2.1.5.5.2.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.5.5.3"><span class="ltx_text" id="S5.T2.2.1.5.5.3.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.5.5.4"><span class="ltx_text" id="S5.T2.2.1.5.5.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.5.5.5"><span class="ltx_text" id="S5.T2.2.1.5.5.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.5.5.6"><span class="ltx_text" id="S5.T2.2.1.5.5.6.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.5.5.7"><span class="ltx_text" id="S5.T2.2.1.5.5.7.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.5.5.8"><span class="ltx_text" id="S5.T2.2.1.5.5.8.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.5.5.9"><span class="ltx_text" id="S5.T2.2.1.5.5.9.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.5.5.10"><span class="ltx_text" id="S5.T2.2.1.5.5.10.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.5.5.11"><span class="ltx_text" id="S5.T2.2.1.5.5.11.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.5.5.12"><span class="ltx_text" id="S5.T2.2.1.5.5.12.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.5.5.13"><span class="ltx_text" id="S5.T2.2.1.5.5.13.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.5.5.14"><span class="ltx_text" id="S5.T2.2.1.5.5.14.1" style="font-size:90%;">1.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.5.5.15"><span class="ltx_text" id="S5.T2.2.1.5.5.15.1" style="font-size:90%;">1.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.5.5.16"><span class="ltx_text" id="S5.T2.2.1.5.5.16.1" style="font-size:90%;">3.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.5.5.17"><span class="ltx_text" id="S5.T2.2.1.5.5.17.1" style="font-size:90%;">1.69</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.5.18"><span class="ltx_text" id="S5.T2.2.1.5.5.18.1" style="font-size:90%;">0.47</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.6.6.1"><span class="ltx_text" id="S5.T2.2.1.6.6.1.1" style="font-size:90%;">DeepSeek-VL-7B-chat</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.6.2"><span class="ltx_text" id="S5.T2.2.1.6.6.2.1" style="font-size:90%;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.6.3"><span class="ltx_text" id="S5.T2.2.1.6.6.3.1" style="font-size:90%;">1.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.6.4"><span class="ltx_text" id="S5.T2.2.1.6.6.4.1" style="font-size:90%;">2.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.6.5"><span class="ltx_text" id="S5.T2.2.1.6.6.5.1" style="font-size:90%;">1.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.6.6"><span class="ltx_text" id="S5.T2.2.1.6.6.6.1" style="font-size:90%;">0.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.6.7"><span class="ltx_text" id="S5.T2.2.1.6.6.7.1" style="font-size:90%;">0.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.6.8"><span class="ltx_text" id="S5.T2.2.1.6.6.8.1" style="font-size:90%;">1.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.6.9"><span class="ltx_text" id="S5.T2.2.1.6.6.9.1" style="font-size:90%;">0.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.6.10"><span class="ltx_text" id="S5.T2.2.1.6.6.10.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.6.11"><span class="ltx_text" id="S5.T2.2.1.6.6.11.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.6.12"><span class="ltx_text" id="S5.T2.2.1.6.6.12.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.6.13"><span class="ltx_text" id="S5.T2.2.1.6.6.13.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.6.14"><span class="ltx_text" id="S5.T2.2.1.6.6.14.1" style="font-size:90%;">1.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.6.15"><span class="ltx_text" id="S5.T2.2.1.6.6.15.1" style="font-size:90%;">1.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.6.16"><span class="ltx_text" id="S5.T2.2.1.6.6.16.1" style="font-size:90%;">2.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.6.17"><span class="ltx_text" id="S5.T2.2.1.6.6.17.1" style="font-size:90%;">1.67</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.6.18"><span class="ltx_text" id="S5.T2.2.1.6.6.18.1" style="font-size:90%;">0.92</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.7.7.1"><span class="ltx_text" id="S5.T2.2.1.7.7.1.1" style="font-size:90%;">InternLM-XComposer2-4KHD-7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.7.2"><span class="ltx_text" id="S5.T2.2.1.7.7.2.1" style="font-size:90%;">1.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.7.3"><span class="ltx_text" id="S5.T2.2.1.7.7.3.1" style="font-size:90%;">2.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.7.4"><span class="ltx_text" id="S5.T2.2.1.7.7.4.1" style="font-size:90%;">1.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.7.5"><span class="ltx_text" id="S5.T2.2.1.7.7.5.1" style="font-size:90%;">1.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.7.6"><span class="ltx_text" id="S5.T2.2.1.7.7.6.1" style="font-size:90%;">0.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.7.7"><span class="ltx_text" id="S5.T2.2.1.7.7.7.1" style="font-size:90%;">0.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.7.8"><span class="ltx_text" id="S5.T2.2.1.7.7.8.1" style="font-size:90%;">0.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.7.9"><span class="ltx_text" id="S5.T2.2.1.7.7.9.1" style="font-size:90%;">0.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.7.10"><span class="ltx_text" id="S5.T2.2.1.7.7.10.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.7.11"><span class="ltx_text" id="S5.T2.2.1.7.7.11.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.7.12"><span class="ltx_text" id="S5.T2.2.1.7.7.12.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.7.13"><span class="ltx_text" id="S5.T2.2.1.7.7.13.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.7.14"><span class="ltx_text" id="S5.T2.2.1.7.7.14.1" style="font-size:90%;">3.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.7.15"><span class="ltx_text" id="S5.T2.2.1.7.7.15.1" style="font-size:90%;">6.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.7.16"><span class="ltx_text" id="S5.T2.2.1.7.7.16.1" style="font-size:90%;">3.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.7.17"><span class="ltx_text" id="S5.T2.2.1.7.7.17.1" style="font-size:90%;">4.65</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.7.18"><span class="ltx_text" id="S5.T2.2.1.7.7.18.1" style="font-size:90%;">1.59</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.8.8.1"><span class="ltx_text" id="S5.T2.2.1.8.8.1.1" style="font-size:90%;">Monkey-Chat</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.8.2"><span class="ltx_text" id="S5.T2.2.1.8.8.2.1" style="font-size:90%;">3.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.8.3"><span class="ltx_text" id="S5.T2.2.1.8.8.3.1" style="font-size:90%;">5.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.8.4"><span class="ltx_text" id="S5.T2.2.1.8.8.4.1" style="font-size:90%;">9.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.8.5"><span class="ltx_text" id="S5.T2.2.1.8.8.5.1" style="font-size:90%;">5.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.8.6"><span class="ltx_text" id="S5.T2.2.1.8.8.6.1" style="font-size:90%;">0.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.8.7"><span class="ltx_text" id="S5.T2.2.1.8.8.7.1" style="font-size:90%;">1.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.8.8"><span class="ltx_text" id="S5.T2.2.1.8.8.8.1" style="font-size:90%;">1.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.8.9"><span class="ltx_text" id="S5.T2.2.1.8.8.9.1" style="font-size:90%;">1.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.8.10"><span class="ltx_text" id="S5.T2.2.1.8.8.10.1" style="font-size:90%;">0.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.8.11"><span class="ltx_text" id="S5.T2.2.1.8.8.11.1" style="font-size:90%;">0.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.8.12"><span class="ltx_text" id="S5.T2.2.1.8.8.12.1" style="font-size:90%;">2.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.8.13"><span class="ltx_text" id="S5.T2.2.1.8.8.13.1" style="font-size:90%;">0.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.8.14"><span class="ltx_text" id="S5.T2.2.1.8.8.14.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.8.15"><span class="ltx_text" id="S5.T2.2.1.8.8.15.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.8.16"><span class="ltx_text" id="S5.T2.2.1.8.8.16.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.8.17"><span class="ltx_text" id="S5.T2.2.1.8.8.17.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.8.18"><span class="ltx_text" id="S5.T2.2.1.8.8.18.1" style="font-size:90%;">2.01</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.9.9.1"><span class="ltx_text" id="S5.T2.2.1.9.9.1.1" style="font-size:90%;">Phi3-V</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.9.9.2"><span class="ltx_text" id="S5.T2.2.1.9.9.2.1" style="font-size:90%;">2.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.9.9.3"><span class="ltx_text" id="S5.T2.2.1.9.9.3.1" style="font-size:90%;">3.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.9.9.4"><span class="ltx_text" id="S5.T2.2.1.9.9.4.1" style="font-size:90%;">5.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.9.9.5"><span class="ltx_text" id="S5.T2.2.1.9.9.5.1" style="font-size:90%;">3.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.9.9.6"><span class="ltx_text" id="S5.T2.2.1.9.9.6.1" style="font-size:90%;">0.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.9.9.7"><span class="ltx_text" id="S5.T2.2.1.9.9.7.1" style="font-size:90%;">1.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.9.9.8"><span class="ltx_text" id="S5.T2.2.1.9.9.8.1" style="font-size:90%;">2.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.9.9.9"><span class="ltx_text" id="S5.T2.2.1.9.9.9.1" style="font-size:90%;">1.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.9.9.10"><span class="ltx_text" id="S5.T2.2.1.9.9.10.1" style="font-size:90%;">0.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.9.9.11"><span class="ltx_text" id="S5.T2.2.1.9.9.11.1" style="font-size:90%;">0.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.9.9.12"><span class="ltx_text" id="S5.T2.2.1.9.9.12.1" style="font-size:90%;">2.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.9.9.13"><span class="ltx_text" id="S5.T2.2.1.9.9.13.1" style="font-size:90%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.9.9.14"><span class="ltx_text" id="S5.T2.2.1.9.9.14.1" style="font-size:90%;">3.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.9.9.15"><span class="ltx_text" id="S5.T2.2.1.9.9.15.1" style="font-size:90%;">4.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.9.9.16"><span class="ltx_text" id="S5.T2.2.1.9.9.16.1" style="font-size:90%;">5.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.9.9.17"><span class="ltx_text" id="S5.T2.2.1.9.9.17.1" style="font-size:90%;">4.28</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.9.9.18"><span class="ltx_text" id="S5.T2.2.1.9.9.18.1" style="font-size:90%;">2.54</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.10.10.1"><span class="ltx_text" id="S5.T2.2.1.10.10.1.1" style="font-size:90%;">CogVLM2-Llama3-19B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.10.2"><span class="ltx_text" id="S5.T2.2.1.10.10.2.1" style="font-size:90%;">1.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.10.3"><span class="ltx_text" id="S5.T2.2.1.10.10.3.1" style="font-size:90%;">2.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.10.4"><span class="ltx_text" id="S5.T2.2.1.10.10.4.1" style="font-size:90%;">3.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.10.5"><span class="ltx_text" id="S5.T2.2.1.10.10.5.1" style="font-size:90%;">2.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.10.6"><span class="ltx_text" id="S5.T2.2.1.10.10.6.1" style="font-size:90%;">1.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.10.7"><span class="ltx_text" id="S5.T2.2.1.10.10.7.1" style="font-size:90%;">1.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.10.8"><span class="ltx_text" id="S5.T2.2.1.10.10.8.1" style="font-size:90%;">3.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.10.9"><span class="ltx_text" id="S5.T2.2.1.10.10.9.1" style="font-size:90%;">1.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.10.10"><span class="ltx_text" id="S5.T2.2.1.10.10.10.1" style="font-size:90%;">0.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.10.11"><span class="ltx_text" id="S5.T2.2.1.10.10.11.1" style="font-size:90%;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.10.12"><span class="ltx_text" id="S5.T2.2.1.10.10.12.1" style="font-size:90%;">1.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.10.13"><span class="ltx_text" id="S5.T2.2.1.10.10.13.1" style="font-size:90%;">0.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.10.14"><span class="ltx_text" id="S5.T2.2.1.10.10.14.1" style="font-size:90%;">6.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.10.15"><span class="ltx_text" id="S5.T2.2.1.10.10.15.1" style="font-size:90%;">7.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.10.16"><span class="ltx_text" id="S5.T2.2.1.10.10.16.1" style="font-size:90%;">8.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.10.17"><span class="ltx_text" id="S5.T2.2.1.10.10.17.1" style="font-size:90%;">7.53</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.10.10.18"><span class="ltx_text" id="S5.T2.2.1.10.10.18.1" style="font-size:90%;">3.30</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.11.11.1"><span class="ltx_text" id="S5.T2.2.1.11.11.1.1" style="font-size:90%;">Qwen-VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.11.2"><span class="ltx_text" id="S5.T2.2.1.11.11.2.1" style="font-size:90%;">4.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.11.3"><span class="ltx_text" id="S5.T2.2.1.11.11.3.1" style="font-size:90%;">4.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.11.4"><span class="ltx_text" id="S5.T2.2.1.11.11.4.1" style="font-size:90%;">28.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.11.5"><span class="ltx_text" id="S5.T2.2.1.11.11.5.1" style="font-size:90%;">7.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.11.6"><span class="ltx_text" id="S5.T2.2.1.11.11.6.1" style="font-size:90%;">1.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.11.7"><span class="ltx_text" id="S5.T2.2.1.11.11.7.1" style="font-size:90%;">1.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.11.8"><span class="ltx_text" id="S5.T2.2.1.11.11.8.1" style="font-size:90%;">8.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.11.9"><span class="ltx_text" id="S5.T2.2.1.11.11.9.1" style="font-size:90%;">1.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.11.10"><span class="ltx_text" id="S5.T2.2.1.11.11.10.1" style="font-size:90%;">0.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.11.11"><span class="ltx_text" id="S5.T2.2.1.11.11.11.1" style="font-size:90%;">0.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.11.12"><span class="ltx_text" id="S5.T2.2.1.11.11.12.1" style="font-size:90%;">4.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.11.13"><span class="ltx_text" id="S5.T2.2.1.11.11.13.1" style="font-size:90%;">1.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.11.14"><span class="ltx_text" id="S5.T2.2.1.11.11.14.1" style="font-size:90%;">1.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.11.15"><span class="ltx_text" id="S5.T2.2.1.11.11.15.1" style="font-size:90%;">1.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.11.16"><span class="ltx_text" id="S5.T2.2.1.11.11.16.1" style="font-size:90%;">3.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.11.17"><span class="ltx_text" id="S5.T2.2.1.11.11.17.1" style="font-size:90%;">2.08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.11.11.18"><span class="ltx_text" id="S5.T2.2.1.11.11.18.1" style="font-size:90%;">4.50</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.12.12.1"><span class="ltx_text" id="S5.T2.2.1.12.12.1.1" style="font-size:90%;">InternLM-XComposer2-VL-7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.12.2"><span class="ltx_text" id="S5.T2.2.1.12.12.2.1" style="font-size:90%;">8.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.12.3"><span class="ltx_text" id="S5.T2.2.1.12.12.3.1" style="font-size:90%;">15.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.12.4"><span class="ltx_text" id="S5.T2.2.1.12.12.4.1" style="font-size:90%;">9.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.12.5"><span class="ltx_text" id="S5.T2.2.1.12.12.5.1" style="font-size:90%;">10.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.12.6"><span class="ltx_text" id="S5.T2.2.1.12.12.6.1" style="font-size:90%;">7.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.12.7"><span class="ltx_text" id="S5.T2.2.1.12.12.7.1" style="font-size:90%;">11.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.12.8"><span class="ltx_text" id="S5.T2.2.1.12.12.8.1" style="font-size:90%;">8.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.12.9"><span class="ltx_text" id="S5.T2.2.1.12.12.9.1" style="font-size:90%;">8.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.12.10"><span class="ltx_text" id="S5.T2.2.1.12.12.10.1" style="font-size:90%;">2.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.12.11"><span class="ltx_text" id="S5.T2.2.1.12.12.11.1" style="font-size:90%;">6.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.12.12"><span class="ltx_text" id="S5.T2.2.1.12.12.12.1" style="font-size:90%;">2.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.12.13"><span class="ltx_text" id="S5.T2.2.1.12.12.13.1" style="font-size:90%;">3.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.12.14"><span class="ltx_text" id="S5.T2.2.1.12.12.14.1" style="font-size:90%;">15.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.12.15"><span class="ltx_text" id="S5.T2.2.1.12.12.15.1" style="font-size:90%;">18.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.12.16"><span class="ltx_text" id="S5.T2.2.1.12.12.16.1" style="font-size:90%;">17.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.12.17"><span class="ltx_text" id="S5.T2.2.1.12.12.17.1" style="font-size:90%;">16.98</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.12.18"><span class="ltx_text" id="S5.T2.2.1.12.12.18.1" style="font-size:90%;">10.10</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.13.13.1"><span class="ltx_text" id="S5.T2.2.1.13.13.1.1" style="font-size:90%;">MiniCPM-Llama3-V 2.5</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.13.2"><span class="ltx_text" id="S5.T2.2.1.13.13.2.1" style="font-size:90%;">7.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.13.3"><span class="ltx_text" id="S5.T2.2.1.13.13.3.1" style="font-size:90%;">12.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.13.4"><span class="ltx_text" id="S5.T2.2.1.13.13.4.1" style="font-size:90%;">8.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.13.5"><span class="ltx_text" id="S5.T2.2.1.13.13.5.1" style="font-size:90%;">9.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.13.6"><span class="ltx_text" id="S5.T2.2.1.13.13.6.1" style="font-size:90%;">15.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.13.7"><span class="ltx_text" id="S5.T2.2.1.13.13.7.1" style="font-size:90%;">19.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.13.8"><span class="ltx_text" id="S5.T2.2.1.13.13.8.1" style="font-size:90%;">18.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.13.9"><span class="ltx_text" id="S5.T2.2.1.13.13.9.1" style="font-size:90%;">17.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.13.10"><span class="ltx_text" id="S5.T2.2.1.13.13.10.1" style="font-size:90%;">5.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.13.11"><span class="ltx_text" id="S5.T2.2.1.13.13.11.1" style="font-size:90%;">9.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.13.12"><span class="ltx_text" id="S5.T2.2.1.13.13.12.1" style="font-size:90%;">7.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.13.13"><span class="ltx_text" id="S5.T2.2.1.13.13.13.1" style="font-size:90%;">7.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.13.14"><span class="ltx_text" id="S5.T2.2.1.13.13.14.1" style="font-size:90%;">54.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.13.15"><span class="ltx_text" id="S5.T2.2.1.13.13.15.1" style="font-size:90%;">62.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.13.16"><span class="ltx_text" id="S5.T2.2.1.13.13.16.1" style="font-size:90%;">57.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.13.17"><span class="ltx_text" id="S5.T2.2.1.13.13.17.1" style="font-size:90%;">57.95</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.13.18"><span class="ltx_text" id="S5.T2.2.1.13.13.18.1" style="font-size:90%;">23.15</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.1"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.14.14.1.1" style="font-size:90%;">Ours (Embedding)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.2"><span class="ltx_text" id="S5.T2.2.1.14.14.2.1" style="font-size:90%;">39.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.3"><span class="ltx_text" id="S5.T2.2.1.14.14.3.1" style="font-size:90%;">57.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.4"><span class="ltx_text" id="S5.T2.2.1.14.14.4.1" style="font-size:90%;">52.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.5"><span class="ltx_text" id="S5.T2.2.1.14.14.5.1" style="font-size:90%;">49.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.6"><span class="ltx_text" id="S5.T2.2.1.14.14.6.1" style="font-size:90%;">37.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.7"><span class="ltx_text" id="S5.T2.2.1.14.14.7.1" style="font-size:90%;">40.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.8"><span class="ltx_text" id="S5.T2.2.1.14.14.8.1" style="font-size:90%;">72.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.9"><span class="ltx_text" id="S5.T2.2.1.14.14.9.1" style="font-size:90%;">48.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.10"><span class="ltx_text" id="S5.T2.2.1.14.14.10.1" style="font-size:90%;">25.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.11"><span class="ltx_text" id="S5.T2.2.1.14.14.11.1" style="font-size:90%;">28.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.12"><span class="ltx_text" id="S5.T2.2.1.14.14.12.1" style="font-size:90%;">49.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.13"><span class="ltx_text" id="S5.T2.2.1.14.14.13.1" style="font-size:90%;">32.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.14"><span class="ltx_text" id="S5.T2.2.1.14.14.14.1" style="font-size:90%;">70.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.15"><span class="ltx_text" id="S5.T2.2.1.14.14.15.1" style="font-size:90%;">86.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.16"><span class="ltx_text" id="S5.T2.2.1.14.14.16.1" style="font-size:90%;">75.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.14.17"><span class="ltx_text" id="S5.T2.2.1.14.14.17.1" style="font-size:90%;">77.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.14.14.18"><span class="ltx_text" id="S5.T2.2.1.14.14.18.1" style="font-size:90%;">52.84</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.15.15.1"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.15.15.1.1" style="font-size:90%;">Ours (Instruction)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.15.15.2"><span class="ltx_text" id="S5.T2.2.1.15.15.2.1" style="font-size:90%;">70.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.15.15.3"><span class="ltx_text" id="S5.T2.2.1.15.15.3.1" style="font-size:90%;">81.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.15.15.4"><span class="ltx_text" id="S5.T2.2.1.15.15.4.1" style="font-size:90%;">73.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.15.15.5"><span class="ltx_text" id="S5.T2.2.1.15.15.5.1" style="font-size:90%;">75.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.15.15.6"><span class="ltx_text" id="S5.T2.2.1.15.15.6.1" style="font-size:90%;">73.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.15.15.7"><span class="ltx_text" id="S5.T2.2.1.15.15.7.1" style="font-size:90%;">81.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.15.15.8"><span class="ltx_text" id="S5.T2.2.1.15.15.8.1" style="font-size:90%;">75.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.15.15.9"><span class="ltx_text" id="S5.T2.2.1.15.15.9.1" style="font-size:90%;">77.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.15.15.10"><span class="ltx_text" id="S5.T2.2.1.15.15.10.1" style="font-size:90%;">39.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.15.15.11"><span class="ltx_text" id="S5.T2.2.1.15.15.11.1" style="font-size:90%;">47.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.15.15.12"><span class="ltx_text" id="S5.T2.2.1.15.15.12.1" style="font-size:90%;">42.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.15.15.13"><span class="ltx_text" id="S5.T2.2.1.15.15.13.1" style="font-size:90%;">43.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.15.15.14"><span class="ltx_text" id="S5.T2.2.1.15.15.14.1" style="font-size:90%;">85.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.15.15.15"><span class="ltx_text" id="S5.T2.2.1.15.15.15.1" style="font-size:90%;">92.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.15.15.16"><span class="ltx_text" id="S5.T2.2.1.15.15.16.1" style="font-size:90%;">79.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.15.15.17"><span class="ltx_text" id="S5.T2.2.1.15.15.17.1" style="font-size:90%;">83.62</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.15.15.18"><span class="ltx_text" id="S5.T2.2.1.15.15.18.1" style="font-size:90%;">69.77</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.16.16.1"><span class="ltx_text" id="S5.T2.2.1.16.16.1.1" style="font-size:90%;">GPT-4o</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.16.16.2"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.2.1" style="font-size:90%;">83.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.16.16.3"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.3.1" style="font-size:90%;">88.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.16.16.4"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.4.1" style="font-size:90%;">89.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.16.16.5"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.5.1" style="font-size:90%;">87.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.16.16.6"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.6.1" style="font-size:90%;">82.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.16.16.7"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.7.1" style="font-size:90%;">87.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.16.16.8"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.8.1" style="font-size:90%;">89.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.16.16.9"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.9.1" style="font-size:90%;">86.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.16.16.10"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.10.1" style="font-size:90%;">68.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.16.16.11"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.11.1" style="font-size:90%;">79.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.16.16.12"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.12.1" style="font-size:90%;">78.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.16.16.13"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.13.1" style="font-size:90%;">75.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.16.16.14"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.14.1" style="font-size:90%;">89.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.16.16.15"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.15.1" style="font-size:90%;">96.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.16.16.16"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.16.1" style="font-size:90%;">91.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.16.16.17"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.17.1" style="font-size:90%;">92.16</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.16.16.18"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.16.16.18.1" style="font-size:90%;">85.34</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.1"><span class="ltx_text" id="S5.T2.2.1.17.17.1.1" style="font-size:90%;">GPT-3.5-turbo (Without Image)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.2"><span class="ltx_text" id="S5.T2.2.1.17.17.2.1" style="font-size:90%;">8.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.3"><span class="ltx_text" id="S5.T2.2.1.17.17.3.1" style="font-size:90%;">14.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.4"><span class="ltx_text" id="S5.T2.2.1.17.17.4.1" style="font-size:90%;">9.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.5"><span class="ltx_text" id="S5.T2.2.1.17.17.5.1" style="font-size:90%;">10.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.6"><span class="ltx_text" id="S5.T2.2.1.17.17.6.1" style="font-size:90%;">32.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.7"><span class="ltx_text" id="S5.T2.2.1.17.17.7.1" style="font-size:90%;">40.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.8"><span class="ltx_text" id="S5.T2.2.1.17.17.8.1" style="font-size:90%;">32.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.9"><span class="ltx_text" id="S5.T2.2.1.17.17.9.1" style="font-size:90%;">35.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.10"><span class="ltx_text" id="S5.T2.2.1.17.17.10.1" style="font-size:90%;">12.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.11"><span class="ltx_text" id="S5.T2.2.1.17.17.11.1" style="font-size:90%;">20.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.12"><span class="ltx_text" id="S5.T2.2.1.17.17.12.1" style="font-size:90%;">14.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.13"><span class="ltx_text" id="S5.T2.2.1.17.17.13.1" style="font-size:90%;">15.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.14"><span class="ltx_text" id="S5.T2.2.1.17.17.14.1" style="font-size:90%;">15.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.15"><span class="ltx_text" id="S5.T2.2.1.17.17.15.1" style="font-size:90%;">18.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.16"><span class="ltx_text" id="S5.T2.2.1.17.17.16.1" style="font-size:90%;">15.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.17.17.17"><span class="ltx_text" id="S5.T2.2.1.17.17.17.1" style="font-size:90%;">16.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.17.17.18"><span class="ltx_text" id="S5.T2.2.1.17.17.18.1" style="font-size:90%;">19.58</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.18.18.1"><span class="ltx_text" id="S5.T2.2.1.18.18.1.1" style="font-size:90%;">GPT-4 (Without Image)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.18.18.2"><span class="ltx_text" id="S5.T2.2.1.18.18.2.1" style="font-size:90%;">51.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.18.18.3"><span class="ltx_text" id="S5.T2.2.1.18.18.3.1" style="font-size:90%;">57.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.18.18.4"><span class="ltx_text" id="S5.T2.2.1.18.18.4.1" style="font-size:90%;">53.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.18.18.5"><span class="ltx_text" id="S5.T2.2.1.18.18.5.1" style="font-size:90%;">54.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.18.18.6"><span class="ltx_text" id="S5.T2.2.1.18.18.6.1" style="font-size:90%;">52.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.18.18.7"><span class="ltx_text" id="S5.T2.2.1.18.18.7.1" style="font-size:90%;">62.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.18.18.8"><span class="ltx_text" id="S5.T2.2.1.18.18.8.1" style="font-size:90%;">53.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.18.18.9"><span class="ltx_text" id="S5.T2.2.1.18.18.9.1" style="font-size:90%;">56.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.18.18.10"><span class="ltx_text" id="S5.T2.2.1.18.18.10.1" style="font-size:90%;">47.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.18.18.11"><span class="ltx_text" id="S5.T2.2.1.18.18.11.1" style="font-size:90%;">57.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.18.18.12"><span class="ltx_text" id="S5.T2.2.1.18.18.12.1" style="font-size:90%;">54.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.18.18.13"><span class="ltx_text" id="S5.T2.2.1.18.18.13.1" style="font-size:90%;">53.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.18.18.14"><span class="ltx_text" id="S5.T2.2.1.18.18.14.1" style="font-size:90%;">69.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.18.18.15"><span class="ltx_text" id="S5.T2.2.1.18.18.15.1" style="font-size:90%;">76.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.18.18.16"><span class="ltx_text" id="S5.T2.2.1.18.18.16.1" style="font-size:90%;">71.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.18.18.17"><span class="ltx_text" id="S5.T2.2.1.18.18.17.1" style="font-size:90%;">72.39</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.18.18.18"><span class="ltx_text" id="S5.T2.2.1.18.18.18.1" style="font-size:90%;">58.59</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.1"><span class="ltx_text" id="S5.T2.2.1.19.19.1.1" style="font-size:90%;">GPT-4o (Without Image)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.2"><span class="ltx_text" id="S5.T2.2.1.19.19.2.1" style="font-size:90%;">59.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.3"><span class="ltx_text" id="S5.T2.2.1.19.19.3.1" style="font-size:90%;">67.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.4"><span class="ltx_text" id="S5.T2.2.1.19.19.4.1" style="font-size:90%;">62.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.5"><span class="ltx_text" id="S5.T2.2.1.19.19.5.1" style="font-size:90%;">63.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.6"><span class="ltx_text" id="S5.T2.2.1.19.19.6.1" style="font-size:90%;">77.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.7"><span class="ltx_text" id="S5.T2.2.1.19.19.7.1" style="font-size:90%;">83.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.8"><span class="ltx_text" id="S5.T2.2.1.19.19.8.1" style="font-size:90%;">80.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.9"><span class="ltx_text" id="S5.T2.2.1.19.19.9.1" style="font-size:90%;">80.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.10"><span class="ltx_text" id="S5.T2.2.1.19.19.10.1" style="font-size:90%;">63.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.11"><span class="ltx_text" id="S5.T2.2.1.19.19.11.1" style="font-size:90%;">72.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.12"><span class="ltx_text" id="S5.T2.2.1.19.19.12.1" style="font-size:90%;">69.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.13"><span class="ltx_text" id="S5.T2.2.1.19.19.13.1" style="font-size:90%;">68.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.14"><span class="ltx_text" id="S5.T2.2.1.19.19.14.1" style="font-size:90%;">71.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.15"><span class="ltx_text" id="S5.T2.2.1.19.19.15.1" style="font-size:90%;">80.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.16"><span class="ltx_text" id="S5.T2.2.1.19.19.16.1" style="font-size:90%;">72.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.1.19.19.17"><span class="ltx_text" id="S5.T2.2.1.19.19.17.1" style="font-size:90%;">74.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.1.19.19.18"><span class="ltx_text" id="S5.T2.2.1.19.19.18.1" style="font-size:90%;">71.69</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the OCR-based grounding experiments.  Four different metrics are used to evaluate the models' performance: bounding-box-level Intersection over Union (IoU), precision, recall, and F1 score.  These metrics assess how well the models' predicted bounding boxes match the ground truth bounding boxes. The 'Avg' column shows the average performance across all four datasets (ChartQA, DocVQA, InfographicsVQA, and TRINS).  The models are ranked in descending order based on their average performance across all metrics.
> <details>
> <summary>read the caption</summary>
> Table 2: OCR-based Grounding. IoU, P, R, F1 represent bounding-box-level IoU score, precision, recall and F1 score. Avg represents the average score on all datasets and evaluation metrics, and the ordering is decided by this score.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.1.1.1" style="font-size:90%;">Settings</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S5.T3.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.1.2.1" style="font-size:90%;">Evaluation Setting 1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S5.T3.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.1.3.1" style="font-size:90%;">Evaluation Setting 2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S5.T3.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.1.4.1" style="font-size:90%;">Evaluation Setting 3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.1.5.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.1.1" style="font-size:90%;">Testsets</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.2.1" style="font-size:90%;">Chart</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.3.1" style="font-size:90%;">Doc</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.4.1" style="font-size:90%;">Info</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.5.1" style="font-size:90%;">Trins</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.6.1" style="font-size:90%;">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.7.1" style="font-size:90%;">Chart</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2.8"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.8.1" style="font-size:90%;">Doc</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2.9"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.9.1" style="font-size:90%;">Info</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2.10"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.10.1" style="font-size:90%;">Trins</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2.11"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.11.1" style="font-size:90%;">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2.12"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.12.1" style="font-size:90%;">Chart</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2.13"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.13.1" style="font-size:90%;">Doc</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2.14"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.14.1" style="font-size:90%;">Info</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2.15"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.15.1" style="font-size:90%;">Trins</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2.16"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.16.1" style="font-size:90%;">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.2.17"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.2.17.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.1"><span class="ltx_text" id="S5.T3.2.1.3.3.1.1" style="font-size:90%;">Idefics2-8b</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.2"><span class="ltx_text" id="S5.T3.2.1.3.3.2.1" style="font-size:90%;">9.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.3"><span class="ltx_text" id="S5.T3.2.1.3.3.3.1" style="font-size:90%;">8.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.4"><span class="ltx_text" id="S5.T3.2.1.3.3.4.1" style="font-size:90%;">3.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.5"><span class="ltx_text" id="S5.T3.2.1.3.3.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.6"><span class="ltx_text" id="S5.T3.2.1.3.3.6.1" style="font-size:90%;">5.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.7"><span class="ltx_text" id="S5.T3.2.1.3.3.7.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.8"><span class="ltx_text" id="S5.T3.2.1.3.3.8.1" style="font-size:90%;">6.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.9"><span class="ltx_text" id="S5.T3.2.1.3.3.9.1" style="font-size:90%;">18.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.10"><span class="ltx_text" id="S5.T3.2.1.3.3.10.1" style="font-size:90%;">3.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.11"><span class="ltx_text" id="S5.T3.2.1.3.3.11.1" style="font-size:90%;">7.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.12"><span class="ltx_text" id="S5.T3.2.1.3.3.12.1" style="font-size:90%;">0.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.13"><span class="ltx_text" id="S5.T3.2.1.3.3.13.1" style="font-size:90%;">1.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.14"><span class="ltx_text" id="S5.T3.2.1.3.3.14.1" style="font-size:90%;">5.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.15"><span class="ltx_text" id="S5.T3.2.1.3.3.15.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.16"><span class="ltx_text" id="S5.T3.2.1.3.3.16.1" style="font-size:90%;">1.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.3.3.17"><span class="ltx_text" id="S5.T3.2.1.3.3.17.1" style="font-size:90%;">4.75</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.1.4.4.1"><span class="ltx_text" id="S5.T3.2.1.4.4.1.1" style="font-size:90%;">LlaVa-7b-16</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.4.4.2"><span class="ltx_text" id="S5.T3.2.1.4.4.2.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.4.4.3"><span class="ltx_text" id="S5.T3.2.1.4.4.3.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.4.4.4"><span class="ltx_text" id="S5.T3.2.1.4.4.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.4.4.5"><span class="ltx_text" id="S5.T3.2.1.4.4.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.4.4.6"><span class="ltx_text" id="S5.T3.2.1.4.4.6.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.4.4.7"><span class="ltx_text" id="S5.T3.2.1.4.4.7.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.4.4.8"><span class="ltx_text" id="S5.T3.2.1.4.4.8.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.4.4.9"><span class="ltx_text" id="S5.T3.2.1.4.4.9.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.4.4.10"><span class="ltx_text" id="S5.T3.2.1.4.4.10.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.4.4.11"><span class="ltx_text" id="S5.T3.2.1.4.4.11.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.4.4.12"><span class="ltx_text" id="S5.T3.2.1.4.4.12.1" style="font-size:90%;">15.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.4.4.13"><span class="ltx_text" id="S5.T3.2.1.4.4.13.1" style="font-size:90%;">19.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.4.4.14"><span class="ltx_text" id="S5.T3.2.1.4.4.14.1" style="font-size:90%;">9.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.4.4.15"><span class="ltx_text" id="S5.T3.2.1.4.4.15.1" style="font-size:90%;">14.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.4.4.16"><span class="ltx_text" id="S5.T3.2.1.4.4.16.1" style="font-size:90%;">14.50</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.4.17"><span class="ltx_text" id="S5.T3.2.1.4.4.17.1" style="font-size:90%;">4.83</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.1.5.5.1"><span class="ltx_text" id="S5.T3.2.1.5.5.1.1" style="font-size:90%;">Deepseek-VL-7b-chat</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.5.5.2"><span class="ltx_text" id="S5.T3.2.1.5.5.2.1" style="font-size:90%;">23.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.5.5.3"><span class="ltx_text" id="S5.T3.2.1.5.5.3.1" style="font-size:90%;">2.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.5.5.4"><span class="ltx_text" id="S5.T3.2.1.5.5.4.1" style="font-size:90%;">15.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.5.5.5"><span class="ltx_text" id="S5.T3.2.1.5.5.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.5.5.6"><span class="ltx_text" id="S5.T3.2.1.5.5.6.1" style="font-size:90%;">10.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.5.5.7"><span class="ltx_text" id="S5.T3.2.1.5.5.7.1" style="font-size:90%;">4.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.5.5.8"><span class="ltx_text" id="S5.T3.2.1.5.5.8.1" style="font-size:90%;">3.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.5.5.9"><span class="ltx_text" id="S5.T3.2.1.5.5.9.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.5.5.10"><span class="ltx_text" id="S5.T3.2.1.5.5.10.1" style="font-size:90%;">3.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.5.5.11"><span class="ltx_text" id="S5.T3.2.1.5.5.11.1" style="font-size:90%;">2.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.5.5.12"><span class="ltx_text" id="S5.T3.2.1.5.5.12.1" style="font-size:90%;">3.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.5.5.13"><span class="ltx_text" id="S5.T3.2.1.5.5.13.1" style="font-size:90%;">3.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.5.5.14"><span class="ltx_text" id="S5.T3.2.1.5.5.14.1" style="font-size:90%;">2.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.5.5.15"><span class="ltx_text" id="S5.T3.2.1.5.5.15.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.5.5.16"><span class="ltx_text" id="S5.T3.2.1.5.5.16.1" style="font-size:90%;">2.13</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.5.5.17"><span class="ltx_text" id="S5.T3.2.1.5.5.17.1" style="font-size:90%;">5.00</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.1.6.6.1"><span class="ltx_text" id="S5.T3.2.1.6.6.1.1" style="font-size:90%;">InternLM-XP2-4k-7b</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.6.6.2"><span class="ltx_text" id="S5.T3.2.1.6.6.2.1" style="font-size:90%;">6.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.6.6.3"><span class="ltx_text" id="S5.T3.2.1.6.6.3.1" style="font-size:90%;">3.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.6.6.4"><span class="ltx_text" id="S5.T3.2.1.6.6.4.1" style="font-size:90%;">13.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.6.6.5"><span class="ltx_text" id="S5.T3.2.1.6.6.5.1" style="font-size:90%;">3.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.6.6.6"><span class="ltx_text" id="S5.T3.2.1.6.6.6.1" style="font-size:90%;">6.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.6.6.7"><span class="ltx_text" id="S5.T3.2.1.6.6.7.1" style="font-size:90%;">3.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.6.6.8"><span class="ltx_text" id="S5.T3.2.1.6.6.8.1" style="font-size:90%;">0.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.6.6.9"><span class="ltx_text" id="S5.T3.2.1.6.6.9.1" style="font-size:90%;">3.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.6.6.10"><span class="ltx_text" id="S5.T3.2.1.6.6.10.1" style="font-size:90%;">10.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.6.6.11"><span class="ltx_text" id="S5.T3.2.1.6.6.11.1" style="font-size:90%;">4.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.6.6.12"><span class="ltx_text" id="S5.T3.2.1.6.6.12.1" style="font-size:90%;">5.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.6.6.13"><span class="ltx_text" id="S5.T3.2.1.6.6.13.1" style="font-size:90%;">1.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.6.6.14"><span class="ltx_text" id="S5.T3.2.1.6.6.14.1" style="font-size:90%;">9.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.6.6.15"><span class="ltx_text" id="S5.T3.2.1.6.6.15.1" style="font-size:90%;">8.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.6.6.16"><span class="ltx_text" id="S5.T3.2.1.6.6.16.1" style="font-size:90%;">6.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.6.6.17"><span class="ltx_text" id="S5.T3.2.1.6.6.17.1" style="font-size:90%;">5.63</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.1.7.7.1"><span class="ltx_text" id="S5.T3.2.1.7.7.1.1" style="font-size:90%;">Phi3V</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.7.7.2"><span class="ltx_text" id="S5.T3.2.1.7.7.2.1" style="font-size:90%;">7.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.7.7.3"><span class="ltx_text" id="S5.T3.2.1.7.7.3.1" style="font-size:90%;">4.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.7.7.4"><span class="ltx_text" id="S5.T3.2.1.7.7.4.1" style="font-size:90%;">2.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.7.7.5"><span class="ltx_text" id="S5.T3.2.1.7.7.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.7.7.6"><span class="ltx_text" id="S5.T3.2.1.7.7.6.1" style="font-size:90%;">3.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.7.7.7"><span class="ltx_text" id="S5.T3.2.1.7.7.7.1" style="font-size:90%;">15.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.7.7.8"><span class="ltx_text" id="S5.T3.2.1.7.7.8.1" style="font-size:90%;">7.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.7.7.9"><span class="ltx_text" id="S5.T3.2.1.7.7.9.1" style="font-size:90%;">7.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.7.7.10"><span class="ltx_text" id="S5.T3.2.1.7.7.10.1" style="font-size:90%;">6.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.7.7.11"><span class="ltx_text" id="S5.T3.2.1.7.7.11.1" style="font-size:90%;">8.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.7.7.12"><span class="ltx_text" id="S5.T3.2.1.7.7.12.1" style="font-size:90%;">17.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.7.7.13"><span class="ltx_text" id="S5.T3.2.1.7.7.13.1" style="font-size:90%;">2.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.7.7.14"><span class="ltx_text" id="S5.T3.2.1.7.7.14.1" style="font-size:90%;">8.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.7.7.15"><span class="ltx_text" id="S5.T3.2.1.7.7.15.1" style="font-size:90%;">13.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.7.7.16"><span class="ltx_text" id="S5.T3.2.1.7.7.16.1" style="font-size:90%;">10.25</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.7.7.17"><span class="ltx_text" id="S5.T3.2.1.7.7.17.1" style="font-size:90%;">7.58</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.1.8.8.1"><span class="ltx_text" id="S5.T3.2.1.8.8.1.1" style="font-size:90%;">LlaVa-13b-16</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.8.8.2"><span class="ltx_text" id="S5.T3.2.1.8.8.2.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.8.8.3"><span class="ltx_text" id="S5.T3.2.1.8.8.3.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.8.8.4"><span class="ltx_text" id="S5.T3.2.1.8.8.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.8.8.5"><span class="ltx_text" id="S5.T3.2.1.8.8.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.8.8.6"><span class="ltx_text" id="S5.T3.2.1.8.8.6.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.8.8.7"><span class="ltx_text" id="S5.T3.2.1.8.8.7.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.8.8.8"><span class="ltx_text" id="S5.T3.2.1.8.8.8.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.8.8.9"><span class="ltx_text" id="S5.T3.2.1.8.8.9.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.8.8.10"><span class="ltx_text" id="S5.T3.2.1.8.8.10.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.8.8.11"><span class="ltx_text" id="S5.T3.2.1.8.8.11.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.8.8.12"><span class="ltx_text" id="S5.T3.2.1.8.8.12.1" style="font-size:90%;">57.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.8.8.13"><span class="ltx_text" id="S5.T3.2.1.8.8.13.1" style="font-size:90%;">12.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.8.8.14"><span class="ltx_text" id="S5.T3.2.1.8.8.14.1" style="font-size:90%;">13.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.8.8.15"><span class="ltx_text" id="S5.T3.2.1.8.8.15.1" style="font-size:90%;">48.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.8.8.16"><span class="ltx_text" id="S5.T3.2.1.8.8.16.1" style="font-size:90%;">32.75</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.8.8.17"><span class="ltx_text" id="S5.T3.2.1.8.8.17.1" style="font-size:90%;">10.92</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.1.9.9.1"><span class="ltx_text" id="S5.T3.2.1.9.9.1.1" style="font-size:90%;">CogVLM2-Llama3-19b</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.9.9.2"><span class="ltx_text" id="S5.T3.2.1.9.9.2.1" style="font-size:90%;">24.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.9.9.3"><span class="ltx_text" id="S5.T3.2.1.9.9.3.1" style="font-size:90%;">5.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.9.9.4"><span class="ltx_text" id="S5.T3.2.1.9.9.4.1" style="font-size:90%;">8.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.9.9.5"><span class="ltx_text" id="S5.T3.2.1.9.9.5.1" style="font-size:90%;">6.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.9.9.6"><span class="ltx_text" id="S5.T3.2.1.9.9.6.1" style="font-size:90%;">10.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.9.9.7"><span class="ltx_text" id="S5.T3.2.1.9.9.7.1" style="font-size:90%;">7.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.9.9.8"><span class="ltx_text" id="S5.T3.2.1.9.9.8.1" style="font-size:90%;">10.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.9.9.9"><span class="ltx_text" id="S5.T3.2.1.9.9.9.1" style="font-size:90%;">12.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.9.9.10"><span class="ltx_text" id="S5.T3.2.1.9.9.10.1" style="font-size:90%;">9.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.9.9.11"><span class="ltx_text" id="S5.T3.2.1.9.9.11.1" style="font-size:90%;">9.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.9.9.12"><span class="ltx_text" id="S5.T3.2.1.9.9.12.1" style="font-size:90%;">8.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.9.9.13"><span class="ltx_text" id="S5.T3.2.1.9.9.13.1" style="font-size:90%;">10.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.9.9.14"><span class="ltx_text" id="S5.T3.2.1.9.9.14.1" style="font-size:90%;">19.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.9.9.15"><span class="ltx_text" id="S5.T3.2.1.9.9.15.1" style="font-size:90%;">12.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.9.9.16"><span class="ltx_text" id="S5.T3.2.1.9.9.16.1" style="font-size:90%;">12.50</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.9.9.17"><span class="ltx_text" id="S5.T3.2.1.9.9.17.1" style="font-size:90%;">11.04</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.1.10.10.1"><span class="ltx_text" id="S5.T3.2.1.10.10.1.1" style="font-size:90%;">Qwen-VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.10.10.2"><span class="ltx_text" id="S5.T3.2.1.10.10.2.1" style="font-size:90%;">71.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.10.10.3"><span class="ltx_text" id="S5.T3.2.1.10.10.3.1" style="font-size:90%;">11.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.10.10.4"><span class="ltx_text" id="S5.T3.2.1.10.10.4.1" style="font-size:90%;">41.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.10.10.5"><span class="ltx_text" id="S5.T3.2.1.10.10.5.1" style="font-size:90%;">4.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.10.10.6"><span class="ltx_text" id="S5.T3.2.1.10.10.6.1" style="font-size:90%;">32.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.10.10.7"><span class="ltx_text" id="S5.T3.2.1.10.10.7.1" style="font-size:90%;">34.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.10.10.8"><span class="ltx_text" id="S5.T3.2.1.10.10.8.1" style="font-size:90%;">16.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.10.10.9"><span class="ltx_text" id="S5.T3.2.1.10.10.9.1" style="font-size:90%;">19.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.10.10.10"><span class="ltx_text" id="S5.T3.2.1.10.10.10.1" style="font-size:90%;">5.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.10.10.11"><span class="ltx_text" id="S5.T3.2.1.10.10.11.1" style="font-size:90%;">18.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.10.10.12"><span class="ltx_text" id="S5.T3.2.1.10.10.12.1" style="font-size:90%;">39.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.10.10.13"><span class="ltx_text" id="S5.T3.2.1.10.10.13.1" style="font-size:90%;">14.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.10.10.14"><span class="ltx_text" id="S5.T3.2.1.10.10.14.1" style="font-size:90%;">17.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.10.10.15"><span class="ltx_text" id="S5.T3.2.1.10.10.15.1" style="font-size:90%;">2.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.10.10.16"><span class="ltx_text" id="S5.T3.2.1.10.10.16.1" style="font-size:90%;">18.25</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.10.10.17"><span class="ltx_text" id="S5.T3.2.1.10.10.17.1" style="font-size:90%;">23.00</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.1.11.11.1"><span class="ltx_text" id="S5.T3.2.1.11.11.1.1" style="font-size:90%;">Monkey-Chat</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.11.11.2"><span class="ltx_text" id="S5.T3.2.1.11.11.2.1" style="font-size:90%;">47.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.11.11.3"><span class="ltx_text" id="S5.T3.2.1.11.11.3.1" style="font-size:90%;">38.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.11.11.4"><span class="ltx_text" id="S5.T3.2.1.11.11.4.1" style="font-size:90%;">54.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.11.11.5"><span class="ltx_text" id="S5.T3.2.1.11.11.5.1" style="font-size:90%;">12.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.11.11.6"><span class="ltx_text" id="S5.T3.2.1.11.11.6.1" style="font-size:90%;">37.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.11.11.7"><span class="ltx_text" id="S5.T3.2.1.11.11.7.1" style="font-size:90%;">45.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.11.11.8"><span class="ltx_text" id="S5.T3.2.1.11.11.8.1" style="font-size:90%;">12.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.11.11.9"><span class="ltx_text" id="S5.T3.2.1.11.11.9.1" style="font-size:90%;">10.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.11.11.10"><span class="ltx_text" id="S5.T3.2.1.11.11.10.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.11.11.11"><span class="ltx_text" id="S5.T3.2.1.11.11.11.1" style="font-size:90%;">16.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.11.11.12"><span class="ltx_text" id="S5.T3.2.1.11.11.12.1" style="font-size:90%;">52.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.11.11.13"><span class="ltx_text" id="S5.T3.2.1.11.11.13.1" style="font-size:90%;">29.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.11.11.14"><span class="ltx_text" id="S5.T3.2.1.11.11.14.1" style="font-size:90%;">17.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.11.11.15"><span class="ltx_text" id="S5.T3.2.1.11.11.15.1" style="font-size:90%;">1.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.11.11.16"><span class="ltx_text" id="S5.T3.2.1.11.11.16.1" style="font-size:90%;">25.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.11.11.17"><span class="ltx_text" id="S5.T3.2.1.11.11.17.1" style="font-size:90%;">26.58</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.1.12.12.1"><span class="ltx_text" id="S5.T3.2.1.12.12.1.1" style="font-size:90%;">InternLM-XP2-VL-7b</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.12.12.2"><span class="ltx_text" id="S5.T3.2.1.12.12.2.1" style="font-size:90%;">23.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.12.12.3"><span class="ltx_text" id="S5.T3.2.1.12.12.3.1" style="font-size:90%;">21.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.12.12.4"><span class="ltx_text" id="S5.T3.2.1.12.12.4.1" style="font-size:90%;">22.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.12.12.5"><span class="ltx_text" id="S5.T3.2.1.12.12.5.1" style="font-size:90%;">10.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.12.12.6"><span class="ltx_text" id="S5.T3.2.1.12.12.6.1" style="font-size:90%;">19.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.12.12.7"><span class="ltx_text" id="S5.T3.2.1.12.12.7.1" style="font-size:90%;">26.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.12.12.8"><span class="ltx_text" id="S5.T3.2.1.12.12.8.1" style="font-size:90%;">27.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.12.12.9"><span class="ltx_text" id="S5.T3.2.1.12.12.9.1" style="font-size:90%;">53.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.12.12.10"><span class="ltx_text" id="S5.T3.2.1.12.12.10.1" style="font-size:90%;">20.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.12.12.11"><span class="ltx_text" id="S5.T3.2.1.12.12.11.1" style="font-size:90%;">31.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.12.12.12"><span class="ltx_text" id="S5.T3.2.1.12.12.12.1" style="font-size:90%;">25.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.12.12.13"><span class="ltx_text" id="S5.T3.2.1.12.12.13.1" style="font-size:90%;">28.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.12.12.14"><span class="ltx_text" id="S5.T3.2.1.12.12.14.1" style="font-size:90%;">43.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.12.12.15"><span class="ltx_text" id="S5.T3.2.1.12.12.15.1" style="font-size:90%;">24.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.12.12.16"><span class="ltx_text" id="S5.T3.2.1.12.12.16.1" style="font-size:90%;">30.25</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.12.12.17"><span class="ltx_text" id="S5.T3.2.1.12.12.17.1" style="font-size:90%;">27.08</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.1.13.13.1"><span class="ltx_text" id="S5.T3.2.1.13.13.1.1" style="font-size:90%;">MiniCPM-Llama3</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.13.13.2"><span class="ltx_text" id="S5.T3.2.1.13.13.2.1" style="font-size:90%;">53.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.13.13.3"><span class="ltx_text" id="S5.T3.2.1.13.13.3.1" style="font-size:90%;">58.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.13.13.4"><span class="ltx_text" id="S5.T3.2.1.13.13.4.1" style="font-size:90%;">73.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.13.13.5"><span class="ltx_text" id="S5.T3.2.1.13.13.5.1" style="font-size:90%;">50.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.13.13.6"><span class="ltx_text" id="S5.T3.2.1.13.13.6.1" style="font-size:90%;">58.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.13.13.7"><span class="ltx_text" id="S5.T3.2.1.13.13.7.1" style="font-size:90%;">29.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.13.13.8"><span class="ltx_text" id="S5.T3.2.1.13.13.8.1" style="font-size:90%;">88.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.13.13.9"><span class="ltx_text" id="S5.T3.2.1.13.13.9.1" style="font-size:90%;">88.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.13.13.10"><span class="ltx_text" id="S5.T3.2.1.13.13.10.1" style="font-size:90%;">70.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.13.13.11"><span class="ltx_text" id="S5.T3.2.1.13.13.11.1" style="font-size:90%;">69.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.13.13.12"><span class="ltx_text" id="S5.T3.2.1.13.13.12.1" style="font-size:90%;">36.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.13.13.13"><span class="ltx_text" id="S5.T3.2.1.13.13.13.1" style="font-size:90%;">81.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.13.13.14"><span class="ltx_text" id="S5.T3.2.1.13.13.14.1" style="font-size:90%;">83.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.13.13.15"><span class="ltx_text" id="S5.T3.2.1.13.13.15.1" style="font-size:90%;">80.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.13.13.16"><span class="ltx_text" id="S5.T3.2.1.13.13.16.1" style="font-size:90%;">70.13</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.13.13.17"><span class="ltx_text" id="S5.T3.2.1.13.13.17.1" style="font-size:90%;">55.54</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.1.14.14.1"><span class="ltx_text" id="S5.T3.2.1.14.14.1.1" style="font-size:90%;">GPT4o</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.14.14.2"><span class="ltx_text" id="S5.T3.2.1.14.14.2.1" style="font-size:90%;">98.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.14.14.3"><span class="ltx_text" id="S5.T3.2.1.14.14.3.1" style="font-size:90%;">94.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.14.14.4"><span class="ltx_text" id="S5.T3.2.1.14.14.4.1" style="font-size:90%;">94.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.14.14.5"><span class="ltx_text" id="S5.T3.2.1.14.14.5.1" style="font-size:90%;">98.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.14.14.6"><span class="ltx_text" id="S5.T3.2.1.14.14.6.1" style="font-size:90%;">96.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.14.14.7"><span class="ltx_text" id="S5.T3.2.1.14.14.7.1" style="font-size:90%;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.14.14.8"><span class="ltx_text" id="S5.T3.2.1.14.14.8.1" style="font-size:90%;">99.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.14.14.9"><span class="ltx_text" id="S5.T3.2.1.14.14.9.1" style="font-size:90%;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.14.14.10"><span class="ltx_text" id="S5.T3.2.1.14.14.10.1" style="font-size:90%;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.14.14.11"><span class="ltx_text" id="S5.T3.2.1.14.14.11.1" style="font-size:90%;">99.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.14.14.12"><span class="ltx_text" id="S5.T3.2.1.14.14.12.1" style="font-size:90%;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.14.14.13"><span class="ltx_text" id="S5.T3.2.1.14.14.13.1" style="font-size:90%;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.14.14.14"><span class="ltx_text" id="S5.T3.2.1.14.14.14.1" style="font-size:90%;">99.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.14.14.15"><span class="ltx_text" id="S5.T3.2.1.14.14.15.1" style="font-size:90%;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.14.14.16"><span class="ltx_text" id="S5.T3.2.1.14.14.16.1" style="font-size:90%;">99.75</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.14.14.17"><span class="ltx_text" id="S5.T3.2.1.14.14.17.1" style="font-size:90%;">98.50</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.2.1.15.15.1"><span class="ltx_text" id="S5.T3.2.1.15.15.1.1" style="font-size:90%;">GPT-3.5-turbo (w/o Image)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.15.15.2"><span class="ltx_text" id="S5.T3.2.1.15.15.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.15.15.3"><span class="ltx_text" id="S5.T3.2.1.15.15.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.15.15.4"><span class="ltx_text" id="S5.T3.2.1.15.15.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.15.15.5"><span class="ltx_text" id="S5.T3.2.1.15.15.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.15.15.6"><span class="ltx_text" id="S5.T3.2.1.15.15.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.15.15.7"><span class="ltx_text" id="S5.T3.2.1.15.15.7.1" style="font-size:90%;">20.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.15.15.8"><span class="ltx_text" id="S5.T3.2.1.15.15.8.1" style="font-size:90%;">48.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.15.15.9"><span class="ltx_text" id="S5.T3.2.1.15.15.9.1" style="font-size:90%;">38.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.15.15.10"><span class="ltx_text" id="S5.T3.2.1.15.15.10.1" style="font-size:90%;">21.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.15.15.11"><span class="ltx_text" id="S5.T3.2.1.15.15.11.1" style="font-size:90%;">31.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.15.15.12"><span class="ltx_text" id="S5.T3.2.1.15.15.12.1" style="font-size:90%;">20.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.15.15.13"><span class="ltx_text" id="S5.T3.2.1.15.15.13.1" style="font-size:90%;">34.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.15.15.14"><span class="ltx_text" id="S5.T3.2.1.15.15.14.1" style="font-size:90%;">23.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.15.15.15"><span class="ltx_text" id="S5.T3.2.1.15.15.15.1" style="font-size:90%;">9.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.15.15.16"><span class="ltx_text" id="S5.T3.2.1.15.15.16.1" style="font-size:90%;">21.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.15.15.17"><span class="ltx_text" id="S5.T3.2.1.15.15.17.1" style="font-size:90%;">26.81</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.1.16.16.1"><span class="ltx_text" id="S5.T3.2.1.16.16.1.1" style="font-size:90%;">GPT-4 (w/o Image)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.16.16.2"><span class="ltx_text" id="S5.T3.2.1.16.16.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.16.16.3"><span class="ltx_text" id="S5.T3.2.1.16.16.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.16.16.4"><span class="ltx_text" id="S5.T3.2.1.16.16.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.16.16.5"><span class="ltx_text" id="S5.T3.2.1.16.16.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.16.16.6"><span class="ltx_text" id="S5.T3.2.1.16.16.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.16.16.7"><span class="ltx_text" id="S5.T3.2.1.16.16.7.1" style="font-size:90%;">69.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.16.16.8"><span class="ltx_text" id="S5.T3.2.1.16.16.8.1" style="font-size:90%;">67.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.16.16.9"><span class="ltx_text" id="S5.T3.2.1.16.16.9.1" style="font-size:90%;">63.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.16.16.10"><span class="ltx_text" id="S5.T3.2.1.16.16.10.1" style="font-size:90%;">78.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.16.16.11"><span class="ltx_text" id="S5.T3.2.1.16.16.11.1" style="font-size:90%;">69.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.16.16.12"><span class="ltx_text" id="S5.T3.2.1.16.16.12.1" style="font-size:90%;">2.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.16.16.13"><span class="ltx_text" id="S5.T3.2.1.16.16.13.1" style="font-size:90%;">2.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.16.16.14"><span class="ltx_text" id="S5.T3.2.1.16.16.14.1" style="font-size:90%;">12.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.16.16.15"><span class="ltx_text" id="S5.T3.2.1.16.16.15.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.16.16.16"><span class="ltx_text" id="S5.T3.2.1.16.16.16.1" style="font-size:90%;">4.25</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.16.16.17"><span class="ltx_text" id="S5.T3.2.1.16.16.17.1" style="font-size:90%;">36.94</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.2.1.17.17.1"><span class="ltx_text" id="S5.T3.2.1.17.17.1.1" style="font-size:90%;">GPT-4o (w/o Image)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.1.17.17.2"><span class="ltx_text" id="S5.T3.2.1.17.17.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.1.17.17.3"><span class="ltx_text" id="S5.T3.2.1.17.17.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.1.17.17.4"><span class="ltx_text" id="S5.T3.2.1.17.17.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.1.17.17.5"><span class="ltx_text" id="S5.T3.2.1.17.17.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.1.17.17.6"><span class="ltx_text" id="S5.T3.2.1.17.17.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.1.17.17.7"><span class="ltx_text" id="S5.T3.2.1.17.17.7.1" style="font-size:90%;">84.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.1.17.17.8"><span class="ltx_text" id="S5.T3.2.1.17.17.8.1" style="font-size:90%;">93.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.1.17.17.9"><span class="ltx_text" id="S5.T3.2.1.17.17.9.1" style="font-size:90%;">92.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.1.17.17.10"><span class="ltx_text" id="S5.T3.2.1.17.17.10.1" style="font-size:90%;">82.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.1.17.17.11"><span class="ltx_text" id="S5.T3.2.1.17.17.11.1" style="font-size:90%;">88.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.1.17.17.12"><span class="ltx_text" id="S5.T3.2.1.17.17.12.1" style="font-size:90%;">92.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.1.17.17.13"><span class="ltx_text" id="S5.T3.2.1.17.17.13.1" style="font-size:90%;">98.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.1.17.17.14"><span class="ltx_text" id="S5.T3.2.1.17.17.14.1" style="font-size:90%;">98.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.1.17.17.15"><span class="ltx_text" id="S5.T3.2.1.17.17.15.1" style="font-size:90%;">93.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.1.17.17.16"><span class="ltx_text" id="S5.T3.2.1.17.17.16.1" style="font-size:90%;">95.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.17.17.17"><span class="ltx_text" id="S5.T3.2.1.17.17.17.1" style="font-size:90%;">91.69</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the instruction-following rate for various Vision-Language Models (VLMs) on the Text-Rich Image Grounding (TRIG) task.  The instruction-following rate quantifies a model's ability to generate at least one bounding box in response to a query, regardless of whether that box is correctly identified. A higher rate suggests better adherence to task instructions. The table shows rates for different datasets (ChartQA, DocVQA, InfographicsVQA, TRINS), different evaluation settings (OCR-free, OCR-based), and an average across all datasets and settings.  The models are ranked according to their average instruction-following rate.
> <details>
> <summary>read the caption</summary>
> Table 3: The Instruction-Following Rate. This value represents VLMs’ capability to follow instructions for this task, i.e., generate at least one bounding box regardless of the correctness of the generation. Avg represents the average score on all datasets and settings, and the ordering is decided by this score.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T4.3.3.4.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.4.1.1.1" style="font-size:90%;">Testsets</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.3.3.4.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.4.1.2.1" style="font-size:90%;">Chart</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.3.3.4.1.3"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.4.1.3.1" style="font-size:90%;">Doc</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.3.3.4.1.4"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.4.1.4.1" style="font-size:90%;">Info</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.3.3.4.1.5"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.4.1.5.1" style="font-size:90%;">Trins</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.3.3.4.1.6"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.4.1.6.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.3.3.5.2.1">
<span class="ltx_text ltx_font_bold" id="S5.T4.3.3.5.2.1.1" style="font-size:90%;">Metrics</span><span class="ltx_text" id="S5.T4.3.3.5.2.1.2" style="font-size:90%;"> (%)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.5.2.2"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.5.2.2.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.5.2.3"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.5.2.3.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.5.2.4"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.5.2.4.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.5.2.5"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.5.2.5.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.5.2.6"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.5.2.6.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.3.3.6.3.1"><span class="ltx_text" id="S5.T4.3.3.6.3.1.1" style="font-size:90%;">No Similarity Merging</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.6.3.2"><span class="ltx_text" id="S5.T4.3.3.6.3.2.1" style="font-size:90%;">8.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.6.3.3"><span class="ltx_text" id="S5.T4.3.3.6.3.3.1" style="font-size:90%;">9.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.6.3.4"><span class="ltx_text" id="S5.T4.3.3.6.3.4.1" style="font-size:90%;">6.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.6.3.5"><span class="ltx_text" id="S5.T4.3.3.6.3.5.1" style="font-size:90%;">14.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.6.3.6"><span class="ltx_text" id="S5.T4.3.3.6.3.6.1" style="font-size:90%;">9.77</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.1.1.1.1">
<span class="ltx_text" id="S5.T4.1.1.1.1.1" style="font-size:90%;">3 </span><math alttext="\times" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.m1.1.1" mathsize="90%" xref="S5.T4.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><times id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S5.T4.1.1.1.1.2" style="font-size:90%;"> 3 </span><span class="ltx_text" id="S5.T4.1.1.1.1.3" style="font-size:90%;"> Similarity Merging</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.1.1.1.2"><span class="ltx_text" id="S5.T4.1.1.1.2.1" style="font-size:90%;">10.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.1.1.1.3"><span class="ltx_text" id="S5.T4.1.1.1.3.1" style="font-size:90%;">11.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.1.1.1.4"><span class="ltx_text" id="S5.T4.1.1.1.4.1" style="font-size:90%;">7.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.1.1.1.5"><span class="ltx_text" id="S5.T4.1.1.1.5.1" style="font-size:90%;">15.65</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.6.1" style="font-size:90%;">11.34</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.2.2.2.1">
<span class="ltx_text" id="S5.T4.2.2.2.1.1" style="font-size:90%;">5 </span><math alttext="\times" class="ltx_Math" display="inline" id="S5.T4.2.2.2.1.m1.1"><semantics id="S5.T4.2.2.2.1.m1.1a"><mo id="S5.T4.2.2.2.1.m1.1.1" mathsize="90%" xref="S5.T4.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.1.m1.1b"><times id="S5.T4.2.2.2.1.m1.1.1.cmml" xref="S5.T4.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S5.T4.2.2.2.1.2" style="font-size:90%;"> 5 </span><span class="ltx_text" id="S5.T4.2.2.2.1.3" style="font-size:90%;"> Similarity Merging</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.2.2.2.2"><span class="ltx_text" id="S5.T4.2.2.2.2.1" style="font-size:90%;">10.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.2.2.2.3"><span class="ltx_text" id="S5.T4.2.2.2.3.1" style="font-size:90%;">11.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.2.2.2.4"><span class="ltx_text" id="S5.T4.2.2.2.4.1" style="font-size:90%;">7.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.2.2.2.5"><span class="ltx_text" id="S5.T4.2.2.2.5.1" style="font-size:90%;">15.14</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.6"><span class="ltx_text" id="S5.T4.2.2.2.6.1" style="font-size:90%;">10.95</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.3.3.3.1">
<span class="ltx_text" id="S5.T4.3.3.3.1.1" style="font-size:90%;">7 </span><math alttext="\times" class="ltx_Math" display="inline" id="S5.T4.3.3.3.1.m1.1"><semantics id="S5.T4.3.3.3.1.m1.1a"><mo id="S5.T4.3.3.3.1.m1.1.1" mathsize="90%" xref="S5.T4.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.1.m1.1b"><times id="S5.T4.3.3.3.1.m1.1.1.cmml" xref="S5.T4.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S5.T4.3.3.3.1.2" style="font-size:90%;"> 7 </span><span class="ltx_text" id="S5.T4.3.3.3.1.3" style="font-size:90%;"> Similarity Merging</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.3.2"><span class="ltx_text" id="S5.T4.3.3.3.2.1" style="font-size:90%;">9.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.3.3"><span class="ltx_text" id="S5.T4.3.3.3.3.1" style="font-size:90%;">10.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.3.4"><span class="ltx_text" id="S5.T4.3.3.3.4.1" style="font-size:90%;">6.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.3.5"><span class="ltx_text" id="S5.T4.3.3.3.5.1" style="font-size:90%;">14.76</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3.6"><span class="ltx_text" id="S5.T4.3.3.3.6.1" style="font-size:90%;">10.50</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.3.3.7.4.1"><span class="ltx_text" id="S5.T4.3.3.7.4.1.1" style="font-size:90%;">Top-5 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.7.4.2"><span class="ltx_text" id="S5.T4.3.3.7.4.2.1" style="font-size:90%;">9.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.7.4.3"><span class="ltx_text" id="S5.T4.3.3.7.4.3.1" style="font-size:90%;">12.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.7.4.4"><span class="ltx_text" id="S5.T4.3.3.7.4.4.1" style="font-size:90%;">7.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.7.4.5"><span class="ltx_text" id="S5.T4.3.3.7.4.5.1" style="font-size:90%;">6.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.7.4.6"><span class="ltx_text" id="S5.T4.3.3.7.4.6.1" style="font-size:90%;">9.02</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.3.3.8.5.1"><span class="ltx_text" id="S5.T4.3.3.8.5.1.1" style="font-size:90%;">Top-10 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.8.5.2"><span class="ltx_text" id="S5.T4.3.3.8.5.2.1" style="font-size:90%;">10.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.8.5.3"><span class="ltx_text" id="S5.T4.3.3.8.5.3.1" style="font-size:90%;">14.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.8.5.4"><span class="ltx_text" id="S5.T4.3.3.8.5.4.1" style="font-size:90%;">8.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.8.5.5"><span class="ltx_text" id="S5.T4.3.3.8.5.5.1" style="font-size:90%;">9.42</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.8.5.6"><span class="ltx_text" id="S5.T4.3.3.8.5.6.1" style="font-size:90%;">10.51</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.3.3.9.6.1"><span class="ltx_text" id="S5.T4.3.3.9.6.1.1" style="font-size:90%;">Top-15 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.9.6.2"><span class="ltx_text" id="S5.T4.3.3.9.6.2.1" style="font-size:90%;">9.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.9.6.3"><span class="ltx_text" id="S5.T4.3.3.9.6.3.1" style="font-size:90%;">13.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.9.6.4"><span class="ltx_text" id="S5.T4.3.3.9.6.4.1" style="font-size:90%;">7.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.9.6.5"><span class="ltx_text" id="S5.T4.3.3.9.6.5.1" style="font-size:90%;">11.25</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.9.6.6"><span class="ltx_text" id="S5.T4.3.3.9.6.6.1" style="font-size:90%;">10.63</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.3.3.10.7.1"><span class="ltx_text" id="S5.T4.3.3.10.7.1.1" style="font-size:90%;">Top-20 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.10.7.2"><span class="ltx_text" id="S5.T4.3.3.10.7.2.1" style="font-size:90%;">9.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.10.7.3"><span class="ltx_text" id="S5.T4.3.3.10.7.3.1" style="font-size:90%;">12.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.10.7.4"><span class="ltx_text" id="S5.T4.3.3.10.7.4.1" style="font-size:90%;">6.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.10.7.5"><span class="ltx_text" id="S5.T4.3.3.10.7.5.1" style="font-size:90%;">12.42</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.10.7.6"><span class="ltx_text" id="S5.T4.3.3.10.7.6.1" style="font-size:90%;">10.41</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.3.3.11.8.1"><span class="ltx_text" id="S5.T4.3.3.11.8.1.1" style="font-size:90%;">Top-25 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.11.8.2"><span class="ltx_text" id="S5.T4.3.3.11.8.2.1" style="font-size:90%;">8.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.11.8.3"><span class="ltx_text" id="S5.T4.3.3.11.8.3.1" style="font-size:90%;">12.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.11.8.4"><span class="ltx_text" id="S5.T4.3.3.11.8.4.1" style="font-size:90%;">6.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.11.8.5"><span class="ltx_text" id="S5.T4.3.3.11.8.5.1" style="font-size:90%;">13.22</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.11.8.6"><span class="ltx_text" id="S5.T4.3.3.11.8.6.1" style="font-size:90%;">10.18</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.12.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.3.3.12.9.1"><span class="ltx_text" id="S5.T4.3.3.12.9.1.1" style="font-size:90%;">Top-30 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.12.9.2"><span class="ltx_text" id="S5.T4.3.3.12.9.2.1" style="font-size:90%;">8.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.12.9.3"><span class="ltx_text" id="S5.T4.3.3.12.9.3.1" style="font-size:90%;">11.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.12.9.4"><span class="ltx_text" id="S5.T4.3.3.12.9.4.1" style="font-size:90%;">6.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.12.9.5"><span class="ltx_text" id="S5.T4.3.3.12.9.5.1" style="font-size:90%;">13.91</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.12.9.6"><span class="ltx_text" id="S5.T4.3.3.12.9.6.1" style="font-size:90%;">9.89</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.13.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.3.3.13.10.1"><span class="ltx_text" id="S5.T4.3.3.13.10.1.1" style="font-size:90%;">Top-5 + Top-10 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.13.10.2"><span class="ltx_text" id="S5.T4.3.3.13.10.2.1" style="font-size:90%;">10.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.13.10.3"><span class="ltx_text" id="S5.T4.3.3.13.10.3.1" style="font-size:90%;">14.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.13.10.4"><span class="ltx_text" id="S5.T4.3.3.13.10.4.1" style="font-size:90%;">8.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.3.3.13.10.5"><span class="ltx_text" id="S5.T4.3.3.13.10.5.1" style="font-size:90%;">9.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.13.10.6"><span class="ltx_text" id="S5.T4.3.3.13.10.6.1" style="font-size:90%;">10.91</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.14.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.3.3.14.11.1"><span class="ltx_text" id="S5.T4.3.3.14.11.1.1" style="font-size:90%;">Top-5 + Top-15 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.14.11.2"><span class="ltx_text" id="S5.T4.3.3.14.11.2.1" style="font-size:90%;">10.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.14.11.3"><span class="ltx_text" id="S5.T4.3.3.14.11.3.1" style="font-size:90%;">15.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.14.11.4"><span class="ltx_text" id="S5.T4.3.3.14.11.4.1" style="font-size:90%;">8.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.14.11.5"><span class="ltx_text" id="S5.T4.3.3.14.11.5.1" style="font-size:90%;">11.13</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.14.11.6"><span class="ltx_text" id="S5.T4.3.3.14.11.6.1" style="font-size:90%;">11.47</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.15.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.3.3.15.12.1"><span class="ltx_text" id="S5.T4.3.3.15.12.1.1" style="font-size:90%;">Top-5 + Top-20 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.15.12.2"><span class="ltx_text" id="S5.T4.3.3.15.12.2.1" style="font-size:90%;">10.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.15.12.3"><span class="ltx_text" id="S5.T4.3.3.15.12.3.1" style="font-size:90%;">15.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.15.12.4"><span class="ltx_text" id="S5.T4.3.3.15.12.4.1" style="font-size:90%;">8.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.15.12.5"><span class="ltx_text" id="S5.T4.3.3.15.12.5.1" style="font-size:90%;">12.24</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.15.12.6"><span class="ltx_text" id="S5.T4.3.3.15.12.6.1" style="font-size:90%;">11.64</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.16.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.3.3.16.13.1"><span class="ltx_text" id="S5.T4.3.3.16.13.1.1" style="font-size:90%;">Top-5 + Top-25 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.16.13.2"><span class="ltx_text" id="S5.T4.3.3.16.13.2.1" style="font-size:90%;">10.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.16.13.3"><span class="ltx_text" id="S5.T4.3.3.16.13.3.1" style="font-size:90%;">15.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.16.13.4"><span class="ltx_text" id="S5.T4.3.3.16.13.4.1" style="font-size:90%;">8.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.16.13.5"><span class="ltx_text" id="S5.T4.3.3.16.13.5.1" style="font-size:90%;">13.13</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.16.13.6"><span class="ltx_text" id="S5.T4.3.3.16.13.6.1" style="font-size:90%;">11.78</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.17.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T4.3.3.17.14.1"><span class="ltx_text" id="S5.T4.3.3.17.14.1.1" style="font-size:90%;">Top-5 + Top-30 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.3.3.17.14.2"><span class="ltx_text" id="S5.T4.3.3.17.14.2.1" style="font-size:90%;">10.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.3.3.17.14.3"><span class="ltx_text" id="S5.T4.3.3.17.14.3.1" style="font-size:90%;">15.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.3.3.17.14.4"><span class="ltx_text" id="S5.T4.3.3.17.14.4.1" style="font-size:90%;">7.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.3.3.17.14.5"><span class="ltx_text" id="S5.T4.3.3.17.14.5.1" style="font-size:90%;">13.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.17.14.6"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.17.14.6.1" style="font-size:90%;">11.82</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results for the embedding-based method used in the OCR-free grounding setting.  It shows how different configurations affect performance. Specifically, it analyzes the impact of embedding merging techniques (with varying window sizes) and the 2-level selection mechanism on the model's ability to accurately identify image patches relevant to the question's answer. The results demonstrate the effectiveness of both the embedding merging and the 2-level selection method in improving the accuracy of visual text grounding.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation studies of our embedding-based method on OCR-free grounding setting. The results illustrate the effectiveness of our proposed embedding merging and 2-level selection mechanism.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.2.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T5.2.1.1.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T5.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.1.1.2.1" style="font-size:90%;">Chart</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T5.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.1.1.3.1" style="font-size:90%;">Doc</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T5.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.1.1.4.1" style="font-size:90%;">Info</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T5.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.1.1.5.1" style="font-size:90%;">Trins</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.1.1.6.1" style="font-size:90%;">Total</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.2.1.2.2.1"><span class="ltx_text" id="A1.T5.2.1.2.2.1.1" style="font-size:90%;">Total Question #</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.1.2.2.2"><span class="ltx_text" id="A1.T5.2.1.2.2.2.1" style="font-size:90%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.1.2.2.3"><span class="ltx_text" id="A1.T5.2.1.2.2.3.1" style="font-size:90%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.1.2.2.4"><span class="ltx_text" id="A1.T5.2.1.2.2.4.1" style="font-size:90%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.1.2.2.5"><span class="ltx_text" id="A1.T5.2.1.2.2.5.1" style="font-size:90%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.1.2.2.6"><span class="ltx_text" id="A1.T5.2.1.2.2.6.1" style="font-size:90%;">800</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.2.1.3.3.1"><span class="ltx_text" id="A1.T5.2.1.3.3.1.1" style="font-size:90%;">Total Image #</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.3.3.2"><span class="ltx_text" id="A1.T5.2.1.3.3.2.1" style="font-size:90%;">171</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.3.3.3"><span class="ltx_text" id="A1.T5.2.1.3.3.3.1" style="font-size:90%;">190</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.3.3.4"><span class="ltx_text" id="A1.T5.2.1.3.3.4.1" style="font-size:90%;">199</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.3.3.5"><span class="ltx_text" id="A1.T5.2.1.3.3.5.1" style="font-size:90%;">199</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.1.3.3.6"><span class="ltx_text" id="A1.T5.2.1.3.3.6.1" style="font-size:90%;">759</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.2.1.4.4.1"><span class="ltx_text" id="A1.T5.2.1.4.4.1.1" style="font-size:90%;">Avg Question Len</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.1.4.4.2"><span class="ltx_text" id="A1.T5.2.1.4.4.2.1" style="font-size:90%;">11.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.1.4.4.3"><span class="ltx_text" id="A1.T5.2.1.4.4.3.1" style="font-size:90%;">9.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.1.4.4.4"><span class="ltx_text" id="A1.T5.2.1.4.4.4.1" style="font-size:90%;">12.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.1.4.4.5"><span class="ltx_text" id="A1.T5.2.1.4.4.5.1" style="font-size:90%;">11.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.1.4.4.6"><span class="ltx_text" id="A1.T5.2.1.4.4.6.1" style="font-size:90%;">11.20</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.2.1.5.5.1"><span class="ltx_text" id="A1.T5.2.1.5.5.1.1" style="font-size:90%;">Avg Answer Len</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.5.5.2"><span class="ltx_text" id="A1.T5.2.1.5.5.2.1" style="font-size:90%;">1.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.5.5.3"><span class="ltx_text" id="A1.T5.2.1.5.5.3.1" style="font-size:90%;">2.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.5.5.4"><span class="ltx_text" id="A1.T5.2.1.5.5.4.1" style="font-size:90%;">1.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.5.5.5"><span class="ltx_text" id="A1.T5.2.1.5.5.5.1" style="font-size:90%;">19.48</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.1.5.5.6"><span class="ltx_text" id="A1.T5.2.1.5.5.6.1" style="font-size:90%;">6.44</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.2.1.6.6.1"><span class="ltx_text" id="A1.T5.2.1.6.6.1.1" style="font-size:90%;">Avg OCR Text Len</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.6.6.2"><span class="ltx_text" id="A1.T5.2.1.6.6.2.1" style="font-size:90%;">2.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.6.6.3"><span class="ltx_text" id="A1.T5.2.1.6.6.3.1" style="font-size:90%;">4.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.6.6.4"><span class="ltx_text" id="A1.T5.2.1.6.6.4.1" style="font-size:90%;">3.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.6.6.5"><span class="ltx_text" id="A1.T5.2.1.6.6.5.1" style="font-size:90%;">3.00</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.1.6.6.6"><span class="ltx_text" id="A1.T5.2.1.6.6.6.1" style="font-size:90%;">3.36</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.2.1.7.7.1"><span class="ltx_text" id="A1.T5.2.1.7.7.1.1" style="font-size:90%;">Avg OCR Box #</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.1.7.7.2"><span class="ltx_text" id="A1.T5.2.1.7.7.2.1" style="font-size:90%;">26.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.1.7.7.3"><span class="ltx_text" id="A1.T5.2.1.7.7.3.1" style="font-size:90%;">53.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.1.7.7.4"><span class="ltx_text" id="A1.T5.2.1.7.7.4.1" style="font-size:90%;">102.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.1.7.7.5"><span class="ltx_text" id="A1.T5.2.1.7.7.5.1" style="font-size:90%;">8.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.1.7.7.6"><span class="ltx_text" id="A1.T5.2.1.7.7.6.1" style="font-size:90%;">47.66</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.2.1.8.8.1"><span class="ltx_text" id="A1.T5.2.1.8.8.1.1" style="font-size:90%;">Avg GT Box #</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.8.8.2"><span class="ltx_text" id="A1.T5.2.1.8.8.2.1" style="font-size:90%;">2.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.8.8.3"><span class="ltx_text" id="A1.T5.2.1.8.8.3.1" style="font-size:90%;">1.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.8.8.4"><span class="ltx_text" id="A1.T5.2.1.8.8.4.1" style="font-size:90%;">2.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.8.8.5"><span class="ltx_text" id="A1.T5.2.1.8.8.5.1" style="font-size:90%;">2.45</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.1.8.8.6"><span class="ltx_text" id="A1.T5.2.1.8.8.6.1" style="font-size:90%;">2.41</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.2.1.9.9.1"><span class="ltx_text" id="A1.T5.2.1.9.9.1.1" style="font-size:90%;">Avg GT Box Ratio</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.9.9.2"><span class="ltx_text" id="A1.T5.2.1.9.9.2.1" style="font-size:90%;">11.83%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.9.9.3"><span class="ltx_text" id="A1.T5.2.1.9.9.3.1" style="font-size:90%;">4.88%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.9.9.4"><span class="ltx_text" id="A1.T5.2.1.9.9.4.1" style="font-size:90%;">3.72%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.9.9.5"><span class="ltx_text" id="A1.T5.2.1.9.9.5.1" style="font-size:90%;">37.74%</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.1.9.9.6"><span class="ltx_text" id="A1.T5.2.1.9.9.6.1" style="font-size:90%;">14.54%</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.2.1.10.10.1"><span class="ltx_text" id="A1.T5.2.1.10.10.1.1" style="font-size:90%;">Avg OCR Area (%)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.1.10.10.2"><span class="ltx_text" id="A1.T5.2.1.10.10.2.1" style="font-size:90%;">12.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.1.10.10.3"><span class="ltx_text" id="A1.T5.2.1.10.10.3.1" style="font-size:90%;">19.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.1.10.10.4"><span class="ltx_text" id="A1.T5.2.1.10.10.4.1" style="font-size:90%;">18.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.1.10.10.5"><span class="ltx_text" id="A1.T5.2.1.10.10.5.1" style="font-size:90%;">15.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.1.10.10.6"><span class="ltx_text" id="A1.T5.2.1.10.10.6.1" style="font-size:90%;">16.61</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.2.1.11.11.1"><span class="ltx_text" id="A1.T5.2.1.11.11.1.1" style="font-size:90%;">Avg GT Area (%)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.11.11.2"><span class="ltx_text" id="A1.T5.2.1.11.11.2.1" style="font-size:90%;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.11.11.3"><span class="ltx_text" id="A1.T5.2.1.11.11.3.1" style="font-size:90%;">0.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.11.11.4"><span class="ltx_text" id="A1.T5.2.1.11.11.4.1" style="font-size:90%;">0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.1.11.11.5"><span class="ltx_text" id="A1.T5.2.1.11.11.5.1" style="font-size:90%;">6.09</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.1.11.11.6"><span class="ltx_text" id="A1.T5.2.1.11.11.6.1" style="font-size:90%;">2.05</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T5.2.1.12.12.1"><span class="ltx_text" id="A1.T5.2.1.12.12.1.1" style="font-size:90%;">Avg GT Area Ratio</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.2.1.12.12.2"><span class="ltx_text" id="A1.T5.2.1.12.12.2.1" style="font-size:90%;">8.59%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.2.1.12.12.3"><span class="ltx_text" id="A1.T5.2.1.12.12.3.1" style="font-size:90%;">5.10%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.2.1.12.12.4"><span class="ltx_text" id="A1.T5.2.1.12.12.4.1" style="font-size:90%;">2.89%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.2.1.12.12.5"><span class="ltx_text" id="A1.T5.2.1.12.12.5.1" style="font-size:90%;">42.69%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.2.1.12.12.6"><span class="ltx_text" id="A1.T5.2.1.12.12.6.1" style="font-size:90%;">14.82%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a statistical overview of the benchmark dataset used for evaluating visual text grounding in text-rich document images.  It details the number of unique questions and images sourced from four different datasets: ChartQA, DocVQA, InfographicsVQA, and TRINS.  In addition to the counts, average lengths of questions, answers, and OCR-extracted text are shown, alongside the average number of bounding boxes identified by the OCR system and manually labeled ground truth boxes.  Finally, it displays the ratio of the ground truth bounding box area to the total OCR bounding box area to offer further insight into data characteristics.
> <details>
> <summary>read the caption</summary>
> Table 5: Benchmark Data Statistics.  Total Question # represents the unique question number from each dataset. Total Image # represents the Unique image number. Other statistics are averaged on each dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T6.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T6.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A3.T6.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.1.1.1.1" style="font-size:90%;">Metrics</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="A3.T6.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.1.1.2.1" style="font-size:90%;">ChartQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="A3.T6.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.1.1.3.1" style="font-size:90%;">DocVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="A3.T6.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.1.1.4.1" style="font-size:90%;">InfographicsVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="A3.T6.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.1.1.5.1" style="font-size:90%;">TRINS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.1.1.6.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.1.1" style="font-size:90%;">Testsets</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.2"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.2.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.3"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.3.1" style="font-size:90%;">P</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.4"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.4.1" style="font-size:90%;">R</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.5"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.5.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.6"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.6.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.7"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.7.1" style="font-size:90%;">P</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.8"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.8.1" style="font-size:90%;">R</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.9"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.9.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.10"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.10.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.11"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.11.1" style="font-size:90%;">P</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.12"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.12.1" style="font-size:90%;">R</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.13"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.13.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.14"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.14.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.15"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.15.1" style="font-size:90%;">P</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.16"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.16.1" style="font-size:90%;">R</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.2.2.17"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.17.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.2.1.2.2.18"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.2.2.18.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.1"><span class="ltx_text" id="A3.T6.2.1.3.3.1.1" style="font-size:90%;">Idefics2-8b</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.2"><span class="ltx_text" id="A3.T6.2.1.3.3.2.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.3"><span class="ltx_text" id="A3.T6.2.1.3.3.3.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.4"><span class="ltx_text" id="A3.T6.2.1.3.3.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.5"><span class="ltx_text" id="A3.T6.2.1.3.3.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.6"><span class="ltx_text" id="A3.T6.2.1.3.3.6.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.7"><span class="ltx_text" id="A3.T6.2.1.3.3.7.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.8"><span class="ltx_text" id="A3.T6.2.1.3.3.8.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.9"><span class="ltx_text" id="A3.T6.2.1.3.3.9.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.10"><span class="ltx_text" id="A3.T6.2.1.3.3.10.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.11"><span class="ltx_text" id="A3.T6.2.1.3.3.11.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.12"><span class="ltx_text" id="A3.T6.2.1.3.3.12.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.13"><span class="ltx_text" id="A3.T6.2.1.3.3.13.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.14"><span class="ltx_text" id="A3.T6.2.1.3.3.14.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.15"><span class="ltx_text" id="A3.T6.2.1.3.3.15.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.16"><span class="ltx_text" id="A3.T6.2.1.3.3.16.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.3.3.17"><span class="ltx_text" id="A3.T6.2.1.3.3.17.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.2.1.3.3.18"><span class="ltx_text" id="A3.T6.2.1.3.3.18.1" style="font-size:90%;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T6.2.1.4.4.1"><span class="ltx_text" id="A3.T6.2.1.4.4.1.1" style="font-size:90%;">DeepSeek-VL-7B-chat</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.4.4.2"><span class="ltx_text" id="A3.T6.2.1.4.4.2.1" style="font-size:90%;">0.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.4.4.3"><span class="ltx_text" id="A3.T6.2.1.4.4.3.1" style="font-size:90%;">0.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.4.4.4"><span class="ltx_text" id="A3.T6.2.1.4.4.4.1" style="font-size:90%;">3.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.4.4.5"><span class="ltx_text" id="A3.T6.2.1.4.4.5.1" style="font-size:90%;">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.4.4.6"><span class="ltx_text" id="A3.T6.2.1.4.4.6.1" style="font-size:90%;">0.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.4.4.7"><span class="ltx_text" id="A3.T6.2.1.4.4.7.1" style="font-size:90%;">0.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.4.4.8"><span class="ltx_text" id="A3.T6.2.1.4.4.8.1" style="font-size:90%;">1.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.4.4.9"><span class="ltx_text" id="A3.T6.2.1.4.4.9.1" style="font-size:90%;">0.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.4.4.10"><span class="ltx_text" id="A3.T6.2.1.4.4.10.1" style="font-size:90%;">0.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.4.4.11"><span class="ltx_text" id="A3.T6.2.1.4.4.11.1" style="font-size:90%;">0.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.4.4.12"><span class="ltx_text" id="A3.T6.2.1.4.4.12.1" style="font-size:90%;">0.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.4.4.13"><span class="ltx_text" id="A3.T6.2.1.4.4.13.1" style="font-size:90%;">0.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.4.4.14"><span class="ltx_text" id="A3.T6.2.1.4.4.14.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.4.4.15"><span class="ltx_text" id="A3.T6.2.1.4.4.15.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.4.4.16"><span class="ltx_text" id="A3.T6.2.1.4.4.16.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.4.4.17"><span class="ltx_text" id="A3.T6.2.1.4.4.17.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.1.4.4.18"><span class="ltx_text" id="A3.T6.2.1.4.4.18.1" style="font-size:90%;">0.37</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T6.2.1.5.5.1"><span class="ltx_text" id="A3.T6.2.1.5.5.1.1" style="font-size:90%;">InternLM-XComposer2-4KHD-7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.5.5.2"><span class="ltx_text" id="A3.T6.2.1.5.5.2.1" style="font-size:90%;">0.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.5.5.3"><span class="ltx_text" id="A3.T6.2.1.5.5.3.1" style="font-size:90%;">0.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.5.5.4"><span class="ltx_text" id="A3.T6.2.1.5.5.4.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.5.5.5"><span class="ltx_text" id="A3.T6.2.1.5.5.5.1" style="font-size:90%;">0.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.5.5.6"><span class="ltx_text" id="A3.T6.2.1.5.5.6.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.5.5.7"><span class="ltx_text" id="A3.T6.2.1.5.5.7.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.5.5.8"><span class="ltx_text" id="A3.T6.2.1.5.5.8.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.5.5.9"><span class="ltx_text" id="A3.T6.2.1.5.5.9.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.5.5.10"><span class="ltx_text" id="A3.T6.2.1.5.5.10.1" style="font-size:90%;">0.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.5.5.11"><span class="ltx_text" id="A3.T6.2.1.5.5.11.1" style="font-size:90%;">0.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.5.5.12"><span class="ltx_text" id="A3.T6.2.1.5.5.12.1" style="font-size:90%;">2.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.5.5.13"><span class="ltx_text" id="A3.T6.2.1.5.5.13.1" style="font-size:90%;">0.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.5.5.14"><span class="ltx_text" id="A3.T6.2.1.5.5.14.1" style="font-size:90%;">2.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.5.5.15"><span class="ltx_text" id="A3.T6.2.1.5.5.15.1" style="font-size:90%;">5.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.5.5.16"><span class="ltx_text" id="A3.T6.2.1.5.5.16.1" style="font-size:90%;">2.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.5.5.17"><span class="ltx_text" id="A3.T6.2.1.5.5.17.1" style="font-size:90%;">2.97</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.1.5.5.18"><span class="ltx_text" id="A3.T6.2.1.5.5.18.1" style="font-size:90%;">1.10</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T6.2.1.6.6.1"><span class="ltx_text" id="A3.T6.2.1.6.6.1.1" style="font-size:90%;">CogVLM2-Llama3-19B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.6.6.2"><span class="ltx_text" id="A3.T6.2.1.6.6.2.1" style="font-size:90%;">0.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.6.6.3"><span class="ltx_text" id="A3.T6.2.1.6.6.3.1" style="font-size:90%;">0.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.6.6.4"><span class="ltx_text" id="A3.T6.2.1.6.6.4.1" style="font-size:90%;">3.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.6.6.5"><span class="ltx_text" id="A3.T6.2.1.6.6.5.1" style="font-size:90%;">0.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.6.6.6"><span class="ltx_text" id="A3.T6.2.1.6.6.6.1" style="font-size:90%;">0.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.6.6.7"><span class="ltx_text" id="A3.T6.2.1.6.6.7.1" style="font-size:90%;">0.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.6.6.8"><span class="ltx_text" id="A3.T6.2.1.6.6.8.1" style="font-size:90%;">3.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.6.6.9"><span class="ltx_text" id="A3.T6.2.1.6.6.9.1" style="font-size:90%;">0.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.6.6.10"><span class="ltx_text" id="A3.T6.2.1.6.6.10.1" style="font-size:90%;">0.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.6.6.11"><span class="ltx_text" id="A3.T6.2.1.6.6.11.1" style="font-size:90%;">0.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.6.6.12"><span class="ltx_text" id="A3.T6.2.1.6.6.12.1" style="font-size:90%;">2.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.6.6.13"><span class="ltx_text" id="A3.T6.2.1.6.6.13.1" style="font-size:90%;">0.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.6.6.14"><span class="ltx_text" id="A3.T6.2.1.6.6.14.1" style="font-size:90%;">3.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.6.6.15"><span class="ltx_text" id="A3.T6.2.1.6.6.15.1" style="font-size:90%;">4.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.6.6.16"><span class="ltx_text" id="A3.T6.2.1.6.6.16.1" style="font-size:90%;">7.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.6.6.17"><span class="ltx_text" id="A3.T6.2.1.6.6.17.1" style="font-size:90%;">4.67</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.1.6.6.18"><span class="ltx_text" id="A3.T6.2.1.6.6.18.1" style="font-size:90%;">2.09</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T6.2.1.7.7.1"><span class="ltx_text" id="A3.T6.2.1.7.7.1.1" style="font-size:90%;">Phi3-V</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.7.7.2"><span class="ltx_text" id="A3.T6.2.1.7.7.2.1" style="font-size:90%;">1.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.7.7.3"><span class="ltx_text" id="A3.T6.2.1.7.7.3.1" style="font-size:90%;">1.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.7.7.4"><span class="ltx_text" id="A3.T6.2.1.7.7.4.1" style="font-size:90%;">5.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.7.7.5"><span class="ltx_text" id="A3.T6.2.1.7.7.5.1" style="font-size:90%;">1.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.7.7.6"><span class="ltx_text" id="A3.T6.2.1.7.7.6.1" style="font-size:90%;">0.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.7.7.7"><span class="ltx_text" id="A3.T6.2.1.7.7.7.1" style="font-size:90%;">0.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.7.7.8"><span class="ltx_text" id="A3.T6.2.1.7.7.8.1" style="font-size:90%;">1.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.7.7.9"><span class="ltx_text" id="A3.T6.2.1.7.7.9.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.7.7.10"><span class="ltx_text" id="A3.T6.2.1.7.7.10.1" style="font-size:90%;">0.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.7.7.11"><span class="ltx_text" id="A3.T6.2.1.7.7.11.1" style="font-size:90%;">0.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.7.7.12"><span class="ltx_text" id="A3.T6.2.1.7.7.12.1" style="font-size:90%;">2.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.7.7.13"><span class="ltx_text" id="A3.T6.2.1.7.7.13.1" style="font-size:90%;">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.7.7.14"><span class="ltx_text" id="A3.T6.2.1.7.7.14.1" style="font-size:90%;">6.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.7.7.15"><span class="ltx_text" id="A3.T6.2.1.7.7.15.1" style="font-size:90%;">6.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.7.7.16"><span class="ltx_text" id="A3.T6.2.1.7.7.16.1" style="font-size:90%;">11.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.7.7.17"><span class="ltx_text" id="A3.T6.2.1.7.7.17.1" style="font-size:90%;">7.17</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.1.7.7.18"><span class="ltx_text" id="A3.T6.2.1.7.7.18.1" style="font-size:90%;">3.04</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T6.2.1.8.8.1"><span class="ltx_text" id="A3.T6.2.1.8.8.1.1" style="font-size:90%;">LLaVA-v1.6-Vicuna-7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.8.8.2"><span class="ltx_text" id="A3.T6.2.1.8.8.2.1" style="font-size:90%;">0.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.8.8.3"><span class="ltx_text" id="A3.T6.2.1.8.8.3.1" style="font-size:90%;">0.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.8.8.4"><span class="ltx_text" id="A3.T6.2.1.8.8.4.1" style="font-size:90%;">5.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.8.8.5"><span class="ltx_text" id="A3.T6.2.1.8.8.5.1" style="font-size:90%;">1.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.8.8.6"><span class="ltx_text" id="A3.T6.2.1.8.8.6.1" style="font-size:90%;">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.8.8.7"><span class="ltx_text" id="A3.T6.2.1.8.8.7.1" style="font-size:90%;">0.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.8.8.8"><span class="ltx_text" id="A3.T6.2.1.8.8.8.1" style="font-size:90%;">9.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.8.8.9"><span class="ltx_text" id="A3.T6.2.1.8.8.9.1" style="font-size:90%;">1.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.8.8.10"><span class="ltx_text" id="A3.T6.2.1.8.8.10.1" style="font-size:90%;">0.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.8.8.11"><span class="ltx_text" id="A3.T6.2.1.8.8.11.1" style="font-size:90%;">0.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.8.8.12"><span class="ltx_text" id="A3.T6.2.1.8.8.12.1" style="font-size:90%;">3.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.8.8.13"><span class="ltx_text" id="A3.T6.2.1.8.8.13.1" style="font-size:90%;">0.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.8.8.14"><span class="ltx_text" id="A3.T6.2.1.8.8.14.1" style="font-size:90%;">3.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.8.8.15"><span class="ltx_text" id="A3.T6.2.1.8.8.15.1" style="font-size:90%;">3.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.8.8.16"><span class="ltx_text" id="A3.T6.2.1.8.8.16.1" style="font-size:90%;">11.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.8.8.17"><span class="ltx_text" id="A3.T6.2.1.8.8.17.1" style="font-size:90%;">5.08</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.1.8.8.18"><span class="ltx_text" id="A3.T6.2.1.8.8.18.1" style="font-size:90%;">3.12</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T6.2.1.9.9.1"><span class="ltx_text" id="A3.T6.2.1.9.9.1.1" style="font-size:90%;">InternLM-XComposer2-VL-7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.9.9.2"><span class="ltx_text" id="A3.T6.2.1.9.9.2.1" style="font-size:90%;">2.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.9.9.3"><span class="ltx_text" id="A3.T6.2.1.9.9.3.1" style="font-size:90%;">3.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.9.9.4"><span class="ltx_text" id="A3.T6.2.1.9.9.4.1" style="font-size:90%;">5.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.9.9.5"><span class="ltx_text" id="A3.T6.2.1.9.9.5.1" style="font-size:90%;">3.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.9.9.6"><span class="ltx_text" id="A3.T6.2.1.9.9.6.1" style="font-size:90%;">2.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.9.9.7"><span class="ltx_text" id="A3.T6.2.1.9.9.7.1" style="font-size:90%;">3.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.9.9.8"><span class="ltx_text" id="A3.T6.2.1.9.9.8.1" style="font-size:90%;">2.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.9.9.9"><span class="ltx_text" id="A3.T6.2.1.9.9.9.1" style="font-size:90%;">2.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.9.9.10"><span class="ltx_text" id="A3.T6.2.1.9.9.10.1" style="font-size:90%;">0.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.9.9.11"><span class="ltx_text" id="A3.T6.2.1.9.9.11.1" style="font-size:90%;">1.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.9.9.12"><span class="ltx_text" id="A3.T6.2.1.9.9.12.1" style="font-size:90%;">2.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.9.9.13"><span class="ltx_text" id="A3.T6.2.1.9.9.13.1" style="font-size:90%;">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.9.9.14"><span class="ltx_text" id="A3.T6.2.1.9.9.14.1" style="font-size:90%;">8.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.9.9.15"><span class="ltx_text" id="A3.T6.2.1.9.9.15.1" style="font-size:90%;">12.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.9.9.16"><span class="ltx_text" id="A3.T6.2.1.9.9.16.1" style="font-size:90%;">10.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.9.9.17"><span class="ltx_text" id="A3.T6.2.1.9.9.17.1" style="font-size:90%;">10.26</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.1.9.9.18"><span class="ltx_text" id="A3.T6.2.1.9.9.18.1" style="font-size:90%;">4.47</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T6.2.1.10.10.1"><span class="ltx_text" id="A3.T6.2.1.10.10.1.1" style="font-size:90%;">Qwen-VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.10.10.2"><span class="ltx_text" id="A3.T6.2.1.10.10.2.1" style="font-size:90%;">4.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.10.10.3"><span class="ltx_text" id="A3.T6.2.1.10.10.3.1" style="font-size:90%;">4.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.10.10.4"><span class="ltx_text" id="A3.T6.2.1.10.10.4.1" style="font-size:90%;">35.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.10.10.5"><span class="ltx_text" id="A3.T6.2.1.10.10.5.1" style="font-size:90%;">7.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.10.10.6"><span class="ltx_text" id="A3.T6.2.1.10.10.6.1" style="font-size:90%;">1.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.10.10.7"><span class="ltx_text" id="A3.T6.2.1.10.10.7.1" style="font-size:90%;">1.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.10.10.8"><span class="ltx_text" id="A3.T6.2.1.10.10.8.1" style="font-size:90%;">11.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.10.10.9"><span class="ltx_text" id="A3.T6.2.1.10.10.9.1" style="font-size:90%;">2.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.10.10.10"><span class="ltx_text" id="A3.T6.2.1.10.10.10.1" style="font-size:90%;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.10.10.11"><span class="ltx_text" id="A3.T6.2.1.10.10.11.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.10.10.12"><span class="ltx_text" id="A3.T6.2.1.10.10.12.1" style="font-size:90%;">7.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.10.10.13"><span class="ltx_text" id="A3.T6.2.1.10.10.13.1" style="font-size:90%;">1.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.10.10.14"><span class="ltx_text" id="A3.T6.2.1.10.10.14.1" style="font-size:90%;">0.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.10.10.15"><span class="ltx_text" id="A3.T6.2.1.10.10.15.1" style="font-size:90%;">0.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.10.10.16"><span class="ltx_text" id="A3.T6.2.1.10.10.16.1" style="font-size:90%;">2.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.10.10.17"><span class="ltx_text" id="A3.T6.2.1.10.10.17.1" style="font-size:90%;">1.20</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.1.10.10.18"><span class="ltx_text" id="A3.T6.2.1.10.10.18.1" style="font-size:90%;">5.24</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T6.2.1.11.11.1"><span class="ltx_text" id="A3.T6.2.1.11.11.1.1" style="font-size:90%;">Monkey-chat</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.11.11.2"><span class="ltx_text" id="A3.T6.2.1.11.11.2.1" style="font-size:90%;">6.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.11.11.3"><span class="ltx_text" id="A3.T6.2.1.11.11.3.1" style="font-size:90%;">6.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.11.11.4"><span class="ltx_text" id="A3.T6.2.1.11.11.4.1" style="font-size:90%;">40.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.11.11.5"><span class="ltx_text" id="A3.T6.2.1.11.11.5.1" style="font-size:90%;">10.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.11.11.6"><span class="ltx_text" id="A3.T6.2.1.11.11.6.1" style="font-size:90%;">1.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.11.11.7"><span class="ltx_text" id="A3.T6.2.1.11.11.7.1" style="font-size:90%;">1.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.11.11.8"><span class="ltx_text" id="A3.T6.2.1.11.11.8.1" style="font-size:90%;">18.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.11.11.9"><span class="ltx_text" id="A3.T6.2.1.11.11.9.1" style="font-size:90%;">2.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.11.11.10"><span class="ltx_text" id="A3.T6.2.1.11.11.10.1" style="font-size:90%;">1.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.11.11.11"><span class="ltx_text" id="A3.T6.2.1.11.11.11.1" style="font-size:90%;">1.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.11.11.12"><span class="ltx_text" id="A3.T6.2.1.11.11.12.1" style="font-size:90%;">11.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.11.11.13"><span class="ltx_text" id="A3.T6.2.1.11.11.13.1" style="font-size:90%;">2.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.11.11.14"><span class="ltx_text" id="A3.T6.2.1.11.11.14.1" style="font-size:90%;">0.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.11.11.15"><span class="ltx_text" id="A3.T6.2.1.11.11.15.1" style="font-size:90%;">0.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.11.11.16"><span class="ltx_text" id="A3.T6.2.1.11.11.16.1" style="font-size:90%;">1.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.11.11.17"><span class="ltx_text" id="A3.T6.2.1.11.11.17.1" style="font-size:90%;">0.79</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.1.11.11.18"><span class="ltx_text" id="A3.T6.2.1.11.11.18.1" style="font-size:90%;">6.70</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T6.2.1.12.12.1"><span class="ltx_text" id="A3.T6.2.1.12.12.1.1" style="font-size:90%;">MiniCPM-Llama3-V 2.5</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.12.12.2"><span class="ltx_text" id="A3.T6.2.1.12.12.2.1" style="font-size:90%;">2.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.12.12.3"><span class="ltx_text" id="A3.T6.2.1.12.12.3.1" style="font-size:90%;">3.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.12.12.4"><span class="ltx_text" id="A3.T6.2.1.12.12.4.1" style="font-size:90%;">3.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.12.12.5"><span class="ltx_text" id="A3.T6.2.1.12.12.5.1" style="font-size:90%;">3.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.12.12.6"><span class="ltx_text" id="A3.T6.2.1.12.12.6.1" style="font-size:90%;">4.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.12.12.7"><span class="ltx_text" id="A3.T6.2.1.12.12.7.1" style="font-size:90%;">6.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.12.12.8"><span class="ltx_text" id="A3.T6.2.1.12.12.8.1" style="font-size:90%;">5.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.12.12.9"><span class="ltx_text" id="A3.T6.2.1.12.12.9.1" style="font-size:90%;">5.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.12.12.10"><span class="ltx_text" id="A3.T6.2.1.12.12.10.1" style="font-size:90%;">0.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.12.12.11"><span class="ltx_text" id="A3.T6.2.1.12.12.11.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.12.12.12"><span class="ltx_text" id="A3.T6.2.1.12.12.12.1" style="font-size:90%;">1.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.12.12.13"><span class="ltx_text" id="A3.T6.2.1.12.12.13.1" style="font-size:90%;">0.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.12.12.14"><span class="ltx_text" id="A3.T6.2.1.12.12.14.1" style="font-size:90%;">23.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.12.12.15"><span class="ltx_text" id="A3.T6.2.1.12.12.15.1" style="font-size:90%;">41.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.12.12.16"><span class="ltx_text" id="A3.T6.2.1.12.12.16.1" style="font-size:90%;">27.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.12.12.17"><span class="ltx_text" id="A3.T6.2.1.12.12.17.1" style="font-size:90%;">29.46</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.1.12.12.18"><span class="ltx_text" id="A3.T6.2.1.12.12.18.1" style="font-size:90%;">10.02</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T6.2.1.13.13.1"><span class="ltx_text" id="A3.T6.2.1.13.13.1.1" style="font-size:90%;">LLaVA-v1.6-Vicuna-13B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.13.13.2"><span class="ltx_text" id="A3.T6.2.1.13.13.2.1" style="font-size:90%;">6.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.13.13.3"><span class="ltx_text" id="A3.T6.2.1.13.13.3.1" style="font-size:90%;">6.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.13.13.4"><span class="ltx_text" id="A3.T6.2.1.13.13.4.1" style="font-size:90%;">35.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.13.13.5"><span class="ltx_text" id="A3.T6.2.1.13.13.5.1" style="font-size:90%;">10.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.13.13.6"><span class="ltx_text" id="A3.T6.2.1.13.13.6.1" style="font-size:90%;">1.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.13.13.7"><span class="ltx_text" id="A3.T6.2.1.13.13.7.1" style="font-size:90%;">1.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.13.13.8"><span class="ltx_text" id="A3.T6.2.1.13.13.8.1" style="font-size:90%;">6.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.13.13.9"><span class="ltx_text" id="A3.T6.2.1.13.13.9.1" style="font-size:90%;">2.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.13.13.10"><span class="ltx_text" id="A3.T6.2.1.13.13.10.1" style="font-size:90%;">0.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.13.13.11"><span class="ltx_text" id="A3.T6.2.1.13.13.11.1" style="font-size:90%;">0.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.13.13.12"><span class="ltx_text" id="A3.T6.2.1.13.13.12.1" style="font-size:90%;">5.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.13.13.13"><span class="ltx_text" id="A3.T6.2.1.13.13.13.1" style="font-size:90%;">1.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.13.13.14"><span class="ltx_text" id="A3.T6.2.1.13.13.14.1" style="font-size:90%;">15.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.13.13.15"><span class="ltx_text" id="A3.T6.2.1.13.13.15.1" style="font-size:90%;">16.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.13.13.16"><span class="ltx_text" id="A3.T6.2.1.13.13.16.1" style="font-size:90%;">39.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.13.13.17"><span class="ltx_text" id="A3.T6.2.1.13.13.17.1" style="font-size:90%;">20.85</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.1.13.13.18"><span class="ltx_text" id="A3.T6.2.1.13.13.18.1" style="font-size:90%;">10.61</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.1"><span class="ltx_text" id="A3.T6.2.1.14.14.1.1" style="font-size:90%;">GPT-4o</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.2"><span class="ltx_text" id="A3.T6.2.1.14.14.2.1" style="font-size:90%;">30.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.3"><span class="ltx_text" id="A3.T6.2.1.14.14.3.1" style="font-size:90%;">37.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.4"><span class="ltx_text" id="A3.T6.2.1.14.14.4.1" style="font-size:90%;">36.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.5"><span class="ltx_text" id="A3.T6.2.1.14.14.5.1" style="font-size:90%;">35.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.6"><span class="ltx_text" id="A3.T6.2.1.14.14.6.1" style="font-size:90%;">21.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.7"><span class="ltx_text" id="A3.T6.2.1.14.14.7.1" style="font-size:90%;">24.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.8"><span class="ltx_text" id="A3.T6.2.1.14.14.8.1" style="font-size:90%;">26.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.9"><span class="ltx_text" id="A3.T6.2.1.14.14.9.1" style="font-size:90%;">23.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.10"><span class="ltx_text" id="A3.T6.2.1.14.14.10.1" style="font-size:90%;">6.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.11"><span class="ltx_text" id="A3.T6.2.1.14.14.11.1" style="font-size:90%;">10.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.12"><span class="ltx_text" id="A3.T6.2.1.14.14.12.1" style="font-size:90%;">8.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.13"><span class="ltx_text" id="A3.T6.2.1.14.14.13.1" style="font-size:90%;">8.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.14"><span class="ltx_text" id="A3.T6.2.1.14.14.14.1" style="font-size:90%;">59.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.15"><span class="ltx_text" id="A3.T6.2.1.14.14.15.1" style="font-size:90%;">79.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.16"><span class="ltx_text" id="A3.T6.2.1.14.14.16.1" style="font-size:90%;">63.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.14.14.17"><span class="ltx_text" id="A3.T6.2.1.14.14.17.1" style="font-size:90%;">67.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.2.1.14.14.18"><span class="ltx_text" id="A3.T6.2.1.14.14.18.1" style="font-size:90%;">33.76</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T6.2.1.15.15.1"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.1.1" style="font-size:90%;">Ours (Embedding)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.15.15.2"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.2.1" style="font-size:90%;">39.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.15.15.3"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.3.1" style="font-size:90%;">57.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.15.15.4"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.4.1" style="font-size:90%;">52.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.15.15.5"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.5.1" style="font-size:90%;">49.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.15.15.6"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.6.1" style="font-size:90%;">37.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.15.15.7"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.7.1" style="font-size:90%;">40.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.15.15.8"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.8.1" style="font-size:90%;">72.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.15.15.9"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.9.1" style="font-size:90%;">48.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.15.15.10"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.10.1" style="font-size:90%;">25.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.15.15.11"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.11.1" style="font-size:90%;">28.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.15.15.12"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.12.1" style="font-size:90%;">49.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.15.15.13"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.13.1" style="font-size:90%;">32.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.15.15.14"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.14.1" style="font-size:90%;">70.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.15.15.15"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.15.1" style="font-size:90%;">86.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.15.15.16"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.16.1" style="font-size:90%;">75.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.15.15.17"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.17.1" style="font-size:90%;">77.32</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.1.15.15.18"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.15.15.18.1" style="font-size:90%;">52.84</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.1"><span class="ltx_text" id="A3.T6.2.1.16.16.1.1" style="font-size:90%;">GPT-3.5-turbo (Without Image)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.2"><span class="ltx_text" id="A3.T6.2.1.16.16.2.1" style="font-size:90%;">2.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.3"><span class="ltx_text" id="A3.T6.2.1.16.16.3.1" style="font-size:90%;">3.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.4"><span class="ltx_text" id="A3.T6.2.1.16.16.4.1" style="font-size:90%;">3.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.5"><span class="ltx_text" id="A3.T6.2.1.16.16.5.1" style="font-size:90%;">3.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.6"><span class="ltx_text" id="A3.T6.2.1.16.16.6.1" style="font-size:90%;">2.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.7"><span class="ltx_text" id="A3.T6.2.1.16.16.7.1" style="font-size:90%;">2.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.8"><span class="ltx_text" id="A3.T6.2.1.16.16.8.1" style="font-size:90%;">3.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.9"><span class="ltx_text" id="A3.T6.2.1.16.16.9.1" style="font-size:90%;">2.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.10"><span class="ltx_text" id="A3.T6.2.1.16.16.10.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.11"><span class="ltx_text" id="A3.T6.2.1.16.16.11.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.12"><span class="ltx_text" id="A3.T6.2.1.16.16.12.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.13"><span class="ltx_text" id="A3.T6.2.1.16.16.13.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.14"><span class="ltx_text" id="A3.T6.2.1.16.16.14.1" style="font-size:90%;">2.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.15"><span class="ltx_text" id="A3.T6.2.1.16.16.15.1" style="font-size:90%;">3.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.16"><span class="ltx_text" id="A3.T6.2.1.16.16.16.1" style="font-size:90%;">2.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.2.1.16.16.17"><span class="ltx_text" id="A3.T6.2.1.16.16.17.1" style="font-size:90%;">2.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.2.1.16.16.18"><span class="ltx_text" id="A3.T6.2.1.16.16.18.1" style="font-size:90%;">2.16</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T6.2.1.17.17.1"><span class="ltx_text" id="A3.T6.2.1.17.17.1.1" style="font-size:90%;">GPT-4 (Without Image)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.17.17.2"><span class="ltx_text" id="A3.T6.2.1.17.17.2.1" style="font-size:90%;">0.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.17.17.3"><span class="ltx_text" id="A3.T6.2.1.17.17.3.1" style="font-size:90%;">0.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.17.17.4"><span class="ltx_text" id="A3.T6.2.1.17.17.4.1" style="font-size:90%;">0.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.17.17.5"><span class="ltx_text" id="A3.T6.2.1.17.17.5.1" style="font-size:90%;">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.17.17.6"><span class="ltx_text" id="A3.T6.2.1.17.17.6.1" style="font-size:90%;">0.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.17.17.7"><span class="ltx_text" id="A3.T6.2.1.17.17.7.1" style="font-size:90%;">0.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.17.17.8"><span class="ltx_text" id="A3.T6.2.1.17.17.8.1" style="font-size:90%;">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.17.17.9"><span class="ltx_text" id="A3.T6.2.1.17.17.9.1" style="font-size:90%;">0.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.17.17.10"><span class="ltx_text" id="A3.T6.2.1.17.17.10.1" style="font-size:90%;">0.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.17.17.11"><span class="ltx_text" id="A3.T6.2.1.17.17.11.1" style="font-size:90%;">0.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.17.17.12"><span class="ltx_text" id="A3.T6.2.1.17.17.12.1" style="font-size:90%;">0.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.17.17.13"><span class="ltx_text" id="A3.T6.2.1.17.17.13.1" style="font-size:90%;">0.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.17.17.14"><span class="ltx_text" id="A3.T6.2.1.17.17.14.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.17.17.15"><span class="ltx_text" id="A3.T6.2.1.17.17.15.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.17.17.16"><span class="ltx_text" id="A3.T6.2.1.17.17.16.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.2.1.17.17.17"><span class="ltx_text" id="A3.T6.2.1.17.17.17.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.1.17.17.18"><span class="ltx_text" id="A3.T6.2.1.17.17.18.1" style="font-size:90%;">0.23</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.1"><span class="ltx_text" id="A3.T6.2.1.18.18.1.1" style="font-size:90%;">GPT-4o (Without Image)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.2"><span class="ltx_text" id="A3.T6.2.1.18.18.2.1" style="font-size:90%;">16.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.3"><span class="ltx_text" id="A3.T6.2.1.18.18.3.1" style="font-size:90%;">22.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.4"><span class="ltx_text" id="A3.T6.2.1.18.18.4.1" style="font-size:90%;">19.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.5"><span class="ltx_text" id="A3.T6.2.1.18.18.5.1" style="font-size:90%;">19.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.6"><span class="ltx_text" id="A3.T6.2.1.18.18.6.1" style="font-size:90%;">11.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.7"><span class="ltx_text" id="A3.T6.2.1.18.18.7.1" style="font-size:90%;">11.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.8"><span class="ltx_text" id="A3.T6.2.1.18.18.8.1" style="font-size:90%;">13.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.9"><span class="ltx_text" id="A3.T6.2.1.18.18.9.1" style="font-size:90%;">13.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.10"><span class="ltx_text" id="A3.T6.2.1.18.18.10.1" style="font-size:90%;">3.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.11"><span class="ltx_text" id="A3.T6.2.1.18.18.11.1" style="font-size:90%;">4.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.12"><span class="ltx_text" id="A3.T6.2.1.18.18.12.1" style="font-size:90%;">5.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.13"><span class="ltx_text" id="A3.T6.2.1.18.18.13.1" style="font-size:90%;">4.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.14"><span class="ltx_text" id="A3.T6.2.1.18.18.14.1" style="font-size:90%;">27.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.15"><span class="ltx_text" id="A3.T6.2.1.18.18.15.1" style="font-size:90%;">46.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.16"><span class="ltx_text" id="A3.T6.2.1.18.18.16.1" style="font-size:90%;">28.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.2.1.18.18.17"><span class="ltx_text" id="A3.T6.2.1.18.18.17.1" style="font-size:90%;">32.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.2.1.18.18.18"><span class="ltx_text" id="A3.T6.2.1.18.18.18.1" style="font-size:90%;">17.66</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents the results for Evaluation Setting 3, a variation of the visual text grounding task.  This setting assesses the models' ability to identify relevant image regions for answering questions, similar to Setting 2, but without providing the exact text from an OCR model, making it more challenging.  The table shows the performance of various multi-modal large language models (MLLMs) across four datasets (ChartQA, DocVQA, InfographicsVQA, and TRINS).  For each model and dataset, it reports the bounding-box level Intersection over Union (IoU), precision, recall, and F1 score. The 'Avg' column provides an average across all datasets for a more comprehensive comparison of the models' overall performance. The ranking order of the models is determined by this average score.
> <details>
> <summary>read the caption</summary>
> Table 6: Evaluation Setting 3. IoU, P, R, F1 represent bounding-box-level IoU score, precision, recall and F1 score. Avg represents the average score on all datasets and evaluation metrics and the ordering is decided by this score.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T7.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T7.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A4.T7.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T7.2.1.1.1.1.1" style="font-size:90%;">Testsets</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A4.T7.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A4.T7.2.1.1.1.2.1" style="font-size:90%;">Chart</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A4.T7.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A4.T7.2.1.1.1.3.1" style="font-size:90%;">Doc</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A4.T7.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A4.T7.2.1.1.1.4.1" style="font-size:90%;">Info</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A4.T7.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A4.T7.2.1.1.1.5.1" style="font-size:90%;">Trins</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A4.T7.2.1.1.1.6.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A4.T7.2.1.2.2.1">
<span class="ltx_text ltx_font_bold" id="A4.T7.2.1.2.2.1.1" style="font-size:90%;">Metrics</span><span class="ltx_text" id="A4.T7.2.1.2.2.1.2" style="font-size:90%;"> (%)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.1.2.2.2"><span class="ltx_text ltx_font_bold" id="A4.T7.2.1.2.2.2.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.1.2.2.3"><span class="ltx_text ltx_font_bold" id="A4.T7.2.1.2.2.3.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.1.2.2.4"><span class="ltx_text ltx_font_bold" id="A4.T7.2.1.2.2.4.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.1.2.2.5"><span class="ltx_text ltx_font_bold" id="A4.T7.2.1.2.2.5.1" style="font-size:90%;">IoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.1.2.2.6"><span class="ltx_text ltx_font_bold" id="A4.T7.2.1.2.2.6.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A4.T7.2.1.3.3.1"><span class="ltx_text" id="A4.T7.2.1.3.3.1.1" style="font-size:90%;">Top-5 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.1.3.3.2"><span class="ltx_text" id="A4.T7.2.1.3.3.2.1" style="font-size:90%;">9.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.1.3.3.3"><span class="ltx_text" id="A4.T7.2.1.3.3.3.1" style="font-size:90%;">12.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.1.3.3.4"><span class="ltx_text" id="A4.T7.2.1.3.3.4.1" style="font-size:90%;">7.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.1.3.3.5"><span class="ltx_text" id="A4.T7.2.1.3.3.5.1" style="font-size:90%;">6.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.1.3.3.6"><span class="ltx_text" id="A4.T7.2.1.3.3.6.1" style="font-size:90%;">9.02</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.4.4.1"><span class="ltx_text" id="A4.T7.2.1.4.4.1.1" style="font-size:90%;">Top-10 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.4.4.2"><span class="ltx_text" id="A4.T7.2.1.4.4.2.1" style="font-size:90%;">10.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.4.4.3"><span class="ltx_text" id="A4.T7.2.1.4.4.3.1" style="font-size:90%;">14.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.4.4.4"><span class="ltx_text" id="A4.T7.2.1.4.4.4.1" style="font-size:90%;">8.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.4.4.5"><span class="ltx_text" id="A4.T7.2.1.4.4.5.1" style="font-size:90%;">9.42</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.4.4.6"><span class="ltx_text" id="A4.T7.2.1.4.4.6.1" style="font-size:90%;">10.51</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.5.5.1"><span class="ltx_text" id="A4.T7.2.1.5.5.1.1" style="font-size:90%;">Top-15 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.5.5.2"><span class="ltx_text" id="A4.T7.2.1.5.5.2.1" style="font-size:90%;">9.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.5.5.3"><span class="ltx_text" id="A4.T7.2.1.5.5.3.1" style="font-size:90%;">13.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.5.5.4"><span class="ltx_text" id="A4.T7.2.1.5.5.4.1" style="font-size:90%;">7.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.5.5.5"><span class="ltx_text" id="A4.T7.2.1.5.5.5.1" style="font-size:90%;">11.25</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.5.5.6"><span class="ltx_text" id="A4.T7.2.1.5.5.6.1" style="font-size:90%;">10.63</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.6.6.1"><span class="ltx_text" id="A4.T7.2.1.6.6.1.1" style="font-size:90%;">Top-20 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.6.6.2"><span class="ltx_text" id="A4.T7.2.1.6.6.2.1" style="font-size:90%;">9.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.6.6.3"><span class="ltx_text" id="A4.T7.2.1.6.6.3.1" style="font-size:90%;">12.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.6.6.4"><span class="ltx_text" id="A4.T7.2.1.6.6.4.1" style="font-size:90%;">6.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.6.6.5"><span class="ltx_text" id="A4.T7.2.1.6.6.5.1" style="font-size:90%;">12.42</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.6.6.6"><span class="ltx_text" id="A4.T7.2.1.6.6.6.1" style="font-size:90%;">10.41</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.7.7.1"><span class="ltx_text" id="A4.T7.2.1.7.7.1.1" style="font-size:90%;">Top-25 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.7.7.2"><span class="ltx_text" id="A4.T7.2.1.7.7.2.1" style="font-size:90%;">8.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.7.7.3"><span class="ltx_text" id="A4.T7.2.1.7.7.3.1" style="font-size:90%;">12.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.7.7.4"><span class="ltx_text" id="A4.T7.2.1.7.7.4.1" style="font-size:90%;">6.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.7.7.5"><span class="ltx_text" id="A4.T7.2.1.7.7.5.1" style="font-size:90%;">13.22</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.7.7.6"><span class="ltx_text" id="A4.T7.2.1.7.7.6.1" style="font-size:90%;">10.18</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.8.8.1"><span class="ltx_text" id="A4.T7.2.1.8.8.1.1" style="font-size:90%;">Top-30 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.8.8.2"><span class="ltx_text" id="A4.T7.2.1.8.8.2.1" style="font-size:90%;">8.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.8.8.3"><span class="ltx_text" id="A4.T7.2.1.8.8.3.1" style="font-size:90%;">11.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.8.8.4"><span class="ltx_text" id="A4.T7.2.1.8.8.4.1" style="font-size:90%;">6.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.8.8.5"><span class="ltx_text" id="A4.T7.2.1.8.8.5.1" style="font-size:90%;">13.91</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.8.8.6"><span class="ltx_text" id="A4.T7.2.1.8.8.6.1" style="font-size:90%;">9.89</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.9.9.1"><span class="ltx_text" id="A4.T7.2.1.9.9.1.1" style="font-size:90%;">Top-35 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.9.9.2"><span class="ltx_text" id="A4.T7.2.1.9.9.2.1" style="font-size:90%;">7.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.9.9.3"><span class="ltx_text" id="A4.T7.2.1.9.9.3.1" style="font-size:90%;">10.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.9.9.4"><span class="ltx_text" id="A4.T7.2.1.9.9.4.1" style="font-size:90%;">5.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.9.9.5"><span class="ltx_text" id="A4.T7.2.1.9.9.5.1" style="font-size:90%;">14.51</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.9.9.6"><span class="ltx_text" id="A4.T7.2.1.9.9.6.1" style="font-size:90%;">9.60</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.10.10.1"><span class="ltx_text" id="A4.T7.2.1.10.10.1.1" style="font-size:90%;">Top-40 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.10.10.2"><span class="ltx_text" id="A4.T7.2.1.10.10.2.1" style="font-size:90%;">7.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.10.10.3"><span class="ltx_text" id="A4.T7.2.1.10.10.3.1" style="font-size:90%;">9.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.10.10.4"><span class="ltx_text" id="A4.T7.2.1.10.10.4.1" style="font-size:90%;">5.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.10.10.5"><span class="ltx_text" id="A4.T7.2.1.10.10.5.1" style="font-size:90%;">15.06</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.10.10.6"><span class="ltx_text" id="A4.T7.2.1.10.10.6.1" style="font-size:90%;">9.43</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.11.11.1"><span class="ltx_text" id="A4.T7.2.1.11.11.1.1" style="font-size:90%;">Top-45 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.11.11.2"><span class="ltx_text" id="A4.T7.2.1.11.11.2.1" style="font-size:90%;">7.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.11.11.3"><span class="ltx_text" id="A4.T7.2.1.11.11.3.1" style="font-size:90%;">9.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.11.11.4"><span class="ltx_text" id="A4.T7.2.1.11.11.4.1" style="font-size:90%;">5.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.11.11.5"><span class="ltx_text" id="A4.T7.2.1.11.11.5.1" style="font-size:90%;">15.60</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.11.11.6"><span class="ltx_text" id="A4.T7.2.1.11.11.6.1" style="font-size:90%;">9.25</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.12.12.1"><span class="ltx_text" id="A4.T7.2.1.12.12.1.1" style="font-size:90%;">Top-50 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.12.12.2"><span class="ltx_text" id="A4.T7.2.1.12.12.2.1" style="font-size:90%;">6.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.12.12.3"><span class="ltx_text" id="A4.T7.2.1.12.12.3.1" style="font-size:90%;">8.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.12.12.4"><span class="ltx_text" id="A4.T7.2.1.12.12.4.1" style="font-size:90%;">4.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.12.12.5"><span class="ltx_text ltx_font_bold" id="A4.T7.2.1.12.12.5.1" style="font-size:90%;">15.94</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.12.12.6"><span class="ltx_text" id="A4.T7.2.1.12.12.6.1" style="font-size:90%;">9.05</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A4.T7.2.1.13.13.1"><span class="ltx_text" id="A4.T7.2.1.13.13.1.1" style="font-size:90%;">Top-3 + Top-5 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.1.13.13.2"><span class="ltx_text" id="A4.T7.2.1.13.13.2.1" style="font-size:90%;">9.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.1.13.13.3"><span class="ltx_text" id="A4.T7.2.1.13.13.3.1" style="font-size:90%;">12.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.1.13.13.4"><span class="ltx_text" id="A4.T7.2.1.13.13.4.1" style="font-size:90%;">7.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.1.13.13.5"><span class="ltx_text" id="A4.T7.2.1.13.13.5.1" style="font-size:90%;">6.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.1.13.13.6"><span class="ltx_text" id="A4.T7.2.1.13.13.6.1" style="font-size:90%;">9.00</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.14.14.1"><span class="ltx_text" id="A4.T7.2.1.14.14.1.1" style="font-size:90%;">Top-3 + Top-10 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.14.14.2"><span class="ltx_text" id="A4.T7.2.1.14.14.2.1" style="font-size:90%;">10.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.14.14.3"><span class="ltx_text" id="A4.T7.2.1.14.14.3.1" style="font-size:90%;">15.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.14.14.4"><span class="ltx_text" id="A4.T7.2.1.14.14.4.1" style="font-size:90%;">8.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.14.14.5"><span class="ltx_text" id="A4.T7.2.1.14.14.5.1" style="font-size:90%;">8.54</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.14.14.6"><span class="ltx_text" id="A4.T7.2.1.14.14.6.1" style="font-size:90%;">10.80</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.15.15.1"><span class="ltx_text" id="A4.T7.2.1.15.15.1.1" style="font-size:90%;">Top-3 + Top-15 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.15.15.2"><span class="ltx_text ltx_font_bold" id="A4.T7.2.1.15.15.2.1" style="font-size:90%;">11.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.15.15.3"><span class="ltx_text" id="A4.T7.2.1.15.15.3.1" style="font-size:90%;">15.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.15.15.4"><span class="ltx_text ltx_font_bold" id="A4.T7.2.1.15.15.4.1" style="font-size:90%;">8.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.15.15.5"><span class="ltx_text" id="A4.T7.2.1.15.15.5.1" style="font-size:90%;">10.06</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.15.15.6"><span class="ltx_text" id="A4.T7.2.1.15.15.6.1" style="font-size:90%;">11.41</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.16.16.1"><span class="ltx_text" id="A4.T7.2.1.16.16.1.1" style="font-size:90%;">Top-3 + Top-20 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.16.16.2"><span class="ltx_text" id="A4.T7.2.1.16.16.2.1" style="font-size:90%;">11.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.16.16.3"><span class="ltx_text" id="A4.T7.2.1.16.16.3.1" style="font-size:90%;">15.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.16.16.4"><span class="ltx_text" id="A4.T7.2.1.16.16.4.1" style="font-size:90%;">8.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.16.16.5"><span class="ltx_text" id="A4.T7.2.1.16.16.5.1" style="font-size:90%;">11.01</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.16.16.6"><span class="ltx_text" id="A4.T7.2.1.16.16.6.1" style="font-size:90%;">11.58</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.17.17.1"><span class="ltx_text" id="A4.T7.2.1.17.17.1.1" style="font-size:90%;">Top-3 + Top-25 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.17.17.2"><span class="ltx_text" id="A4.T7.2.1.17.17.2.1" style="font-size:90%;">10.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.17.17.3"><span class="ltx_text ltx_font_bold" id="A4.T7.2.1.17.17.3.1" style="font-size:90%;">15.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.17.17.4"><span class="ltx_text" id="A4.T7.2.1.17.17.4.1" style="font-size:90%;">8.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.17.17.5"><span class="ltx_text" id="A4.T7.2.1.17.17.5.1" style="font-size:90%;">11.80</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.17.17.6"><span class="ltx_text" id="A4.T7.2.1.17.17.6.1" style="font-size:90%;">11.79</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.18.18.1"><span class="ltx_text" id="A4.T7.2.1.18.18.1.1" style="font-size:90%;">Top-3 + Top-30 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.18.18.2"><span class="ltx_text" id="A4.T7.2.1.18.18.2.1" style="font-size:90%;">10.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.18.18.3"><span class="ltx_text" id="A4.T7.2.1.18.18.3.1" style="font-size:90%;">15.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.18.18.4"><span class="ltx_text" id="A4.T7.2.1.18.18.4.1" style="font-size:90%;">8.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.18.18.5"><span class="ltx_text" id="A4.T7.2.1.18.18.5.1" style="font-size:90%;">12.47</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.18.18.6"><span class="ltx_text" id="A4.T7.2.1.18.18.6.1" style="font-size:90%;">11.81</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.19.19.1"><span class="ltx_text" id="A4.T7.2.1.19.19.1.1" style="font-size:90%;">Top-3 + Top-35 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.19.19.2"><span class="ltx_text" id="A4.T7.2.1.19.19.2.1" style="font-size:90%;">10.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.19.19.3"><span class="ltx_text" id="A4.T7.2.1.19.19.3.1" style="font-size:90%;">15.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.19.19.4"><span class="ltx_text" id="A4.T7.2.1.19.19.4.1" style="font-size:90%;">8.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.19.19.5"><span class="ltx_text" id="A4.T7.2.1.19.19.5.1" style="font-size:90%;">13.00</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.19.19.6"><span class="ltx_text" id="A4.T7.2.1.19.19.6.1" style="font-size:90%;">11.78</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.20.20.1"><span class="ltx_text" id="A4.T7.2.1.20.20.1.1" style="font-size:90%;">Top-3 + Top-40 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.20.20.2"><span class="ltx_text" id="A4.T7.2.1.20.20.2.1" style="font-size:90%;">10.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.20.20.3"><span class="ltx_text" id="A4.T7.2.1.20.20.3.1" style="font-size:90%;">15.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.20.20.4"><span class="ltx_text" id="A4.T7.2.1.20.20.4.1" style="font-size:90%;">8.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.20.20.5"><span class="ltx_text" id="A4.T7.2.1.20.20.5.1" style="font-size:90%;">13.36</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.20.20.6"><span class="ltx_text" id="A4.T7.2.1.20.20.6.1" style="font-size:90%;">11.79</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.21.21.1"><span class="ltx_text" id="A4.T7.2.1.21.21.1.1" style="font-size:90%;">Top-3 + Top-45 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.21.21.2"><span class="ltx_text" id="A4.T7.2.1.21.21.2.1" style="font-size:90%;">10.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.21.21.3"><span class="ltx_text" id="A4.T7.2.1.21.21.3.1" style="font-size:90%;">15.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.21.21.4"><span class="ltx_text" id="A4.T7.2.1.21.21.4.1" style="font-size:90%;">8.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.21.21.5"><span class="ltx_text" id="A4.T7.2.1.21.21.5.1" style="font-size:90%;">13.84</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.21.21.6"><span class="ltx_text" id="A4.T7.2.1.21.21.6.1" style="font-size:90%;">11.81</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.22.22.1"><span class="ltx_text" id="A4.T7.2.1.22.22.1.1" style="font-size:90%;">Top-3 + Top-50 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.22.22.2"><span class="ltx_text" id="A4.T7.2.1.22.22.2.1" style="font-size:90%;">9.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.22.22.3"><span class="ltx_text" id="A4.T7.2.1.22.22.3.1" style="font-size:90%;">14.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.22.22.4"><span class="ltx_text" id="A4.T7.2.1.22.22.4.1" style="font-size:90%;">8.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.22.22.5"><span class="ltx_text" id="A4.T7.2.1.22.22.5.1" style="font-size:90%;">14.16</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.22.22.6"><span class="ltx_text" id="A4.T7.2.1.22.22.6.1" style="font-size:90%;">11.78</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A4.T7.2.1.23.23.1"><span class="ltx_text" id="A4.T7.2.1.23.23.1.1" style="font-size:90%;">Top-5 + Top-5 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.1.23.23.2"><span class="ltx_text" id="A4.T7.2.1.23.23.2.1" style="font-size:90%;">9.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.1.23.23.3"><span class="ltx_text" id="A4.T7.2.1.23.23.3.1" style="font-size:90%;">12.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.1.23.23.4"><span class="ltx_text" id="A4.T7.2.1.23.23.4.1" style="font-size:90%;">7.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.1.23.23.5"><span class="ltx_text" id="A4.T7.2.1.23.23.5.1" style="font-size:90%;">6.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.1.23.23.6"><span class="ltx_text" id="A4.T7.2.1.23.23.6.1" style="font-size:90%;">9.02</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.24.24.1"><span class="ltx_text" id="A4.T7.2.1.24.24.1.1" style="font-size:90%;">Top-5 + Top-10 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.24.24.2"><span class="ltx_text" id="A4.T7.2.1.24.24.2.1" style="font-size:90%;">10.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.24.24.3"><span class="ltx_text" id="A4.T7.2.1.24.24.3.1" style="font-size:90%;">14.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.24.24.4"><span class="ltx_text" id="A4.T7.2.1.24.24.4.1" style="font-size:90%;">8.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.24.24.5"><span class="ltx_text" id="A4.T7.2.1.24.24.5.1" style="font-size:90%;">9.34</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.24.24.6"><span class="ltx_text" id="A4.T7.2.1.24.24.6.1" style="font-size:90%;">10.91</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.25.25.1"><span class="ltx_text" id="A4.T7.2.1.25.25.1.1" style="font-size:90%;">Top-5 + Top-15 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.25.25.2"><span class="ltx_text" id="A4.T7.2.1.25.25.2.1" style="font-size:90%;">10.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.25.25.3"><span class="ltx_text" id="A4.T7.2.1.25.25.3.1" style="font-size:90%;">15.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.25.25.4"><span class="ltx_text" id="A4.T7.2.1.25.25.4.1" style="font-size:90%;">8.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.25.25.5"><span class="ltx_text" id="A4.T7.2.1.25.25.5.1" style="font-size:90%;">11.13</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.25.25.6"><span class="ltx_text" id="A4.T7.2.1.25.25.6.1" style="font-size:90%;">11.47</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.26.26.1"><span class="ltx_text" id="A4.T7.2.1.26.26.1.1" style="font-size:90%;">Top-5 + Top-20 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.26.26.2"><span class="ltx_text" id="A4.T7.2.1.26.26.2.1" style="font-size:90%;">10.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.26.26.3"><span class="ltx_text" id="A4.T7.2.1.26.26.3.1" style="font-size:90%;">15.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.26.26.4"><span class="ltx_text" id="A4.T7.2.1.26.26.4.1" style="font-size:90%;">8.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.26.26.5"><span class="ltx_text" id="A4.T7.2.1.26.26.5.1" style="font-size:90%;">12.24</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.26.26.6"><span class="ltx_text" id="A4.T7.2.1.26.26.6.1" style="font-size:90%;">11.64</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.27.27.1"><span class="ltx_text" id="A4.T7.2.1.27.27.1.1" style="font-size:90%;">Top-5 + Top-25 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.27.27.2"><span class="ltx_text" id="A4.T7.2.1.27.27.2.1" style="font-size:90%;">10.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.27.27.3"><span class="ltx_text" id="A4.T7.2.1.27.27.3.1" style="font-size:90%;">15.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.27.27.4"><span class="ltx_text" id="A4.T7.2.1.27.27.4.1" style="font-size:90%;">8.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.27.27.5"><span class="ltx_text" id="A4.T7.2.1.27.27.5.1" style="font-size:90%;">13.13</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.27.27.6"><span class="ltx_text" id="A4.T7.2.1.27.27.6.1" style="font-size:90%;">11.78</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.28.28.1"><span class="ltx_text" id="A4.T7.2.1.28.28.1.1" style="font-size:90%;">Top-5 + Top-30 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.28.28.2"><span class="ltx_text" id="A4.T7.2.1.28.28.2.1" style="font-size:90%;">10.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.28.28.3"><span class="ltx_text" id="A4.T7.2.1.28.28.3.1" style="font-size:90%;">15.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.28.28.4"><span class="ltx_text" id="A4.T7.2.1.28.28.4.1" style="font-size:90%;">7.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.28.28.5"><span class="ltx_text" id="A4.T7.2.1.28.28.5.1" style="font-size:90%;">13.88</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.28.28.6"><span class="ltx_text ltx_font_bold" id="A4.T7.2.1.28.28.6.1" style="font-size:90%;">11.82</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.29.29.1"><span class="ltx_text" id="A4.T7.2.1.29.29.1.1" style="font-size:90%;">Top-5 + Top-35 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.29.29.2"><span class="ltx_text" id="A4.T7.2.1.29.29.2.1" style="font-size:90%;">10.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.29.29.3"><span class="ltx_text" id="A4.T7.2.1.29.29.3.1" style="font-size:90%;">14.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.29.29.4"><span class="ltx_text" id="A4.T7.2.1.29.29.4.1" style="font-size:90%;">7.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.29.29.5"><span class="ltx_text" id="A4.T7.2.1.29.29.5.1" style="font-size:90%;">14.42</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.29.29.6"><span class="ltx_text" id="A4.T7.2.1.29.29.6.1" style="font-size:90%;">11.75</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.30.30.1"><span class="ltx_text" id="A4.T7.2.1.30.30.1.1" style="font-size:90%;">Top-5 + Top-40 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.30.30.2"><span class="ltx_text" id="A4.T7.2.1.30.30.2.1" style="font-size:90%;">10.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.30.30.3"><span class="ltx_text" id="A4.T7.2.1.30.30.3.1" style="font-size:90%;">14.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.30.30.4"><span class="ltx_text" id="A4.T7.2.1.30.30.4.1" style="font-size:90%;">7.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.30.30.5"><span class="ltx_text" id="A4.T7.2.1.30.30.5.1" style="font-size:90%;">14.91</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.30.30.6"><span class="ltx_text" id="A4.T7.2.1.30.30.6.1" style="font-size:90%;">11.79</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T7.2.1.31.31.1"><span class="ltx_text" id="A4.T7.2.1.31.31.1.1" style="font-size:90%;">Top-5 + Top-45 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.31.31.2"><span class="ltx_text" id="A4.T7.2.1.31.31.2.1" style="font-size:90%;">9.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.31.31.3"><span class="ltx_text" id="A4.T7.2.1.31.31.3.1" style="font-size:90%;">14.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.31.31.4"><span class="ltx_text" id="A4.T7.2.1.31.31.4.1" style="font-size:90%;">7.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.1.31.31.5"><span class="ltx_text" id="A4.T7.2.1.31.31.5.1" style="font-size:90%;">15.45</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.1.31.31.6"><span class="ltx_text" id="A4.T7.2.1.31.31.6.1" style="font-size:90%;">11.82</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.1.32.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A4.T7.2.1.32.32.1"><span class="ltx_text" id="A4.T7.2.1.32.32.1.1" style="font-size:90%;">Top-5 + Top-50 Patches</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T7.2.1.32.32.2"><span class="ltx_text" id="A4.T7.2.1.32.32.2.1" style="font-size:90%;">9.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T7.2.1.32.32.3"><span class="ltx_text" id="A4.T7.2.1.32.32.3.1" style="font-size:90%;">14.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T7.2.1.32.32.4"><span class="ltx_text" id="A4.T7.2.1.32.32.4.1" style="font-size:90%;">7.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T7.2.1.32.32.5"><span class="ltx_text" id="A4.T7.2.1.32.32.5.1" style="font-size:90%;">15.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.2.1.32.32.6"><span class="ltx_text" id="A4.T7.2.1.32.32.6.1" style="font-size:90%;">11.78</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed ablation study on the embedding-based method used in the OCR-free grounding setting.  It shows the impact of different patch selection strategies on the model's performance.  Specifically, it compares the results of simply selecting the top-k patches with a two-level selection approach. The two-level approach first selects the top-k1 patches and then adds additional patches from the surrounding area of the top-k1 patches based on their similarity scores. This experiment aims to determine how different numbers of patches and the two-level selection approach affect the performance of the method. The results help to determine the optimal patch selection strategy for improving the performance of the embedding-based method in the OCR-free grounding setting. 
> <details>
> <summary>read the caption</summary>
> Table 7: Detailed ablation studies of our embedding-based method on OCR-free grounding setting. The results illustrate the effectiveness of the 2-level selection mechanism.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.04974/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04974/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}