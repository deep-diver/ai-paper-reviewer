---
title: "Fast Video Generation with Sliding Tile Attention"
summary: "Sliding Tile Attention (STA) boosts video generation speed by 2.43-3.53x without losing quality by exploiting inherent data redundancy in video diffusion models. "
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 University of California, San Diego",]
showSummary: true
date: 2025-02-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.04507 {{< /keyword >}}
{{< keyword icon="writer" >}} Peiyuan Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.04507" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.04507" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.04507/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

High-resolution video generation using diffusion transformers is currently very slow due to the high computational cost of 3D attention mechanisms. Existing methods to improve speed, such as sliding window attention, have proven ineffective due to inefficiencies in handling the irregular attention patterns this creates.  The significant processing time makes it difficult to use these models for practical applications.

This paper introduces a novel method called Sliding Tile Attention (STA) to address this challenge. STA cleverly restructures the computation to work efficiently with the hardware, resulting in a much faster approach.  The researchers demonstrate that STA can accelerate video generation significantly (up to 3.53 times faster) compared to previous state-of-the-art methods while maintaining high video quality.  This makes high-resolution video generation more feasible for broader applications.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Sliding Tile Attention (STA) significantly accelerates video generation in diffusion transformer models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} STA leverages the inherent locality of attention scores to reduce computational redundancy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} STA achieves impressive speedups (2.43-3.53x) without sacrificing video quality. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because **it significantly accelerates video generation**, a computationally expensive task.  It addresses a key limitation of diffusion transformers, paving the way for more efficient and practical applications in video editing, generation, and analysis. The proposed method,  **sliding tile attention (STA), can be applied to other high-dimensional data, potentially impacting research in various fields**.  This work opens new avenues for optimizing attention mechanisms and improving efficiency in large language models.

------
#### Visual Insights



![](https://arxiv.org/html/2502.04507/x1.png)

> 🔼 Figure 1 is a two-part figure demonstrating the efficiency of Sliding Tile Attention (STA) in video generation. Part (a) shows the computational breakdown of generating a 5-second, 720p video using the HunyuanVideo model. It highlights that attention operations consume the bulk (around 86%) of the total inference time, processing 115,000 tokens.  Part (b) compares the attention latency of STA against existing methods (FlashAttention-2 and FlashAttention-3). It shows that unlike other methods, STA translates its theoretical FLOP reduction into a proportional wall-clock speedup, which demonstrates its hardware efficiency and effectiveness.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) Generating a 5s 720P clip in Hunyuan involves processing 115K tokens, making attention the dominant cost. (b) Attention latency comparison: existing methods fail to translate FLOP reduction into wall-clock speedup; STA is hardware-efficient and achieves proportional speedup with sparsity.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.6.1">
<tr class="ltx_tr" id="S3.T1.6.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.1.1">Attention</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.6.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.2.1">Window Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.6.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.3.1">Dense Block</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.6.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.4.1">Mixed Block</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.6.1.2.1">Tiled NATTEN</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.1.2.2">(11,11,11)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.1.2.3">0.06%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.1.2.4">7.17%</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.1.3">
<td class="ltx_td ltx_align_left" id="S3.T1.6.1.3.1"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.6.1.3.1.1">STA</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.1.3.2">(12, 12, 12)</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.1.3.3">1.56%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.1.3.4">0.0%</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.6.1.4.1"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.6.1.4.1.1">STA</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.1.4.2">(20, 20, 20)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.1.4.3">7.23%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.1.4.4">0.0%</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the number of dense and mixed blocks generated by the Tiled NATTEN and STA attention mechanisms.  The comparison uses a tile size of (4, 4, 4) and a video size of (48, 48, 48). Dense blocks are computationally efficient because they don't require any masking operations, unlike mixed blocks. The results show that STA generates only dense blocks, making it more efficient than Tiled NATTEN on GPUs.  This difference in block types is a key factor in the performance improvements achieved by STA.
> <details>
> <summary>read the caption</summary>
> Table 1: Ratio of dense and mixed blocks for tiled NATTEN and STA  with tile size (4,4,4) and video size (48,48,48). STA generate only dense blocks, which is more computationally friendly than mixed blocks in GPU.
> </details>





### In-depth insights


#### 3D Attention Sparsity
3D attention mechanisms are computationally expensive, especially for high-resolution videos.  This necessitates exploring sparsity techniques to make video generation more efficient.  **Sparsity aims to reduce the computational burden by focusing attention on only the most relevant parts of the input video**, rather than processing all tokens equally.  This can be achieved by various methods, including sliding windows or tile-based approaches.  **The effectiveness of a sparsity method depends on preserving the crucial information while discarding redundant information.**  This balance is crucial for achieving a good speed-quality trade-off.  A naive implementation of sparsity can lead to significant overhead. Therefore, careful kernel optimization is critical for hardware efficiency.  **A well-designed sparse attention mechanism should exhibit a high memory access efficiency and computational throughput.**  Evaluating the impact on video generation quality is also necessary, to ensure the tradeoff between speed and fidelity is acceptable.

#### STA: Tile-Based Attention
The proposed Sliding Tile Attention (STA) mechanism offers a **novel approach** to address the computational limitations of 3D attention in video generation. Unlike traditional sliding window attention, STA operates on tiles of tokens, which are contiguous groups of tokens forming a spatial-temporal cube. This tile-based approach enhances hardware efficiency by **reducing the irregular memory access patterns** and mask overhead common in other sliding window methods.  By carefully aligning tile sizes with hardware block sizes, STA creates primarily dense blocks for computation, leading to significant speedups. The method also incorporates **head specialization** by optimizing tile sizes per attention head, further boosting efficiency and preserving the quality of the generated video.  **Hardware-aware design** is central to STA's success, highlighting its practical advantages for deploying video diffusion models efficiently.

#### Hardware Efficiency Gains
The research paper highlights significant **hardware efficiency gains** achieved through the proposed Sliding Tile Attention (STA) mechanism.  STA's superior performance stems from its novel tile-based approach, cleverly addressing the inefficiencies of traditional sliding window attention in high-dimensional video data. Unlike methods that struggle to translate FLOP reductions into actual speedups, **STA demonstrates a remarkable 10x acceleration over existing methods** while maintaining a high memory access efficiency (MFU). This impressive speedup directly translates to faster video generation, significantly reducing inference time.  The improvements are not merely theoretical; real-world testing on a state-of-the-art video diffusion model confirms substantial end-to-end latency reductions.  Furthermore, the design of STA shows an inherent compatibility with modern GPU architectures, maximizing parallelism and reducing unnecessary overhead. **This hardware-aware design is a key differentiator**, ensuring that computational gains are effectively realized in practice. The paper also provides detailed kernel-level optimizations, demonstrating how careful engineering can further boost efficiency, proving **STA's potential for widespread adoption in video generation tasks**.

#### Locality in Video DiTs
The concept of 'Locality in Video DiTs' centers on the observation that attention mechanisms in pretrained video diffusion models exhibit a strong spatial and temporal locality.  **Attention scores are heavily concentrated within localized 3D windows**, meaning that a token primarily attends to nearby tokens in space and time, rather than globally across the entire video. This crucial insight enables significant optimization opportunities.  **Exploiting this locality reduces computational redundancy** inherent in full 3D attention, a computationally expensive operation.  The paper investigates the degree and consistency of this locality across different attention heads and prompts, showing that while the exact pattern differs across heads, **locality remains surprisingly robust**, suggesting the validity of attention sparsification strategies.  Understanding and leveraging this inherent locality is key to developing efficient and scalable video generation models, leading to faster inference times without substantial loss of visual quality.

#### Finetuning and Speedup
The research paper explores the impact of fine-tuning on a novel attention mechanism called Sliding Tile Attention (STA) to accelerate video generation.  **Fine-tuning STA with a high sparsity configuration leads to substantial speed improvements**, demonstrating the efficiency of the method. The results reveal a trade-off between speed and quality. While training-free STA already provides significant speedup, **finetuning pushes the performance further**, albeit at a slight cost in visual fidelity. This suggests a promising direction for optimizing video diffusion models: using a highly efficient attention mechanism like STA with carefully balanced fine-tuning to achieve the desired trade-off between computational cost and quality.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.04507/x5.png)

> 🔼 This figure visualizes the locality of attention in a pretrained video diffusion model.  Each image shows a single query point (green dot) and its corresponding attention weights (magma color scale). The intensity of the color represents the attention score; brighter colors mean higher attention weights.  Instead of attending to all tokens, the query's attention is concentrated in a small spatial-temporal region (hotspot) near the query point.  This demonstrates the highly localized nature of attention, suggesting that only a small portion of the video needs to be processed for each query.
> <details>
> <summary>read the caption</summary>
> Figure 2: Visualization of attention locality. The green point means the query point and the magma-colored regions indicate areas of high attention values in response to the query. Instead of attending to the entire image, the query’s attention forms a concentrated local hotspot.
> </details>



