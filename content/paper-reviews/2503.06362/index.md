---
title: "Adaptive Audio-Visual Speech Recognition via Matryoshka-Based Multimodal LLMs"
summary: "Llama-MTSK:  AVSR via Matryoshka LLMs, adapting to computational limits without sacrificing accuracy! "
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Audio-Visual Learning", "🏢 Imperial College London",]
showSummary: true
date: 2025-03-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.06362 {{< /keyword >}}
{{< keyword icon="writer" >}} Umberto Cappellazzo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.06362" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.06362" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.06362/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Audio-Visual Speech Recognition (AVSR) improves speech recognition, especially in noisy conditions, by utilizing both audio and video. Large Language Models (LLMs) have improved this task, but integrating speech representations into LLMs increases computational costs. Current solutions compress speech data before feeding it to LLMs, which degrades performance with higher compression. This creates a trade-off between efficiency and accuracy. 



This paper introduces Llama-MTSK for AVSR, a Matryoshka-based Multimodal LLM that **flexibly adapts token allocation based on computational constraints** while preserving performance. It encodes audio-visual data at multiple granularities, eliminating the need for separate models for different compression levels. Three LoRA-based Matryoshka strategies are introduced for efficient fine-tuning. Evaluations show Llama-MTSK achieves state-of-the-art results matching or surpassing models trained independently at fixed compression levels.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Llama-MTSK, the first Matryoshka-based Multimodal LLM, can dynamically adjust the number of tokens processed during inference. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Llama-MTSK achieves state-of-the-art results on LRS2 and LRS3 datasets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Three LoRA-based Matryoshka strategies are introduced to efficiently fine-tune the pre-trained LLM. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it introduces a novel approach to AVSR that balances accuracy and computational efficiency, making it applicable to resource-constrained scenarios. It leverages MRL, and provides a flexible way to tune the model based on the tasks/datasets, leading to **new research directions in multimodal LLMs**. This approach paves the way for deploying more sophisticated AVSR systems in real-world applications.

------
#### Visual Insights



