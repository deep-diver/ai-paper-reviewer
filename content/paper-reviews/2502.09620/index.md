---
title: "Exploring the Potential of Encoder-free Architectures in 3D LMMs"
summary: "Encoder-free 3D LMMs outperform state-of-the-art, achieving comparable results to significantly larger models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Northwestern Polytechnical University",]
showSummary: true
date: 2025-02-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.09620 {{< /keyword >}}
{{< keyword icon="writer" >}} Yiwen Tang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.09620" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.09620" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.09620/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current encoder-based 3D Large Multimodal Models (LMMs) face challenges adapting to varying point cloud resolutions and aligning encoder features with LLMs' semantic needs. These limitations hinder the advancement of multimodal understanding.  This often leads to performance degradation and inefficient model usage.

This paper introduces ENEL, the first comprehensive study of encoder-free architectures for 3D LMMs.  It proposes two key strategies to overcome these limitations: LLM-embedded Semantic Encoding and Hierarchical Geometry Aggregation.  The paper presents a novel Hybrid Semantic Loss for more effective high-level semantic extraction during pre-training.  ENEL achieves state-of-the-art results in 3D classification, captioning, and visual question answering tasks, demonstrating the potential of encoder-free architectures for efficient and adaptive 3D LMMs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Encoder-free 3D LMMs are feasible and achieve state-of-the-art performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LLM-embedded semantic encoding and hierarchical geometry aggregation effectively replace the traditional 3D encoder. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed Hybrid Semantic Loss and the ENEL model offer a more efficient and adaptable architecture for 3D LMMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it challenges the conventional encoder-based approach in 3D Large Multimodal Models (LMMs)**, a dominant paradigm in the field. By demonstrating a viable encoder-free alternative, it **opens new avenues for research**, particularly in handling varying point cloud resolutions and aligning encoder features with the semantic needs of LLMs.  This work directly contributes to improving the efficiency and adaptability of 3D LMMs, impacting various downstream applications.  Its findings encourage future exploration into improving LLM efficiency and reducing the computational burden of current encoder-based 3D LMMs.

------
#### Visual Insights



