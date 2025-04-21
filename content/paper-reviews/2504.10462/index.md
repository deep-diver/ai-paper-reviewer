---
title: "The Scalability of Simplicity: Empirical Analysis of Vision-Language Learning with a Single Transformer"
summary: "SAIL: A Single Transformer MLLM matches modular MLLMs in performance, offering simplicity and improved data scalability."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Bytedance Seed",]
showSummary: true
date: 2025-04-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.10462 {{< /keyword >}}
{{< keyword icon="writer" >}} Weixian Lei et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.10462" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.10462" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.10462/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multimodal Large Language Models (MLLMs) typically use modular design, which uses a pre-trained vision transformer (ViT) to extract image features, a Large Language Model (LLM) to process text, and a projector to align the two. While effective, this paradigm is fragmented, increases complexity and may limit scalability. A promising alternative is to process raw image patches and text tokens within a single Transformer to enable end-to-end learning.



This paper introduces **SAIL**, a single transformer unified multimodal large language model (MLLM) that eliminates the need for a separate vision encoder. SAIL adapts mix-attention mechanisms and multimodal positional encodings to better align the visual and textual modalities. The result shows comparable performance to modular MLLMs, enhanced scalability, different cross-modal information flow and demonstrates strong visual representation capabilities. These properties surpass modular MLLMs in leveraging data, forming direct vision pathways and functioning as encoders.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Single Transformer MLLMs show superior data scaling compared to modular designs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SAIL's architecture creates a more direct, vision-centric information flow. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SAIL demonstrates effective vision encoder capabilities without pre-trained components. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**SAIL's** unified vision-language architecture simplifies multimodal learning, enhances scalability, and offers a new direction. It challenges reliance on pre-trained vision encoders and inspires further research into end-to-end models, potentially transforming multimodal intelligence and future research.

------
#### Visual Insights



![](https://arxiv.org/html/2504.10462/x1.png)

> 🔼 Figure 1 presents a comparative analysis of the scalability and performance of the SAIL model against other Multimodal Large Language Models (MLLMs).  Panel (A) displays data scaling curves for both modular MLLMs (representing the current state-of-the-art) and the single-transformer SAIL model.  It shows how performance improves as the amount of pre-training data increases. Notably, the SAIL model exhibits a steeper performance increase, highlighting its superior data scalability.  Panel (B) focuses on a comparison of SAIL's performance with existing single-transformer MLLMs on both vision-centric tasks and vision-language tasks.  SAIL demonstrates significantly improved results, pushing the boundaries of what single-transformer models can achieve.
> <details>
> <summary>read the caption</summary>
> Figure 1:  (A) Data scaling curve for Modular Multimodal Large Language Model (MLLM) and Sail, our Single Transformer-based MLLM. As pretraining data increases, the single transformer Sail shows a sharper performance gain, demonstrating its superior data scalability. (B) Comparison to existing Single Transformer-based MLLMs: our Sail pushes the performance boundaries on both vision tasks and vision-language tasks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.1">
<tr class="ltx_tr" id="S3.T1.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.1.1.1" style="font-size:90%;">Stage</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.2.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.1.2.1" style="font-size:90%;">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.1.3.1" style="font-size:90%;">Img.Res</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.1.4.1" style="font-size:90%;">Num</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.2.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.2.1.1" style="font-size:90%;">Pretraining S1</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.2.1.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.2.1.2.2.1" style="font-size:90%;">Recap-DataComp-1B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.2.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="S3.T1.2.1.2.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.2.3" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.2.3.1" style="font-size:90%;">224x224</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.2.4.1" style="font-size:90%;">512M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.1.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.2.1.3.1.1" style="font-size:90%;">SlimPajama </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a><span class="ltx_text" id="S3.T1.2.1.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.3.2.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.4.1" rowspan="4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.1.1" style="font-size:90%;">Pretraining S2</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.2.1.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.2.1.4.2.1" style="font-size:90%;">Capfusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.4.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib84" title=""><span class="ltx_text" style="font-size:90%;">84</span></a><span class="ltx_text" id="S3.T1.2.1.4.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.4.3" rowspan="4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.3.1" style="font-size:90%;">AnyRes</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.4.1" style="font-size:90%;">60M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.1.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.2.1.5.1.1" style="font-size:90%;">OCR from LAION COCO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="S3.T1.2.1.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.5.2.1" style="font-size:90%;">7M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.1.6.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.2.1.6.1.1" style="font-size:90%;">InifinityMM Stage 2 subset </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a><span class="ltx_text" id="S3.T1.2.1.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.2.1" style="font-size:90%;">19M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.1.7.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.2.1.7.1.1" style="font-size:90%;">SlimPajama </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a><span class="ltx_text" id="S3.T1.2.1.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.7.2.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.2.1.8.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.1.1" style="font-size:90%;">SFT</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.2.1.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.2.1.8.2.1" style="font-size:90%;">InifinityMM Stage3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.8.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a><span class="ltx_text" id="S3.T1.2.1.8.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.2.1.8.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.3.1" style="font-size:90%;">AnyRes</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.1.8.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.4.1" style="font-size:90%;">6M</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table details the datasets used in different training stages of the SAIL model.  It breaks down the data used for the initial visual knowledge acquisition (Stage 1), the any-resolution image understanding (Stage 2), and supervised fine-tuning (SFT). For each stage, it specifies the dataset name, the image resolution used (Img.Res), and the number of image-text pairs.  The caption notes that all listed datasets are publicly available and that the table shows the default configuration; different settings were used for scalability and ablation experiments.
> <details>
> <summary>read the caption</summary>
> Table 1:  Details of training datasets used across all stages. “Img.Res” refers to the image resolution settings applied during each training stage. All datasets listed are publicly available. Note that these settings represent the default configuration for standard Sail training, while separate settings are used for scaling experiments and ablation studies.
> </details>





### In-depth insights


#### Data Scaling+
The 'Data Scaling' analysis highlights the **superior scalability of single-transformer MLLMs** like SAIL compared to modular architectures. While modular MLLMs may initially perform better with limited data due to pre-trained vision encoders, single-transformer models demonstrate steeper performance gains as data volume increases. This suggests a greater capacity to learn directly from large-scale multimodal data, **potentially matching or exceeding modular MLLM performance** with sufficient training data. The key takeaway is that **unified architectures can effectively leverage large datasets**, bridging the performance gap with modular designs and unlocking the full potential of end-to-end learning.

#### Vision-Centric
The concept of 'Vision-Centric' in multimodal learning emphasizes prioritizing visual information processing. It suggests architectures where visual data significantly influences downstream tasks.  In the context of Single Transformer MLLMs, this could mean that, unlike modular approaches, visual tokens receive **higher attention scores** during the generation of textual responses. The architecture would ideally allocate more computational resources to processing visual inputs, leading to richer visual representations. Vision-centric models can better capture fine-grained details and spatial relationships within images. The design choices in Single Transformer MLLMs, such as **bidirectional attention for image patches**, directly support a vision-centric approach. The ability to function effectively as a standalone vision encoder. Ultimately, a vision-centric approach allows the model to be better grounded in visual reality, improving its ability to handle tasks that require reasoning.

#### Single Encoder
The term "Single Encoder", while not explicitly present, suggests a shift towards **unified architectures** in multimodal learning. This implies models that process both visual and textual information through a **single pathway**, eliminating separate vision encoders like ViTs. The potential benefits include **parameter efficiency**, **simplified training**, and **enhanced cross-modal interaction**. Challenges may involve handling modality-specific characteristics and learning visual representations from scratch. Success hinges on innovative attention mechanisms and positional encodings to effectively integrate diverse data types, enabling superior scaling and vision-centric information flow.

#### M-ROPE is Key
While the exact heading 'M-ROPE is Key' doesn't appear, the paper discusses Multimodal ROPE (M-ROPE) for positional encoding, implying its importance. M-ROPE likely addresses **challenges in harmonizing positional information** across visual and textual modalities within the single transformer architecture. The paper probably highlights how M-ROPE contributes to improved performance in tasks requiring cross-modal understanding by **enhancing positional sensitivity** and **facilitating robust generalization to extended sequences** during inference. It seemingly constrains absolute position magnitudes for visual tokens and enhances positional understanding when compared to standard 1D-ROPE, and plays a key role in handling the differences in data structure (2D image vs 1D text) within a unified space, contributing to **better visual representation learning**.

#### Scalable SAIL
While the heading "Scalable SAIL" doesn't explicitly appear in the provided text, the concept of scalability is central to the paper's analysis of SAIL (Single Transformer for Vision and Language). The research investigates how SAIL's performance evolves with increasing training data and model size. **Key findings highlight SAIL's superior data scalability** compared to modular MLLMs, demonstrating steeper performance gains as pretraining data scales. This suggests that SAIL's unified architecture effectively leverages large-scale data, potentially matching or exceeding the performance of modular MLLMs with sufficient data. Furthermore, the paper explores model scaling, observing corresponding performance enhancements and reduced training loss with larger models. **This underscores SAIL's capacity to capture complex multimodal alignments** more effectively as model size increases. The results emphasize the importance of both data and model scaling for maximizing the potential of Single Transformer architectures like SAIL.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.10462/x2.png)

> 🔼 Figure 2 illustrates the architecture of SAIL, a unified transformer model for vision and language.  Panel (A) shows the overall architecture: input text and images are preprocessed and fed into the transformer without additional modules. Panel (B) details the mixed attention mechanism, using bidirectional attention within image patches and causal attention for text tokens.  Color-coded squares highlight the attention flow. Panel (C) explains the multimodal rotary position embedding (M-ROPE) used to handle positional information for both image and text data.
> <details>
> <summary>read the caption</summary>
> Figure 2: Model architecture and micro-designs for Sail. (A) Model Architecture: Sail is a unified transformer that processes both images and texts without extra module designs. (B) Mixed Attention Mechanism: we adopt bidirectional attention for image patches from the same image and causal attention for text tokens. Examples for a multimodal sequence and a text sequence are provided. Colored squares represent “allow to attend” and white squares indicate “prevent from attending”. (C) Multimodal RoPE: an illustration of the multimodal rotary position embedding for Sail, with examples for a multimodal sequence and a text sequence.
> </details>