![](https://arxiv.org/html/2503.06362/x1.png)

> 🔼 This figure illustrates the training and inference stages of the Llama-MTSK model.  During training (left panel), audio and visual data are processed by pre-trained encoders. The resulting tokens are then compressed to multiple scales (different levels of granularity) and projected into a shared embedding space.  These multi-scale audio-visual tokens are fed into a Llama-based large language model (LLM), which is fine-tuned using one of three proposed LoRA (Low-Rank Adaptation) strategies based on the Matryoshka Representation Learning principle.  The right panel shows the inference stage.  Llama-MTSK allows dynamic adjustment of the audio-visual compression rate at inference time based on computational resource constraints.  Only the projector and LoRA modules corresponding to the chosen compression rate are activated, maintaining high efficiency. The color-coding in the figure indicates whether the parameters were trained or kept frozen.
> <details>
> <summary>read the caption</summary>
> Figure 1: Training and inference stages for Llama-MTSK. (Left) During training, we produce audio-visual tokens via pre-trained encoders, followed by specific-scale compression and projection modules. Then, we feed the concatenated audio-visual tokens at multiple scales to the pre-trained Llama-based LLM, which is adapted through one of the three proposed LoRA  approaches following the Matryoshka Representation Learning principle. (Right) At inference, Llama-MTSK allows us to change on-the-fly the audio-visual compression rates for each input data conditioned on our specific requirements using the same model architecture and weights, enabling high flexibility. Furthermore, only one projector and one LoRA module are activated at inference (in this figure, those associated with the audio and video compression rates equal to 3333), guaranteeing model’s scalability in training and no extra cost in inference.   and   represent whether the parameters are trained or kept frozen, respectively.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.13.7">
<tr class="ltx_tr" id="S3.T1.13.7.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T1.13.7.8.1" rowspan="2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.13.7.8.1.1">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="4" id="S3.T1.13.7.8.2" style="background-color:#D1F0BF;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.13.7.8.2.1" style="background-color:#D1F0BF;">Compression Rates (A,V)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.13.7.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.13.7.9.1" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="S3.T1.13.7.9.1.1">4,2</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.13.7.9.2" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="S3.T1.13.7.9.2.1">4,5</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.13.7.9.3" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="S3.T1.13.7.9.3.1">16,2</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.13.7.9.4" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="S3.T1.13.7.9.4.1">16,5</span>)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.13.7.10">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="5" id="S3.T1.13.7.10.1" style="background-color:#FCF1F1;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T1.13.7.10.1.1" style="background-color:#FCF1F1;"><span class="ltx_text ltx_font_bold" id="S3.T1.13.7.10.1.1.1">LRS3 Dataset</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.7.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">Llama-AVSR<sup class="ltx_sup" id="S3.T1.7.1.1.1.1">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.7.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">2.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.7.1.1.3" style="padding-left:0.0pt;padding-right:0.0pt;">2.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.7.1.1.4" style="padding-left:0.0pt;padding-right:0.0pt;">3.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.7.1.1.5" style="padding-left:0.0pt;padding-right:0.0pt;">4.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.8.2.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_ERROR undefined" id="S3.T1.8.2.2.1.1">\hdashline</span>
Llama
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="9" id="S3.T1.8.2.2.1.g1" src="extracted/6261859/Figures/nesting-dolls.png" width="7"/>
<span class="ltx_text ltx_font_typewriter" id="S3.T1.8.2.2.1.2">MS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.8.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">2.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.8.2.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">2.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.8.2.2.4" style="padding-left:0.0pt;padding-right:0.0pt;">3.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.8.2.2.5" style="padding-left:0.0pt;padding-right:0.0pt;">4.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.3.3" style="background-color:#E1F1FF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.9.3.3.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T1.9.3.3.1.1" style="background-color:#E1F1FF;">Llama
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="9" id="S3.T1.9.3.3.1.1.g1" src="extracted/6261859/Figures/nesting-dolls.png" width="7"/>
<span class="ltx_text ltx_font_typewriter" id="S3.T1.9.3.3.1.1.1">SS</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.9.3.3.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.3.3.2.1" style="background-color:#E1F1FF;">2.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.9.3.3.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.3.3.3.1" style="background-color:#E1F1FF;">2.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.9.3.3.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T1.9.3.3.4.1" style="background-color:#E1F1FF;">3.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.9.3.3.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T1.9.3.3.5.1" style="background-color:#E1F1FF;">3.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.10.4.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">Llama
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="9" id="S3.T1.10.4.4.1.g1" src="extracted/6261859/Figures/nesting-dolls.png" width="7"/>
<span class="ltx_text ltx_font_typewriter" id="S3.T1.10.4.4.1.1">MSS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.10.4.4.2" style="padding-left:0.0pt;padding-right:0.0pt;">2.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.10.4.4.3" style="padding-left:0.0pt;padding-right:0.0pt;">2.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.10.4.4.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.10.4.4.4.1">3.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.10.4.4.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.10.4.4.5.1">3.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.13.7.11">
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="5" id="S3.T1.13.7.11.1" style="background-color:#EBEBEB;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T1.13.7.11.1.1" style="background-color:#EBEBEB;"><span class="ltx_text ltx_font_bold" id="S3.T1.13.7.11.1.1.1">LRS2 Dataset</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.13.7.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.13.7.12.1" style="padding-left:0.0pt;padding-right:0.0pt;">Llama-AVSR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.13.7.12.2" style="padding-left:0.0pt;padding-right:0.0pt;">4.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.13.7.12.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.13.7.12.3.1">4.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.13.7.12.4" style="padding-left:0.0pt;padding-right:0.0pt;">5.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.13.7.12.5" style="padding-left:0.0pt;padding-right:0.0pt;">8.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.11.5.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_ERROR undefined" id="S3.T1.11.5.5.1.1">\hdashline</span>
Llama
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="9" id="S3.T1.11.5.5.1.g1" src="extracted/6261859/Figures/nesting-dolls.png" width="7"/>
<span class="ltx_text ltx_font_typewriter" id="S3.T1.11.5.5.1.2">MS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.11.5.5.2" style="padding-left:0.0pt;padding-right:0.0pt;">4.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.11.5.5.3" style="padding-left:0.0pt;padding-right:0.0pt;">5.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.11.5.5.4" style="padding-left:0.0pt;padding-right:0.0pt;">6.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.11.5.5.5" style="padding-left:0.0pt;padding-right:0.0pt;">8.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.6.6" style="background-color:#E1F1FF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.12.6.6.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T1.12.6.6.1.1" style="background-color:#E1F1FF;">Llama
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="9" id="S3.T1.12.6.6.1.1.g1" src="extracted/6261859/Figures/nesting-dolls.png" width="7"/>
<span class="ltx_text ltx_font_typewriter" id="S3.T1.12.6.6.1.1.1">SS</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.12.6.6.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.12.6.6.2.1" style="background-color:#E1F1FF;">3.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.12.6.6.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T1.12.6.6.3.1" style="background-color:#E1F1FF;">4.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.12.6.6.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.12.6.6.4.1" style="background-color:#E1F1FF;">4.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.12.6.6.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.12.6.6.5.1" style="background-color:#E1F1FF;">6.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.13.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T1.13.7.7.1" style="padding-left:0.0pt;padding-right:0.0pt;">Llama
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="9" id="S3.T1.13.7.7.1.g1" src="extracted/6261859/Figures/nesting-dolls.png" width="7"/>
<span class="ltx_text ltx_font_typewriter" id="S3.T1.13.7.7.1.1">MSS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.13.7.7.2" style="padding-left:0.0pt;padding-right:0.0pt;">3.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.13.7.7.3" style="padding-left:0.0pt;padding-right:0.0pt;">4.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.13.7.7.4" style="padding-left:0.0pt;padding-right:0.0pt;">6.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.13.7.7.5" style="padding-left:0.0pt;padding-right:0.0pt;">9.0</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of the performance of four different audio-visual speech recognition (AVSR) models on two benchmark datasets, LRS2 and LRS3.  The models compared are Llama-AVSR (a state-of-the-art model that trains separate models for different audio-visual compression rates) and three variations of a novel Matryoshka-based multimodal LLM called Llama-MTSK (MS, SS, and MSS). The table shows Word Error Rates (WER) for each model across various combinations of audio and video compression rates.  This allows for an evaluation of the tradeoff between computational efficiency (higher compression rates) and recognition accuracy. The key point of comparison is to show that the single Llama-MTSK model can achieve similar or better performance than the four separate Llama-AVSR models, demonstrating its efficiency and flexibility.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison between Llama-AVSR and our proposed Llama  MS, SS, and MSS approaches on LRS2 and LRS3 benchmarks. †Llama-AVSR trains 4444 independent models tailored to each configuration of audio-video compression rates.
> </details>





