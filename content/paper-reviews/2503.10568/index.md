---
title: "Autoregressive Image Generation with Randomized Parallel Decoding"
summary: "ARPG: Randomly generate high-quality images by parallel decoding, outperforming existing methods in efficiency, memory, and quality."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Westlake University",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10568 {{< /keyword >}}
{{< keyword icon="writer" >}} Haopeng Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10568" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10568" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10568/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Autoregressive (AR) models have excelled, especially in language modeling. However, applying next-token prediction to image generation presents challenges since images are structured in a 2D space. Standard AR models struggle with tasks like inpainting and outpainting because generation follows a specific token order, especially in high-resolution. Furthermore, using bidirectional attention, as in MaskGIT, prevents the use of the KV cache, increasing overhead. Thus, there is a need for a framework to support flexible generation orders and maintain efficiency.



This paper introduces a visual Autoregressive model, **ARPG, enabling Randomized Parallel Generation**. It uses a novel 'guided decoding' that decouples positional guidance from content representation. This enables random-order training and generation without needing bidirectional attention. **ARPG supports parallel inference** by concurrently processing multiple queries using a shared KV cache. It achieves state-of-the-art results in image generation, improving throughput and reducing memory usage compared to existing autoregressive models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ARPG enables parallel image generation with random token order using decoupled positional guidance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method achieves state-of-the-art results in controllable image generation conditioned on edges and depth maps. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ARPG sets a new benchmark for high-performance and high-efficiency autoregressive image generation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a **novel AR framework for image generation**, offering a pathway to improve model efficiency and quality while simultaneously reducing memory consumption. This research aligns with the **growing interest in efficient and scalable autoregressive models**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.10568/extracted/6278367/fig/samples.png)

> 🔼 This figure showcases the capabilities of the ARPG model for autoregressive image generation.  Panel (a) demonstrates class-conditional image generation, achieving high quality with only 64 parallel decoding steps. Panel (b) presents a quantitative comparison, highlighting ARPG's superior performance over state-of-the-art methods (VAR and LlamaGen) in terms of speed (throughput), memory efficiency, and image quality (FID).  The remaining panels illustrate the model's versatility: (c) controllable generation, (d) zero-shot capabilities (editing, inpainting, and outpainting), and (e) resolution expansion.
> <details>
> <summary>read the caption</summary>
> Figure 1: Visual Autoregressive Modeling with Randomized Parallel Generation (ARPG): A high-quality and efficient framework for image synthesis. ARPG enables (a) class-conditional generation with just 64-step parallel decoding and (b) outperform recent representative works in this line (e.g., VAR [39], LlamaGen [35]) in throughput, memory consumption, and quality. It further supports (c) controllable generation and zero-shot generalization, including (d) class-conditional editing, inpainting, outpainting, and (e) resolution expansion.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.15">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.15.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.15.1.1.1"><span class="ltx_text" id="S4.T1.15.1.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.15.1.1.2"><span class="ltx_text" id="S4.T1.15.1.1.2.1" style="font-size:90%;">Layers</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.15.1.1.3"><span class="ltx_text" id="S4.T1.15.1.1.3.1" style="font-size:90%;">Hidden Size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.15.1.1.4"><span class="ltx_text" id="S4.T1.15.1.1.4.1" style="font-size:90%;">Heads</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.15.1.1.5"><span class="ltx_text" id="S4.T1.15.1.1.5.1" style="font-size:90%;">Parameters</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.15.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.15.2.1.1"><span class="ltx_text" id="S4.T1.15.2.1.1.1" style="font-size:90%;">ARPG-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.15.2.1.2"><span class="ltx_text" id="S4.T1.15.2.1.2.1" style="font-size:90%;">12+12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.15.2.1.3"><span class="ltx_text" id="S4.T1.15.2.1.3.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.15.2.1.4"><span class="ltx_text" id="S4.T1.15.2.1.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.15.2.1.5"><span class="ltx_text" id="S4.T1.15.2.1.5.1" style="font-size:90%;">320 M</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.3.2">
<td class="ltx_td ltx_align_left" id="S4.T1.15.3.2.1"><span class="ltx_text" id="S4.T1.15.3.2.1.1" style="font-size:90%;">ARPG-XL</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.3.2.2"><span class="ltx_text" id="S4.T1.15.3.2.2.1" style="font-size:90%;">18+18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.3.2.3"><span class="ltx_text" id="S4.T1.15.3.2.3.1" style="font-size:90%;">1280</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.3.2.4"><span class="ltx_text" id="S4.T1.15.3.2.4.1" style="font-size:90%;">20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.3.2.5"><span class="ltx_text" id="S4.T1.15.3.2.5.1" style="font-size:90%;">719 M</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.4.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.15.4.3.1"><span class="ltx_text" id="S4.T1.15.4.3.1.1" style="font-size:90%;">ARPG-XXL</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.15.4.3.2"><span class="ltx_text" id="S4.T1.15.4.3.2.1" style="font-size:90%;">24+24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.15.4.3.3"><span class="ltx_text" id="S4.T1.15.4.3.3.1" style="font-size:90%;">1536</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.15.4.3.4"><span class="ltx_text" id="S4.T1.15.4.3.4.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.15.4.3.5"><span class="ltx_text" id="S4.T1.15.4.3.5.1" style="font-size:90%;">1.3 B</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table details the architecture of three different autoregressive models (ARPG-L, ARPG-XL, and ARPG-XXL).  It shows the number of layers in the first-pass decoder and second-pass decoder,  the hidden size, the number of attention heads, and the total number of parameters for each model. The first-pass decoder extracts contextual representations, while the second-pass decoder utilizes target-aware queries to guide the prediction process.  The table highlights the scalability of the ARPG model architecture as the model size increases.
> <details>
> <summary>read the caption</summary>
> Table 1: Architectural design of different models. X+Y𝑋𝑌X+Yitalic_X + italic_Y layers represent the first-pass decoder and the second-pass decoder, which are X𝑋Xitalic_X layers and Y𝑌Yitalic_Y layers, respectively.
> </details>





### In-depth insights


#### Guided Decoding
**Guided decoding** suggests a targeted approach to autoregressive generation, moving beyond the traditional raster-scan order. The core idea revolves around **explicitly guiding the generation process** to determine the next token's position. This is achieved by **decoupling positional guidance from content representation**, which is encoded as queries and key-value pairs, and **incorporating the guidance directly into the causal attention mechanism**. By doing this it ensures that random-order training and generation are possible, eliminating the necessity for bidirectional attention. The benefits are **zero-shot generalization** capabilities, which enable more efficient parallel decoding by processing multiple queries simultaneously with shared KV cache. In essence, **guided decoding represents a significant departure from standard autoregressive techniques**, offering a more efficient and flexible approach to generative modeling.

#### Parallelization
Parallelization is crucial for efficient image generation. **Traditional autoregressive models** are sequential, limiting speed. This research likely introduces a method to **break this dependency**, allowing simultaneous processing of different image regions or tokens.  **Shared KV cache** enables parallel decoding of all tokens to be predicted, it can significantly boost throughput without excessive memory. By processing multiple queries simultaneously, the framework likely achieves substantial speedups compared to standard autoregressive approaches. The method probably leverages techniques that breaks the image into independent segments. The key is probably efficient management of dependencies and a robust parallel processing strategy.

#### Zero-Shot AR
**Zero-shot autoregressive (AR) models** represent a fascinating frontier in generative modeling, exhibiting the capacity to produce outputs for unseen tasks without explicit retraining. This capability stems from the model's ability to learn a generalizable representation of the underlying data distribution. **A key challenge** lies in designing architectures and training strategies that promote this generalization. Techniques such as meta-learning, auxiliary tasks, and contrastive learning can be employed to enhance the model's adaptability. Furthermore, careful consideration must be given to the model's inductive biases to ensure that it is well-suited to the target domain. **Evaluation of zero-shot AR models** requires the use of appropriate metrics that can assess the quality and diversity of the generated outputs, as well as their relevance to the unseen tasks. Analyzing failure cases is also crucial for identifying areas where the model can be improved. As the field of AR modeling continues to evolve, **zero-shot learning** promises to unlock new possibilities for creative and intelligent systems.

#### 2-Pass Decoder
The concept of a '2-Pass Decoder,' while not explicitly detailed, suggests a strategy to refine autoregressive image generation. It likely involves an initial pass to **capture global context** and create key-value pairs representing this distilled information.  A subsequent pass would then use **target-aware queries** to selectively attend to this global context, guiding the generation of individual tokens. This approach could balance computational efficiency, by processing the entire image initially, with precise, localized control during token generation.  The potential benefits include better handling of long-range dependencies and improved coherence in the generated image, all while leveraging parallel processing for speed. Further investigation into how these passes are structured, what information is carried, and how the attention mechanisms operate would be needed to fully understand its impact.

#### Token Ordering
The token ordering in autoregressive image generation is a critical factor influencing both efficiency and quality. **Traditional raster-scan orders** limit parallelization and generalization to tasks requiring non-causal dependencies like inpainting. **Randomized token orders** offer flexibility, potentially improving zero-shot capabilities. However, effective random ordering necessitates explicit positional guidance to avoid prediction ambiguity. Methods like positional instruction tokens incur overhead, highlighting the challenge of balancing flexibility with computational cost. The design of the token ordering strategy directly impacts the model's ability to capture long-range dependencies and generate coherent images, demanding a careful consideration of trade-offs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10568/extracted/6278367/fig/control.png)

> 🔼 Figure 2 illustrates the differences in how three different autoregressive models (RAR, RandAR, and ARPG) handle the positional information of the next predicted token during image generation. RAR fuses positional information into the current token using additive positional embedding. RandAR explicitly inserts the position as an instructional token in the input sequence.  ARPG integrates positional information into the query of the attention mechanism, decoupling positional guidance from content representation. The corresponding probability models for RAR and RandAR are shown, highlighting their differences in incorporating position information.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of different methods. RAR [50]: The position of the next predicted token is fused into the current token via additive positional embedding. Its joint probability distribution is defined as ∏i=1np⁢(xτi∣xτ1+pτ2,…,xτi−1+pτi)superscriptsubscriptproduct𝑖1𝑛𝑝conditionalsubscript𝑥subscript𝜏𝑖subscript𝑥subscript𝜏1subscript𝑝subscript𝜏2…subscript𝑥subscript𝜏𝑖1subscript𝑝subscript𝜏𝑖\prod_{i=1}^{n}p\big{(}x_{\tau_{i}}\mid x_{\tau_{1}}+p_{\tau_{2}},\dots,x_{% \tau_{i-1}}+p_{\tau_{i}}\big{)}∏ start_POSTSUBSCRIPT italic_i = 1 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_n end_POSTSUPERSCRIPT italic_p ( italic_x start_POSTSUBSCRIPT italic_τ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT end_POSTSUBSCRIPT ∣ italic_x start_POSTSUBSCRIPT italic_τ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT end_POSTSUBSCRIPT + italic_p start_POSTSUBSCRIPT italic_τ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT end_POSTSUBSCRIPT , … , italic_x start_POSTSUBSCRIPT italic_τ start_POSTSUBSCRIPT italic_i - 1 end_POSTSUBSCRIPT end_POSTSUBSCRIPT + italic_p start_POSTSUBSCRIPT italic_τ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT end_POSTSUBSCRIPT ). RandAR [25]: The position of the next predicted token is explicitly inserted as an instructional token within the input sequence. This yields the probability distribution ∏i=1np⁢(xτi∣xτ1,pτ2,…,xτi−1,pτi)superscriptsubscriptproduct𝑖1𝑛𝑝conditionalsubscript𝑥subscript𝜏𝑖subscript𝑥subscript𝜏1subscript𝑝subscript𝜏2…subscript𝑥subscript𝜏𝑖1subscript𝑝subscript𝜏𝑖\prod_{i=1}^{n}p\big{(}x_{\tau_{i}}\mid x_{\tau_{1}},p_{\tau_{2}},\dots,x_{% \tau_{i-1}},p_{\tau_{i}}\big{)}∏ start_POSTSUBSCRIPT italic_i = 1 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_n end_POSTSUPERSCRIPT italic_p ( italic_x start_POSTSUBSCRIPT italic_τ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT end_POSTSUBSCRIPT ∣ italic_x start_POSTSUBSCRIPT italic_τ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT end_POSTSUBSCRIPT , italic_p start_POSTSUBSCRIPT italic_τ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT end_POSTSUBSCRIPT , … , italic_x start_POSTSUBSCRIPT italic_τ start_POSTSUBSCRIPT italic_i - 1 end_POSTSUBSCRIPT end_POSTSUBSCRIPT , italic_p start_POSTSUBSCRIPT italic_τ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT end_POSTSUBSCRIPT ). ARPG (ours): The position of the next predicted token is integrated as a query within the attention mechanism. The corresponding probabilistic model, formalized in Eq. (8).
> </details>