![](https://arxiv.org/html/2502.04507/extracted/6182573/media/Fig6/f6-sta.png)

> 🔼 This figure visualizes the locality of attention in a pretrained video diffusion model. The left panel shows the fraction of total attention scores that fall within a 3D window of size (12, 24, 24) across different diffusion steps and 10 different prompts.  The high recall values observed across most attention heads demonstrate a strong tendency for attention to focus on localized spatial-temporal regions rather than attending to global context. The right panel complements this by showing that despite variations in recall across different heads, the standard deviation of recall scores across the 10 prompts remains low. This implies that the local attention pattern is robust and consistent across different inputs.
> <details>
> <summary>read the caption</summary>
> Figure 3: Left: Fraction of attention scores within a (12, 24, 24) local window across diffusion steps and 10 different prompts. Most heads show high recall, indicating a local attention pattern. Right: Despite the different recall across heads, the standard deviation across prompts remains low.
> </details>



![](https://arxiv.org/html/2502.04507/x6.png)

> 🔼 This figure compares the attention maps of three different attention mechanisms: NATTEN, Tiled NATTEN, and STA.  All are visualized for a 24x24 image with a 12x12 local window and 4x4 tiles.  NATTEN shows many inefficient 'mixed blocks' where both attended and un-attended values exist, requiring more computation. Tiled NATTEN improves on this slightly by increasing the number of efficient 'dense blocks,' but mixed blocks remain.  STA, however, entirely eliminates mixed blocks, resulting in a much more efficient computation pattern suitable for GPUs. Although the paper primarily focuses on the 3D application of STA for video generation, this figure uses a simplified 2D example for easier comprehension.
> <details>
> <summary>read the caption</summary>
> Figure 4: The attention map of NATTEN, Tiled NATTEN, and STA. We plot with an image size 24×\times×24 and a 12×\times×12 local window. The tile size is set to 4×\times×4. (a) NATTEN creates many mixed blocks that are very inefficient for Flash Attention computation. (b) Tiled NATTEN increases the number of dense blocks, but the mixed blocks persist. (c) STA completely eliminates the mixed block, making the computation extremely friendly for GPU. Note that we mainly show STA’s application in 3D scenarios for video generation in this paper, but for better illustration, we present the 2D scenario in this plot.
> </details>



![](https://arxiv.org/html/2502.04507/extracted/6182573/media/Fig5/human_eval.png)

> 🔼 This figure illustrates the SLIDING TILE ATTENTION (STA) mechanism in two dimensions.  It shows how tiles of query tokens attend to tiles of key tokens within a defined window.  Each query tile interacts with a set of key tiles to form a set of 4x4 dense blocks, avoiding the sparse and irregular attention patterns found in traditional sliding window approaches.  The use of tiles ensures efficient memory access and computation.  The 2D example in the figure serves as a simplified representation to clarify the concept.  The 3D version of STA functions similarly.
> <details>
> <summary>read the caption</summary>
> Figure 5: 2D Sliding Tile Attention with tile size (2, 2) and window size (6, 6). After attending to all the key tiles, each query tile will generate nine 4x4 dense blocks in the attention map. We showcase 2D STA for better illustration. 3D STA can be inferred similarly.
> </details>



![](https://arxiv.org/html/2502.04507/extracted/6182573/media/appendix/reorder.png)

> 🔼 Figure 6 presents a qualitative comparison of 5-second, 720p videos generated by four different methods: the original HunyuanVideo model, STA without fine-tuning (STA-tf-1.36x), STA with fine-tuning (STA-t-2.43x), and A-DiT. The image showcases that while fine-tuning STA (STA-t-2.43x) leads to subtle changes in the video's visual style, its overall quality remains high. In contrast, videos generated by A-DiT appear noticeably less sharp than those produced by HunyuanVideo and STA.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative example of 720P 5-second videos. While fine-tuning introduces minor shifts in the output distribution of STA-t-2.43x, the model still preserves high video generation quality. Videos generated by ΔΔ\Deltaroman_Δ-DiT are generally less sharp than those generated by the original HunyuanVideo and  STA.
> </details>



![](https://arxiv.org/html/2502.04507/extracted/6182573/media/Fig6/f6-swa.png)

> 🔼 This figure displays the results of a human evaluation comparing the video generation quality and speed of different models.  Specifically, it shows that the proposed SLIDING TILE ATTENTION (STA) method achieves a 1.36x speedup in end-to-end video generation compared to the original HunyuanVideo model while maintaining comparable video quality. Importantly, STA consistently outperforms the A-DiT model across varying inference budgets, demonstrating its superior efficiency and quality in video generation.
> <details>
> <summary>read the caption</summary>
> Figure 7: Human evaluation on 200 prompts from the MovieGen Bench (Polyak et al., 2024). STA achieves a 1.36× end-to-end speedup while maintaining performance comparable to the original HunyuanVideo. Additionally, STA consistently outperforms ΔΔ\Deltaroman_Δ-DiT across different inference budgets.
> </details>



![](https://arxiv.org/html/2502.04507/x7.png)

> 🔼 This figure compares the conventional zigzag flattening method used in processing image data with the SLIDING TILE ATTENTION (STA) method proposed in the paper.  The zigzag method flattens a 2D image into a 1D sequence in a non-contiguous manner, which can lead to inefficiencies in processing. In contrast, the STA method groups tokens into tiles (in this example, 3x3 tiles within a larger 9x9 image) before flattening. This tile-based approach maintains spatial locality and improves the efficiency of attention mechanisms by processing contiguous data.
> <details>
> <summary>read the caption</summary>
> Figure 8: Left: Conventional zigzag flattening strategy. Right: STA’ sequence flattening strategy. The plot is given assuming a (9, 9) image with (3, 3) tile size.
> </details>



![](https://arxiv.org/html/2502.04507/x8.png)

> 🔼 This figure visualizes how the sliding window attention mechanism works in two dimensions.  It shows how a query token's attention is focused on a localized window of key tokens. The window slides across the input, with each position showing the attention weights between the center query token and the surrounding key tokens within the window.
> <details>
> <summary>read the caption</summary>
> Figure 9: 2D Sliding Window Attention visualization.
> </details>



![](https://arxiv.org/html/2502.04507/x9.png)

> 🔼 This figure displays a qualitative comparison of video generation results from four different methods: the original HunyuanVideo model, a version using STA without fine-tuning (STA-tf-1.36x), a version using STA with fine-tuning (STA-t-2.43x), and a method called A-DiT.  Two example prompts are used to generate videos, and the resulting videos are shown for each method. The caption highlights that while fine-tuning STA may slightly alter the video distribution, the overall quality remains high. In contrast, videos generated by A-DiT appear less sharp compared to those generated by HunyuanVideo and STA.
> <details>
> <summary>read the caption</summary>
> Figure 10: Qualitative comparisons. While fine-tuning introduces minor shifts in the output distribution of STA-t-2.43x, the model still preserves high video generation quality. Videos generated by ΔΔ\Deltaroman_Δ-DiT are generally less sharp than those generated by the original HunyuanVideo and  STA.
> </details>



![](https://arxiv.org/html/2502.04507/x10.png)

> 🔼 Figure 11 presents a qualitative comparison of video generation results from four different models: the original HunyuanVideo model, STA with training-free mask search (STA-tf-1.36x), STA with finetuning (STA-t-2.43x), and A-DiT.  Two example prompts were used to generate videos. The figure showcases that while fine-tuning STA leads to minor changes in the video distribution (STA-t-2.43x), the overall video quality remains high.  In contrast, videos produced by A-DiT exhibit noticeably lower sharpness compared to those generated by HunyuanVideo and STA.
> <details>
> <summary>read the caption</summary>
> Figure 11: Qualitative comparisons. While fine-tuning introduces minor shifts in the output distribution of STA-t-2.43x, the model still preserves high video generation quality. Videos generated by ΔΔ\Deltaroman_Δ-DiT are generally less sharp than those generated by the original HunyuanVideo and  STA.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.12.10">
<tr class="ltx_tr" id="S3.T2.12.10.11">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.12.10.11.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.10.11.1.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.12.10.11.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.10.11.2.1">Implementation</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.12.10.11.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.10.11.3.1">Config</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.12.10.11.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.10.11.4.1">Sparsity</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.12.10.11.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.10.11.5.1">TFLOPS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.12.10.11.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.10.11.6.1">Latency(ms)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.12.10.11.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.10.11.7.1">MFU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.12.10.11.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.10.11.8.1">Kernel Efficiency</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.12.10.11.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.10.11.9.1">Speedup</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.3.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">FA 3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">ThunderKittens</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">0.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">164.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.1.7" style="padding-top:1pt;padding-bottom:1pt;">265.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.1.8" style="padding-top:1pt;padding-bottom:1pt;">62.49%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.1.9" style="padding-top:1pt;padding-bottom:1pt;">100.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="1.00\times" class="ltx_math_unparsed" display="inline" id="S3.T2.3.1.1.1.m1.1"><semantics id="S3.T2.3.1.1.1.m1.1a"><mrow id="S3.T2.3.1.1.1.m1.1b"><mn id="S3.T2.3.1.1.1.m1.1.1">1.00</mn><mo id="S3.T2.3.1.1.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S3.T2.3.1.1.1.m1.1c">1.00\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.1.1.1.m1.1d">1.00 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.2.2">
<td class="ltx_td ltx_align_left" id="S3.T2.4.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">FA 3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">CUDA</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.2.2.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.2.2.5" style="padding-top:1pt;padding-bottom:1pt;">0.00%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.2.2.6" style="padding-top:1pt;padding-bottom:1pt;">164.03</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.2.2.7" style="padding-top:1pt;padding-bottom:1pt;">256.59</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.2.2.8" style="padding-top:1pt;padding-bottom:1pt;">64.61%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.2.2.9" style="padding-top:1pt;padding-bottom:1pt;">103.39%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.2.2.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="1.03\times" class="ltx_math_unparsed" display="inline" id="S3.T2.4.2.2.1.m1.1"><semantics id="S3.T2.4.2.2.1.m1.1a"><mrow id="S3.T2.4.2.2.1.m1.1b"><mn id="S3.T2.4.2.2.1.m1.1.1">1.03</mn><mo id="S3.T2.4.2.2.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S3.T2.4.2.2.1.m1.1c">1.03\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.2.2.1.m1.1d">1.03 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.5.3.3.2" style="padding-top:1pt;padding-bottom:1pt;">CLEAR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.3.3.3" style="padding-top:1pt;padding-bottom:1pt;">FlexAttention</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.3.3.4" style="padding-top:1pt;padding-bottom:1pt;">r=16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.3.3.5" style="padding-top:1pt;padding-bottom:1pt;">90.46%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.3.3.6" style="padding-top:1pt;padding-bottom:1pt;">15.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.3.3.7" style="padding-top:1pt;padding-bottom:1pt;">307.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.3.3.8" style="padding-top:1pt;padding-bottom:1pt;">5.15%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.3.3.9" style="padding-top:1pt;padding-bottom:1pt;">8.24%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.3.3.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="0.86\times" class="ltx_math_unparsed" display="inline" id="S3.T2.5.3.3.1.m1.1"><semantics id="S3.T2.5.3.3.1.m1.1a"><mrow id="S3.T2.5.3.3.1.m1.1b"><mn id="S3.T2.5.3.3.1.m1.1.1">0.86</mn><mo id="S3.T2.5.3.3.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S3.T2.5.3.3.1.m1.1c">0.86\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.3.3.1.m1.1d">0.86 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.4">
<td class="ltx_td ltx_align_left" id="S3.T2.6.4.4.2" style="padding-top:1pt;padding-bottom:1pt;">NATTEN</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.4.3" style="padding-top:1pt;padding-bottom:1pt;">FlexAttention</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.4.4" style="padding-top:1pt;padding-bottom:1pt;">w=(19,25,25)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.4.5" style="padding-top:1pt;padding-bottom:1pt;">89.69%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.4.6" style="padding-top:1pt;padding-bottom:1pt;">16.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.4.7" style="padding-top:1pt;padding-bottom:1pt;">313.92</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.4.8" style="padding-top:1pt;padding-bottom:1pt;">5.44%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.4.9" style="padding-top:1pt;padding-bottom:1pt;">8.71%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.4.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="0.85\times" class="ltx_math_unparsed" display="inline" id="S3.T2.6.4.4.1.m1.1"><semantics id="S3.T2.6.4.4.1.m1.1a"><mrow id="S3.T2.6.4.4.1.m1.1b"><mn id="S3.T2.6.4.4.1.m1.1.1">0.85</mn><mo id="S3.T2.6.4.4.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S3.T2.6.4.4.1.m1.1c">0.85\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.4.4.1.m1.1d">0.85 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.5.5">
<td class="ltx_td ltx_align_left" id="S3.T2.7.5.5.2" style="padding-top:1pt;padding-bottom:1pt;">Tiled NATTEN</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.5.5.3" style="padding-top:1pt;padding-bottom:1pt;">CUDA</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.5.5.4" style="padding-top:1pt;padding-bottom:1pt;">w=(19,25,25)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.5.5.5" style="padding-top:1pt;padding-bottom:1pt;">89.69%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.5.5.6" style="padding-top:1pt;padding-bottom:1pt;">16.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.5.5.7" style="padding-top:1pt;padding-bottom:1pt;">458.36</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.5.5.8" style="padding-top:1pt;padding-bottom:1pt;">3.73%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.5.5.9" style="padding-top:1pt;padding-bottom:1pt;">5.97%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.5.5.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="0.58\times" class="ltx_math_unparsed" display="inline" id="S3.T2.7.5.5.1.m1.1"><semantics id="S3.T2.7.5.5.1.m1.1a"><mrow id="S3.T2.7.5.5.1.m1.1b"><mn id="S3.T2.7.5.5.1.m1.1.1">0.58</mn><mo id="S3.T2.7.5.5.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S3.T2.7.5.5.1.m1.1c">0.58\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.5.5.1.m1.1d">0.58 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.6.6">
<td class="ltx_td ltx_align_left" id="S3.T2.8.6.6.2" style="padding-top:1pt;padding-bottom:1pt;">Tiled NATTEN</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.6.6.3" style="padding-top:1pt;padding-bottom:1pt;">FlexAttention</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.6.6.4" style="padding-top:1pt;padding-bottom:1pt;">w=(19,25,25)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.6.6.5" style="padding-top:1pt;padding-bottom:1pt;">89.69%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.6.6.6" style="padding-top:1pt;padding-bottom:1pt;">16.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.6.6.7" style="padding-top:1pt;padding-bottom:1pt;">208.36</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.6.6.8" style="padding-top:1pt;padding-bottom:1pt;">8.20%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.6.6.9" style="padding-top:1pt;padding-bottom:1pt;">13.12%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.6.6.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="1.27\times" class="ltx_math_unparsed" display="inline" id="S3.T2.8.6.6.1.m1.1"><semantics id="S3.T2.8.6.6.1.m1.1a"><mrow id="S3.T2.8.6.6.1.m1.1b"><mn id="S3.T2.8.6.6.1.m1.1.1">1.27</mn><mo id="S3.T2.8.6.6.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S3.T2.8.6.6.1.m1.1c">1.27\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.6.6.1.m1.1d">1.27 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.7.7">
<td class="ltx_td ltx_align_left" id="S3.T2.9.7.7.2" style="padding-top:1pt;padding-bottom:1pt;">Swin</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.7.3" style="padding-top:1pt;padding-bottom:1pt;">FlexAttention</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.7.4" style="padding-top:1pt;padding-bottom:1pt;">w=(24,32,32)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.7.5" style="padding-top:1pt;padding-bottom:1pt;">87.42%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.7.6" style="padding-top:1pt;padding-bottom:1pt;">20.64</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.7.7" style="padding-top:1pt;padding-bottom:1pt;">47.90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.7.8" style="padding-top:1pt;padding-bottom:1pt;">43.55%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.7.9" style="padding-top:1pt;padding-bottom:1pt;">69.69%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.7.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="5.54\times" class="ltx_math_unparsed" display="inline" id="S3.T2.9.7.7.1.m1.1"><semantics id="S3.T2.9.7.7.1.m1.1a"><mrow id="S3.T2.9.7.7.1.m1.1b"><mn id="S3.T2.9.7.7.1.m1.1.1">5.54</mn><mo id="S3.T2.9.7.7.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S3.T2.9.7.7.1.m1.1c">5.54\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.7.7.1.m1.1d">5.54 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.10.8.8.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.10.8.8.2.1">STA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.8.8.3" style="padding-top:1pt;padding-bottom:1pt;">FlexAttention</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.8.8.4" style="padding-top:1pt;padding-bottom:1pt;">w=(18,24,24)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.8.8.5" style="padding-top:1pt;padding-bottom:1pt;">91.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.8.8.6" style="padding-top:1pt;padding-bottom:1pt;">14.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.8.8.7" style="padding-top:1pt;padding-bottom:1pt;">36.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.8.8.8" style="padding-top:1pt;padding-bottom:1pt;">41.03%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.8.8.9" style="padding-top:1pt;padding-bottom:1pt;">65.66%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.8.8.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="7.30\times" class="ltx_math_unparsed" display="inline" id="S3.T2.10.8.8.1.m1.1"><semantics id="S3.T2.10.8.8.1.m1.1a"><mrow id="S3.T2.10.8.8.1.m1.1b"><mn id="S3.T2.10.8.8.1.m1.1.1">7.30</mn><mo id="S3.T2.10.8.8.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S3.T2.10.8.8.1.m1.1c">7.30\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.10.8.8.1.m1.1d">7.30 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.11.9.9">
<td class="ltx_td ltx_align_left" id="S3.T2.11.9.9.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.11.9.9.2.1">STA</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.9.9.3" style="padding-top:1pt;padding-bottom:1pt;">ThunderKittens</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.9.9.4" style="padding-top:1pt;padding-bottom:1pt;">w=(30,40,40)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.9.9.5" style="padding-top:1pt;padding-bottom:1pt;">58.33%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.9.9.6" style="padding-top:1pt;padding-bottom:1pt;">68.35</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.9.9.7" style="padding-top:1pt;padding-bottom:1pt;">111.73</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.9.9.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.11.9.9.8.1">61.82%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.9.9.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.11.9.9.9.1">98.93%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.9.9.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="2.37\times" class="ltx_math_unparsed" display="inline" id="S3.T2.11.9.9.1.m1.1"><semantics id="S3.T2.11.9.9.1.m1.1a"><mrow id="S3.T2.11.9.9.1.m1.1b"><mn id="S3.T2.11.9.9.1.m1.1.1">2.37</mn><mo id="S3.T2.11.9.9.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S3.T2.11.9.9.1.m1.1c">2.37\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.11.9.9.1.m1.1d">2.37 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.12.10.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.12.10.10.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.12.10.10.2.1">STA</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.12.10.10.3" style="padding-top:1pt;padding-bottom:1pt;">ThunderKittens</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.12.10.10.4" style="padding-top:1pt;padding-bottom:1pt;">w=(18,24,24)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.12.10.10.5" style="padding-top:1pt;padding-bottom:1pt;">91.00%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.12.10.10.6" style="padding-top:1pt;padding-bottom:1pt;">14.76</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.12.10.10.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.10.10.7.1">25.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.12.10.10.8" style="padding-top:1pt;padding-bottom:1pt;">58.79%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.12.10.10.9" style="padding-top:1pt;padding-bottom:1pt;">94.09%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.12.10.10.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\textbf{10.45}\times" class="ltx_math_unparsed" display="inline" id="S3.T2.12.10.10.1.m1.1"><semantics id="S3.T2.12.10.10.1.m1.1a"><mrow id="S3.T2.12.10.10.1.m1.1b"><mtext class="ltx_mathvariant_bold" id="S3.T2.12.10.10.1.m1.1.1">10.45</mtext><mo id="S3.T2.12.10.10.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S3.T2.12.10.10.1.m1.1c">\textbf{10.45}\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.12.10.10.1.m1.1d">10.45 ×</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the forward pass speed of various sparse attention mechanisms, including FlashAttention-3 (FA3), CLEAR, NATTEN, Tiled NATTEN, Swin Transformer, and the proposed SLIDING TILE ATTENTION (STA). The comparison is performed under the same configuration used for HunyuanVideo inference: bf16 precision, 720p video resolution, 5-second video duration, 115,200 sequence length, 128 hidden dimensions per head, and 24 attention heads. The table shows the sparsity achieved by each method, the theoretical FLOPS (TFLOPS), latency in milliseconds, memory access efficiency (MFU), kernel efficiency, and relative speedup compared to FA3. The 'Config' column indicates the window size parameter for each sparse attention method, highlighting the impact of this parameter on performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Forward speed of sparse attention kernels in a setup aligned with HunyuanVideo’s inference configuration (bf16, 720P, 5s, 115.2K seq_len, dh⁢e⁢a⁢dsubscript𝑑ℎ𝑒𝑎𝑑d_{head}italic_d start_POSTSUBSCRIPT italic_h italic_e italic_a italic_d end_POSTSUBSCRIPT = 128, # heads = 24). Config controls the window size of each sparse attention.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.14.12">
<tr class="ltx_tr" id="S4.T3.5.3.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.5.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.3.3.4.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.1">SSIM</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.1.1.1.m1.1"><semantics id="S4.T3.3.1.1.1.m1.1a"><mo id="S4.T3.3.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.1.1.1.m1.1b"><ci id="S4.T3.3.1.1.1.m1.1.1.cmml" xref="S4.T3.3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.4.2.2.2.1">PSNR</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.2.2.2.m1.1"><semantics id="S4.T3.4.2.2.2.m1.1a"><mo id="S4.T3.4.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.2.2.2.m1.1b"><ci id="S4.T3.4.2.2.2.m1.1.1.cmml" xref="S4.T3.4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.3.3.3">
<span class="ltx_text ltx_font_bold" id="S4.T3.5.3.3.3.1">CD-FVD</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.5.3.3.3.m1.1"><semantics id="S4.T3.5.3.3.3.m1.1a"><mo id="S4.T3.5.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.5.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.3.3.3.m1.1b"><ci id="S4.T3.5.3.3.3.m1.1.1.cmml" xref="S4.T3.5.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.3.3.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.3.3.5.1">Latency</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.3.3.6"><span class="ltx_text ltx_font_bold" id="S4.T3.5.3.3.6.1">Speedup</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.14.12.13" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S4.T3.14.12.13.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.14.12.13.1.1" style="background-color:#F2F2F2;">steps = 50</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.5.5">
<td class="ltx_td ltx_align_left" id="S4.T3.6.4.4.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T3.6.4.4.1.m1.1"><semantics id="S4.T3.6.4.4.1.m1.1a"><mi id="S4.T3.6.4.4.1.m1.1.1" mathvariant="normal" xref="S4.T3.6.4.4.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.6.4.4.1.m1.1b"><ci id="S4.T3.6.4.4.1.m1.1.1.cmml" xref="S4.T3.6.4.4.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.4.4.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.4.4.1.m1.1d">roman_Δ</annotation></semantics></math>-DiT</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.5.3">72.86%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.5.4">18.09</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.5.5">122.74</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.5.6">693s</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.5.2"><math alttext="1.36\times" class="ltx_math_unparsed" display="inline" id="S4.T3.7.5.5.2.m1.1"><semantics id="S4.T3.7.5.5.2.m1.1a"><mrow id="S4.T3.7.5.5.2.m1.1b"><mn id="S4.T3.7.5.5.2.m1.1.1">1.36</mn><mo id="S4.T3.7.5.5.2.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S4.T3.7.5.5.2.m1.1c">1.36\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.5.5.2.m1.1d">1.36 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.6.6">
<td class="ltx_td ltx_align_left" id="S4.T3.8.6.6.2"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.8.6.6.2.1">STA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.6.6.3">76.21%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.6.6.4">19.94</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.6.6.5">97.03</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.6.6.6">695s</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.6.6.1"><math alttext="1.36\times" class="ltx_math_unparsed" display="inline" id="S4.T3.8.6.6.1.m1.1"><semantics id="S4.T3.8.6.6.1.m1.1a"><mrow id="S4.T3.8.6.6.1.m1.1b"><mn id="S4.T3.8.6.6.1.m1.1.1">1.36</mn><mo id="S4.T3.8.6.6.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S4.T3.8.6.6.1.m1.1c">1.36\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.6.6.1.m1.1d">1.36 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.14.12.14" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S4.T3.14.12.14.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.14.12.14.1.1" style="background-color:#F2F2F2;">steps = 25</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.8.8">
<td class="ltx_td ltx_align_left" id="S4.T3.9.7.7.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T3.9.7.7.1.m1.1"><semantics id="S4.T3.9.7.7.1.m1.1a"><mi id="S4.T3.9.7.7.1.m1.1.1" mathvariant="normal" xref="S4.T3.9.7.7.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.9.7.7.1.m1.1b"><ci id="S4.T3.9.7.7.1.m1.1.1.cmml" xref="S4.T3.9.7.7.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.7.7.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.7.7.1.m1.1d">roman_Δ</annotation></semantics></math>-DiT</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.8.8.3">77.91%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.8.8.4">19.86</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.8.8.5">196.25</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.8.8.6">352s</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.8.8.2"><math alttext="1.34\times" class="ltx_math_unparsed" display="inline" id="S4.T3.10.8.8.2.m1.1"><semantics id="S4.T3.10.8.8.2.m1.1a"><mrow id="S4.T3.10.8.8.2.m1.1b"><mn id="S4.T3.10.8.8.2.m1.1.1">1.34</mn><mo id="S4.T3.10.8.8.2.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S4.T3.10.8.8.2.m1.1c">1.34\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.8.8.2.m1.1d">1.34 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.9.9">
<td class="ltx_td ltx_align_left" id="S4.T3.11.9.9.2"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.11.9.9.2.1">STA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.9.9.3">82.47%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.9.9.4">22.53</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.9.9.5">95.86</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.9.9.6">348s</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.9.9.1"><math alttext="1.36\times" class="ltx_math_unparsed" display="inline" id="S4.T3.11.9.9.1.m1.1"><semantics id="S4.T3.11.9.9.1.m1.1a"><mrow id="S4.T3.11.9.9.1.m1.1b"><mn id="S4.T3.11.9.9.1.m1.1.1">1.36</mn><mo id="S4.T3.11.9.9.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S4.T3.11.9.9.1.m1.1c">1.36\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.9.9.1.m1.1d">1.36 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.14.12.15" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S4.T3.14.12.15.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.14.12.15.1.1" style="background-color:#F2F2F2;">steps = 10</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.11.11">
<td class="ltx_td ltx_align_left" id="S4.T3.12.10.10.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T3.12.10.10.1.m1.1"><semantics id="S4.T3.12.10.10.1.m1.1a"><mi id="S4.T3.12.10.10.1.m1.1.1" mathvariant="normal" xref="S4.T3.12.10.10.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.12.10.10.1.m1.1b"><ci id="S4.T3.12.10.10.1.m1.1.1.cmml" xref="S4.T3.12.10.10.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.10.10.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.10.10.1.m1.1d">roman_Δ</annotation></semantics></math>-DiT</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.11.11.3">83.19%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.11.11.4">21.20</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.11.11.5">201.24</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.11.11.6">144s</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.11.11.2"><math alttext="1.32\times" class="ltx_math_unparsed" display="inline" id="S4.T3.13.11.11.2.m1.1"><semantics id="S4.T3.13.11.11.2.m1.1a"><mrow id="S4.T3.13.11.11.2.m1.1b"><mn id="S4.T3.13.11.11.2.m1.1.1">1.32</mn><mo id="S4.T3.13.11.11.2.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S4.T3.13.11.11.2.m1.1c">1.32\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.11.11.2.m1.1d">1.32 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.14.12.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.14.12.12.2"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.14.12.12.2.1">STA</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.14.12.12.3">87.15%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.14.12.12.4">24.04</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.14.12.12.5">80.41</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.14.12.12.6">139s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.14.12.12.1"><math alttext="1.36\times" class="ltx_math_unparsed" display="inline" id="S4.T3.14.12.12.1.m1.1"><semantics id="S4.T3.14.12.12.1.m1.1a"><mrow id="S4.T3.14.12.12.1.m1.1b"><mn id="S4.T3.14.12.12.1.m1.1.1">1.36</mn><mo id="S4.T3.14.12.12.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S4.T3.14.12.12.1.m1.1c">1.36\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.14.12.12.1.m1.1d">1.36 ×</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of video generation quality and efficiency across different models with varying numbers of sampling steps.  The models compared are ΔΔ Δ-DiT and STA (Sliding Tile Attention), both using a training-free approach. The evaluation metrics include SSIM, PSNR, and CD-FVD, which are standard measures of video quality. Additionally, the table shows the inference latency and speedup achieved by each model relative to a baseline. The results demonstrate that STA consistently outperforms ΔΔ Δ-DiT in terms of quality, and this difference becomes more pronounced as the number of sampling steps decreases.  This highlights the robustness and efficiency of STA for video generation.
> <details>
> <summary>read the caption</summary>
> Table 3: Training-free performance with varying sampling steps. ΔΔ\Deltaroman_Δ-DiT shows consistently worse quality compared to STA, and that gap widens as the number of inference steps decrease.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.11.11">
<tr class="ltx_tr" id="S4.T4.11.11.12">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.11.11.12.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.11.11.12.1.1" style="font-size:70%;">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.11.11.12.2" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.11.11.12.2.1" style="font-size:70%;">Config</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.11.11.12.3" style="padding-top:-0.2pt;padding-bottom:-0.2pt;">
<span class="ltx_text" id="S4.T4.11.11.12.3.1"></span><span class="ltx_text" id="S4.T4.11.11.12.3.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T4.11.11.12.3.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.11.11.12.3.3.1">
<span class="ltx_tr" id="S4.T4.11.11.12.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.11.11.12.3.3.1.1.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.11.11.12.3.3.1.1.1.1">VBench</span></span></span>
<span class="ltx_tr" id="S4.T4.11.11.12.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.11.11.12.3.3.1.2.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.11.11.12.3.3.1.2.1.1">Quality</span></span></span>
</span></span><span class="ltx_text" id="S4.T4.11.11.12.3.4"></span><span class="ltx_text" id="S4.T4.11.11.12.3.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.11.11.12.4" style="padding-top:-0.2pt;padding-bottom:-0.2pt;">
<span class="ltx_text" id="S4.T4.11.11.12.4.1"></span><span class="ltx_text" id="S4.T4.11.11.12.4.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T4.11.11.12.4.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.11.11.12.4.3.1">
<span class="ltx_tr" id="S4.T4.11.11.12.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.11.11.12.4.3.1.1.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.11.11.12.4.3.1.1.1.1">VBench</span></span></span>
<span class="ltx_tr" id="S4.T4.11.11.12.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.11.11.12.4.3.1.2.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.11.11.12.4.3.1.2.1.1">Semantic</span></span></span>
</span></span><span class="ltx_text" id="S4.T4.11.11.12.4.4"></span><span class="ltx_text" id="S4.T4.11.11.12.4.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.11.11.12.5" style="padding-top:-0.2pt;padding-bottom:-0.2pt;">
<span class="ltx_text" id="S4.T4.11.11.12.5.1"></span><span class="ltx_text" id="S4.T4.11.11.12.5.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T4.11.11.12.5.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.11.11.12.5.3.1">
<span class="ltx_tr" id="S4.T4.11.11.12.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.11.11.12.5.3.1.1.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.11.11.12.5.3.1.1.1.1">VBench</span></span></span>
<span class="ltx_tr" id="S4.T4.11.11.12.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.11.11.12.5.3.1.2.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.11.11.12.5.3.1.2.1.1">Total</span></span></span>
</span></span><span class="ltx_text" id="S4.T4.11.11.12.5.4"></span><span class="ltx_text" id="S4.T4.11.11.12.5.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.11.11.12.6" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.11.11.12.6.1" style="font-size:70%;">Attn Sparsity</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.11.11.12.7" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.11.11.12.7.1" style="font-size:70%;">PFLOPS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.11.11.12.8" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.11.11.12.8.1" style="font-size:70%;">Latency</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.11.11.12.9" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.11.11.12.9.1" style="font-size:70%;">Speedup</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.1.1.2" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.1.1.1.2.1" style="font-size:70%;">FA2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.3" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.1.1.1.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.4" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.1.1.1.4.1" style="font-size:70%;">85.34%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.5" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.1.1.1.5.1" style="font-size:70%;">72.17%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.6" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.1.1.1.6.1" style="font-size:70%;">82.71%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.7" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.1.1.1.7.1" style="font-size:70%;">0.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.8" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.1.1.1.8.1" style="font-size:70%;">574.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.9" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.1.1.1.9.1" style="font-size:70%;">1496s</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;">
<span class="ltx_text" id="S4.T4.1.1.1.1.1" style="font-size:70%;">0.63</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" mathsize="70%" xref="S4.T4.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><times id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.2">
<td class="ltx_td ltx_align_left" id="S4.T4.2.2.2.2" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.2.2.2.2.1" style="font-size:70%;">FA3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.3" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.2.2.2.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.4" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.2.2.2.4.1" style="font-size:70%;">85.34%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.5" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.2.2.2.5.1" style="font-size:70%;">72.17%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.6" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.2.2.2.6.1" style="font-size:70%;">82.71%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.7" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.2.2.2.7.1" style="font-size:70%;">0.00%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.8" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.2.2.2.8.1" style="font-size:70%;">574.16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.9" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.2.2.2.9.1" style="font-size:70%;">945s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;">
<span class="ltx_text" id="S4.T4.2.2.2.1.1" style="font-size:70%;">1.00</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.1.m1.1a"><mo id="S4.T4.2.2.2.1.m1.1.1" mathsize="70%" xref="S4.T4.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.1.m1.1b"><times id="S4.T4.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.11.11.13" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="9" id="S4.T4.11.11.13.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T4.11.11.13.1.1" style="font-size:70%;background-color:#F2F2F2;">w.o training</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.3">
<td class="ltx_td ltx_align_left" id="S4.T4.3.3.3.2" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.3.3.3.2.1" style="font-size:70%;">CLEAR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.3" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.3.3.3.3.1" style="font-size:70%;">r=32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.4" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.3.3.3.4.1" style="font-size:70%;">84.41%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.5" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.3.3.3.5.1" style="font-size:70%;">74.20%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.6" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.3.3.3.6.1" style="font-size:70%;">82.37%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.7" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.3.3.3.7.1" style="font-size:70%;">56.23%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.8" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.3.3.3.8.1" style="font-size:70%;">280.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.9" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.3.3.3.9.1" style="font-size:70%;">2567s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;">
<span class="ltx_text" id="S4.T4.3.3.3.1.1" style="font-size:70%;">0.37</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.3.3.3.1.m1.1"><semantics id="S4.T4.3.3.3.1.m1.1a"><mo id="S4.T4.3.3.3.1.m1.1.1" mathsize="70%" xref="S4.T4.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.1.m1.1b"><times id="S4.T4.3.3.3.1.m1.1.1.cmml" xref="S4.T4.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.4">
<td class="ltx_td ltx_align_left" id="S4.T4.4.4.4.2" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.4.4.4.2.1" style="font-size:70%;">Tiled NATTEN</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.3" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.4.4.4.3.1" style="font-size:70%;">w=(30,41,41)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.4" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.4.4.4.4.1" style="font-size:70%;">84.61%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.5" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.4.4.4.5.1" style="font-size:70%;">75.00%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.6" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.4.4.4.6.1" style="font-size:70%;">82.69%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.7" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.4.4.4.7.1" style="font-size:70%;">58.33%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.8" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.4.4.4.8.1" style="font-size:70%;">269.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.9" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.4.4.4.9.1" style="font-size:70%;">1858s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;">
<span class="ltx_text" id="S4.T4.4.4.4.1.1" style="font-size:70%;">0.51</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.4.4.4.1.m1.1"><semantics id="S4.T4.4.4.4.1.m1.1a"><mo id="S4.T4.4.4.4.1.m1.1.1" mathsize="70%" xref="S4.T4.4.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.1.m1.1b"><times id="S4.T4.4.4.4.1.m1.1.1.cmml" xref="S4.T4.4.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.5">
<td class="ltx_td ltx_align_left" id="S4.T4.5.5.5.2" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.5.5.5.2.1" style="font-size:70%;">Swin</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.3" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.5.5.5.3.1" style="font-size:70%;">w=(48,64,64)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.4" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.5.5.5.4.1" style="font-size:70%;">80.91%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.5" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.5.5.5.5.1" style="font-size:70%;">71.35%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.6" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.5.5.5.6.1" style="font-size:70%;">79.00%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.7" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.5.5.5.7.1" style="font-size:70%;">55.81%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.8" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.5.5.5.8.1" style="font-size:70%;">283.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.9" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.5.5.5.9.1" style="font-size:70%;">762s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;">
<span class="ltx_text" id="S4.T4.5.5.5.1.1" style="font-size:70%;">1.24</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.5.5.5.1.m1.1"><semantics id="S4.T4.5.5.5.1.m1.1a"><mo id="S4.T4.5.5.5.1.m1.1.1" mathsize="70%" xref="S4.T4.5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.1.m1.1b"><times id="S4.T4.5.5.5.1.m1.1.1.cmml" xref="S4.T4.5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.6.6">
<td class="ltx_td ltx_align_left" id="S4.T4.6.6.6.2" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.6.6.6.2.1" style="font-size:70%;">Swin</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.3" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.6.6.6.3.1" style="font-size:70%;">w=(30,40,40)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.4" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.6.6.6.4.1" style="font-size:70%;">78.84%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.5" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.6.6.6.5.1" style="font-size:70%;">72.28%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.6" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.6.6.6.6.1" style="font-size:70%;">77.53%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.7" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.6.6.6.7.1" style="font-size:70%;">76.49%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.8" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.6.6.6.8.1" style="font-size:70%;">175.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.9" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.6.6.6.9.1" style="font-size:70%;">497s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;">
<span class="ltx_text" id="S4.T4.6.6.6.1.1" style="font-size:70%;">1.90</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.6.6.6.1.m1.1"><semantics id="S4.T4.6.6.6.1.m1.1a"><mo id="S4.T4.6.6.6.1.m1.1.1" mathsize="70%" xref="S4.T4.6.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.6.1.m1.1b"><times id="S4.T4.6.6.6.1.m1.1.1.cmml" xref="S4.T4.6.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.6.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.7.7">
<td class="ltx_td ltx_align_left" id="S4.T4.7.7.7.2" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T4.7.7.7.2.1" style="font-size:70%;">STA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.7.3" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.7.7.7.3.1" style="font-size:70%;">w=(30,40,40)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.7.4" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.7.7.7.4.1" style="font-size:70%;">84.63%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.7.5" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.7.7.7.5.1" style="font-size:70%;">73.83%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.7.6" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.7.7.7.6.1" style="font-size:70%;">82.46%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.7.7" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.7.7.7.7.1" style="font-size:70%;">58.33%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.7.8" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.7.7.7.8.1" style="font-size:70%;">269.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.7.9" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.7.7.7.9.1" style="font-size:70%;">527s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.7.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;">
<span class="ltx_text" id="S4.T4.7.7.7.1.1" style="font-size:70%;">1.79</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.7.7.7.1.m1.1"><semantics id="S4.T4.7.7.7.1.m1.1a"><mo id="S4.T4.7.7.7.1.m1.1.1" mathsize="70%" xref="S4.T4.7.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.7.1.m1.1b"><times id="S4.T4.7.7.7.1.m1.1.1.cmml" xref="S4.T4.7.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.7.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.8.8.8">
<td class="ltx_td ltx_align_left" id="S4.T4.8.8.8.2" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T4.8.8.8.2.1" style="font-size:70%;">STA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.8.8.3" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.8.8.8.3.1" style="font-size:70%;">w=(18,24,24)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.8.8.4" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.8.8.8.4.1" style="font-size:70%;">81.47%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.8.8.5" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.8.8.8.5.1" style="font-size:70%;">77.03%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.8.8.6" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.8.8.8.6.1" style="font-size:70%;">80.58%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.8.8.7" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.8.8.8.7.1" style="font-size:70%;">91.00%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.8.8.8" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.8.8.8.8.1" style="font-size:70%;">99.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.8.8.9" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.8.8.8.9.1" style="font-size:70%;">268s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.8.8.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;">
<span class="ltx_text" id="S4.T4.8.8.8.1.1" style="font-size:70%;">3.53</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.8.8.8.1.m1.1"><semantics id="S4.T4.8.8.8.1.m1.1a"><mo id="S4.T4.8.8.8.1.m1.1.1" mathsize="70%" xref="S4.T4.8.8.8.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.8.8.8.1.m1.1b"><times id="S4.T4.8.8.8.1.m1.1.1.cmml" xref="S4.T4.8.8.8.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.8.8.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.8.8.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.11.11.14" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="9" id="S4.T4.11.11.14.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T4.11.11.14.1.1" style="font-size:70%;background-color:#F2F2F2;">w. training</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.9">
<td class="ltx_td ltx_align_left" id="S4.T4.9.9.9.2" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.9.9.9.2.1" style="font-size:70%;">Swin</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.3" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.9.9.9.3.1" style="font-size:70%;">w=(30,40,40)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.4" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.9.9.9.4.1" style="font-size:70%;">77.50%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.5" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.9.9.9.5.1" style="font-size:70%;">67.39%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.6" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.9.9.9.6.1" style="font-size:70%;">75.48%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.7" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.9.9.9.7.1" style="font-size:70%;">55.81%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.8" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.9.9.9.8.1" style="font-size:70%;">283.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.9" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.9.9.9.9.1" style="font-size:70%;">497s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;">
<span class="ltx_text" id="S4.T4.9.9.9.1.1" style="font-size:70%;">1.90</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.9.9.9.1.m1.1"><semantics id="S4.T4.9.9.9.1.m1.1a"><mo id="S4.T4.9.9.9.1.m1.1.1" mathsize="70%" xref="S4.T4.9.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.9.9.9.1.m1.1b"><times id="S4.T4.9.9.9.1.m1.1.1.cmml" xref="S4.T4.9.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.9.9.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.10.10.10">
<td class="ltx_td ltx_align_left" id="S4.T4.10.10.10.2" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T4.10.10.10.2.1" style="font-size:70%;">STA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.10.10.10.3" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.10.10.10.3.1" style="font-size:70%;">w=(30,24,40)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.10.10.10.4" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.10.10.10.4.1" style="font-size:70%;">85.37%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.10.10.10.5" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.10.10.10.5.1" style="font-size:70%;">73.52%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.10.10.10.6" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.10.10.10.6.1" style="font-size:70%;">83.00%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.10.10.10.7" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.10.10.10.7.1" style="font-size:70%;">75.00%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.10.10.10.8" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.10.10.10.8.1" style="font-size:70%;">182.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.10.10.10.9" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.10.10.10.9.1" style="font-size:70%;">388s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.10.10.10.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;">
<span class="ltx_text" id="S4.T4.10.10.10.1.1" style="font-size:70%;">2.44</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.10.10.10.1.m1.1"><semantics id="S4.T4.10.10.10.1.m1.1a"><mo id="S4.T4.10.10.10.1.m1.1.1" mathsize="70%" xref="S4.T4.10.10.10.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.10.10.10.1.m1.1b"><times id="S4.T4.10.10.10.1.m1.1.1.cmml" xref="S4.T4.10.10.10.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.10.10.10.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.10.10.10.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.11.11.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.11.11.11.2" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T4.11.11.11.2.1" style="font-size:70%;">STA</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.11.11.11.3" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.11.11.11.3.1" style="font-size:70%;">w=(18,24,24)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.11.11.11.4" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.11.11.11.4.1" style="font-size:70%;">84.76%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.11.11.11.5" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.11.11.11.5.1" style="font-size:70%;">74.05%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.11.11.11.6" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.11.11.11.6.1" style="font-size:70%;">82.62%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.11.11.11.7" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.11.11.11.7.1" style="font-size:70%;">91.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.11.11.11.8" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.11.11.11.8.1" style="font-size:70%;">99.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.11.11.11.9" style="padding-top:-0.2pt;padding-bottom:-0.2pt;"><span class="ltx_text" id="S4.T4.11.11.11.9.1" style="font-size:70%;">268s</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.11.11.11.1" style="padding-top:-0.2pt;padding-bottom:-0.2pt;">
<span class="ltx_text" id="S4.T4.11.11.11.1.1" style="font-size:70%;">3.53</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.11.11.11.1.m1.1"><semantics id="S4.T4.11.11.11.1.m1.1a"><mo id="S4.T4.11.11.11.1.m1.1.1" mathsize="70%" xref="S4.T4.11.11.11.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.11.11.11.1.m1.1b"><times id="S4.T4.11.11.11.1.m1.1.1.cmml" xref="S4.T4.11.11.11.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.11.11.11.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.11.11.11.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different sparse attention mechanisms on the video generation quality and efficiency using VBench.  It shows that SLIDING TILE ATTENTION (STA) achieves both high-quality video generation and significant speedup compared to other methods.  The other methods, CLEAR and Tiled NATTEN, suffer from efficiency issues (they are slower than expected despite reducing computation), while Swin Transformer suffers from a degradation in video quality.  The results highlight STA's superior performance.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance on VBench across different sparse attention patterns. STA achieves both high-quality video generation and significant speedup, while CLEAR and Tiled NATTEN suffer from efficiency issues and Swin suffers from quality degradation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T5.8.8">
<tr class="ltx_tr" id="A4.T5.8.8.9">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T5.8.8.9.1"><span class="ltx_text ltx_font_bold" id="A4.T5.8.8.9.1.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T5.8.8.9.2"><span class="ltx_text ltx_font_bold" id="A4.T5.8.8.9.2.1">SSIM</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T5.8.8.9.3"><span class="ltx_text ltx_font_bold" id="A4.T5.8.8.9.3.1">PSNR</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T5.8.8.9.4"><span class="ltx_text ltx_font_bold" id="A4.T5.8.8.9.4.1">Sparsity</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T5.8.8.9.5"><span class="ltx_text ltx_font_bold" id="A4.T5.8.8.9.5.1">Latency</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T5.8.8.9.6"><span class="ltx_text ltx_font_bold" id="A4.T5.8.8.9.6.1">Speedup</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.1.1" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="A4.T5.1.1.1.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A4.T5.1.1.1.1.1" style="background-color:#F2F2F2;">1K <math alttext="\rightarrow" class="ltx_Math" display="inline" id="A4.T5.1.1.1.1.1.m1.1" style="background-color:#F2F2F2;"><semantics id="A4.T5.1.1.1.1.1.m1.1a"><mo id="A4.T5.1.1.1.1.1.m1.1.1" mathbackground="#F2F2F2" stretchy="false" xref="A4.T5.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A4.T5.1.1.1.1.1.m1.1b"><ci id="A4.T5.1.1.1.1.1.m1.1.1.cmml" xref="A4.T5.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T5.1.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T5.1.1.1.1.1.m1.1d">→</annotation></semantics></math>2K</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.2.2">
<td class="ltx_td ltx_align_left" id="A4.T5.2.2.2.2">CLEAR r=16</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.2.3">0.9291</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.2.4">28.1142</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.2.5">96.12%</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.2.6">13s</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.2.1"><math alttext="1.54\times" class="ltx_math_unparsed" display="inline" id="A4.T5.2.2.2.1.m1.1"><semantics id="A4.T5.2.2.2.1.m1.1a"><mrow id="A4.T5.2.2.2.1.m1.1b"><mn id="A4.T5.2.2.2.1.m1.1.1">1.54</mn><mo id="A4.T5.2.2.2.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="A4.T5.2.2.2.1.m1.1c">1.54\times</annotation><annotation encoding="application/x-llamapun" id="A4.T5.2.2.2.1.m1.1d">1.54 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T5.3.3.3">
<td class="ltx_td ltx_align_left" id="A4.T5.3.3.3.2">CLEAR r=32</td>
<td class="ltx_td ltx_align_center" id="A4.T5.3.3.3.3">0.9443</td>
<td class="ltx_td ltx_align_center" id="A4.T5.3.3.3.4">29.6722</td>
<td class="ltx_td ltx_align_center" id="A4.T5.3.3.3.5">85.94%</td>
<td class="ltx_td ltx_align_center" id="A4.T5.3.3.3.6">15s</td>
<td class="ltx_td ltx_align_center" id="A4.T5.3.3.3.1"><math alttext="1.33\times" class="ltx_math_unparsed" display="inline" id="A4.T5.3.3.3.1.m1.1"><semantics id="A4.T5.3.3.3.1.m1.1a"><mrow id="A4.T5.3.3.3.1.m1.1b"><mn id="A4.T5.3.3.3.1.m1.1.1">1.33</mn><mo id="A4.T5.3.3.3.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="A4.T5.3.3.3.1.m1.1c">1.33\times</annotation><annotation encoding="application/x-llamapun" id="A4.T5.3.3.3.1.m1.1d">1.33 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T5.4.4.4">
<td class="ltx_td ltx_align_left" id="A4.T5.4.4.4.2">
<span class="ltx_text ltx_font_smallcaps" id="A4.T5.4.4.4.2.1">STA</span> w=(48,72)</td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.4.4.3">0.9357</td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.4.4.4">29.1086</td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.4.4.5">81.25%</td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.4.4.6">14s</td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.4.4.1"><math alttext="1.43\times" class="ltx_math_unparsed" display="inline" id="A4.T5.4.4.4.1.m1.1"><semantics id="A4.T5.4.4.4.1.m1.1a"><mrow id="A4.T5.4.4.4.1.m1.1b"><mn id="A4.T5.4.4.4.1.m1.1.1">1.43</mn><mo id="A4.T5.4.4.4.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="A4.T5.4.4.4.1.m1.1c">1.43\times</annotation><annotation encoding="application/x-llamapun" id="A4.T5.4.4.4.1.m1.1d">1.43 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T5.5.5.5" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="A4.T5.5.5.5.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A4.T5.5.5.5.1.1" style="background-color:#F2F2F2;">2K<math alttext="\rightarrow" class="ltx_Math" display="inline" id="A4.T5.5.5.5.1.1.m1.1" style="background-color:#F2F2F2;"><semantics id="A4.T5.5.5.5.1.1.m1.1a"><mo id="A4.T5.5.5.5.1.1.m1.1.1" mathbackground="#F2F2F2" stretchy="false" xref="A4.T5.5.5.5.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A4.T5.5.5.5.1.1.m1.1b"><ci id="A4.T5.5.5.5.1.1.m1.1.1.cmml" xref="A4.T5.5.5.5.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T5.5.5.5.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T5.5.5.5.1.1.m1.1d">→</annotation></semantics></math>4K</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.6.6.6">
<td class="ltx_td ltx_align_left" id="A4.T5.6.6.6.2">CLEAR r=16</td>
<td class="ltx_td ltx_align_center" id="A4.T5.6.6.6.3">0.9394</td>
<td class="ltx_td ltx_align_center" id="A4.T5.6.6.6.4">29.0463</td>
<td class="ltx_td ltx_align_center" id="A4.T5.6.6.6.5">98.98%</td>
<td class="ltx_td ltx_align_center" id="A4.T5.6.6.6.6">67s</td>
<td class="ltx_td ltx_align_center" id="A4.T5.6.6.6.1"><math alttext="2.90\times" class="ltx_math_unparsed" display="inline" id="A4.T5.6.6.6.1.m1.1"><semantics id="A4.T5.6.6.6.1.m1.1a"><mrow id="A4.T5.6.6.6.1.m1.1b"><mn id="A4.T5.6.6.6.1.m1.1.1">2.90</mn><mo id="A4.T5.6.6.6.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="A4.T5.6.6.6.1.m1.1c">2.90\times</annotation><annotation encoding="application/x-llamapun" id="A4.T5.6.6.6.1.m1.1d">2.90 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T5.7.7.7">
<td class="ltx_td ltx_align_left" id="A4.T5.7.7.7.2">CLEAR r=32</td>
<td class="ltx_td ltx_align_center" id="A4.T5.7.7.7.3">0.9455</td>
<td class="ltx_td ltx_align_center" id="A4.T5.7.7.7.4">30.0742</td>
<td class="ltx_td ltx_align_center" id="A4.T5.7.7.7.5">96.08%</td>
<td class="ltx_td ltx_align_center" id="A4.T5.7.7.7.6">92s</td>
<td class="ltx_td ltx_align_center" id="A4.T5.7.7.7.1"><math alttext="2.11\times" class="ltx_math_unparsed" display="inline" id="A4.T5.7.7.7.1.m1.1"><semantics id="A4.T5.7.7.7.1.m1.1a"><mrow id="A4.T5.7.7.7.1.m1.1b"><mn id="A4.T5.7.7.7.1.m1.1.1">2.11</mn><mo id="A4.T5.7.7.7.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="A4.T5.7.7.7.1.m1.1c">2.11\times</annotation><annotation encoding="application/x-llamapun" id="A4.T5.7.7.7.1.m1.1d">2.11 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T5.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T5.8.8.8.2">
<span class="ltx_text ltx_font_smallcaps" id="A4.T5.8.8.8.2.1">STA</span> w=(48,72)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.8.8.8.3">0.9470</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.8.8.8.4">30.1939</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.8.8.8.5">95.31%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.8.8.8.6">57s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.8.8.8.1"><math alttext="3.40\times" class="ltx_math_unparsed" display="inline" id="A4.T5.8.8.8.1.m1.1"><semantics id="A4.T5.8.8.8.1.m1.1a"><mrow id="A4.T5.8.8.8.1.m1.1b"><mn id="A4.T5.8.8.8.1.m1.1.1">3.40</mn><mo id="A4.T5.8.8.8.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="A4.T5.8.8.8.1.m1.1c">3.40\times</annotation><annotation encoding="application/x-llamapun" id="A4.T5.8.8.8.1.m1.1d">3.40 ×</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of image super-resolution experiments conducted using the FLUX model.  The experiments involved upscaling images from 1000 randomly selected captions from the COCO-2014 validation dataset. The table shows the performance of different methods (CLEAR with different radius values and STA with a specific window size) in terms of SSIM, PSNR, sparsity, latency, and speedup compared to a baseline.  The results highlight the trade-off between speed and quality.
> <details>
> <summary>read the caption</summary>
> Table 5: Image superresolution results with FLUX (Black-Forest, 2023) on 1000 captions randomly sampled from COCO-2014 (Lin et al., 2015) validation dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T6.4.1">
<tr class="ltx_tr" id="A5.T6.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T6.4.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.4.1.1.1.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T6.4.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.4.1.1.2.1">Implementation</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T6.4.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.4.1.1.3.1">Config</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T6.4.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.4.1.1.4.1">Sparsity</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T6.4.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.4.1.1.5.1">TFLOPS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T6.4.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.4.1.1.6.1">Latency(ms)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T6.4.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.4.1.1.7.1">MFU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T6.4.1.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.4.1.1.8.1">Kernel Efficiency</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T6.4.1.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.4.1.1.9.1">Speedup</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.4.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T6.4.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">FA 3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">ThunderKittens</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">0.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">164.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">265.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.2.7" style="padding-top:1pt;padding-bottom:1pt;">62.49%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.2.8" style="padding-top:1pt;padding-bottom:1pt;">100.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.2.9" style="padding-top:1pt;padding-bottom:1pt;">1.00×</td>
</tr>
<tr class="ltx_tr" id="A5.T6.4.1.3">
<td class="ltx_td ltx_align_left" id="A5.T6.4.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">FA 3</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">CUDA</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">0.00%</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">164.03</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">256.59</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">64.61%</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.3.8" style="padding-top:1pt;padding-bottom:1pt;">103.39%</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.3.9" style="padding-top:1pt;padding-bottom:1pt;">1.03×</td>
</tr>
<tr class="ltx_tr" id="A5.T6.4.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T6.4.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">CLEAR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">FlexAttention</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">r=32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">56.23%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">71.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">675.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.4.7" style="padding-top:1pt;padding-bottom:1pt;">10.75%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.4.8" style="padding-top:1pt;padding-bottom:1pt;">17.20%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.4.9" style="padding-top:1pt;padding-bottom:1pt;">0.39×</td>
</tr>
<tr class="ltx_tr" id="A5.T6.4.1.5">
<td class="ltx_td ltx_align_left" id="A5.T6.4.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">NATTEN</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">FlexAttention</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">w=(30,41,41)</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">56.22%</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.5.5" style="padding-top:1pt;padding-bottom:1pt;">71.81</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.5.6" style="padding-top:1pt;padding-bottom:1pt;">804.62</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.5.7" style="padding-top:1pt;padding-bottom:1pt;">9.02%</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.5.8" style="padding-top:1pt;padding-bottom:1pt;">14.43%</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.5.9" style="padding-top:1pt;padding-bottom:1pt;">0.33×</td>
</tr>
<tr class="ltx_tr" id="A5.T6.4.1.6">
<td class="ltx_td ltx_align_left" id="A5.T6.4.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">Tiled NATTEN</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">CUDA</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">w=(29,41,41)</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">57.68%</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.6.5" style="padding-top:1pt;padding-bottom:1pt;">69.41</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.6.6" style="padding-top:1pt;padding-bottom:1pt;">173.57</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.6.7" style="padding-top:1pt;padding-bottom:1pt;">4.04%</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.6.8" style="padding-top:1pt;padding-bottom:1pt;">6.47%</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.6.9" style="padding-top:1pt;padding-bottom:1pt;">0.15x</td>
</tr>
<tr class="ltx_tr" id="A5.T6.4.1.7">
<td class="ltx_td ltx_align_left" id="A5.T6.4.1.7.1" style="padding-top:1pt;padding-bottom:1pt;">Tiled NATTEN</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.7.2" style="padding-top:1pt;padding-bottom:1pt;">FlexAttention</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.7.3" style="padding-top:1pt;padding-bottom:1pt;">w=(30,41,41)</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.7.4" style="padding-top:1pt;padding-bottom:1pt;">56.22%</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.7.5" style="padding-top:1pt;padding-bottom:1pt;">71.81</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.7.6" style="padding-top:1pt;padding-bottom:1pt;">409.89</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.7.7" style="padding-top:1pt;padding-bottom:1pt;">17.70%</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.7.8" style="padding-top:1pt;padding-bottom:1pt;">28.33%</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.7.9" style="padding-top:1pt;padding-bottom:1pt;">0.65×</td>
</tr>
<tr class="ltx_tr" id="A5.T6.4.1.8">
<td class="ltx_td ltx_align_left" id="A5.T6.4.1.8.1" style="padding-top:1pt;padding-bottom:1pt;">Swin</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.8.2" style="padding-top:1pt;padding-bottom:1pt;">FlexAttention</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.8.3" style="padding-top:1pt;padding-bottom:1pt;">w=(48,64,64)</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.8.4" style="padding-top:1pt;padding-bottom:1pt;">55.81%</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.8.5" style="padding-top:1pt;padding-bottom:1pt;">72.49</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.8.6" style="padding-top:1pt;padding-bottom:1pt;">127.51</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.8.7" style="padding-top:1pt;padding-bottom:1pt;">57.46%</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.8.8" style="padding-top:1pt;padding-bottom:1pt;">91.95%</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.1.8.9" style="padding-top:1pt;padding-bottom:1pt;">2.08×</td>
</tr>
<tr class="ltx_tr" id="A5.T6.4.1.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T6.4.1.9.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_smallcaps" id="A5.T6.4.1.9.1.1">STA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.9.2" style="padding-top:1pt;padding-bottom:1pt;">FlexAttention</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.9.3" style="padding-top:1pt;padding-bottom:1pt;">w=(30,40,40)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.9.4" style="padding-top:1pt;padding-bottom:1pt;">58.33%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.9.5" style="padding-top:1pt;padding-bottom:1pt;">68.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.9.6" style="padding-top:1pt;padding-bottom:1pt;">174.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.9.7" style="padding-top:1pt;padding-bottom:1pt;">39.66%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.9.8" style="padding-top:1pt;padding-bottom:1pt;">63.46%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.4.1.9.9" style="padding-top:1pt;padding-bottom:1pt;">1.52×</td>
</tr>
<tr class="ltx_tr" id="A5.T6.4.1.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T6.4.1.10.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_smallcaps" id="A5.T6.4.1.10.1.1">STA</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T6.4.1.10.2" style="padding-top:1pt;padding-bottom:1pt;">ThunderKittens</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T6.4.1.10.3" style="padding-top:1pt;padding-bottom:1pt;">w=(30,40,40)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T6.4.1.10.4" style="padding-top:1pt;padding-bottom:1pt;">58.33%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T6.4.1.10.5" style="padding-top:1pt;padding-bottom:1pt;">68.35</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T6.4.1.10.6" style="padding-top:1pt;padding-bottom:1pt;">111.73</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T6.4.1.10.7" style="padding-top:1pt;padding-bottom:1pt;">61.82%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T6.4.1.10.8" style="padding-top:1pt;padding-bottom:1pt;">98.93%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T6.4.1.10.9" style="padding-top:1pt;padding-bottom:1pt;">2.37×</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the speedup achieved by different sparse attention kernels on an H100 GPU.  It compares the performance of several methods, including FlashAttention-3 (FA3), CLEAR, NATTEN, Swin Transformer, and the proposed SLIDING TILE ATTENTION (STA), across various configurations and sparsity levels. The comparison focuses on kernel efficiency (measured as Memory-Flops Utilization, or MFU) and latency, providing a comprehensive evaluation of different sparse attention mechanisms.
> <details>
> <summary>read the caption</summary>
> Table 6: Speedup with sparse attention kernels on H100.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T7.4.1">
<tr class="ltx_tr" id="A5.T7.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A5.T7.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.1.2">
<span class="ltx_text" id="A5.T7.4.1.1.2.1"></span> <span class="ltx_text" id="A5.T7.4.1.1.2.2">
<span class="ltx_tabular ltx_align_middle" id="A5.T7.4.1.1.2.2.1">
<span class="ltx_tr" id="A5.T7.4.1.1.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.2.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.2.2.1.1.1.1">Appearance</span></span></span>
<span class="ltx_tr" id="A5.T7.4.1.1.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.2.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.2.2.1.2.1.1">Style</span></span></span>
</span></span><span class="ltx_text" id="A5.T7.4.1.1.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.1.3">
<span class="ltx_text" id="A5.T7.4.1.1.3.1"></span> <span class="ltx_text" id="A5.T7.4.1.1.3.2">
<span class="ltx_tabular ltx_align_middle" id="A5.T7.4.1.1.3.2.1">
<span class="ltx_tr" id="A5.T7.4.1.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.3.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.3.2.1.1.1.1">Subject</span></span></span>
<span class="ltx_tr" id="A5.T7.4.1.1.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.3.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.3.2.1.2.1.1">Consistency</span></span></span>
</span></span><span class="ltx_text" id="A5.T7.4.1.1.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.1.4">
<span class="ltx_text" id="A5.T7.4.1.1.4.1"></span> <span class="ltx_text" id="A5.T7.4.1.1.4.2">
<span class="ltx_tabular ltx_align_middle" id="A5.T7.4.1.1.4.2.1">
<span class="ltx_tr" id="A5.T7.4.1.1.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.4.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.4.2.1.1.1.1">Background</span></span></span>
<span class="ltx_tr" id="A5.T7.4.1.1.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.4.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.4.2.1.2.1.1">Consistency</span></span></span>
</span></span><span class="ltx_text" id="A5.T7.4.1.1.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.1.5">
<span class="ltx_text" id="A5.T7.4.1.1.5.1"></span> <span class="ltx_text" id="A5.T7.4.1.1.5.2">
<span class="ltx_tabular ltx_align_middle" id="A5.T7.4.1.1.5.2.1">
<span class="ltx_tr" id="A5.T7.4.1.1.5.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.5.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.5.2.1.1.1.1">Temporal</span></span></span>
<span class="ltx_tr" id="A5.T7.4.1.1.5.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.5.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.5.2.1.2.1.1">Flickering</span></span></span>
</span></span><span class="ltx_text" id="A5.T7.4.1.1.5.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.1.6">
<span class="ltx_text" id="A5.T7.4.1.1.6.1"></span> <span class="ltx_text" id="A5.T7.4.1.1.6.2">
<span class="ltx_tabular ltx_align_middle" id="A5.T7.4.1.1.6.2.1">
<span class="ltx_tr" id="A5.T7.4.1.1.6.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.6.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.6.2.1.1.1.1">Motion</span></span></span>
<span class="ltx_tr" id="A5.T7.4.1.1.6.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.6.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.6.2.1.2.1.1">Smoothness</span></span></span>
</span></span><span class="ltx_text" id="A5.T7.4.1.1.6.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.1.7">
<span class="ltx_text" id="A5.T7.4.1.1.7.1"></span> <span class="ltx_text" id="A5.T7.4.1.1.7.2">
<span class="ltx_tabular ltx_align_middle" id="A5.T7.4.1.1.7.2.1">
<span class="ltx_tr" id="A5.T7.4.1.1.7.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.7.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.7.2.1.1.1.1">Dynamic</span></span></span>
<span class="ltx_tr" id="A5.T7.4.1.1.7.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.7.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.7.2.1.2.1.1">Degree</span></span></span>
</span></span><span class="ltx_text" id="A5.T7.4.1.1.7.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.1.8">
<span class="ltx_text" id="A5.T7.4.1.1.8.1"></span> <span class="ltx_text" id="A5.T7.4.1.1.8.2">
<span class="ltx_tabular ltx_align_middle" id="A5.T7.4.1.1.8.2.1">
<span class="ltx_tr" id="A5.T7.4.1.1.8.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.8.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.8.2.1.1.1.1">Aesthetic</span></span></span>
<span class="ltx_tr" id="A5.T7.4.1.1.8.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.8.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.8.2.1.2.1.1">Quality</span></span></span>
</span></span><span class="ltx_text" id="A5.T7.4.1.1.8.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.1.9">
<span class="ltx_text" id="A5.T7.4.1.1.9.1"></span> <span class="ltx_text" id="A5.T7.4.1.1.9.2">
<span class="ltx_tabular ltx_align_middle" id="A5.T7.4.1.1.9.2.1">
<span class="ltx_tr" id="A5.T7.4.1.1.9.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.9.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.9.2.1.1.1.1">Imaging</span></span></span>
<span class="ltx_tr" id="A5.T7.4.1.1.9.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.9.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.9.2.1.2.1.1">Quality</span></span></span>
</span></span><span class="ltx_text" id="A5.T7.4.1.1.9.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.1.10">
<span class="ltx_text" id="A5.T7.4.1.1.10.1"></span> <span class="ltx_text" id="A5.T7.4.1.1.10.2">
<span class="ltx_tabular ltx_align_middle" id="A5.T7.4.1.1.10.2.1">
<span class="ltx_tr" id="A5.T7.4.1.1.10.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.10.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.10.2.1.1.1.1">Overall</span></span></span>
<span class="ltx_tr" id="A5.T7.4.1.1.10.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T7.4.1.1.10.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A5.T7.4.1.1.10.2.1.2.1.1">Consistency</span></span></span>
</span></span><span class="ltx_text" id="A5.T7.4.1.1.10.3"></span></td>
</tr>
<tr class="ltx_tr" id="A5.T7.4.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A5.T7.4.1.2.1">FA3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.2.2">18.43%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.2.3">94.22%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.2.4">96.74%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.2.5">99.21%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.2.6">99.15%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.2.7">75.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.2.8">64.63%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.2.9">67.97%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T7.4.1.2.10">25.96%</td>
</tr>
<tr class="ltx_tr" id="A5.T7.4.1.3" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="10" id="A5.T7.4.1.3.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T7.4.1.3.1.1" style="background-color:#F2F2F2;">w.o training</span></td>
</tr>
<tr class="ltx_tr" id="A5.T7.4.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A5.T7.4.1.4.1">CLEAR</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.4.2">18.73%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.4.3">93.63%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.4.4">96.51%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.4.5">98.99%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.4.6">99.01%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.4.7">68.06%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.4.8">63.75%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.4.9">68.35%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.4.10">26.23%</td>
</tr>
<tr class="ltx_tr" id="A5.T7.4.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A5.T7.4.1.5.1">Tiled NATTEN</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.5.2">18.79%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.5.3">94.59%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.5.4">96.61%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.5.5">98.75%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.5.6">98.85%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.5.7">70.83%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.5.8">63.79%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.5.9">68.16%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.5.10">26.53%</td>
</tr>
<tr class="ltx_tr" id="A5.T7.4.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A5.T7.4.1.6.1">Swin w=(48,64,64)</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.6.2">20.85%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.6.3">91.74%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.6.4">95.48%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.6.5">98.67%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.6.6">97.77%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.6.7">77.78%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.6.8">51.01%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.6.9">62.22%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.6.10">25.27%</td>
</tr>
<tr class="ltx_tr" id="A5.T7.4.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A5.T7.4.1.7.1">Swin w=(30,40,40)</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.7.2">20.62%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.7.3">90.33%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.7.4">93.09%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.7.5">98.78%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.7.6">96.53%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.7.7">75.00%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.7.8">48.10%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.7.9">61.89%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.7.10">25.62%</td>
</tr>
<tr class="ltx_tr" id="A5.T7.4.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A5.T7.4.1.8.1">
<span class="ltx_text ltx_font_smallcaps" id="A5.T7.4.1.8.1.1">STA</span> w=(30,40,40)</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.8.2">18.79%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.8.3">94.75%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.8.4">96.50%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.8.5">98.82%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.8.6">98.83%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.8.7">69.44%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.8.8">64.18%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.8.9">68.39%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.8.10">26.47%</td>
</tr>
<tr class="ltx_tr" id="A5.T7.4.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A5.T7.4.1.9.1">
<span class="ltx_text ltx_font_smallcaps" id="A5.T7.4.1.9.1.1">STA</span> w=(18,24,24)</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.9.2">21.25%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.9.3">89.66%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.9.4">91.64%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.9.5">98.46%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.9.6">97.27%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.9.7">83.33%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.9.8">59.75%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.9.9">64.23%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.9.10">26.61%</td>
</tr>
<tr class="ltx_tr" id="A5.T7.4.1.10" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="10" id="A5.T7.4.1.10.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T7.4.1.10.1.1" style="background-color:#F2F2F2;">w. training</span></td>
</tr>
<tr class="ltx_tr" id="A5.T7.4.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A5.T7.4.1.11.1">Swin w=(30,40,40)</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.11.2">20.07%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.11.3">89.78%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.11.4">94.93%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.11.5">98.86%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.11.6">96.64%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.11.7">70.83%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.11.8">44.91%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.11.9">55.99%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.11.10">26.00%</td>
</tr>
<tr class="ltx_tr" id="A5.T7.4.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A5.T7.4.1.12.1">
<span class="ltx_text ltx_font_smallcaps" id="A5.T7.4.1.12.1.1">STA</span> w=(30,24,40)</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.12.2">18.90%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.12.3">94.90%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.12.4">97.60%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.12.5">99.68%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.12.6">99.23%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.12.7">73.61%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.12.8">63.77%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.12.9">66.21%</td>
<td class="ltx_td ltx_align_center" id="A5.T7.4.1.12.10">26.58%</td>
</tr>
<tr class="ltx_tr" id="A5.T7.4.1.13">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A5.T7.4.1.13.1">
<span class="ltx_text ltx_font_smallcaps" id="A5.T7.4.1.13.1.1">STA</span> w=(18,24,24)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T7.4.1.13.2">18.90%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T7.4.1.13.3">94.64%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T7.4.1.13.4">96.76%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T7.4.1.13.5">99.22%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T7.4.1.13.6">99.11%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T7.4.1.13.7">69.44%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T7.4.1.13.8">64.52%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T7.4.1.13.9">66.67%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T7.4.1.13.10">26.09%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed quantitative comparison of different video generation models across various aspects of video quality.  The models are evaluated on several key dimensions, including the appearance style consistency, temporal motion consistency, dynamic consistency, aesthetic quality, overall video quality, and overall scene consistency.  These are compared between the models using various metrics, allowing for a nuanced understanding of the relative strengths and weaknesses of each model regarding different aspects of video generation.
> <details>
> <summary>read the caption</summary>
> Table 7: Model Performance Comparison - Part 1
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T8.4.1">
<tr class="ltx_tr" id="A5.T8.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A5.T8.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.4.1.1.2">
<span class="ltx_text" id="A5.T8.4.1.1.2.1"></span> <span class="ltx_text" id="A5.T8.4.1.1.2.2">
<span class="ltx_tabular ltx_align_middle" id="A5.T8.4.1.1.2.2.1">
<span class="ltx_tr" id="A5.T8.4.1.1.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T8.4.1.1.2.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.2.2.1.1.1.1">Object</span></span></span>
<span class="ltx_tr" id="A5.T8.4.1.1.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T8.4.1.1.2.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.2.2.1.2.1.1">Classification</span></span></span>
</span></span><span class="ltx_text" id="A5.T8.4.1.1.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.4.1.1.3">
<span class="ltx_text" id="A5.T8.4.1.1.3.1"></span> <span class="ltx_text" id="A5.T8.4.1.1.3.2">
<span class="ltx_tabular ltx_align_middle" id="A5.T8.4.1.1.3.2.1">
<span class="ltx_tr" id="A5.T8.4.1.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T8.4.1.1.3.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.3.2.1.1.1.1">Multiple</span></span></span>
<span class="ltx_tr" id="A5.T8.4.1.1.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T8.4.1.1.3.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.3.2.1.2.1.1">Objects</span></span></span>
</span></span><span class="ltx_text" id="A5.T8.4.1.1.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.4.1.1.4">
<span class="ltx_text" id="A5.T8.4.1.1.4.1"></span> <span class="ltx_text" id="A5.T8.4.1.1.4.2">
<span class="ltx_tabular ltx_align_middle" id="A5.T8.4.1.1.4.2.1">
<span class="ltx_tr" id="A5.T8.4.1.1.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T8.4.1.1.4.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.4.2.1.1.1.1">Human</span></span></span>
<span class="ltx_tr" id="A5.T8.4.1.1.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T8.4.1.1.4.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.4.2.1.2.1.1">Action</span></span></span>
</span></span><span class="ltx_text" id="A5.T8.4.1.1.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.4.1.1.5"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.5.1">Color</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.4.1.1.6">
<span class="ltx_text" id="A5.T8.4.1.1.6.1"></span> <span class="ltx_text" id="A5.T8.4.1.1.6.2">
<span class="ltx_tabular ltx_align_middle" id="A5.T8.4.1.1.6.2.1">
<span class="ltx_tr" id="A5.T8.4.1.1.6.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T8.4.1.1.6.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.6.2.1.1.1.1">Spatial</span></span></span>
<span class="ltx_tr" id="A5.T8.4.1.1.6.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T8.4.1.1.6.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.6.2.1.2.1.1">Relationship</span></span></span>
</span></span><span class="ltx_text" id="A5.T8.4.1.1.6.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T8.4.1.1.7"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.7.1">Scene</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.4.1.1.8">
<span class="ltx_text" id="A5.T8.4.1.1.8.1"></span> <span class="ltx_text" id="A5.T8.4.1.1.8.2">
<span class="ltx_tabular ltx_align_middle" id="A5.T8.4.1.1.8.2.1">
<span class="ltx_tr" id="A5.T8.4.1.1.8.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T8.4.1.1.8.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.8.2.1.1.1.1">Quality</span></span></span>
<span class="ltx_tr" id="A5.T8.4.1.1.8.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T8.4.1.1.8.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.8.2.1.2.1.1">Score</span></span></span>
</span></span><span class="ltx_text" id="A5.T8.4.1.1.8.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.4.1.1.9">
<span class="ltx_text" id="A5.T8.4.1.1.9.1"></span> <span class="ltx_text" id="A5.T8.4.1.1.9.2">
<span class="ltx_tabular ltx_align_middle" id="A5.T8.4.1.1.9.2.1">
<span class="ltx_tr" id="A5.T8.4.1.1.9.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T8.4.1.1.9.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.9.2.1.1.1.1">Semantic</span></span></span>
<span class="ltx_tr" id="A5.T8.4.1.1.9.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T8.4.1.1.9.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.9.2.1.2.1.1">Score</span></span></span>
</span></span><span class="ltx_text" id="A5.T8.4.1.1.9.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.4.1.1.10">
<span class="ltx_text" id="A5.T8.4.1.1.10.1"></span> <span class="ltx_text" id="A5.T8.4.1.1.10.2">
<span class="ltx_tabular ltx_align_middle" id="A5.T8.4.1.1.10.2.1">
<span class="ltx_tr" id="A5.T8.4.1.1.10.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T8.4.1.1.10.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.10.2.1.1.1.1">Final</span></span></span>
<span class="ltx_tr" id="A5.T8.4.1.1.10.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T8.4.1.1.10.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A5.T8.4.1.1.10.2.1.2.1.1">Score</span></span></span>
</span></span><span class="ltx_text" id="A5.T8.4.1.1.10.3"></span></td>
</tr>
<tr class="ltx_tr" id="A5.T8.4.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A5.T8.4.1.2.1">FA3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.4.1.2.2">85.76%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.4.1.2.3">70.12%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.4.1.2.4">90.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.4.1.2.5">88.66%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.4.1.2.6">71.28%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T8.4.1.2.7">35.25%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.4.1.2.8">85.34%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.4.1.2.9">72.17%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.4.1.2.10">82.71%</td>
</tr>
<tr class="ltx_tr" id="A5.T8.4.1.3" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="10" id="A5.T8.4.1.3.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T8.4.1.3.1.1" style="background-color:#F2F2F2;">w.o training</span></td>
</tr>
<tr class="ltx_tr" id="A5.T8.4.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A5.T8.4.1.4.1">CLEAR</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.4.2">88.13%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.4.3">77.97%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.4.4">88.00%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.4.5">91.10%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.4.6">77.49%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T8.4.1.4.7">32.85%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.4.8">84.41%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.4.9">74.20%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.4.10">82.37%</td>
</tr>
<tr class="ltx_tr" id="A5.T8.4.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A5.T8.4.1.5.1">Tiled NATTEN</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.5.2">83.54%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.5.3">72.18%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.5.4">94.00%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.5.5">92.28%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.5.6">81.21%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T8.4.1.5.7">37.94%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.5.8">84.61%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.5.9">75.00%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.5.10">82.69%</td>
</tr>
<tr class="ltx_tr" id="A5.T8.4.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A5.T8.4.1.6.1">Swin w=(48,64,64)</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.6.2">78.16%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.6.3">58.54%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.6.4">87.00%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.6.5">93.68%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.6.6">77.45%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T8.4.1.6.7">37.79%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.6.8">80.91%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.6.9">71.35%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.6.10">79.00%</td>
</tr>
<tr class="ltx_tr" id="A5.T8.4.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A5.T8.4.1.7.1">Swin w=(30,40,40)</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.7.2">79.19%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.7.3">60.44%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.7.4">88.00%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.7.5">93.68%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.7.6">77.24%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T8.4.1.7.7">35.54%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.7.8">78.84%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.7.9">72.28%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.7.10">77.53%</td>
</tr>
<tr class="ltx_tr" id="A5.T8.4.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A5.T8.4.1.8.1">
<span class="ltx_text ltx_font_smallcaps" id="A5.T8.4.1.8.1.1">STA</span> w=(30,40,40)</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.8.2">80.54%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.8.3">71.19%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.8.4">93.00%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.8.5">89.81%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.8.6">79.25%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T8.4.1.8.7">36.77%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.8.8">84.63%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.8.9">73.83%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.8.10">82.47%</td>
</tr>
<tr class="ltx_tr" id="A5.T8.4.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A5.T8.4.1.9.1">
<span class="ltx_text ltx_font_smallcaps" id="A5.T8.4.1.9.1.1">STA</span> w=(18,24,24)</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.9.2">88.13%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.9.3">75.46%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.9.4">91.00%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.9.5">91.61%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.9.6">82.52%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T8.4.1.9.7">42.15%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.9.8">81.47%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.9.9">77.03%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.9.10">80.58%</td>
</tr>
<tr class="ltx_tr" id="A5.T8.4.1.10" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="10" id="A5.T8.4.1.10.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T8.4.1.10.1.1" style="background-color:#F2F2F2;">w. training</span></td>
</tr>
<tr class="ltx_tr" id="A5.T8.4.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A5.T8.4.1.11.1">Swin w=(30,40,40)</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.11.2">77.14%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.11.3">48.86%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.11.4">73.00%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.11.5">87.00%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.11.6">63.38%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T8.4.1.11.7">39.03%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.11.8">77.50%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.11.9">67.39%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.11.10">75.48%</td>
</tr>
<tr class="ltx_tr" id="A5.T8.4.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A5.T8.4.1.12.1">
<span class="ltx_text ltx_font_smallcaps" id="A5.T8.4.1.12.1.1">STA</span> w=(30,24,40)</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.12.2">91.77%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.12.3">68.45%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.12.4">86.00%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.12.5">89.59%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.12.6">72.76%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T8.4.1.12.7">39.53%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.12.8">85.37%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.12.9">73.52%</td>
<td class="ltx_td ltx_align_center" id="A5.T8.4.1.12.10">83.00%</td>
</tr>
<tr class="ltx_tr" id="A5.T8.4.1.13">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A5.T8.4.1.13.1">
<span class="ltx_text ltx_font_smallcaps" id="A5.T8.4.1.13.1.1">STA</span> w=(18,24,24)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T8.4.1.13.2">92.96%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T8.4.1.13.3">74.16%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T8.4.1.13.4">93.00%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T8.4.1.13.5">84.50%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T8.4.1.13.6">73.41%</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A5.T8.4.1.13.7">38.23%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T8.4.1.13.8">84.76%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T8.4.1.13.9">74.05%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T8.4.1.13.10">82.62%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the qualitative performance comparison between different video generation models, focusing on various aspects of visual quality.  The models are assessed across several key dimensions, such as the accuracy of object classification, the quality of human actions, and the visual characteristics of objects, and their spatial relationships within the scene.  It provides a quantitative analysis of the models' strengths and weaknesses across various visual elements to offer a more nuanced and comprehensive understanding of their performance capabilities.
> <details>
> <summary>read the caption</summary>
> Table 8: Model Performance Comparison - Part 2
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.04507/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04507/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04507/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04507/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04507/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04507/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04507/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04507/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04507/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04507/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04507/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04507/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04507/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04507/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04507/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04507/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}