### In-depth insights


#### MTSK for AVSR
**MTSK for AVSR (Audio-Visual Speech Recognition)** represents a paradigm shift by incorporating Matryoshka Representation Learning to enhance adaptability in AVSR systems. This approach allows a single model to function effectively across various computational constraints and accuracy needs, eliminating the need for training multiple models for different compression levels. By encoding audio-visual representations at multiple granularities, Llama-MTSK maximizes the efficiency-performance trade-off, making it a versatile solution for deployment in diverse environments.

#### Elastic Inference
The concept of Elastic Inference revolves around dynamically adjusting the computational resources allocated to a machine learning model at inference time. This adaptability is crucial in real-world deployments where **workloads fluctuate**, and fixed resource allocations lead to inefficiency. Elastic Inference aims to optimize the trade-off between **performance and cost**, scaling resources up during periods of high demand to maintain low latency and scaling down during periods of low demand to minimize expenses. Techniques for achieving elastic inference include dynamically adjusting model size (e.g., through pruning or quantization), batch size, or the number of active model replicas. The goal is to enable models to efficiently serve diverse and changing request patterns without compromising service level agreements (SLAs) or incurring unnecessary costs. This requires careful monitoring of system metrics and predictive scaling mechanisms to anticipate workload changes.

#### LoRA Fine-Tuning
**LoRA (Low-Rank Adaptation)** is a parameter-efficient fine-tuning technique that freezes the pre-trained LLM weights and introduces trainable rank-decomposition matrices to adapt the model to downstream tasks. This significantly reduces the number of trainable parameters, making it computationally cheaper and faster compared to full fine-tuning. LoRA's modularity allows it to be easily integrated and removed without altering the original LLM. In the context of this paper, LoRA is utilized to adapt the LLM to the multimodal audio-visual speech recognition task, enabling efficient learning of the relationship between audio-visual features and text. The authors propose **three LoRA-based strategies** to efficiently fine-tune the LLM, each employing distinct methods using global and scale-specific LoRA modules. Extensive evaluations show that LoRA enables achieving state-of-the-art results while significantly reducing computational costs.

#### Avg Pool vs Stack
**Average Pooling vs. Stacking** are two distinct methods for compressing audio and visual tokens before feeding them into a Large Language Model (LLM) for tasks like Audio-Visual Speech Recognition (AVSR). **Average pooling** reduces the sequence length by averaging consecutive tokens, essentially downsampling the representation. While computationally efficient, it can lead to information loss, especially with high compression ratios, potentially degrading performance. **Stacking**, on the other hand, concatenates consecutive tokens along the feature dimension. This maintains the original sequence length but increases the dimensionality of each token, enabling the LLM to potentially access finer-grained information. However, stacking can significantly increase the computational cost due to the larger feature dimension, requiring careful management to balance performance and efficiency. The choice between these techniques depends on the specific task, the desired trade-off between computational cost and accuracy, and the architecture of the LLM.