![](https://arxiv.org/html/2503.10568/x2.png)

> 🔼 This figure shows the architecture of the ARPG model, a two-pass decoder architecture. The first pass uses self-attention layers to extract contextual representations of image tokens as key-value pairs.  The second pass uses cross-attention layers with target-aware queries that attend to these key-value pairs to guide the prediction. During training, the number of queries matches the number of key-value pairs. The positional embedding of each key reflects its actual position, while the positional embedding of each query is shifted right to align with its target position.  During inference, multiple queries are input simultaneously, sharing a common KV cache to enable parallel decoding. This architecture enables training and inference in fully random token order.
> <details>
> <summary>read the caption</summary>
> (a) Architecture
> </details>



![](https://arxiv.org/html/2503.10568/x3.png)

> 🔼 This figure illustrates the training and inference mechanisms of the guided decoding process in ARPG.  During training, the number of queries matches the number of key-value pairs.  Each query's positional embedding is right-shifted to align with its target position, while each key's positional embedding reflects its actual position. This allows the model to learn to predict tokens at random positions.  During inference, however, multiple queries are input concurrently, sharing a common KV cache to enable parallel decoding. This shared cache drastically improves efficiency.
> <details>
> <summary>read the caption</summary>
> (b) Training and inference details of guided-decoding
> </details>



![](https://arxiv.org/html/2503.10568/x4.png)

> 🔼 Figure 3 illustrates the ARPG architecture, a two-pass decoder model.  The first pass uses self-attention layers to process the image token sequence and generate global key-value pairs representing contextual information. The second pass employs cross-attention layers with 'target-aware queries' to focus on specific parts of the global key-value pairs, guiding the prediction process. During training, the number of queries equals the number of key-value pairs.  Each key's positional embedding indicates its position in the sequence, while each query's embedding is offset to point to the position of the token to be predicted.  This design allows for parallel decoding during inference because multiple queries can be processed simultaneously using a shared key-value cache.
> <details>
> <summary>read the caption</summary>
> Figure 3: 3(a) ARPG architecture: We employ a Two-Pass Decoder architecture. In the first pass, N𝑁Nitalic_N self-attention layers extract contextual representations of the image token sequence as global key-value pairs. In the second pass, N𝑁Nitalic_N cross-attention layers use target-aware queries that attend to these global key-value pairs to guide prediction. 3(b) During training, the number of queries matches the number of key-value pairs. Each key’s positional embedding reflects its actual position, while each query’s positional embedding is right-shifted to align with its target position. During inference, multiple queries are input simultaneously, sharing a common KV cache to enable parallel decoding.
> </details>



![](https://arxiv.org/html/2503.10568/extracted/6278367/fig/supp-cls.png)

> 🔼 This figure shows several images generated by the ARPG model given different class labels.  It demonstrates the model's ability to generate high-quality, diverse images conditioned on class information. Each image in the grid represents a different class.
> <details>
> <summary>read the caption</summary>
> (a) Class-Conditional Image Generation
> </details>



![](https://arxiv.org/html/2503.10568/extracted/6278367/fig/supp-ctrl.png)

> 🔼 This figure shows example images generated by the ARPG model under the control of additional information, such as canny edges and depth maps.  The model is able to generate images that incorporate these additional inputs, demonstrating its capability for controllable image synthesis.  This showcases the flexibility of the ARPG approach in creating images beyond simple class-conditional generation.
> <details>
> <summary>read the caption</summary>
> (b) Controllable Image Generation
> </details>



![](https://arxiv.org/html/2503.10568/extracted/6278367/fig/supp-outpaint.png)

> 🔼 Figure 4 presents example images generated by the ARPG model.  Subfigure 4(a) showcases class-conditional image generation, where the model generates images based solely on a given class label. Subfigure 4(b) demonstrates controllable image generation, in which the model generates images guided by both a class label and additional conditional information, specifically canny edges and depth maps. This illustrates the model's ability to incorporate external cues to influence the image synthesis process.  All images shown were generated with 64 sampling steps.
> <details>
> <summary>read the caption</summary>
> Figure 4: Generated samples of ARPG on ImageNet-1K 256×\times×256: 4(a) Class-conditional image generation. 4(b) Controllable image generation with canny edges and depth maps as conditions respectively. All images are sampled using 64 steps.
> </details>



![](https://arxiv.org/html/2503.10568/extracted/6278367/fig/supp-inpaint.png)

> 🔼 Figure 5 showcases the model's zero-shot capabilities on image manipulation tasks without explicit training. The top row demonstrates inpainting (filling missing parts of an image) and class-conditional editing (modifying an existing image based on a class label). The bottom row shows outpainting (extending an image beyond its original boundaries). This highlights the model's ability to generalize to various tasks beyond the standard image generation.
> <details>
> <summary>read the caption</summary>
> Figure 5: Samples of zero-shot inference. Top: Inpainting and class-conditional editing. Bottom: Outpainting.
> </details>



![](https://arxiv.org/html/2503.10568/extracted/6278367/fig/supp-expansion.png)

> 🔼 Figure A illustrates the process of controllable image generation using the ARPG model.  It focuses on how the model handles the interaction between queries and keys in the attention mechanism, specifically highlighting how these elements guide the generation process. To simplify the illustration, raster-order generation is used as an example, and the 'value' component of the attention mechanism is omitted.  The class token ([CLS]) is also shown.
> <details>
> <summary>read the caption</summary>
> Figure A: Implementation Details of Controllable Image Generation. For clarity, we illustrate the process using raster-order as an example. The figure only illustrates the interaction between query and key in the attention mechanism and its output, omitting the value for simplicity. [CLS]: Class token.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.12.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.12.6.7"><span class="ltx_text" id="S4.T2.12.6.7.1" style="font-size:90%;">Type</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.12.6.8"><span class="ltx_text" id="S4.T2.12.6.8.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.12.6.9"><span class="ltx_text" id="S4.T2.12.6.9.1" style="font-size:90%;">Parameters</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_tt" id="S4.T2.12.6.10"><span class="ltx_text" id="S4.T2.12.6.10.1" style="font-size:90%;">Steps</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.7.1.1">
<span class="ltx_text" id="S4.T2.7.1.1.1" style="font-size:90%;">Throughput</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.7.1.1.m1.1"><semantics id="S4.T2.7.1.1.m1.1a"><mo id="S4.T2.7.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.7.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.1.1.m1.1b"><ci id="S4.T2.7.1.1.m1.1.1.cmml" xref="S4.T2.7.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_tt" id="S4.T2.8.2.2">
<span class="ltx_text" id="S4.T2.8.2.2.1" style="font-size:90%;">Memory</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.8.2.2.m1.1"><semantics id="S4.T2.8.2.2.m1.1a"><mo id="S4.T2.8.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.8.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.2.2.m1.1b"><ci id="S4.T2.8.2.2.m1.1.1.cmml" xref="S4.T2.8.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.9.3.3">
<span class="ltx_text" id="S4.T2.9.3.3.1" style="font-size:90%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.9.3.3.m1.1"><semantics id="S4.T2.9.3.3.m1.1a"><mo id="S4.T2.9.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.9.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.3.3.m1.1b"><ci id="S4.T2.9.3.3.m1.1.1.cmml" xref="S4.T2.9.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.10.4.4">
<span class="ltx_text" id="S4.T2.10.4.4.1" style="font-size:90%;">IS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.10.4.4.m1.1"><semantics id="S4.T2.10.4.4.m1.1a"><mo id="S4.T2.10.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.10.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.4.4.m1.1b"><ci id="S4.T2.10.4.4.m1.1.1.cmml" xref="S4.T2.10.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.11.5.5">
<span class="ltx_text" id="S4.T2.11.5.5.1" style="font-size:90%;">Precision</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.11.5.5.m1.1"><semantics id="S4.T2.11.5.5.m1.1a"><mo id="S4.T2.11.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.11.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.5.5.m1.1b"><ci id="S4.T2.11.5.5.m1.1.1.cmml" xref="S4.T2.11.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.12.6.6">
<span class="ltx_text" id="S4.T2.12.6.6.1" style="font-size:90%;">Recall</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.12.6.6.m1.1"><semantics id="S4.T2.12.6.6.m1.1a"><mo id="S4.T2.12.6.6.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.12.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.6.6.m1.1b"><ci id="S4.T2.12.6.6.m1.1.1.cmml" xref="S4.T2.12.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.6.6.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.7.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.12.7.1.1" rowspan="3"><span class="ltx_text" id="S4.T2.12.7.1.1.1" style="font-size:90%;">Diffusion</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.12.7.1.2">
<span class="ltx_text" id="S4.T2.12.7.1.2.1" style="font-size:90%;">LDM-4 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.7.1.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a><span class="ltx_text" id="S4.T2.12.7.1.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.7.1.3"><span class="ltx_text" id="S4.T2.12.7.1.3.1" style="font-size:90%;">400 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.7.1.4"><span class="ltx_text" id="S4.T2.12.7.1.4.1" style="font-size:90%;">250</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.12.7.1.5"><span class="ltx_text" id="S4.T2.12.7.1.5.1" style="font-size:90%;">0.83 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.7.1.6"><span class="ltx_text" id="S4.T2.12.7.1.6.1" style="font-size:90%;">5.71 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.7.1.7"><span class="ltx_text" id="S4.T2.12.7.1.7.1" style="font-size:90%;">3.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.12.7.1.8"><span class="ltx_text" id="S4.T2.12.7.1.8.1" style="font-size:90%;">247.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.7.1.9"><span class="ltx_text" id="S4.T2.12.7.1.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.7.1.10"><span class="ltx_text" id="S4.T2.12.7.1.10.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.8.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.8.2.1">
<span class="ltx_text" id="S4.T2.12.8.2.1.1" style="font-size:90%;">DiT-L/2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.8.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="S4.T2.12.8.2.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.8.2.2"><span class="ltx_text" id="S4.T2.12.8.2.2.1" style="font-size:90%;">458 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.8.2.3"><span class="ltx_text" id="S4.T2.12.8.2.3.1" style="font-size:90%;">250</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.8.2.4"><span class="ltx_text" id="S4.T2.12.8.2.4.1" style="font-size:90%;">1.32 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.8.2.5"><span class="ltx_text" id="S4.T2.12.8.2.5.1" style="font-size:90%;">1.62 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.8.2.6"><span class="ltx_text" id="S4.T2.12.8.2.6.1" style="font-size:90%;">5.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.8.2.7"><span class="ltx_text" id="S4.T2.12.8.2.7.1" style="font-size:90%;">167.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.8.2.8"><span class="ltx_text" id="S4.T2.12.8.2.8.1" style="font-size:90%;">0.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.8.2.9"><span class="ltx_text" id="S4.T2.12.8.2.9.1" style="font-size:90%;">0.57</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.9.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.9.3.1">
<span class="ltx_text" id="S4.T2.12.9.3.1.1" style="font-size:90%;">DiT-XL/2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.9.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="S4.T2.12.9.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.9.3.2"><span class="ltx_text" id="S4.T2.12.9.3.2.1" style="font-size:90%;">675 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.9.3.3"><span class="ltx_text" id="S4.T2.12.9.3.3.1" style="font-size:90%;">250</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.9.3.4"><span class="ltx_text" id="S4.T2.12.9.3.4.1" style="font-size:90%;">0.91 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.9.3.5"><span class="ltx_text" id="S4.T2.12.9.3.5.1" style="font-size:90%;">2.14 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.9.3.6"><span class="ltx_text" id="S4.T2.12.9.3.6.1" style="font-size:90%;">2.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.9.3.7"><span class="ltx_text" id="S4.T2.12.9.3.7.1" style="font-size:90%;">278.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.9.3.8"><span class="ltx_text" id="S4.T2.12.9.3.8.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.9.3.9"><span class="ltx_text" id="S4.T2.12.9.3.9.1" style="font-size:90%;">0.57</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.10.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.12.10.4.1" rowspan="3"><span class="ltx_text" id="S4.T2.12.10.4.1.1" style="font-size:90%;">Mask</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.12.10.4.2">
<span class="ltx_text" id="S4.T2.12.10.4.2.1" style="font-size:90%;">MaskGIT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.10.4.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a><span class="ltx_text" id="S4.T2.12.10.4.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.10.4.3"><span class="ltx_text" id="S4.T2.12.10.4.3.1" style="font-size:90%;">227 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.10.4.4"><span class="ltx_text" id="S4.T2.12.10.4.4.1" style="font-size:90%;">8</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.12.10.4.5"><span class="ltx_text" id="S4.T2.12.10.4.5.1" style="font-size:90%;">46.18 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.10.4.6"><span class="ltx_text" id="S4.T2.12.10.4.6.1" style="font-size:90%;">1.71 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.10.4.7"><span class="ltx_text" id="S4.T2.12.10.4.7.1" style="font-size:90%;">6.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.12.10.4.8"><span class="ltx_text" id="S4.T2.12.10.4.8.1" style="font-size:90%;">182.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.10.4.9"><span class="ltx_text" id="S4.T2.12.10.4.9.1" style="font-size:90%;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.10.4.10"><span class="ltx_text" id="S4.T2.12.10.4.10.1" style="font-size:90%;">0.51</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.11.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.11.5.1">
<span class="ltx_text" id="S4.T2.12.11.5.1.1" style="font-size:90%;">MAR-B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.11.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="S4.T2.12.11.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.11.5.2"><span class="ltx_text" id="S4.T2.12.11.5.2.1" style="font-size:90%;">208 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.11.5.3"><span class="ltx_text" id="S4.T2.12.11.5.3.1" style="font-size:90%;">100</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.11.5.4"><span class="ltx_text" id="S4.T2.12.11.5.4.1" style="font-size:90%;">1.71 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.11.5.5"><span class="ltx_text" id="S4.T2.12.11.5.5.1" style="font-size:90%;">1.47 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.11.5.6"><span class="ltx_text" id="S4.T2.12.11.5.6.1" style="font-size:90%;">2.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.11.5.7"><span class="ltx_text" id="S4.T2.12.11.5.7.1" style="font-size:90%;">281.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.11.5.8"><span class="ltx_text" id="S4.T2.12.11.5.8.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.11.5.9"><span class="ltx_text" id="S4.T2.12.11.5.9.1" style="font-size:90%;">0.57</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.12.6.1">
<span class="ltx_text" id="S4.T2.12.12.6.1.1" style="font-size:90%;">MAR-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.12.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="S4.T2.12.12.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.6.2"><span class="ltx_text" id="S4.T2.12.12.6.2.1" style="font-size:90%;">479 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.12.6.3"><span class="ltx_text" id="S4.T2.12.12.6.3.1" style="font-size:90%;">100</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.12.6.4"><span class="ltx_text" id="S4.T2.12.12.6.4.1" style="font-size:90%;">1.27 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.12.6.5"><span class="ltx_text" id="S4.T2.12.12.6.5.1" style="font-size:90%;">2.32 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.6.6"><span class="ltx_text" id="S4.T2.12.12.6.6.1" style="font-size:90%;">1.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.6.7"><span class="ltx_text" id="S4.T2.12.12.6.7.1" style="font-size:90%;">296.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.6.8"><span class="ltx_text" id="S4.T2.12.12.6.8.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.6.9"><span class="ltx_text" id="S4.T2.12.12.6.9.1" style="font-size:90%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.13.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.12.13.7.1" rowspan="3"><span class="ltx_text" id="S4.T2.12.13.7.1.1" style="font-size:90%;">VAR</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.12.13.7.2">
<span class="ltx_text" id="S4.T2.12.13.7.2.1" style="font-size:90%;">VAR-d16 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.13.7.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S4.T2.12.13.7.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.13.7.3"><span class="ltx_text" id="S4.T2.12.13.7.3.1" style="font-size:90%;">310 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.13.7.4"><span class="ltx_text" id="S4.T2.12.13.7.4.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.12.13.7.5"><span class="ltx_text" id="S4.T2.12.13.7.5.1" style="font-size:90%;">114.42 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.13.7.6"><span class="ltx_text" id="S4.T2.12.13.7.6.1" style="font-size:90%;">10.97 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.13.7.7"><span class="ltx_text" id="S4.T2.12.13.7.7.1" style="font-size:90%;">3.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.12.13.7.8"><span class="ltx_text" id="S4.T2.12.13.7.8.1" style="font-size:90%;">274.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.13.7.9"><span class="ltx_text" id="S4.T2.12.13.7.9.1" style="font-size:90%;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.13.7.10"><span class="ltx_text" id="S4.T2.12.13.7.10.1" style="font-size:90%;">0.51</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.14.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.14.8.1">
<span class="ltx_text" id="S4.T2.12.14.8.1.1" style="font-size:90%;">VAR-d20 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.14.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S4.T2.12.14.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.14.8.2"><span class="ltx_text" id="S4.T2.12.14.8.2.1" style="font-size:90%;">600 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.14.8.3"><span class="ltx_text" id="S4.T2.12.14.8.3.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.14.8.4"><span class="ltx_text" id="S4.T2.12.14.8.4.1" style="font-size:90%;">73.65 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.14.8.5"><span class="ltx_text" id="S4.T2.12.14.8.5.1" style="font-size:90%;">16.06 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.14.8.6"><span class="ltx_text" id="S4.T2.12.14.8.6.1" style="font-size:90%;">2.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.14.8.7"><span class="ltx_text" id="S4.T2.12.14.8.7.1" style="font-size:90%;">302.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.14.8.8"><span class="ltx_text" id="S4.T2.12.14.8.8.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.14.8.9"><span class="ltx_text" id="S4.T2.12.14.8.9.1" style="font-size:90%;">0.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.15.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.15.9.1">
<span class="ltx_text" id="S4.T2.12.15.9.1.1" style="font-size:90%;">VAR-d24 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.15.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S4.T2.12.15.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.15.9.2"><span class="ltx_text" id="S4.T2.12.15.9.2.1" style="font-size:90%;">1.0 B</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.15.9.3"><span class="ltx_text" id="S4.T2.12.15.9.3.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.15.9.4"><span class="ltx_text" id="S4.T2.12.15.9.4.1" style="font-size:90%;">48.90 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.15.9.5"><span class="ltx_text" id="S4.T2.12.15.9.5.1" style="font-size:90%;">22.43 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.15.9.6"><span class="ltx_text" id="S4.T2.12.15.9.6.1" style="font-size:90%;">2.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.15.9.7"><span class="ltx_text" id="S4.T2.12.15.9.7.1" style="font-size:90%;">312.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.15.9.8"><span class="ltx_text" id="S4.T2.12.15.9.8.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.15.9.9"><span class="ltx_text" id="S4.T2.12.15.9.9.1" style="font-size:90%;">0.59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.16.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.12.16.10.1" rowspan="12"><span class="ltx_text" id="S4.T2.12.16.10.1.1" style="font-size:90%;">
<span class="ltx_inline-block" id="S4.T2.12.16.10.1.1.1">
<span class="ltx_p" id="S4.T2.12.16.10.1.1.1.1">AR</span>
<span class="ltx_p" id="S4.T2.12.16.10.1.1.1.2">(Raster)</span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.12.16.10.2">
<span class="ltx_text" id="S4.T2.12.16.10.2.1" style="font-size:90%;">VQGAN-re </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.16.10.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S4.T2.12.16.10.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.16.10.3"><span class="ltx_text" id="S4.T2.12.16.10.3.1" style="font-size:90%;">1.4 B</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.16.10.4"><span class="ltx_text" id="S4.T2.12.16.10.4.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.12.16.10.5"><span class="ltx_text" id="S4.T2.12.16.10.5.1" style="font-size:90%;">5.92 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.16.10.6"><span class="ltx_text" id="S4.T2.12.16.10.6.1" style="font-size:90%;">15.15 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.16.10.7"><span class="ltx_text" id="S4.T2.12.16.10.7.1" style="font-size:90%;">5.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.12.16.10.8"><span class="ltx_text" id="S4.T2.12.16.10.8.1" style="font-size:90%;">280.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.16.10.9"><span class="ltx_text" id="S4.T2.12.16.10.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.16.10.10"><span class="ltx_text" id="S4.T2.12.16.10.10.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.17.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.17.11.1">
<span class="ltx_text" id="S4.T2.12.17.11.1.1" style="font-size:90%;">RQ-Trans.-re </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.17.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S4.T2.12.17.11.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.17.11.2"><span class="ltx_text" id="S4.T2.12.17.11.2.1" style="font-size:90%;">3.8 B</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.17.11.3"><span class="ltx_text" id="S4.T2.12.17.11.3.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.17.11.4"><span class="ltx_text" id="S4.T2.12.17.11.4.1" style="font-size:90%;">11.63 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.17.11.5"><span class="ltx_text" id="S4.T2.12.17.11.5.1" style="font-size:90%;">18.43 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.17.11.6"><span class="ltx_text" id="S4.T2.12.17.11.6.1" style="font-size:90%;">3.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.17.11.7"><span class="ltx_text" id="S4.T2.12.17.11.7.1" style="font-size:90%;">323.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.17.11.8"><span class="ltx_text" id="S4.T2.12.17.11.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.17.11.9"><span class="ltx_text" id="S4.T2.12.17.11.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.18.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.12.18.12.1">
<span class="ltx_text" id="S4.T2.12.18.12.1.1" style="font-size:90%;">LlamaGen-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.18.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S4.T2.12.18.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.18.12.2"><span class="ltx_text" id="S4.T2.12.18.12.2.1" style="font-size:90%;">343 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.18.12.3"><span class="ltx_text" id="S4.T2.12.18.12.3.1" style="font-size:90%;">576</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.12.18.12.4"><span class="ltx_text" id="S4.T2.12.18.12.4.1" style="font-size:90%;">4.33 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.18.12.5"><span class="ltx_text" id="S4.T2.12.18.12.5.1" style="font-size:90%;">10.23 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.18.12.6"><span class="ltx_text" id="S4.T2.12.18.12.6.1" style="font-size:90%;">3.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.12.18.12.7"><span class="ltx_text" id="S4.T2.12.18.12.7.1" style="font-size:90%;">256.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.18.12.8"><span class="ltx_text" id="S4.T2.12.18.12.8.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.18.12.9"><span class="ltx_text" id="S4.T2.12.18.12.9.1" style="font-size:90%;">0.52</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.19.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.19.13.1">
<span class="ltx_text" id="S4.T2.12.19.13.1.1" style="font-size:90%;">LlamaGen-XL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.19.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S4.T2.12.19.13.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.19.13.2"><span class="ltx_text" id="S4.T2.12.19.13.2.1" style="font-size:90%;">775 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.19.13.3"><span class="ltx_text" id="S4.T2.12.19.13.3.1" style="font-size:90%;">576</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.19.13.4"><span class="ltx_text" id="S4.T2.12.19.13.4.1" style="font-size:90%;">2.46 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.19.13.5"><span class="ltx_text" id="S4.T2.12.19.13.5.1" style="font-size:90%;">17.11 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.19.13.6"><span class="ltx_text" id="S4.T2.12.19.13.6.1" style="font-size:90%;">2.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.19.13.7"><span class="ltx_text" id="S4.T2.12.19.13.7.1" style="font-size:90%;">244.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.19.13.8"><span class="ltx_text" id="S4.T2.12.19.13.8.1" style="font-size:90%;">0.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.19.13.9"><span class="ltx_text" id="S4.T2.12.19.13.9.1" style="font-size:90%;">0.57</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.20.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.20.14.1">
<span class="ltx_text" id="S4.T2.12.20.14.1.1" style="font-size:90%;">LlamaGen-XXL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.20.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S4.T2.12.20.14.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.20.14.2"><span class="ltx_text" id="S4.T2.12.20.14.2.1" style="font-size:90%;">1.4 B</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.20.14.3"><span class="ltx_text" id="S4.T2.12.20.14.3.1" style="font-size:90%;">576</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.20.14.4"><span class="ltx_text" id="S4.T2.12.20.14.4.1" style="font-size:90%;">1.58 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.20.14.5"><span class="ltx_text" id="S4.T2.12.20.14.5.1" style="font-size:90%;">26.22 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.20.14.6"><span class="ltx_text" id="S4.T2.12.20.14.6.1" style="font-size:90%;">2.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.20.14.7"><span class="ltx_text" id="S4.T2.12.20.14.7.1" style="font-size:90%;">244.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.20.14.8"><span class="ltx_text" id="S4.T2.12.20.14.8.1" style="font-size:90%;">0.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.20.14.9"><span class="ltx_text" id="S4.T2.12.20.14.9.1" style="font-size:90%;">0.57</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.21.15">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.12.21.15.1">
<span class="ltx_text" id="S4.T2.12.21.15.1.1" style="font-size:90%;">PAR-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.21.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a><span class="ltx_text" id="S4.T2.12.21.15.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.21.15.2"><span class="ltx_text" id="S4.T2.12.21.15.2.1" style="font-size:90%;">343 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.21.15.3"><span class="ltx_text" id="S4.T2.12.21.15.3.1" style="font-size:90%;">147</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.12.21.15.4"><span class="ltx_text" id="S4.T2.12.21.15.4.1" style="font-size:90%;">14.77 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.21.15.5"><span class="ltx_text" id="S4.T2.12.21.15.5.1" style="font-size:90%;">10.25 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.21.15.6"><span class="ltx_text" id="S4.T2.12.21.15.6.1" style="font-size:90%;">3.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.12.21.15.7"><span class="ltx_text" id="S4.T2.12.21.15.7.1" style="font-size:90%;">218.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.21.15.8"><span class="ltx_text" id="S4.T2.12.21.15.8.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.21.15.9"><span class="ltx_text" id="S4.T2.12.21.15.9.1" style="font-size:90%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.22.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.22.16.1">
<span class="ltx_text" id="S4.T2.12.22.16.1.1" style="font-size:90%;">PAR-XL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.22.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a><span class="ltx_text" id="S4.T2.12.22.16.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.22.16.2"><span class="ltx_text" id="S4.T2.12.22.16.2.1" style="font-size:90%;">775 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.22.16.3"><span class="ltx_text" id="S4.T2.12.22.16.3.1" style="font-size:90%;">147</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.22.16.4"><span class="ltx_text" id="S4.T2.12.22.16.4.1" style="font-size:90%;">7.91 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.22.16.5"><span class="ltx_text" id="S4.T2.12.22.16.5.1" style="font-size:90%;">17.13 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.22.16.6"><span class="ltx_text" id="S4.T2.12.22.16.6.1" style="font-size:90%;">2.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.22.16.7"><span class="ltx_text" id="S4.T2.12.22.16.7.1" style="font-size:90%;">259.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.22.16.8"><span class="ltx_text" id="S4.T2.12.22.16.8.1" style="font-size:90%;">0.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.22.16.9"><span class="ltx_text" id="S4.T2.12.22.16.9.1" style="font-size:90%;">0.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.23.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.23.17.1">
<span class="ltx_text" id="S4.T2.12.23.17.1.1" style="font-size:90%;">PAR-XXL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.23.17.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a><span class="ltx_text" id="S4.T2.12.23.17.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.23.17.2"><span class="ltx_text" id="S4.T2.12.23.17.2.1" style="font-size:90%;">1.4 B</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.23.17.3"><span class="ltx_text" id="S4.T2.12.23.17.3.1" style="font-size:90%;">147</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.23.17.4"><span class="ltx_text" id="S4.T2.12.23.17.4.1" style="font-size:90%;">5.23 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.23.17.5"><span class="ltx_text" id="S4.T2.12.23.17.5.1" style="font-size:90%;">26.25 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.23.17.6"><span class="ltx_text" id="S4.T2.12.23.17.6.1" style="font-size:90%;">2.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.23.17.7"><span class="ltx_text" id="S4.T2.12.23.17.7.1" style="font-size:90%;">263.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.23.17.8"><span class="ltx_text" id="S4.T2.12.23.17.8.1" style="font-size:90%;">0.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.23.17.9"><span class="ltx_text" id="S4.T2.12.23.17.9.1" style="font-size:90%;">0.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.24.18">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.12.24.18.1">
<span class="ltx_text" id="S4.T2.12.24.18.1.1" style="font-size:90%;">AiM-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.24.18.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S4.T2.12.24.18.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.24.18.2"><span class="ltx_text" id="S4.T2.12.24.18.2.1" style="font-size:90%;">350 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.24.18.3"><span class="ltx_text" id="S4.T2.12.24.18.3.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.12.24.18.4"><span class="ltx_text" id="S4.T2.12.24.18.4.1" style="font-size:90%;">26.47 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.24.18.5"><span class="ltx_text" id="S4.T2.12.24.18.5.1" style="font-size:90%;">4.94 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.24.18.6"><span class="ltx_text" id="S4.T2.12.24.18.6.1" style="font-size:90%;">2.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.12.24.18.7"><span class="ltx_text" id="S4.T2.12.24.18.7.1" style="font-size:90%;">244.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.24.18.8"><span class="ltx_text" id="S4.T2.12.24.18.8.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.24.18.9"><span class="ltx_text" id="S4.T2.12.24.18.9.1" style="font-size:90%;">0.55</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.25.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.25.19.1">
<span class="ltx_text" id="S4.T2.12.25.19.1.1" style="font-size:90%;">AiM-XL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.25.19.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S4.T2.12.25.19.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.25.19.2"><span class="ltx_text" id="S4.T2.12.25.19.2.1" style="font-size:90%;">763 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.25.19.3"><span class="ltx_text" id="S4.T2.12.25.19.3.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.25.19.4"><span class="ltx_text" id="S4.T2.12.25.19.4.1" style="font-size:90%;">18.68 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.25.19.5"><span class="ltx_text" id="S4.T2.12.25.19.5.1" style="font-size:90%;">7.25 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.25.19.6"><span class="ltx_text" id="S4.T2.12.25.19.6.1" style="font-size:90%;">2.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.25.19.7"><span class="ltx_text" id="S4.T2.12.25.19.7.1" style="font-size:90%;">257.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.25.19.8"><span class="ltx_text" id="S4.T2.12.25.19.8.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.25.19.9"><span class="ltx_text" id="S4.T2.12.25.19.9.1" style="font-size:90%;">0.57</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.26.20">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.12.26.20.1">
<span class="ltx_text" id="S4.T2.12.26.20.1.1" style="font-size:90%;">RAR-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.26.20.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S4.T2.12.26.20.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.26.20.2"><span class="ltx_text" id="S4.T2.12.26.20.2.1" style="font-size:90%;">461 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.26.20.3"><span class="ltx_text" id="S4.T2.12.26.20.3.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.12.26.20.4"><span class="ltx_text" id="S4.T2.12.26.20.4.1" style="font-size:90%;">12.08 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.26.20.5"><span class="ltx_text" id="S4.T2.12.26.20.5.1" style="font-size:90%;">6.37 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.26.20.6"><span class="ltx_text" id="S4.T2.12.26.20.6.1" style="font-size:90%;">1.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.12.26.20.7"><span class="ltx_text" id="S4.T2.12.26.20.7.1" style="font-size:90%;">299.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.26.20.8"><span class="ltx_text" id="S4.T2.12.26.20.8.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.26.20.9"><span class="ltx_text" id="S4.T2.12.26.20.9.1" style="font-size:90%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.27.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.27.21.1">
<span class="ltx_text" id="S4.T2.12.27.21.1.1" style="font-size:90%;">RAR-XL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.27.21.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S4.T2.12.27.21.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.27.21.2"><span class="ltx_text" id="S4.T2.12.27.21.2.1" style="font-size:90%;">955 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.27.21.3"><span class="ltx_text" id="S4.T2.12.27.21.3.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.27.21.4"><span class="ltx_text" id="S4.T2.12.27.21.4.1" style="font-size:90%;">8.00 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.27.21.5"><span class="ltx_text" id="S4.T2.12.27.21.5.1" style="font-size:90%;">10.55 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.27.21.6"><span class="ltx_text" id="S4.T2.12.27.21.6.1" style="font-size:90%;">1.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.27.21.7"><span class="ltx_text" id="S4.T2.12.27.21.7.1" style="font-size:90%;">306.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.27.21.8"><span class="ltx_text" id="S4.T2.12.27.21.8.1" style="font-size:90%;">0.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.27.21.9"><span class="ltx_text" id="S4.T2.12.27.21.9.1" style="font-size:90%;">0.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.28.22">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.12.28.22.1" rowspan="3"><span class="ltx_text" id="S4.T2.12.28.22.1.1" style="font-size:90%;">
<span class="ltx_inline-block" id="S4.T2.12.28.22.1.1.1">
<span class="ltx_p" id="S4.T2.12.28.22.1.1.1.1">AR</span>
<span class="ltx_p" id="S4.T2.12.28.22.1.1.1.2">(Random)</span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.12.28.22.2">
<span class="ltx_text" id="S4.T2.12.28.22.2.1" style="font-size:90%;">RandAR-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.28.22.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S4.T2.12.28.22.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.28.22.3"><span class="ltx_text" id="S4.T2.12.28.22.3.1" style="font-size:90%;">343 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.28.22.4"><span class="ltx_text" id="S4.T2.12.28.22.4.1" style="font-size:90%;">88</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.12.28.22.5"><span class="ltx_text" id="S4.T2.12.28.22.5.1" style="font-size:90%;">25.30 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.28.22.6"><span class="ltx_text" id="S4.T2.12.28.22.6.1" style="font-size:90%;">7.32 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.28.22.7"><span class="ltx_text" id="S4.T2.12.28.22.7.1" style="font-size:90%;">2.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.12.28.22.8"><span class="ltx_text" id="S4.T2.12.28.22.8.1" style="font-size:90%;">288.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.28.22.9"><span class="ltx_text" id="S4.T2.12.28.22.9.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.28.22.10"><span class="ltx_text" id="S4.T2.12.28.22.10.1" style="font-size:90%;">0.58</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.29.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.29.23.1">
<span class="ltx_text" id="S4.T2.12.29.23.1.1" style="font-size:90%;">RandAR-XL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.29.23.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S4.T2.12.29.23.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.29.23.2"><span class="ltx_text" id="S4.T2.12.29.23.2.1" style="font-size:90%;">775 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.29.23.3"><span class="ltx_text" id="S4.T2.12.29.23.3.1" style="font-size:90%;">88</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.29.23.4"><span class="ltx_text" id="S4.T2.12.29.23.4.1" style="font-size:90%;">15.51 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.29.23.5"><span class="ltx_text" id="S4.T2.12.29.23.5.1" style="font-size:90%;">13.52 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.29.23.6"><span class="ltx_text" id="S4.T2.12.29.23.6.1" style="font-size:90%;">2.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.29.23.7"><span class="ltx_text" id="S4.T2.12.29.23.7.1" style="font-size:90%;">317.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.29.23.8"><span class="ltx_text" id="S4.T2.12.29.23.8.1" style="font-size:90%;">0.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.29.23.9"><span class="ltx_text" id="S4.T2.12.29.23.9.1" style="font-size:90%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.30.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.30.24.1">
<span class="ltx_text" id="S4.T2.12.30.24.1.1" style="font-size:90%;">RandAR-XXL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.12.30.24.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S4.T2.12.30.24.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.30.24.2"><span class="ltx_text" id="S4.T2.12.30.24.2.1" style="font-size:90%;">1.4 B</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.30.24.3"><span class="ltx_text" id="S4.T2.12.30.24.3.1" style="font-size:90%;">88</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.30.24.4"><span class="ltx_text" id="S4.T2.12.30.24.4.1" style="font-size:90%;">10.46 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.30.24.5"><span class="ltx_text" id="S4.T2.12.30.24.5.1" style="font-size:90%;">21.77 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.30.24.6"><span class="ltx_text" id="S4.T2.12.30.24.6.1" style="font-size:90%;">2.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.30.24.7"><span class="ltx_text" id="S4.T2.12.30.24.7.1" style="font-size:90%;">322.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.30.24.8"><span class="ltx_text" id="S4.T2.12.30.24.8.1" style="font-size:90%;">0.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.30.24.9"><span class="ltx_text" id="S4.T2.12.30.24.9.1" style="font-size:90%;">0.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.31.25">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.12.31.25.1" rowspan="4"><span class="ltx_text" id="S4.T2.12.31.25.1.1" style="font-size:90%;">
<span class="ltx_inline-block" id="S4.T2.12.31.25.1.1.1">
<span class="ltx_p" id="S4.T2.12.31.25.1.1.1.1">AR</span>
<span class="ltx_p" id="S4.T2.12.31.25.1.1.1.2">(Random)</span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.12.31.25.2"><span class="ltx_text" id="S4.T2.12.31.25.2.1" style="font-size:90%;">ARPG-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.31.25.3"><span class="ltx_text" id="S4.T2.12.31.25.3.1" style="font-size:90%;">320 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.31.25.4"><span class="ltx_text" id="S4.T2.12.31.25.4.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.12.31.25.5"><span class="ltx_text" id="S4.T2.12.31.25.5.1" style="font-size:90%;">113.01 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.12.31.25.6"><span class="ltx_text" id="S4.T2.12.31.25.6.1" style="font-size:90%;">2.54 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.31.25.7"><span class="ltx_text" id="S4.T2.12.31.25.7.1" style="font-size:90%;">2.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.12.31.25.8"><span class="ltx_text" id="S4.T2.12.31.25.8.1" style="font-size:90%;">291.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.31.25.9"><span class="ltx_text" id="S4.T2.12.31.25.9.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.31.25.10"><span class="ltx_text" id="S4.T2.12.31.25.10.1" style="font-size:90%;">0.55</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.32.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.32.26.1"><span class="ltx_text" id="S4.T2.12.32.26.1.1" style="font-size:90%;">ARPG-L</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.32.26.2"><span class="ltx_text" id="S4.T2.12.32.26.2.1" style="font-size:90%;">320 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.32.26.3"><span class="ltx_text" id="S4.T2.12.32.26.3.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.32.26.4"><span class="ltx_text" id="S4.T2.12.32.26.4.1" style="font-size:90%;">62.12 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.32.26.5"><span class="ltx_text" id="S4.T2.12.32.26.5.1" style="font-size:90%;">2.43 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.32.26.6"><span class="ltx_text" id="S4.T2.12.32.26.6.1" style="font-size:90%;">2.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.32.26.7"><span class="ltx_text" id="S4.T2.12.32.26.7.1" style="font-size:90%;">287.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.32.26.8"><span class="ltx_text" id="S4.T2.12.32.26.8.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.32.26.9"><span class="ltx_text" id="S4.T2.12.32.26.9.1" style="font-size:90%;">0.55</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.33.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.33.27.1"><span class="ltx_text" id="S4.T2.12.33.27.1.1" style="font-size:90%;">ARPG-XL</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.33.27.2"><span class="ltx_text" id="S4.T2.12.33.27.2.1" style="font-size:90%;">719 M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.33.27.3"><span class="ltx_text" id="S4.T2.12.33.27.3.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.33.27.4"><span class="ltx_text" id="S4.T2.12.33.27.4.1" style="font-size:90%;">35.89 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T2.12.33.27.5"><span class="ltx_text" id="S4.T2.12.33.27.5.1" style="font-size:90%;">4.48 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.33.27.6"><span class="ltx_text" id="S4.T2.12.33.27.6.1" style="font-size:90%;">2.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.33.27.7"><span class="ltx_text" id="S4.T2.12.33.27.7.1" style="font-size:90%;">331.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.33.27.8"><span class="ltx_text" id="S4.T2.12.33.27.8.1" style="font-size:90%;">0.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.33.27.9"><span class="ltx_text" id="S4.T2.12.33.27.9.1" style="font-size:90%;">0.61</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.34.28">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.12.34.28.1"><span class="ltx_text" id="S4.T2.12.34.28.1.1" style="font-size:90%;">ARPG-XXL</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.34.28.2"><span class="ltx_text" id="S4.T2.12.34.28.2.1" style="font-size:90%;">1.3 B</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S4.T2.12.34.28.3"><span class="ltx_text" id="S4.T2.12.34.28.3.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.12.34.28.4"><span class="ltx_text" id="S4.T2.12.34.28.4.1" style="font-size:90%;">25.39 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S4.T2.12.34.28.5"><span class="ltx_text" id="S4.T2.12.34.28.5.1" style="font-size:90%;">7.31 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.34.28.6"><span class="ltx_text" id="S4.T2.12.34.28.6.1" style="font-size:90%;">1.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.12.34.28.7"><span class="ltx_text" id="S4.T2.12.34.28.7.1" style="font-size:90%;">339.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.34.28.8"><span class="ltx_text" id="S4.T2.12.34.28.8.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.34.28.9"><span class="ltx_text" id="S4.T2.12.34.28.9.1" style="font-size:90%;">0.59</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive comparison of various autoregressive image generation models on the ImageNet 256x256 dataset.  The models are categorized into diffusion, masked, and autoregressive models (both raster and random order). For each model, the table shows the number of parameters, the number of generation steps, the image generation throughput (images per second), memory usage (in GB), Fréchet Inception Distance (FID, lower is better, indicating higher image quality), Inception Score (IS, higher is better, indicating better image diversity), precision, and recall. This allows for a direct comparison of model performance across different approaches, highlighting the relative strengths and weaknesses of each method in terms of speed, memory efficiency, and image quality.
> <details>
> <summary>read the caption</summary>
> Table 2: Overall comparisons on class-conditional ImageNet 256×\times×256 benchmark. The symbols “↓↓\downarrow↓” and “↑↑\uparrow↑” indicate that lower and higher values are better. “-re”: rejection sampling. All models were evaluated with a batch size of 64 and at bfloat16 precision.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.6.4.5"><span class="ltx_text" id="S4.T3.6.4.5.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.1.1">
<span class="ltx_text" id="S4.T3.3.1.1.1" style="font-size:90%;">Throughput</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.1.1.m1.1"><semantics id="S4.T3.3.1.1.m1.1a"><mo id="S4.T3.3.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.1.1.m1.1b"><ci id="S4.T3.3.1.1.m1.1.1.cmml" xref="S4.T3.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.2.2">
<span class="ltx_text" id="S4.T3.4.2.2.1" style="font-size:90%;">Memory</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.4.2.2.m1.1"><semantics id="S4.T3.4.2.2.m1.1a"><mo id="S4.T3.4.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.4.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.2.2.m1.1b"><ci id="S4.T3.4.2.2.m1.1.1.cmml" xref="S4.T3.4.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.3.3">
<span class="ltx_text" id="S4.T3.5.3.3.1" style="font-size:90%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.5.3.3.m1.1"><semantics id="S4.T3.5.3.3.m1.1a"><mo id="S4.T3.5.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.5.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.3.3.m1.1b"><ci id="S4.T3.5.3.3.m1.1.1.cmml" xref="S4.T3.5.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T3.6.4.4">
<span class="ltx_text" id="S4.T3.6.4.4.1" style="font-size:90%;">IS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.4.4.m1.1"><semantics id="S4.T3.6.4.4.m1.1a"><mo id="S4.T3.6.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.6.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.4.4.m1.1b"><ci id="S4.T3.6.4.4.m1.1.1.cmml" xref="S4.T3.6.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.6.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.6.5.1.1">
<span class="ltx_text" id="S4.T3.6.5.1.1.1" style="font-size:90%;">ADM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.6.5.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S4.T3.6.5.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.6.5.1.2"><span class="ltx_text" id="S4.T3.6.5.1.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.6.5.1.3"><span class="ltx_text" id="S4.T3.6.5.1.3.1" style="font-size:90%;">- GB</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.6.5.1.4"><span class="ltx_text" id="S4.T3.6.5.1.4.1" style="font-size:90%;">23.24</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.6.5.1.5"><span class="ltx_text" id="S4.T3.6.5.1.5.1" style="font-size:90%;">101.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.6.6.2.1">
<span class="ltx_text" id="S4.T3.6.6.2.1.1" style="font-size:90%;">DiT-XL/2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.6.6.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="S4.T3.6.6.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T3.6.6.2.2"><span class="ltx_text" id="S4.T3.6.6.2.2.1" style="font-size:90%;">0.18 it/s</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.6.2.3"><span class="ltx_text" id="S4.T3.6.6.2.3.1" style="font-size:90%;">4.70 GB</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.6.2.4"><span class="ltx_text" id="S4.T3.6.6.2.4.1" style="font-size:90%;">3.04</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.6.2.5"><span class="ltx_text" id="S4.T3.6.6.2.5.1" style="font-size:90%;">240.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.6.7.3.1">
<span class="ltx_text" id="S4.T3.6.7.3.1.1" style="font-size:90%;">MaskGIT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.6.7.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a><span class="ltx_text" id="S4.T3.6.7.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T3.6.7.3.2"><span class="ltx_text" id="S4.T3.6.7.3.2.1" style="font-size:90%;">4.48 it/s</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.7.3.3"><span class="ltx_text" id="S4.T3.6.7.3.3.1" style="font-size:90%;">7.63 GB</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.7.3.4"><span class="ltx_text" id="S4.T3.6.7.3.4.1" style="font-size:90%;">7.32</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.7.3.5"><span class="ltx_text" id="S4.T3.6.7.3.5.1" style="font-size:90%;">156.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.6.8.4.1">
<span class="ltx_text" id="S4.T3.6.8.4.1.1" style="font-size:90%;">VQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.6.8.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S4.T3.6.8.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T3.6.8.4.2"><span class="ltx_text" id="S4.T3.6.8.4.2.1" style="font-size:90%;">0.63 it/s</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.8.4.3"><span class="ltx_text" id="S4.T3.6.8.4.3.1" style="font-size:90%;">44.12 GB</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.8.4.4"><span class="ltx_text" id="S4.T3.6.8.4.4.1" style="font-size:90%;">26.52</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.8.4.5"><span class="ltx_text" id="S4.T3.6.8.4.5.1" style="font-size:90%;">66.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.6.9.5.1">
<span class="ltx_text" id="S4.T3.6.9.5.1.1" style="font-size:90%;">VAR-d36 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.6.9.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S4.T3.6.9.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T3.6.9.5.2"><span class="ltx_text" id="S4.T3.6.9.5.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.9.5.3"><span class="ltx_text" id="S4.T3.6.9.5.3.1" style="font-size:90%;">OOM</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.9.5.4"><span class="ltx_text" id="S4.T3.6.9.5.4.1" style="font-size:90%;">2.63</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.9.5.5"><span class="ltx_text" id="S4.T3.6.9.5.5.1" style="font-size:90%;">303.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.6.10.6.1"><span class="ltx_text" id="S4.T3.6.10.6.1.1" style="font-size:90%;">ARPG-XL</span></th>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.6.10.6.2"><span class="ltx_text" id="S4.T3.6.10.6.2.1" style="font-size:90%;">35.53 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.6.10.6.3"><span class="ltx_text" id="S4.T3.6.10.6.3.1" style="font-size:90%;">13.98 GB</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.6.10.6.4"><span class="ltx_text" id="S4.T3.6.10.6.4.1" style="font-size:90%;">3.38</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.6.10.6.5"><span class="ltx_text" id="S4.T3.6.10.6.5.1" style="font-size:90%;">257.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different autoregressive image generation models on the ImageNet 512x512 dataset for class-conditional image generation.  The models are evaluated using FID (Fréchet Inception Distance) score, Inception Score (IS), and throughput (images per second). Memory usage (in GB) is also reported.  The metrics are used to assess the quality and efficiency of each model.  The same evaluation configuration as Table 2 was used.  'OOM' indicates that a model ran out of memory during evaluation.
> <details>
> <summary>read the caption</summary>
> Table 3: Model comparisons on class-conditional ImageNet 512×\times×512 benchmark. The evaluation configuration is the same as that in Tab. 2. OOM: Out of Memory.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T4.1.1.2" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.1.2.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.1.1.3" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.1.3.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.1.1.4" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.1.4.1" style="font-size:90%;">#Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T4.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T4.1.1.1.1" style="font-size:90%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.2.1">
<td class="ltx_td ltx_align_right" id="S4.T4.1.2.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.2.1.1.1" style="font-size:90%;">Canny</span></td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.2.1.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.2.1.2.1" style="font-size:90%;">Depth</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.1.3.2.1" rowspan="4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.3.2.1.1" style="font-size:90%;">ControlVAR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.3.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.3.2.2.1" style="font-size:90%;">VAR-d16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.3.2.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.3.2.3.1" style="font-size:90%;">310M</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.3.2.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.3.2.4.1" style="font-size:90%;">16.20</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.3.2.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.3.2.5.1" style="font-size:90%;">13.80</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.4.3">
<td class="ltx_td ltx_align_left" id="S4.T4.1.4.3.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.4.3.1.1" style="font-size:90%;">VAR-d20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.4.3.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.4.3.2.1" style="font-size:90%;">600M</span></td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.4.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.4.3.3.1" style="font-size:90%;">13.00</span></td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.4.3.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.4.3.4.1" style="font-size:90%;">13.40</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.5.4">
<td class="ltx_td ltx_align_left" id="S4.T4.1.5.4.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.5.4.1.1" style="font-size:90%;">VAR-d24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.5.4.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.5.4.2.1" style="font-size:90%;">1.0B</span></td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.5.4.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.5.4.3.1" style="font-size:90%;">15.70</span></td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.5.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.5.4.4.1" style="font-size:90%;">12.50</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.6.5">
<td class="ltx_td ltx_align_left" id="S4.T4.1.6.5.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.6.5.1.1" style="font-size:90%;">VAR-d30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.6.5.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.6.5.2.1" style="font-size:90%;">2.0B</span></td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.6.5.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.6.5.3.1" style="font-size:90%;">7.85</span></td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.6.5.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.6.5.4.1" style="font-size:90%;">6.50</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.1.7.6.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.7.6.1.1" style="font-size:90%;">ControlAR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10568v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.7.6.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.7.6.2.1" style="font-size:90%;">AiM-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.7.6.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.7.6.3.1" style="font-size:90%;">350M</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.7.6.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.7.6.4.1" style="font-size:90%;">9.66</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.7.6.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.7.6.5.1" style="font-size:90%;">7.39</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.8.7">
<td class="ltx_td ltx_align_left" id="S4.T4.1.8.7.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.8.7.1.1" style="font-size:90%;">LlamaGen-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.8.7.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.8.7.2.1" style="font-size:90%;">343M</span></td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.8.7.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.8.7.3.1" style="font-size:90%;">7.69</span></td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.8.7.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.8.7.4.1" style="font-size:90%;">4.19</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.9.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T4.1.9.8.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.9.8.1.1" style="font-size:90%;">ControlARPG</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T4.1.9.8.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.9.8.2.1" style="font-size:90%;">ARPG-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T4.1.9.8.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.9.8.3.1" style="font-size:90%;">320M</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.9.8.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.9.8.4.1" style="font-size:90%;">7.39</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.9.8.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T4.1.9.8.5.1" style="font-size:90%;">4.06</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different models' performance on controllable image generation tasks using the ImageNet-1K dataset.  It shows the Fréchet Inception Distance (FID) scores, a measure of generated image quality, for various models when generating images conditioned on canny edges and depth maps. The FID score for the ControlVAR model is estimated from its histogram data, as explicitly noted.  Lower FID scores indicate better image quality.
> <details>
> <summary>read the caption</summary>
> Table 4: Controllable generation on ImageNet-1K. The FID of ControlVAR [23] is estimated based on its histograms [24].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.20">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T5.4.4.5"><span class="ltx_text" id="S4.T5.4.4.5.1" style="font-size:90%;">Description</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.4.6"><span class="ltx_text" id="S4.T5.4.4.6.1" style="font-size:90%;">Parameters</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T5.4.4.7"><span class="ltx_text" id="S4.T5.4.4.7.1" style="font-size:90%;">Layers</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.4.8"><span class="ltx_text" id="S4.T5.4.4.8.1" style="font-size:90%;">Randomize</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T5.4.4.9"><span class="ltx_text" id="S4.T5.4.4.9.1" style="font-size:90%;">Parallelize</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.4.10"><span class="ltx_text" id="S4.T5.4.4.10.1" style="font-size:90%;">Steps</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.1">
<span class="ltx_text" id="S4.T5.1.1.1.1" style="font-size:90%;">Throughput</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T5.2.2.2">
<span class="ltx_text" id="S4.T5.2.2.2.1" style="font-size:90%;">Memory</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T5.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.3.3">
<span class="ltx_text" id="S4.T5.3.3.3.1" style="font-size:90%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.m1.1a"><mo id="S4.T5.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T5.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.4.4">
<span class="ltx_text" id="S4.T5.4.4.4.1" style="font-size:90%;">IS </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.4.4.4.m1.1"><semantics id="S4.T5.4.4.4.m1.1a"><mo id="S4.T5.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T5.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.4.m1.1b"><ci id="S4.T5.4.4.4.m1.1.1.cmml" xref="S4.T5.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.6.6.3"><span class="ltx_text" id="S4.T5.6.6.3.1" style="font-size:90%;">ARPG-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.6.4"><span class="ltx_text" id="S4.T5.6.6.4.1" style="font-size:90%;">320 M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.6.6.5"><span class="ltx_text" id="S4.T5.6.6.5.1" style="font-size:90%;">12 + 12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.5.1">
<span class="ltx_text" id="S4.T5.5.5.1.1" style="font-size:90%;"></span><svg class="ltx_picture" height="10.09" id="S4.T5.5.5.1.pic1" overflow="visible" version="1.1" width="10.09"><g fill="#000000" stroke="#000000" transform="translate(0,10.09) matrix(1 0 0 -1 0 0) translate(0.55,0) translate(0,0.55)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 2.26 0 C 4.26 3.95 5.82 6.03 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.8pt"><path d="M 0 3.17 C 0.79 1.91 1.25 1.23 2.08 0" style="fill:none"></path></g></g></svg>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.6.6.2">
<span class="ltx_text" id="S4.T5.6.6.2.1" style="font-size:90%;"></span><svg class="ltx_picture" height="10.09" id="S4.T5.6.6.2.pic1" overflow="visible" version="1.1" width="10.09"><g fill="#000000" stroke="#000000" transform="translate(0,10.09) matrix(1 0 0 -1 0 0) translate(0.55,0) translate(0,0.55)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 2.26 0 C 4.26 3.95 5.82 6.03 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.8pt"><path d="M 0 3.17 C 0.79 1.91 1.25 1.23 2.08 0" style="fill:none"></path></g></g></svg>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.6.6"><span class="ltx_text" id="S4.T5.6.6.6.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.6.7"><span class="ltx_text" id="S4.T5.6.6.7.1" style="font-size:90%;">62.12 it/s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.6.6.8"><span class="ltx_text" id="S4.T5.6.6.8.1" style="font-size:90%;">2.43 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.6.9"><span class="ltx_text" id="S4.T5.6.6.9.1" style="font-size:90%;">3.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.6.10"><span class="ltx_text" id="S4.T5.6.6.10.1" style="font-size:90%;">282.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.8.8.3"><span class="ltx_text" id="S4.T5.8.8.3.1" style="font-size:90%;">+ Longer Training</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.8.4"><span class="ltx_text" id="S4.T5.8.8.4.1" style="font-size:90%;">320 M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.8.8.5"><span class="ltx_text" id="S4.T5.8.8.5.1" style="font-size:90%;">12 + 12</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.7.7.1">
<span class="ltx_text" id="S4.T5.7.7.1.1" style="font-size:90%;"></span><svg class="ltx_picture" height="10.09" id="S4.T5.7.7.1.pic1" overflow="visible" version="1.1" width="10.09"><g fill="#000000" stroke="#000000" transform="translate(0,10.09) matrix(1 0 0 -1 0 0) translate(0.55,0) translate(0,0.55)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 2.26 0 C 4.26 3.95 5.82 6.03 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.8pt"><path d="M 0 3.17 C 0.79 1.91 1.25 1.23 2.08 0" style="fill:none"></path></g></g></svg>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.8.8.2">
<span class="ltx_text" id="S4.T5.8.8.2.1" style="font-size:90%;"></span><svg class="ltx_picture" height="10.09" id="S4.T5.8.8.2.pic1" overflow="visible" version="1.1" width="10.09"><g fill="#000000" stroke="#000000" transform="translate(0,10.09) matrix(1 0 0 -1 0 0) translate(0.55,0) translate(0,0.55)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 2.26 0 C 4.26 3.95 5.82 6.03 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.8pt"><path d="M 0 3.17 C 0.79 1.91 1.25 1.23 2.08 0" style="fill:none"></path></g></g></svg>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.8.6"><span class="ltx_text" id="S4.T5.8.8.6.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.8.7"><span class="ltx_text" id="S4.T5.8.8.7.1" style="font-size:90%;">62.12 it/s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.8.8.8"><span class="ltx_text" id="S4.T5.8.8.8.1" style="font-size:90%;">2.43 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.8.9"><span class="ltx_text" id="S4.T5.8.8.9.1" style="font-size:90%;">2.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.8.10"><span class="ltx_text" id="S4.T5.8.8.10.1" style="font-size:90%;">287.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.10.10.3"><span class="ltx_text" id="S4.T5.10.10.3.1" style="font-size:90%;">+ w/o Shared KV</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.4"><span class="ltx_text" id="S4.T5.10.10.4.1" style="font-size:90%;">343 M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.10.10.5"><span class="ltx_text" id="S4.T5.10.10.5.1" style="font-size:90%;">12 + 12</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.9.1">
<span class="ltx_text" id="S4.T5.9.9.1.1" style="font-size:90%;"></span><svg class="ltx_picture" height="10.09" id="S4.T5.9.9.1.pic1" overflow="visible" version="1.1" width="10.09"><g fill="#000000" stroke="#000000" transform="translate(0,10.09) matrix(1 0 0 -1 0 0) translate(0.55,0) translate(0,0.55)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 2.26 0 C 4.26 3.95 5.82 6.03 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.8pt"><path d="M 0 3.17 C 0.79 1.91 1.25 1.23 2.08 0" style="fill:none"></path></g></g></svg>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.10.10.2">
<span class="ltx_text" id="S4.T5.10.10.2.1" style="font-size:90%;"></span><svg class="ltx_picture" height="10.09" id="S4.T5.10.10.2.pic1" overflow="visible" version="1.1" width="10.09"><g fill="#000000" stroke="#000000" transform="translate(0,10.09) matrix(1 0 0 -1 0 0) translate(0.55,0) translate(0,0.55)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 2.26 0 C 4.26 3.95 5.82 6.03 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.8pt"><path d="M 0 3.17 C 0.79 1.91 1.25 1.23 2.08 0" style="fill:none"></path></g></g></svg>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.6"><span class="ltx_text" id="S4.T5.10.10.6.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.7"><span class="ltx_text" id="S4.T5.10.10.7.1" style="font-size:90%;">48.02 it/s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.10.10.8"><span class="ltx_text" id="S4.T5.10.10.8.1" style="font-size:90%;">3.83 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.9"><span class="ltx_text" id="S4.T5.10.10.9.1" style="font-size:90%;">2.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.10"><span class="ltx_text" id="S4.T5.10.10.10.1" style="font-size:90%;">299.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.12.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.12.12.3"><span class="ltx_text" id="S4.T5.12.12.3.1" style="font-size:90%;">Fewer Guided Decoder</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.12.12.4"><span class="ltx_text" id="S4.T5.12.12.4.1" style="font-size:90%;">332 M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.12.12.5">
<span class="ltx_text" id="S4.T5.12.12.5.1" style="font-size:90%;">18 + </span><span class="ltx_text ltx_phantom" id="S4.T5.12.12.5.2" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="S4.T5.12.12.5.3" style="font-size:90%;">6</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.11.11.1">
<span class="ltx_text" id="S4.T5.11.11.1.1" style="font-size:90%;"></span><svg class="ltx_picture" height="10.09" id="S4.T5.11.11.1.pic1" overflow="visible" version="1.1" width="10.09"><g fill="#000000" stroke="#000000" transform="translate(0,10.09) matrix(1 0 0 -1 0 0) translate(0.55,0) translate(0,0.55)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 2.26 0 C 4.26 3.95 5.82 6.03 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.8pt"><path d="M 0 3.17 C 0.79 1.91 1.25 1.23 2.08 0" style="fill:none"></path></g></g></svg>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.12.12.2">
<span class="ltx_text" id="S4.T5.12.12.2.1" style="font-size:90%;"></span><svg class="ltx_picture" height="10.09" id="S4.T5.12.12.2.pic1" overflow="visible" version="1.1" width="10.09"><g fill="#000000" stroke="#000000" transform="translate(0,10.09) matrix(1 0 0 -1 0 0) translate(0.55,0) translate(0,0.55)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 2.26 0 C 4.26 3.95 5.82 6.03 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.8pt"><path d="M 0 3.17 C 0.79 1.91 1.25 1.23 2.08 0" style="fill:none"></path></g></g></svg>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.12.12.6"><span class="ltx_text" id="S4.T5.12.12.6.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.12.12.7"><span class="ltx_text" id="S4.T5.12.12.7.1" style="font-size:90%;">50.72 it/s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.12.12.8"><span class="ltx_text" id="S4.T5.12.12.8.1" style="font-size:90%;">3.19 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.12.12.9"><span class="ltx_text" id="S4.T5.12.12.9.1" style="font-size:90%;">3.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.12.12.10"><span class="ltx_text" id="S4.T5.12.12.10.1" style="font-size:90%;">223.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.14.14.3"><span class="ltx_text" id="S4.T5.14.14.3.1" style="font-size:90%;">More Guided Decoder</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.14.4"><span class="ltx_text" id="S4.T5.14.14.4.1" style="font-size:90%;">307 M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.14.14.5">
<span class="ltx_text ltx_phantom" id="S4.T5.14.14.5.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="S4.T5.14.14.5.2" style="font-size:90%;">6 + 18</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.13.13.1">
<span class="ltx_text" id="S4.T5.13.13.1.1" style="font-size:90%;"></span><svg class="ltx_picture" height="10.09" id="S4.T5.13.13.1.pic1" overflow="visible" version="1.1" width="10.09"><g fill="#000000" stroke="#000000" transform="translate(0,10.09) matrix(1 0 0 -1 0 0) translate(0.55,0) translate(0,0.55)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 2.26 0 C 4.26 3.95 5.82 6.03 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.8pt"><path d="M 0 3.17 C 0.79 1.91 1.25 1.23 2.08 0" style="fill:none"></path></g></g></svg>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.14.14.2">
<span class="ltx_text" id="S4.T5.14.14.2.1" style="font-size:90%;"></span><svg class="ltx_picture" height="10.09" id="S4.T5.14.14.2.pic1" overflow="visible" version="1.1" width="10.09"><g fill="#000000" stroke="#000000" transform="translate(0,10.09) matrix(1 0 0 -1 0 0) translate(0.55,0) translate(0,0.55)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 2.26 0 C 4.26 3.95 5.82 6.03 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.8pt"><path d="M 0 3.17 C 0.79 1.91 1.25 1.23 2.08 0" style="fill:none"></path></g></g></svg>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.14.6"><span class="ltx_text" id="S4.T5.14.14.6.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.14.7"><span class="ltx_text" id="S4.T5.14.14.7.1" style="font-size:90%;">66.11 it/s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.14.14.8"><span class="ltx_text" id="S4.T5.14.14.8.1" style="font-size:90%;">1.67 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.14.9"><span class="ltx_text" id="S4.T5.14.14.9.1" style="font-size:90%;">3.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.14.10"><span class="ltx_text" id="S4.T5.14.14.10.1" style="font-size:90%;">242.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.18.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.18.18.5"><span class="ltx_text" id="S4.T5.18.18.5.1" style="font-size:90%;">w/o Guided Decoder</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.18.6"><span class="ltx_text" id="S4.T5.18.18.6.1" style="font-size:90%;">343 M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.18.18.7">
<span class="ltx_text" id="S4.T5.18.18.7.1" style="font-size:90%;">24 + </span><span class="ltx_text ltx_phantom" id="S4.T5.18.18.7.2" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="S4.T5.18.18.7.3" style="font-size:90%;">0</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.15.15.1">
<span class="ltx_text" id="S4.T5.15.15.1.1" style="font-size:90%;"></span><svg class="ltx_picture" height="10.02" id="S4.T5.15.15.1.pic1" overflow="visible" version="1.1" width="10.02"><g fill="#000000" stroke="#000000" transform="translate(0,10.02) matrix(1 0 0 -1 0 0) translate(0.48,0) translate(0,0.48)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 0 0 C 3.16 3.9 5.16 5.9 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 1.81 8.6 C 3.77 5.3 4.95 3.53 7.24 0.45" style="fill:none"></path></g></g></svg>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.16.16.2">
<span class="ltx_text" id="S4.T5.16.16.2.1" style="font-size:90%;"></span><svg class="ltx_picture" height="10.02" id="S4.T5.16.16.2.pic1" overflow="visible" version="1.1" width="10.02"><g fill="#000000" stroke="#000000" transform="translate(0,10.02) matrix(1 0 0 -1 0 0) translate(0.48,0) translate(0,0.48)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 0 0 C 3.16 3.9 5.16 5.9 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 1.81 8.6 C 3.77 5.3 4.95 3.53 7.24 0.45" style="fill:none"></path></g></g></svg>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.18.8"><span class="ltx_text" id="S4.T5.18.18.8.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.18.9"><span class="ltx_text" id="S4.T5.18.18.9.1" style="font-size:90%;">11.70 it/s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.18.18.10"><span class="ltx_text" id="S4.T5.18.18.10.1" style="font-size:90%;">4.96 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.17.17.3">
<math alttext="&gt;" class="ltx_Math" display="inline" id="S4.T5.17.17.3.m1.1"><semantics id="S4.T5.17.17.3.m1.1a"><mo id="S4.T5.17.17.3.m1.1.1" mathsize="90%" xref="S4.T5.17.17.3.m1.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S4.T5.17.17.3.m1.1b"><gt id="S4.T5.17.17.3.m1.1.1.cmml" xref="S4.T5.17.17.3.m1.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.17.17.3.m1.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S4.T5.17.17.3.m1.1d">&gt;</annotation></semantics></math><span class="ltx_text" id="S4.T5.17.17.3.1" style="font-size:90%;">90</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.18.4">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S4.T5.18.18.4.m1.1"><semantics id="S4.T5.18.18.4.m1.1a"><mo id="S4.T5.18.18.4.m1.1.1" mathsize="90%" xref="S4.T5.18.18.4.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S4.T5.18.18.4.m1.1b"><lt id="S4.T5.18.18.4.m1.1.1.cmml" xref="S4.T5.18.18.4.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.18.18.4.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S4.T5.18.18.4.m1.1d">&lt;</annotation></semantics></math><span class="ltx_text" id="S4.T5.18.18.4.1" style="font-size:90%;">50</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.20.20">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T5.20.20.3"><span class="ltx_text" id="S4.T5.20.20.3.1" style="font-size:90%;">Guided Decoder Only</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.20.20.4"><span class="ltx_text" id="S4.T5.20.20.4.1" style="font-size:90%;">295 M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.20.20.5">
<span class="ltx_text ltx_phantom" id="S4.T5.20.20.5.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="S4.T5.20.20.5.2" style="font-size:90%;">0 + 24</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.19.19.1">
<span class="ltx_text" id="S4.T5.19.19.1.1" style="font-size:90%;"></span><svg class="ltx_picture" height="10.09" id="S4.T5.19.19.1.pic1" overflow="visible" version="1.1" width="10.09"><g fill="#000000" stroke="#000000" transform="translate(0,10.09) matrix(1 0 0 -1 0 0) translate(0.55,0) translate(0,0.55)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 2.26 0 C 4.26 3.95 5.82 6.03 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.8pt"><path d="M 0 3.17 C 0.79 1.91 1.25 1.23 2.08 0" style="fill:none"></path></g></g></svg>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.20.20.2">
<span class="ltx_text" id="S4.T5.20.20.2.1" style="font-size:90%;"></span><svg class="ltx_picture" height="10.09" id="S4.T5.20.20.2.pic1" overflow="visible" version="1.1" width="10.09"><g fill="#000000" stroke="#000000" transform="translate(0,10.09) matrix(1 0 0 -1 0 0) translate(0.55,0) translate(0,0.55)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 2.26 0 C 4.26 3.95 5.82 6.03 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.8pt"><path d="M 0 3.17 C 0.79 1.91 1.25 1.23 2.08 0" style="fill:none"></path></g></g></svg>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.20.20.6"><span class="ltx_text" id="S4.T5.20.20.6.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.20.20.7"><span class="ltx_text" id="S4.T5.20.20.7.1" style="font-size:90%;">72.26 it/s</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.20.20.8"><span class="ltx_text" id="S4.T5.20.20.8.1" style="font-size:90%;">0.91 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.20.20.9"><span class="ltx_text" id="S4.T5.20.20.9.1" style="font-size:90%;">4.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.20.20.10"><span class="ltx_text" id="S4.T5.20.20.10.1" style="font-size:90%;">255.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of various design choices on ARPG-L, a model trained for 150 epochs.  The baseline model's performance is compared against variations including extending training to 400 epochs, removing the shared key-value cache, adjusting the number of guided decoder layers, and removing or solely using guided decoder layers. The table assesses each variation across parameters, layers, random generation capability, parallel decoding capability, number of sampling steps, throughput, memory usage, FID score, and Inception Score (IS) to determine the effects on both efficiency and image generation quality.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study. We adopt ARPG-L trained for 150 epochs as the baseline. Here, “Longer Training” refers to a 400-epoch training process. “Randomize” and “Parallelize” mean the ability to generate in a random order and perform parallel decoding, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T6.6.4.5"><span class="ltx_text" id="S4.T6.6.4.5.1" style="font-size:90%;">ARPG</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.3.1.1"><math alttext="\bm{w}_{\text{cfg}}" class="ltx_Math" display="inline" id="S4.T6.3.1.1.m1.1"><semantics id="S4.T6.3.1.1.m1.1a"><msub id="S4.T6.3.1.1.m1.1.1" xref="S4.T6.3.1.1.m1.1.1.cmml"><mi id="S4.T6.3.1.1.m1.1.1.2" mathsize="90%" xref="S4.T6.3.1.1.m1.1.1.2.cmml">𝒘</mi><mtext id="S4.T6.3.1.1.m1.1.1.3" mathsize="90%" xref="S4.T6.3.1.1.m1.1.1.3a.cmml">cfg</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T6.3.1.1.m1.1b"><apply id="S4.T6.3.1.1.m1.1.1.cmml" xref="S4.T6.3.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T6.3.1.1.m1.1.1.1.cmml" xref="S4.T6.3.1.1.m1.1.1">subscript</csymbol><ci id="S4.T6.3.1.1.m1.1.1.2.cmml" xref="S4.T6.3.1.1.m1.1.1.2">𝒘</ci><ci id="S4.T6.3.1.1.m1.1.1.3a.cmml" xref="S4.T6.3.1.1.m1.1.1.3"><mtext id="S4.T6.3.1.1.m1.1.1.3.cmml" mathsize="63%" xref="S4.T6.3.1.1.m1.1.1.3">cfg</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.1.1.m1.1c">\bm{w}_{\text{cfg}}</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.1.1.m1.1d">bold_italic_w start_POSTSUBSCRIPT cfg end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.6.4.6"><span class="ltx_text" id="S4.T6.6.4.6.1" style="font-size:90%;">Steps</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T6.4.2.2">
<span class="ltx_text" id="S4.T6.4.2.2.1" style="font-size:90%;">Throughput</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.4.2.2.m1.1"><semantics id="S4.T6.4.2.2.m1.1a"><mo id="S4.T6.4.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T6.4.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.4.2.2.m1.1b"><ci id="S4.T6.4.2.2.m1.1.1.cmml" xref="S4.T6.4.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.4.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.4.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T6.5.3.3">
<span class="ltx_text" id="S4.T6.5.3.3.1" style="font-size:90%;">Memory</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.5.3.3.m1.1"><semantics id="S4.T6.5.3.3.m1.1a"><mo id="S4.T6.5.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T6.5.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.5.3.3.m1.1b"><ci id="S4.T6.5.3.3.m1.1.1.cmml" xref="S4.T6.5.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.5.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.5.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.6.4.4">
<span class="ltx_text" id="S4.T6.6.4.4.1" style="font-size:90%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.6.4.4.m1.1"><semantics id="S4.T6.6.4.4.m1.1a"><mo id="S4.T6.6.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T6.6.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.6.4.4.m1.1b"><ci id="S4.T6.6.4.4.m1.1.1.cmml" xref="S4.T6.6.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.6.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.6.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.6.5.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.6.5.1.1" rowspan="4"><span class="ltx_text" id="S4.T6.6.5.1.1.1" style="font-size:90%;">L</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.5.1.2"><span class="ltx_text" id="S4.T6.6.5.1.2.1" style="font-size:90%;">5.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.5.1.3"><span class="ltx_text" id="S4.T6.6.5.1.3.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.6.5.1.4"><span class="ltx_text" id="S4.T6.6.5.1.4.1" style="font-size:90%;">113.01 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.6.5.1.5"><span class="ltx_text" id="S4.T6.6.5.1.5.1" style="font-size:90%;">2.54 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.5.1.6"><span class="ltx_text" id="S4.T6.6.5.1.6.1" style="font-size:90%;">2.44</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.6.2">
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.2.1"><span class="ltx_text" id="S4.T6.6.6.2.1.1" style="font-size:90%;">4.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.2.2"><span class="ltx_text" id="S4.T6.6.6.2.2.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.6.6.2.3"><span class="ltx_text" id="S4.T6.6.6.2.3.1" style="font-size:90%;">62.12 it/s</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.6.6.2.4"><span class="ltx_text" id="S4.T6.6.6.2.4.1" style="font-size:90%;">2.43 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.2.5"><span class="ltx_text" id="S4.T6.6.6.2.5.1" style="font-size:90%;">2.44</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.7.3">
<td class="ltx_td ltx_align_center" id="S4.T6.6.7.3.1"><span class="ltx_text" id="S4.T6.6.7.3.1.1" style="font-size:90%;">4.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.7.3.2"><span class="ltx_text" id="S4.T6.6.7.3.2.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.6.7.3.3"><span class="ltx_text" id="S4.T6.6.7.3.3.1" style="font-size:90%;">32.28 it/s</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.6.7.3.4"><span class="ltx_text" id="S4.T6.6.7.3.4.1" style="font-size:90%;">2.42 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.7.3.5"><span class="ltx_text" id="S4.T6.6.7.3.5.1" style="font-size:90%;">2.46</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.8.4">
<td class="ltx_td ltx_align_center" id="S4.T6.6.8.4.1"><span class="ltx_text" id="S4.T6.6.8.4.1.1" style="font-size:90%;">4.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.8.4.2"><span class="ltx_text" id="S4.T6.6.8.4.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.6.8.4.3"><span class="ltx_text" id="S4.T6.6.8.4.3.1" style="font-size:90%;">16.32 it/s</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.6.8.4.4"><span class="ltx_text" id="S4.T6.6.8.4.4.1" style="font-size:90%;">2.39 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.8.4.5"><span class="ltx_text" id="S4.T6.6.8.4.5.1" style="font-size:90%;">2.41</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.9.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.6.9.5.1" rowspan="4"><span class="ltx_text" id="S4.T6.6.9.5.1.1" style="font-size:90%;">XL</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.9.5.2"><span class="ltx_text" id="S4.T6.6.9.5.2.1" style="font-size:90%;">8.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.9.5.3"><span class="ltx_text" id="S4.T6.6.9.5.3.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.6.9.5.4"><span class="ltx_text" id="S4.T6.6.9.5.4.1" style="font-size:90%;">67.87 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.6.9.5.5"><span class="ltx_text" id="S4.T6.6.9.5.5.1" style="font-size:90%;">4.55 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.9.5.6"><span class="ltx_text" id="S4.T6.6.9.5.6.1" style="font-size:90%;">2.21</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.10.6">
<td class="ltx_td ltx_align_center" id="S4.T6.6.10.6.1"><span class="ltx_text" id="S4.T6.6.10.6.1.1" style="font-size:90%;">6.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.10.6.2"><span class="ltx_text" id="S4.T6.6.10.6.2.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.6.10.6.3"><span class="ltx_text" id="S4.T6.6.10.6.3.1" style="font-size:90%;">38.64 it/s</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.6.10.6.4"><span class="ltx_text" id="S4.T6.6.10.6.4.1" style="font-size:90%;">4.50 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.10.6.5"><span class="ltx_text" id="S4.T6.6.10.6.5.1" style="font-size:90%;">2.10</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.11.7">
<td class="ltx_td ltx_align_center" id="S4.T6.6.11.7.1"><span class="ltx_text" id="S4.T6.6.11.7.1.1" style="font-size:90%;">6.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.11.7.2"><span class="ltx_text" id="S4.T6.6.11.7.2.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.6.11.7.3"><span class="ltx_text" id="S4.T6.6.11.7.3.1" style="font-size:90%;">20.36 it/s</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.6.11.7.4"><span class="ltx_text" id="S4.T6.6.11.7.4.1" style="font-size:90%;">4.52 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.11.7.5"><span class="ltx_text" id="S4.T6.6.11.7.5.1" style="font-size:90%;">2.09</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.12.8">
<td class="ltx_td ltx_align_center" id="S4.T6.6.12.8.1"><span class="ltx_text" id="S4.T6.6.12.8.1.1" style="font-size:90%;">6.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.12.8.2"><span class="ltx_text" id="S4.T6.6.12.8.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.6.12.8.3"><span class="ltx_text" id="S4.T6.6.12.8.3.1" style="font-size:90%;">10.52 it/s</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.6.12.8.4"><span class="ltx_text" id="S4.T6.6.12.8.4.1" style="font-size:90%;">4.49 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.12.8.5"><span class="ltx_text" id="S4.T6.6.12.8.5.1" style="font-size:90%;">2.07</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.13.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T6.6.13.9.1" rowspan="4"><span class="ltx_text" id="S4.T6.6.13.9.1.1" style="font-size:90%;">XXL</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.13.9.2"><span class="ltx_text" id="S4.T6.6.13.9.2.1" style="font-size:90%;">10.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.13.9.3"><span class="ltx_text" id="S4.T6.6.13.9.3.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.6.13.9.4"><span class="ltx_text" id="S4.T6.6.13.9.4.1" style="font-size:90%;">44.17 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.6.13.9.5"><span class="ltx_text" id="S4.T6.6.13.9.5.1" style="font-size:90%;">7.33 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.13.9.6"><span class="ltx_text" id="S4.T6.6.13.9.6.1" style="font-size:90%;">2.08</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.14.10">
<td class="ltx_td ltx_align_center" id="S4.T6.6.14.10.1"><span class="ltx_text" id="S4.T6.6.14.10.1.1" style="font-size:90%;">7.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.14.10.2"><span class="ltx_text" id="S4.T6.6.14.10.2.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.6.14.10.3"><span class="ltx_text" id="S4.T6.6.14.10.3.1" style="font-size:90%;">26.94 it/s</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.6.14.10.4"><span class="ltx_text" id="S4.T6.6.14.10.4.1" style="font-size:90%;">7.31 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.14.10.5"><span class="ltx_text" id="S4.T6.6.14.10.5.1" style="font-size:90%;">1.94</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.15.11">
<td class="ltx_td ltx_align_center" id="S4.T6.6.15.11.1"><span class="ltx_text" id="S4.T6.6.15.11.1.1" style="font-size:90%;">7.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.15.11.2"><span class="ltx_text" id="S4.T6.6.15.11.2.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.6.15.11.3"><span class="ltx_text" id="S4.T6.6.15.11.3.1" style="font-size:90%;">14.63 it/s</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.6.15.11.4"><span class="ltx_text" id="S4.T6.6.15.11.4.1" style="font-size:90%;">7.31 GB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.15.11.5"><span class="ltx_text" id="S4.T6.6.15.11.5.1" style="font-size:90%;">1.97</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.16.12">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.6.16.12.1"><span class="ltx_text" id="S4.T6.6.16.12.1.1" style="font-size:90%;">7.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.6.16.12.2"><span class="ltx_text" id="S4.T6.6.16.12.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T6.6.16.12.3"><span class="ltx_text" id="S4.T6.6.16.12.3.1" style="font-size:90%;">7.25 it/s</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T6.6.16.12.4"><span class="ltx_text" id="S4.T6.6.16.12.4.1" style="font-size:90%;">7.33 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.6.16.12.5"><span class="ltx_text" id="S4.T6.6.16.12.5.1" style="font-size:90%;">1.95</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a quantitative analysis of the trade-off between efficiency and image generation quality for different model configurations.  The models were evaluated using an NVIDIA A800-80GB GPU, a batch size of 64, and bfloat16 precision. The table shows how various settings (model size, number of steps, and classifier-free guidance scale (wcfg)) impact the FID (Fréchet Inception Distance) score, throughput (images/second), memory usage (in GB), and Inception Score (IS).  The wcfg value represents the scaling factor used to achieve the best FID for each model configuration.
> <details>
> <summary>read the caption</summary>
> Table 6: Quantitative evaluation of efficiency-quality trade-off. Models evaluated on NVIDIA A800-80GB GPU with a batch size of 64 and bfloat16 precision. 𝒘cfgsubscript𝒘cfg\bm{w}_{\text{cfg}}bold_italic_w start_POSTSUBSCRIPT cfg end_POSTSUBSCRIPT: The classifier-free guidance scale for achieving the best FID.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T7.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T7.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T7.4.4.5"><span class="ltx_text" id="S4.T7.4.4.5.1" style="font-size:90%;">Order</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.4.4.6"><span class="ltx_text" id="S4.T7.4.4.6.1" style="font-size:90%;">Steps</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.1.1.1">
<span class="ltx_text" id="S4.T7.1.1.1.1" style="font-size:90%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T7.1.1.1.m1.1"><semantics id="S4.T7.1.1.1.m1.1a"><mo id="S4.T7.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T7.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T7.1.1.1.m1.1b"><ci id="S4.T7.1.1.1.m1.1.1.cmml" xref="S4.T7.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.2.2.2">
<span class="ltx_text" id="S4.T7.2.2.2.1" style="font-size:90%;">IS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.2.2.2.m1.1"><semantics id="S4.T7.2.2.2.m1.1a"><mo id="S4.T7.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T7.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.2.2.2.m1.1b"><ci id="S4.T7.2.2.2.m1.1.1.cmml" xref="S4.T7.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.3.3.3">
<span class="ltx_text" id="S4.T7.3.3.3.1" style="font-size:90%;">Precision</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.3.3.3.m1.1"><semantics id="S4.T7.3.3.3.m1.1a"><mo id="S4.T7.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T7.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.3.3.3.m1.1b"><ci id="S4.T7.3.3.3.m1.1.1.cmml" xref="S4.T7.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.4.4.4">
<span class="ltx_text" id="S4.T7.4.4.4.1" style="font-size:90%;">Recall</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.4.4.4.m1.1"><semantics id="S4.T7.4.4.4.m1.1a"><mo id="S4.T7.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T7.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.4.4.4.m1.1b"><ci id="S4.T7.4.4.4.m1.1.1.cmml" xref="S4.T7.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T7.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T7.4.5.1.1"><span class="ltx_text" id="S4.T7.4.5.1.1.1" style="font-size:90%;">Raster</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.5.1.2"><span class="ltx_text" id="S4.T7.4.5.1.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.5.1.3"><span class="ltx_text" id="S4.T7.4.5.1.3.1" style="font-size:90%;">2.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.5.1.4"><span class="ltx_text" id="S4.T7.4.5.1.4.1" style="font-size:90%;">277.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.5.1.5"><span class="ltx_text" id="S4.T7.4.5.1.5.1" style="font-size:90%;">0.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.5.1.6"><span class="ltx_text" id="S4.T7.4.5.1.6.1" style="font-size:90%;">0.58</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.4.6.2.1"><span class="ltx_text" id="S4.T7.4.6.2.1.1" style="font-size:90%;">Spiral-in</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.4.6.2.2"><span class="ltx_text" id="S4.T7.4.6.2.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.6.2.3"><span class="ltx_text" id="S4.T7.4.6.2.3.1" style="font-size:90%;">3.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.6.2.4"><span class="ltx_text" id="S4.T7.4.6.2.4.1" style="font-size:90%;">221.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.6.2.5"><span class="ltx_text" id="S4.T7.4.6.2.5.1" style="font-size:90%;">0.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.6.2.6"><span class="ltx_text" id="S4.T7.4.6.2.6.1" style="font-size:90%;">0.57</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.4.7.3.1"><span class="ltx_text" id="S4.T7.4.7.3.1.1" style="font-size:90%;">Spiral-out</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.4.7.3.2"><span class="ltx_text" id="S4.T7.4.7.3.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.7.3.3"><span class="ltx_text" id="S4.T7.4.7.3.3.1" style="font-size:90%;">4.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.7.3.4"><span class="ltx_text" id="S4.T7.4.7.3.4.1" style="font-size:90%;">210.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.7.3.5"><span class="ltx_text" id="S4.T7.4.7.3.5.1" style="font-size:90%;">0.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.7.3.6"><span class="ltx_text" id="S4.T7.4.7.3.6.1" style="font-size:90%;">0.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.4.8.4.1"><span class="ltx_text" id="S4.T7.4.8.4.1.1" style="font-size:90%;">Z-curve</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.4.8.4.2"><span class="ltx_text" id="S4.T7.4.8.4.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.8.4.3"><span class="ltx_text" id="S4.T7.4.8.4.3.1" style="font-size:90%;">2.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.8.4.4"><span class="ltx_text" id="S4.T7.4.8.4.4.1" style="font-size:90%;">278.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.8.4.5"><span class="ltx_text" id="S4.T7.4.8.4.5.1" style="font-size:90%;">0.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.8.4.6"><span class="ltx_text" id="S4.T7.4.8.4.6.1" style="font-size:90%;">0.51</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.4.9.5.1"><span class="ltx_text" id="S4.T7.4.9.5.1.1" style="font-size:90%;">Alternate</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.4.9.5.2"><span class="ltx_text" id="S4.T7.4.9.5.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.9.5.3"><span class="ltx_text" id="S4.T7.4.9.5.3.1" style="font-size:90%;">2.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.9.5.4"><span class="ltx_text" id="S4.T7.4.9.5.4.1" style="font-size:90%;">279.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.9.5.5"><span class="ltx_text" id="S4.T7.4.9.5.5.1" style="font-size:90%;">0.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.9.5.6"><span class="ltx_text" id="S4.T7.4.9.5.6.1" style="font-size:90%;">0.54</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T7.4.10.6.1"><span class="ltx_text" id="S4.T7.4.10.6.1.1" style="font-size:90%;">Random</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.10.6.2"><span class="ltx_text" id="S4.T7.4.10.6.2.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.10.6.3"><span class="ltx_text" id="S4.T7.4.10.6.3.1" style="font-size:90%;">2.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.10.6.4"><span class="ltx_text" id="S4.T7.4.10.6.4.1" style="font-size:90%;">287.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.10.6.5"><span class="ltx_text" id="S4.T7.4.10.6.5.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.10.6.6"><span class="ltx_text" id="S4.T7.4.10.6.6.1" style="font-size:90%;">0.55</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study that explores the impact of different image generation orders on a model pre-trained with a random generation order.  The study compares the model's performance (FID, IS, Precision, Recall) when generating images using various orders, including raster scan, spiral-in, spiral-out, Z-curve, alternate, and the random order used during pre-training.  This helps understand how the chosen generation order affects the quality and efficiency of the model's output.
> <details>
> <summary>read the caption</summary>
> Table 7: Effect of different generation orders tuned on a random order based pre-trained mode.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10568/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10568/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10568/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10568/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10568/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10568/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10568/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10568/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10568/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10568/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10568/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10568/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10568/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10568/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}