![](https://arxiv.org/html/2504.10462/x3.png)

> 🔼 This figure demonstrates the effects of model scaling on the performance of the SAIL model. The left panel shows that as the model size increases (from 0.5B to 7B parameters), the training loss for language modeling decreases, indicating better model learning.  The right panel shows that increased model size leads to improved performance on downstream vision-language model (VLM) tasks. This confirms that larger models can capture more complex relationships between visual and textual data, leading to enhanced performance. 
> <details>
> <summary>read the caption</summary>
> Figure 3:  Model scaling of Sail. Left: As the model size increases, the training language modeling loss gradually decreases. Right: As the model size increases, performance on downstream VLM tasks progressively improves.
> </details>



![](https://arxiv.org/html/2504.10462/x4.png)

> 🔼 This figure compares the allocation of attention weights to image tokens across different transformer layers in Single Transformer-based and modular Multimodal Large Language Models (MLLMs).  The x-axis represents the layer index, and the y-axis represents the percentage of attention weights assigned to image tokens.  The graph shows that Single Transformer-based MLLMs consistently allocate a significantly higher proportion of attention to image tokens than modular MLLMs, indicating a more vision-centric processing approach.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Image Attention Score Allocation: The figure shows the proportion of image attention scores across different transformer layers for Single Transformer-based MLLM and modular MLLM when predicting tokens. Single Transformer-based MLLM generally allocates higher attention weights to image tokens compared to modular MLLM.
> </details>



![](https://arxiv.org/html/2504.10462/x5.png)

> 🔼 Figure 5 presents a comparison between the performance of SAIL and LLaVA1.5 on the MMVP benchmark.  The figure showcases four example image-based questions where both models answer differently, highlighting the strengths of SAIL.  SAIL outperforms LLaVA1.5 by accurately identifying smaller details (such as patterns on Easter eggs or the direction birds are flapping), and by more reliably differentiating between similar states (e.g., raised vs. lowered elephant trunk). This demonstrates SAIL's enhanced ability to perceive subtle differences and object states compared to LLaVA1.5.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of Sail and LLaVA1.5 on MMVP examples. Sail demonstrates better performance in perceiving minor regions and objects, as well as more accurately distinguishing object states.
> </details>



![](https://arxiv.org/html/2504.10462/x6.png)

> 🔼 This figure compares the attention mechanisms of a single-transformer based multi-modal large language model (MLLM) called SAIL, and a modular MLLM.  It shows the percentage of attention weights allocated to image tokens at different layers of the transformer networks (shallow, medium, and deep). The key finding is that SAIL consistently allocates a substantially higher proportion of its attention to image tokens than the modular MLLM across all layers. This suggests that SAIL's architecture facilitates a more direct and vision-centric processing of visual information during prediction.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Image attention score allocation for Sail and its modular MLLM counterpart. We compared the attention score allocation distribution for shallow layers, medium layers, and deep layers between these two models. The Single Transformer-based MLLM model significantly allocates a higher proportion of attention score to image tokens during prediction than the modular MLLM.
> </details>



![](https://arxiv.org/html/2504.10462/x7.png)

> 🔼 This figure visualizes how SAIL's attention mechanism focuses on different parts of an image during the process of predicting tokens.  In the initial layers of the transformer, attention is concentrated primarily on the most visually prominent areas of the image. As processing progresses through the deeper layers of the transformer, the attention shifts towards image regions that are semantically more relevant to the specific token being predicted, demonstrating a refinement of focus from overall saliency to contextual relevance.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Visualization of Sail’s attention distribution across image regions during token prediction. In early transformer layers, attention primarily focuses on the salient regions of the image. As the model progresses to deeper layers, attention shifts to areas more relevant to the predicted tokens.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.3.3">
<tr class="ltx_tr" id="S4.T2.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.3.3.4.1" rowspan="2" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text" id="S4.T2.3.3.4.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.4.2" rowspan="2" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text" id="S4.T2.3.3.4.2.1">#Param</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.4.3" rowspan="2" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text" id="S4.T2.3.3.4.3.1">#Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.3.3.4.4" rowspan="2" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text" id="S4.T2.3.3.4.4.1">#Vtoken</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S4.T2.3.3.4.5" style="padding-left:2.1pt;padding-right:2.1pt;">General VQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.3.3.4.6" style="padding-left:2.1pt;padding-right:2.1pt;">Hallucination</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.3.3.4.7" style="padding-left:2.1pt;padding-right:2.1pt;">Math&amp;knowledge</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.3.3.4.8" style="padding-left:2.1pt;padding-right:2.1pt;">OCR VQA</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3.4" style="padding-left:2.1pt;padding-right:2.1pt;">MMS*</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1" style="padding-left:2.1pt;padding-right:2.1pt;">MMB<math alttext="{}^{\text{en}}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><msup id="S4.T2.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.cmml"><mi id="S4.T2.1.1.1.1.m1.1.1a" xref="S4.T2.1.1.1.1.m1.1.1.cmml"></mi><mtext id="S4.T2.1.1.1.1.m1.1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.1a.cmml">en</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1"><ci id="S4.T2.1.1.1.1.m1.1.1.1a.cmml" xref="S4.T2.1.1.1.1.m1.1.1.1"><mtext id="S4.T2.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T2.1.1.1.1.m1.1.1.1">en</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">{}^{\text{en}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">start_FLOATSUPERSCRIPT en end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.2" style="padding-left:2.1pt;padding-right:2.1pt;">SEED<math alttext="{}^{\text{I}}" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><msup id="S4.T2.2.2.2.2.m1.1.1" xref="S4.T2.2.2.2.2.m1.1.1.cmml"><mi id="S4.T2.2.2.2.2.m1.1.1a" xref="S4.T2.2.2.2.2.m1.1.1.cmml"></mi><mtext id="S4.T2.2.2.2.2.m1.1.1.1" xref="S4.T2.2.2.2.2.m1.1.1.1a.cmml">I</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><apply id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1"><ci id="S4.T2.2.2.2.2.m1.1.1.1a.cmml" xref="S4.T2.2.2.2.2.m1.1.1.1"><mtext id="S4.T2.2.2.2.2.m1.1.1.1.cmml" mathsize="70%" xref="S4.T2.2.2.2.2.m1.1.1.1">I</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">{}^{\text{I}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">start_FLOATSUPERSCRIPT I end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3.5" style="padding-left:2.1pt;padding-right:2.1pt;">MMV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3.6" style="padding-left:2.1pt;padding-right:2.1pt;">MME</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3.7" style="padding-left:2.1pt;padding-right:2.1pt;">RWQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3.8" style="padding-left:2.1pt;padding-right:2.1pt;">POPE</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3.9" style="padding-left:2.1pt;padding-right:2.1pt;">Hallu</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3.3" style="padding-left:2.1pt;padding-right:2.1pt;">SQA<math alttext="{}^{\text{I}}" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><msup id="S4.T2.3.3.3.3.m1.1.1" xref="S4.T2.3.3.3.3.m1.1.1.cmml"><mi id="S4.T2.3.3.3.3.m1.1.1a" xref="S4.T2.3.3.3.3.m1.1.1.cmml"></mi><mtext id="S4.T2.3.3.3.3.m1.1.1.1" xref="S4.T2.3.3.3.3.m1.1.1.1a.cmml">I</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><apply id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1"><ci id="S4.T2.3.3.3.3.m1.1.1.1a.cmml" xref="S4.T2.3.3.3.3.m1.1.1.1"><mtext id="S4.T2.3.3.3.3.m1.1.1.1.cmml" mathsize="70%" xref="S4.T2.3.3.3.3.m1.1.1.1">I</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">{}^{\text{I}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">start_FLOATSUPERSCRIPT I end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3.10" style="padding-left:2.1pt;padding-right:2.1pt;">MathV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3.11" style="padding-left:2.1pt;padding-right:2.1pt;">TQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3.12" style="padding-left:2.1pt;padding-right:2.1pt;">AI2D</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3.13" style="padding-left:2.1pt;padding-right:2.1pt;">OCRB</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" colspan="4" id="S4.T2.3.3.5.1" style="padding-left:2.1pt;padding-right:2.1pt;"><em class="ltx_emph ltx_font_italic" id="S4.T2.3.3.5.1.1">Modular MLLMs:</em></td>
<td class="ltx_td ltx_border_t" colspan="13" id="S4.T2.3.3.5.2" style="padding-left:2.1pt;padding-right:2.1pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.6">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.6.1" style="padding-left:2.1pt;padding-right:2.1pt;">InternVL-1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.2" style="padding-left:2.1pt;padding-right:2.1pt;">2.2B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.3" style="padding-left:2.1pt;padding-right:2.1pt;">– / –</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.6.4" style="padding-left:2.1pt;padding-right:2.1pt;">3328</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.5" style="padding-left:2.1pt;padding-right:2.1pt;">46.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.6" style="padding-left:2.1pt;padding-right:2.1pt;">70.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.7" style="padding-left:2.1pt;padding-right:2.1pt;">69.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.8" style="padding-left:2.1pt;padding-right:2.1pt;">39.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.9" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.6.9.1">1902</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.10" style="padding-left:2.1pt;padding-right:2.1pt;">57.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.11" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.6.11.1">88.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.12" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.6.12.1">37.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.13" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.6.13.1">84.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.14" style="padding-left:2.1pt;padding-right:2.1pt;">41.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.15" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.6.15.1">70.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.16" style="padding-left:2.1pt;padding-right:2.1pt;">69.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.17" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.6.17.1">654</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.7">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.7.1" style="padding-left:2.1pt;padding-right:2.1pt;">QwenVL-Chat <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.2" style="padding-left:2.1pt;padding-right:2.1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.3" style="padding-left:2.1pt;padding-right:2.1pt;">7.2B / 50M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.7.4" style="padding-left:2.1pt;padding-right:2.1pt;">256</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.5" style="padding-left:2.1pt;padding-right:2.1pt;">34.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.6" style="padding-left:2.1pt;padding-right:2.1pt;">60.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.7" style="padding-left:2.1pt;padding-right:2.1pt;">58.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.8" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.9" style="padding-left:2.1pt;padding-right:2.1pt;">1848</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.10" style="padding-left:2.1pt;padding-right:2.1pt;">49.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.11" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.12" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.7.12.1">36.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.13" style="padding-left:2.1pt;padding-right:2.1pt;">68.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.14" style="padding-left:2.1pt;padding-right:2.1pt;">35.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.15" style="padding-left:2.1pt;padding-right:2.1pt;">61.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.16" style="padding-left:2.1pt;padding-right:2.1pt;">45.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.17" style="padding-left:2.1pt;padding-right:2.1pt;">488</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.8">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.8.1" style="padding-left:2.1pt;padding-right:2.1pt;">LLaVA-1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.2" style="padding-left:2.1pt;padding-right:2.1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.3" style="padding-left:2.1pt;padding-right:2.1pt;">0.4B+ / 665K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.8.4" style="padding-left:2.1pt;padding-right:2.1pt;">576</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.5" style="padding-left:2.1pt;padding-right:2.1pt;">33.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.6" style="padding-left:2.1pt;padding-right:2.1pt;">64.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.7" style="padding-left:2.1pt;padding-right:2.1pt;">64.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.8" style="padding-left:2.1pt;padding-right:2.1pt;">30.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.9" style="padding-left:2.1pt;padding-right:2.1pt;">1859</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.10" style="padding-left:2.1pt;padding-right:2.1pt;">54.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.11" style="padding-left:2.1pt;padding-right:2.1pt;">85.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.12" style="padding-left:2.1pt;padding-right:2.1pt;">27.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.13" style="padding-left:2.1pt;padding-right:2.1pt;">66.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.14" style="padding-left:2.1pt;padding-right:2.1pt;">25.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.15" style="padding-left:2.1pt;padding-right:2.1pt;">46.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.16" style="padding-left:2.1pt;padding-right:2.1pt;">54.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.17" style="padding-left:2.1pt;padding-right:2.1pt;">318</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.9">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.9.1" style="padding-left:2.1pt;padding-right:2.1pt;">LLaVA-1.6 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.2" style="padding-left:2.1pt;padding-right:2.1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.3" style="padding-left:2.1pt;padding-right:2.1pt;">0.4B+ / 760K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.9.4" style="padding-left:2.1pt;padding-right:2.1pt;">2880</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.5" style="padding-left:2.1pt;padding-right:2.1pt;">37.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.6" style="padding-left:2.1pt;padding-right:2.1pt;">67.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.7" style="padding-left:2.1pt;padding-right:2.1pt;">64.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.8" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.9.8.1">43.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.9" style="padding-left:2.1pt;padding-right:2.1pt;">1842</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.10" style="padding-left:2.1pt;padding-right:2.1pt;">57.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.11" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.9.11.1">86.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.12" style="padding-left:2.1pt;padding-right:2.1pt;">27.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.13" style="padding-left:2.1pt;padding-right:2.1pt;">70.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.14" style="padding-left:2.1pt;padding-right:2.1pt;">32.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.15" style="padding-left:2.1pt;padding-right:2.1pt;">64.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.16" style="padding-left:2.1pt;padding-right:2.1pt;">66.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.17" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.9.17.1">532</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.10">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.10.1" style="padding-left:2.1pt;padding-right:2.1pt;">Cambrian-1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.10.2" style="padding-left:2.1pt;padding-right:2.1pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.10.3" style="padding-left:2.1pt;padding-right:2.1pt;">10B+ / 7M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.10.4" style="padding-left:2.1pt;padding-right:2.1pt;">576</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.10.5" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.10.5.1">50.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.10.6" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.10.6.1">75.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.10.7" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.10.7.1">74.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.10.8" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.10.9" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.10.10" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.10.10.1">64.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.10.11" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.10.12" style="padding-left:2.1pt;padding-right:2.1pt;">30.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.10.13" style="padding-left:2.1pt;padding-right:2.1pt;">80.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.10.14" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.10.14.1">48.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.10.15" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.10.15.1">71.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.10.16" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.10.16.1">73.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.10.17" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.11">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.11.1" style="padding-left:2.1pt;padding-right:2.1pt;">LLaVA-OneVision <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.11.2" style="padding-left:2.1pt;padding-right:2.1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.11.3" style="padding-left:2.1pt;padding-right:2.1pt;">10B+ / 3.2M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.11.4" style="padding-left:2.1pt;padding-right:2.1pt;">7290</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.11.5" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.11.5.1">60.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.11.6" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.11.6.1">81.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.11.7" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.11.7.1">74.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.11.8" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.11.8.1">58.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.11.9" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.11.9.1">1998</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.11.10" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.11.10.1">65.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.11.11" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.11.12" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.11.13" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.11.13.1">96.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.11.14" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.11.14.1">56.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.11.15" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.11.16" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.11.16.1">81.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.11.17" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" colspan="4" id="S4.T2.3.3.12.1" style="padding-left:2.1pt;padding-right:2.1pt;"><em class="ltx_emph ltx_font_italic" id="S4.T2.3.3.12.1.1">Single Transformer-based MLLMs:</em></td>
<td class="ltx_td ltx_border_t" colspan="13" id="S4.T2.3.3.12.2" style="padding-left:2.1pt;padding-right:2.1pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.13">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.13.1" style="padding-left:2.1pt;padding-right:2.1pt;">Fuyu <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.13.2" style="padding-left:2.1pt;padding-right:2.1pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.13.3" style="padding-left:2.1pt;padding-right:2.1pt;">– / –</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.13.4" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.13.5" style="padding-left:2.1pt;padding-right:2.1pt;">34.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.13.6" style="padding-left:2.1pt;padding-right:2.1pt;">10.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.13.7" style="padding-left:2.1pt;padding-right:2.1pt;">59.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.13.8" style="padding-left:2.1pt;padding-right:2.1pt;">21.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.13.9" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.13.10" style="padding-left:2.1pt;padding-right:2.1pt;">43.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.13.11" style="padding-left:2.1pt;padding-right:2.1pt;">84</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.13.12" style="padding-left:2.1pt;padding-right:2.1pt;">29.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.13.13" style="padding-left:2.1pt;padding-right:2.1pt;">56.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.13.14" style="padding-left:2.1pt;padding-right:2.1pt;">30.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.13.15" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.13.16" style="padding-left:2.1pt;padding-right:2.1pt;">46.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.13.17" style="padding-left:2.1pt;padding-right:2.1pt;">366</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.14">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.14.1" style="padding-left:2.1pt;padding-right:2.1pt;">Chameleon <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.14.2" style="padding-left:2.1pt;padding-right:2.1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.14.3" style="padding-left:2.1pt;padding-right:2.1pt;">1.4B+ / 1.8M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.14.4" style="padding-left:2.1pt;padding-right:2.1pt;">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.14.5" style="padding-left:2.1pt;padding-right:2.1pt;">31.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.14.6" style="padding-left:2.1pt;padding-right:2.1pt;">31.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.14.7" style="padding-left:2.1pt;padding-right:2.1pt;">30.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.14.8" style="padding-left:2.1pt;padding-right:2.1pt;">8.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.14.9" style="padding-left:2.1pt;padding-right:2.1pt;">170</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.14.10" style="padding-left:2.1pt;padding-right:2.1pt;">39</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.14.11" style="padding-left:2.1pt;padding-right:2.1pt;">19.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.14.12" style="padding-left:2.1pt;padding-right:2.1pt;">17.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.14.13" style="padding-left:2.1pt;padding-right:2.1pt;">47.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.14.14" style="padding-left:2.1pt;padding-right:2.1pt;">22.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.14.15" style="padding-left:2.1pt;padding-right:2.1pt;">4.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.14.16" style="padding-left:2.1pt;padding-right:2.1pt;">46.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.14.17" style="padding-left:2.1pt;padding-right:2.1pt;">7.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.15">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.15.1" style="padding-left:2.1pt;padding-right:2.1pt;">EVE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.15.2" style="padding-left:2.1pt;padding-right:2.1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.15.3" style="padding-left:2.1pt;padding-right:2.1pt;">33M / 1.8M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.15.4" style="padding-left:2.1pt;padding-right:2.1pt;">2304</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.15.5" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.15.6" style="padding-left:2.1pt;padding-right:2.1pt;">52.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.15.7" style="padding-left:2.1pt;padding-right:2.1pt;">64.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.15.8" style="padding-left:2.1pt;padding-right:2.1pt;">25.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.15.9" style="padding-left:2.1pt;padding-right:2.1pt;">1628</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.15.10" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.15.11" style="padding-left:2.1pt;padding-right:2.1pt;">85.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.15.12" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.15.13" style="padding-left:2.1pt;padding-right:2.1pt;">64.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.15.14" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.15.15" style="padding-left:2.1pt;padding-right:2.1pt;">56.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.15.16" style="padding-left:2.1pt;padding-right:2.1pt;">61.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.15.17" style="padding-left:2.1pt;padding-right:2.1pt;">398</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.16">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.16.1" style="padding-left:2.1pt;padding-right:2.1pt;">SOLO <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.16.2" style="padding-left:2.1pt;padding-right:2.1pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.16.3" style="padding-left:2.1pt;padding-right:2.1pt;">43.7M / 2M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.16.4" style="padding-left:2.1pt;padding-right:2.1pt;">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.16.5" style="padding-left:2.1pt;padding-right:2.1pt;">35.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.16.6" style="padding-left:2.1pt;padding-right:2.1pt;">67.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.16.7" style="padding-left:2.1pt;padding-right:2.1pt;">64.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.16.8" style="padding-left:2.1pt;padding-right:2.1pt;">30.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.16.9" style="padding-left:2.1pt;padding-right:2.1pt;">1260</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.16.10" style="padding-left:2.1pt;padding-right:2.1pt;">44.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.16.11" style="padding-left:2.1pt;padding-right:2.1pt;">78.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.16.12" style="padding-left:2.1pt;padding-right:2.1pt;">40.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.16.13" style="padding-left:2.1pt;padding-right:2.1pt;">73.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.16.14" style="padding-left:2.1pt;padding-right:2.1pt;">32.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.16.15" style="padding-left:2.1pt;padding-right:2.1pt;">25.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.16.16" style="padding-left:2.1pt;padding-right:2.1pt;">61.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.16.17" style="padding-left:2.1pt;padding-right:2.1pt;">126</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.17">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.17.1" style="padding-left:2.1pt;padding-right:2.1pt;">Mono-InternVL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.17.2" style="padding-left:2.1pt;padding-right:2.1pt;">3B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.17.3" style="padding-left:2.1pt;padding-right:2.1pt;">1.3B / 7M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.17.4" style="padding-left:2.1pt;padding-right:2.1pt;">6400</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.17.5" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.17.6" style="padding-left:2.1pt;padding-right:2.1pt;">65.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.17.7" style="padding-left:2.1pt;padding-right:2.1pt;">67.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.17.8" style="padding-left:2.1pt;padding-right:2.1pt;">40.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.17.9" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.17.9.1">1875</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.17.10" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.17.11" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.17.12" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.17.12.1">45.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.17.13" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.17.13.1">93.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.17.14" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.17.14.1">45.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.17.15" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.17.15.1">72.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.17.16" style="padding-left:2.1pt;padding-right:2.1pt;">68.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.17.17" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.17.17.1">767</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.18">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.18.1" style="padding-left:2.1pt;padding-right:2.1pt;">Emu3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib79" title=""><span class="ltx_text" style="font-size:90%;">79</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.18.2" style="padding-left:2.1pt;padding-right:2.1pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.18.3" style="padding-left:2.1pt;padding-right:2.1pt;">– / –</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.18.4" style="padding-left:2.1pt;padding-right:2.1pt;">16K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.18.5" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.18.5.1">46.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.18.6" style="padding-left:2.1pt;padding-right:2.1pt;">58.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.18.7" style="padding-left:2.1pt;padding-right:2.1pt;">68.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.18.8" style="padding-left:2.1pt;padding-right:2.1pt;">37.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.18.9" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.18.10" style="padding-left:2.1pt;padding-right:2.1pt;">57.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.18.11" style="padding-left:2.1pt;padding-right:2.1pt;">85.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.18.12" style="padding-left:2.1pt;padding-right:2.1pt;">31.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.18.13" style="padding-left:2.1pt;padding-right:2.1pt;">89.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.18.14" style="padding-left:2.1pt;padding-right:2.1pt;">31.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.18.15" style="padding-left:2.1pt;padding-right:2.1pt;">64.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.18.16" style="padding-left:2.1pt;padding-right:2.1pt;">70.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.18.17" style="padding-left:2.1pt;padding-right:2.1pt;">687</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.19">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.19.1" style="padding-left:2.1pt;padding-right:2.1pt;">EVE2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.19.2" style="padding-left:2.1pt;padding-right:2.1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.19.3" style="padding-left:2.1pt;padding-right:2.1pt;">92M / 7.3M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.19.4" style="padding-left:2.1pt;padding-right:2.1pt;">2500</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.19.5" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.19.6" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.19.6.1">66.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.19.7" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.19.7.1">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.19.8" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.19.8.1">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.19.9" style="padding-left:2.1pt;padding-right:2.1pt;">1709</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.19.10" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.19.10.1">62.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.19.11" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.19.11.1">87.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.19.12" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.19.13" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.19.13.1">96.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.19.14" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.19.15" style="padding-left:2.1pt;padding-right:2.1pt;">71.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.19.16" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.19.16.1">74.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.19.17" style="padding-left:2.1pt;padding-right:2.1pt;">702</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.20">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.3.3.20.1" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T2.3.3.20.1.1">Sail</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.20.2" style="padding-left:2.1pt;padding-right:2.1pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.20.3" style="padding-left:2.1pt;padding-right:2.1pt;">600M / 6M</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.3.20.4" style="padding-left:2.1pt;padding-right:2.1pt;">3600</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.20.5" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.20.5.1">53.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.20.6" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.20.6.1">70.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.20.7" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.20.7.1">72.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.20.8" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.20.8.1">46.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.20.9" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.20.9.1">1719</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.20.10" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.20.10.1">63.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.20.11" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.20.11.1">85.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.20.12" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.20.12.1">54.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.20.13" style="padding-left:2.1pt;padding-right:2.1pt;">93.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.20.14" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.20.14.1">57.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.20.15" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.20.15.1">77.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.20.16" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.20.16.1">76.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.20.17" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.20.17.1">783</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive comparison of various vision-language models' performance across thirteen benchmark datasets.  It contrasts the performance of SAIL (the authors' model) against both modular and single-transformer-based Multimodal Large Language Models (MLLMs).  The benchmarks cover diverse tasks including general visual question answering, hallucination detection, knowledge reasoning, optical character recognition, and visual question answering with different image types.  Key metrics include the number of activated parameters, the amount of pre-training/fine-tuning data used, and the maximum number of visual tokens processed.  Note that for the MME benchmark, the combined perception and cognition scores are reported, and top performances are highlighted for clarity.  All results are sourced from published papers and verified using the OpenCompass leaderboard and VLMEvalKit.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison with existing vision-language models on various vision-language benchmarks, including MMS*: MMStar [9]; MMBenen{}^{\text{en}}start_FLOATSUPERSCRIPT en end_FLOATSUPERSCRIPT: MMBench-EN [50]; SEEDII{}^{\text{I}}start_FLOATSUPERSCRIPT I end_FLOATSUPERSCRIPT: SEEDBench-Img [40]; MMV: MMVet [85]; MME [46]; POPE [44]; Hallu: HallusionBench [30]; SQAII{}^{\text{I}}start_FLOATSUPERSCRIPT I end_FLOATSUPERSCRIPT: ScienceQA-Img [52]; TVQA: TextVQA [65]; MathV: MathVistaMINIMINI{}_{\text{MINI}}start_FLOATSUBSCRIPT MINI end_FLOATSUBSCRIPT [53]; AI2D [39]; RWQA: RealWorldQA [81]; OCRB: OCRBench [51]. Note that #A-Param denotes the number of activated parameters; #Data represents the pre-training / fine-tuning data volume; #Vtoken indicates the maximum image patch tokens. For MME, we report the sum of perception and cognition scores. The top two results are highlighted in bold and underline, respectively. All results are derived from those reported in other papers and the official reproduction results from the OpenCompass leaderboard [24]. Our results are obtained by VLMEvalKit [24].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.2">
<tr class="ltx_tr" id="S4.T3.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.2.1.1" rowspan="2" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.1.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.2.1.2" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.1.2.1" style="font-size:90%;">Classification</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T3.2.1.3" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.1.3.1" style="font-size:90%;">Segmentation</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.1" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.2.1.1" style="font-size:90%;">Top-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.2.2.1" style="font-size:90%;">Top-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.2.3.1" style="font-size:90%;">mIoU</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.4" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.2.4.1" style="font-size:90%;">mAcc</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.5" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.2.5.1" style="font-size:90%;">aAcc</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.2.3.1" style="padding-left:7.6pt;padding-right:7.6pt;">
<span class="ltx_text" id="S4.T3.2.3.1.1" style="font-size:90%;">EVE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.2.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S4.T3.2.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.2" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.3.2.1" style="font-size:90%;">42.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.3" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.3.3.1" style="font-size:90%;">65.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.4" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.3.4.1" style="font-size:90%;">27.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.5" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.3.5.1" style="font-size:90%;">35.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.6" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.3.6.1" style="font-size:90%;">72.91</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.4">
<td class="ltx_td ltx_align_left" id="S4.T3.2.4.1" style="padding-left:7.6pt;padding-right:7.6pt;">
<span class="ltx_text" id="S4.T3.2.4.1.1" style="font-size:90%;">EVE2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.2.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="S4.T3.2.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.4.2" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.4.2.1" style="font-size:90%;">44.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.4.3" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.4.3.1" style="font-size:90%;">69.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.4.4" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.4.4.1" style="font-size:90%;">40.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.4.5" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.4.5.1" style="font-size:90%;">53.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.4.6" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.4.6.1" style="font-size:90%;">79.31</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.5">
<td class="ltx_td ltx_align_left" id="S4.T3.2.5.1" style="padding-left:7.6pt;padding-right:7.6pt;">
<span class="ltx_text" id="S4.T3.2.5.1.1" style="font-size:90%;">SOLO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.2.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="S4.T3.2.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.2" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.5.2.1" style="font-size:90%;">59.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.3" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.5.3.1" style="font-size:90%;">80.89</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.4" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.5.4.1" style="font-size:90%;">35.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.5" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.5.5.1" style="font-size:90%;">44.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.6" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text" id="S4.T3.2.5.6.1" style="font-size:90%;">76.02</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.2.6.1" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T3.2.6.1.1" style="font-size:90%;">Sail</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.6.2" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.6.2.1" style="font-size:90%;">84.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.6.3" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.6.3.1" style="font-size:90%;">97.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.6.4" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.6.4.1" style="font-size:90%;">55.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.6.5" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.6.5.1" style="font-size:90%;">67.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.6.6" style="padding-left:7.6pt;padding-right:7.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.6.6.1" style="font-size:90%;">84.87</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of the proposed SAIL model against other encoder-free approaches on two key vision tasks: image classification (using ImageNet-1K dataset) and semantic segmentation (using ADE20K dataset).  The metrics used for comparison are Top-1 and Top-5 accuracy for classification and mean Intersection over Union (mIoU), mean Accuracy (mAcc), and average Accuracy (aAcc) for segmentation.  The results clearly demonstrate that SAIL significantly outperforms existing encoder-free models on both tasks, highlighting its superior capabilities in learning visual representations directly from image data without relying on pre-trained visual encoders.
> <details>
> <summary>read the caption</summary>
> Table 3:  Comparison on image classification and semantic segmentation with other encoder-free approaches. Our Sail outperforms other alternatives by a large margin.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.1">
<tr class="ltx_tr" id="S4.T4.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.2.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.2.2.1" style="font-size:90%;">#Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.2.3.1" style="font-size:90%;">#Param</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.2.4.1" style="font-size:90%;">ImageNet-1K</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.1.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.2.5.1" style="font-size:90%;">ADE20K</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T4.1.3.1.1" style="font-size:90%;">OpenCLIP-H </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a><span class="ltx_text" id="S4.T4.1.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.3.2.1" style="font-size:90%;">2B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.3.3.1" style="font-size:90%;">0.6B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.3.4.1" style="font-size:90%;">84.4</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.3.5.1" style="font-size:90%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T4.1.1.2.1" style="font-size:90%;">OpenCLIP-G </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.1.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a><span class="ltx_text" id="S4.T4.1.1.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.1.3.1" style="font-size:90%;">2B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.1.4.1" style="font-size:90%;">1.8B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.1.5.1" style="font-size:90%;">86.2</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T4.1.1.1.1" style="font-size:90%;">39.3</span><sup class="ltx_sup" id="S4.T4.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.1.2.1" style="font-size:90%;">†</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.4">
<td class="ltx_td ltx_align_left" id="S4.T4.1.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T4.1.4.1.1" style="font-size:90%;">ViT-22B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S4.T4.1.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.4.2.1" style="font-size:90%;">3B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.4.3.1" style="font-size:90%;">22B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.4.4.1" style="font-size:90%;">89.5</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.1.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.4.5.1" style="font-size:90%;">55.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.5">
<td class="ltx_td ltx_align_left" id="S4.T4.1.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T4.1.5.1.1" style="font-size:90%;">InternViT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S4.T4.1.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.5.2.1" style="font-size:90%;">6B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.5.3.1" style="font-size:90%;">6B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.5.4.1" style="font-size:90%;">88.2</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.1.5.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.5.5.1" style="font-size:90%;">58.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.1.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T4.1.6.1.1" style="font-size:90%;">Sail</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.6.2.1" style="font-size:90%;">0.5B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.6.3.1" style="font-size:90%;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.6.4.1" style="font-size:90%;">85.0</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.1.6.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.1.6.5.1" style="font-size:90%;">55.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of SAIL on image classification and semantic segmentation tasks against other vision backbones, including OpenCLIP-H, OpenCLIP-G, ViT-22B, and InternViT.  It highlights SAIL's competitive performance despite using significantly less training data than other models. The note indicates that some models used a ViT-Adapter, while others were fine-tuned with UperNet for the semantic segmentation task.
> <details>
> <summary>read the caption</summary>
> Table 4:  Comparison on image classification and semantic segmentation with other vision backbones. ††{\dagger}† indicates training with head tuning using UperNet [82], while others are based on ViT-Adapter [12]. Sail, with significantly less training data, achieves competitive performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.2">
<tr class="ltx_tr" id="S4.T5.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T5.2.1.1" rowspan="2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.1.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.1.2" rowspan="2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.1.2.1" style="font-size:90%;">Relation</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.1.3" rowspan="2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.1.3.1" style="font-size:90%;">Attribute</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T5.2.1.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.1.4.1" style="font-size:90%;">Order</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.2.1.1" style="font-size:90%;">COCO</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.2.2.1" style="font-size:90%;">Flickr30K</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.2.3.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T5.2.3.1.1" style="font-size:90%;">OpenCLIP-H </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T5.2.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a><span class="ltx_text" id="S4.T5.2.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.3.2.1" style="font-size:90%;">49.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.3.3.1" style="font-size:90%;">64.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.3.4.1" style="font-size:90%;">32.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.3.5.1" style="font-size:90%;">40.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.4">
<td class="ltx_td ltx_align_left" id="S4.T5.2.4.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T5.2.4.1.1" style="font-size:90%;">OpenCLIP-G </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T5.2.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a><span class="ltx_text" id="S4.T5.2.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.4.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.4.2.1" style="font-size:90%;">49.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.4.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.4.3.1" style="font-size:90%;">65.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.4.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.4.4.1" style="font-size:90%;">33.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.4.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.4.5.1" style="font-size:90%;">38.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.5">
<td class="ltx_td ltx_align_left" id="S4.T5.2.5.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T5.2.5.1.1" style="font-size:90%;">CLIP-B/32 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T5.2.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a><span class="ltx_text" id="S4.T5.2.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.5.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.5.2.1" style="font-size:90%;">59.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.5.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.5.3.1" style="font-size:90%;">62.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.5.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.5.4.1" style="font-size:90%;">48.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.5.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.5.5.1" style="font-size:90%;">57.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.6">
<td class="ltx_td ltx_align_left" id="S4.T5.2.6.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T5.2.6.1.1" style="font-size:90%;">CLIP-L/14 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T5.2.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a><span class="ltx_text" id="S4.T5.2.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.6.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.6.2.1" style="font-size:90%;">61.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.6.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.6.3.1" style="font-size:90%;">61.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.6.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.6.4.1" style="font-size:90%;">46.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.6.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.6.5.1" style="font-size:90%;">56.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.7">
<td class="ltx_td ltx_align_left" id="S4.T5.2.7.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T5.2.7.1.1" style="font-size:90%;">InternViT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T5.2.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S4.T5.2.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.7.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.7.2.1" style="font-size:90%;">59.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.7.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.7.3.1" style="font-size:90%;">66.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.7.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.7.4.1" style="font-size:90%;">73.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.7.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.7.5.1" style="font-size:90%;">76.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.8">
<td class="ltx_td ltx_align_left" id="S4.T5.2.8.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T5.2.8.1.1" style="font-size:90%;">NegCLIP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T5.2.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a><span class="ltx_text" id="S4.T5.2.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.8.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.8.2.1" style="font-size:90%;">81.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.8.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.8.3.1" style="font-size:90%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.8.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.8.4.1" style="font-size:90%;">86.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.8.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.8.5.1" style="font-size:90%;">91.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.9">
<td class="ltx_td ltx_align_left" id="S4.T5.2.9.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T5.2.9.1.1" style="font-size:90%;">CapPa </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T5.2.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib72" title=""><span class="ltx_text" style="font-size:90%;">72</span></a><span class="ltx_text" id="S4.T5.2.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.9.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.9.2.1" style="font-size:90%;">86.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.9.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.9.3.1" style="font-size:90%;">85.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.9.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.9.4.1" style="font-size:90%;">98.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.9.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.9.5.1" style="font-size:90%;">99.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.2.10.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T5.2.10.1.1" style="font-size:90%;">Sail</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.10.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.10.2.1" style="font-size:90%;">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.10.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.10.3.1" style="font-size:90%;">99.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.10.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.10.4.1" style="font-size:90%;">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.10.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.10.5.1" style="font-size:90%;">100.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a comparison of SAIL's performance on the Attribute, Relation, and Ordering (ARO) benchmark against other vision backbones.  The ARO benchmark tests the model's ability to understand compositional relationships between objects and their attributes.  The results demonstrate that SAIL achieves near-perfect accuracy on this task, significantly outperforming other models. This highlights SAIL's strength in capturing complex relationships between visual elements.
> <details>
> <summary>read the caption</summary>
> Table 5:  Comparison on attribute, relation, and ordering (ARO) with other vision backbones. Sail almost encodes compositional relationships between objects and attributes perfectly.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.2.1">
<tr class="ltx_tr" id="S4.T6.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.1.1.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T6.2.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T6.2.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">MMBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T6.2.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">MME <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T6.2.1.2.1.1">
<tr class="ltx_tr" id="S4.T6.2.1.2.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.2.1.2.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">Physical</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.2.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.2.1.2.1.1.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">Relation</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T6.2.1.2.2.1">
<tr class="ltx_tr" id="S4.T6.2.1.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.2.1.2.2.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">Celebrity</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.2.1.2.2.1.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">Relation</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">Position</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">Posters</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.2.5" style="padding-left:2.0pt;padding-right:2.0pt;">Celebrity</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">Modular MLLM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">30.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">50.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">98.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">134.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.6" style="padding-left:2.0pt;padding-right:2.0pt;">100.3</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.1.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T6.2.1.4.1.1">Sail</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.1.4.2" style="padding-left:2.0pt;padding-right:2.0pt;">52.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.1.4.3" style="padding-left:2.0pt;padding-right:2.0pt;">88.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.1.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">160.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.1.4.5" style="padding-left:2.0pt;padding-right:2.0pt;">108.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.1.4.6" style="padding-left:2.0pt;padding-right:2.0pt;">75.0</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of the SAIL model (a single transformer model) and modular MLLMs on MMBench and MME tasks.  It highlights SAIL's superior performance on tasks requiring spatial reasoning, such as identifying physical relations or positional information in images, while demonstrating weaker performance on tasks that demand broader world knowledge, like recognizing celebrities or posters. This indicates SAIL's strengths in direct image processing compared to modular models which rely on pretrained visual encoders.
> <details>
> <summary>read the caption</summary>
> Table 6:  Performance Comparison of Sail and Modular MLLM in MMBench and MME Tasks: the strengths of Sail in spatial reasoning tasks (MMBench Physical Relation and MME Position split) and its weaknesses in world knowledge tasks (MMBench Celebrity Relation and MME Celebrity and Posters splits).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.2.1.2.1.1">
<tr class="ltx_tr" id="S4.T6.2.1.2.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.2.1.2.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">Physical</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.2.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.2.1.2.1.1.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">Relation</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the effects of key design choices in the SAIL model on its performance across five vision-language benchmarks: VQAv2, GQA, SQA, TQA, and SEED-I.  The default configuration uses full image attention and incorporates pure text data during pretraining. Two ablation settings are compared: one removing full image attention (#1) and another excluding pure text data from pretraining (#2). The table shows the performance changes under these variations for each benchmark, allowing readers to assess the importance of these factors for effective model training.
> <details>
> <summary>read the caption</summary>
> Table 7:  Ablation Study on Basic Factors for Sail: This table presents the impact of different ablation settings on the performance of Sail across VQAv2 [28], GQA [36], SQA [52], TQA [65], and SEED-I [40]. The default setting includes image full attention and the inclusion of pure text data in pretraining. Ablation #1 removes image full attention, and ablation #2 excludes pure text in pretraining.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.2.1.2.2.1">
<tr class="ltx_tr" id="S4.T6.2.1.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.2.1.2.2.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">Celebrity</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.2.1.2.2.1.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">Relation</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 details the specific configurations used in various experiments described in the paper.  It breaks down the experimental setups by specifying the model (SAIL with different parameter counts), the underlying large language model variant (e.g., Mistral-7B-v0.1), the datasets used in each training stage (Pretraining Stage 1, Pretraining Stage 2, and Supervised Fine-Tuning (SFT)), and the learning rates applied during these stages.  For datasets, it refers the reader to Table 1 for details on the datasets labeled 'Standard Stage 1 Data', 'Standard Stage 2 Data', and 'Standard SFT Data'.  Finally, the caption also indicates which figures and tables in the main text correspond to each specific experimental configuration.
> <details>
> <summary>read the caption</summary>
> Table 8:  Experimental Configurations for Various Setups. The table lists the models used, the specific LLM variants, the datasets, and learning rates (LR) applied during each training stage (Pretraining Stage 1, Pretraining Stage 2, and SFT). “Standard Stage 1 Data”, “Standard Stage 2 Data” and “Standard SFT Data” are listed in Table 1. Specific points and tables/figures referred to in the text are also indicated.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T7.2.1">
<tr class="ltx_tr" id="S4.T7.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T7.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.2.1.1.1.1">Exp. Setting</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.2.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.2.1.1.2.1">VQAv2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.2.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.2.1.1.3.1">GQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.2.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.2.1.1.4.1">SQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.2.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.2.1.1.5.1">TQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.2.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.2.1.1.6.1">SEED-I</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.1.2">
<td class="ltx_td ltx_align_left" id="S4.T7.2.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span>
<span class="ltx_text ltx_font_italic" id="S4.T7.2.1.2.1.1">Default</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">59.1</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">46.9</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">59.6</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">20.1</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">35.1</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.1.3">
<td class="ltx_td ltx_align_left" id="S4.T7.2.1.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">#1 <span class="ltx_text ltx_font_italic" id="S4.T7.2.1.3.1.1">No Img full attn</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">57.8</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">45.2</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">58.7</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">16.2</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.3.6" style="padding-left:3.0pt;padding-right:3.0pt;">33.8</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T7.2.1.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">#2 <span class="ltx_text ltx_font_italic" id="S4.T7.2.1.4.1.1">No pure text in PT</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.1.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">56.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.1.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">42.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.1.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">48.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.1.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">18.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.1.4.6" style="padding-left:3.0pt;padding-right:3.0pt;">32.4</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive breakdown of the experimental results detailed in the main body of the paper. It provides a quantitative comparison of various models' performance across several benchmark datasets, offering a granular view of the performance metrics for each model on each dataset.  This allows for a detailed analysis of the models' strengths and weaknesses in different aspects of vision and language understanding tasks.
> <details>
> <summary>read the caption</summary>
> Table 9:  Detailed experimental results in the main paper.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T8.2.1">
<tr class="ltx_tr" id="S5.T8.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T8.2.1.1.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T8.2.1.1.1.1">Exp</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T8.2.1.1.2" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T8.2.1.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T8.2.1.1.3" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T8.2.1.1.3.1">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S5.T8.2.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">Stage 1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S5.T8.2.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">Stage 2</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T8.2.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;">SFT</td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">Data</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T8.2.1.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">LR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">Data</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T8.2.1.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">LR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.2.5" style="padding-left:2.0pt;padding-right:2.0pt;">Data</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.2.6" style="padding-left:2.0pt;padding-right:2.0pt;">LR</td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T8.2.1.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">Figure 1(A)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T8.2.1.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_smallcaps" id="S5.T8.2.1.3.2.1">Sail</span>, point 32M</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T8.2.1.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">Mistral-7B-v0.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">Standard Stage 1 Data (32M image-text pairs)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T8.2.1.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">(5e-5, 5e-6)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.3.6" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T8.2.1.3.7" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.3.8" style="padding-left:2.0pt;padding-right:2.0pt;">LLaVA-mix-665K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.3.9" style="padding-left:2.0pt;padding-right:2.0pt;">(1e-5,0)</td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.4">
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">Figure 1(A)</td>
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.4.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_smallcaps" id="S5.T8.2.1.4.2.1">Sail</span>, point 128M</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T8.2.1.4.3" style="padding-left:2.0pt;padding-right:2.0pt;">Mistral-7B-v0.1</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">Standard Stage 1 Data (128M image-text pairs)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T8.2.1.4.5" style="padding-left:2.0pt;padding-right:2.0pt;">(5e-5, 5e-6)</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.4.6" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T8.2.1.4.7" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.4.8" style="padding-left:2.0pt;padding-right:2.0pt;">LLaVA-mix-665K</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.4.9" style="padding-left:2.0pt;padding-right:2.0pt;">(1e-5,0)</td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.5">
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">Figure 1(A), Table 6</td>
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.5.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_smallcaps" id="S5.T8.2.1.5.2.1">Sail</span>, point512M</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T8.2.1.5.3" style="padding-left:2.0pt;padding-right:2.0pt;">Mistral-7B-v0.1</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.5.4" style="padding-left:2.0pt;padding-right:2.0pt;">Standard Stage 1 Data (512M image-text pairs)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T8.2.1.5.5" style="padding-left:2.0pt;padding-right:2.0pt;">(5e-5, 5e-6)</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.5.6" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T8.2.1.5.7" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.5.8" style="padding-left:2.0pt;padding-right:2.0pt;">LLaVA-mix-665K</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.5.9" style="padding-left:2.0pt;padding-right:2.0pt;">(1e-5,0)</td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.6">
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.6.1" style="padding-left:2.0pt;padding-right:2.0pt;">Figure 1(B), Table 2</td>
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T8.2.1.6.2.1">Sail</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T8.2.1.6.3" style="padding-left:2.0pt;padding-right:2.0pt;">Mistral-7B-v0.1</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.6.4" style="padding-left:2.0pt;padding-right:2.0pt;">Standard Stage 1 Data (512M image-text pairs)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T8.2.1.6.5" style="padding-left:2.0pt;padding-right:2.0pt;">(5e-5, 5e-6)</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.6.6" style="padding-left:2.0pt;padding-right:2.0pt;">Standard Stage 2 Data</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T8.2.1.6.7" style="padding-left:2.0pt;padding-right:2.0pt;">(1e-5, 5e-6)</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.6.8" style="padding-left:2.0pt;padding-right:2.0pt;">Standard SFT Data</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.6.9" style="padding-left:2.0pt;padding-right:2.0pt;">(1e-5, 0)</td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.7">
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">Table 3, 4, 5</td>
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T8.2.1.7.2.1">Sail</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T8.2.1.7.3" style="padding-left:2.0pt;padding-right:2.0pt;">Mistral-7B-v0.1</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.7.4" style="padding-left:2.0pt;padding-right:2.0pt;">Standard Stage 1 Data (512M image-text pairs)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T8.2.1.7.5" style="padding-left:2.0pt;padding-right:2.0pt;">(5e-5, 5e-6)</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.7.6" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T8.2.1.7.7" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.7.8" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.7.9" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.8">
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.8.1" style="padding-left:2.0pt;padding-right:2.0pt;">Figure 3, Table 7</td>
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.8.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_smallcaps" id="S5.T8.2.1.8.2.1">Sail</span>-0.5B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T8.2.1.8.3" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5-0.5B</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.8.4" style="padding-left:2.0pt;padding-right:2.0pt;">Standard Stage 1 Data (128M image-text pairs)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T8.2.1.8.5" style="padding-left:2.0pt;padding-right:2.0pt;">(5e-4, 5e-6)</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.8.6" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T8.2.1.8.7" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.8.8" style="padding-left:2.0pt;padding-right:2.0pt;">LLaVA-mix-665K</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.8.9" style="padding-left:2.0pt;padding-right:2.0pt;">(1e-5, 0)</td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.9">
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.9.1" style="padding-left:2.0pt;padding-right:2.0pt;">Figure 3</td>
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.9.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_smallcaps" id="S5.T8.2.1.9.2.1">Sail</span>-3B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T8.2.1.9.3" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5-3B</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.9.4" style="padding-left:2.0pt;padding-right:2.0pt;">Standard Stage 1 Data (128M image-text pairs)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T8.2.1.9.5" style="padding-left:2.0pt;padding-right:2.0pt;">(1e-4, 5e-6)</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.9.6" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T8.2.1.9.7" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.9.8" style="padding-left:2.0pt;padding-right:2.0pt;">LLaVA-mix-665K</td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.9.9" style="padding-left:2.0pt;padding-right:2.0pt;">(1e-5, 0)</td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.10">
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T8.2.1.10.1" style="padding-left:2.0pt;padding-right:2.0pt;">Figure 3</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T8.2.1.10.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_smallcaps" id="S5.T8.2.1.10.2.1">Sail</span>-7B</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S5.T8.2.1.10.3" style="padding-left:2.0pt;padding-right:2.0pt;">Mistral-7B-v0.1</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T8.2.1.10.4" style="padding-left:2.0pt;padding-right:2.0pt;">Standard Stage 1 Data (128M image-text pairs)</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T8.2.1.10.5" style="padding-left:2.0pt;padding-right:2.0pt;">(5e-5, 5e-6)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T8.2.1.10.6" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T8.2.1.10.7" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T8.2.1.10.8" style="padding-left:2.0pt;padding-right:2.0pt;">LLaVA-mix-665K</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T8.2.1.10.9" style="padding-left:2.0pt;padding-right:2.0pt;">(1e-5,0)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 10 presents a comparative analysis of the performance of the SAIL model and the LLaVA1.5 model across eleven vision-language benchmarks.  These benchmarks assess various aspects of multimodal understanding, including visual question answering, multimodal reasoning, and knowledge-based tasks. The table shows the performance scores achieved by each model on each benchmark, enabling a direct comparison of their strengths and weaknesses in different types of visual-language tasks.
> <details>
> <summary>read the caption</summary>
> Table 10:  Comparison of Sail and LLaVA1.5. We evaluate the models on VQAv2 [28], GQA [36], ScienceQA [52], TextVQA [65], POPE [44], MMBench [50], SEEDBench [40], DocVQA [56], ChartQA [55], AI2D [39] and MMStar [9].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T9.2.1">
<tr class="ltx_tr" id="S5.T9.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T9.2.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T9.2.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">VQAv2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T9.2.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">GQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T9.2.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">SciQA-IMG</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T9.2.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">TextVQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T9.2.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;">POPE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T9.2.1.1.7" style="padding-left:2.0pt;padding-right:2.0pt;">MME</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T9.2.1.1.8" style="padding-left:2.0pt;padding-right:2.0pt;">MMBench</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T9.2.1.1.9" style="padding-left:2.0pt;padding-right:2.0pt;">SEEDBench-IMG</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T9.2.1.1.10" style="padding-left:2.0pt;padding-right:2.0pt;">Norm.avg</td>
</tr>
<tr class="ltx_tr" id="S5.T9.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T9.2.1.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">Figure 1, modular MLLM, 32M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">76.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">58.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">68.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.5" style="padding-left:2.0pt;padding-right:2.0pt;">58.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.6" style="padding-left:2.0pt;padding-right:2.0pt;">88.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.7" style="padding-left:2.0pt;padding-right:2.0pt;">1599</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.8" style="padding-left:2.0pt;padding-right:2.0pt;">69.44</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T9.2.1.2.9" style="padding-left:2.0pt;padding-right:2.0pt;">70.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.10" style="padding-left:2.0pt;padding-right:2.0pt;">61.41</td>
</tr>
<tr class="ltx_tr" id="S5.T9.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T9.2.1.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">Figure 1, modular MLLM, 128M</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">78.47</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">59.78</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">70.05</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">59.82</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.3.6" style="padding-left:2.0pt;padding-right:2.0pt;">86.78</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.3.7" style="padding-left:2.0pt;padding-right:2.0pt;">1638</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.3.8" style="padding-left:2.0pt;padding-right:2.0pt;">68.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T9.2.1.3.9" style="padding-left:2.0pt;padding-right:2.0pt;">68.11</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.3.10" style="padding-left:2.0pt;padding-right:2.0pt;">61.52</td>
</tr>
<tr class="ltx_tr" id="S5.T9.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T9.2.1.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">Figure 1, modular MLLM, 512M</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.4.2" style="padding-left:2.0pt;padding-right:2.0pt;">80.06</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.4.3" style="padding-left:2.0pt;padding-right:2.0pt;">62.38</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">70.34</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.4.5" style="padding-left:2.0pt;padding-right:2.0pt;">57.85</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.4.6" style="padding-left:2.0pt;padding-right:2.0pt;">83.14</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.4.7" style="padding-left:2.0pt;padding-right:2.0pt;">1379</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.4.8" style="padding-left:2.0pt;padding-right:2.0pt;">70.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T9.2.1.4.9" style="padding-left:2.0pt;padding-right:2.0pt;">69.83</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.4.10" style="padding-left:2.0pt;padding-right:2.0pt;">61.86</td>
</tr>
<tr class="ltx_tr" id="S5.T9.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T9.2.1.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">Figure 1, <span class="ltx_text ltx_font_smallcaps" id="S5.T9.2.1.5.1.1">Sail</span>, 32M</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.5.2" style="padding-left:2.0pt;padding-right:2.0pt;">70.51</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.5.3" style="padding-left:2.0pt;padding-right:2.0pt;">57.95</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.5.4" style="padding-left:2.0pt;padding-right:2.0pt;">63.32</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.5.5" style="padding-left:2.0pt;padding-right:2.0pt;">31.67</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.5.6" style="padding-left:2.0pt;padding-right:2.0pt;">81.77</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.5.7" style="padding-left:2.0pt;padding-right:2.0pt;">1421</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.5.8" style="padding-left:2.0pt;padding-right:2.0pt;">48.22</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T9.2.1.5.9" style="padding-left:2.0pt;padding-right:2.0pt;">61.51</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.5.10" style="padding-left:2.0pt;padding-right:2.0pt;">51.93</td>
</tr>
<tr class="ltx_tr" id="S5.T9.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T9.2.1.6.1" style="padding-left:2.0pt;padding-right:2.0pt;">Figure 1, <span class="ltx_text ltx_font_smallcaps" id="S5.T9.2.1.6.1.1">Sail</span>, 128M</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.6.2" style="padding-left:2.0pt;padding-right:2.0pt;">76.36</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.6.3" style="padding-left:2.0pt;padding-right:2.0pt;">60.93</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.6.4" style="padding-left:2.0pt;padding-right:2.0pt;">62.61</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.6.5" style="padding-left:2.0pt;padding-right:2.0pt;">56.86</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.6.6" style="padding-left:2.0pt;padding-right:2.0pt;">85.5</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.6.7" style="padding-left:2.0pt;padding-right:2.0pt;">1458</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.6.8" style="padding-left:2.0pt;padding-right:2.0pt;">53.94</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T9.2.1.6.9" style="padding-left:2.0pt;padding-right:2.0pt;">66.60</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.6.10" style="padding-left:2.0pt;padding-right:2.0pt;">57.91</td>
</tr>
<tr class="ltx_tr" id="S5.T9.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T9.2.1.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">Figure 1, <span class="ltx_text ltx_font_smallcaps" id="S5.T9.2.1.7.1.1">Sail</span>, 512M</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.7.2" style="padding-left:2.0pt;padding-right:2.0pt;">78.51</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.7.3" style="padding-left:2.0pt;padding-right:2.0pt;">62.06</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.7.4" style="padding-left:2.0pt;padding-right:2.0pt;">67.48</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.7.5" style="padding-left:2.0pt;padding-right:2.0pt;">63.94</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.7.6" style="padding-left:2.0pt;padding-right:2.0pt;">86.04</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.7.7" style="padding-left:2.0pt;padding-right:2.0pt;">1530</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.7.8" style="padding-left:2.0pt;padding-right:2.0pt;">56.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T9.2.1.7.9" style="padding-left:2.0pt;padding-right:2.0pt;">68.83</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.7.10" style="padding-left:2.0pt;padding-right:2.0pt;">60.51</td>
</tr>
<tr class="ltx_tr" id="S5.T9.2.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T9.2.1.8.1" style="padding-left:2.0pt;padding-right:2.0pt;">Figure 3, <span class="ltx_text ltx_font_smallcaps" id="S5.T9.2.1.8.1.1">Sail</span>-3B</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.8.2" style="padding-left:2.0pt;padding-right:2.0pt;">67.3</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.8.3" style="padding-left:2.0pt;padding-right:2.0pt;">53.2</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.8.4" style="padding-left:2.0pt;padding-right:2.0pt;">63.8</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.8.5" style="padding-left:2.0pt;padding-right:2.0pt;">30.9</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.8.6" style="padding-left:2.0pt;padding-right:2.0pt;">66.9</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.8.7" style="padding-left:2.0pt;padding-right:2.0pt;">820.8</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.8.8" style="padding-left:2.0pt;padding-right:2.0pt;">44.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T9.2.1.8.9" style="padding-left:2.0pt;padding-right:2.0pt;">55.4</td>
<td class="ltx_td ltx_align_center" id="S5.T9.2.1.8.10" style="padding-left:2.0pt;padding-right:2.0pt;">47.80</td>
</tr>
<tr class="ltx_tr" id="S5.T9.2.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T9.2.1.9.1" style="padding-left:2.0pt;padding-right:2.0pt;">Figure 3, <span class="ltx_text ltx_font_smallcaps" id="S5.T9.2.1.9.1.1">Sail</span>-0.5B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.2.1.9.2" style="padding-left:2.0pt;padding-right:2.0pt;">59.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.2.1.9.3" style="padding-left:2.0pt;padding-right:2.0pt;">46.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.2.1.9.4" style="padding-left:2.0pt;padding-right:2.0pt;">59.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.2.1.9.5" style="padding-left:2.0pt;padding-right:2.0pt;">20.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.2.1.9.6" style="padding-left:2.0pt;padding-right:2.0pt;">59.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.2.1.9.7" style="padding-left:2.0pt;padding-right:2.0pt;">761.45</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.2.1.9.8" style="padding-left:2.0pt;padding-right:2.0pt;">38.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T9.2.1.9.9" style="padding-left:2.0pt;padding-right:2.0pt;">35.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.2.1.9.10" style="padding-left:2.0pt;padding-right:2.0pt;">39.92</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases SAIL's ability to extract information from text within images, specifically in scenarios with Optical Character Recognition (OCR).  It demonstrates the model's capability to accurately identify and process textual data embedded in images, highlighting its potential for applications involving document understanding or other tasks requiring the extraction of text from visual sources.
> <details>
> <summary>read the caption</summary>
> Table 11: Sail demonstrates a strong capability to extract information in OCR-rich scenarios.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T10.2.1">
<tr class="ltx_tr" id="S5.T10.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T10.2.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.2.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">Pretrain</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T10.2.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.2.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">VQAv2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.2.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">GQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.2.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;">SciQA-IMG</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.2.1.1.7" style="padding-left:2.0pt;padding-right:2.0pt;">TextVQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.2.1.1.8" style="padding-left:2.0pt;padding-right:2.0pt;">POPE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.2.1.1.9" style="padding-left:2.0pt;padding-right:2.0pt;">MMBench</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.2.1.1.10" style="padding-left:2.0pt;padding-right:2.0pt;">SEEDBench</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.2.1.1.11" style="padding-left:2.0pt;padding-right:2.0pt;">DocVQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.2.1.1.12" style="padding-left:2.0pt;padding-right:2.0pt;">ChartQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.2.1.1.13" style="padding-left:2.0pt;padding-right:2.0pt;">AI2D</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T10.2.1.1.14" style="padding-left:2.0pt;padding-right:2.0pt;">MMStar</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.2.1.1.15" style="padding-left:2.0pt;padding-right:2.0pt;">avg</td>
</tr>
<tr class="ltx_tr" id="S5.T10.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T10.2.1.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">LLaVA-1.5-336px <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10462v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_italic" id="S5.T10.2.1.2.2.1">12.8B</span>+558K</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T10.2.1.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">665K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">78.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.2.5" style="padding-left:2.0pt;padding-right:2.0pt;">62.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.2.6" style="padding-left:2.0pt;padding-right:2.0pt;">66.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.2.7" style="padding-left:2.0pt;padding-right:2.0pt;">58.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.2.8" style="padding-left:2.0pt;padding-right:2.0pt;">85.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.2.9" style="padding-left:2.0pt;padding-right:2.0pt;">64.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.2.10" style="padding-left:2.0pt;padding-right:2.0pt;">66.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.2.11" style="padding-left:2.0pt;padding-right:2.0pt;">28.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.2.12" style="padding-left:2.0pt;padding-right:2.0pt;">18.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.2.13" style="padding-left:2.0pt;padding-right:2.0pt;">54.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T10.2.1.2.14" style="padding-left:2.0pt;padding-right:2.0pt;">32.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.2.15" style="padding-left:2.0pt;padding-right:2.0pt;">58.3</td>
</tr>
<tr class="ltx_tr" id="S5.T10.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T10.2.1.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T10.2.1.3.1.1">Sail</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.2.1.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">512M</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T10.2.1.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">665K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.2.1.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">77.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.2.1.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">61.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.2.1.3.6" style="padding-left:2.0pt;padding-right:2.0pt;">68.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.2.1.3.7" style="padding-left:2.0pt;padding-right:2.0pt;">56.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.2.1.3.8" style="padding-left:2.0pt;padding-right:2.0pt;">86.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.2.1.3.9" style="padding-left:2.0pt;padding-right:2.0pt;">61.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.2.1.3.10" style="padding-left:2.0pt;padding-right:2.0pt;">69.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.2.1.3.11" style="padding-left:2.0pt;padding-right:2.0pt;">29.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.2.1.3.12" style="padding-left:2.0pt;padding-right:2.0pt;">21.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.2.1.3.13" style="padding-left:2.0pt;padding-right:2.0pt;">58.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T10.2.1.3.14" style="padding-left:2.0pt;padding-right:2.0pt;">37.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.2.1.3.15" style="padding-left:2.0pt;padding-right:2.0pt;">59.1</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases SAIL's performance on a real-world image understanding task.  A user provides a prompt asking for a detailed description of a given image, and SAIL's response is provided. The response demonstrates SAIL's ability to identify and describe multiple elements and aspects within the image, including traffic density, weather conditions, signage, and the overall environment.  This illustrates SAIL's capacity for detailed visual scene interpretation.
> <details>
> <summary>read the caption</summary>
> Table 12: Sail demonstrates a strong capability about understanding the real-world scene.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2">
<tr class="ltx_tr" id="Sx1.SSx2.1.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<td class="ltx_td" id="Sx1.SSx2.1.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="Sx1.SSx2.1.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="Sx1.SSx2.1.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_p" id="Sx1.SSx2.1.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1" style="width:512.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="238" id="Sx1.SSx2.1.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6360030/figure/arxiv.jpg" width="628"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.3">
<td class="ltx_td ltx_align_left" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.3.1"><span class="ltx_text ltx_font_bold" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.3.1.1" style="font-size:80%;">User</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.3.2.1">
<span class="ltx_p" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.3.2.1.1" style="width:512.1pt;">Please output all the text information.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1" style="font-size:80%;">Sail</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1">
<span class="ltx_p" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.2" style="width:512.1pt;">Cornell University arXiv cs arXiv:2304.08485
Computer Science Computer Vision and Pattern Recognition</span>
<span class="ltx_p" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1">Visual Instruction Tuning HaoTian Liu, Chunyuan Li, Qingyang Wu, Yong Jae Lee Instruction tuning large language models (LLMs) using machine-generated instruction-following data has improved zero-shot capabilities on new tasks, but the idea is less explored in the multimodal field. In this paper, we present the first attempt to use language-only GPT-4 to generate multimodal language-image instruction-following data. By instruction tuning on such generated data, we introduce LLM for general-purpose visual and language visual and language this http URL URL Early Experiments: LLMs demonstrate impressive multimodel chat abilities, sometimes exhibiting the behaviors of multimodal GPT-4 on a synthetic multimodal instruction-following dataset. When fine-tuned on Science QA, the synergy of LLAVA and GPT-4 achieves a new state-of-the-art accuracy of 92.53<math alttext="\%" class="ltx_Math" display="inline" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1"><semantics id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1a"><mo id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1.1" xref="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1b"><csymbol cd="latexml" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1.1.cmml" xref="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx1.SSx2.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1d">%</annotation></semantics></math>. We make GPT-4 generated visual instruction tuning data, our model and code base publicly available.
Comments: NeurIPS 2023 Oral; project page: this https URL
Subjects: Computer Vision and Pattern Recognition (cs.CV); Artificial Intelligence (cs.AI); Computation and Language (cs.CL); Machine Learning (cs.LG)
Cite as: arXiv:2304.08485 [cs.CV] (or arXiv:2304.08485v2 [cs.CV] for this version)
https://doi.org/10.48550/arXiv.2304.08485
Submission history
From: Haotian Liu [view email]
[v1] Mon, 17 Apr 2023 17:59:25 UTC (4,360 KB)
[v2] Mon, 11 Dec 2023 17:46:14 UTC (4,985 KB)</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 13 showcases SAIL's ability to interpret and describe complex scientific charts containing a variety of objects, foods, and animals that share a common visual theme (predominantly blue or blue elements).  The table demonstrates the model's capacity for detailed visual description and understanding of both individual items and their relationship within the overall context of the chart.  It highlights SAIL's semantic reasoning capabilities and visual representation learning in understanding visual organization and relationships.
> <details>
> <summary>read the caption</summary>
> Table 13: Sail demonstrates a strong capability about understanding the scientific charts.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<tr class="ltx_tr" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<td class="ltx_td" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_p" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1" style="width:512.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="407" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6360030/figure/realworld.jpg" width="628"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2">
<td class="ltx_td ltx_align_left" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.1.1" style="font-size:80%;">User</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.2.1">
<span class="ltx_p" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.2.1.1" style="width:512.1pt;">Please describe the image in detail.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.1.1" style="font-size:80%;">Sail</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1">
<span class="ltx_p" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.1" style="width:512.1pt;">There are several notable elements in the image:</span>
<span class="ltx_p" id="Sx1.SSx2.2.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.2">1. The highway is multi-lane, with multiple lanes visible.
2. The traffic is dense, with vehicles in various lanes.
3. The weather seems to be overcast, as indicated by the grayish tones of the image.
4. There are several traffic signs and signs visible, including a green highway sign indicating “1/2 mile” to the right, and a green sign with the number “16” and the word “MILE” on the left side of the image.
5. The background includes a hill or mountain, with trees and greenery visible.
6. There are also several power lines and electrical pylons visible along the sides of the highway.
The image’s focus is on the traffic and the surrounding environment. The vehicles are primarily in the center and right lanes of the highway, with some vehicles in the left lanes as well. The highway is flanked by lush greenery, including trees and grassy areas, suggesting that this is a rural or possibly a suburban area.
The traffic appears to be moving at a moderate pace. The weather conditions suggest that this is a daytime scene, possibly during the morning or late afternoon.
The image is taken from a perspective that suggests the viewer is in a vehicle on the highway, observing the traffic ahead.
In summary, the image captures a typical highway scene with moderate traffic, surrounded by a mix of natural and built environments, under an overcast sky. The road is in good condition, and the vehicles are traveling smoothly in both directions.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 14 showcases SAIL's ability to understand the content of a poster depicting the Sankranti festival.  The description details several visual elements: a decorative border, the text 'Happy Sankranti', a woman preparing a traditional sweet, a three-tiered pot, and a small hut. It highlights SAIL's capacity for interpreting visual details and cultural context within a single image, demonstrating its comprehension of both artistic and traditional aspects of the festival.
> <details>
> <summary>read the caption</summary>
> Table 14: Sail demonstrates a strong capability about understanding the poster content.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.10462/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10462/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}