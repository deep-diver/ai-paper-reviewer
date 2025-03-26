---
title: "XAttention: Block Sparse Attention with Antidiagonal Scoring"
summary: "XAttention: Antidiagonal scoring unlocks block-sparse attention, slashing compute costs in long-context Transformers without sacrificing accuracy."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tsinghua University",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16428 {{< /keyword >}}
{{< keyword icon="writer" >}} Ruyi Xu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16428" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16428" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16428/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Long-Context Transformer Models are vital for real-world applications but suffer high computational costs due to attention's quadratic complexity, leading to substantial bottlenecks during pre-filling and hindering practical deployment. Existing block-sparse methods grapple with a trade-off between accuracy and efficiency due to the high overhead in determining block importance, rendering them impractical for real-world use. There's a need for a block-sparse attention mechanism that accelerates long-context Transformers without sacrificing accuracy. 



XAttention is introduced as a plug-and-play framework improving the efficiency of block-sparse attention. It identifies non-essential blocks using the sum of antidiagonal values in the attention matrix as a proxy for block importance, which allows for precise pruning, high sparsity, and accelerated inference. Evaluations show accuracy comparable to full attention, delivering computational gains with up to 13.5× acceleration in attention computation. The approach unlocks the potential of block sparse attention for efficient LCTM deployment.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} XAttention significantly accelerates long-context inference by using antidiagonal sums as a proxy for block importance, enabling precise pruning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method achieves accuracy comparable to full attention with substantial computational gains, up to 13.5x acceleration in attention computation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Evaluations across language, video understanding, and generation tasks demonstrate XAttention's broad applicability and effectiveness. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces XAttention, a novel technique improving efficiency in long-context Transformers. It offers a practical solution to reduce computational costs, **enabling broader applications in AI and opening new research directions for sparse attention mechanisms and efficient model deployment**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16428/x1.png)

> 🔼 XAttention employs a three-step process to optimize attention computation.  First, strided antidiagonal scoring sums values within 8x8 blocks of the attention matrix using a stride of 4.  Blocks with higher sums (red) are considered more important than those with lower sums (blue). Second, block selection identifies the most important blocks based on their antidiagonal scores.  Finally, block sparse attention performs computations only on these selected blocks (red blocks), significantly reducing the computational cost. This figure illustrates the process using a sequence length of 24.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of XAttention: XAttention optimizes attention through a three-step process: (Left) Strided Antidiagonal Scoring: Each block (8×\times×8 in this example) is scored by summing values along its strided antidiagonals (stride = 4), with red lines generally indicating higher summed values and blue lines lower values. (Middle) Block Selection: High-scoring blocks are selected based on these evaluations. (Right) Block Sparse Attention: Attention is computed only on the selected blocks (red blocks on the right), achieving substantial computational savings. This example uses a sequence length of 24.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.9.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.9.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.1.1.1.1" style="font-size:90%;">Input Len</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.9.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.1.1.2.1" style="font-size:90%;">4k</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.9.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.1.1.3.1" style="font-size:90%;">8k</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.9.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.1.1.4.1" style="font-size:90%;">16k</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.9.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.1.1.5.1" style="font-size:90%;">32k</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.9.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.1.1.6.1" style="font-size:90%;">64k</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.9.1.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.1.1.7.1" style="font-size:90%;">128k</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.9.1.1.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.1.1.8.1" style="font-size:90%;">Avg.</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.9.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S3.T1.9.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.2.2.1.1" style="font-size:90%;">Full</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.9.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.2.2.2.1" style="font-size:90%;">96.74</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.9.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.2.2.3.1" style="font-size:90%;">94.03</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.9.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.2.2.4.1" style="font-size:90%;">92.02</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.9.2.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.2.2.5.1" style="font-size:90%;">84.17</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.9.2.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.2.2.6.1" style="font-size:90%;">81.32</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.9.2.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.2.2.7.1" style="font-size:90%;">76.89</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.9.2.2.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.2.2.8.1" style="font-size:90%;">87.52</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.9.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.9.3.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.3.1.1.1" style="font-size:90%;">FlexPrefill</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.3.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.3.1.2.1" style="font-size:90%;">95.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.3.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.3.1.3.1" style="font-size:90%;">93.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.3.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.3.1.4.1" style="font-size:90%;">92.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.3.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.3.1.5.1" style="font-size:90%;">88.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.3.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.3.1.6.1" style="font-size:90%;">81.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.3.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.3.1.7.1" style="font-size:90%;">74.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.3.1.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.3.1.8.1" style="font-size:90%;">87.72</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.4.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.4.2.1.1" style="font-size:90%;">MInference</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.4.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.4.2.2.1" style="font-size:90%;">96.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.4.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.4.2.3.1" style="font-size:90%;">94.06</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.4.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.4.2.4.1" style="font-size:90%;">91.37</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.4.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.4.2.5.1" style="font-size:90%;">85.79</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.4.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.4.2.6.1" style="font-size:90%;">83.03</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.4.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.4.2.7.1" style="font-size:90%;">54.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.4.2.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.4.2.8.1" style="font-size:90%;">84.15</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.5.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.5.3.1.1" style="font-size:90%;">SeerAttn</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.5.3.2.1" style="font-size:90%;">84.43</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.5.3.3.1" style="font-size:90%;">79.55</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.5.3.4.1" style="font-size:90%;">79.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.5.3.5.1" style="font-size:90%;">72.95</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.5.3.6.1" style="font-size:90%;">64.79</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.5.3.7.1" style="font-size:90%;">51.61</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.3.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.5.3.8.1" style="font-size:90%;">72.18</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.6.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.6.4.1.1" style="font-size:90%;">Xattn S=8</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.6.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.6.4.2.1" style="font-size:90%;">96.83</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.6.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.6.4.3.1" style="font-size:90%;">94.07</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.6.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.6.4.4.1" style="font-size:90%;">93.17</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.6.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.6.4.5.1" style="font-size:90%;">90.75</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.6.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.6.4.6.1" style="font-size:90%;">84.08</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.6.4.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.6.4.7.1" style="font-size:90%;">72.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.6.4.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.6.4.8.1" style="font-size:90%;">88.47</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.9.7.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.7.5.1.1" style="font-size:90%;">Xattn S=16</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.7.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.7.5.2.1" style="font-size:90%;">96.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.7.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.7.5.3.1" style="font-size:90%;">93.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.7.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.7.5.4.1" style="font-size:90%;">93.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.7.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.7.5.5.1" style="font-size:90%;">90.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.7.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.7.5.6.1" style="font-size:90%;">83.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.7.5.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.7.5.7.1" style="font-size:90%;">71.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.7.5.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.7.5.8.1" style="font-size:90%;">88.08</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of different attention mechanisms on the RULER benchmark using the Llama-3.1-8B-Instruct language model.  It shows the accuracy achieved by several methods (Full Attention, FlexPrefill, MInference, SeerAttn, and XAttention with strides 8 and 16) across various sequence lengths (4k, 8k, 16k, 32k, 64k, and 128k tokens).  XAttention uses a novel antidiagonal scoring approach, with the minimum threshold for attention heads precisely predicted via a dynamic programming method.  The average accuracy across all sequence lengths is reported for each method, allowing a direct comparison of their performance on long-context tasks.  The results demonstrate XAttention's effectiveness in balancing accuracy and efficiency for long sequence processing.
> <details>
> <summary>read the caption</summary>
> Table 1: Accuracy comparison of different methods on Llama-3.1-8B-Instruct and sequence lengths on RULER. XAttention is configured with Stride S=8𝑆8S=8italic_S = 8 and S=16𝑆16S=16italic_S = 16 with Precisely Predicted Minimum Threshold.
> </details>





### In-depth insights


#### Anti-Diag Scoring
**Antidiagonal scoring** is presented as a method for importance prediction of attention blocks in sparse attention mechanisms. Instead of typical pooling that can miss crucial vertical or slash patterns, or complex vertical slash detection with high computational overhead, it sums elements along antidiagonals within blocks. This **antidiagonal selection** ensures consideration of all tokens, as each contributes to at least one antidiagonal sum. It also effectively intersects vertical and slash patterns, enabling their detection for efficient sparse attention. The method aims to balance accuracy and efficiency by providing a lightweight yet effective mechanism for identifying important attention blocks.

#### Block Sparsity++
**Block sparsity++** represents an evolution in sparse attention mechanisms, likely building upon existing block-sparse methods to achieve improved efficiency and accuracy. It suggests advancements that go beyond simply identifying important blocks, potentially incorporating techniques like adaptive block sizing, dynamic thresholding for block selection, or hierarchical sparsity structures. The '++' implies enhancements that address limitations in previous block sparsity approaches, such as the overhead of block importance measurement or the trade-off between sparsity and representational capacity. A key area of focus might be minimizing computational costs. Further, it suggests improvements over the traditional block sparsity.

#### LCTM Acceleration
**Long Context Transformer Models (LCTMs)** face computational bottlenecks due to attention's quadratic complexity. Accelerating LCTMs is crucial for real-world applications. Block-sparse attention is a promising avenue, focusing on critical regions to reduce computational burden. However, existing methods struggle with the trade-off between accuracy and efficiency due to costly block importance measurements. **XAttention** emerges as a novel framework, dramatically accelerating long-context inference using sparse attention. It leverages the insight that antidiagonal values in the attention matrix provide a powerful proxy for block importance, enabling precise identification and pruning of non-essential blocks. This results in high sparsity and accelerated inference. Across various benchmarks, XAttention achieves accuracy comparable to full attention while delivering substantial computational gains, unlocking the practical potential of block-sparse attention for scalable and efficient deployment of LCTMs.

