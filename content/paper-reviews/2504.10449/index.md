---
title: "M1: Towards Scalable Test-Time Compute with Mamba Reasoning Models"
summary: "M1: A scalable Mamba reasoning model that matches transformer performance with 3x faster inference, enabling better test-time compute scaling."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 TogetherAI",]
showSummary: true
date: 2025-04-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.10449 {{< /keyword >}}
{{< keyword icon="writer" >}} Junxiong Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-15 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.10449" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.10449" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.10449/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) improve reasoning by scaling test-time computation, but transformers are limited by quadratic complexity and memory. The paper addresses these limitations by introducing a novel reasoning model, **M1**, based on the Mamba architecture, enabling memory-efficient inference. M1 leverages distillation from existing models and reinforcement learning to enhance capabilities. The results demonstrate the model not only outperforms existing models but also matches the state-of-the-art transformer while significantly reducing cost. 



The core contribution lies in demonstrating **strong reasoning models** can be derived by transferring knowledge from large transformer models, using the **Mamba architecture**. Through distillation, supervised fine-tuning, and reinforcement learning, M1 achieves a 3x speedup compared to same-sized transformers. The model also shows a higher throughput enables increased accuracy when using methods such as self-consistency voting. Overall, the model has a potential to scale test-time generation using long chain of thought.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} M1, a hybrid linear RNN reasoning model built on the Mamba architecture, achieves comparable performance to state-of-the-art transformer models on math benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} M1 offers a 3x speedup in inference compared to transformer models of similar size, demonstrating its potential for efficient large-batch generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The improved efficiency of M1 enables more effective test-time compute scaling through self-consistency and longer sequence generation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it introduces **a new approach to scaling test-time compute for reasoning models**, potentially leading to more efficient and accurate solutions. The **hybrid Mamba reasoning model** offers a compelling alternative to transformer-based models and **paves the way for future research in efficient reasoning architectures**.

------
#### Visual Insights



![](https://arxiv.org/html/2504.10449/x1.png)

> 🔼 This figure displays the inference latency, or the time taken for the model to generate outputs, across various batch sizes.  The experiment uses a fixed prompt length of 256 tokens and a decoding length of 4096 tokens. Three different language models are compared: M1, Llama-3.2-3B, and DeepSeek-R1-Distill-Qwen-1.5B. The graph illustrates the impact of batch size on inference time for each model, highlighting the relative efficiency of M1 compared to the other two models.
> <details>
> <summary>read the caption</summary>
> Figure 1: Inference latency when using prompt length 256 and decoding length 4096.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T1.1.1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.1.1.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.1.1.1.1.2">AIME25</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.1.1.1.1.3">AIME24</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.1.1.1.1.4">MATH500</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1.5">OlympiadBench</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1.6">AMC23</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.1">Pass@1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.2">Maj@32</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.3">Pass@1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.4">Maj@32</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.5">Pass@1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.6">Maj@32</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.7">Pass@1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.8">Pass@1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.3.3.1">GPT-4o-0513</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.2">9.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.3">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.4">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.5">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.6">74.6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.7">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.8">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.9">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.4.4.1">Claude-3.5-1022</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.4.4.2">16.0</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.1.4.4.3">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.4.4.4">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.1.4.4.5">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.4.4.6">78.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.1.4.4.7">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.1.4.4.8">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.1.4.4.9">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.5.5.1">Qwen2.5-Math-7B-Ins</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.1.1.5.5.2">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.1.5.5.3">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.1.1.5.5.4">13.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.1.5.5.5">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.1.1.5.5.6">79.8</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.1.5.5.7">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.1.5.5.8">40.7</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.1.5.5.9">50.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.6.6.1">R1-Llama-8B</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.6.6.2">32.9</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.1.6.6.3">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.6.6.4">50.4</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.1.6.6.5">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.6.6.6">89.8</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.1.6.6.7">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.1.6.6.8">54.2</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.1.6.6.9">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.7.7.1">R1-Qwen-1.5B</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.7.7.2">23.5</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.1.7.7.3">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.7.7.4">28.9</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.1.7.7.5">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.7.7.6">83.9</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.1.7.7.7">91.0</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.1.7.7.8">43.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.1.7.7.9">62.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.1.1.8.8.1">
<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.8.1.1">M1</span>-3B</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.1.1.8.8.2">22.0</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.1.1.8.8.3">30.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.1.1.8.8.4">23.0</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.1.1.8.8.5">45.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.1.1.8.8.6">81.7</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.1.1.8.8.7">89.5</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.1.1.8.8.8">43.6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.1.1.8.8.9">56.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of three different reasoning models: M1-3B (the authors' proposed model), DeepSeek-R1-Distill-Qwen-1.5B (a state-of-the-art distilled model), and Qwen2.5-Math-7B-Instruct (a strong baseline).  The models are evaluated on several mathematical reasoning benchmarks, including AIME25, AIME24, MATH500, OlympiadBench, and AMC23.  The results show the accuracy (Pass@1 and Majority Vote@32) of each model on each benchmark.  This allows for a direct comparison of the performance of the authors' model against existing strong baselines.
> <details>
> <summary>read the caption</summary>
> Table 1: Results for M1-3B, DeepSeek-R1-Distill-Qwen-1.5B, and Qwen2.5-Math-7B-Instruct.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.10449/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10449/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10449/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10449/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10449/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10449/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10449/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10449/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10449/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10449/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10449/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10449/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10449/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10449/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}