![](https://arxiv.org/html/2502.09620/extracted/6201996/intro3.png)

> 🔼 Figure 1 demonstrates the limitations of encoder-based 3D Large Multimodal Models (LMMs).  Part (a) shows the impact of varying point cloud resolutions.  During training, a fixed resolution (8192 points, 512 tokens) is used, but during inference, the resolution changes (2K-16K points, 128-2048 tokens).  This mismatch causes a loss of information, significantly impacting performance as evaluated on the Objaverse captioning benchmark using GPT-4 scores. Part (b) illustrates the semantic mismatch between encoder embeddings and the LLM's needs. By visualizing attention weights (red indicates stronger attention), it shows that an encoder-free architecture produces point tokens with stronger semantic relevance for the language model.
> <details>
> <summary>read the caption</summary>
> Figure 1: Issues of encoder-based 3D LMMs. (a) Point Cloud Resolution Limitation. During training, the point cloud size (P.T. size) and point token size (P.T. size) are fixed at 8192 and 512, respectively. And we adjust these two sizes during inference, point cloud size from 2K to 16K and the corresponding point token size from 128 to 2048. We evaluate them on the captioning task of the Objaverse benchmark using GPT-4 scores as the evaluation metric. (b) Embedding Semantic Discrepancy. We visualize the attention scores of the average text token to the point tokens, where red indicates higher values. The point tokens in the encoder-free architecture exhibit stronger textual semantic relevance needed for the LLM.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.3">
<tr class="ltx_tr" id="S2.T1.3.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S2.T1.3.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T1.3.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T1.3.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.3.1.2.1">Cls</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S2.T1.3.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.3.1.3.1">Cap</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.3.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.3.2.1.1">GPT-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.2.2"><span class="ltx_text ltx_font_bold" id="S2.T1.3.2.2.1">GPT-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.2.3"><span class="ltx_text ltx_font_bold" id="S2.T1.3.2.3.1">S-BERT</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.3.3.1">PointLLM-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.3.3.2">53.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.3.3">44.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.3.4">47.47</td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.3.4.1">- Encoder</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.3.4.2">35.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.4.3">33.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.4.4">41.19</td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.3.5.1">+ 2-layer T.E.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.3.5.2">42.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.5.3">41.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.5.4">44.25</td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.3.6.1"><span class="ltx_text ltx_font_bold" id="S2.T1.3.6.1.1">+ 3-layer T.E.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.3.6.2"><span class="ltx_text ltx_font_bold" id="S2.T1.3.6.2.1">47.31</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.6.3"><span class="ltx_text ltx_font_bold" id="S2.T1.3.6.3.1">43.86</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.6.4"><span class="ltx_text ltx_font_bold" id="S2.T1.3.6.4.1">45.89</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S2.T1.3.7.1">+ 4-layer T.E.</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T1.3.7.2">45.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.3.7.3">42.99</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.3.7.4">44.51</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of different token embedding methods for 3D Large Multimodal Models (LMMs) on the Objaverse benchmark.  The baseline model used is PointLLM-7B.  The performance is measured using two tasks: classification ('Cls') and captioning ('Cap').  The results are evaluated using three metrics: GPT-4 scores, Sentence-BERT (S-BERT) scores, and a custom score.  The table compares the baseline PointLLM-7B model with various versions that incorporate a custom designed token embedding module ('T.E.') with varying numbers of layers.
> <details>
> <summary>read the caption</summary>
> Table 1: Token Embedding. We evaluate the performance on the Objaverse benchmark and adopt PointLLM-7B as the baseline model. ’Cls’ and ’Cap’ represent classification and captioning tasks, respectively. S-BERT refers to the Sentence-BERT. T.E. stands for our designed token embedding module.
> </details>





### In-depth insights


#### Encoder-Free 3D LLMs
Encoder-free 3D LLMs represent a significant departure from traditional encoder-based architectures.  **The core idea is to eliminate the need for a separate 3D encoder**, which typically processes point cloud data into embeddings before feeding them to the Large Language Model (LLM). This approach directly integrates the 3D encoding function within the LLM, aiming to improve adaptability to varying point cloud resolutions and alleviate the semantic gap between encoder outputs and LLM requirements.  **Key challenges in realizing this include compensating for the loss of high-level 3D semantics** usually extracted by encoders and **integrating inductive biases** for efficient 3D structure perception directly into the LLM.  Solutions proposed often involve novel pre-training strategies, such as incorporating self-supervised losses that focus on semantic understanding within the LLM, and fine-tuning methodologies that introduce hierarchical geometry aggregation to capture local details.  The potential benefits are substantial, including improved efficiency and flexibility, but the success heavily depends on effectively handling the aforementioned challenges.

#### Semantic Encoding
The concept of semantic encoding in the context of 3D Large Multimodal Models (LMMs) is crucial for bridging the gap between raw point cloud data and the high-level semantic understanding required by Large Language Models (LLMs).  **Effective semantic encoding is paramount for enabling LLMs to interpret and reason about 3D scenes**.  The paper explores strategies to achieve this without relying on traditional 3D encoders, which often introduce limitations in terms of point cloud resolution adaptability and semantic alignment with LLMs.  **The proposed LLM-embedded Semantic Encoding strategy directly embeds semantic information within the LLM**, leveraging self-supervised learning techniques to guide the LLM's learning process.  This innovative approach attempts to replace the role of the traditional 3D encoder, **allowing the LLM itself to learn and extract meaningful 3D semantics**. The study's experiments show promising results, demonstrating the feasibility and potential of this encoder-free approach to improve the performance of 3D LMMs.

#### Geometric Aggregation
The concept of 'Geometric Aggregation' in the context of 3D Large Multimodal Models (LMMs) addresses the challenge of incorporating inductive bias into LLMs for better 3D geometric structure perception.  Traditional 3D encoders often embed this bias explicitly, but LLMs lack such inherent structure. **The proposed strategy aims to compensate by introducing a hierarchical aggregation mechanism in the early LLM layers.** This involves using techniques like farthest point sampling (FPS) and k-Nearest Neighbors (k-NN) to aggregate tokens based on geometric proximity, thereby mimicking the multi-level processing of traditional encoders.  **The integration of gated self-attention further enhances the process by adaptively focusing on relevant information.** This hierarchical approach helps the LLM capture both local details and global relationships within the 3D point cloud, enabling more nuanced understanding.  **Experimental results showcase the effectiveness of this strategy, demonstrating improved performance on tasks requiring detailed 3D understanding.** However, the optimal level of hierarchy requires careful tuning; excessive aggregation can lead to information loss, highlighting the need for a balanced approach that preserves both local and global contextual information.

#### ENEL Model Results
An 'ENEL Model Results' section would ideally present a detailed analysis of the encoder-free 3D Large Multimodal Model's performance across various tasks.  It should begin by comparing ENEL's results to existing state-of-the-art encoder-based models, highlighting any **significant performance improvements or shortcomings**. Key metrics such as accuracy, precision, recall, and F1-score for tasks like 3D classification, captioning, and visual question answering (VQA) should be meticulously reported.  Furthermore, an ablation study demonstrating the impact of individual components, like the LLM-embedded semantic encoding strategy or hierarchical geometry aggregation, is crucial to validate the design choices.  **Error analysis** should also be included, identifying specific types of inputs or tasks where ENEL struggles and suggesting potential areas for improvement.  Finally, a discussion on the **efficiency and scalability** of ENEL compared to encoder-based methods would provide a complete picture of the model's strengths and weaknesses, paving the way for future developments.

#### Future of Encoder-Free
The "Future of Encoder-Free" architectures in 3D Large Multimodal Models (LMMs) is promising, but faces challenges.  **Encoder-free approaches offer potential advantages in handling varying point cloud resolutions and aligning embedding semantics with LLMs' needs.**  However, successfully replacing encoders requires overcoming the inherent difficulty of capturing high-level 3D semantics and geometric structures directly within the LLM.  **Future research should focus on developing more sophisticated self-supervised learning strategies and inductive bias mechanisms integrated into LLMs.** This might involve exploring novel loss functions tailored to 3D data or incorporating architectural modifications within the LLM to better process spatial information.  **Further investigation into efficient token embedding modules is crucial**, as they are the direct interface between raw point cloud data and the LLM.  Ultimately, the success of encoder-free 3D LMMs depends on achieving comparable or superior performance to encoder-based models while maintaining the benefits of simplicity and flexibility.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.09620/x1.png)

> 🔼 The figure illustrates the two-stage training pipeline of the ENEL model. Stage 1 (pre-training) focuses on embedding high-level 3D semantics into the LLM by making the first K layers learnable and utilizing the Hybrid Semantic Loss.  Stage 2 (instruction tuning) employs the Hierarchical Geometric Aggregation strategy to enable the LLM to effectively capture the local geometric structures within the point cloud data.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overall Pipeline of Enel. The training is divided into two stages: the pre-training stage and the instruction tuning stage. In the first stage, we set the first K𝐾Kitalic_K layers to be learnable and apply the proposed Hybrid Semantic Loss to embed high-level semantics into the LLM. In the second stage, we adopt the Hierarchical Geometric Aggregation strategy to capture local structures of point clouds.
> </details>



![](https://arxiv.org/html/2502.09620/x2.png)

> 🔼 Figure 3 illustrates various self-supervised learning methods applied during the pre-training phase of an encoder-free 3D Large Multimodal Model (LMM).  Subfigures (a) through (d) depict common approaches: Masked Modeling Loss, Reconstruction Loss, Contrastive Loss, and Knowledge Distillation Loss, respectively.  Each method aims to learn high-level 3D semantic information from point cloud data without relying on a traditional 3D encoder.  Subfigure (e) introduces a novel Hybrid Semantic Loss, specifically designed for this encoder-free architecture, combining aspects of the previous methods to achieve optimal performance.
> <details>
> <summary>read the caption</summary>
> Figure 3: Point Cloud Self-Supervised Learning Losses. In the pre-training stage, we explore common self-supervised learning losses for the encoder-free 3D LMM: (a) Masked Modeling Loss, (b) Reconstruction Loss, (c) Contrastive Loss, and (d) Knowledge Distillation Loss. The (e) represents our proposed Hybrid Semantic Loss, specifically designed for the encoder-free architecture.
> </details>



![](https://arxiv.org/html/2502.09620/x3.png)

> 🔼 This figure illustrates the Hierarchical Geometry Aggregation strategy used in the instruction tuning stage of the ENEL model.  The strategy aims to incorporate inductive bias into the LLM's early layers, allowing it to focus on local details within the point cloud data. This is achieved through a series of aggregation and propagation operations applied to the point tokens.  Aggregation combines information from neighboring points, effectively capturing local geometric structures. Propagation then spreads this aggregated information back to the original point tokens, ensuring that local details are integrated into the higher-level semantic understanding of the point cloud by the LLM.
> <details>
> <summary>read the caption</summary>
> Figure 4: Hierarchical Geometry Aggregation Strategy. In the instruction tuning stage, we apply aggregation and propagation operations to the point tokens to capture the local structural details.
> </details>



![](https://arxiv.org/html/2502.09620/x4.png)

> 🔼 Figure 5 visualizes the attention weights between the average word embedding and point cloud embeddings for encoder-based (PointLLM) and encoder-free (ENEL) models.  The heatmaps show the attention scores, with redder colors indicating stronger attention. The figure demonstrates how the encoder-free model attends more directly to semantically relevant parts of the 3D object, whereas the encoder-based model's attention is more diffuse.  Three object categories are shown: chairs (a), airplanes (b), and lamps (c), illustrating this difference in attention across various object types.  The results support the claim that the encoder-free architecture achieves better semantic encoding.
> <details>
> <summary>read the caption</summary>
> Figure 5: Difference in Semantic Encoding. By visualizing the attention scores of the average text token to the point tokens on the Objaverse dataset, we compare the semantic encoding potential of encoder-based and encoder-free architectures, where red indicates higher values. And (a) represents chairs, (b) represents airplanes, and (c) represents lamps.
> </details>



![](https://arxiv.org/html/2502.09620/extracted/6201996/loss2.png)

> 🔼 Figure 6 illustrates three variations of self-supervised learning strategies used for point cloud data in the context of encoder-free 3D large multimodal models (LMMs).  Each subfigure shows a different loss function applied during pre-training to embed high-level semantics into the language model without explicit 3D encoders:  (a) Masked Modeling Loss:  A portion of the point tokens are masked, and the model attempts to predict their values. (b) Reconstruction Loss: The model reconstructs the original point cloud from a learned representation. (c) Hybrid Semantic Loss: Combines Masked Modeling and Reconstruction Losses, aiming to capture both high-level semantic information and fine-grained geometric details.
> <details>
> <summary>read the caption</summary>
> Figure 6: Variants of Point Cloud Self-Supervised Learning Losses. (a) The Variant of Masked Modeling Loss, (b) The Variant of Reconstruction Loss, (c) The Variant of Hybrid Semantic Loss.
> </details>



![](https://arxiv.org/html/2502.09620/extracted/6201996/output3.png)

> 🔼 Figure 7 showcases several examples of ENEL's responses to various prompts involving 3D models.  The prompts range from detailed descriptions to more specific questions requiring object recognition and property analysis.  The examples demonstrate ENEL's ability to produce both precise and varied answers, highlighting its capability for nuanced understanding and generation within the context of 3D multimodal data.
> <details>
> <summary>read the caption</summary>
> Figure 7: Enel Output Examples. We demonstrate that Enel provides precise and diverse responses when addressing different problems.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T2.3.1">
<tr class="ltx_tr" id="S2.T2.3.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S2.T2.3.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T2.3.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T2.3.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T2.3.1.1.2.1">LR</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T2.3.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T2.3.1.1.3.1">Cls</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S2.T2.3.1.1.4"><span class="ltx_text ltx_font_bold" id="S2.T2.3.1.1.4.1">Cap</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S2.T2.3.1.2.1.1">GPT-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.1.2.2"><span class="ltx_text ltx_font_bold" id="S2.T2.3.1.2.2.1">GPT-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.1.2.3"><span class="ltx_text ltx_font_bold" id="S2.T2.3.1.2.3.1">S-BERT</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.3.1.3.1">PointLLM-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.3.1.3.2">2e-3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.3.1.3.3">53.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.1.3.4">44.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.1.3.5">47.47</td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.1.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.3.1.4.1" rowspan="2"><span class="ltx_text" id="S2.T2.3.1.4.1.1">+ 2 learnable layers</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.3.1.4.2">2e-3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.3.1.4.3">41.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.1.4.4">42.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.1.4.5">45.92</td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.3.1.5.1">4e-4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.3.1.5.2">45.5</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.1.5.3">44.72</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.1.5.4">47.35</td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.1.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.3.1.6.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T2.3.1.6.1.1">+ 4 learnable layers</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.3.1.6.2">2e-3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.3.1.6.3">44.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.1.6.4">41.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.1.6.5">46.77</td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.3.1.7.1"><span class="ltx_text ltx_font_bold" id="S2.T2.3.1.7.1.1">4e-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.3.1.7.2"><span class="ltx_text ltx_font_bold" id="S2.T2.3.1.7.2.1">49.11</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.1.7.3"><span class="ltx_text ltx_font_bold" id="S2.T2.3.1.7.3.1">45.39</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.1.7.4"><span class="ltx_text ltx_font_bold" id="S2.T2.3.1.7.4.1">47.71</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S2.T2.3.1.8.1" rowspan="2"><span class="ltx_text" id="S2.T2.3.1.8.1.1">+ 8 learnable layers</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.3.1.8.2">2e-3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.3.1.8.3">43.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.1.8.4">39.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.1.8.5">42.38</td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.1.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T2.3.1.9.1">4e-4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T2.3.1.9.2">48.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.3.1.9.3">44.49</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.3.1.9.4">47.21</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results on further 3D encoding by making early layers of the LLM learnable.  It shows the impact of varying the number of learnable layers (2, 4, or 8) and learning rates (2e-3 and 4e-4) during pre-training on the performance of the model in terms of GPT-4 scores for classification and captioning tasks, as well as S-BERT scores. The original learning rate used is 2e-3.  The results demonstrate how making the LLM layers learnable, in combination with adjustments to the learning rate, contributes to improved performance, effectively emulating a 3D encoder's functionality within the LLM.
> <details>
> <summary>read the caption</summary>
> Table 2: Further 3D Encoding. We set the LLM early layers to be learnable. LR represents the learning rate during the pre-training stage, with the original learning rate set to 2e-3.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T3.28.12">
<tr class="ltx_tr" id="S2.T3.28.12.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S2.T3.28.12.13.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T3.28.12.13.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T3.28.12.13.2"><span class="ltx_text ltx_font_bold" id="S2.T3.28.12.13.2.1">Cls</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S2.T3.28.12.13.3"><span class="ltx_text ltx_font_bold" id="S2.T3.28.12.13.3.1">Cap</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.28.12.14">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T3.28.12.14.1"><span class="ltx_text ltx_font_bold" id="S2.T3.28.12.14.1.1">GPT-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T3.28.12.14.2"><span class="ltx_text ltx_font_bold" id="S2.T3.28.12.14.2.1">GPT-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.28.12.14.3"><span class="ltx_text ltx_font_bold" id="S2.T3.28.12.14.3.1">S-BERT</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.28.12.15">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T3.28.12.15.1">PointLLM-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T3.28.12.15.2">53.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T3.28.12.15.3">44.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.28.12.15.4">47.47</td>
</tr>
<tr class="ltx_tr" id="S2.T3.18.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T3.18.2.2.2">Masked Modeling Loss<math alttext="{}_{\text{patch}}" class="ltx_Math" display="inline" id="S2.T3.17.1.1.1.m1.1"><semantics id="S2.T3.17.1.1.1.m1.1a"><msub id="S2.T3.17.1.1.1.m1.1.1" xref="S2.T3.17.1.1.1.m1.1.1.cmml"><mi id="S2.T3.17.1.1.1.m1.1.1a" xref="S2.T3.17.1.1.1.m1.1.1.cmml"></mi><mtext id="S2.T3.17.1.1.1.m1.1.1.1" xref="S2.T3.17.1.1.1.m1.1.1.1a.cmml">patch</mtext></msub><annotation-xml encoding="MathML-Content" id="S2.T3.17.1.1.1.m1.1b"><apply id="S2.T3.17.1.1.1.m1.1.1.cmml" xref="S2.T3.17.1.1.1.m1.1.1"><ci id="S2.T3.17.1.1.1.m1.1.1.1a.cmml" xref="S2.T3.17.1.1.1.m1.1.1.1"><mtext id="S2.T3.17.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T3.17.1.1.1.m1.1.1.1">patch</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.17.1.1.1.m1.1c">{}_{\text{patch}}</annotation><annotation encoding="application/x-llamapun" id="S2.T3.17.1.1.1.m1.1d">start_FLOATSUBSCRIPT patch end_FLOATSUBSCRIPT</annotation></semantics></math><sup class="ltx_sup" id="S2.T3.18.2.2.2.1"><span class="ltx_text ltx_font_italic" id="S2.T3.18.2.2.2.1.1">Ψ</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T3.18.2.2.3">48.50</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T3.18.2.2.4">45.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.18.2.2.5">46.36</td>
</tr>
<tr class="ltx_tr" id="S2.T3.20.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.20.4.4.2">Masked Modeling Loss<math alttext="{}_{\text{patch}}" class="ltx_Math" display="inline" id="S2.T3.19.3.3.1.m1.1"><semantics id="S2.T3.19.3.3.1.m1.1a"><msub id="S2.T3.19.3.3.1.m1.1.1" xref="S2.T3.19.3.3.1.m1.1.1.cmml"><mi id="S2.T3.19.3.3.1.m1.1.1a" xref="S2.T3.19.3.3.1.m1.1.1.cmml"></mi><mtext id="S2.T3.19.3.3.1.m1.1.1.1" xref="S2.T3.19.3.3.1.m1.1.1.1a.cmml">patch</mtext></msub><annotation-xml encoding="MathML-Content" id="S2.T3.19.3.3.1.m1.1b"><apply id="S2.T3.19.3.3.1.m1.1.1.cmml" xref="S2.T3.19.3.3.1.m1.1.1"><ci id="S2.T3.19.3.3.1.m1.1.1.1a.cmml" xref="S2.T3.19.3.3.1.m1.1.1.1"><mtext id="S2.T3.19.3.3.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T3.19.3.3.1.m1.1.1.1">patch</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.19.3.3.1.m1.1c">{}_{\text{patch}}</annotation><annotation encoding="application/x-llamapun" id="S2.T3.19.3.3.1.m1.1d">start_FLOATSUBSCRIPT patch end_FLOATSUBSCRIPT</annotation></semantics></math><sup class="ltx_sup" id="S2.T3.20.4.4.2.1"><span class="ltx_text ltx_font_italic" id="S2.T3.20.4.4.2.1.1">Φ</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.20.4.4.3">50.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.20.4.4.4">46.80</td>
<td class="ltx_td ltx_align_center" id="S2.T3.20.4.4.5">47.29</td>
</tr>
<tr class="ltx_tr" id="S2.T3.22.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.22.6.6.2">Masked Modeling Loss<math alttext="{}_{\text{feat}}" class="ltx_Math" display="inline" id="S2.T3.21.5.5.1.m1.1"><semantics id="S2.T3.21.5.5.1.m1.1a"><msub id="S2.T3.21.5.5.1.m1.1.1" xref="S2.T3.21.5.5.1.m1.1.1.cmml"><mi id="S2.T3.21.5.5.1.m1.1.1a" xref="S2.T3.21.5.5.1.m1.1.1.cmml"></mi><mtext id="S2.T3.21.5.5.1.m1.1.1.1" xref="S2.T3.21.5.5.1.m1.1.1.1a.cmml">feat</mtext></msub><annotation-xml encoding="MathML-Content" id="S2.T3.21.5.5.1.m1.1b"><apply id="S2.T3.21.5.5.1.m1.1.1.cmml" xref="S2.T3.21.5.5.1.m1.1.1"><ci id="S2.T3.21.5.5.1.m1.1.1.1a.cmml" xref="S2.T3.21.5.5.1.m1.1.1.1"><mtext id="S2.T3.21.5.5.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T3.21.5.5.1.m1.1.1.1">feat</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.21.5.5.1.m1.1c">{}_{\text{feat}}</annotation><annotation encoding="application/x-llamapun" id="S2.T3.21.5.5.1.m1.1d">start_FLOATSUBSCRIPT feat end_FLOATSUBSCRIPT</annotation></semantics></math><sup class="ltx_sup" id="S2.T3.22.6.6.2.1"><span class="ltx_text ltx_font_italic" id="S2.T3.22.6.6.2.1.1">Ψ</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.22.6.6.3">50.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.22.6.6.4">45.80</td>
<td class="ltx_td ltx_align_center" id="S2.T3.22.6.6.5">46.29</td>
</tr>
<tr class="ltx_tr" id="S2.T3.24.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.24.8.8.2">Masked Modeling Loss<math alttext="{}_{\text{feat}}" class="ltx_Math" display="inline" id="S2.T3.23.7.7.1.m1.1"><semantics id="S2.T3.23.7.7.1.m1.1a"><msub id="S2.T3.23.7.7.1.m1.1.1" xref="S2.T3.23.7.7.1.m1.1.1.cmml"><mi id="S2.T3.23.7.7.1.m1.1.1a" xref="S2.T3.23.7.7.1.m1.1.1.cmml"></mi><mtext id="S2.T3.23.7.7.1.m1.1.1.1" xref="S2.T3.23.7.7.1.m1.1.1.1a.cmml">feat</mtext></msub><annotation-xml encoding="MathML-Content" id="S2.T3.23.7.7.1.m1.1b"><apply id="S2.T3.23.7.7.1.m1.1.1.cmml" xref="S2.T3.23.7.7.1.m1.1.1"><ci id="S2.T3.23.7.7.1.m1.1.1.1a.cmml" xref="S2.T3.23.7.7.1.m1.1.1.1"><mtext id="S2.T3.23.7.7.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T3.23.7.7.1.m1.1.1.1">feat</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.23.7.7.1.m1.1c">{}_{\text{feat}}</annotation><annotation encoding="application/x-llamapun" id="S2.T3.23.7.7.1.m1.1d">start_FLOATSUBSCRIPT feat end_FLOATSUBSCRIPT</annotation></semantics></math><sup class="ltx_sup" id="S2.T3.24.8.8.2.1"><span class="ltx_text ltx_font_italic" id="S2.T3.24.8.8.2.1.1">Φ</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.24.8.8.3">49.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.24.8.8.4">47.35</td>
<td class="ltx_td ltx_align_center" id="S2.T3.24.8.8.5">47.93</td>
</tr>
<tr class="ltx_tr" id="S2.T3.25.9.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T3.25.9.9.1">Reconstruction Loss<math alttext="{}_{\text{patch}}" class="ltx_Math" display="inline" id="S2.T3.25.9.9.1.m1.1"><semantics id="S2.T3.25.9.9.1.m1.1a"><msub id="S2.T3.25.9.9.1.m1.1.1" xref="S2.T3.25.9.9.1.m1.1.1.cmml"><mi id="S2.T3.25.9.9.1.m1.1.1a" xref="S2.T3.25.9.9.1.m1.1.1.cmml"></mi><mtext id="S2.T3.25.9.9.1.m1.1.1.1" xref="S2.T3.25.9.9.1.m1.1.1.1a.cmml">patch</mtext></msub><annotation-xml encoding="MathML-Content" id="S2.T3.25.9.9.1.m1.1b"><apply id="S2.T3.25.9.9.1.m1.1.1.cmml" xref="S2.T3.25.9.9.1.m1.1.1"><ci id="S2.T3.25.9.9.1.m1.1.1.1a.cmml" xref="S2.T3.25.9.9.1.m1.1.1.1"><mtext id="S2.T3.25.9.9.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T3.25.9.9.1.m1.1.1.1">patch</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.25.9.9.1.m1.1c">{}_{\text{patch}}</annotation><annotation encoding="application/x-llamapun" id="S2.T3.25.9.9.1.m1.1d">start_FLOATSUBSCRIPT patch end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T3.25.9.9.2">49.50</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T3.25.9.9.3">46.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.25.9.9.4">47.33</td>
</tr>
<tr class="ltx_tr" id="S2.T3.26.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.26.10.10.1">Reconstruction Loss<math alttext="{}_{\text{feat}}" class="ltx_Math" display="inline" id="S2.T3.26.10.10.1.m1.1"><semantics id="S2.T3.26.10.10.1.m1.1a"><msub id="S2.T3.26.10.10.1.m1.1.1" xref="S2.T3.26.10.10.1.m1.1.1.cmml"><mi id="S2.T3.26.10.10.1.m1.1.1a" xref="S2.T3.26.10.10.1.m1.1.1.cmml"></mi><mtext id="S2.T3.26.10.10.1.m1.1.1.1" xref="S2.T3.26.10.10.1.m1.1.1.1a.cmml">feat</mtext></msub><annotation-xml encoding="MathML-Content" id="S2.T3.26.10.10.1.m1.1b"><apply id="S2.T3.26.10.10.1.m1.1.1.cmml" xref="S2.T3.26.10.10.1.m1.1.1"><ci id="S2.T3.26.10.10.1.m1.1.1.1a.cmml" xref="S2.T3.26.10.10.1.m1.1.1.1"><mtext id="S2.T3.26.10.10.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T3.26.10.10.1.m1.1.1.1">feat</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.26.10.10.1.m1.1c">{}_{\text{feat}}</annotation><annotation encoding="application/x-llamapun" id="S2.T3.26.10.10.1.m1.1d">start_FLOATSUBSCRIPT feat end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.26.10.10.2">48.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.26.10.10.3">45.95</td>
<td class="ltx_td ltx_align_center" id="S2.T3.26.10.10.4">47.18</td>
</tr>
<tr class="ltx_tr" id="S2.T3.28.12.16">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T3.28.12.16.1">Contrastive Loss</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T3.28.12.16.2">43.50</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T3.28.12.16.3">42.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.28.12.16.4">44.77</td>
</tr>
<tr class="ltx_tr" id="S2.T3.28.12.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.28.12.17.1">Knowledge Distillation Loss</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.28.12.17.2">49.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.28.12.17.3">45.43</td>
<td class="ltx_td ltx_align_center" id="S2.T3.28.12.17.4">47.09</td>
</tr>
<tr class="ltx_tr" id="S2.T3.27.11.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T3.27.11.11.1">Hybrid Semantic Loss<math alttext="{}_{\text{patch}}" class="ltx_Math" display="inline" id="S2.T3.27.11.11.1.m1.1"><semantics id="S2.T3.27.11.11.1.m1.1a"><msub id="S2.T3.27.11.11.1.m1.1.1" xref="S2.T3.27.11.11.1.m1.1.1.cmml"><mi id="S2.T3.27.11.11.1.m1.1.1a" xref="S2.T3.27.11.11.1.m1.1.1.cmml"></mi><mtext id="S2.T3.27.11.11.1.m1.1.1.1" xref="S2.T3.27.11.11.1.m1.1.1.1a.cmml">patch</mtext></msub><annotation-xml encoding="MathML-Content" id="S2.T3.27.11.11.1.m1.1b"><apply id="S2.T3.27.11.11.1.m1.1.1.cmml" xref="S2.T3.27.11.11.1.m1.1.1"><ci id="S2.T3.27.11.11.1.m1.1.1.1a.cmml" xref="S2.T3.27.11.11.1.m1.1.1.1"><mtext id="S2.T3.27.11.11.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T3.27.11.11.1.m1.1.1.1">patch</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.27.11.11.1.m1.1c">{}_{\text{patch}}</annotation><annotation encoding="application/x-llamapun" id="S2.T3.27.11.11.1.m1.1d">start_FLOATSUBSCRIPT patch end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T3.27.11.11.2">50.50</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T3.27.11.11.3">46.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.27.11.11.4">47.59</td>
</tr>
<tr class="ltx_tr" id="S2.T3.28.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.28.12.12.1">Hybrid Semantic Loss<math alttext="{}_{\text{feat}}" class="ltx_Math" display="inline" id="S2.T3.28.12.12.1.m1.1"><semantics id="S2.T3.28.12.12.1.m1.1a"><msub id="S2.T3.28.12.12.1.m1.1.1" xref="S2.T3.28.12.12.1.m1.1.1.cmml"><mi id="S2.T3.28.12.12.1.m1.1.1a" xref="S2.T3.28.12.12.1.m1.1.1.cmml"></mi><mtext id="S2.T3.28.12.12.1.m1.1.1.1" xref="S2.T3.28.12.12.1.m1.1.1.1a.cmml">feat</mtext></msub><annotation-xml encoding="MathML-Content" id="S2.T3.28.12.12.1.m1.1b"><apply id="S2.T3.28.12.12.1.m1.1.1.cmml" xref="S2.T3.28.12.12.1.m1.1.1"><ci id="S2.T3.28.12.12.1.m1.1.1.1a.cmml" xref="S2.T3.28.12.12.1.m1.1.1.1"><mtext id="S2.T3.28.12.12.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T3.28.12.12.1.m1.1.1.1">feat</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.28.12.12.1.m1.1c">{}_{\text{feat}}</annotation><annotation encoding="application/x-llamapun" id="S2.T3.28.12.12.1.m1.1d">start_FLOATSUBSCRIPT feat end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.28.12.12.2">52.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.28.12.12.3">48.51</td>
<td class="ltx_td ltx_align_center" id="S2.T3.28.12.12.4">48.06</td>
</tr>
<tr class="ltx_tr" id="S2.T3.28.12.18">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S2.T3.28.12.18.1"><span class="ltx_text ltx_font_bold" id="S2.T3.28.12.18.1.1">+ Position Embedding</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T3.28.12.18.2"><span class="ltx_text ltx_font_bold" id="S2.T3.28.12.18.2.1">53.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T3.28.12.18.3"><span class="ltx_text ltx_font_bold" id="S2.T3.28.12.18.3.1">48.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.28.12.18.4"><span class="ltx_text ltx_font_bold" id="S2.T3.28.12.18.4.1">48.00</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents results from experiments on different self-supervised learning methods used in the pre-training stage of the ENEL model.  The goal was to determine how effectively these losses can help the language model learn high-level semantic representations of 3D point cloud data without an explicit encoder.  The experiments involved variations of Masked Modeling Loss, Reconstruction Loss, Contrastive Loss, Knowledge Distillation Loss, and a novel Hybrid Semantic Loss.  The results are shown in terms of the model's performance on classification and captioning tasks, using GPT-4 and other metrics for evaluation.  The mask ratio (proportion of tokens masked) is varied (30% and 60%) to assess its impact on performance.  The Hybrid Semantic Loss combines masked modeling and reconstruction losses, targeting both point tokens and patches.
> <details>
> <summary>read the caption</summary>
> Table 3: LLM-embedded Semantic Encoding. In the pre-training stage, we explore the effects of various self-supervised learning losses targeting point tokens. ΨΨ\Psiroman_Ψ represents a mask ratio of 60%, while ΦΦ\Phiroman_Φ represents a mask ratio of 30%. The subscript patch and feat represent the loss target. For Hybrid Semantic Loss, the subscript patch and feat represent the masked modeling target, while the reconstruction target is the corresponding feat and patch.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T4.14.6">
<tr class="ltx_tr" id="S2.T4.14.6.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T4.14.6.7.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T4.14.6.7.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T4.14.6.7.2"><span class="ltx_text ltx_font_bold" id="S2.T4.14.6.7.2.1">Cls</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S2.T4.14.6.7.3"><span class="ltx_text ltx_font_bold" id="S2.T4.14.6.7.3.1">Cap</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.14.6.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.14.6.8.1"><span class="ltx_text ltx_font_bold" id="S2.T4.14.6.8.1.1">GPT-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.14.6.8.2"><span class="ltx_text ltx_font_bold" id="S2.T4.14.6.8.2.1">GPT-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.14.6.8.3"><span class="ltx_text ltx_font_bold" id="S2.T4.14.6.8.3.1">S-BERT</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.14.6.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.14.6.9.1">PointLLM-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.14.6.9.2">53.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.14.6.9.3">44.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.14.6.9.4">47.47</td>
</tr>
<tr class="ltx_tr" id="S2.T4.9.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.9.1.1.1">
<math alttext="l" class="ltx_Math" display="inline" id="S2.T4.9.1.1.1.m1.1"><semantics id="S2.T4.9.1.1.1.m1.1a"><mi id="S2.T4.9.1.1.1.m1.1.1" xref="S2.T4.9.1.1.1.m1.1.1.cmml">l</mi><annotation-xml encoding="MathML-Content" id="S2.T4.9.1.1.1.m1.1b"><ci id="S2.T4.9.1.1.1.m1.1.1.cmml" xref="S2.T4.9.1.1.1.m1.1.1">𝑙</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.9.1.1.1.m1.1c">l</annotation><annotation encoding="application/x-llamapun" id="S2.T4.9.1.1.1.m1.1d">italic_l</annotation></semantics></math>=1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.9.1.1.2">52.50</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.9.1.1.3">48.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.9.1.1.4">48.14</td>
</tr>
<tr class="ltx_tr" id="S2.T4.10.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.10.2.2.1">
<math alttext="l" class="ltx_Math" display="inline" id="S2.T4.10.2.2.1.m1.1"><semantics id="S2.T4.10.2.2.1.m1.1a"><mi id="S2.T4.10.2.2.1.m1.1.1" xref="S2.T4.10.2.2.1.m1.1.1.cmml">l</mi><annotation-xml encoding="MathML-Content" id="S2.T4.10.2.2.1.m1.1b"><ci id="S2.T4.10.2.2.1.m1.1.1.cmml" xref="S2.T4.10.2.2.1.m1.1.1">𝑙</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.10.2.2.1.m1.1c">l</annotation><annotation encoding="application/x-llamapun" id="S2.T4.10.2.2.1.m1.1d">italic_l</annotation></semantics></math>=2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.10.2.2.2">50.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.10.2.2.3">46.76</td>
<td class="ltx_td ltx_align_center" id="S2.T4.10.2.2.4">47.95</td>
</tr>
<tr class="ltx_tr" id="S2.T4.11.3.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.11.3.3.1">
<math alttext="l" class="ltx_Math" display="inline" id="S2.T4.11.3.3.1.m1.1"><semantics id="S2.T4.11.3.3.1.m1.1a"><mi id="S2.T4.11.3.3.1.m1.1.1" xref="S2.T4.11.3.3.1.m1.1.1.cmml">l</mi><annotation-xml encoding="MathML-Content" id="S2.T4.11.3.3.1.m1.1b"><ci id="S2.T4.11.3.3.1.m1.1.1.cmml" xref="S2.T4.11.3.3.1.m1.1.1">𝑙</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.11.3.3.1.m1.1c">l</annotation><annotation encoding="application/x-llamapun" id="S2.T4.11.3.3.1.m1.1d">italic_l</annotation></semantics></math>=3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.11.3.3.2">48.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.11.3.3.3">45.51</td>
<td class="ltx_td ltx_align_center" id="S2.T4.11.3.3.4">46.85</td>
</tr>
<tr class="ltx_tr" id="S2.T4.12.4.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.12.4.4.1">
<math alttext="H" class="ltx_Math" display="inline" id="S2.T4.12.4.4.1.m1.1"><semantics id="S2.T4.12.4.4.1.m1.1a"><mi id="S2.T4.12.4.4.1.m1.1.1" xref="S2.T4.12.4.4.1.m1.1.1.cmml">H</mi><annotation-xml encoding="MathML-Content" id="S2.T4.12.4.4.1.m1.1b"><ci id="S2.T4.12.4.4.1.m1.1.1.cmml" xref="S2.T4.12.4.4.1.m1.1.1">𝐻</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.12.4.4.1.m1.1c">H</annotation><annotation encoding="application/x-llamapun" id="S2.T4.12.4.4.1.m1.1d">italic_H</annotation></semantics></math>=2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.12.4.4.2">53.50</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.12.4.4.3">49.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.12.4.4.4">48.33</td>
</tr>
<tr class="ltx_tr" id="S2.T4.13.5.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.13.5.5.1">
<math alttext="H" class="ltx_Math" display="inline" id="S2.T4.13.5.5.1.m1.1"><semantics id="S2.T4.13.5.5.1.m1.1a"><mi id="S2.T4.13.5.5.1.m1.1.1" xref="S2.T4.13.5.5.1.m1.1.1.cmml">H</mi><annotation-xml encoding="MathML-Content" id="S2.T4.13.5.5.1.m1.1b"><ci id="S2.T4.13.5.5.1.m1.1.1.cmml" xref="S2.T4.13.5.5.1.m1.1.1">𝐻</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.13.5.5.1.m1.1c">H</annotation><annotation encoding="application/x-llamapun" id="S2.T4.13.5.5.1.m1.1d">italic_H</annotation></semantics></math>=4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.13.5.5.2">52.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.13.5.5.3">48.39</td>
<td class="ltx_td ltx_align_center" id="S2.T4.13.5.5.4">47.75</td>
</tr>
<tr class="ltx_tr" id="S2.T4.14.6.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.14.6.6.1">
<math alttext="H" class="ltx_Math" display="inline" id="S2.T4.14.6.6.1.m1.1"><semantics id="S2.T4.14.6.6.1.m1.1a"><mi id="S2.T4.14.6.6.1.m1.1.1" xref="S2.T4.14.6.6.1.m1.1.1.cmml">H</mi><annotation-xml encoding="MathML-Content" id="S2.T4.14.6.6.1.m1.1b"><ci id="S2.T4.14.6.6.1.m1.1.1.cmml" xref="S2.T4.14.6.6.1.m1.1.1">𝐻</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.14.6.6.1.m1.1c">H</annotation><annotation encoding="application/x-llamapun" id="S2.T4.14.6.6.1.m1.1d">italic_H</annotation></semantics></math>=8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.14.6.6.2">51.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.14.6.6.3">48.95</td>
<td class="ltx_td ltx_align_center" id="S2.T4.14.6.6.4">47.97</td>
</tr>
<tr class="ltx_tr" id="S2.T4.14.6.10">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T4.14.6.10.1"><span class="ltx_text ltx_font_bold" id="S2.T4.14.6.10.1.1">+ Self-Attn.</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T4.14.6.10.2"><span class="ltx_text ltx_font_bold" id="S2.T4.14.6.10.2.1">55.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T4.14.6.10.3"><span class="ltx_text ltx_font_bold" id="S2.T4.14.6.10.3.1">50.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T4.14.6.10.4"><span class="ltx_text ltx_font_bold" id="S2.T4.14.6.10.4.1">48.61</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results on the Hierarchical Geometry Aggregation strategy used in the instruction tuning stage of the ENEL model.  It shows the impact of varying the number of aggregation and propagation operations (*l*), the number of LLM layers between these operations (*H*), and the inclusion of gated self-attention on the model's performance.  The results are evaluated using GPT-4 scores for classification and captioning tasks, along with Sentence-BERT and SimCSE metrics. This allows for a comprehensive analysis of how different architectural choices in the Hierarchical Geometry Aggregation affect the model's ability to understand 3D geometric structures.
> <details>
> <summary>read the caption</summary>
> Table 4: Hierarchical Geometry Aggregation. In the instruction tuning stage, we conduct the experiments of Hierarchical Geometry Aggregation strategy. l𝑙litalic_l represents the number of aggregation and propagation operations. H𝐻Hitalic_H refers to the LLM layers between l𝑙litalic_l aggregation and l𝑙litalic_l propagation operations. + Self-Attn. represents the incorporation of the gated self-attention in the aggregation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T5.3.1">
<tr class="ltx_tr" id="S2.T5.3.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S2.T5.3.1.1.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="6" id="S2.T5.3.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.1.2.1">Cap</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T5.3.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.1.3.1">Cls</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T5.3.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.1.4.1">QA</span></td>
</tr>
<tr class="ltx_tr" id="S2.T5.3.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.2.1.1">GPT-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.2.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.2.2.1">Sentence-BERT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.2.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.2.3.1">SimCSE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.2.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.2.4.1">BLEU-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.2.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.2.5.1">ROUGE-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T5.3.1.2.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.2.6.1">METEOR</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T5.3.1.2.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.2.7.1">GPT-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.2.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.2.8.1">GPT-4</span></td>
</tr>
<tr class="ltx_tr" id="S2.T5.3.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T5.3.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">InstructBLIP-7B <cite class="ltx_cite ltx_citemacro_citep">(Dai et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09620v1#bib.bib9" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">45.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">47.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">48.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">4.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">8.28</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T5.3.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">12.99</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T5.3.1.3.8" style="padding-top:1pt;padding-bottom:1pt;">43.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.3.9" style="padding-top:1pt;padding-bottom:1pt;">–</td>
</tr>
<tr class="ltx_tr" id="S2.T5.3.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T5.3.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">InstructBLIP-13B <cite class="ltx_cite ltx_citemacro_citep">(Dai et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09620v1#bib.bib9" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">44.97</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">45.90</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">48.86</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">4.65</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">8.85</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T5.3.1.4.7" style="padding-top:1pt;padding-bottom:1pt;">13.23</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T5.3.1.4.8" style="padding-top:1pt;padding-bottom:1pt;">34.25</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.4.9" style="padding-top:1pt;padding-bottom:1pt;">–</td>
</tr>
<tr class="ltx_tr" id="S2.T5.3.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T5.3.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">LLaVA-7B <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09620v1#bib.bib27" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">46.71</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">45.61</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">47.10</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.5.5" style="padding-top:1pt;padding-bottom:1pt;">3.64</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.5.6" style="padding-top:1pt;padding-bottom:1pt;">7.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T5.3.1.5.7" style="padding-top:1pt;padding-bottom:1pt;">12.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T5.3.1.5.8" style="padding-top:1pt;padding-bottom:1pt;">50.00</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.5.9" style="padding-top:1pt;padding-bottom:1pt;">–</td>
</tr>
<tr class="ltx_tr" id="S2.T5.3.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T5.3.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">LLaVA-13B <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09620v1#bib.bib27" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">38.28</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">46.37</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">45.90</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.6.5" style="padding-top:1pt;padding-bottom:1pt;">4.02</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.6.6" style="padding-top:1pt;padding-bottom:1pt;">8.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T5.3.1.6.7" style="padding-top:1pt;padding-bottom:1pt;">12.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T5.3.1.6.8" style="padding-top:1pt;padding-bottom:1pt;">51.75</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.6.9" style="padding-top:1pt;padding-bottom:1pt;">47.90</td>
</tr>
<tr class="ltx_tr" id="S2.T5.3.1.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T5.3.1.7.1" style="padding-top:1pt;padding-bottom:1pt;">3D-LLM <cite class="ltx_cite ltx_citemacro_citep">(Hong et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09620v1#bib.bib19" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.7.2" style="padding-top:1pt;padding-bottom:1pt;">33.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.7.3" style="padding-top:1pt;padding-bottom:1pt;">44.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.7.4" style="padding-top:1pt;padding-bottom:1pt;">43.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.7.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.7.5.1">16.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.7.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.7.6.1">19.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T5.3.1.7.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.7.7.1">19.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T5.3.1.7.8" style="padding-top:1pt;padding-bottom:1pt;">45.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.3.1.7.9" style="padding-top:1pt;padding-bottom:1pt;">–</td>
</tr>
<tr class="ltx_tr" id="S2.T5.3.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T5.3.1.8.1" style="padding-top:1pt;padding-bottom:1pt;">PointLLM-7B <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09620v1#bib.bib42" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.8.2" style="padding-top:1pt;padding-bottom:1pt;">44.85</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.8.3" style="padding-top:1pt;padding-bottom:1pt;">47.47</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.8.4" style="padding-top:1pt;padding-bottom:1pt;">48.55</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.8.5" style="padding-top:1pt;padding-bottom:1pt;">3.87</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.8.6" style="padding-top:1pt;padding-bottom:1pt;">7.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T5.3.1.8.7" style="padding-top:1pt;padding-bottom:1pt;">11.92</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T5.3.1.8.8" style="padding-top:1pt;padding-bottom:1pt;">53.00</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.8.9" style="padding-top:1pt;padding-bottom:1pt;">41.20</td>
</tr>
<tr class="ltx_tr" id="S2.T5.3.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T5.3.1.9.1" style="padding-top:1pt;padding-bottom:1pt;">PointLLM-13B <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09620v1#bib.bib42" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.9.2" style="padding-top:1pt;padding-bottom:1pt;">48.15</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.9.3" style="padding-top:1pt;padding-bottom:1pt;">47.91</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.9.4" style="padding-top:1pt;padding-bottom:1pt;">49.12</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.9.5" style="padding-top:1pt;padding-bottom:1pt;">3.83</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.9.6" style="padding-top:1pt;padding-bottom:1pt;">7.23</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T5.3.1.9.7" style="padding-top:1pt;padding-bottom:1pt;">12.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T5.3.1.9.8" style="padding-top:1pt;padding-bottom:1pt;">54.00</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.9.9" style="padding-top:1pt;padding-bottom:1pt;">46.60</td>
</tr>
<tr class="ltx_tr" id="S2.T5.3.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T5.3.1.10.1" style="padding-top:1pt;padding-bottom:1pt;">ShapeLLM-7B <cite class="ltx_cite ltx_citemacro_citep">(Qi et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09620v1#bib.bib33" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.10.2" style="padding-top:1pt;padding-bottom:1pt;">46.92</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.10.3" style="padding-top:1pt;padding-bottom:1pt;">48.20</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.10.4" style="padding-top:1pt;padding-bottom:1pt;">49.23</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.10.5" style="padding-top:1pt;padding-bottom:1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.10.6" style="padding-top:1pt;padding-bottom:1pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T5.3.1.10.7" style="padding-top:1pt;padding-bottom:1pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T5.3.1.10.8" style="padding-top:1pt;padding-bottom:1pt;">54.50</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.10.9" style="padding-top:1pt;padding-bottom:1pt;">47.40</td>
</tr>
<tr class="ltx_tr" id="S2.T5.3.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T5.3.1.11.1" style="padding-top:1pt;padding-bottom:1pt;">ShapeLLM-13B <cite class="ltx_cite ltx_citemacro_citep">(Qi et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09620v1#bib.bib33" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.11.2" style="padding-top:1pt;padding-bottom:1pt;">48.94</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.11.3" style="padding-top:1pt;padding-bottom:1pt;">48.52</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.11.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.11.4.1">49.98</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.11.5" style="padding-top:1pt;padding-bottom:1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.11.6" style="padding-top:1pt;padding-bottom:1pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T5.3.1.11.7" style="padding-top:1pt;padding-bottom:1pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T5.3.1.11.8" style="padding-top:1pt;padding-bottom:1pt;">54.00</td>
<td class="ltx_td ltx_align_center" id="S2.T5.3.1.11.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.11.9.1">53.10</span></td>
</tr>
<tr class="ltx_tr" id="S2.T5.3.1.12">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S2.T5.3.1.12.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S2.T5.3.1.12.1.1">Enel<span class="ltx_text ltx_font_upright" id="S2.T5.3.1.12.1.1.1">-7B</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.3.1.12.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.12.2.1">50.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.3.1.12.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.12.3.1">48.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.3.1.12.4" style="padding-top:1pt;padding-bottom:1pt;">49.31</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.3.1.12.5" style="padding-top:1pt;padding-bottom:1pt;">3.88</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.3.1.12.6" style="padding-top:1pt;padding-bottom:1pt;">7.20</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T5.3.1.12.7" style="padding-top:1pt;padding-bottom:1pt;">12.50</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T5.3.1.12.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.3.1.12.8.1">55.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.3.1.12.9" style="padding-top:1pt;padding-bottom:1pt;">42.70</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a comparative analysis of various models' performance on diverse 3D understanding tasks.  The primary evaluation metric is GPT-4 scores, providing a comprehensive assessment of the models' ability to understand and generate human-quality text descriptions and answers related to 3D data. To complement the GPT-4 scores and offer a more nuanced perspective, the table also includes data-driven metrics such as Sentence-BERT and SimCSE scores, providing additional quantitative insights into the models' performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison of different models on various 3D understanding tasks. A primary focus is placed on GPT-4 evaluation, along with data-driven metrics (Sentence-BERT and SimCSE).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T6.28.6">
<tr class="ltx_tr" id="A2.T6.28.6.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A2.T6.28.6.7.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.28.6.7.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="6" id="A2.T6.28.6.7.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.28.6.7.2.1">Cap</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T6.28.6.7.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.28.6.7.3.1">Cls</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.28.6.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.8.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.28.6.8.1.1">GPT-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.8.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.28.6.8.2.1">Sentence-BERT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.8.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.28.6.8.3.1">SimCSE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.8.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.28.6.8.4.1">BLEU-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.8.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.28.6.8.5.1">ROUGE-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T6.28.6.8.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.28.6.8.6.1">METEOR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.8.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.28.6.8.7.1">GPT-4</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.28.6.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T6.28.6.9.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A2.T6.28.6.9.1.1">Enel<span class="ltx_text ltx_font_upright" id="A2.T6.28.6.9.1.1.1">-7B</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.9.2" style="padding-top:1pt;padding-bottom:1pt;">50.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.9.3" style="padding-top:1pt;padding-bottom:1pt;">48.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.9.4" style="padding-top:1pt;padding-bottom:1pt;">49.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.9.5" style="padding-top:1pt;padding-bottom:1pt;">3.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.9.6" style="padding-top:1pt;padding-bottom:1pt;">7.20</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T6.28.6.9.7" style="padding-top:1pt;padding-bottom:1pt;">12.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.9.8" style="padding-top:1pt;padding-bottom:1pt;">55.00</td>
</tr>
<tr class="ltx_tr" id="A2.T6.28.6.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T6.28.6.10.1" style="padding-top:1pt;padding-bottom:1pt;">– Hybrid Semantic Loss</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.10.2" style="padding-top:1pt;padding-bottom:1pt;">47.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.10.3" style="padding-top:1pt;padding-bottom:1pt;">48.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.10.4" style="padding-top:1pt;padding-bottom:1pt;">48.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.10.5" style="padding-top:1pt;padding-bottom:1pt;">3.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.10.6" style="padding-top:1pt;padding-bottom:1pt;">7.41</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T6.28.6.10.7" style="padding-top:1pt;padding-bottom:1pt;">11.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.10.8" style="padding-top:1pt;padding-bottom:1pt;">50.61</td>
</tr>
<tr class="ltx_tr" id="A2.T6.24.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T6.24.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">Hybrid Semantic Loss<sub class="ltx_sub" id="A2.T6.24.2.2.2.1"><span class="ltx_text ltx_font_italic" id="A2.T6.24.2.2.2.1.1">patch</span></sub><sup class="ltx_sup" id="A2.T6.24.2.2.2.2"><span class="ltx_text ltx_font_italic" id="A2.T6.24.2.2.2.2.1">Φ</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.24.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">49.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.24.2.2.4" style="padding-top:1pt;padding-bottom:1pt;">48.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.24.2.2.5" style="padding-top:1pt;padding-bottom:1pt;">49.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.24.2.2.6" style="padding-top:1pt;padding-bottom:1pt;">4.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.24.2.2.7" style="padding-top:1pt;padding-bottom:1pt;">7.25</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T6.24.2.2.8" style="padding-top:1pt;padding-bottom:1pt;">12.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.24.2.2.9" style="padding-top:1pt;padding-bottom:1pt;">52.20</td>
</tr>
<tr class="ltx_tr" id="A2.T6.26.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T6.26.4.4.2" style="padding-top:1pt;padding-bottom:1pt;">Hybrid Semantic Loss<sub class="ltx_sub" id="A2.T6.26.4.4.2.1"><span class="ltx_text ltx_font_italic" id="A2.T6.26.4.4.2.1.1">patch</span></sub><sup class="ltx_sup" id="A2.T6.26.4.4.2.2"><span class="ltx_text ltx_font_italic" id="A2.T6.26.4.4.2.2.1">Ψ</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="A2.T6.26.4.4.3" style="padding-top:1pt;padding-bottom:1pt;">48.96</td>
<td class="ltx_td ltx_align_center" id="A2.T6.26.4.4.4" style="padding-top:1pt;padding-bottom:1pt;">48.38</td>
<td class="ltx_td ltx_align_center" id="A2.T6.26.4.4.5" style="padding-top:1pt;padding-bottom:1pt;">49.00</td>
<td class="ltx_td ltx_align_center" id="A2.T6.26.4.4.6" style="padding-top:1pt;padding-bottom:1pt;">3.66</td>
<td class="ltx_td ltx_align_center" id="A2.T6.26.4.4.7" style="padding-top:1pt;padding-bottom:1pt;">6.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T6.26.4.4.8" style="padding-top:1pt;padding-bottom:1pt;">11.98</td>
<td class="ltx_td ltx_align_center" id="A2.T6.26.4.4.9" style="padding-top:1pt;padding-bottom:1pt;">52.00</td>
</tr>
<tr class="ltx_tr" id="A2.T6.28.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T6.28.6.6.2" style="padding-top:1pt;padding-bottom:1pt;">Hybrid Semantic Loss<sub class="ltx_sub" id="A2.T6.28.6.6.2.1"><span class="ltx_text ltx_font_italic" id="A2.T6.28.6.6.2.1.1">feat</span></sub><sup class="ltx_sup" id="A2.T6.28.6.6.2.2"><span class="ltx_text ltx_font_italic" id="A2.T6.28.6.6.2.2.1">Ψ</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.6.3" style="padding-top:1pt;padding-bottom:1pt;">49.63</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.6.4" style="padding-top:1pt;padding-bottom:1pt;">48.00</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.6.5" style="padding-top:1pt;padding-bottom:1pt;">48.62</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.6.6" style="padding-top:1pt;padding-bottom:1pt;">3.78</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.6.7" style="padding-top:1pt;padding-bottom:1pt;">6.88</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T6.28.6.6.8" style="padding-top:1pt;padding-bottom:1pt;">12.33</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.6.9" style="padding-top:1pt;padding-bottom:1pt;">51.50</td>
</tr>
<tr class="ltx_tr" id="A2.T6.28.6.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T6.28.6.11.1" style="padding-top:1pt;padding-bottom:1pt;">– gate mechanism</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.11.2" style="padding-top:1pt;padding-bottom:1pt;">49.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.11.3" style="padding-top:1pt;padding-bottom:1pt;">48.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.11.4" style="padding-top:1pt;padding-bottom:1pt;">48.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.11.5" style="padding-top:1pt;padding-bottom:1pt;">3.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.11.6" style="padding-top:1pt;padding-bottom:1pt;">7.12</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T6.28.6.11.7" style="padding-top:1pt;padding-bottom:1pt;">12.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.11.8" style="padding-top:1pt;padding-bottom:1pt;">53.50</td>
</tr>
<tr class="ltx_tr" id="A2.T6.28.6.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T6.28.6.12.1" style="padding-top:1pt;padding-bottom:1pt;">l=2,H=2,O=0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.12.2" style="padding-top:1pt;padding-bottom:1pt;">48.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.12.3" style="padding-top:1pt;padding-bottom:1pt;">48.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.12.4" style="padding-top:1pt;padding-bottom:1pt;">48.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.12.5" style="padding-top:1pt;padding-bottom:1pt;">3.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.12.6" style="padding-top:1pt;padding-bottom:1pt;">6.99</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T6.28.6.12.7" style="padding-top:1pt;padding-bottom:1pt;">12.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.28.6.12.8" style="padding-top:1pt;padding-bottom:1pt;">51.50</td>
</tr>
<tr class="ltx_tr" id="A2.T6.28.6.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T6.28.6.13.1" style="padding-top:1pt;padding-bottom:1pt;">l=2,H=4,O=0</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.13.2" style="padding-top:1pt;padding-bottom:1pt;">49.02</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.13.3" style="padding-top:1pt;padding-bottom:1pt;">48.47</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.13.4" style="padding-top:1pt;padding-bottom:1pt;">48.61</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.13.5" style="padding-top:1pt;padding-bottom:1pt;">3.65</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.13.6" style="padding-top:1pt;padding-bottom:1pt;">7.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T6.28.6.13.7" style="padding-top:1pt;padding-bottom:1pt;">12.31</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.13.8" style="padding-top:1pt;padding-bottom:1pt;">52.00</td>
</tr>
<tr class="ltx_tr" id="A2.T6.28.6.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T6.28.6.14.1" style="padding-top:1pt;padding-bottom:1pt;">l=2,H=2,O=2</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.14.2" style="padding-top:1pt;padding-bottom:1pt;">48.96</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.14.3" style="padding-top:1pt;padding-bottom:1pt;">47.96</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.14.4" style="padding-top:1pt;padding-bottom:1pt;">48.89</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.14.5" style="padding-top:1pt;padding-bottom:1pt;">3.80</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.14.6" style="padding-top:1pt;padding-bottom:1pt;">7.05</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T6.28.6.14.7" style="padding-top:1pt;padding-bottom:1pt;">12.55</td>
<td class="ltx_td ltx_align_center" id="A2.T6.28.6.14.8" style="padding-top:1pt;padding-bottom:1pt;">52.00</td>
</tr>
<tr class="ltx_tr" id="A2.T6.28.6.15">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A2.T6.28.6.15.1" style="padding-top:1pt;padding-bottom:1pt;">l=2,H=4,O=2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.28.6.15.2" style="padding-top:1pt;padding-bottom:1pt;">49.58</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.28.6.15.3" style="padding-top:1pt;padding-bottom:1pt;">48.70</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.28.6.15.4" style="padding-top:1pt;padding-bottom:1pt;">48.84</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.28.6.15.5" style="padding-top:1pt;padding-bottom:1pt;">3.84</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.28.6.15.6" style="padding-top:1pt;padding-bottom:1pt;">7.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T6.28.6.15.7" style="padding-top:1pt;padding-bottom:1pt;">12.76</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.28.6.15.8" style="padding-top:1pt;padding-bottom:1pt;">53.00</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation experiments conducted on the ENEL model.  The experiments systematically removed or altered components of the model to assess their individual contributions to the overall performance.  Specifically, it investigates the impact of different mask ratios (30% and 60%) in the Hybrid Semantic Loss, the effect of using only the patch or feature reconstruction targets within the loss function, and the influence of varying the number of hierarchical geometry aggregation and propagation operations and the number of layers within the LLM between these operations. The performance metrics across different variants are evaluated using GPT-4 scores for classification and captioning tasks, along with sentence-BERT and SimCSE metrics.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation Experiments. We begin the ablation experiments by changing the single configuration of the module from Enel. ΨΨ\Psiroman_Ψ represents a mask ratio of 60%, while ΦΦ\Phiroman_Φ represents a mask ratio of 30%. For Hybrid Semantic Loss, the subscript p⁢a⁢t⁢c⁢h𝑝𝑎𝑡𝑐ℎpatchitalic_p italic_a italic_t italic_c italic_h and f⁢e⁢a⁢t𝑓𝑒𝑎𝑡featitalic_f italic_e italic_a italic_t represent the masked modeling target, while the reconstruction target is the corresponding f⁢e⁢a⁢t𝑓𝑒𝑎𝑡featitalic_f italic_e italic_a italic_t and p⁢a⁢t⁢c⁢h𝑝𝑎𝑡𝑐ℎpatchitalic_p italic_a italic_t italic_c italic_h. l𝑙litalic_l represents the number of aggregation and propagation operations. H𝐻Hitalic_H refers to the LLM layers between l𝑙litalic_l aggregation and l𝑙litalic_l propagation operations. O𝑂Oitalic_O refers to the LLM layer between two individual aggregation or propagation operations.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.09620/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09620/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09620/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09620/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09620/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09620/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09620/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09620/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09620/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09620/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09620/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09620/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09620/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09620/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09620/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}