#### MTSK Limitations
**Memory Requirements:** Processing multiple sequences at various granularities during training increases the LLM's memory footprint, demanding careful selection of compression rates to balance feasibility and performance. **LoRA vs Other Methods:** The study primarily focuses on LoRA for parameter-efficient fine-tuning, but other methods like adapter-tuning and advanced LoRA techniques could be explored to extend the method's capabilities, offering avenues for further research.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.06362/x2.png)

> 🔼 This figure illustrates three different approaches for adapting a Large Language Model (LLM) using Low-Rank Adaptation (LoRA) within a Matryoshka framework.  The Matryoshka concept involves processing audio-visual data at multiple scales (granularities) simultaneously.  The three methods are:  1. **Multi-Scale (MS) LoRA:** A single global LoRA module is used to fine-tune the LLM's parameters across all scales. This shares learned knowledge efficiently. 2. **Specific-Scale (SS) LoRA:** Separate LoRA modules are trained for each scale, allowing for specialized learning at each level of detail.  This may improve accuracy but at higher computational cost. 3. **Multi-Specific-Scale (MSS) LoRA:** This approach combines MS and SS by utilizing both a global and scale-specific LoRA modules. This offers a potential balance between efficiency and performance. The figure visually depicts the architecture of each approach and how it would be incorporated into the system for processing audio-visual data.
> <details>
> <summary>read the caption</summary>
> Figure 2: Our three proposed LoRA Matryoshka (LoRA  ) approaches. Multi-Scale (MS) LoRA  uses a shared global LoRA module for all the audio-visual token scales (in this specific example there are three scales) to fine-tune the pre-trained matrices of the LLM. The Specific-Scale (SS) variant defines a LoRA module tailored to each scale, learning and specializing to a specific scale. The third approach, Multi-Specific-Scale (MSS), combines MS and SS to support both global and specific-scale LoRAs. The global LoRA is responsible to capture relationships that can be shared among different-scale tokens, while specific-scale LoRAs learn tokens based on the specific scale.
> </details>