#### Stride vs. Accuracy
The consideration of stride size in relation to accuracy is crucial for optimizing the efficiency of sparse attention mechanisms. **Larger strides reduce computational overhead by sampling fewer attention map values, but excessively large strides risk compromising accuracy.** This is because they may fail to adequately capture essential patterns, leading to performance degradation. Conversely, **smaller strides provide more granular sampling, potentially improving accuracy but increasing computational cost**. The optimal stride size balances computational efficiency and accuracy. **An adequately selected stride is critical to detect the previously identified slash pattern.**

#### Beyond Language
While the paper's focus is on improving the efficiency of Long-Context Transformer Models (LCTMs) primarily for language tasks, the implications extend significantly beyond language itself. The techniques developed, such as sparse attention mechanisms and antidiagonal scoring, are fundamentally about **optimizing information processing** within long sequences. This is crucial for handling the growing complexity of multimodal data. The shift towards processing video, images, and other non-linguistic data alongside text necessitates models capable of capturing long-range dependencies and intricate relationships within these diverse data streams. Sparse attention particularly addresses the computational bottlenecks of handling high-dimensional inputs and long sequences, making it applicable to domains such as genomics, financial time-series analysis, or any field dealing with sequential data where efficient processing and memory usage are paramount. Future research will see these techniques applied to domains far removed from natural language, as the need for efficient long-range dependency modeling continues to grow across all domains.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16428/x2.png)

> 🔼 The figure illustrates how XAttention's novel antidiagonal scoring method effectively captures important information within attention blocks.  By summing values along antidiagonals (with a specified stride), XAttention identifies blocks containing both vertical and diagonal patterns – crucial indicators of significant relationships between tokens.  This method is superior to simple pooling because it directly addresses and avoids missing these key attention patterns, leading to more precise block selection and higher efficiency in sparse attention computation.
> <details>
> <summary>read the caption</summary>
> Figure 2: XAttention’s antidiagonal pattern intersects both vertical and slash patterns within a block, enabling efficient detection of these patterns and guiding effective sparse attention computation.
> </details>



![](https://arxiv.org/html/2503.16428/x3.png)

> 🔼 This figure presents a qualitative comparison of video generation results obtained from four different methods using the first prompt from the VBench dataset.  The four methods are: (1) Full Attention (used as a baseline for comparison), (2) XAttention without any warmup period (with τ = 0.95), (3) XAttention with a 5-step warmup period (τ = 0.9), and (4) XAttention with a 5-step warmup period (τ = 0.95).  Each row displays selected frames from a video generated by one of the four methods, allowing for a visual comparison of the quality and fidelity of the generated videos. The key takeaway is that XAttention, especially when using a warmup period, generates videos with high visual fidelity, closely matching the quality of those produced using the full attention baseline.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative comparison of video generation results on the VBench benchmark using the first prompt in the VBench dataset. Rows show frames from videos generated using: (1) Full Attention (baseline), (2) XAttention with no warmup and (τ𝜏\tauitalic_τ = 0.95), (3) XAttention with 5 warmup steps and (τ𝜏\tauitalic_τ = 0.9), and (4) XAttention with 5 warmup steps and (τ𝜏\tauitalic_τ = 0.95). XAttention with warmup achieves high visual fidelity to the full attention baseline.
> </details>



![](https://arxiv.org/html/2503.16428/x4.png)

> 🔼 This figure compares the speedup achieved by various attention mechanisms against FlashAttention (as implemented in FlashInfer) across different context lengths.  The x-axis represents the sequence length (in tokens), and the y-axis displays the speedup factor relative to FlashAttention.  The results demonstrate that XAttention consistently outperforms other sparse attention methods (MInference, SeerAttention, FlexPrefill), achieving the highest speedup, reaching up to 13.5x at a context length of 256K tokens.  This highlights XAttention's efficiency in handling very long sequences.
> <details>
> <summary>read the caption</summary>
> Figure 4: Speedup comparison of attention methods across context lengths, relative to FlashInfer’s implementation of FlashAttention. XAttention consistently outperforms other sparse attention methods, achieving up to 13.5x speedup at 256K tokens.
> </details>



![](https://arxiv.org/html/2503.16428/x5.png)

> 🔼 Figure 5 is a bar chart comparing the time spent on pattern search and attention computation during the prefill stage of different sparse attention methods. XAttention significantly reduces the time required for pattern search while maintaining a similar attention density compared to other methods, resulting in substantial speedup in overall attention computation.
> <details>
> <summary>read the caption</summary>
> Figure 5: Breakdown of prefill attention time. Xattention significantly reduces pattern selection time while maintaining density, achieving substantial acceleration compared to existing methods.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.3.1.1">
<td class="ltx_td ltx_border_tt" id="S3.T2.3.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T2.3.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.1.1.2.1" style="font-size:90%;">Single-Doc QA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T2.3.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.1.1.3.1" style="font-size:90%;">Multi-Doc QA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S3.T2.3.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.1.1.4.1" style="font-size:90%;">Summarization</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T2.3.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.1.1.5.1" style="font-size:90%;">Few-shot Learning</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T2.3.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.1.1.6.1" style="font-size:90%;">Code</span></th>
<td class="ltx_td ltx_border_tt" id="S3.T2.3.1.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S3.T2.3.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.2.2.1.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.3.2.2.2.1" style="width:23.0pt;height:32pt;vertical-align:-13.8pt;"><span class="ltx_transformed_inner" style="width:32.3pt;transform:translate(-4.65pt,2.63pt) rotate(-60deg) ;">
<p class="ltx_p" id="S3.T2.3.2.2.2.1.1"><span class="ltx_text" id="S3.T2.3.2.2.2.1.1.1" style="font-size:90%;">NrtvQA</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.3.2.2.3.1" style="width:20.8pt;height:28pt;vertical-align:-11.8pt;"><span class="ltx_transformed_inner" style="width:27.8pt;transform:translate(-3.54pt,2.63pt) rotate(-60deg) ;">
<p class="ltx_p" id="S3.T2.3.2.2.3.1.1"><span class="ltx_text" id="S3.T2.3.2.2.3.1.1.1" style="font-size:90%;">Qasper</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.3.2.2.4.1" style="width:18.4pt;height:25.7pt;vertical-align:-9.8pt;"><span class="ltx_transformed_inner" style="width:26.1pt;transform:translate(-3.87pt,0pt) rotate(-60deg) ;">
<p class="ltx_p" id="S3.T2.3.2.2.4.1.1"><span class="ltx_text" id="S3.T2.3.2.2.4.1.1.1" style="font-size:90%;">MF-en</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.2.2.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.3.2.2.5.1" style="width:20.2pt;height:27pt;vertical-align:-11.3pt;"><span class="ltx_transformed_inner" style="width:26.6pt;transform:translate(-3.24pt,2.63pt) rotate(-60deg) ;">
<p class="ltx_p" id="S3.T2.3.2.2.5.1.1"><span class="ltx_text" id="S3.T2.3.2.2.5.1.1.1" style="font-size:90%;">HPQA</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.2.2.6" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.3.2.2.6.1" style="width:29.7pt;height:43.5pt;vertical-align:-19.5pt;"><span class="ltx_transformed_inner" style="width:45.5pt;transform:translate(-7.91pt,2.63pt) rotate(-60deg) ;">
<p class="ltx_p" id="S3.T2.3.2.2.6.1.1"><span class="ltx_text" id="S3.T2.3.2.2.6.1.1.1" style="font-size:90%;">2WikiMQA</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.2.2.7" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.3.2.2.7.1" style="width:25.2pt;height:35.8pt;vertical-align:-15.7pt;"><span class="ltx_transformed_inner" style="width:36.8pt;transform:translate(-5.77pt,2.63pt) rotate(-60deg) ;">
<p class="ltx_p" id="S3.T2.3.2.2.7.1.1"><span class="ltx_text" id="S3.T2.3.2.2.7.1.1.1" style="font-size:90%;">MuSiQue</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.2.2.8" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.3.2.2.8.1" style="width:28.6pt;height:41.6pt;vertical-align:-18.6pt;"><span class="ltx_transformed_inner" style="width:43.5pt;transform:translate(-7.44pt,2.63pt) rotate(-60deg) ;">
<p class="ltx_p" id="S3.T2.3.2.2.8.1.1"><span class="ltx_text" id="S3.T2.3.2.2.8.1.1.1" style="font-size:90%;">GovReport</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.2.2.9" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.3.2.2.9.1" style="width:23.2pt;height:32.4pt;vertical-align:-14.0pt;"><span class="ltx_transformed_inner" style="width:32.8pt;transform:translate(-4.77pt,2.63pt) rotate(-60deg) ;">
<p class="ltx_p" id="S3.T2.3.2.2.9.1.1"><span class="ltx_text" id="S3.T2.3.2.2.9.1.1.1" style="font-size:90%;">QMSum</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.2.2.10" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.3.2.2.10.1" style="width:20.6pt;height:29.5pt;vertical-align:-11.7pt;"><span class="ltx_transformed_inner" style="width:30.5pt;transform:translate(-4.96pt,0pt) rotate(-60deg) ;">
<p class="ltx_p" id="S3.T2.3.2.2.10.1.1"><span class="ltx_text" id="S3.T2.3.2.2.10.1.1.1" style="font-size:90%;">VCSum</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.2.2.11" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.3.2.2.11.1" style="width:26.7pt;height:40pt;vertical-align:-16.9pt;"><span class="ltx_transformed_inner" style="width:42.6pt;transform:translate(-7.93pt,0pt) rotate(-60deg) ;">
<p class="ltx_p" id="S3.T2.3.2.2.11.1.1"><span class="ltx_text" id="S3.T2.3.2.2.11.1.1.1" style="font-size:90%;">MultiNews</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.2.2.12" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.3.2.2.12.1" style="width:18.2pt;height:25.4pt;vertical-align:-9.6pt;"><span class="ltx_transformed_inner" style="width:25.8pt;transform:translate(-3.77pt,0pt) rotate(-60deg) ;">
<p class="ltx_p" id="S3.T2.3.2.2.12.1.1"><span class="ltx_text" id="S3.T2.3.2.2.12.1.1.1" style="font-size:90%;">TREC</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.2.2.13" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.3.2.2.13.1" style="width:25.5pt;height:36.2pt;vertical-align:-15.9pt;"><span class="ltx_transformed_inner" style="width:37.3pt;transform:translate(-5.9pt,2.63pt) rotate(-60deg) ;">
<p class="ltx_p" id="S3.T2.3.2.2.13.1.1"><span class="ltx_text" id="S3.T2.3.2.2.13.1.1.1" style="font-size:90%;">TriviaQA</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.2.2.14" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.3.2.2.14.1" style="width:24.1pt;height:35.6pt;vertical-align:-14.7pt;"><span class="ltx_transformed_inner" style="width:37.5pt;transform:translate(-6.71pt,0pt) rotate(-60deg) ;">
<p class="ltx_p" id="S3.T2.3.2.2.14.1.1"><span class="ltx_text" id="S3.T2.3.2.2.14.1.1.1" style="font-size:90%;">SAMSum</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.2.2.15" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.3.2.2.15.1" style="width:17.3pt;height:23.8pt;vertical-align:-8.8pt;"><span class="ltx_transformed_inner" style="width:23.9pt;transform:translate(-3.31pt,0pt) rotate(-60deg) ;">
<p class="ltx_p" id="S3.T2.3.2.2.15.1.1"><span class="ltx_text" id="S3.T2.3.2.2.15.1.1.1" style="font-size:90%;">LSHT</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.2.2.16" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.3.2.2.16.1" style="width:14.6pt;height:19.2pt;vertical-align:-6.5pt;"><span class="ltx_transformed_inner" style="width:18.6pt;transform:translate(-1.99pt,0pt) rotate(-60deg) ;">
<p class="ltx_p" id="S3.T2.3.2.2.16.1.1"><span class="ltx_text" id="S3.T2.3.2.2.16.1.1.1" style="font-size:90%;">LCC</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.2.2.17" style="padding-left:2.0pt;padding-right:2.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.3.2.2.17.1" style="width:16.4pt;height:22.2pt;vertical-align:-8.0pt;"><span class="ltx_transformed_inner" style="width:22.1pt;transform:translate(-2.87pt,0pt) rotate(-60deg) ;">
<p class="ltx_p" id="S3.T2.3.2.2.17.1.1"><span class="ltx_text" id="S3.T2.3.2.2.17.1.1.1" style="font-size:90%;">RB-P</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T2.3.2.2.18" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.2.2.18.1" style="font-size:90%;">Avg.</span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.1.1" style="font-size:90%;">Full</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.2.1" style="font-size:90%;">31.44</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.3.1" style="font-size:90%;">25.07</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.4.1" style="font-size:90%;">29.40</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.5.1" style="font-size:90%;">16.89</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.6.1" style="font-size:90%;">17.00</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.7.1" style="font-size:90%;">11.79</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.8.1" style="font-size:90%;">34.22</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.9.1" style="font-size:90%;">23.25</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.10.1" style="font-size:90%;">15.91</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.11.1" style="font-size:90%;">26.69</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.12.1" style="font-size:90%;">72.50</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.13.1" style="font-size:90%;">91.65</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.14.1" style="font-size:90%;">43.74</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.15.1" style="font-size:90%;">46.00</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.16" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.16.1" style="font-size:90%;">52.19</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.17" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.17.1" style="font-size:90%;">49.14</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.18" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.18.1" style="font-size:90%;">40.34</span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.3.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.3.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.4.4.1.1" style="font-size:90%;">MInference</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.4.4.2.1" style="font-size:90%;">31.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.4.4.3.1" style="font-size:90%;">24.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.4.4.4.1" style="font-size:90%;">29.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.4.4.5.1" style="font-size:90%;">17.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.4.4.6.1" style="font-size:90%;">16.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.4.4.7.1" style="font-size:90%;">11.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.4.4.8.1" style="font-size:90%;">34.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.4.4.9.1" style="font-size:90%;">23.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.4.4.10.1" style="font-size:90%;">16.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.4.4.11.1" style="font-size:90%;">26.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.4.4.12.1" style="font-size:90%;">72.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.4.4.13.1" style="font-size:90%;">91.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.4.4.14.1" style="font-size:90%;">43.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.4.4.15.1" style="font-size:90%;">46.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.16" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.4.4.16.1" style="font-size:90%;">52.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.17" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.4.4.17.1" style="font-size:90%;">49.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.4.4.18" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.4.4.18.1" style="font-size:90%;">40.30</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.5.5">
<td class="ltx_td ltx_align_left" id="S3.T2.3.5.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.5.5.1.1" style="font-size:90%;">FlexPrefill</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.5.5.2.1" style="font-size:90%;">27.30</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.5.5.3.1" style="font-size:90%;">28.56</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.5.5.4.1" style="font-size:90%;">27.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.5.5.5.1" style="font-size:90%;">17.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.5.5.6.1" style="font-size:90%;">15.14</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.5.5.7.1" style="font-size:90%;">9.46</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.5.5.8.1" style="font-size:90%;">32.76</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.5.5.9.1" style="font-size:90%;">23.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.5.5.10.1" style="font-size:90%;">16.05</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.5.5.11.1" style="font-size:90%;">27.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.5.5.12.1" style="font-size:90%;">64.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.5.5.13.1" style="font-size:90%;">88.18</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.5.5.14.1" style="font-size:90%;">41.28</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.5.5.15.1" style="font-size:90%;">31.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.16" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.5.5.16.1" style="font-size:90%;">45.69</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.17" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.5.5.17.1" style="font-size:90%;">47.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.5.5.18" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.5.5.18.1" style="font-size:90%;">36.83</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.6.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.3.6.6.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.6.6.1.1" style="font-size:90%;">XAttention</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.6.6.2.1" style="font-size:90%;">28.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.6.6.3.1" style="font-size:90%;">26.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.6.6.4.1" style="font-size:90%;">29.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.6.6.5.1" style="font-size:90%;">17.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.6.6.6.1" style="font-size:90%;">16.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.6.6.7.1" style="font-size:90%;">11.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.6.6.8.1" style="font-size:90%;">34.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.6.6.9.1" style="font-size:90%;">23.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.6.6.10.1" style="font-size:90%;">16.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.6.6.11.1" style="font-size:90%;">27.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T2.3.6.6.12.1" style="font-size:90%;">72.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.6.6.13.1" style="font-size:90%;">91.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.6.6.14.1" style="font-size:90%;">43.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.6.6.15.1" style="font-size:90%;">47.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.16" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.6.6.16.1" style="font-size:90%;">52.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.17" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.6.6.17.1" style="font-size:90%;">50.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.6.6.18" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.6.6.18.1" style="font-size:90%;">40.60</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of several attention mechanisms on various real-world tasks within the LongBench benchmark. The benchmark utilizes the Llama-3.1-8B-Instruct language model.  The attention methods compared include XAttention (the proposed method), FlashAttention (a baseline for dense attention), MInference, FlexPrefill, and SeerAttention (other existing block-sparse methods). The results showcase XAttention's superior performance in terms of accuracy across different LongBench tasks, particularly when employing stride 8 and a precisely predicted minimum threshold. The table details the performance (scores) achieved by each method on individual LongBench tasks (single-document QA, multi-document QA, 2WikiMQA, MuSiQue, GovReport, QMSum, VCSum, MultiNews, TREC, few-shot learning, TriviaQA, SAMSum, LSHT, LCC, RB-P, and Code), thus offering a comprehensive comparison across diverse and complex long-context natural language understanding scenarios.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of different attention methods on real-world LongBench tasks using the Llama-3.1-8B-Instruct model. XAttention, configured with stride 8 and Precisely Predicted Minimum Threshold, achieves the best average scores against all baselines.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.9">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.9.1.1">
<td class="ltx_td ltx_border_tt" id="S3.T3.9.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T3.9.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.1.1.2.1" style="font-size:90%;">Short (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T3.9.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.1.1.3.1" style="font-size:90%;">Medium (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T3.9.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.1.1.4.1" style="font-size:90%;">Long (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T3.9.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.1.1.5.1" style="font-size:90%;">Overall (%)</span></th>
</tr>
<tr class="ltx_tr" id="S3.T3.9.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.2.2.1.1" style="font-size:90%;">subs</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.2.2.2.1" style="font-size:90%;">w/o</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.2.2.3.1" style="font-size:90%;">w/</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.2.2.4.1" style="font-size:90%;">w/o</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.2.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.2.2.5.1" style="font-size:90%;">w/</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.2.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.2.2.6.1" style="font-size:90%;">w/o</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.2.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.2.2.7.1" style="font-size:90%;">w/</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.2.2.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.2.2.8.1" style="font-size:90%;">w/o</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.2.2.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.2.2.9.1" style="font-size:90%;">w/</span></th>
</tr>
<tr class="ltx_tr" id="S3.T3.9.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.3.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.3.3.1.1" style="font-size:90%;">Full</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.3.3.2.1" style="font-size:90%;">72.1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.3.3.3.1" style="font-size:90%;">78.1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.3.3.4.1" style="font-size:90%;">63.9</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.3.3.5.1" style="font-size:90%;">69.4</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.3.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.3.3.6.1" style="font-size:90%;">55.1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.3.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.3.3.7.1" style="font-size:90%;">60.2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.3.3.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.3.3.8.1" style="font-size:90%;">63.7</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.9.3.3.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.3.3.9.1" style="font-size:90%;">69.2</span></th>
</tr>
<tr class="ltx_tr" id="S3.T3.9.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.4.4.1.1" style="font-size:90%;">MInference</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.4.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.4.4.2.1" style="font-size:90%;">71.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.4.4.3.1" style="font-size:90%;">77.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.4.4.4.1" style="font-size:90%;">62.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.4.4.5.1" style="font-size:90%;">67.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.4.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.4.4.6.1" style="font-size:90%;">55.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.4.4.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.4.4.7.1" style="font-size:90%;">59.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.4.4.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.4.4.8.1" style="font-size:90%;">63.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.4.4.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.4.4.9.1" style="font-size:90%;">68.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.5.5">
<td class="ltx_td ltx_align_center" id="S3.T3.9.5.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.5.5.1.1" style="font-size:90%;">FlexPrefill</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.5.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.5.5.2.1" style="font-size:90%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.5.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.5.5.3.1" style="font-size:90%;">77.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.5.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.5.5.4.1" style="font-size:90%;">62.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.5.5.5.1" style="font-size:90%;">68.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.5.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.5.5.6.1" style="font-size:90%;">53.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.5.5.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.5.5.7.1" style="font-size:90%;">57.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.5.5.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.5.5.8.1" style="font-size:90%;">62.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.5.5.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.5.5.9.1" style="font-size:90%;">67.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.6.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.9.6.6.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T3.9.6.6.1.1" style="font-size:90%;">XAttention</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.9.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.6.6.2.1" style="font-size:90%;">71.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.9.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.6.6.3.1" style="font-size:90%;">78.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.9.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.6.6.4.1" style="font-size:90%;">62.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.9.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.6.6.5.1" style="font-size:90%;">68.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.9.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.6.6.6.1" style="font-size:90%;">55.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.9.6.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.6.6.7.1" style="font-size:90%;">60.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.9.6.6.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.6.6.8.1" style="font-size:90%;">63.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.9.6.6.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.6.6.9.1" style="font-size:90%;">69.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of different attention mechanisms on the QwenVL-2-7B model for the video understanding task within the Video-MME dataset.  Specifically, it compares the performance of Full Attention (the baseline), XAttention (using a stride of 16 and a threshold of 0.9), MInference, and FlexPrefill across three video lengths: short, medium, and long. The results show XAttention's performance relative to the baseline and other sparse attention methods.  The table highlights XAttention's superior performance on long videos and its overall best average performance among the sparse attention methods.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of different methods on QwenVL-2-7B in the Video-MME video understanding task. XAttention is configured with Stride S=16𝑆16S=16italic_S = 16 and Threshold τ=0.9𝜏0.9\tau=0.9italic_τ = 0.9. XAttention outperforms Full Attention on long video tasks and achieves the best average performance among all sparse attention methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T4.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T4.5.1.1" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_text" id="S3.T4.5.1.1.1" style="font-size:90%;">XAttn </span><math alttext="\tau" class="ltx_Math" display="inline" id="S3.T4.5.1.1.m1.1"><semantics id="S3.T4.5.1.1.m1.1a"><mi id="S3.T4.5.1.1.m1.1.1" mathsize="90%" xref="S3.T4.5.1.1.m1.1.1.cmml">τ</mi><annotation-xml encoding="MathML-Content" id="S3.T4.5.1.1.m1.1b"><ci id="S3.T4.5.1.1.m1.1.1.cmml" xref="S3.T4.5.1.1.m1.1.1">𝜏</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.5.1.1.m1.1c">\tau</annotation><annotation encoding="application/x-llamapun" id="S3.T4.5.1.1.m1.1d">italic_τ</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.6.2.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_text" id="S3.T4.6.2.2.1" style="font-size:90%;">PSNR (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.6.2.2.m1.1"><semantics id="S3.T4.6.2.2.m1.1a"><mo id="S3.T4.6.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.6.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.6.2.2.m1.1b"><ci id="S3.T4.6.2.2.m1.1.1.cmml" xref="S3.T4.6.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.6.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.6.2.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S3.T4.6.2.2.2" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.7.3.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_text" id="S3.T4.7.3.3.1" style="font-size:90%;">SSIM (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.7.3.3.m1.1"><semantics id="S3.T4.7.3.3.m1.1a"><mo id="S3.T4.7.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.7.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.7.3.3.m1.1b"><ci id="S3.T4.7.3.3.m1.1.1.cmml" xref="S3.T4.7.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.7.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.7.3.3.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S3.T4.7.3.3.2" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.8.4.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_text" id="S3.T4.8.4.4.1" style="font-size:90%;">LPIPS (</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.8.4.4.m1.1"><semantics id="S3.T4.8.4.4.m1.1a"><mo id="S3.T4.8.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.8.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.8.4.4.m1.1b"><ci id="S3.T4.8.4.4.m1.1.1.cmml" xref="S3.T4.8.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.8.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.8.4.4.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S3.T4.8.4.4.2" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.9.5.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_text" id="S3.T4.9.5.5.1" style="font-size:90%;">Density (%, </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.9.5.5.m1.1"><semantics id="S3.T4.9.5.5.m1.1a"><mo id="S3.T4.9.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.9.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.9.5.5.m1.1b"><ci id="S3.T4.9.5.5.m1.1.1.cmml" xref="S3.T4.9.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.9.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.9.5.5.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S3.T4.9.5.5.2" style="font-size:90%;">)</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T4.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T4.10.6.1" style="padding-left:2.5pt;padding-right:2.5pt;"><math alttext="0.90" class="ltx_Math" display="inline" id="S3.T4.10.6.1.m1.1"><semantics id="S3.T4.10.6.1.m1.1a"><mn id="S3.T4.10.6.1.m1.1.1" mathsize="90%" xref="S3.T4.10.6.1.m1.1.1.cmml">0.90</mn><annotation-xml encoding="MathML-Content" id="S3.T4.10.6.1.m1.1b"><cn id="S3.T4.10.6.1.m1.1.1.cmml" type="float" xref="S3.T4.10.6.1.m1.1.1">0.90</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.10.6.1.m1.1c">0.90</annotation><annotation encoding="application/x-llamapun" id="S3.T4.10.6.1.m1.1d">0.90</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.10.6.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S3.T4.10.6.2.1" style="font-size:90%;">21.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.10.6.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S3.T4.10.6.3.1" style="font-size:90%;">0.767</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.10.6.4" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S3.T4.10.6.4.1" style="font-size:90%;">0.215</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.10.6.5" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S3.T4.10.6.5.1" style="font-size:90%;">34.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T4.11.7.1" style="padding-left:2.5pt;padding-right:2.5pt;"><math alttext="0.95" class="ltx_Math" display="inline" id="S3.T4.11.7.1.m1.1"><semantics id="S3.T4.11.7.1.m1.1a"><mn id="S3.T4.11.7.1.m1.1.1" mathsize="90%" xref="S3.T4.11.7.1.m1.1.1.cmml">0.95</mn><annotation-xml encoding="MathML-Content" id="S3.T4.11.7.1.m1.1b"><cn id="S3.T4.11.7.1.m1.1.1.cmml" type="float" xref="S3.T4.11.7.1.m1.1.1">0.95</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.11.7.1.m1.1c">0.95</annotation><annotation encoding="application/x-llamapun" id="S3.T4.11.7.1.m1.1d">0.95</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.11.7.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S3.T4.11.7.2.1" style="font-size:90%;">23.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.11.7.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S3.T4.11.7.3.1" style="font-size:90%;">0.822</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.11.7.4" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S3.T4.11.7.4.1" style="font-size:90%;">0.155</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.11.7.5" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S3.T4.11.7.5.1" style="font-size:90%;">45.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of XAttention's performance on the HunyuanVideo model for video generation.  The experiment uses the VBench benchmark and incorporates a 5-step full-attention warmup phase. The results show the Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), Learned Perceptual Image Patch Similarity (LPIPS), and density for two different threshold settings (τ).  Higher τ values lead to better video quality (higher PSNR and SSIM, lower LPIPS) but at the cost of slightly lower sparsity (higher density).  Both τ settings show comparable results to the full-attention baseline, indicating that XAttention maintains good performance with significant computational savings.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative results of applying XAttention to the HunyuanVideo model on the VBench benchmark, using a 5-step full-attention warmup. Higher (τ𝜏\tauitalic_τ) yields better fidelity (higher PSNR, higher SSIM, lower LPIPS) at the cost of slightly reduced sparsity (higher density). Both (τ𝜏\tauitalic_τ) settings demonstrate high similarity to the full attention baseline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T5.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T5.6.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T5.6.1.1.1"><span class="ltx_text" id="S3.T5.6.1.1.1.1" style="font-size:90%;">SeqLen</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T5.6.1.1.2"><span class="ltx_text" id="S3.T5.6.1.1.2.1" style="font-size:90%;">Stride 4</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T5.6.1.1.3"><span class="ltx_text" id="S3.T5.6.1.1.3.1" style="font-size:90%;">Stride 8</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T5.6.1.1.4"><span class="ltx_text" id="S3.T5.6.1.1.4.1" style="font-size:90%;">Stride 16</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T5.6.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.6.2.1.1"><span class="ltx_text" id="S3.T5.6.2.1.1.1" style="font-size:90%;">4k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.6.2.1.2"><span class="ltx_text" id="S3.T5.6.2.1.2.1" style="font-size:90%;">51.73%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.6.2.1.3"><span class="ltx_text" id="S3.T5.6.2.1.3.1" style="font-size:90%;">52.16%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.6.2.1.4"><span class="ltx_text" id="S3.T5.6.2.1.4.1" style="font-size:90%;">55.38%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.6.3.2">
<td class="ltx_td ltx_align_center" id="S3.T5.6.3.2.1"><span class="ltx_text" id="S3.T5.6.3.2.1.1" style="font-size:90%;">8k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.6.3.2.2"><span class="ltx_text" id="S3.T5.6.3.2.2.1" style="font-size:90%;">40.96%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.6.3.2.3"><span class="ltx_text" id="S3.T5.6.3.2.3.1" style="font-size:90%;">43.77%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.6.3.2.4"><span class="ltx_text" id="S3.T5.6.3.2.4.1" style="font-size:90%;">43.55%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.6.4.3">
<td class="ltx_td ltx_align_center" id="S3.T5.6.4.3.1"><span class="ltx_text" id="S3.T5.6.4.3.1.1" style="font-size:90%;">16k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.6.4.3.2"><span class="ltx_text" id="S3.T5.6.4.3.2.1" style="font-size:90%;">27.43%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.6.4.3.3"><span class="ltx_text" id="S3.T5.6.4.3.3.1" style="font-size:90%;">27.49%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.6.4.3.4"><span class="ltx_text" id="S3.T5.6.4.3.4.1" style="font-size:90%;">28.91%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.6.5.4">
<td class="ltx_td ltx_align_center" id="S3.T5.6.5.4.1"><span class="ltx_text" id="S3.T5.6.5.4.1.1" style="font-size:90%;">32k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.6.5.4.2"><span class="ltx_text" id="S3.T5.6.5.4.2.1" style="font-size:90%;">21.09%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.6.5.4.3"><span class="ltx_text" id="S3.T5.6.5.4.3.1" style="font-size:90%;">20.97%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.6.5.4.4"><span class="ltx_text" id="S3.T5.6.5.4.4.1" style="font-size:90%;">27.93%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.6.6.5">
<td class="ltx_td ltx_align_center" id="S3.T5.6.6.5.1"><span class="ltx_text" id="S3.T5.6.6.5.1.1" style="font-size:90%;">64k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.6.6.5.2"><span class="ltx_text" id="S3.T5.6.6.5.2.1" style="font-size:90%;">9.43%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.6.6.5.3"><span class="ltx_text" id="S3.T5.6.6.5.3.1" style="font-size:90%;">10.98%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.6.6.5.4"><span class="ltx_text" id="S3.T5.6.6.5.4.1" style="font-size:90%;">11.32%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.6.7.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.6.7.6.1"><span class="ltx_text" id="S3.T5.6.7.6.1.1" style="font-size:90%;">128k</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.6.7.6.2"><span class="ltx_text" id="S3.T5.6.7.6.2.1" style="font-size:90%;">6.20%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.6.7.6.3"><span class="ltx_text" id="S3.T5.6.7.6.3.1" style="font-size:90%;">6.89%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.6.7.6.4"><span class="ltx_text" id="S3.T5.6.7.6.4.1" style="font-size:90%;">7.32%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the density of the attention mechanism across various context lengths (4k, 8k, 16k, 32k, 64k, 128k tokens) using a stride of 8. Density refers to the proportion of attention computation performed, with lower density implying higher sparsity.  The results show that using a stride of 8 leads to lower sparsity (more computation) compared to strides of 4 or 16.  Furthermore, as the context length increases, the density of the attention decreases, demonstrating that the method achieves greater sparsity with longer sequences.
> <details>
> <summary>read the caption</summary>
> Table 5: Density on Different Context Lengths. Stride S=8𝑆8S=8italic_S = 8 achieves lower sparsity, and as context length increases, sparsity generally increases (lower density).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T6.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T6.2.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S3.T6.2.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T6.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S3.T6.1.1.1.1.1" style="font-size:90%;">Stride </span><math alttext="S=8" class="ltx_Math" display="inline" id="S3.T6.1.1.1.1.m1.1"><semantics id="S3.T6.1.1.1.1.m1.1a"><mrow id="S3.T6.1.1.1.1.m1.1.1" xref="S3.T6.1.1.1.1.m1.1.1.cmml"><mi id="S3.T6.1.1.1.1.m1.1.1.2" mathsize="90%" xref="S3.T6.1.1.1.1.m1.1.1.2.cmml">S</mi><mo id="S3.T6.1.1.1.1.m1.1.1.1" mathsize="90%" xref="S3.T6.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S3.T6.1.1.1.1.m1.1.1.3" mathsize="90%" xref="S3.T6.1.1.1.1.m1.1.1.3.cmml">8</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T6.1.1.1.1.m1.1b"><apply id="S3.T6.1.1.1.1.m1.1.1.cmml" xref="S3.T6.1.1.1.1.m1.1.1"><eq id="S3.T6.1.1.1.1.m1.1.1.1.cmml" xref="S3.T6.1.1.1.1.m1.1.1.1"></eq><ci id="S3.T6.1.1.1.1.m1.1.1.2.cmml" xref="S3.T6.1.1.1.1.m1.1.1.2">𝑆</ci><cn id="S3.T6.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S3.T6.1.1.1.1.m1.1.1.3">8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.1.1.1.1.m1.1c">S=8</annotation><annotation encoding="application/x-llamapun" id="S3.T6.1.1.1.1.m1.1d">italic_S = 8</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T6.2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S3.T6.2.2.2.2.1" style="font-size:90%;">Stride </span><math alttext="S=16" class="ltx_Math" display="inline" id="S3.T6.2.2.2.2.m1.1"><semantics id="S3.T6.2.2.2.2.m1.1a"><mrow id="S3.T6.2.2.2.2.m1.1.1" xref="S3.T6.2.2.2.2.m1.1.1.cmml"><mi id="S3.T6.2.2.2.2.m1.1.1.2" mathsize="90%" xref="S3.T6.2.2.2.2.m1.1.1.2.cmml">S</mi><mo id="S3.T6.2.2.2.2.m1.1.1.1" mathsize="90%" xref="S3.T6.2.2.2.2.m1.1.1.1.cmml">=</mo><mn id="S3.T6.2.2.2.2.m1.1.1.3" mathsize="90%" xref="S3.T6.2.2.2.2.m1.1.1.3.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T6.2.2.2.2.m1.1b"><apply id="S3.T6.2.2.2.2.m1.1.1.cmml" xref="S3.T6.2.2.2.2.m1.1.1"><eq id="S3.T6.2.2.2.2.m1.1.1.1.cmml" xref="S3.T6.2.2.2.2.m1.1.1.1"></eq><ci id="S3.T6.2.2.2.2.m1.1.1.2.cmml" xref="S3.T6.2.2.2.2.m1.1.1.2">𝑆</ci><cn id="S3.T6.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="S3.T6.2.2.2.2.m1.1.1.3">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.2.2.2.2.m1.1c">S=16</annotation><annotation encoding="application/x-llamapun" id="S3.T6.2.2.2.2.m1.1d">italic_S = 16</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S3.T6.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S3.T6.2.2.3.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.3.1.1.1" style="font-size:90%;">Metric</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T6.2.2.3.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.3.1.2.1" style="font-size:90%;">32k</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T6.2.2.3.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.3.1.3.1" style="font-size:90%;">Avg.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T6.2.2.3.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.3.1.4.1" style="font-size:90%;">Density</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T6.2.2.3.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.3.1.5.1" style="font-size:90%;">32k</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T6.2.2.3.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.3.1.6.1" style="font-size:90%;">Avg.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T6.2.2.3.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.3.1.7.1" style="font-size:90%;">Density</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T6.2.2.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T6.2.2.4.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.4.1.1.1" style="font-size:90%;">Random</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.2.4.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.4.1.2.1" style="font-size:90%;">82.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.2.4.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.4.1.3.1" style="font-size:90%;">82.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.2.4.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.4.1.4.1" style="font-size:90%;">27.57%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.2.4.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.4.1.5.1" style="font-size:90%;">82.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.2.4.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.4.1.6.1" style="font-size:90%;">80.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.2.4.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.4.1.7.1" style="font-size:90%;">31.36%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.2.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T6.2.2.5.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.5.2.1.1" style="font-size:90%;">Diagonal</span></th>
<td class="ltx_td ltx_align_center" id="S3.T6.2.2.5.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.5.2.2.1" style="font-size:90%;">76.47</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.2.5.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.5.2.3.1" style="font-size:90%;">81.06</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.2.5.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.5.2.4.1" style="font-size:90%;">24.47%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.2.5.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.5.2.5.1" style="font-size:90%;">58.26</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.2.5.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.5.2.6.1" style="font-size:90%;">79.63</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.2.5.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.5.2.7.1" style="font-size:90%;">25.31%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.2.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T6.2.2.6.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T6.2.2.6.3.1.1" style="font-size:90%;">Antidiagonal</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T6.2.2.6.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T6.2.2.6.3.2.1" style="font-size:90%;">90.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T6.2.2.6.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T6.2.2.6.3.3.1" style="font-size:90%;">88.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T6.2.2.6.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.6.3.4.1" style="font-size:90%;">20.97%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T6.2.2.6.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T6.2.2.6.3.5.1" style="font-size:90%;">90.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T6.2.2.6.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T6.2.2.6.3.6.1" style="font-size:90%;">88.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T6.2.2.6.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T6.2.2.6.3.7.1" style="font-size:90%;">27.93%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents an ablation study comparing three different patterns used for predicting attention block importance in the XAttention model: random, diagonal, and antidiagonal.  The study measures the average accuracy and density (sparsity) achieved by each pattern while maintaining the same computational cost.  The results demonstrate that the antidiagonal pattern outperforms random and diagonal patterns, achieving both the highest accuracy and the lowest density, which translates to superior efficiency without compromising performance.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison of different patterns. For the same computation, the antidiagonal achieves the lowest density and the highest score.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T7.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T7.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T7.4.4.4.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T7.4.4.4.5.1" style="font-size:90%;">Stride</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T7.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="S=4" class="ltx_Math" display="inline" id="S3.T7.1.1.1.1.m1.1"><semantics id="S3.T7.1.1.1.1.m1.1a"><mrow id="S3.T7.1.1.1.1.m1.1.1" xref="S3.T7.1.1.1.1.m1.1.1.cmml"><mi id="S3.T7.1.1.1.1.m1.1.1.2" mathsize="90%" xref="S3.T7.1.1.1.1.m1.1.1.2.cmml">S</mi><mo id="S3.T7.1.1.1.1.m1.1.1.1" mathsize="90%" xref="S3.T7.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S3.T7.1.1.1.1.m1.1.1.3" mathsize="90%" xref="S3.T7.1.1.1.1.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T7.1.1.1.1.m1.1b"><apply id="S3.T7.1.1.1.1.m1.1.1.cmml" xref="S3.T7.1.1.1.1.m1.1.1"><eq id="S3.T7.1.1.1.1.m1.1.1.1.cmml" xref="S3.T7.1.1.1.1.m1.1.1.1"></eq><ci id="S3.T7.1.1.1.1.m1.1.1.2.cmml" xref="S3.T7.1.1.1.1.m1.1.1.2">𝑆</ci><cn id="S3.T7.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S3.T7.1.1.1.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T7.1.1.1.1.m1.1c">S=4</annotation><annotation encoding="application/x-llamapun" id="S3.T7.1.1.1.1.m1.1d">italic_S = 4</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T7.2.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="S=8" class="ltx_Math" display="inline" id="S3.T7.2.2.2.2.m1.1"><semantics id="S3.T7.2.2.2.2.m1.1a"><mrow id="S3.T7.2.2.2.2.m1.1.1" xref="S3.T7.2.2.2.2.m1.1.1.cmml"><mi id="S3.T7.2.2.2.2.m1.1.1.2" mathsize="90%" xref="S3.T7.2.2.2.2.m1.1.1.2.cmml">S</mi><mo id="S3.T7.2.2.2.2.m1.1.1.1" mathsize="90%" xref="S3.T7.2.2.2.2.m1.1.1.1.cmml">=</mo><mn id="S3.T7.2.2.2.2.m1.1.1.3" mathsize="90%" xref="S3.T7.2.2.2.2.m1.1.1.3.cmml">8</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T7.2.2.2.2.m1.1b"><apply id="S3.T7.2.2.2.2.m1.1.1.cmml" xref="S3.T7.2.2.2.2.m1.1.1"><eq id="S3.T7.2.2.2.2.m1.1.1.1.cmml" xref="S3.T7.2.2.2.2.m1.1.1.1"></eq><ci id="S3.T7.2.2.2.2.m1.1.1.2.cmml" xref="S3.T7.2.2.2.2.m1.1.1.2">𝑆</ci><cn id="S3.T7.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="S3.T7.2.2.2.2.m1.1.1.3">8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T7.2.2.2.2.m1.1c">S=8</annotation><annotation encoding="application/x-llamapun" id="S3.T7.2.2.2.2.m1.1d">italic_S = 8</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T7.3.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="S=16" class="ltx_Math" display="inline" id="S3.T7.3.3.3.3.m1.1"><semantics id="S3.T7.3.3.3.3.m1.1a"><mrow id="S3.T7.3.3.3.3.m1.1.1" xref="S3.T7.3.3.3.3.m1.1.1.cmml"><mi id="S3.T7.3.3.3.3.m1.1.1.2" mathsize="90%" xref="S3.T7.3.3.3.3.m1.1.1.2.cmml">S</mi><mo id="S3.T7.3.3.3.3.m1.1.1.1" mathsize="90%" xref="S3.T7.3.3.3.3.m1.1.1.1.cmml">=</mo><mn id="S3.T7.3.3.3.3.m1.1.1.3" mathsize="90%" xref="S3.T7.3.3.3.3.m1.1.1.3.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T7.3.3.3.3.m1.1b"><apply id="S3.T7.3.3.3.3.m1.1.1.cmml" xref="S3.T7.3.3.3.3.m1.1.1"><eq id="S3.T7.3.3.3.3.m1.1.1.1.cmml" xref="S3.T7.3.3.3.3.m1.1.1.1"></eq><ci id="S3.T7.3.3.3.3.m1.1.1.2.cmml" xref="S3.T7.3.3.3.3.m1.1.1.2">𝑆</ci><cn id="S3.T7.3.3.3.3.m1.1.1.3.cmml" type="integer" xref="S3.T7.3.3.3.3.m1.1.1.3">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T7.3.3.3.3.m1.1c">S=16</annotation><annotation encoding="application/x-llamapun" id="S3.T7.3.3.3.3.m1.1d">italic_S = 16</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T7.4.4.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="S=64" class="ltx_Math" display="inline" id="S3.T7.4.4.4.4.m1.1"><semantics id="S3.T7.4.4.4.4.m1.1a"><mrow id="S3.T7.4.4.4.4.m1.1.1" xref="S3.T7.4.4.4.4.m1.1.1.cmml"><mi id="S3.T7.4.4.4.4.m1.1.1.2" mathsize="90%" xref="S3.T7.4.4.4.4.m1.1.1.2.cmml">S</mi><mo id="S3.T7.4.4.4.4.m1.1.1.1" mathsize="90%" xref="S3.T7.4.4.4.4.m1.1.1.1.cmml">=</mo><mn id="S3.T7.4.4.4.4.m1.1.1.3" mathsize="90%" xref="S3.T7.4.4.4.4.m1.1.1.3.cmml">64</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T7.4.4.4.4.m1.1b"><apply id="S3.T7.4.4.4.4.m1.1.1.cmml" xref="S3.T7.4.4.4.4.m1.1.1"><eq id="S3.T7.4.4.4.4.m1.1.1.1.cmml" xref="S3.T7.4.4.4.4.m1.1.1.1"></eq><ci id="S3.T7.4.4.4.4.m1.1.1.2.cmml" xref="S3.T7.4.4.4.4.m1.1.1.2">𝑆</ci><cn id="S3.T7.4.4.4.4.m1.1.1.3.cmml" type="integer" xref="S3.T7.4.4.4.4.m1.1.1.3">64</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T7.4.4.4.4.m1.1c">S=64</annotation><annotation encoding="application/x-llamapun" id="S3.T7.4.4.4.4.m1.1d">italic_S = 64</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T7.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T7.4.4.5.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T7.4.4.5.1.1.1" style="font-size:90%;">Avg</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.4.4.5.1.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T7.4.4.5.1.2.1" style="font-size:90%;">88.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.4.4.5.1.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T7.4.4.5.1.3.1" style="font-size:90%;">88.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.4.4.5.1.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T7.4.4.5.1.4.1" style="font-size:90%;">88.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.4.4.5.1.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T7.4.4.5.1.5.1" style="font-size:90%;">81.21</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.4.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T7.4.4.6.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T7.4.4.6.2.1.1" style="font-size:90%;">Density</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T7.4.4.6.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T7.4.4.6.2.2.1" style="font-size:90%;">21.09%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T7.4.4.6.2.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T7.4.4.6.2.3.1" style="font-size:90%;">20.97%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T7.4.4.6.2.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T7.4.4.6.2.4.1" style="font-size:90%;">27.93%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T7.4.4.6.2.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T7.4.4.6.2.5.1" style="font-size:90%;">39.88%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of different stride sizes (S) used in the XAttention algorithm on the accuracy of identifying important attention blocks. The results show that using excessively large strides negatively affects the ability to differentiate slash patterns of varying lengths, ultimately leading to decreased overall accuracy.  In essence, it explores the trade-off between computational efficiency (larger strides mean less computation) and the accuracy of identifying important attention blocks.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison of different Strides. Excessively long strides fail to distinguish slash patterns with different lengths, leading to decreased accuracy.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T8.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T8.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T8.3.3.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.3.4.1" style="font-size:90%;">Stride</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T8.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="S=4" class="ltx_Math" display="inline" id="S3.T8.1.1.1.1.m1.1"><semantics id="S3.T8.1.1.1.1.m1.1a"><mrow id="S3.T8.1.1.1.1.m1.1.1" xref="S3.T8.1.1.1.1.m1.1.1.cmml"><mi id="S3.T8.1.1.1.1.m1.1.1.2" mathsize="90%" xref="S3.T8.1.1.1.1.m1.1.1.2.cmml">S</mi><mo id="S3.T8.1.1.1.1.m1.1.1.1" mathsize="90%" xref="S3.T8.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S3.T8.1.1.1.1.m1.1.1.3" mathsize="90%" xref="S3.T8.1.1.1.1.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T8.1.1.1.1.m1.1b"><apply id="S3.T8.1.1.1.1.m1.1.1.cmml" xref="S3.T8.1.1.1.1.m1.1.1"><eq id="S3.T8.1.1.1.1.m1.1.1.1.cmml" xref="S3.T8.1.1.1.1.m1.1.1.1"></eq><ci id="S3.T8.1.1.1.1.m1.1.1.2.cmml" xref="S3.T8.1.1.1.1.m1.1.1.2">𝑆</ci><cn id="S3.T8.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S3.T8.1.1.1.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.1.1.1.1.m1.1c">S=4</annotation><annotation encoding="application/x-llamapun" id="S3.T8.1.1.1.1.m1.1d">italic_S = 4</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T8.2.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="S=8" class="ltx_Math" display="inline" id="S3.T8.2.2.2.2.m1.1"><semantics id="S3.T8.2.2.2.2.m1.1a"><mrow id="S3.T8.2.2.2.2.m1.1.1" xref="S3.T8.2.2.2.2.m1.1.1.cmml"><mi id="S3.T8.2.2.2.2.m1.1.1.2" mathsize="90%" xref="S3.T8.2.2.2.2.m1.1.1.2.cmml">S</mi><mo id="S3.T8.2.2.2.2.m1.1.1.1" mathsize="90%" xref="S3.T8.2.2.2.2.m1.1.1.1.cmml">=</mo><mn id="S3.T8.2.2.2.2.m1.1.1.3" mathsize="90%" xref="S3.T8.2.2.2.2.m1.1.1.3.cmml">8</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T8.2.2.2.2.m1.1b"><apply id="S3.T8.2.2.2.2.m1.1.1.cmml" xref="S3.T8.2.2.2.2.m1.1.1"><eq id="S3.T8.2.2.2.2.m1.1.1.1.cmml" xref="S3.T8.2.2.2.2.m1.1.1.1"></eq><ci id="S3.T8.2.2.2.2.m1.1.1.2.cmml" xref="S3.T8.2.2.2.2.m1.1.1.2">𝑆</ci><cn id="S3.T8.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="S3.T8.2.2.2.2.m1.1.1.3">8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.2.2.2.2.m1.1c">S=8</annotation><annotation encoding="application/x-llamapun" id="S3.T8.2.2.2.2.m1.1d">italic_S = 8</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T8.3.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="S=16" class="ltx_Math" display="inline" id="S3.T8.3.3.3.3.m1.1"><semantics id="S3.T8.3.3.3.3.m1.1a"><mrow id="S3.T8.3.3.3.3.m1.1.1" xref="S3.T8.3.3.3.3.m1.1.1.cmml"><mi id="S3.T8.3.3.3.3.m1.1.1.2" mathsize="90%" xref="S3.T8.3.3.3.3.m1.1.1.2.cmml">S</mi><mo id="S3.T8.3.3.3.3.m1.1.1.1" mathsize="90%" xref="S3.T8.3.3.3.3.m1.1.1.1.cmml">=</mo><mn id="S3.T8.3.3.3.3.m1.1.1.3" mathsize="90%" xref="S3.T8.3.3.3.3.m1.1.1.3.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T8.3.3.3.3.m1.1b"><apply id="S3.T8.3.3.3.3.m1.1.1.cmml" xref="S3.T8.3.3.3.3.m1.1.1"><eq id="S3.T8.3.3.3.3.m1.1.1.1.cmml" xref="S3.T8.3.3.3.3.m1.1.1.1"></eq><ci id="S3.T8.3.3.3.3.m1.1.1.2.cmml" xref="S3.T8.3.3.3.3.m1.1.1.2">𝑆</ci><cn id="S3.T8.3.3.3.3.m1.1.1.3.cmml" type="integer" xref="S3.T8.3.3.3.3.m1.1.1.3">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.3.3.3.3.m1.1c">S=16</annotation><annotation encoding="application/x-llamapun" id="S3.T8.3.3.3.3.m1.1d">italic_S = 16</annotation></semantics></math></th>
</tr>
<tr class="ltx_tr" id="S3.T8.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S3.T8.3.3.4.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.4.1.1.1" style="font-size:90%;">Metric</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T8.3.3.4.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.4.1.2.1" style="font-size:90%;">Avg</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T8.3.3.4.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.4.1.3.1" style="font-size:90%;">Density</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T8.3.3.4.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.4.1.4.1" style="font-size:90%;">Avg</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T8.3.3.4.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.4.1.5.1" style="font-size:90%;">Density</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T8.3.3.4.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.4.1.6.1" style="font-size:90%;">Avg</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T8.3.3.4.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.4.1.7.1" style="font-size:90%;">Density</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T8.3.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T8.3.3.5.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.5.1.1.1" style="font-size:90%;">Top K</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.3.3.5.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.5.1.2.1" style="font-size:90%;">84.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.3.3.5.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.5.1.3.1" style="font-size:90%;">17.40%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.3.3.5.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.5.1.4.1" style="font-size:90%;">84.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.3.3.5.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.5.1.5.1" style="font-size:90%;">19.92%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.3.3.5.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.5.1.6.1" style="font-size:90%;">83.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.3.3.5.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.5.1.7.1" style="font-size:90%;">30.15%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.3.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T8.3.3.6.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.6.2.1.1" style="font-size:90%;">Ratio</span></th>
<td class="ltx_td ltx_align_center" id="S3.T8.3.3.6.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.6.2.2.1" style="font-size:90%;">85.96</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.3.3.6.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.6.2.3.1" style="font-size:90%;">21.00%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.3.3.6.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.6.2.4.1" style="font-size:90%;">85.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.3.3.6.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.6.2.5.1" style="font-size:90%;">21.00%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.3.3.6.2.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.6.2.6.1" style="font-size:90%;">84.24</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.3.3.6.2.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.6.2.7.1" style="font-size:90%;">27.00%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.3.3.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T8.3.3.7.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T8.3.3.7.3.1.1" style="font-size:90%;">Threshold</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T8.3.3.7.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T8.3.3.7.3.2.1" style="font-size:90%;">88.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T8.3.3.7.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.7.3.3.1" style="font-size:90%;">21.09%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T8.3.3.7.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T8.3.3.7.3.4.1" style="font-size:90%;">88.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T8.3.3.7.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.7.3.5.1" style="font-size:90%;">20.97%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T8.3.3.7.3.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T8.3.3.7.3.6.1" style="font-size:90%;">88.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T8.3.3.7.3.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T8.3.3.7.3.7.1" style="font-size:90%;">27.93%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares three different block selection algorithms used in XAttention for sparse attention computation: Top-K, Top-Ratio, and the proposed Threshold-based selection (Dynamic Sparsity). It shows the average density and performance (accuracy) of each method across various stride sizes (4, 8, and 16), which determine the sparsity level.  The goal is to find the optimal balance between computational efficiency and accuracy in identifying important attention blocks.
> <details>
> <summary>read the caption</summary>
> Table 8: Comparison of different selection algorithms.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T9.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T9.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T9.3.3.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T9.3.3.3.4.1" style="font-size:90%;">Stride</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T9.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="S=4" class="ltx_Math" display="inline" id="S3.T9.1.1.1.1.m1.1"><semantics id="S3.T9.1.1.1.1.m1.1a"><mrow id="S3.T9.1.1.1.1.m1.1.1" xref="S3.T9.1.1.1.1.m1.1.1.cmml"><mi id="S3.T9.1.1.1.1.m1.1.1.2" mathsize="90%" xref="S3.T9.1.1.1.1.m1.1.1.2.cmml">S</mi><mo id="S3.T9.1.1.1.1.m1.1.1.1" mathsize="90%" xref="S3.T9.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S3.T9.1.1.1.1.m1.1.1.3" mathsize="90%" xref="S3.T9.1.1.1.1.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T9.1.1.1.1.m1.1b"><apply id="S3.T9.1.1.1.1.m1.1.1.cmml" xref="S3.T9.1.1.1.1.m1.1.1"><eq id="S3.T9.1.1.1.1.m1.1.1.1.cmml" xref="S3.T9.1.1.1.1.m1.1.1.1"></eq><ci id="S3.T9.1.1.1.1.m1.1.1.2.cmml" xref="S3.T9.1.1.1.1.m1.1.1.2">𝑆</ci><cn id="S3.T9.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S3.T9.1.1.1.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.1.1.1.1.m1.1c">S=4</annotation><annotation encoding="application/x-llamapun" id="S3.T9.1.1.1.1.m1.1d">italic_S = 4</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T9.2.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="S=8" class="ltx_Math" display="inline" id="S3.T9.2.2.2.2.m1.1"><semantics id="S3.T9.2.2.2.2.m1.1a"><mrow id="S3.T9.2.2.2.2.m1.1.1" xref="S3.T9.2.2.2.2.m1.1.1.cmml"><mi id="S3.T9.2.2.2.2.m1.1.1.2" mathsize="90%" xref="S3.T9.2.2.2.2.m1.1.1.2.cmml">S</mi><mo id="S3.T9.2.2.2.2.m1.1.1.1" mathsize="90%" xref="S3.T9.2.2.2.2.m1.1.1.1.cmml">=</mo><mn id="S3.T9.2.2.2.2.m1.1.1.3" mathsize="90%" xref="S3.T9.2.2.2.2.m1.1.1.3.cmml">8</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T9.2.2.2.2.m1.1b"><apply id="S3.T9.2.2.2.2.m1.1.1.cmml" xref="S3.T9.2.2.2.2.m1.1.1"><eq id="S3.T9.2.2.2.2.m1.1.1.1.cmml" xref="S3.T9.2.2.2.2.m1.1.1.1"></eq><ci id="S3.T9.2.2.2.2.m1.1.1.2.cmml" xref="S3.T9.2.2.2.2.m1.1.1.2">𝑆</ci><cn id="S3.T9.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="S3.T9.2.2.2.2.m1.1.1.3">8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.2.2.2.2.m1.1c">S=8</annotation><annotation encoding="application/x-llamapun" id="S3.T9.2.2.2.2.m1.1d">italic_S = 8</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T9.3.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="S=16" class="ltx_Math" display="inline" id="S3.T9.3.3.3.3.m1.1"><semantics id="S3.T9.3.3.3.3.m1.1a"><mrow id="S3.T9.3.3.3.3.m1.1.1" xref="S3.T9.3.3.3.3.m1.1.1.cmml"><mi id="S3.T9.3.3.3.3.m1.1.1.2" mathsize="90%" xref="S3.T9.3.3.3.3.m1.1.1.2.cmml">S</mi><mo id="S3.T9.3.3.3.3.m1.1.1.1" mathsize="90%" xref="S3.T9.3.3.3.3.m1.1.1.1.cmml">=</mo><mn id="S3.T9.3.3.3.3.m1.1.1.3" mathsize="90%" xref="S3.T9.3.3.3.3.m1.1.1.3.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T9.3.3.3.3.m1.1b"><apply id="S3.T9.3.3.3.3.m1.1.1.cmml" xref="S3.T9.3.3.3.3.m1.1.1"><eq id="S3.T9.3.3.3.3.m1.1.1.1.cmml" xref="S3.T9.3.3.3.3.m1.1.1.1"></eq><ci id="S3.T9.3.3.3.3.m1.1.1.2.cmml" xref="S3.T9.3.3.3.3.m1.1.1.2">𝑆</ci><cn id="S3.T9.3.3.3.3.m1.1.1.3.cmml" type="integer" xref="S3.T9.3.3.3.3.m1.1.1.3">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.3.3.3.3.m1.1c">S=16</annotation><annotation encoding="application/x-llamapun" id="S3.T9.3.3.3.3.m1.1d">italic_S = 16</annotation></semantics></math></th>
</tr>
<tr class="ltx_tr" id="S3.T9.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S3.T9.5.5.6.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T9.5.5.6.1.1.1" style="font-size:90%;">Metric</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T9.5.5.6.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T9.5.5.6.1.2.1" style="font-size:90%;">Avg</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T9.5.5.6.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T9.5.5.6.1.3.1" style="font-size:90%;">Density</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T9.5.5.6.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T9.5.5.6.1.4.1" style="font-size:90%;">Avg</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T9.5.5.6.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T9.5.5.6.1.5.1" style="font-size:90%;">Density</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T9.5.5.6.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T9.5.5.6.1.6.1" style="font-size:90%;">Avg</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T9.5.5.6.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T9.5.5.6.1.7.1" style="font-size:90%;">Density</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T9.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T9.4.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="\tau=0.9" class="ltx_Math" display="inline" id="S3.T9.4.4.4.1.m1.1"><semantics id="S3.T9.4.4.4.1.m1.1a"><mrow id="S3.T9.4.4.4.1.m1.1.1" xref="S3.T9.4.4.4.1.m1.1.1.cmml"><mi id="S3.T9.4.4.4.1.m1.1.1.2" mathsize="90%" xref="S3.T9.4.4.4.1.m1.1.1.2.cmml">τ</mi><mo id="S3.T9.4.4.4.1.m1.1.1.1" mathsize="90%" xref="S3.T9.4.4.4.1.m1.1.1.1.cmml">=</mo><mn id="S3.T9.4.4.4.1.m1.1.1.3" mathsize="90%" xref="S3.T9.4.4.4.1.m1.1.1.3.cmml">0.9</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T9.4.4.4.1.m1.1b"><apply id="S3.T9.4.4.4.1.m1.1.1.cmml" xref="S3.T9.4.4.4.1.m1.1.1"><eq id="S3.T9.4.4.4.1.m1.1.1.1.cmml" xref="S3.T9.4.4.4.1.m1.1.1.1"></eq><ci id="S3.T9.4.4.4.1.m1.1.1.2.cmml" xref="S3.T9.4.4.4.1.m1.1.1.2">𝜏</ci><cn id="S3.T9.4.4.4.1.m1.1.1.3.cmml" type="float" xref="S3.T9.4.4.4.1.m1.1.1.3">0.9</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.4.4.4.1.m1.1c">\tau=0.9</annotation><annotation encoding="application/x-llamapun" id="S3.T9.4.4.4.1.m1.1d">italic_τ = 0.9</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T9.4.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T9.4.4.4.2.1" style="font-size:90%;">87.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T9.4.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T9.4.4.4.3.1" style="font-size:90%;">23.06%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T9.4.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T9.4.4.4.4.1" style="font-size:90%;">84.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T9.4.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T9.4.4.4.5.1" style="font-size:90%;">26.13%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T9.4.4.4.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T9.4.4.4.6.1" style="font-size:90%;">85.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T9.4.4.4.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T9.4.4.4.7.1" style="font-size:90%;">28.36%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T9.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T9.5.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T9.5.5.5.1.1" style="font-size:90%;">Minimum </span><math alttext="\tau" class="ltx_Math" display="inline" id="S3.T9.5.5.5.1.m1.1"><semantics id="S3.T9.5.5.5.1.m1.1a"><mi id="S3.T9.5.5.5.1.m1.1.1" mathsize="90%" xref="S3.T9.5.5.5.1.m1.1.1.cmml">τ</mi><annotation-xml encoding="MathML-Content" id="S3.T9.5.5.5.1.m1.1b"><ci id="S3.T9.5.5.5.1.m1.1.1.cmml" xref="S3.T9.5.5.5.1.m1.1.1">𝜏</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.5.5.5.1.m1.1c">\tau</annotation><annotation encoding="application/x-llamapun" id="S3.T9.5.5.5.1.m1.1d">italic_τ</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T9.5.5.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T9.5.5.5.2.1" style="font-size:90%;">88.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T9.5.5.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T9.5.5.5.3.1" style="font-size:90%;">21.09%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T9.5.5.5.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T9.5.5.5.4.1" style="font-size:90%;">88.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T9.5.5.5.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T9.5.5.5.5.1" style="font-size:90%;">20.97%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T9.5.5.5.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T9.5.5.5.6.1" style="font-size:90%;">88.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T9.5.5.5.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T9.5.5.5.7.1" style="font-size:90%;">27.93%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 9 presents a comparison of results obtained using a fixed threshold (T=0.9) versus a dynamically predicted minimum threshold for attention mechanism in the XAttention model.  It demonstrates how the dynamic threshold method enhances both the accuracy of the model and its sparsity (resulting in lower density and faster inference) across different stride sizes (S=4, 8, 16).  The table highlights the improved efficiency and accuracy achieved by using the dynamic programming approach for threshold prediction.
> <details>
> <summary>read the caption</summary>
> Table 9: Minimum Threshold Prediction yields improvements in both accuracy and sparsity, translating to faster inference.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16428/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16428/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16428/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16428/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16428/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16428/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16428/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16428/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16428/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16428/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16428/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16428/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}