![](https://arxiv.org/html/2503.06362/x3.png)

> 🔼 This figure displays the Word Error Rate (WER) results for the Automatic Speech Recognition (ASR) task, comparing two different compression methods: average pooling and stacking.  The results are shown across a range of compression rates.  The left panel shows WER for average pooling and the right panel for stacking.  Both methods utilize Whisper Small as the audio encoder and Llama 3.2-1B as the Large Language Model (LLM). This visualization helps to assess the impact of different compression methods and rates on the overall performance of the ASR system.
> <details>
> <summary>read the caption</summary>
> Figure 3: WER results for the average pooling (left) and stacking (right) compression methods for the ASR task. We use Whisper Small as audio encoder and Llama 3.2-1B as LLM.
> </details>



![](https://arxiv.org/html/2503.06362/x4.png)

> 🔼 Figure 4 presents the Word Error Rate (WER) results for the Visual Speech Recognition (VSR) task using two different compression methods: average pooling (left panel) and stacking (right panel).  The results are shown for various compression rates.  The experiment used AVHuBERT Large as the video encoder and Llama 3.2-3B as the Large Language Model (LLM). This figure showcases the impact of different compression strategies and rates on VSR performance, highlighting the trade-off between computational efficiency and accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 4: WER results for the average pooling (left) and stacking (right) compression methods for the VSR task. We use AVHuBERT Large as video encoder and Llama 3.2-3B as LLM.
> </details>



![](https://arxiv.org/html/2503.06362/x5.png)

> 🔼 Figure 5 presents additional Word Error Rate (WER) results for the Automatic Speech Recognition (ASR) task.  Unlike Figure 3, which used average pooling for compression, this figure shows results obtained using a stacking compression method.  The experiment explores a range of compression rates: {2, 4, 6, 8, 10}.  The goal is to demonstrate how different compression techniques and rates affect the performance of Llama-MTSK (the proposed model) in comparison to the Llama-AVSR baseline model.  The figure helps to assess the model's robustness and efficiency across varying levels of compression.
> <details>
> <summary>read the caption</summary>
> Figure 5: Additional WER results using stacking compression for the ASR task with {2222, 4444, 6666, 8888, 10101010} rates. We use the same configuration as in Figure 3.
> </details>



![](https://arxiv.org/html/2503.06362/x6.png)

> 🔼 Figure 6 presents supplementary results for the Audio-Visual Speech Recognition (AVSR) task using the LRS3 dataset.  It specifically focuses on the performance of the Llama-based models (Llama MS, Llama SS, and Llama MSS) when employing a stacking compression method.  The figure compares these models against the Llama-AVSR baseline, which trains separate models for each audio-visual compression rate combination. This allows for a direct comparison of the performance and efficiency between the Matryoshka-based approach (capable of handling various compression ratios within a single model) and the conventional method (requiring separate models for each configuration). The x-axis represents different audio-visual compression rate combinations, and the y-axis shows the Word Error Rate (WER), a common metric to assess the accuracy of speech recognition systems.
> <details>
> <summary>read the caption</summary>
> Figure 6: Additional results for Llama  using stacking compression on the LRS3 dataset.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.5.3">
<tr class="ltx_tr" id="S3.T2.5.3.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T2.5.3.4.1" rowspan="2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.3.4.1.1">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T2.5.3.4.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.3.4.2.1">Rates</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T2.5.3.4.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.3.4.3.1">Lab.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.5.3.4.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.3.4.4.1">Dataset</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.3.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.5.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.3.5.1.1">(A,V)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.5.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.3.5.2.1">Hrs.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.5.3.5.3" style="background-color:#EBEBEB;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.3.5.3.1" style="background-color:#EBEBEB;">LRS2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.5.3.5.4" style="background-color:#FCF1F1;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T2.5.3.5.4.1" style="background-color:#FCF1F1;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.3.5.4.1.1">LRS3</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.3.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T2.5.3.6.1" style="padding-left:0.0pt;padding-right:0.0pt;">CM-seq2seq</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.5.3.6.2" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="S3.T2.5.3.6.2.1">1,1</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.5.3.6.3" style="padding-left:0.0pt;padding-right:0.0pt;">380/433</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.5.3.6.4" style="padding-left:0.0pt;padding-right:0.0pt;">3.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.5.3.6.5" style="padding-left:0.0pt;padding-right:0.0pt;">2.3</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.3.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.5.3.7.1" style="padding-left:0.0pt;padding-right:0.0pt;">Eff. Conf.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.7.2" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="S3.T2.5.3.7.2.1">1,1</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.7.3" style="padding-left:0.0pt;padding-right:0.0pt;">818/818</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.7.4" style="padding-left:0.0pt;padding-right:0.0pt;">2.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.7.5" style="padding-left:0.0pt;padding-right:0.0pt;">1.8</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.3.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.5.3.8.1" style="padding-left:0.0pt;padding-right:0.0pt;">auto-avsr</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.8.2" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="S3.T2.5.3.8.2.1">1,1</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.8.3" style="padding-left:0.0pt;padding-right:0.0pt;">3448/1902</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.8.4" style="padding-left:0.0pt;padding-right:0.0pt;">1.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.8.5" style="padding-left:0.0pt;padding-right:0.0pt;">1.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.3.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.5.3.9.1" style="padding-left:0.0pt;padding-right:0.0pt;">W-Flamingo</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.9.2" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="S3.T2.5.3.9.2.1">1,1</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.9.3" style="padding-left:0.0pt;padding-right:0.0pt;">1982/433</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.9.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.3.9.4.1">1.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.9.5" style="padding-left:0.0pt;padding-right:0.0pt;">1.1</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.3.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.5.3.10.1" style="padding-left:0.0pt;padding-right:0.0pt;">USR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.10.2" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="S3.T2.5.3.10.2.1">1,1</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.10.3" style="padding-left:0.0pt;padding-right:0.0pt;">1982/1759</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.10.4" style="padding-left:0.0pt;padding-right:0.0pt;">1.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.10.5" style="padding-left:0.0pt;padding-right:0.0pt;">1.1</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.3.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.5.3.11.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.5.3.11.1.1">\hdashline</span>
Llama-AVSR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.11.2" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="S3.T2.5.3.11.2.1">4,2</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.11.3" style="padding-left:0.0pt;padding-right:0.0pt;">223/433</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.11.4" style="padding-left:0.0pt;padding-right:0.0pt;">2.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.5.3.11.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.3.11.5.1">0.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.3.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.3.1.1.1.1">\hdashline</span>
Llama
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="9" id="S3.T2.3.1.1.1.g1" src="extracted/6261859/Figures/nesting-dolls.png" width="7"/>
<span class="ltx_text ltx_font_typewriter" id="S3.T2.3.1.1.1.2">MS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.3.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="S3.T2.3.1.1.2.1">4,2</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.3.1.1.3" style="padding-left:0.0pt;padding-right:0.0pt;">223/433</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.3.1.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.1.4.1">2.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.3.1.1.5" style="padding-left:0.0pt;padding-right:0.0pt;">1.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.4.2.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">Llama
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="9" id="S3.T2.4.2.2.1.g1" src="extracted/6261859/Figures/nesting-dolls.png" width="7"/>
<span class="ltx_text ltx_font_typewriter" id="S3.T2.4.2.2.1.1">SS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.4.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="S3.T2.4.2.2.2.1">4,2</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.4.2.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">223/433</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.4.2.2.4" style="padding-left:0.0pt;padding-right:0.0pt;">2.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.4.2.2.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.2.2.5.1">0.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T2.5.3.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">Llama
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="9" id="S3.T2.5.3.3.1.g1" src="extracted/6261859/Figures/nesting-dolls.png" width="7"/>
<span class="ltx_text ltx_font_typewriter" id="S3.T2.5.3.3.1.1">MSS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T2.5.3.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="S3.T2.5.3.3.2.1">4,2</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T2.5.3.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">223/433</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T2.5.3.3.4" style="padding-left:0.0pt;padding-right:0.0pt;">2.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T2.5.3.3.5" style="padding-left:0.0pt;padding-right:0.0pt;">1.2</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of the performance of the Llama model against several state-of-the-art (SOTA) methods.  The comparison is done using two large-scale audio-visual speech recognition (AVSR) datasets: LRS2 and LRS3.  The table shows the word error rate (WER) achieved by each model on each dataset.  A key aspect of the comparison is the amount of labeled data used to train each model, which is indicated in the 'Lab. Hrs.' column.  The values X/Y in this column represent the number of labeled hours used for training on the LRS2 and LRS3 datasets, respectively. This allows for a nuanced comparison, considering the potential impact of training data size on model performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison between Llama  and multiple SOTA methods on the LRS2 and LRS3 benchmarks. The “Lab. Hrs.” column with values X/Y specifies how many labeled hours have been used in training for LRS2 (X) and LRS3 (Y).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.3.1">
<tr class="ltx_tr" id="S3.T3.3.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T3.3.1.2.1" rowspan="2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.2.1.1">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="5" id="S3.T3.3.1.2.2" style="background-color:#D1F0BF;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.2.2.1" style="background-color:#D1F0BF;">Compression Rate</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.3.1.3.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T3.3.1.3.1.1">2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.3.1.3.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T3.3.1.3.2.1">4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.3.1.3.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T3.3.1.3.3.1">6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.3.1.3.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T3.3.1.3.4.1">8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.3.1.3.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T3.3.1.3.5.1">10</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T3.3.1.4.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.4.1.1">Avg Pooling</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.3.1.4.2" style="padding-left:0.0pt;padding-right:0.0pt;">4.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.3.1.4.3" style="padding-left:0.0pt;padding-right:0.0pt;">13.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.3.1.4.4" style="padding-left:0.0pt;padding-right:0.0pt;">46.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.3.1.4.5" style="padding-left:0.0pt;padding-right:0.0pt;">89.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.3.1.4.6" style="padding-left:0.0pt;padding-right:0.0pt;">160.0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.1" style="background-color:#E1F1FF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T3.3.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_ERROR undefined" id="S3.T3.3.1.1.1.2">\hdashline</span>
<span class="ltx_text ltx_font_bold" id="S3.T3.3.1.1.1.1" style="background-color:#E1F1FF;">Llama
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="9" id="S3.T3.3.1.1.1.1.g1" src="extracted/6261859/Figures/nesting-dolls.png" width="7"/>
<span class="ltx_text ltx_font_medium" id="S3.T3.3.1.1.1.1.1"> <span class="ltx_text ltx_font_typewriter" id="S3.T3.3.1.1.1.1.1.1">MS</span></span></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T3.3.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T3.3.1.1.2.1" style="background-color:#E1F1FF;">2.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T3.3.1.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T3.3.1.1.3.1" style="background-color:#E1F1FF;">2.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T3.3.1.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T3.3.1.1.4.1" style="background-color:#E1F1FF;">2.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T3.3.1.1.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T3.3.1.1.5.1" style="background-color:#E1F1FF;">2.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T3.3.1.1.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T3.3.1.1.6.1" style="background-color:#E1F1FF;">3.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of Llama MS, a Matryoshka-based Multimodal LLM for AVSR, against a baseline approach.  The baseline uses a standard Llama-AVSR model but reduces the number of input tokens by applying average pooling during inference. This comparison is performed for the ASR (Automatic Speech Recognition) task specifically on the LRS3 dataset, across various compression rates. The table helps illustrate the performance gains of Llama MS in terms of Word Error Rate (WER)  when compared to a simple token reduction strategy on the same pretrained LLM.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison between Llama  MS and a training-free Llama-AVSR-based approach that reduces the number of tokens via average pooling at inference time for the ASR task on the LRS3 dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.5.1">
<tr class="ltx_tr" id="S3.T4.5.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T4.5.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.1.1.1">(A,V) Rates</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T4.5.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.1.2.1"># Tokens</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T4.5.1.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.1.3.1">TFLOPs</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.5.1.2" style="background-color:#E88383;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.5.1.2.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T4.5.1.2.1.1" style="background-color:#E88383;">(<span class="ltx_text ltx_font_typewriter" id="S3.T4.5.1.2.1.1.1">1,1</span>)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.5.1.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T4.5.1.2.2.1" style="background-color:#E88383;">757</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.5.1.2.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T4.5.1.2.3.1" style="background-color:#E88383;">11.40</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.5.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.5.1.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_ERROR undefined" id="S3.T4.5.1.3.1.1">\hdashline</span>
(<span class="ltx_text ltx_font_typewriter" id="S3.T4.5.1.3.1.2">4,2</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.5.1.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">257</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.5.1.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">3.87</td>
</tr>
<tr class="ltx_tr" id="S3.T4.5.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.5.1.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="S3.T4.5.1.4.1.1">4,5</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.5.1.4.2" style="padding-left:0.0pt;padding-right:0.0pt;">182</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.5.1.4.3" style="padding-left:0.0pt;padding-right:0.0pt;">2.74</td>
</tr>
<tr class="ltx_tr" id="S3.T4.5.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.5.1.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="S3.T4.5.1.5.1.1">16,2</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.5.1.5.2" style="padding-left:0.0pt;padding-right:0.0pt;">163</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.5.1.5.3" style="padding-left:0.0pt;padding-right:0.0pt;">2.46</td>
</tr>
<tr class="ltx_tr" id="S3.T4.5.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T4.5.1.6.1" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="S3.T4.5.1.6.1.1">16,5</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T4.5.1.6.2" style="padding-left:0.0pt;padding-right:0.0pt;">88</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T4.5.1.6.3" style="padding-left:0.0pt;padding-right:0.0pt;">1.33</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a computational cost analysis of the Llama MS model, focusing on different audio-visual compression rates while using the Llama 3.1-8B language model. It details the number of tokens processed and the total floating-point operations (TFLOPS) required for inference at various compression levels.  This analysis demonstrates the computational efficiency gains achieved by employing different compression rates in Llama MS.
> <details>
> <summary>read the caption</summary>
> Table 4: Computational cost analysis of Llama  MS using different compression rates and Llama 3.1-8B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T5.13">
<tr class="ltx_tr" id="A1.T5.13.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="A1.T5.13.8.1" rowspan="2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.13.8.1.1">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="4" id="A1.T5.13.8.2" style="background-color:#D1F0BF;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.13.8.2.1" style="background-color:#D1F0BF;">Compression Rates (A,V)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.13.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T5.13.9.1" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="A1.T5.13.9.1.1">4,2</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T5.13.9.2" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="A1.T5.13.9.2.1">4,5</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T5.13.9.3" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="A1.T5.13.9.3.1">16,2</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T5.13.9.4" style="padding-left:0.0pt;padding-right:0.0pt;">(<span class="ltx_text ltx_font_typewriter" id="A1.T5.13.9.4.1">16,5</span>)</td>
</tr>
<tr class="ltx_tr" id="A1.T5.13.10">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="5" id="A1.T5.13.10.1" style="background-color:#FCF1F1;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A1.T5.13.10.1.1" style="background-color:#FCF1F1;"><span class="ltx_text ltx_font_bold" id="A1.T5.13.10.1.1.1">LRS3 Dataset</span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.7.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.7.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">Llama-AVSR<sup class="ltx_sup" id="A1.T5.7.1.1.1">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.7.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.7.1.2.1">0.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.7.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.7.1.3.1">0.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.7.1.4" style="padding-left:0.0pt;padding-right:0.0pt;">1.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.7.1.5" style="padding-left:0.0pt;padding-right:0.0pt;">2.1</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.8.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_ERROR undefined" id="A1.T5.8.2.1.1">\hdashline</span>
Llama
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="9" id="A1.T5.8.2.1.g1" src="extracted/6261859/Figures/nesting-dolls.png" width="7"/>
<span class="ltx_text ltx_font_typewriter" id="A1.T5.8.2.1.2">MS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.8.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">1.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.8.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">1.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.8.2.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.8.2.4.1">1.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.8.2.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.8.2.5.1">1.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.9.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.9.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">Llama
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="9" id="A1.T5.9.3.1.g1" src="extracted/6261859/Figures/nesting-dolls.png" width="7"/>
<span class="ltx_text ltx_font_typewriter" id="A1.T5.9.3.1.1">SS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.9.3.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.9.3.2.1">0.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.9.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">1.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.9.3.4" style="padding-left:0.0pt;padding-right:0.0pt;">1.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.9.3.5" style="padding-left:0.0pt;padding-right:0.0pt;">1.8</td>
</tr>
<tr class="ltx_tr" id="A1.T5.10.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.10.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">Llama
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="9" id="A1.T5.10.4.1.g1" src="extracted/6261859/Figures/nesting-dolls.png" width="7"/>
<span class="ltx_text ltx_font_typewriter" id="A1.T5.10.4.1.1">MSS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.10.4.2" style="padding-left:0.0pt;padding-right:0.0pt;">1.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.10.4.3" style="padding-left:0.0pt;padding-right:0.0pt;">1.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.10.4.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.10.4.4.1">1.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.10.4.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.10.4.5.1">1.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.13.11">
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="5" id="A1.T5.13.11.1" style="background-color:#EBEBEB;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A1.T5.13.11.1.1" style="background-color:#EBEBEB;"><span class="ltx_text ltx_font_bold" id="A1.T5.13.11.1.1.1">LRS2 Dataset</span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.13.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.13.12.1" style="padding-left:0.0pt;padding-right:0.0pt;">Llama-AVSR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.13.12.2" style="padding-left:0.0pt;padding-right:0.0pt;">2.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.13.12.3" style="padding-left:0.0pt;padding-right:0.0pt;">2.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.13.12.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.13.12.4.1">2.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.13.12.5" style="padding-left:0.0pt;padding-right:0.0pt;">3.3</td>
</tr>
<tr class="ltx_tr" id="A1.T5.11.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.11.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_ERROR undefined" id="A1.T5.11.5.1.1">\hdashline</span>
Llama
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="9" id="A1.T5.11.5.1.g1" src="extracted/6261859/Figures/nesting-dolls.png" width="7"/>
<span class="ltx_text ltx_font_typewriter" id="A1.T5.11.5.1.2">MS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.11.5.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.11.5.2.1">2.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.11.5.3" style="padding-left:0.0pt;padding-right:0.0pt;">2.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.11.5.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.11.5.4.1">2.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.11.5.5" style="padding-left:0.0pt;padding-right:0.0pt;">3.2</td>
</tr>
<tr class="ltx_tr" id="A1.T5.12.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.12.6.1" style="padding-left:0.0pt;padding-right:0.0pt;">Llama
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="9" id="A1.T5.12.6.1.g1" src="extracted/6261859/Figures/nesting-dolls.png" width="7"/>
<span class="ltx_text ltx_font_typewriter" id="A1.T5.12.6.1.1">SS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.12.6.2" style="padding-left:0.0pt;padding-right:0.0pt;">2.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.12.6.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.12.6.3.1">2.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.12.6.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.12.6.4.1">2.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.12.6.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.12.6.5.1">2.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.13.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A1.T5.13.7.1" style="padding-left:0.0pt;padding-right:0.0pt;">Llama
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="9" id="A1.T5.13.7.1.g1" src="extracted/6261859/Figures/nesting-dolls.png" width="7"/>
<span class="ltx_text ltx_font_typewriter" id="A1.T5.13.7.1.1">MSS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T5.13.7.2" style="padding-left:0.0pt;padding-right:0.0pt;">2.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T5.13.7.3" style="padding-left:0.0pt;padding-right:0.0pt;">2.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T5.13.7.4" style="padding-left:0.0pt;padding-right:0.0pt;">3.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T5.13.7.5" style="padding-left:0.0pt;padding-right:0.0pt;">3.4</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a comparison of the performance of four different models on the LRS2 and LRS3 speech recognition benchmarks.  The models compared are: Llama-AVSR (a baseline model that trains four separate models, each optimized for a specific combination of audio and video compression rates), and three variations of the Llama-MTSK model (Llama MS, Llama SS, and Llama MSS).  Llama-MTSK is a novel approach that uses a single model capable of adapting to various compression rates.  The table shows Word Error Rates (WER) for each model and each compression rate combination, allowing for a direct comparison of the performance and efficiency of the different approaches.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison between Llama-AVSR and our proposed Llama  MS, SS, and MSS approaches on LRS2 and LRS3 benchmarks. We employ Whisper medium and Llama 3.1-8B. †Llama-AVSR trains 4444 independent models tailored to each configuration of audio-video compression rates.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.06362/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06362/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06362/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06362/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06362/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06362/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06362/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06362/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06362/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06362/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06362/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06362/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06362/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}