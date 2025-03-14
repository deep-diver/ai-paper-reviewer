---
title: "DiT-Air: Revisiting the Efficiency of Diffusion Model Architecture Design in Text to Image Generation"
summary: "DiT-Air: Achieves SOTA text-to-image generation by revisiting diffusion model efficiency via streamlined architecture and layer-wise parameter sharing."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Apple",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10618 {{< /keyword >}}
{{< keyword icon="writer" >}} Chen Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10618" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10618" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10618/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion Transformers (DiTs) have become a key architecture for text-to-image generation. However, many models add complexity through specialized designs, making it unclear if these changes truly boost efficiency and performance. The paper tackles this issue by evaluating different DiT architectures, including variants like PixArt-style and MMDiT, and comparing them to a basic DiT that processes combined text and noise inputs to determine what designs yield parameter efficiency. 



The paper introduces DiT-Air and DiT-Air-Lite, streamlined models that rival specialized models in performance. The streamlined architecture uses combined text/noise inputs and shared AdaLN parameters.  DiT-Air shrinks the model size by 66% compared to MMDiT. This research achieves state-of-the-art on GenEval and T2I CompBench. It also shows a new, state-of-the-art performance for image generation with a parameter-efficient design.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Standard DiT architectures can perform comparably to specialized models with superior parameter efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Layer-wise parameter sharing significantly reduces model size with minimal performance impact. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DiT-Air achieves state-of-the-art performance on GenEval and T2I CompBench while maintaining a compact size. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **simplifies DiT architectures, enhances parameter efficiency, and achieves state-of-the-art performance**. It offers insights into text-to-image synthesis and opens new avenues for optimizing diffusion models.

------
#### Visual Insights



![](https://arxiv.org/html/2503.10618/)

> 🔼 Figure 1 presents a performance comparison of various text-to-image generation models, using two key evaluation metrics: GenEval and T2I CompBench.  Higher scores on both metrics indicate better performance.  The figure highlights that the proposed DiT-Air model, despite having a significantly smaller parameter count (model size) than competing models, achieves state-of-the-art results.  Importantly, the reported model size for DiT-Air includes the parameters of the text encoder and Variational Autoencoder (VAE), which are often separate components in other models.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of text-to-image generation methods on two metrics, GenEval and T2I CompBench (higher is better for both). Despite significantly smaller model size, our proposed DiT-Air achieves state-of-the-art results. Note that, for our model, we report the full model size including text encoder and VAE. A detailed parameter breakdown is provided in Appendix G.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.F4.4">
<tr class="ltx_tr" id="S3.F4.3.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.F4.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="295" id="S3.F4.1.1.1.g1" src="extracted/6276989/Figure/Pixart.png" width="207"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F4.2.2.2"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="295" id="S3.F4.2.2.2.g1" src="extracted/6276989/Figure/SD3.png" width="277"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.F4.3.3.3"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="295" id="S3.F4.3.3.3.g1" src="extracted/6276989/Figure/Simple_DiT.png" width="216"/></td>
</tr>
<tr class="ltx_tr" id="S3.F4.4.4">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.F4.4.4.1"><span class="ltx_text" id="S3.F4.4.4.1.1" style="font-size:90%;">(a) PixArt-<math alttext="\alpha" class="ltx_Math" display="inline" id="S3.F4.4.4.1.1.m1.1"><semantics id="S3.F4.4.4.1.1.m1.1a"><mi id="S3.F4.4.4.1.1.m1.1.1" xref="S3.F4.4.4.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S3.F4.4.4.1.1.m1.1b"><ci id="S3.F4.4.4.1.1.m1.1.1.cmml" xref="S3.F4.4.4.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.F4.4.4.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S3.F4.4.4.1.1.m1.1d">italic_α</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F4.4.4.2"><span class="ltx_text" id="S3.F4.4.4.2.1" style="font-size:90%;">(b) MMDiT</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.F4.4.4.3"><span class="ltx_text" id="S3.F4.4.4.3.1" style="font-size:90%;">(c) DiT-Air</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table provides a detailed comparison of the parameter counts for four different diffusion transformer architectures: PixArt-α, MMDiT, DiT-Air, and DiT-Air-Lite.  It breaks down the parameter counts for key components such as AdaLN (Adaptive Layer Normalization), self-multi-head attention (Self-MHA), cross-multi-head attention (Cross-MHA - only present in PixArt-α and MMDiT), and MLPs (Multi-Layer Perceptrons). The table highlights how the parameter sharing strategy employed in DiT-Air and DiT-Air-Lite significantly reduces the overall parameter count compared to PixArt-α and MMDiT, particularly when scaled up (larger N).  'd' represents the effective embedding size (hidden dimension) of the model, and 'N' denotes the number of layers in the transformer. The table demonstrates the impact of architectural choices on model efficiency.
> <details>
> <summary>read the caption</summary>
> Table 1: Parameter counts for PixArt-α𝛼\alphaitalic_α, MMDiT, DiT-Air, and DiT-Air-lite (full vs. QKVO). d𝑑ditalic_d represents the effective embedding size in transformer blocks (i.e., the model’s hidden dimension), and N𝑁Nitalic_N denotes the number of layers. Our DiT-Air is a compact DiT with shared dual-stream AdaLN, hence saves parameters significantly.
> </details>





### In-depth insights


#### DiT Architecture
The Diffusion Transformer (DiT) architecture is a significant paradigm shift in text-to-image generation, blending the iterative denoising of diffusion models with the representational power of transformers. **DiT's core innovation lies in applying transformer architectures, traditionally used for sequence modeling, to the task of image generation**. Unlike CNNs, transformers can capture long-range dependencies and global context, crucial for generating coherent and high-quality images. Variations like PixArt-style models and MMDiT build upon this foundation, exploring different text-conditioning strategies and architectural components. **A key challenge in DiT design is balancing model capacity, computational efficiency, and text alignment**. Innovations like parameter sharing and streamlined architectures, aim to optimize this trade-off, leading to more efficient and performant text-to-image models.

#### Param. Sharing DiT
The research explores parameter sharing strategies within Diffusion Transformers (DiTs) to improve efficiency. It likely draws inspiration from NLP techniques like ALBERT, where **parameter sharing reduces model size without significant performance loss**. The 'Param. Sharing DiT' likely involves sharing parameters across different layers of the DiT architecture, potentially through **block-sharing (sharing entire transformer blocks) or attention-only sharing (sharing only attention-related parameters)**. The study probably assesses the trade-offs between parameter reduction and performance, focusing on metrics like image quality, text alignment, and generative fidelity. **Attention-only sharing might be a good compromise**, allowing for parameter reduction while preserving layer-specific feature extraction crucial for complex image generation. The analysis probably involves ablations to determine the optimal sharing strategy and its impact on various performance metrics.

#### Text-Image Alignment
**Text-image alignment** is a crucial factor in text-to-image generation. The models must be capable of generating an image that semantically aligns with the provided textual description. High scores in CLIP, PickScore, and GenEval are indicators of strong alignment. Techniques such as using bidirectional CLIP embeddings and appropriate layer selection strategies improve text-image alignment. Reward fine-tuning also can correct misalignments by penalizing deviations from the provided text, producing output closely related to prompt provided. Efficient alignment ensures that generated images are faithful to the user's intent, leading to more meaningful outcomes.

#### VAE Progressive
Progressive training of VAEs is a crucial area of research, particularly in generative models like DiT-Air, where high-fidelity image generation is desired. The progressive approach is used to address the trade-off between channel capacity and KL divergence. **Initially, a low-channel VAE is trained to establish a basic latent space.** Subsequently, the channel capacity is increased in stages, refining the VAE to capture more intricate details while mitigating KL divergence inflation. This iterative refinement allows the model to strike a balance between reconstruction quality and latent space regularity. **A progressively trained VAE can lead to improved downstream text-to-image performance**. In each stage, an intermediate convolutional layer is replaced with a higher channel capacity and continue the training. This whole process maintains the reconstruction quality while also lowering the KL divergence.

#### Reward Fine-Tune
**Reward Fine-tuning** is a crucial stage in refining generative models, leveraging **human preference scores** to align model outputs with desired aesthetic and semantic qualities. This process typically involves using a reward model, trained to predict human preferences, to guide the model's learning. A common challenge is **reward hacking**, where the generative model exploits loopholes in the reward model, leading to undesirable artifacts. Mitigation strategies often involve techniques like **early stopping** or regularization to prevent overfitting to the reward model's biases. The goal is to improve text alignment, visual appeal, and overall coherence while avoiding unintended consequences from reward model imperfections, aiming to achieve a **better balance** in image quality.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10618/x3.png)

> 🔼 This figure showcases sample images generated by the DiT-Air model. Each image is accompanied by the text prompt used to generate it, demonstrating the model's ability to transform text descriptions into corresponding visuals.  The diversity of the images and their fidelity to the prompts highlight the capabilities of the DiT-Air model in generating high-quality, varied outputs.  More examples are available in Appendix H.
> <details>
> <summary>read the caption</summary>
> Figure 2: Sample images from our proposed DiT-Air, each with the text prompt below it. See Appendix H for more examples.
> </details>



![](https://arxiv.org/html/2503.10618/x4.png)

> 🔼 This figure illustrates the process of latent diffusion training for text-to-image generation.  First, an input image (x) is encoded into a lower-dimensional latent representation (z0) using a Variational Autoencoder (VAE). Simultaneously, the input text prompt (p) is processed by a text encoder to generate a text embedding (c).  Then, a forward diffusion process adds noise to the latent representation (z0) at various timesteps (t). The core of the model, denoted as fθ, learns to reverse this diffusion process, predicting the added noise (or a similar target quantity) based on the noisy latent representation (zt), text embedding (c), and timestep (t).  This iterative denoising process is trained to minimize the difference between the model's prediction and the actual noise added at each step.  During inference, this trained model iteratively denoises a random latent vector to reconstruct a clean image from the text prompt.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of Latent Diffusion Training. During training, 𝐱𝐱\mathbf{x}bold_x is encoded into a latent 𝐳0subscript𝐳0\mathbf{z}_{0}bold_z start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT via a VAE, and the text prompt p𝑝pitalic_p is mapped to embeddings 𝐜𝐜\mathbf{c}bold_c. A forward diffusion adds noise to 𝐳0subscript𝐳0\mathbf{z}_{0}bold_z start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT, and the model learns to reverse this process by predicting the noise (or similar target) at each timestep.
> </details>



![](https://arxiv.org/html/2503.10618/x5.png)

> 🔼 Figure 4 illustrates three different Diffusion Transformer (DiT) architectures: PixArt-α, MMDiT, and the proposed DiT-Air.  PixArt-α uses sequential self- and cross-attention mechanisms, processing image patches and fixed text embeddings separately in each layer.  MMDiT employs a dual-stream approach, maintaining separate pathways for text and image tokens with dedicated parameters in each layer.  In contrast, DiT-Air adopts a simplified approach, resembling a standard DiT model.  DiT-Air directly processes concatenated text embeddings and image noise, thereby simplifying the architecture and reducing the number of parameters. Element-wise operations are represented by the bullet symbol, and sequence-wise operations are represented by a circle symbol in the diagram.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of Diffusion Transformer Architectures. Element-wise operations are denoted by ∙∙\bullet∙, and sequence-wise operations by ∘\circ∘. The details of inputs 𝐜𝐜\mathbf{c}bold_c, 𝐳𝐳\mathbf{z}bold_z, t𝑡titalic_t can be found in Figure 3. PixArt-α𝛼\alphaitalic_α relies on sequential self- and cross-attention, whereas MMDiT uses a dual-stream approach with separate parameters for text and image tokens. Our proposed DiT-Air resembles a vanilla DiT that processes concatenated text and noises.
> </details>



![](https://arxiv.org/html/2503.10618/x6.png)

> 🔼 This figure displays the relationship between model size and validation loss for three different text-to-image generation models: PixArt-α, MMDiT, and DiT-Air.  Model sizes range from small (S) to extra extra large (XXL), but the plotted size only considers the diffusion transformer part of the model, excluding the text encoder and VAE. The x-axis uses a logarithmic scale to better visualize the wide range of model sizes.  Trend lines are fitted to the data points using the power law function L = a * S<sup>b</sup>, where L represents validation loss and S represents model size.  The plot shows that DiT-Air exhibits the most efficient scaling, meaning it achieves lower validation loss with smaller model sizes compared to PixArt-α and MMDiT.
> <details>
> <summary>read the caption</summary>
> Figure 5: Validation Loss vs. Model Size for PixArt-α𝛼\alphaitalic_α, MMDiT, and DiT-Air. The plot illustrates the scaling behavior of three architectures across model sizes ranging from S to XXL, where the model size refers only to the diffusion transformer component (excluding the text encoder and VAE). The x-axis is in logarithmic scale, and the fitted lines depict the scaling trend using the formula L=a⋅Sb𝐿⋅𝑎superscript𝑆𝑏L=a\cdot S^{b}italic_L = italic_a ⋅ italic_S start_POSTSUPERSCRIPT italic_b end_POSTSUPERSCRIPT. Among the three, DiT-Air achieves the best parameter efficiency.
> </details>



![](https://arxiv.org/html/2503.10618/x7.png)

> 🔼 Figure 6 presents a comparative analysis of three different diffusion transformer architectures (PixArt-α, MMDiT, and DiT-Air) across a range of model sizes.  The performance is evaluated using six key metrics: Fréchet Inception Distance (FID), CLIPScore, PickScore, GenEval, LAION-Aesthetics, and T2I CompBench.  The graphs visually demonstrate the scaling behavior of each architecture as model size increases (shown on a logarithmic x-axis).  Error bars represent the uncertainty in the measurements. The main takeaway is that DiT-Air achieves competitive performance with significantly fewer parameters compared to the other two architectures, highlighting its superior parameter efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 6: Benchmark Performance Across Model Scales. The plots compare PixArt-α𝛼\alphaitalic_α, MMDiT, and DiT-Air across six evaluation metrics. DiT-Air demonstrates strong parameter efficiency, achieving competitive performance with fewer parameters. The x-axis is in logarithmic scale, and error bounds are indicated where applicable.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.28.22">
<tr class="ltx_tr" id="S3.T1.7.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.7.1.1.2" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.7.1.1.2.1" style="font-size:70%;">Component</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.7.1.1.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.7.1.1.1.1" style="font-size:70%;">PixArt-<math alttext="\alpha" class="ltx_Math" display="inline" id="S3.T1.7.1.1.1.1.1.m1.1"><semantics id="S3.T1.7.1.1.1.1.1.m1.1a"><mi id="S3.T1.7.1.1.1.1.1.m1.1.1" xref="S3.T1.7.1.1.1.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S3.T1.7.1.1.1.1.1.m1.1b"><ci id="S3.T1.7.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.7.1.1.1.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.1.1.1.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.1.1.1.1.1.m1.1d">italic_α</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.7.1.1.3" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.7.1.1.3.1" style="font-size:70%;">MMDiT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.7.1.1.4" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.7.1.1.4.1" style="font-size:70%;">DiT-Air</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.7.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.7.1.1.5.1" style="font-size:70%;">DiT-Air-Lite</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.28.22.23">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.28.22.23.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.22.23.1.1" style="font-size:70%;">(full)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.28.22.23.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.22.23.2.1" style="font-size:70%;">(attention)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.12.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.12.6.6.6.1" style="font-size:70%;">AdaLN</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="6d^{2}" class="ltx_Math" display="inline" id="S3.T1.8.2.2.1.m1.1"><semantics id="S3.T1.8.2.2.1.m1.1a"><mrow id="S3.T1.8.2.2.1.m1.1.1" xref="S3.T1.8.2.2.1.m1.1.1.cmml"><mn id="S3.T1.8.2.2.1.m1.1.1.2" mathsize="70%" xref="S3.T1.8.2.2.1.m1.1.1.2.cmml">6</mn><mo id="S3.T1.8.2.2.1.m1.1.1.1" xref="S3.T1.8.2.2.1.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.8.2.2.1.m1.1.1.3" xref="S3.T1.8.2.2.1.m1.1.1.3.cmml"><mi id="S3.T1.8.2.2.1.m1.1.1.3.2" mathsize="70%" xref="S3.T1.8.2.2.1.m1.1.1.3.2.cmml">d</mi><mn id="S3.T1.8.2.2.1.m1.1.1.3.3" mathsize="70%" xref="S3.T1.8.2.2.1.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.8.2.2.1.m1.1b"><apply id="S3.T1.8.2.2.1.m1.1.1.cmml" xref="S3.T1.8.2.2.1.m1.1.1"><times id="S3.T1.8.2.2.1.m1.1.1.1.cmml" xref="S3.T1.8.2.2.1.m1.1.1.1"></times><cn id="S3.T1.8.2.2.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.8.2.2.1.m1.1.1.2">6</cn><apply id="S3.T1.8.2.2.1.m1.1.1.3.cmml" xref="S3.T1.8.2.2.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.8.2.2.1.m1.1.1.3.1.cmml" xref="S3.T1.8.2.2.1.m1.1.1.3">superscript</csymbol><ci id="S3.T1.8.2.2.1.m1.1.1.3.2.cmml" xref="S3.T1.8.2.2.1.m1.1.1.3.2">𝑑</ci><cn id="S3.T1.8.2.2.1.m1.1.1.3.3.cmml" type="integer" xref="S3.T1.8.2.2.1.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.2.2.1.m1.1c">6d^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.2.2.1.m1.1d">6 italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="12Nd^{2}" class="ltx_Math" display="inline" id="S3.T1.9.3.3.2.m1.1"><semantics id="S3.T1.9.3.3.2.m1.1a"><mrow id="S3.T1.9.3.3.2.m1.1.1" xref="S3.T1.9.3.3.2.m1.1.1.cmml"><mn id="S3.T1.9.3.3.2.m1.1.1.2" mathsize="70%" xref="S3.T1.9.3.3.2.m1.1.1.2.cmml">12</mn><mo id="S3.T1.9.3.3.2.m1.1.1.1" xref="S3.T1.9.3.3.2.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.9.3.3.2.m1.1.1.3" mathsize="70%" xref="S3.T1.9.3.3.2.m1.1.1.3.cmml">N</mi><mo id="S3.T1.9.3.3.2.m1.1.1.1a" xref="S3.T1.9.3.3.2.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.9.3.3.2.m1.1.1.4" xref="S3.T1.9.3.3.2.m1.1.1.4.cmml"><mi id="S3.T1.9.3.3.2.m1.1.1.4.2" mathsize="70%" xref="S3.T1.9.3.3.2.m1.1.1.4.2.cmml">d</mi><mn id="S3.T1.9.3.3.2.m1.1.1.4.3" mathsize="70%" xref="S3.T1.9.3.3.2.m1.1.1.4.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.9.3.3.2.m1.1b"><apply id="S3.T1.9.3.3.2.m1.1.1.cmml" xref="S3.T1.9.3.3.2.m1.1.1"><times id="S3.T1.9.3.3.2.m1.1.1.1.cmml" xref="S3.T1.9.3.3.2.m1.1.1.1"></times><cn id="S3.T1.9.3.3.2.m1.1.1.2.cmml" type="integer" xref="S3.T1.9.3.3.2.m1.1.1.2">12</cn><ci id="S3.T1.9.3.3.2.m1.1.1.3.cmml" xref="S3.T1.9.3.3.2.m1.1.1.3">𝑁</ci><apply id="S3.T1.9.3.3.2.m1.1.1.4.cmml" xref="S3.T1.9.3.3.2.m1.1.1.4"><csymbol cd="ambiguous" id="S3.T1.9.3.3.2.m1.1.1.4.1.cmml" xref="S3.T1.9.3.3.2.m1.1.1.4">superscript</csymbol><ci id="S3.T1.9.3.3.2.m1.1.1.4.2.cmml" xref="S3.T1.9.3.3.2.m1.1.1.4.2">𝑑</ci><cn id="S3.T1.9.3.3.2.m1.1.1.4.3.cmml" type="integer" xref="S3.T1.9.3.3.2.m1.1.1.4.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.3.3.2.m1.1c">12Nd^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.3.3.2.m1.1d">12 italic_N italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="12d^{2}" class="ltx_Math" display="inline" id="S3.T1.10.4.4.3.m1.1"><semantics id="S3.T1.10.4.4.3.m1.1a"><mrow id="S3.T1.10.4.4.3.m1.1.1" xref="S3.T1.10.4.4.3.m1.1.1.cmml"><mn id="S3.T1.10.4.4.3.m1.1.1.2" mathsize="70%" xref="S3.T1.10.4.4.3.m1.1.1.2.cmml">12</mn><mo id="S3.T1.10.4.4.3.m1.1.1.1" xref="S3.T1.10.4.4.3.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.10.4.4.3.m1.1.1.3" xref="S3.T1.10.4.4.3.m1.1.1.3.cmml"><mi id="S3.T1.10.4.4.3.m1.1.1.3.2" mathsize="70%" xref="S3.T1.10.4.4.3.m1.1.1.3.2.cmml">d</mi><mn id="S3.T1.10.4.4.3.m1.1.1.3.3" mathsize="70%" xref="S3.T1.10.4.4.3.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.10.4.4.3.m1.1b"><apply id="S3.T1.10.4.4.3.m1.1.1.cmml" xref="S3.T1.10.4.4.3.m1.1.1"><times id="S3.T1.10.4.4.3.m1.1.1.1.cmml" xref="S3.T1.10.4.4.3.m1.1.1.1"></times><cn id="S3.T1.10.4.4.3.m1.1.1.2.cmml" type="integer" xref="S3.T1.10.4.4.3.m1.1.1.2">12</cn><apply id="S3.T1.10.4.4.3.m1.1.1.3.cmml" xref="S3.T1.10.4.4.3.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.10.4.4.3.m1.1.1.3.1.cmml" xref="S3.T1.10.4.4.3.m1.1.1.3">superscript</csymbol><ci id="S3.T1.10.4.4.3.m1.1.1.3.2.cmml" xref="S3.T1.10.4.4.3.m1.1.1.3.2">𝑑</ci><cn id="S3.T1.10.4.4.3.m1.1.1.3.3.cmml" type="integer" xref="S3.T1.10.4.4.3.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.4.4.3.m1.1c">12d^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.4.4.3.m1.1d">12 italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.5.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="12d^{2}" class="ltx_Math" display="inline" id="S3.T1.11.5.5.4.m1.1"><semantics id="S3.T1.11.5.5.4.m1.1a"><mrow id="S3.T1.11.5.5.4.m1.1.1" xref="S3.T1.11.5.5.4.m1.1.1.cmml"><mn id="S3.T1.11.5.5.4.m1.1.1.2" mathsize="70%" xref="S3.T1.11.5.5.4.m1.1.1.2.cmml">12</mn><mo id="S3.T1.11.5.5.4.m1.1.1.1" xref="S3.T1.11.5.5.4.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.11.5.5.4.m1.1.1.3" xref="S3.T1.11.5.5.4.m1.1.1.3.cmml"><mi id="S3.T1.11.5.5.4.m1.1.1.3.2" mathsize="70%" xref="S3.T1.11.5.5.4.m1.1.1.3.2.cmml">d</mi><mn id="S3.T1.11.5.5.4.m1.1.1.3.3" mathsize="70%" xref="S3.T1.11.5.5.4.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.11.5.5.4.m1.1b"><apply id="S3.T1.11.5.5.4.m1.1.1.cmml" xref="S3.T1.11.5.5.4.m1.1.1"><times id="S3.T1.11.5.5.4.m1.1.1.1.cmml" xref="S3.T1.11.5.5.4.m1.1.1.1"></times><cn id="S3.T1.11.5.5.4.m1.1.1.2.cmml" type="integer" xref="S3.T1.11.5.5.4.m1.1.1.2">12</cn><apply id="S3.T1.11.5.5.4.m1.1.1.3.cmml" xref="S3.T1.11.5.5.4.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.11.5.5.4.m1.1.1.3.1.cmml" xref="S3.T1.11.5.5.4.m1.1.1.3">superscript</csymbol><ci id="S3.T1.11.5.5.4.m1.1.1.3.2.cmml" xref="S3.T1.11.5.5.4.m1.1.1.3.2">𝑑</ci><cn id="S3.T1.11.5.5.4.m1.1.1.3.3.cmml" type="integer" xref="S3.T1.11.5.5.4.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.5.5.4.m1.1c">12d^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.5.5.4.m1.1d">12 italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="12d^{2}" class="ltx_Math" display="inline" id="S3.T1.12.6.6.5.m1.1"><semantics id="S3.T1.12.6.6.5.m1.1a"><mrow id="S3.T1.12.6.6.5.m1.1.1" xref="S3.T1.12.6.6.5.m1.1.1.cmml"><mn id="S3.T1.12.6.6.5.m1.1.1.2" mathsize="70%" xref="S3.T1.12.6.6.5.m1.1.1.2.cmml">12</mn><mo id="S3.T1.12.6.6.5.m1.1.1.1" xref="S3.T1.12.6.6.5.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.12.6.6.5.m1.1.1.3" xref="S3.T1.12.6.6.5.m1.1.1.3.cmml"><mi id="S3.T1.12.6.6.5.m1.1.1.3.2" mathsize="70%" xref="S3.T1.12.6.6.5.m1.1.1.3.2.cmml">d</mi><mn id="S3.T1.12.6.6.5.m1.1.1.3.3" mathsize="70%" xref="S3.T1.12.6.6.5.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.12.6.6.5.m1.1b"><apply id="S3.T1.12.6.6.5.m1.1.1.cmml" xref="S3.T1.12.6.6.5.m1.1.1"><times id="S3.T1.12.6.6.5.m1.1.1.1.cmml" xref="S3.T1.12.6.6.5.m1.1.1.1"></times><cn id="S3.T1.12.6.6.5.m1.1.1.2.cmml" type="integer" xref="S3.T1.12.6.6.5.m1.1.1.2">12</cn><apply id="S3.T1.12.6.6.5.m1.1.1.3.cmml" xref="S3.T1.12.6.6.5.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.12.6.6.5.m1.1.1.3.1.cmml" xref="S3.T1.12.6.6.5.m1.1.1.3">superscript</csymbol><ci id="S3.T1.12.6.6.5.m1.1.1.3.2.cmml" xref="S3.T1.12.6.6.5.m1.1.1.3.2">𝑑</ci><cn id="S3.T1.12.6.6.5.m1.1.1.3.3.cmml" type="integer" xref="S3.T1.12.6.6.5.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.6.6.5.m1.1c">12d^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.6.6.5.m1.1d">12 italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.17.11.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.17.11.11.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.17.11.11.6.1" style="font-size:70%;">Self-MHA</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.13.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="4Nd^{2}" class="ltx_Math" display="inline" id="S3.T1.13.7.7.1.m1.1"><semantics id="S3.T1.13.7.7.1.m1.1a"><mrow id="S3.T1.13.7.7.1.m1.1.1" xref="S3.T1.13.7.7.1.m1.1.1.cmml"><mn id="S3.T1.13.7.7.1.m1.1.1.2" mathsize="70%" xref="S3.T1.13.7.7.1.m1.1.1.2.cmml">4</mn><mo id="S3.T1.13.7.7.1.m1.1.1.1" xref="S3.T1.13.7.7.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.13.7.7.1.m1.1.1.3" mathsize="70%" xref="S3.T1.13.7.7.1.m1.1.1.3.cmml">N</mi><mo id="S3.T1.13.7.7.1.m1.1.1.1a" xref="S3.T1.13.7.7.1.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.13.7.7.1.m1.1.1.4" xref="S3.T1.13.7.7.1.m1.1.1.4.cmml"><mi id="S3.T1.13.7.7.1.m1.1.1.4.2" mathsize="70%" xref="S3.T1.13.7.7.1.m1.1.1.4.2.cmml">d</mi><mn id="S3.T1.13.7.7.1.m1.1.1.4.3" mathsize="70%" xref="S3.T1.13.7.7.1.m1.1.1.4.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.13.7.7.1.m1.1b"><apply id="S3.T1.13.7.7.1.m1.1.1.cmml" xref="S3.T1.13.7.7.1.m1.1.1"><times id="S3.T1.13.7.7.1.m1.1.1.1.cmml" xref="S3.T1.13.7.7.1.m1.1.1.1"></times><cn id="S3.T1.13.7.7.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.13.7.7.1.m1.1.1.2">4</cn><ci id="S3.T1.13.7.7.1.m1.1.1.3.cmml" xref="S3.T1.13.7.7.1.m1.1.1.3">𝑁</ci><apply id="S3.T1.13.7.7.1.m1.1.1.4.cmml" xref="S3.T1.13.7.7.1.m1.1.1.4"><csymbol cd="ambiguous" id="S3.T1.13.7.7.1.m1.1.1.4.1.cmml" xref="S3.T1.13.7.7.1.m1.1.1.4">superscript</csymbol><ci id="S3.T1.13.7.7.1.m1.1.1.4.2.cmml" xref="S3.T1.13.7.7.1.m1.1.1.4.2">𝑑</ci><cn id="S3.T1.13.7.7.1.m1.1.1.4.3.cmml" type="integer" xref="S3.T1.13.7.7.1.m1.1.1.4.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.13.7.7.1.m1.1c">4Nd^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.13.7.7.1.m1.1d">4 italic_N italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="8Nd^{2}" class="ltx_Math" display="inline" id="S3.T1.14.8.8.2.m1.1"><semantics id="S3.T1.14.8.8.2.m1.1a"><mrow id="S3.T1.14.8.8.2.m1.1.1" xref="S3.T1.14.8.8.2.m1.1.1.cmml"><mn id="S3.T1.14.8.8.2.m1.1.1.2" mathsize="70%" xref="S3.T1.14.8.8.2.m1.1.1.2.cmml">8</mn><mo id="S3.T1.14.8.8.2.m1.1.1.1" xref="S3.T1.14.8.8.2.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.14.8.8.2.m1.1.1.3" mathsize="70%" xref="S3.T1.14.8.8.2.m1.1.1.3.cmml">N</mi><mo id="S3.T1.14.8.8.2.m1.1.1.1a" xref="S3.T1.14.8.8.2.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.14.8.8.2.m1.1.1.4" xref="S3.T1.14.8.8.2.m1.1.1.4.cmml"><mi id="S3.T1.14.8.8.2.m1.1.1.4.2" mathsize="70%" xref="S3.T1.14.8.8.2.m1.1.1.4.2.cmml">d</mi><mn id="S3.T1.14.8.8.2.m1.1.1.4.3" mathsize="70%" xref="S3.T1.14.8.8.2.m1.1.1.4.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.14.8.8.2.m1.1b"><apply id="S3.T1.14.8.8.2.m1.1.1.cmml" xref="S3.T1.14.8.8.2.m1.1.1"><times id="S3.T1.14.8.8.2.m1.1.1.1.cmml" xref="S3.T1.14.8.8.2.m1.1.1.1"></times><cn id="S3.T1.14.8.8.2.m1.1.1.2.cmml" type="integer" xref="S3.T1.14.8.8.2.m1.1.1.2">8</cn><ci id="S3.T1.14.8.8.2.m1.1.1.3.cmml" xref="S3.T1.14.8.8.2.m1.1.1.3">𝑁</ci><apply id="S3.T1.14.8.8.2.m1.1.1.4.cmml" xref="S3.T1.14.8.8.2.m1.1.1.4"><csymbol cd="ambiguous" id="S3.T1.14.8.8.2.m1.1.1.4.1.cmml" xref="S3.T1.14.8.8.2.m1.1.1.4">superscript</csymbol><ci id="S3.T1.14.8.8.2.m1.1.1.4.2.cmml" xref="S3.T1.14.8.8.2.m1.1.1.4.2">𝑑</ci><cn id="S3.T1.14.8.8.2.m1.1.1.4.3.cmml" type="integer" xref="S3.T1.14.8.8.2.m1.1.1.4.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.14.8.8.2.m1.1c">8Nd^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.14.8.8.2.m1.1d">8 italic_N italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.9.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="4Nd^{2}" class="ltx_Math" display="inline" id="S3.T1.15.9.9.3.m1.1"><semantics id="S3.T1.15.9.9.3.m1.1a"><mrow id="S3.T1.15.9.9.3.m1.1.1" xref="S3.T1.15.9.9.3.m1.1.1.cmml"><mn id="S3.T1.15.9.9.3.m1.1.1.2" mathsize="70%" xref="S3.T1.15.9.9.3.m1.1.1.2.cmml">4</mn><mo id="S3.T1.15.9.9.3.m1.1.1.1" xref="S3.T1.15.9.9.3.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.15.9.9.3.m1.1.1.3" mathsize="70%" xref="S3.T1.15.9.9.3.m1.1.1.3.cmml">N</mi><mo id="S3.T1.15.9.9.3.m1.1.1.1a" xref="S3.T1.15.9.9.3.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.15.9.9.3.m1.1.1.4" xref="S3.T1.15.9.9.3.m1.1.1.4.cmml"><mi id="S3.T1.15.9.9.3.m1.1.1.4.2" mathsize="70%" xref="S3.T1.15.9.9.3.m1.1.1.4.2.cmml">d</mi><mn id="S3.T1.15.9.9.3.m1.1.1.4.3" mathsize="70%" xref="S3.T1.15.9.9.3.m1.1.1.4.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.15.9.9.3.m1.1b"><apply id="S3.T1.15.9.9.3.m1.1.1.cmml" xref="S3.T1.15.9.9.3.m1.1.1"><times id="S3.T1.15.9.9.3.m1.1.1.1.cmml" xref="S3.T1.15.9.9.3.m1.1.1.1"></times><cn id="S3.T1.15.9.9.3.m1.1.1.2.cmml" type="integer" xref="S3.T1.15.9.9.3.m1.1.1.2">4</cn><ci id="S3.T1.15.9.9.3.m1.1.1.3.cmml" xref="S3.T1.15.9.9.3.m1.1.1.3">𝑁</ci><apply id="S3.T1.15.9.9.3.m1.1.1.4.cmml" xref="S3.T1.15.9.9.3.m1.1.1.4"><csymbol cd="ambiguous" id="S3.T1.15.9.9.3.m1.1.1.4.1.cmml" xref="S3.T1.15.9.9.3.m1.1.1.4">superscript</csymbol><ci id="S3.T1.15.9.9.3.m1.1.1.4.2.cmml" xref="S3.T1.15.9.9.3.m1.1.1.4.2">𝑑</ci><cn id="S3.T1.15.9.9.3.m1.1.1.4.3.cmml" type="integer" xref="S3.T1.15.9.9.3.m1.1.1.4.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.15.9.9.3.m1.1c">4Nd^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.15.9.9.3.m1.1d">4 italic_N italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.10.10.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="4d^{2}" class="ltx_Math" display="inline" id="S3.T1.16.10.10.4.m1.1"><semantics id="S3.T1.16.10.10.4.m1.1a"><mrow id="S3.T1.16.10.10.4.m1.1.1" xref="S3.T1.16.10.10.4.m1.1.1.cmml"><mn id="S3.T1.16.10.10.4.m1.1.1.2" mathsize="70%" xref="S3.T1.16.10.10.4.m1.1.1.2.cmml">4</mn><mo id="S3.T1.16.10.10.4.m1.1.1.1" xref="S3.T1.16.10.10.4.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.16.10.10.4.m1.1.1.3" xref="S3.T1.16.10.10.4.m1.1.1.3.cmml"><mi id="S3.T1.16.10.10.4.m1.1.1.3.2" mathsize="70%" xref="S3.T1.16.10.10.4.m1.1.1.3.2.cmml">d</mi><mn id="S3.T1.16.10.10.4.m1.1.1.3.3" mathsize="70%" xref="S3.T1.16.10.10.4.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.16.10.10.4.m1.1b"><apply id="S3.T1.16.10.10.4.m1.1.1.cmml" xref="S3.T1.16.10.10.4.m1.1.1"><times id="S3.T1.16.10.10.4.m1.1.1.1.cmml" xref="S3.T1.16.10.10.4.m1.1.1.1"></times><cn id="S3.T1.16.10.10.4.m1.1.1.2.cmml" type="integer" xref="S3.T1.16.10.10.4.m1.1.1.2">4</cn><apply id="S3.T1.16.10.10.4.m1.1.1.3.cmml" xref="S3.T1.16.10.10.4.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.16.10.10.4.m1.1.1.3.1.cmml" xref="S3.T1.16.10.10.4.m1.1.1.3">superscript</csymbol><ci id="S3.T1.16.10.10.4.m1.1.1.3.2.cmml" xref="S3.T1.16.10.10.4.m1.1.1.3.2">𝑑</ci><cn id="S3.T1.16.10.10.4.m1.1.1.3.3.cmml" type="integer" xref="S3.T1.16.10.10.4.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.16.10.10.4.m1.1c">4d^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.16.10.10.4.m1.1d">4 italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.17.11.11.5" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="4d^{2}" class="ltx_Math" display="inline" id="S3.T1.17.11.11.5.m1.1"><semantics id="S3.T1.17.11.11.5.m1.1a"><mrow id="S3.T1.17.11.11.5.m1.1.1" xref="S3.T1.17.11.11.5.m1.1.1.cmml"><mn id="S3.T1.17.11.11.5.m1.1.1.2" mathsize="70%" xref="S3.T1.17.11.11.5.m1.1.1.2.cmml">4</mn><mo id="S3.T1.17.11.11.5.m1.1.1.1" xref="S3.T1.17.11.11.5.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.17.11.11.5.m1.1.1.3" xref="S3.T1.17.11.11.5.m1.1.1.3.cmml"><mi id="S3.T1.17.11.11.5.m1.1.1.3.2" mathsize="70%" xref="S3.T1.17.11.11.5.m1.1.1.3.2.cmml">d</mi><mn id="S3.T1.17.11.11.5.m1.1.1.3.3" mathsize="70%" xref="S3.T1.17.11.11.5.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.17.11.11.5.m1.1b"><apply id="S3.T1.17.11.11.5.m1.1.1.cmml" xref="S3.T1.17.11.11.5.m1.1.1"><times id="S3.T1.17.11.11.5.m1.1.1.1.cmml" xref="S3.T1.17.11.11.5.m1.1.1.1"></times><cn id="S3.T1.17.11.11.5.m1.1.1.2.cmml" type="integer" xref="S3.T1.17.11.11.5.m1.1.1.2">4</cn><apply id="S3.T1.17.11.11.5.m1.1.1.3.cmml" xref="S3.T1.17.11.11.5.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.17.11.11.5.m1.1.1.3.1.cmml" xref="S3.T1.17.11.11.5.m1.1.1.3">superscript</csymbol><ci id="S3.T1.17.11.11.5.m1.1.1.3.2.cmml" xref="S3.T1.17.11.11.5.m1.1.1.3.2">𝑑</ci><cn id="S3.T1.17.11.11.5.m1.1.1.3.3.cmml" type="integer" xref="S3.T1.17.11.11.5.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.17.11.11.5.m1.1c">4d^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.17.11.11.5.m1.1d">4 italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.18.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.18.12.12.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.18.12.12.2.1" style="font-size:70%;">Cross-MHA</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.18.12.12.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="4Nd^{2}" class="ltx_Math" display="inline" id="S3.T1.18.12.12.1.m1.1"><semantics id="S3.T1.18.12.12.1.m1.1a"><mrow id="S3.T1.18.12.12.1.m1.1.1" xref="S3.T1.18.12.12.1.m1.1.1.cmml"><mn id="S3.T1.18.12.12.1.m1.1.1.2" mathsize="70%" xref="S3.T1.18.12.12.1.m1.1.1.2.cmml">4</mn><mo id="S3.T1.18.12.12.1.m1.1.1.1" xref="S3.T1.18.12.12.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.18.12.12.1.m1.1.1.3" mathsize="70%" xref="S3.T1.18.12.12.1.m1.1.1.3.cmml">N</mi><mo id="S3.T1.18.12.12.1.m1.1.1.1a" xref="S3.T1.18.12.12.1.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.18.12.12.1.m1.1.1.4" xref="S3.T1.18.12.12.1.m1.1.1.4.cmml"><mi id="S3.T1.18.12.12.1.m1.1.1.4.2" mathsize="70%" xref="S3.T1.18.12.12.1.m1.1.1.4.2.cmml">d</mi><mn id="S3.T1.18.12.12.1.m1.1.1.4.3" mathsize="70%" xref="S3.T1.18.12.12.1.m1.1.1.4.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.18.12.12.1.m1.1b"><apply id="S3.T1.18.12.12.1.m1.1.1.cmml" xref="S3.T1.18.12.12.1.m1.1.1"><times id="S3.T1.18.12.12.1.m1.1.1.1.cmml" xref="S3.T1.18.12.12.1.m1.1.1.1"></times><cn id="S3.T1.18.12.12.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.18.12.12.1.m1.1.1.2">4</cn><ci id="S3.T1.18.12.12.1.m1.1.1.3.cmml" xref="S3.T1.18.12.12.1.m1.1.1.3">𝑁</ci><apply id="S3.T1.18.12.12.1.m1.1.1.4.cmml" xref="S3.T1.18.12.12.1.m1.1.1.4"><csymbol cd="ambiguous" id="S3.T1.18.12.12.1.m1.1.1.4.1.cmml" xref="S3.T1.18.12.12.1.m1.1.1.4">superscript</csymbol><ci id="S3.T1.18.12.12.1.m1.1.1.4.2.cmml" xref="S3.T1.18.12.12.1.m1.1.1.4.2">𝑑</ci><cn id="S3.T1.18.12.12.1.m1.1.1.4.3.cmml" type="integer" xref="S3.T1.18.12.12.1.m1.1.1.4.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.18.12.12.1.m1.1c">4Nd^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.18.12.12.1.m1.1d">4 italic_N italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.18.12.12.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.18.12.12.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.18.12.12.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.18.12.12.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.18.12.12.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.18.12.12.5.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.18.12.12.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.18.12.12.6.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.23.17.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.23.17.17.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.23.17.17.6.1" style="font-size:70%;">MLP</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.13.13.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="8Nd^{2}" class="ltx_Math" display="inline" id="S3.T1.19.13.13.1.m1.1"><semantics id="S3.T1.19.13.13.1.m1.1a"><mrow id="S3.T1.19.13.13.1.m1.1.1" xref="S3.T1.19.13.13.1.m1.1.1.cmml"><mn id="S3.T1.19.13.13.1.m1.1.1.2" mathsize="70%" xref="S3.T1.19.13.13.1.m1.1.1.2.cmml">8</mn><mo id="S3.T1.19.13.13.1.m1.1.1.1" xref="S3.T1.19.13.13.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.19.13.13.1.m1.1.1.3" mathsize="70%" xref="S3.T1.19.13.13.1.m1.1.1.3.cmml">N</mi><mo id="S3.T1.19.13.13.1.m1.1.1.1a" xref="S3.T1.19.13.13.1.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.19.13.13.1.m1.1.1.4" xref="S3.T1.19.13.13.1.m1.1.1.4.cmml"><mi id="S3.T1.19.13.13.1.m1.1.1.4.2" mathsize="70%" xref="S3.T1.19.13.13.1.m1.1.1.4.2.cmml">d</mi><mn id="S3.T1.19.13.13.1.m1.1.1.4.3" mathsize="70%" xref="S3.T1.19.13.13.1.m1.1.1.4.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.19.13.13.1.m1.1b"><apply id="S3.T1.19.13.13.1.m1.1.1.cmml" xref="S3.T1.19.13.13.1.m1.1.1"><times id="S3.T1.19.13.13.1.m1.1.1.1.cmml" xref="S3.T1.19.13.13.1.m1.1.1.1"></times><cn id="S3.T1.19.13.13.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.19.13.13.1.m1.1.1.2">8</cn><ci id="S3.T1.19.13.13.1.m1.1.1.3.cmml" xref="S3.T1.19.13.13.1.m1.1.1.3">𝑁</ci><apply id="S3.T1.19.13.13.1.m1.1.1.4.cmml" xref="S3.T1.19.13.13.1.m1.1.1.4"><csymbol cd="ambiguous" id="S3.T1.19.13.13.1.m1.1.1.4.1.cmml" xref="S3.T1.19.13.13.1.m1.1.1.4">superscript</csymbol><ci id="S3.T1.19.13.13.1.m1.1.1.4.2.cmml" xref="S3.T1.19.13.13.1.m1.1.1.4.2">𝑑</ci><cn id="S3.T1.19.13.13.1.m1.1.1.4.3.cmml" type="integer" xref="S3.T1.19.13.13.1.m1.1.1.4.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.19.13.13.1.m1.1c">8Nd^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.19.13.13.1.m1.1d">8 italic_N italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.14.14.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="16Nd^{2}" class="ltx_Math" display="inline" id="S3.T1.20.14.14.2.m1.1"><semantics id="S3.T1.20.14.14.2.m1.1a"><mrow id="S3.T1.20.14.14.2.m1.1.1" xref="S3.T1.20.14.14.2.m1.1.1.cmml"><mn id="S3.T1.20.14.14.2.m1.1.1.2" mathsize="70%" xref="S3.T1.20.14.14.2.m1.1.1.2.cmml">16</mn><mo id="S3.T1.20.14.14.2.m1.1.1.1" xref="S3.T1.20.14.14.2.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.20.14.14.2.m1.1.1.3" mathsize="70%" xref="S3.T1.20.14.14.2.m1.1.1.3.cmml">N</mi><mo id="S3.T1.20.14.14.2.m1.1.1.1a" xref="S3.T1.20.14.14.2.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.20.14.14.2.m1.1.1.4" xref="S3.T1.20.14.14.2.m1.1.1.4.cmml"><mi id="S3.T1.20.14.14.2.m1.1.1.4.2" mathsize="70%" xref="S3.T1.20.14.14.2.m1.1.1.4.2.cmml">d</mi><mn id="S3.T1.20.14.14.2.m1.1.1.4.3" mathsize="70%" xref="S3.T1.20.14.14.2.m1.1.1.4.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.20.14.14.2.m1.1b"><apply id="S3.T1.20.14.14.2.m1.1.1.cmml" xref="S3.T1.20.14.14.2.m1.1.1"><times id="S3.T1.20.14.14.2.m1.1.1.1.cmml" xref="S3.T1.20.14.14.2.m1.1.1.1"></times><cn id="S3.T1.20.14.14.2.m1.1.1.2.cmml" type="integer" xref="S3.T1.20.14.14.2.m1.1.1.2">16</cn><ci id="S3.T1.20.14.14.2.m1.1.1.3.cmml" xref="S3.T1.20.14.14.2.m1.1.1.3">𝑁</ci><apply id="S3.T1.20.14.14.2.m1.1.1.4.cmml" xref="S3.T1.20.14.14.2.m1.1.1.4"><csymbol cd="ambiguous" id="S3.T1.20.14.14.2.m1.1.1.4.1.cmml" xref="S3.T1.20.14.14.2.m1.1.1.4">superscript</csymbol><ci id="S3.T1.20.14.14.2.m1.1.1.4.2.cmml" xref="S3.T1.20.14.14.2.m1.1.1.4.2">𝑑</ci><cn id="S3.T1.20.14.14.2.m1.1.1.4.3.cmml" type="integer" xref="S3.T1.20.14.14.2.m1.1.1.4.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.20.14.14.2.m1.1c">16Nd^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.20.14.14.2.m1.1d">16 italic_N italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.21.15.15.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="8Nd^{2}" class="ltx_Math" display="inline" id="S3.T1.21.15.15.3.m1.1"><semantics id="S3.T1.21.15.15.3.m1.1a"><mrow id="S3.T1.21.15.15.3.m1.1.1" xref="S3.T1.21.15.15.3.m1.1.1.cmml"><mn id="S3.T1.21.15.15.3.m1.1.1.2" mathsize="70%" xref="S3.T1.21.15.15.3.m1.1.1.2.cmml">8</mn><mo id="S3.T1.21.15.15.3.m1.1.1.1" xref="S3.T1.21.15.15.3.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.21.15.15.3.m1.1.1.3" mathsize="70%" xref="S3.T1.21.15.15.3.m1.1.1.3.cmml">N</mi><mo id="S3.T1.21.15.15.3.m1.1.1.1a" xref="S3.T1.21.15.15.3.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.21.15.15.3.m1.1.1.4" xref="S3.T1.21.15.15.3.m1.1.1.4.cmml"><mi id="S3.T1.21.15.15.3.m1.1.1.4.2" mathsize="70%" xref="S3.T1.21.15.15.3.m1.1.1.4.2.cmml">d</mi><mn id="S3.T1.21.15.15.3.m1.1.1.4.3" mathsize="70%" xref="S3.T1.21.15.15.3.m1.1.1.4.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.21.15.15.3.m1.1b"><apply id="S3.T1.21.15.15.3.m1.1.1.cmml" xref="S3.T1.21.15.15.3.m1.1.1"><times id="S3.T1.21.15.15.3.m1.1.1.1.cmml" xref="S3.T1.21.15.15.3.m1.1.1.1"></times><cn id="S3.T1.21.15.15.3.m1.1.1.2.cmml" type="integer" xref="S3.T1.21.15.15.3.m1.1.1.2">8</cn><ci id="S3.T1.21.15.15.3.m1.1.1.3.cmml" xref="S3.T1.21.15.15.3.m1.1.1.3">𝑁</ci><apply id="S3.T1.21.15.15.3.m1.1.1.4.cmml" xref="S3.T1.21.15.15.3.m1.1.1.4"><csymbol cd="ambiguous" id="S3.T1.21.15.15.3.m1.1.1.4.1.cmml" xref="S3.T1.21.15.15.3.m1.1.1.4">superscript</csymbol><ci id="S3.T1.21.15.15.3.m1.1.1.4.2.cmml" xref="S3.T1.21.15.15.3.m1.1.1.4.2">𝑑</ci><cn id="S3.T1.21.15.15.3.m1.1.1.4.3.cmml" type="integer" xref="S3.T1.21.15.15.3.m1.1.1.4.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.21.15.15.3.m1.1c">8Nd^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.21.15.15.3.m1.1d">8 italic_N italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.16.16.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="8d^{2}" class="ltx_Math" display="inline" id="S3.T1.22.16.16.4.m1.1"><semantics id="S3.T1.22.16.16.4.m1.1a"><mrow id="S3.T1.22.16.16.4.m1.1.1" xref="S3.T1.22.16.16.4.m1.1.1.cmml"><mn id="S3.T1.22.16.16.4.m1.1.1.2" mathsize="70%" xref="S3.T1.22.16.16.4.m1.1.1.2.cmml">8</mn><mo id="S3.T1.22.16.16.4.m1.1.1.1" xref="S3.T1.22.16.16.4.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.22.16.16.4.m1.1.1.3" xref="S3.T1.22.16.16.4.m1.1.1.3.cmml"><mi id="S3.T1.22.16.16.4.m1.1.1.3.2" mathsize="70%" xref="S3.T1.22.16.16.4.m1.1.1.3.2.cmml">d</mi><mn id="S3.T1.22.16.16.4.m1.1.1.3.3" mathsize="70%" xref="S3.T1.22.16.16.4.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.22.16.16.4.m1.1b"><apply id="S3.T1.22.16.16.4.m1.1.1.cmml" xref="S3.T1.22.16.16.4.m1.1.1"><times id="S3.T1.22.16.16.4.m1.1.1.1.cmml" xref="S3.T1.22.16.16.4.m1.1.1.1"></times><cn id="S3.T1.22.16.16.4.m1.1.1.2.cmml" type="integer" xref="S3.T1.22.16.16.4.m1.1.1.2">8</cn><apply id="S3.T1.22.16.16.4.m1.1.1.3.cmml" xref="S3.T1.22.16.16.4.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.22.16.16.4.m1.1.1.3.1.cmml" xref="S3.T1.22.16.16.4.m1.1.1.3">superscript</csymbol><ci id="S3.T1.22.16.16.4.m1.1.1.3.2.cmml" xref="S3.T1.22.16.16.4.m1.1.1.3.2">𝑑</ci><cn id="S3.T1.22.16.16.4.m1.1.1.3.3.cmml" type="integer" xref="S3.T1.22.16.16.4.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.22.16.16.4.m1.1c">8d^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.22.16.16.4.m1.1d">8 italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.23.17.17.5" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="8Nd^{2}" class="ltx_Math" display="inline" id="S3.T1.23.17.17.5.m1.1"><semantics id="S3.T1.23.17.17.5.m1.1a"><mrow id="S3.T1.23.17.17.5.m1.1.1" xref="S3.T1.23.17.17.5.m1.1.1.cmml"><mn id="S3.T1.23.17.17.5.m1.1.1.2" mathsize="70%" xref="S3.T1.23.17.17.5.m1.1.1.2.cmml">8</mn><mo id="S3.T1.23.17.17.5.m1.1.1.1" xref="S3.T1.23.17.17.5.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.23.17.17.5.m1.1.1.3" mathsize="70%" xref="S3.T1.23.17.17.5.m1.1.1.3.cmml">N</mi><mo id="S3.T1.23.17.17.5.m1.1.1.1a" xref="S3.T1.23.17.17.5.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.23.17.17.5.m1.1.1.4" xref="S3.T1.23.17.17.5.m1.1.1.4.cmml"><mi id="S3.T1.23.17.17.5.m1.1.1.4.2" mathsize="70%" xref="S3.T1.23.17.17.5.m1.1.1.4.2.cmml">d</mi><mn id="S3.T1.23.17.17.5.m1.1.1.4.3" mathsize="70%" xref="S3.T1.23.17.17.5.m1.1.1.4.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.23.17.17.5.m1.1b"><apply id="S3.T1.23.17.17.5.m1.1.1.cmml" xref="S3.T1.23.17.17.5.m1.1.1"><times id="S3.T1.23.17.17.5.m1.1.1.1.cmml" xref="S3.T1.23.17.17.5.m1.1.1.1"></times><cn id="S3.T1.23.17.17.5.m1.1.1.2.cmml" type="integer" xref="S3.T1.23.17.17.5.m1.1.1.2">8</cn><ci id="S3.T1.23.17.17.5.m1.1.1.3.cmml" xref="S3.T1.23.17.17.5.m1.1.1.3">𝑁</ci><apply id="S3.T1.23.17.17.5.m1.1.1.4.cmml" xref="S3.T1.23.17.17.5.m1.1.1.4"><csymbol cd="ambiguous" id="S3.T1.23.17.17.5.m1.1.1.4.1.cmml" xref="S3.T1.23.17.17.5.m1.1.1.4">superscript</csymbol><ci id="S3.T1.23.17.17.5.m1.1.1.4.2.cmml" xref="S3.T1.23.17.17.5.m1.1.1.4.2">𝑑</ci><cn id="S3.T1.23.17.17.5.m1.1.1.4.3.cmml" type="integer" xref="S3.T1.23.17.17.5.m1.1.1.4.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.23.17.17.5.m1.1c">8Nd^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.23.17.17.5.m1.1d">8 italic_N italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.28.22.22">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T1.28.22.22.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.22.22.6.1" style="font-size:70%;">Total</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.24.18.18.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="(6+16N)d^{2}" class="ltx_Math" display="inline" id="S3.T1.24.18.18.1.m1.1"><semantics id="S3.T1.24.18.18.1.m1.1a"><mrow id="S3.T1.24.18.18.1.m1.1.1" xref="S3.T1.24.18.18.1.m1.1.1.cmml"><mrow id="S3.T1.24.18.18.1.m1.1.1.1.1" xref="S3.T1.24.18.18.1.m1.1.1.1.1.1.cmml"><mo id="S3.T1.24.18.18.1.m1.1.1.1.1.2" maxsize="70%" minsize="70%" xref="S3.T1.24.18.18.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.24.18.18.1.m1.1.1.1.1.1" xref="S3.T1.24.18.18.1.m1.1.1.1.1.1.cmml"><mn id="S3.T1.24.18.18.1.m1.1.1.1.1.1.2" mathsize="70%" xref="S3.T1.24.18.18.1.m1.1.1.1.1.1.2.cmml">6</mn><mo id="S3.T1.24.18.18.1.m1.1.1.1.1.1.1" mathsize="70%" xref="S3.T1.24.18.18.1.m1.1.1.1.1.1.1.cmml">+</mo><mrow id="S3.T1.24.18.18.1.m1.1.1.1.1.1.3" xref="S3.T1.24.18.18.1.m1.1.1.1.1.1.3.cmml"><mn id="S3.T1.24.18.18.1.m1.1.1.1.1.1.3.2" mathsize="70%" xref="S3.T1.24.18.18.1.m1.1.1.1.1.1.3.2.cmml">16</mn><mo id="S3.T1.24.18.18.1.m1.1.1.1.1.1.3.1" xref="S3.T1.24.18.18.1.m1.1.1.1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.24.18.18.1.m1.1.1.1.1.1.3.3" mathsize="70%" xref="S3.T1.24.18.18.1.m1.1.1.1.1.1.3.3.cmml">N</mi></mrow></mrow><mo id="S3.T1.24.18.18.1.m1.1.1.1.1.3" maxsize="70%" minsize="70%" xref="S3.T1.24.18.18.1.m1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S3.T1.24.18.18.1.m1.1.1.2" xref="S3.T1.24.18.18.1.m1.1.1.2.cmml">⁢</mo><msup id="S3.T1.24.18.18.1.m1.1.1.3" xref="S3.T1.24.18.18.1.m1.1.1.3.cmml"><mi id="S3.T1.24.18.18.1.m1.1.1.3.2" mathsize="70%" xref="S3.T1.24.18.18.1.m1.1.1.3.2.cmml">d</mi><mn id="S3.T1.24.18.18.1.m1.1.1.3.3" mathsize="70%" xref="S3.T1.24.18.18.1.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.24.18.18.1.m1.1b"><apply id="S3.T1.24.18.18.1.m1.1.1.cmml" xref="S3.T1.24.18.18.1.m1.1.1"><times id="S3.T1.24.18.18.1.m1.1.1.2.cmml" xref="S3.T1.24.18.18.1.m1.1.1.2"></times><apply id="S3.T1.24.18.18.1.m1.1.1.1.1.1.cmml" xref="S3.T1.24.18.18.1.m1.1.1.1.1"><plus id="S3.T1.24.18.18.1.m1.1.1.1.1.1.1.cmml" xref="S3.T1.24.18.18.1.m1.1.1.1.1.1.1"></plus><cn id="S3.T1.24.18.18.1.m1.1.1.1.1.1.2.cmml" type="integer" xref="S3.T1.24.18.18.1.m1.1.1.1.1.1.2">6</cn><apply id="S3.T1.24.18.18.1.m1.1.1.1.1.1.3.cmml" xref="S3.T1.24.18.18.1.m1.1.1.1.1.1.3"><times id="S3.T1.24.18.18.1.m1.1.1.1.1.1.3.1.cmml" xref="S3.T1.24.18.18.1.m1.1.1.1.1.1.3.1"></times><cn id="S3.T1.24.18.18.1.m1.1.1.1.1.1.3.2.cmml" type="integer" xref="S3.T1.24.18.18.1.m1.1.1.1.1.1.3.2">16</cn><ci id="S3.T1.24.18.18.1.m1.1.1.1.1.1.3.3.cmml" xref="S3.T1.24.18.18.1.m1.1.1.1.1.1.3.3">𝑁</ci></apply></apply><apply id="S3.T1.24.18.18.1.m1.1.1.3.cmml" xref="S3.T1.24.18.18.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.24.18.18.1.m1.1.1.3.1.cmml" xref="S3.T1.24.18.18.1.m1.1.1.3">superscript</csymbol><ci id="S3.T1.24.18.18.1.m1.1.1.3.2.cmml" xref="S3.T1.24.18.18.1.m1.1.1.3.2">𝑑</ci><cn id="S3.T1.24.18.18.1.m1.1.1.3.3.cmml" type="integer" xref="S3.T1.24.18.18.1.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.24.18.18.1.m1.1c">(6+16N)d^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.24.18.18.1.m1.1d">( 6 + 16 italic_N ) italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.25.19.19.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="36Nd^{2}" class="ltx_Math" display="inline" id="S3.T1.25.19.19.2.m1.1"><semantics id="S3.T1.25.19.19.2.m1.1a"><mrow id="S3.T1.25.19.19.2.m1.1.1" xref="S3.T1.25.19.19.2.m1.1.1.cmml"><mn id="S3.T1.25.19.19.2.m1.1.1.2" mathsize="70%" xref="S3.T1.25.19.19.2.m1.1.1.2.cmml">36</mn><mo id="S3.T1.25.19.19.2.m1.1.1.1" xref="S3.T1.25.19.19.2.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.25.19.19.2.m1.1.1.3" mathsize="70%" xref="S3.T1.25.19.19.2.m1.1.1.3.cmml">N</mi><mo id="S3.T1.25.19.19.2.m1.1.1.1a" xref="S3.T1.25.19.19.2.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.25.19.19.2.m1.1.1.4" xref="S3.T1.25.19.19.2.m1.1.1.4.cmml"><mi id="S3.T1.25.19.19.2.m1.1.1.4.2" mathsize="70%" xref="S3.T1.25.19.19.2.m1.1.1.4.2.cmml">d</mi><mn id="S3.T1.25.19.19.2.m1.1.1.4.3" mathsize="70%" xref="S3.T1.25.19.19.2.m1.1.1.4.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.25.19.19.2.m1.1b"><apply id="S3.T1.25.19.19.2.m1.1.1.cmml" xref="S3.T1.25.19.19.2.m1.1.1"><times id="S3.T1.25.19.19.2.m1.1.1.1.cmml" xref="S3.T1.25.19.19.2.m1.1.1.1"></times><cn id="S3.T1.25.19.19.2.m1.1.1.2.cmml" type="integer" xref="S3.T1.25.19.19.2.m1.1.1.2">36</cn><ci id="S3.T1.25.19.19.2.m1.1.1.3.cmml" xref="S3.T1.25.19.19.2.m1.1.1.3">𝑁</ci><apply id="S3.T1.25.19.19.2.m1.1.1.4.cmml" xref="S3.T1.25.19.19.2.m1.1.1.4"><csymbol cd="ambiguous" id="S3.T1.25.19.19.2.m1.1.1.4.1.cmml" xref="S3.T1.25.19.19.2.m1.1.1.4">superscript</csymbol><ci id="S3.T1.25.19.19.2.m1.1.1.4.2.cmml" xref="S3.T1.25.19.19.2.m1.1.1.4.2">𝑑</ci><cn id="S3.T1.25.19.19.2.m1.1.1.4.3.cmml" type="integer" xref="S3.T1.25.19.19.2.m1.1.1.4.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.25.19.19.2.m1.1c">36Nd^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.25.19.19.2.m1.1d">36 italic_N italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.26.20.20.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="(12+12N)d^{2}" class="ltx_Math" display="inline" id="S3.T1.26.20.20.3.m1.1"><semantics id="S3.T1.26.20.20.3.m1.1a"><mrow id="S3.T1.26.20.20.3.m1.1.1" xref="S3.T1.26.20.20.3.m1.1.1.cmml"><mrow id="S3.T1.26.20.20.3.m1.1.1.1.1" xref="S3.T1.26.20.20.3.m1.1.1.1.1.1.cmml"><mo id="S3.T1.26.20.20.3.m1.1.1.1.1.2" maxsize="70%" minsize="70%" xref="S3.T1.26.20.20.3.m1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.26.20.20.3.m1.1.1.1.1.1" xref="S3.T1.26.20.20.3.m1.1.1.1.1.1.cmml"><mn id="S3.T1.26.20.20.3.m1.1.1.1.1.1.2" mathsize="70%" xref="S3.T1.26.20.20.3.m1.1.1.1.1.1.2.cmml">12</mn><mo id="S3.T1.26.20.20.3.m1.1.1.1.1.1.1" mathsize="70%" xref="S3.T1.26.20.20.3.m1.1.1.1.1.1.1.cmml">+</mo><mrow id="S3.T1.26.20.20.3.m1.1.1.1.1.1.3" xref="S3.T1.26.20.20.3.m1.1.1.1.1.1.3.cmml"><mn id="S3.T1.26.20.20.3.m1.1.1.1.1.1.3.2" mathsize="70%" xref="S3.T1.26.20.20.3.m1.1.1.1.1.1.3.2.cmml">12</mn><mo id="S3.T1.26.20.20.3.m1.1.1.1.1.1.3.1" xref="S3.T1.26.20.20.3.m1.1.1.1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.26.20.20.3.m1.1.1.1.1.1.3.3" mathsize="70%" xref="S3.T1.26.20.20.3.m1.1.1.1.1.1.3.3.cmml">N</mi></mrow></mrow><mo id="S3.T1.26.20.20.3.m1.1.1.1.1.3" maxsize="70%" minsize="70%" xref="S3.T1.26.20.20.3.m1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S3.T1.26.20.20.3.m1.1.1.2" xref="S3.T1.26.20.20.3.m1.1.1.2.cmml">⁢</mo><msup id="S3.T1.26.20.20.3.m1.1.1.3" xref="S3.T1.26.20.20.3.m1.1.1.3.cmml"><mi id="S3.T1.26.20.20.3.m1.1.1.3.2" mathsize="70%" xref="S3.T1.26.20.20.3.m1.1.1.3.2.cmml">d</mi><mn id="S3.T1.26.20.20.3.m1.1.1.3.3" mathsize="70%" xref="S3.T1.26.20.20.3.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.26.20.20.3.m1.1b"><apply id="S3.T1.26.20.20.3.m1.1.1.cmml" xref="S3.T1.26.20.20.3.m1.1.1"><times id="S3.T1.26.20.20.3.m1.1.1.2.cmml" xref="S3.T1.26.20.20.3.m1.1.1.2"></times><apply id="S3.T1.26.20.20.3.m1.1.1.1.1.1.cmml" xref="S3.T1.26.20.20.3.m1.1.1.1.1"><plus id="S3.T1.26.20.20.3.m1.1.1.1.1.1.1.cmml" xref="S3.T1.26.20.20.3.m1.1.1.1.1.1.1"></plus><cn id="S3.T1.26.20.20.3.m1.1.1.1.1.1.2.cmml" type="integer" xref="S3.T1.26.20.20.3.m1.1.1.1.1.1.2">12</cn><apply id="S3.T1.26.20.20.3.m1.1.1.1.1.1.3.cmml" xref="S3.T1.26.20.20.3.m1.1.1.1.1.1.3"><times id="S3.T1.26.20.20.3.m1.1.1.1.1.1.3.1.cmml" xref="S3.T1.26.20.20.3.m1.1.1.1.1.1.3.1"></times><cn id="S3.T1.26.20.20.3.m1.1.1.1.1.1.3.2.cmml" type="integer" xref="S3.T1.26.20.20.3.m1.1.1.1.1.1.3.2">12</cn><ci id="S3.T1.26.20.20.3.m1.1.1.1.1.1.3.3.cmml" xref="S3.T1.26.20.20.3.m1.1.1.1.1.1.3.3">𝑁</ci></apply></apply><apply id="S3.T1.26.20.20.3.m1.1.1.3.cmml" xref="S3.T1.26.20.20.3.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.26.20.20.3.m1.1.1.3.1.cmml" xref="S3.T1.26.20.20.3.m1.1.1.3">superscript</csymbol><ci id="S3.T1.26.20.20.3.m1.1.1.3.2.cmml" xref="S3.T1.26.20.20.3.m1.1.1.3.2">𝑑</ci><cn id="S3.T1.26.20.20.3.m1.1.1.3.3.cmml" type="integer" xref="S3.T1.26.20.20.3.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.26.20.20.3.m1.1c">(12+12N)d^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.26.20.20.3.m1.1d">( 12 + 12 italic_N ) italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.27.21.21.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="24d^{2}" class="ltx_Math" display="inline" id="S3.T1.27.21.21.4.m1.1"><semantics id="S3.T1.27.21.21.4.m1.1a"><mrow id="S3.T1.27.21.21.4.m1.1.1" xref="S3.T1.27.21.21.4.m1.1.1.cmml"><mn id="S3.T1.27.21.21.4.m1.1.1.2" mathsize="70%" xref="S3.T1.27.21.21.4.m1.1.1.2.cmml">24</mn><mo id="S3.T1.27.21.21.4.m1.1.1.1" xref="S3.T1.27.21.21.4.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.27.21.21.4.m1.1.1.3" xref="S3.T1.27.21.21.4.m1.1.1.3.cmml"><mi id="S3.T1.27.21.21.4.m1.1.1.3.2" mathsize="70%" xref="S3.T1.27.21.21.4.m1.1.1.3.2.cmml">d</mi><mn id="S3.T1.27.21.21.4.m1.1.1.3.3" mathsize="70%" xref="S3.T1.27.21.21.4.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.27.21.21.4.m1.1b"><apply id="S3.T1.27.21.21.4.m1.1.1.cmml" xref="S3.T1.27.21.21.4.m1.1.1"><times id="S3.T1.27.21.21.4.m1.1.1.1.cmml" xref="S3.T1.27.21.21.4.m1.1.1.1"></times><cn id="S3.T1.27.21.21.4.m1.1.1.2.cmml" type="integer" xref="S3.T1.27.21.21.4.m1.1.1.2">24</cn><apply id="S3.T1.27.21.21.4.m1.1.1.3.cmml" xref="S3.T1.27.21.21.4.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.27.21.21.4.m1.1.1.3.1.cmml" xref="S3.T1.27.21.21.4.m1.1.1.3">superscript</csymbol><ci id="S3.T1.27.21.21.4.m1.1.1.3.2.cmml" xref="S3.T1.27.21.21.4.m1.1.1.3.2">𝑑</ci><cn id="S3.T1.27.21.21.4.m1.1.1.3.3.cmml" type="integer" xref="S3.T1.27.21.21.4.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.27.21.21.4.m1.1c">24d^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.27.21.21.4.m1.1d">24 italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.28.22.22.5" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="(16+8N)d^{2}" class="ltx_Math" display="inline" id="S3.T1.28.22.22.5.m1.1"><semantics id="S3.T1.28.22.22.5.m1.1a"><mrow id="S3.T1.28.22.22.5.m1.1.1" xref="S3.T1.28.22.22.5.m1.1.1.cmml"><mrow id="S3.T1.28.22.22.5.m1.1.1.1.1" xref="S3.T1.28.22.22.5.m1.1.1.1.1.1.cmml"><mo id="S3.T1.28.22.22.5.m1.1.1.1.1.2" maxsize="70%" minsize="70%" xref="S3.T1.28.22.22.5.m1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.28.22.22.5.m1.1.1.1.1.1" xref="S3.T1.28.22.22.5.m1.1.1.1.1.1.cmml"><mn id="S3.T1.28.22.22.5.m1.1.1.1.1.1.2" mathsize="70%" xref="S3.T1.28.22.22.5.m1.1.1.1.1.1.2.cmml">16</mn><mo id="S3.T1.28.22.22.5.m1.1.1.1.1.1.1" mathsize="70%" xref="S3.T1.28.22.22.5.m1.1.1.1.1.1.1.cmml">+</mo><mrow id="S3.T1.28.22.22.5.m1.1.1.1.1.1.3" xref="S3.T1.28.22.22.5.m1.1.1.1.1.1.3.cmml"><mn id="S3.T1.28.22.22.5.m1.1.1.1.1.1.3.2" mathsize="70%" xref="S3.T1.28.22.22.5.m1.1.1.1.1.1.3.2.cmml">8</mn><mo id="S3.T1.28.22.22.5.m1.1.1.1.1.1.3.1" xref="S3.T1.28.22.22.5.m1.1.1.1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.28.22.22.5.m1.1.1.1.1.1.3.3" mathsize="70%" xref="S3.T1.28.22.22.5.m1.1.1.1.1.1.3.3.cmml">N</mi></mrow></mrow><mo id="S3.T1.28.22.22.5.m1.1.1.1.1.3" maxsize="70%" minsize="70%" xref="S3.T1.28.22.22.5.m1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S3.T1.28.22.22.5.m1.1.1.2" xref="S3.T1.28.22.22.5.m1.1.1.2.cmml">⁢</mo><msup id="S3.T1.28.22.22.5.m1.1.1.3" xref="S3.T1.28.22.22.5.m1.1.1.3.cmml"><mi id="S3.T1.28.22.22.5.m1.1.1.3.2" mathsize="70%" xref="S3.T1.28.22.22.5.m1.1.1.3.2.cmml">d</mi><mn id="S3.T1.28.22.22.5.m1.1.1.3.3" mathsize="70%" xref="S3.T1.28.22.22.5.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.28.22.22.5.m1.1b"><apply id="S3.T1.28.22.22.5.m1.1.1.cmml" xref="S3.T1.28.22.22.5.m1.1.1"><times id="S3.T1.28.22.22.5.m1.1.1.2.cmml" xref="S3.T1.28.22.22.5.m1.1.1.2"></times><apply id="S3.T1.28.22.22.5.m1.1.1.1.1.1.cmml" xref="S3.T1.28.22.22.5.m1.1.1.1.1"><plus id="S3.T1.28.22.22.5.m1.1.1.1.1.1.1.cmml" xref="S3.T1.28.22.22.5.m1.1.1.1.1.1.1"></plus><cn id="S3.T1.28.22.22.5.m1.1.1.1.1.1.2.cmml" type="integer" xref="S3.T1.28.22.22.5.m1.1.1.1.1.1.2">16</cn><apply id="S3.T1.28.22.22.5.m1.1.1.1.1.1.3.cmml" xref="S3.T1.28.22.22.5.m1.1.1.1.1.1.3"><times id="S3.T1.28.22.22.5.m1.1.1.1.1.1.3.1.cmml" xref="S3.T1.28.22.22.5.m1.1.1.1.1.1.3.1"></times><cn id="S3.T1.28.22.22.5.m1.1.1.1.1.1.3.2.cmml" type="integer" xref="S3.T1.28.22.22.5.m1.1.1.1.1.1.3.2">8</cn><ci id="S3.T1.28.22.22.5.m1.1.1.1.1.1.3.3.cmml" xref="S3.T1.28.22.22.5.m1.1.1.1.1.1.3.3">𝑁</ci></apply></apply><apply id="S3.T1.28.22.22.5.m1.1.1.3.cmml" xref="S3.T1.28.22.22.5.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.28.22.22.5.m1.1.1.3.1.cmml" xref="S3.T1.28.22.22.5.m1.1.1.3">superscript</csymbol><ci id="S3.T1.28.22.22.5.m1.1.1.3.2.cmml" xref="S3.T1.28.22.22.5.m1.1.1.3.2">𝑑</ci><cn id="S3.T1.28.22.22.5.m1.1.1.3.3.cmml" type="integer" xref="S3.T1.28.22.22.5.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.28.22.22.5.m1.1c">(16+8N)d^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.28.22.22.5.m1.1d">( 16 + 8 italic_N ) italic_d start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of two MMDiT model variants, differing only in whether they share Adaptive Layer Normalization (AdaLN) parameters across all layers.  Both models utilize the MMDiT/B configuration for fair comparison.  The table shows the performance of each model across several metrics, including the number of parameters, FID, CLIP score, and others.  This allows assessment of the impact of the AdaLN parameter sharing technique on model efficiency and overall performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison between MMDiT variants with and without sharing AdaLN. Both models are based on the MMDiT/B sized configuration.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.7.7">
<tr class="ltx_tr" id="S4.T2.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.7.7.7.8" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.7.7.7.8.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.7.7.7.9" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.7.7.7.9.1">Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Val.</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.2.2.2" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.2.1">FID</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.3.3" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.3.1">CLIP</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.4.4.4" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.4.1">Pick</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.5.5.5" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.5.1">GenE.</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.6.6" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.6.1">Aesth.</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.6.m1.1"><semantics id="S4.T2.6.6.6.6.m1.1a"><mo id="S4.T2.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T2.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.6.m1.1b"><ci id="S4.T2.6.6.6.6.m1.1.1.cmml" xref="S4.T2.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.7.7.7.7" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.7.7.7.7.1">T2I.</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.7.7.7.7.m1.1"><semantics id="S4.T2.7.7.7.7.m1.1a"><mo id="S4.T2.7.7.7.7.m1.1.1" stretchy="false" xref="S4.T2.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.7.m1.1b"><ci id="S4.T2.7.7.7.7.m1.1.1.cmml" xref="S4.T2.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.7.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.7.7.8.1" style="padding:1pt 3.0pt;">
<span class="ltx_text" id="S4.T2.7.7.8.1.1"></span><span class="ltx_text" id="S4.T2.7.7.8.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.7.7.8.1.2.1">
<span class="ltx_tr" id="S4.T2.7.7.8.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.7.7.8.1.2.1.1.1" style="padding:1pt 3.0pt;">Per-layer AdaLN</span></span>
</span></span><span class="ltx_text" id="S4.T2.7.7.8.1.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.7.7.8.2" style="padding:1pt 3.0pt;">902M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.8.3" style="padding:1pt 3.0pt;">0.422</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.8.4" style="padding:1pt 3.0pt;">14.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.8.5" style="padding:1pt 3.0pt;">32.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.8.6" style="padding:1pt 3.0pt;">20.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.8.7" style="padding:1pt 3.0pt;">69.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.8.8" style="padding:1pt 3.0pt;">5.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.8.9" style="padding:1pt 3.0pt;">51.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.7.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.7.7.9.1" style="padding:1pt 3.0pt;">
<span class="ltx_text" id="S4.T2.7.7.9.1.1"></span><span class="ltx_text" id="S4.T2.7.7.9.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.7.7.9.1.2.1">
<span class="ltx_tr" id="S4.T2.7.7.9.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.7.7.9.1.2.1.1.1" style="padding:1pt 3.0pt;">Shared AdaLN</span></span>
</span></span><span class="ltx_text" id="S4.T2.7.7.9.1.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.7.7.9.2" style="padding:1pt 3.0pt;">631M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.7.7.9.3" style="padding:1pt 3.0pt;">0.422</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.7.7.9.4" style="padding:1pt 3.0pt;">15.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.7.7.9.5" style="padding:1pt 3.0pt;">32.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.7.7.9.6" style="padding:1pt 3.0pt;">20.28</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.7.7.9.7" style="padding:1pt 3.0pt;">69.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.7.7.9.8" style="padding:1pt 3.0pt;">5.59</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.7.7.9.9" style="padding:1pt 3.0pt;">51.0</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of three different diffusion transformer models: the baseline DiT-Air model and two variations called DiT-Air-Lite (full) and DiT-Air-Lite (attention).  The key difference between these models lies in their parameter-sharing strategies.  DiT-Air-Lite (full) shares all parameters across layers, resulting in the most significant reduction in the number of parameters.  However, this extreme parameter sharing leads to a noticeable decrease in performance.  In contrast, DiT-Air-Lite (attention) employs a more moderate parameter-sharing approach, only sharing parameters within the attention mechanism while keeping separate MLPs (Multilayer Perceptrons) for each layer. This strategy achieves a good balance—reducing parameters while maintaining competitive performance. The table quantifies this performance difference by showing the number of parameters and relevant metrics for each model.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of DiT-Air (baseline) with DiT-Air-lite (full) and DiT-Air-lite (attention). The Full configuration provides the largest parameter reduction but suffers a noticeable performance drop, while Attention strikes a more favorable trade-off between compactness and text alignment.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.7.7">
<tr class="ltx_tr" id="S4.T3.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T3.7.7.7.8" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.7.8.1">Model</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_tt" id="S4.T3.7.7.7.9" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.7.9.1">Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">Val.</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.2.2" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.2.1">FID</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.3.3" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.3.1">CLIP</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.4.4.4" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.4.1">Pick</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.5.5" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.5.1">GenE.</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.5.m1.1a"><mo id="S4.T3.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T3.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.5.m1.1b"><ci id="S4.T3.5.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.6.6.6.6" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.6.1">Aesth.</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.6.m1.1"><semantics id="S4.T3.6.6.6.6.m1.1a"><mo id="S4.T3.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T3.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.6.m1.1b"><ci id="S4.T3.6.6.6.6.m1.1.1.cmml" xref="S4.T3.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.7.7.7.7" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.7.7.7.7.1">T2I.</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.7.7.7.7.m1.1"><semantics id="S4.T3.7.7.7.7.m1.1a"><mo id="S4.T3.7.7.7.7.m1.1.1" stretchy="false" xref="S4.T3.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.7.m1.1b"><ci id="S4.T3.7.7.7.7.m1.1.1.cmml" xref="S4.T3.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.7.7.8.1" style="padding:1pt 3.0pt;">
<span class="ltx_text" id="S4.T3.7.7.8.1.1"></span><span class="ltx_text" id="S4.T3.7.7.8.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.7.7.8.1.2.1">
<span class="ltx_tr" id="S4.T3.7.7.8.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T3.7.7.8.1.2.1.1.1" style="padding:1pt 3.0pt;">DiT-Air/B</span></span>
</span></span><span class="ltx_text" id="S4.T3.7.7.8.1.3"></span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T3.7.7.8.2" style="padding:1pt 3.0pt;">321M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.3" style="padding:1pt 3.0pt;">0.428</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.4" style="padding:1pt 3.0pt;">16.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.5" style="padding:1pt 3.0pt;">32.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.6" style="padding:1pt 3.0pt;">20.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.7" style="padding:1pt 3.0pt;">70.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.8" style="padding:1pt 3.0pt;">5.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.9" style="padding:1pt 3.0pt;">51.4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.7.7.9.1" style="padding:1pt 3.0pt;">
<span class="ltx_text" id="S4.T3.7.7.9.1.1"></span><span class="ltx_text" id="S4.T3.7.7.9.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.7.7.9.1.2.1">
<span class="ltx_tr" id="S4.T3.7.7.9.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T3.7.7.9.1.2.1.1.1" style="padding:1pt 3.0pt;">DiT-Air/B-lite</span></span>
<span class="ltx_tr" id="S4.T3.7.7.9.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T3.7.7.9.1.2.1.2.1" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S4.T3.7.7.9.1.2.1.2.1.1" style="font-size:80%;">(full)</span></span></span>
</span></span><span class="ltx_text" id="S4.T3.7.7.9.1.3"></span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T3.7.7.9.2" style="padding:1pt 3.0pt;">49M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.3" style="padding:1pt 3.0pt;">0.461</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.4" style="padding:1pt 3.0pt;">14.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.5" style="padding:1pt 3.0pt;">31.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.6" style="padding:1pt 3.0pt;">19.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.7" style="padding:1pt 3.0pt;">58.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.8" style="padding:1pt 3.0pt;">5.36</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.9" style="padding:1pt 3.0pt;">47.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T3.7.7.10.1" style="padding:1pt 3.0pt;">
<span class="ltx_text" id="S4.T3.7.7.10.1.1"></span><span class="ltx_text" id="S4.T3.7.7.10.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.7.7.10.1.2.1">
<span class="ltx_tr" id="S4.T3.7.7.10.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T3.7.7.10.1.2.1.1.1" style="padding:1pt 3.0pt;">DiT-Air/B-lite</span></span>
<span class="ltx_tr" id="S4.T3.7.7.10.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T3.7.7.10.1.2.1.2.1" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S4.T3.7.7.10.1.2.1.2.1.1" style="font-size:80%;">(attention)</span></span></span>
</span></span><span class="ltx_text" id="S4.T3.7.7.10.1.3"></span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S4.T3.7.7.10.2" style="padding:1pt 3.0pt;">230M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.10.3" style="padding:1pt 3.0pt;">0.431</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.10.4" style="padding:1pt 3.0pt;">17.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.10.5" style="padding:1pt 3.0pt;">32.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.10.6" style="padding:1pt 3.0pt;">20.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.10.7" style="padding:1pt 3.0pt;">66.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.10.8" style="padding:1pt 3.0pt;">5.50</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.10.9" style="padding:1pt 3.0pt;">49.6</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of three different text encoder models (CLIP, LLM, and T5) used for text-to-image generation.  The comparison is based on several key metrics, evaluating the performance of each model in terms of image quality, text alignment, and overall generation capabilities.  The results indicate that CLIP generally outperforms the others across most metrics, showcasing its effectiveness in various aspects of image synthesis.  LLM shows a particular strength in the GenEval metric, highlighting its ability to generate images that align well with the given text prompts in a broader context.  In contrast, the T5 model consistently underperforms, indicating its relative weakness in this application.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of CLIP, LLM, and T5 text embeddings. CLIP achieves superior results across most metrics, while LLM excels in GenEval. In contrast, T5 consistently underperforms.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.7.7">
<tr class="ltx_tr" id="S5.T4.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T4.7.7.7.8" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.7.8.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.1.1.1.1" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1.1">Val.</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.2.2.2.2" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T4.2.2.2.2.1">FID</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.2.m1.1a"><mo id="S5.T4.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T4.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.2.m1.1b"><ci id="S5.T4.2.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.3.3.3.3" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T4.3.3.3.3.1">CLIP</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.3.m1.1a"><mo id="S5.T4.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T4.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.3.m1.1b"><ci id="S5.T4.3.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.4.4.4" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T4.4.4.4.4.1">Pick</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.4.m1.1"><semantics id="S5.T4.4.4.4.4.m1.1a"><mo id="S5.T4.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.4.m1.1b"><ci id="S5.T4.4.4.4.4.m1.1.1.cmml" xref="S5.T4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.5.5.5" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T4.5.5.5.5.1">GenE.</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.5.5.5.5.m1.1"><semantics id="S5.T4.5.5.5.5.m1.1a"><mo id="S5.T4.5.5.5.5.m1.1.1" stretchy="false" xref="S5.T4.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.5.5.m1.1b"><ci id="S5.T4.5.5.5.5.m1.1.1.cmml" xref="S5.T4.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.6.6.6.6" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T4.6.6.6.6.1">Aesth.</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.6.6.6.6.m1.1"><semantics id="S5.T4.6.6.6.6.m1.1a"><mo id="S5.T4.6.6.6.6.m1.1.1" stretchy="false" xref="S5.T4.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.6.6.m1.1b"><ci id="S5.T4.6.6.6.6.m1.1.1.cmml" xref="S5.T4.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.7.7.7.7" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T4.7.7.7.7.1">T2I.</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.7.7.7.7.m1.1"><semantics id="S5.T4.7.7.7.7.m1.1a"><mo id="S5.T4.7.7.7.7.m1.1.1" stretchy="false" xref="S5.T4.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.7.7.7.7.m1.1b"><ci id="S5.T4.7.7.7.7.m1.1.1.cmml" xref="S5.T4.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.7.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.7.7.8.1" style="padding:1pt 3.0pt;">CLIP (Bidirectional)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.7.7.8.2" style="padding:1pt 3.0pt;">0.428</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.8.3" style="padding:1pt 3.0pt;">16.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.8.4" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.8.4.1">32.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.8.5" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.8.5.1">20.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.8.6" style="padding:1pt 3.0pt;">0.704</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.8.7" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.8.7.1">5.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.8.8" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.8.8.1">51.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.7.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.7.7.9.1" style="padding:1pt 3.0pt;">LLM (Text-only)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.7.7.9.2" style="padding:1pt 3.0pt;">0.427</td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.9.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.9.3.1">16.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.9.4" style="padding:1pt 3.0pt;">32.0</td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.9.5" style="padding:1pt 3.0pt;">20.1</td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.9.6" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.9.6.1">0.726</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.9.7" style="padding:1pt 3.0pt;">5.57</td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.9.8" style="padding:1pt 3.0pt;">48.6</td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.7.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T4.7.7.10.1" style="padding:1pt 3.0pt;">T5-XXL</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.7.7.10.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.10.2.1">0.424</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.7.10.3" style="padding:1pt 3.0pt;">17.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.7.10.4" style="padding:1pt 3.0pt;">31.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.7.10.5" style="padding:1pt 3.0pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.7.10.6" style="padding:1pt 3.0pt;">0.653</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.7.10.7" style="padding:1pt 3.0pt;">5.46</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.7.10.8" style="padding:1pt 3.0pt;">48.0</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of DiT-Air models with several state-of-the-art (SOTA) text-to-image generation models.  It shows the total number of parameters (including text encoder, VAE, and diffusion model), the number of trainable parameters (those updated during training), and various evaluation metrics including FID (Fréchet Inception Distance), CLIP score, Pick score, GenE score, Aesthetics score, and T2I CompBench score.  Lower FID scores indicate better image quality, while higher scores for the remaining metrics represent better performance. Note that one value is an estimate based on another source.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison with state-of-the-art (SoTA) models. “Total (B)” includes parameters from the text encoder, VAE, and diffusion model, while “Trainable (B)” denotes only those parameters updated during training. The value marked with ††\dagger† is estimated from Figure 8 in [14] as the exact number was unavailable.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T5.10">
<tr class="ltx_tr" id="S5.T5.10.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T5.10.9.1" rowspan="2" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.10.9.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.T5.10.9.2" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.10.9.2.1">Size (B)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S5.T5.10.9.3" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.10.9.3.1">Metrics</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.6">
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.8.6.7" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.8.6.7.1">Total</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T5.8.6.8" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.8.6.8.1">Trainable</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.3.1.1" style="padding:1pt 8.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T5.3.1.1.1">FID</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.3.1.1.m1.1"><semantics id="S5.T5.3.1.1.m1.1a"><mo id="S5.T5.3.1.1.m1.1.1" stretchy="false" xref="S5.T5.3.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.3.1.1.m1.1b"><ci id="S5.T5.3.1.1.m1.1.1.cmml" xref="S5.T5.3.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.2.2" style="padding:1pt 8.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T5.4.2.2.1">CLIP</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.4.2.2.m1.1"><semantics id="S5.T5.4.2.2.m1.1a"><mo id="S5.T5.4.2.2.m1.1.1" stretchy="false" xref="S5.T5.4.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.4.2.2.m1.1b"><ci id="S5.T5.4.2.2.m1.1.1.cmml" xref="S5.T5.4.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.4.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.4.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.3.3" style="padding:1pt 8.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T5.5.3.3.1">Pick</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.5.3.3.m1.1"><semantics id="S5.T5.5.3.3.m1.1a"><mo id="S5.T5.5.3.3.m1.1.1" stretchy="false" xref="S5.T5.5.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.5.3.3.m1.1b"><ci id="S5.T5.5.3.3.m1.1.1.cmml" xref="S5.T5.5.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.5.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.5.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.4.4" style="padding:1pt 8.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T5.6.4.4.1">GenE.</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.6.4.4.m1.1"><semantics id="S5.T5.6.4.4.m1.1a"><mo id="S5.T5.6.4.4.m1.1.1" stretchy="false" xref="S5.T5.6.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.6.4.4.m1.1b"><ci id="S5.T5.6.4.4.m1.1.1.cmml" xref="S5.T5.6.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.6.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.6.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.7.5.5" style="padding:1pt 8.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T5.7.5.5.1">Aesth.</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.7.5.5.m1.1"><semantics id="S5.T5.7.5.5.m1.1a"><mo id="S5.T5.7.5.5.m1.1.1" stretchy="false" xref="S5.T5.7.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.7.5.5.m1.1b"><ci id="S5.T5.7.5.5.m1.1.1.cmml" xref="S5.T5.7.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.7.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.7.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.8.6.6" style="padding:1pt 8.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T5.8.6.6.1">T2I.</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.8.6.6.m1.1"><semantics id="S5.T5.8.6.6.m1.1a"><mo id="S5.T5.8.6.6.m1.1.1" stretchy="false" xref="S5.T5.8.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.8.6.6.m1.1b"><ci id="S5.T5.8.6.6.m1.1.1.cmml" xref="S5.T5.8.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.8.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.8.6.6.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T5.10.10.1" style="padding:1pt 8.0pt;">SDXL Base <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10618v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.10.10.2" style="padding:1pt 8.0pt;">3.5</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T5.10.10.3" style="padding:1pt 8.0pt;">2.6</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.10.10.4" style="padding:1pt 8.0pt;">268.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.10.10.5" style="padding:1pt 8.0pt;">22.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.10.10.6" style="padding:1pt 8.0pt;">17.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.10.10.7" style="padding:1pt 8.0pt;">55.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.10.10.8" style="padding:1pt 8.0pt;">4.32</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.10.10.9" style="padding:1pt 8.0pt;">40.6</td>
</tr>
<tr class="ltx_tr" id="S5.T5.9.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.9.7.1" style="padding:1pt 8.0pt;">PixArt-<math alttext="\alpha" class="ltx_Math" display="inline" id="S5.T5.9.7.1.m1.1"><semantics id="S5.T5.9.7.1.m1.1a"><mi id="S5.T5.9.7.1.m1.1.1" xref="S5.T5.9.7.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S5.T5.9.7.1.m1.1b"><ci id="S5.T5.9.7.1.m1.1.1.cmml" xref="S5.T5.9.7.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.9.7.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S5.T5.9.7.1.m1.1d">italic_α</annotation></semantics></math> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10618v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.9.7.2" style="padding:1pt 8.0pt;">5.4</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T5.9.7.3" style="padding:1pt 8.0pt;">0.6</td>
<td class="ltx_td ltx_align_right" id="S5.T5.9.7.4" style="padding:1pt 8.0pt;">120.7</td>
<td class="ltx_td ltx_align_center" id="S5.T5.9.7.5" style="padding:1pt 8.0pt;">27.3</td>
<td class="ltx_td ltx_align_center" id="S5.T5.9.7.6" style="padding:1pt 8.0pt;">17.0</td>
<td class="ltx_td ltx_align_center" id="S5.T5.9.7.7" style="padding:1pt 8.0pt;">55.7</td>
<td class="ltx_td ltx_align_center" id="S5.T5.9.7.8" style="padding:1pt 8.0pt;">5.76</td>
<td class="ltx_td ltx_align_left" id="S5.T5.9.7.9" style="padding:1pt 8.0pt;">44.7</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.10.11.1" style="padding:1pt 8.0pt;">SD3 Medium <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10618v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.10.11.2" style="padding:1pt 8.0pt;">7.7</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T5.10.11.3" style="padding:1pt 8.0pt;">2.0</td>
<td class="ltx_td ltx_align_right" id="S5.T5.10.11.4" style="padding:1pt 8.0pt;">26.0</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.11.5" style="padding:1pt 8.0pt;">32.0</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.11.6" style="padding:1pt 8.0pt;">20.7</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.11.7" style="padding:1pt 8.0pt;">62.0</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.11.8" style="padding:1pt 8.0pt;">5.99</td>
<td class="ltx_td ltx_align_left" id="S5.T5.10.11.9" style="padding:1pt 8.0pt;">52.4</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.10.8.2" style="padding:1pt 8.0pt;">SD3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10618v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.10.8.3" style="padding:1pt 8.0pt;">13.6</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T5.10.8.4" style="padding:1pt 8.0pt;">8.0</td>
<td class="ltx_td ltx_align_right" id="S5.T5.10.8.5" style="padding:1pt 8.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.8.6" style="padding:1pt 8.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.8.7" style="padding:1pt 8.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.8.8" style="padding:1pt 8.0pt;">74.5</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.8.9" style="padding:1pt 8.0pt;">–</td>
<td class="ltx_td ltx_align_left" id="S5.T5.10.8.1" style="padding:1pt 8.0pt;">51.4<sup class="ltx_sup" id="S5.T5.10.8.1.1">†</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.10.12.1" style="padding:1pt 8.0pt;">Flux-Dev <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10618v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.10.12.2" style="padding:1pt 8.0pt;">16.9</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T5.10.12.3" style="padding:1pt 8.0pt;">12.0</td>
<td class="ltx_td ltx_align_right" id="S5.T5.10.12.4" style="padding:1pt 8.0pt;">68.7</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.12.5" style="padding:1pt 8.0pt;">30.2</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.12.6" style="padding:1pt 8.0pt;">19.7</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.12.7" style="padding:1pt 8.0pt;">66.7</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.12.8" style="padding:1pt 8.0pt;">6.12</td>
<td class="ltx_td ltx_align_left" id="S5.T5.10.12.9" style="padding:1pt 8.0pt;">49.6</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.10.13.1" style="padding:1pt 8.0pt;">Flux-Schnell <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10618v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.10.13.2" style="padding:1pt 8.0pt;">16.9</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T5.10.13.3" style="padding:1pt 8.0pt;">12.0</td>
<td class="ltx_td ltx_align_right" id="S5.T5.10.13.4" style="padding:1pt 8.0pt;">25.1</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.13.5" style="padding:1pt 8.0pt;">33.1</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.13.6" style="padding:1pt 8.0pt;">21.6</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.13.7" style="padding:1pt 8.0pt;">70.7</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.13.8" style="padding:1pt 8.0pt;">6.12</td>
<td class="ltx_td ltx_align_left" id="S5.T5.10.13.9" style="padding:1pt 8.0pt;">49.9</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.10.14.1" style="padding:1pt 8.0pt;">JanusPro-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10618v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.10.14.2" style="padding:1pt 8.0pt;">6.9</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T5.10.14.3" style="padding:1pt 8.0pt;">6.9</td>
<td class="ltx_td ltx_align_right" id="S5.T5.10.14.4" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.10.14.4.1">17.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.14.5" style="padding:1pt 8.0pt;">15.5</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.14.6" style="padding:1pt 8.0pt;">16.6</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.14.7" style="padding:1pt 8.0pt;">80.3</td>
<td class="ltx_td ltx_align_center" id="S5.T5.10.14.8" style="padding:1pt 8.0pt;">5.95</td>
<td class="ltx_td ltx_align_left" id="S5.T5.10.14.9" style="padding:1pt 8.0pt;">35.2</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.15">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T5.10.15.1" style="padding:1pt 8.0pt;">DiT-Air/L-Lite</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.10.15.2" style="padding:1pt 8.0pt;">1.2</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T5.10.15.3" style="padding:1pt 8.0pt;">0.7</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.10.15.4" style="padding:1pt 8.0pt;">23.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.10.15.5" style="padding:1pt 8.0pt;">33.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.10.15.6" style="padding:1pt 8.0pt;">21.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.10.15.7" style="padding:1pt 8.0pt;">78.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.10.15.8" style="padding:1pt 8.0pt;">6.06</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.10.15.9" style="padding:1pt 8.0pt;">55.4</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T5.10.16.1" style="padding:1pt 8.0pt;">DiT-Air/XXL</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T5.10.16.2" style="padding:1pt 8.0pt;">6.0</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S5.T5.10.16.3" style="padding:1pt 8.0pt;">2.8</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T5.10.16.4" style="padding:1pt 8.0pt;">32.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.10.16.5" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.10.16.5.1">34.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.10.16.6" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.10.16.6.1">22.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.10.16.7" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.10.16.7.1">82.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.10.16.8" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.10.16.8.1">6.29</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T5.10.16.9" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.10.16.9.1">59.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different training strategies for a diffusion model used in text-to-image generation.  Specifically, it shows the impact of varying the image resolution (256x256 pixels versus 512x512 pixels) during the pretraining phase. It also includes results from subsequent fine-tuning stages: supervised fine-tuning and reward fine-tuning, showing how these stages further affect the model's performance. The metrics used to evaluate performance include FID, CLIP score, Pick score, GenEval score, Aesthetics score, and T2I CompBench score.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison of different training strategies. Resolutions (2562 vs. 5122) refer to the image size used during pretraining.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T6.12.8">
<tr class="ltx_tr" id="S6.T6.10.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S6.T6.10.6.6.7" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.10.6.6.7.1">Training Stage</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S6.T6.5.1.1.1" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S6.T6.5.1.1.1.1">FID</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T6.5.1.1.1.m1.1"><semantics id="S6.T6.5.1.1.1.m1.1a"><mo id="S6.T6.5.1.1.1.m1.1.1" stretchy="false" xref="S6.T6.5.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T6.5.1.1.1.m1.1b"><ci id="S6.T6.5.1.1.1.m1.1.1.cmml" xref="S6.T6.5.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.5.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T6.5.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S6.T6.6.2.2.2" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S6.T6.6.2.2.2.1">CLIP</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T6.6.2.2.2.m1.1"><semantics id="S6.T6.6.2.2.2.m1.1a"><mo id="S6.T6.6.2.2.2.m1.1.1" stretchy="false" xref="S6.T6.6.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T6.6.2.2.2.m1.1b"><ci id="S6.T6.6.2.2.2.m1.1.1.cmml" xref="S6.T6.6.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.6.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T6.6.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S6.T6.7.3.3.3" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S6.T6.7.3.3.3.1">Pick</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T6.7.3.3.3.m1.1"><semantics id="S6.T6.7.3.3.3.m1.1a"><mo id="S6.T6.7.3.3.3.m1.1.1" stretchy="false" xref="S6.T6.7.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T6.7.3.3.3.m1.1b"><ci id="S6.T6.7.3.3.3.m1.1.1.cmml" xref="S6.T6.7.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.7.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T6.7.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S6.T6.8.4.4.4" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S6.T6.8.4.4.4.1">GenE.</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T6.8.4.4.4.m1.1"><semantics id="S6.T6.8.4.4.4.m1.1a"><mo id="S6.T6.8.4.4.4.m1.1.1" stretchy="false" xref="S6.T6.8.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T6.8.4.4.4.m1.1b"><ci id="S6.T6.8.4.4.4.m1.1.1.cmml" xref="S6.T6.8.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.8.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T6.8.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S6.T6.9.5.5.5" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S6.T6.9.5.5.5.1">Aesth.</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T6.9.5.5.5.m1.1"><semantics id="S6.T6.9.5.5.5.m1.1a"><mo id="S6.T6.9.5.5.5.m1.1.1" stretchy="false" xref="S6.T6.9.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T6.9.5.5.5.m1.1b"><ci id="S6.T6.9.5.5.5.m1.1.1.cmml" xref="S6.T6.9.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.9.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T6.9.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S6.T6.10.6.6.6" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S6.T6.10.6.6.6.1">T2I.</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T6.10.6.6.6.m1.1"><semantics id="S6.T6.10.6.6.6.m1.1a"><mo id="S6.T6.10.6.6.6.m1.1.1" stretchy="false" xref="S6.T6.10.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T6.10.6.6.6.m1.1b"><ci id="S6.T6.10.6.6.6.m1.1.1.cmml" xref="S6.T6.10.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.10.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T6.10.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S6.T6.11.7.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T6.11.7.7.1" style="padding:1pt 3.0pt;">Pretrain 256<sup class="ltx_sup" id="S6.T6.11.7.7.1.1">2</sup>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T6.11.7.7.2" style="padding:1pt 3.0pt;">12.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T6.11.7.7.3" style="padding:1pt 3.0pt;">33.4</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T6.11.7.7.4" style="padding:1pt 3.0pt;">20.5</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T6.11.7.7.5" style="padding:1pt 3.0pt;">71.1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T6.11.7.7.6" style="padding:1pt 3.0pt;">5.57</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T6.11.7.7.7" style="padding:1pt 3.0pt;">50.7</td>
</tr>
<tr class="ltx_tr" id="S6.T6.12.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T6.12.8.8.1" style="padding:1pt 3.0pt;">Pretrain 512<sup class="ltx_sup" id="S6.T6.12.8.8.1.1">2</sup>
</td>
<td class="ltx_td ltx_align_right" id="S6.T6.12.8.8.2" style="padding:1pt 3.0pt;">13.0</td>
<td class="ltx_td ltx_align_right" id="S6.T6.12.8.8.3" style="padding:1pt 3.0pt;">33.5</td>
<td class="ltx_td ltx_align_right" id="S6.T6.12.8.8.4" style="padding:1pt 3.0pt;">20.7</td>
<td class="ltx_td ltx_align_right" id="S6.T6.12.8.8.5" style="padding:1pt 3.0pt;">74.2</td>
<td class="ltx_td ltx_align_right" id="S6.T6.12.8.8.6" style="padding:1pt 3.0pt;">5.62</td>
<td class="ltx_td ltx_align_right" id="S6.T6.12.8.8.7" style="padding:1pt 3.0pt;">51.7</td>
</tr>
<tr class="ltx_tr" id="S6.T6.12.8.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T6.12.8.9.1" style="padding:1pt 3.0pt;">Supervised fine-tuning</td>
<td class="ltx_td ltx_align_right" id="S6.T6.12.8.9.2" style="padding:1pt 3.0pt;">22.5</td>
<td class="ltx_td ltx_align_right" id="S6.T6.12.8.9.3" style="padding:1pt 3.0pt;">34.2</td>
<td class="ltx_td ltx_align_right" id="S6.T6.12.8.9.4" style="padding:1pt 3.0pt;">21.5</td>
<td class="ltx_td ltx_align_right" id="S6.T6.12.8.9.5" style="padding:1pt 3.0pt;">79.0</td>
<td class="ltx_td ltx_align_right" id="S6.T6.12.8.9.6" style="padding:1pt 3.0pt;">5.89</td>
<td class="ltx_td ltx_align_right" id="S6.T6.12.8.9.7" style="padding:1pt 3.0pt;">55.3</td>
</tr>
<tr class="ltx_tr" id="S6.T6.12.8.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S6.T6.12.8.10.1" style="padding:1pt 3.0pt;">Reward fine-tuning</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S6.T6.12.8.10.2" style="padding:1pt 3.0pt;">32.2</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S6.T6.12.8.10.3" style="padding:1pt 3.0pt;">34.7</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S6.T6.12.8.10.4" style="padding:1pt 3.0pt;">22.1</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S6.T6.12.8.10.5" style="padding:1pt 3.0pt;">82.9</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S6.T6.12.8.10.6" style="padding:1pt 3.0pt;">6.21</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S6.T6.12.8.10.7" style="padding:1pt 3.0pt;">59.5</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the zero-shot performance of causal and bidirectional CLIP models on two image datasets: ImageNet and COCO5k.  Zero-shot performance means the models were not fine-tuned or trained specifically on these datasets; their pre-trained weights were used directly for evaluation. The table displays the accuracy metrics (Acc@1 and Acc@5) for image classification, and image-to-text (I2T) retrieval and text-to-image (T2I) generation metrics (I2T@1 and I2T@5, T2I@1 and T2I@5). This allows for assessing how effectively each model type (causal vs. bidirectional) can perform these tasks without any dataset-specific adjustments.
> <details>
> <summary>read the caption</summary>
> Table 7: Zero-Shot performance of causal vs. bidirectional CLIP models on ImageNet and COCO5k.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T7.6.6">
<tr class="ltx_tr" id="A3.T7.6.6.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A3.T7.6.6.7.1" rowspan="2" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.6.6.7.1.1" style="font-size:144%;">CLIP Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A3.T7.6.6.7.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.6.6.7.2.1" style="font-size:144%;">ImageNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="A3.T7.6.6.7.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.6.6.7.3.1" style="font-size:144%;">COCO5k</span></td>
</tr>
<tr class="ltx_tr" id="A3.T7.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.1.1.1.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.1.1" style="font-size:144%;">Acc@1</span><span class="ltx_text" id="A3.T7.1.1.1.1.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T7.1.1.1.1.m1.1"><semantics id="A3.T7.1.1.1.1.m1.1a"><mo id="A3.T7.1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T7.1.1.1.1.m1.1b"><ci id="A3.T7.1.1.1.1.m1.1.1.cmml" xref="A3.T7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T7.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T7.2.2.2.2" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T7.2.2.2.2.1" style="font-size:144%;">Acc@5</span><span class="ltx_text" id="A3.T7.2.2.2.2.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T7.2.2.2.2.m1.1"><semantics id="A3.T7.2.2.2.2.m1.1a"><mo id="A3.T7.2.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T7.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T7.2.2.2.2.m1.1b"><ci id="A3.T7.2.2.2.2.m1.1.1.cmml" xref="A3.T7.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T7.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.3.3.3.3" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T7.3.3.3.3.1" style="font-size:144%;">I2T@1</span><span class="ltx_text" id="A3.T7.3.3.3.3.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T7.3.3.3.3.m1.1"><semantics id="A3.T7.3.3.3.3.m1.1a"><mo id="A3.T7.3.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T7.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T7.3.3.3.3.m1.1b"><ci id="A3.T7.3.3.3.3.m1.1.1.cmml" xref="A3.T7.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T7.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.4.4.4.4" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T7.4.4.4.4.1" style="font-size:144%;">I2T@5</span><span class="ltx_text" id="A3.T7.4.4.4.4.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T7.4.4.4.4.m1.1"><semantics id="A3.T7.4.4.4.4.m1.1a"><mo id="A3.T7.4.4.4.4.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T7.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T7.4.4.4.4.m1.1b"><ci id="A3.T7.4.4.4.4.m1.1.1.cmml" xref="A3.T7.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T7.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.5.5.5.5" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T7.5.5.5.5.1" style="font-size:144%;">T2I@1</span><span class="ltx_text" id="A3.T7.5.5.5.5.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T7.5.5.5.5.m1.1"><semantics id="A3.T7.5.5.5.5.m1.1a"><mo id="A3.T7.5.5.5.5.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T7.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T7.5.5.5.5.m1.1b"><ci id="A3.T7.5.5.5.5.m1.1.1.cmml" xref="A3.T7.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T7.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.6.6.6.6" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T7.6.6.6.6.1" style="font-size:144%;">T2I@5</span><span class="ltx_text" id="A3.T7.6.6.6.6.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T7.6.6.6.6.m1.1"><semantics id="A3.T7.6.6.6.6.m1.1a"><mo id="A3.T7.6.6.6.6.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T7.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T7.6.6.6.6.m1.1b"><ci id="A3.T7.6.6.6.6.m1.1.1.cmml" xref="A3.T7.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T7.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.6.6.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T7.6.6.8.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="A3.T7.6.6.8.1.1"></span><span class="ltx_text" id="A3.T7.6.6.8.1.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T7.6.6.8.1.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.6.6.8.1.3.1">
<span class="ltx_tr" id="A3.T7.6.6.8.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.6.6.8.1.3.1.1.1" style="padding:1.45pt 3.0pt;">Causal</span></span>
</span></span><span class="ltx_text" id="A3.T7.6.6.8.1.4"></span><span class="ltx_text" id="A3.T7.6.6.8.1.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.6.6.8.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T7.6.6.8.2.1" style="font-size:144%;">80.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T7.6.6.8.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T7.6.6.8.3.1" style="font-size:144%;">96.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.6.6.8.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T7.6.6.8.4.1" style="font-size:144%;">74.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.6.6.8.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T7.6.6.8.5.1" style="font-size:144%;">91.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.6.6.8.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T7.6.6.8.6.1" style="font-size:144%;">53.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.6.6.8.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T7.6.6.8.7.1" style="font-size:144%;">77.7</span></td>
</tr>
<tr class="ltx_tr" id="A3.T7.6.6.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A3.T7.6.6.9.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="A3.T7.6.6.9.1.1"></span><span class="ltx_text" id="A3.T7.6.6.9.1.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T7.6.6.9.1.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.6.6.9.1.3.1">
<span class="ltx_tr" id="A3.T7.6.6.9.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.6.6.9.1.3.1.1.1" style="padding:1.45pt 3.0pt;">Bidirectional</span></span>
</span></span><span class="ltx_text" id="A3.T7.6.6.9.1.4"></span><span class="ltx_text" id="A3.T7.6.6.9.1.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.6.6.9.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T7.6.6.9.2.1" style="font-size:144%;">80.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T7.6.6.9.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T7.6.6.9.3.1" style="font-size:144%;">96.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.6.6.9.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T7.6.6.9.4.1" style="font-size:144%;">74.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.6.6.9.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T7.6.6.9.5.1" style="font-size:144%;">91.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.6.6.9.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T7.6.6.9.6.1" style="font-size:144%;">53.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.6.6.9.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T7.6.6.9.7.1" style="font-size:144%;">78.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of causal and bidirectional CLIP models when used as text embedding models for text-to-image generation.  It shows how each model performs across various metrics including validation loss (Val), Fréchet Inception Distance (FID), CLIP score (CLIP↑), PickScore (Pick↑), GenEval score (GenE↑), Aesthetics score (Aesth↑), and T2I CompBench score (T2I↑). Lower FID scores are better, while higher scores are better for all other metrics.  This allows for a quantitative comparison of the two CLIP model variants' effectiveness in this specific application.
> <details>
> <summary>read the caption</summary>
> Table 8: Performance comparison of causal vs. bidirectional CLIP models as text embedding models for text-to-image generation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T8.7.7">
<tr class="ltx_tr" id="A3.T8.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T8.7.7.7.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.7.7.7.8.1" style="font-size:144%;">CLIP Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T8.1.1.1.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T8.1.1.1.1.1" style="font-size:144%;">Val.</span><span class="ltx_text" id="A3.T8.1.1.1.1.2" style="font-size:144%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T8.1.1.1.1.m1.1"><semantics id="A3.T8.1.1.1.1.m1.1a"><mo id="A3.T8.1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T8.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T8.1.1.1.1.m1.1b"><ci id="A3.T8.1.1.1.1.m1.1.1.cmml" xref="A3.T8.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T8.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T8.2.2.2.2" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T8.2.2.2.2.1" style="font-size:144%;">FID</span><span class="ltx_text" id="A3.T8.2.2.2.2.2" style="font-size:144%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T8.2.2.2.2.m1.1"><semantics id="A3.T8.2.2.2.2.m1.1a"><mo id="A3.T8.2.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T8.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T8.2.2.2.2.m1.1b"><ci id="A3.T8.2.2.2.2.m1.1.1.cmml" xref="A3.T8.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T8.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T8.3.3.3.3" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T8.3.3.3.3.1" style="font-size:144%;">CLIP</span><span class="ltx_text" id="A3.T8.3.3.3.3.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T8.3.3.3.3.m1.1"><semantics id="A3.T8.3.3.3.3.m1.1a"><mo id="A3.T8.3.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T8.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T8.3.3.3.3.m1.1b"><ci id="A3.T8.3.3.3.3.m1.1.1.cmml" xref="A3.T8.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T8.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T8.4.4.4.4" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T8.4.4.4.4.1" style="font-size:144%;">Pick</span><span class="ltx_text" id="A3.T8.4.4.4.4.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T8.4.4.4.4.m1.1"><semantics id="A3.T8.4.4.4.4.m1.1a"><mo id="A3.T8.4.4.4.4.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T8.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T8.4.4.4.4.m1.1b"><ci id="A3.T8.4.4.4.4.m1.1.1.cmml" xref="A3.T8.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T8.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T8.5.5.5.5" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T8.5.5.5.5.1" style="font-size:144%;">GenE.</span><span class="ltx_text" id="A3.T8.5.5.5.5.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T8.5.5.5.5.m1.1"><semantics id="A3.T8.5.5.5.5.m1.1a"><mo id="A3.T8.5.5.5.5.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T8.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T8.5.5.5.5.m1.1b"><ci id="A3.T8.5.5.5.5.m1.1.1.cmml" xref="A3.T8.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T8.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T8.6.6.6.6" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T8.6.6.6.6.1" style="font-size:144%;">Aesth.</span><span class="ltx_text" id="A3.T8.6.6.6.6.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T8.6.6.6.6.m1.1"><semantics id="A3.T8.6.6.6.6.m1.1a"><mo id="A3.T8.6.6.6.6.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T8.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T8.6.6.6.6.m1.1b"><ci id="A3.T8.6.6.6.6.m1.1.1.cmml" xref="A3.T8.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T8.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T8.7.7.7.7" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T8.7.7.7.7.1" style="font-size:144%;">T2I.</span><span class="ltx_text" id="A3.T8.7.7.7.7.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T8.7.7.7.7.m1.1"><semantics id="A3.T8.7.7.7.7.m1.1a"><mo id="A3.T8.7.7.7.7.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T8.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T8.7.7.7.7.m1.1b"><ci id="A3.T8.7.7.7.7.m1.1.1.cmml" xref="A3.T8.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T8.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.7.7.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T8.7.7.8.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="A3.T8.7.7.8.1.1"></span><span class="ltx_text" id="A3.T8.7.7.8.1.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T8.7.7.8.1.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T8.7.7.8.1.3.1">
<span class="ltx_tr" id="A3.T8.7.7.8.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.7.7.8.1.3.1.1.1" style="padding:1.45pt 3.0pt;">Causal</span></span>
</span></span><span class="ltx_text" id="A3.T8.7.7.8.1.4"></span><span class="ltx_text" id="A3.T8.7.7.8.1.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.7.7.8.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T8.7.7.8.2.1" style="font-size:144%;">0.429</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.7.7.8.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T8.7.7.8.3.1" style="font-size:144%;">16.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.7.7.8.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T8.7.7.8.4.1" style="font-size:144%;">32.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.7.7.8.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T8.7.7.8.5.1" style="font-size:144%;">20.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.7.7.8.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T8.7.7.8.6.1" style="font-size:144%;">0.683</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.7.7.8.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T8.7.7.8.7.1" style="font-size:144%;">5.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.7.7.8.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T8.7.7.8.8.1" style="font-size:144%;">50.6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.7.7.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T8.7.7.9.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="A3.T8.7.7.9.1.1"></span><span class="ltx_text" id="A3.T8.7.7.9.1.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T8.7.7.9.1.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T8.7.7.9.1.3.1">
<span class="ltx_tr" id="A3.T8.7.7.9.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.7.7.9.1.3.1.1.1" style="padding:1.45pt 3.0pt;">Bidirectional</span></span>
</span></span><span class="ltx_text" id="A3.T8.7.7.9.1.4"></span><span class="ltx_text" id="A3.T8.7.7.9.1.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.7.7.9.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.7.7.9.2.1" style="font-size:144%;">0.428</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.7.7.9.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.7.7.9.3.1" style="font-size:144%;">16.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.7.7.9.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T8.7.7.9.4.1" style="font-size:144%;">32.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.7.7.9.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.7.7.9.5.1" style="font-size:144%;">20.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.7.7.9.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.7.7.9.6.1" style="font-size:144%;">0.704</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.7.7.9.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.7.7.9.7.1" style="font-size:144%;">5.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.7.7.9.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.7.7.9.8.1" style="font-size:144%;">51.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different CLIP layer selections in the text encoder. It shows the impact of using embeddings from various layers (6, 12, 18, 23, 24) and a combination of layers (6+12+18+24) on key metrics like Validation loss (Val.), FID, CLIPScore, PickScore, GenEval, Aesthetics score, and T2I Compbench score. This detailed ablation study helps to determine the optimal layer selection for achieving the best balance between efficiency and performance in text-to-image generation.
> <details>
> <summary>read the caption</summary>
> Table 9: CLIP Layer Selection Performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T9.7.7">
<tr class="ltx_tr" id="A3.T9.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T9.7.7.7.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.7.7.7.8.1" style="font-size:144%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.1.1.1.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T9.1.1.1.1.1" style="font-size:144%;">Val.</span><span class="ltx_text" id="A3.T9.1.1.1.1.2" style="font-size:144%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T9.1.1.1.1.m1.1"><semantics id="A3.T9.1.1.1.1.m1.1a"><mo id="A3.T9.1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T9.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T9.1.1.1.1.m1.1b"><ci id="A3.T9.1.1.1.1.m1.1.1.cmml" xref="A3.T9.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T9.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T9.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.2.2.2.2" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T9.2.2.2.2.1" style="font-size:144%;">FID</span><span class="ltx_text" id="A3.T9.2.2.2.2.2" style="font-size:144%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T9.2.2.2.2.m1.1"><semantics id="A3.T9.2.2.2.2.m1.1a"><mo id="A3.T9.2.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T9.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T9.2.2.2.2.m1.1b"><ci id="A3.T9.2.2.2.2.m1.1.1.cmml" xref="A3.T9.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T9.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T9.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.3.3.3.3" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T9.3.3.3.3.1" style="font-size:144%;">CLIP</span><span class="ltx_text" id="A3.T9.3.3.3.3.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T9.3.3.3.3.m1.1"><semantics id="A3.T9.3.3.3.3.m1.1a"><mo id="A3.T9.3.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T9.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T9.3.3.3.3.m1.1b"><ci id="A3.T9.3.3.3.3.m1.1.1.cmml" xref="A3.T9.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T9.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T9.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.4.4.4" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T9.4.4.4.4.1" style="font-size:144%;">Pick</span><span class="ltx_text" id="A3.T9.4.4.4.4.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T9.4.4.4.4.m1.1"><semantics id="A3.T9.4.4.4.4.m1.1a"><mo id="A3.T9.4.4.4.4.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T9.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T9.4.4.4.4.m1.1b"><ci id="A3.T9.4.4.4.4.m1.1.1.cmml" xref="A3.T9.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T9.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T9.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.5.5.5.5" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T9.5.5.5.5.1" style="font-size:144%;">GenE.</span><span class="ltx_text" id="A3.T9.5.5.5.5.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T9.5.5.5.5.m1.1"><semantics id="A3.T9.5.5.5.5.m1.1a"><mo id="A3.T9.5.5.5.5.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T9.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T9.5.5.5.5.m1.1b"><ci id="A3.T9.5.5.5.5.m1.1.1.cmml" xref="A3.T9.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T9.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T9.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.6.6.6.6" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T9.6.6.6.6.1" style="font-size:144%;">Aesth.</span><span class="ltx_text" id="A3.T9.6.6.6.6.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T9.6.6.6.6.m1.1"><semantics id="A3.T9.6.6.6.6.m1.1a"><mo id="A3.T9.6.6.6.6.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T9.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T9.6.6.6.6.m1.1b"><ci id="A3.T9.6.6.6.6.m1.1.1.cmml" xref="A3.T9.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T9.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T9.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.7.7.7.7" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T9.7.7.7.7.1" style="font-size:144%;">T2I.</span><span class="ltx_text" id="A3.T9.7.7.7.7.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T9.7.7.7.7.m1.1"><semantics id="A3.T9.7.7.7.7.m1.1a"><mo id="A3.T9.7.7.7.7.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T9.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T9.7.7.7.7.m1.1b"><ci id="A3.T9.7.7.7.7.m1.1.1.cmml" xref="A3.T9.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T9.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T9.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.7.7.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T9.7.7.8.1" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.8.1.1" style="font-size:144%;">Layer 6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.7.7.8.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.8.2.1" style="font-size:144%;">0.428</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.7.7.8.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.8.3.1" style="font-size:144%;">15.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.7.7.8.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.8.4.1" style="font-size:144%;">32.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.7.7.8.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.8.5.1" style="font-size:144%;">20.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.7.7.8.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.8.6.1" style="font-size:144%;">68.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.7.7.8.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.8.7.1" style="font-size:144%;">5.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.7.7.8.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.8.8.1" style="font-size:144%;">51.2</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.7.7.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.7.7.9.1" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.9.1.1" style="font-size:144%;">Layer 12</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.9.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.9.2.1" style="font-size:144%;">0.428</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.9.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.9.3.1" style="font-size:144%;">16.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.9.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.9.4.1" style="font-size:144%;">32.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.9.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.9.5.1" style="font-size:144%;">20.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.9.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.9.6.1" style="font-size:144%;">68.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.9.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.9.7.1" style="font-size:144%;">5.56</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.9.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.9.8.1" style="font-size:144%;">50.5</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.7.7.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.7.7.10.1" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.10.1.1" style="font-size:144%;">Layer 18</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.10.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.10.2.1" style="font-size:144%;">0.428</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.10.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.10.3.1" style="font-size:144%;">16.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.10.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.7.7.10.4.1" style="font-size:144%;">32.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.10.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.10.5.1" style="font-size:144%;">20.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.10.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.10.6.1" style="font-size:144%;">69.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.10.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.10.7.1" style="font-size:144%;">5.56</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.10.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.10.8.1" style="font-size:144%;">51.2</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.7.7.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.7.7.11.1" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.11.1.1" style="font-size:144%;">Layer 23</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.11.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.11.2.1" style="font-size:144%;">0.428</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.11.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.11.3.1" style="font-size:144%;">15.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.11.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.7.7.11.4.1" style="font-size:144%;">32.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.11.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.7.7.11.5.1" style="font-size:144%;">20.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.11.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.7.7.11.6.1" style="font-size:144%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.11.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.7.7.11.7.1" style="font-size:144%;">5.59</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.11.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.11.8.1" style="font-size:144%;">50.9</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.7.7.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.7.7.12.1" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.12.1.1" style="font-size:144%;">Layer 24</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.12.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.12.2.1" style="font-size:144%;">0.428</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.12.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.12.3.1" style="font-size:144%;">16.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.12.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.7.7.12.4.1" style="font-size:144%;">32.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.12.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.7.7.12.5.1" style="font-size:144%;">20.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.12.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.12.6.1" style="font-size:144%;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.12.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.12.7.1" style="font-size:144%;">5.58</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.7.7.12.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.7.7.12.8.1" style="font-size:144%;">51.4</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.7.7.13">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T9.7.7.13.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="A3.T9.7.7.13.1.1"></span><span class="ltx_text" id="A3.T9.7.7.13.1.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T9.7.7.13.1.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T9.7.7.13.1.3.1">
<span class="ltx_tr" id="A3.T9.7.7.13.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.7.7.13.1.3.1.1.1" style="padding:1.45pt 3.0pt;">Layer</span></span>
<span class="ltx_tr" id="A3.T9.7.7.13.1.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.7.7.13.1.3.1.2.1" style="padding:1.45pt 3.0pt;">6 + 12 + 18 + 24</span></span>
</span></span><span class="ltx_text" id="A3.T9.7.7.13.1.4"></span><span class="ltx_text" id="A3.T9.7.7.13.1.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.7.7.13.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.13.2.1" style="font-size:144%;">0.426</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.7.7.13.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.7.7.13.3.1" style="font-size:144%;">15.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.7.7.13.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.7.7.13.4.1" style="font-size:144%;">32.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.7.7.13.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.7.7.13.5.1" style="font-size:144%;">20.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.7.7.13.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.13.6.1" style="font-size:144%;">70.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.7.7.13.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.13.7.1" style="font-size:144%;">5.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.7.7.13.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T9.7.7.13.8.1" style="font-size:144%;">51.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of two types of Large Language Models (LLMs) used for text encoding in text-to-image generation.  It compares a text-only LLM against a multimodal LLM, evaluating their performance across various metrics including validation loss, FID (Fréchet Inception Distance), CLIP score (a measure of text-image alignment), PickScore (another alignment metric based on user preferences), GenEval (an overall generation quality benchmark), Aesthetics score (an assessment of visual appeal), and T2I CompBench score (a comprehensive evaluation metric for text-to-image composition). The results show the relative strengths and weaknesses of each LLM architecture for this specific task.
> <details>
> <summary>read the caption</summary>
> Table 10: Performance Comparison of text LLM vs.  Multimodal LLM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T10.7.7">
<tr class="ltx_tr" id="A3.T10.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T10.7.7.7.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.7.7.7.8.1" style="font-size:144%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.1.1.1.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T10.1.1.1.1.1" style="font-size:144%;">Val.</span><span class="ltx_text" id="A3.T10.1.1.1.1.2" style="font-size:144%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T10.1.1.1.1.m1.1"><semantics id="A3.T10.1.1.1.1.m1.1a"><mo id="A3.T10.1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T10.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T10.1.1.1.1.m1.1b"><ci id="A3.T10.1.1.1.1.m1.1.1.cmml" xref="A3.T10.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T10.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.2.2.2.2" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T10.2.2.2.2.1" style="font-size:144%;">FID</span><span class="ltx_text" id="A3.T10.2.2.2.2.2" style="font-size:144%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T10.2.2.2.2.m1.1"><semantics id="A3.T10.2.2.2.2.m1.1a"><mo id="A3.T10.2.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T10.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T10.2.2.2.2.m1.1b"><ci id="A3.T10.2.2.2.2.m1.1.1.cmml" xref="A3.T10.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T10.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.3.3.3.3" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T10.3.3.3.3.1" style="font-size:144%;">CLIP</span><span class="ltx_text" id="A3.T10.3.3.3.3.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T10.3.3.3.3.m1.1"><semantics id="A3.T10.3.3.3.3.m1.1a"><mo id="A3.T10.3.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T10.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T10.3.3.3.3.m1.1b"><ci id="A3.T10.3.3.3.3.m1.1.1.cmml" xref="A3.T10.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T10.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.4.4.4.4" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T10.4.4.4.4.1" style="font-size:144%;">Pick</span><span class="ltx_text" id="A3.T10.4.4.4.4.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T10.4.4.4.4.m1.1"><semantics id="A3.T10.4.4.4.4.m1.1a"><mo id="A3.T10.4.4.4.4.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T10.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T10.4.4.4.4.m1.1b"><ci id="A3.T10.4.4.4.4.m1.1.1.cmml" xref="A3.T10.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T10.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.5.5.5.5" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T10.5.5.5.5.1" style="font-size:144%;">GenE.</span><span class="ltx_text" id="A3.T10.5.5.5.5.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T10.5.5.5.5.m1.1"><semantics id="A3.T10.5.5.5.5.m1.1a"><mo id="A3.T10.5.5.5.5.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T10.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T10.5.5.5.5.m1.1b"><ci id="A3.T10.5.5.5.5.m1.1.1.cmml" xref="A3.T10.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T10.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.6.6.6.6" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T10.6.6.6.6.1" style="font-size:144%;">Aesth.</span><span class="ltx_text" id="A3.T10.6.6.6.6.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T10.6.6.6.6.m1.1"><semantics id="A3.T10.6.6.6.6.m1.1a"><mo id="A3.T10.6.6.6.6.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T10.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T10.6.6.6.6.m1.1b"><ci id="A3.T10.6.6.6.6.m1.1.1.cmml" xref="A3.T10.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T10.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.7.7.7.7" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T10.7.7.7.7.1" style="font-size:144%;">T2I.</span><span class="ltx_text" id="A3.T10.7.7.7.7.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T10.7.7.7.7.m1.1"><semantics id="A3.T10.7.7.7.7.m1.1a"><mo id="A3.T10.7.7.7.7.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T10.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T10.7.7.7.7.m1.1b"><ci id="A3.T10.7.7.7.7.m1.1.1.cmml" xref="A3.T10.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T10.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.7.7.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T10.7.7.8.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="A3.T10.7.7.8.1.1"></span><span class="ltx_text" id="A3.T10.7.7.8.1.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T10.7.7.8.1.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T10.7.7.8.1.3.1">
<span class="ltx_tr" id="A3.T10.7.7.8.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.7.7.8.1.3.1.1.1" style="padding:1.45pt 3.0pt;">LLM</span></span>
</span></span><span class="ltx_text" id="A3.T10.7.7.8.1.4"></span><span class="ltx_text" id="A3.T10.7.7.8.1.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.7.7.8.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T10.7.7.8.2.1" style="font-size:144%;">0.427</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.7.7.8.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.7.7.8.3.1" style="font-size:144%;">16.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.7.7.8.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.7.7.8.4.1" style="font-size:144%;">32.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.7.7.8.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.7.7.8.5.1" style="font-size:144%;">20.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.7.7.8.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.7.7.8.6.1" style="font-size:144%;">72.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.7.7.8.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.7.7.8.7.1" style="font-size:144%;">5.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.7.7.8.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T10.7.7.8.8.1" style="font-size:144%;">48.6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.7.7.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T10.7.7.9.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="A3.T10.7.7.9.1.1"></span><span class="ltx_text" id="A3.T10.7.7.9.1.2" style="font-size:144%;"> </span><span class="ltx_text" id="A3.T10.7.7.9.1.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T10.7.7.9.1.3.1">
<span class="ltx_tr" id="A3.T10.7.7.9.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.7.7.9.1.3.1.1.1" style="padding:1.45pt 3.0pt;">MLLM</span></span>
</span></span><span class="ltx_text" id="A3.T10.7.7.9.1.4"></span><span class="ltx_text" id="A3.T10.7.7.9.1.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.7.7.9.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T10.7.7.9.2.1" style="font-size:144%;">0.427</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.7.7.9.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T10.7.7.9.3.1" style="font-size:144%;">16.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.7.7.9.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T10.7.7.9.4.1" style="font-size:144%;">31.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.7.7.9.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T10.7.7.9.5.1" style="font-size:144%;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.7.7.9.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T10.7.7.9.6.1" style="font-size:144%;">70.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.7.7.9.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T10.7.7.9.7.1" style="font-size:144%;">5.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.7.7.9.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.7.7.9.8.1" style="font-size:144%;">49.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on different layers of a Large Language Model (LLM) used as a text encoder in a text-to-image generation model.  It compares the performance of using embeddings from various layers (layer 14, 28, 42, and the last layer 56) of the LLM, as well as a combination of layers (28 and 42), to assess their impact on image generation quality. The metrics used for evaluation include validation loss (Val.), Fréchet Inception Distance (FID), CLIP score (CLIP), PickScore (Pick), GenEval (GenE), LAION-Aesthetics Predictor V2 (Aesth.), and T2I CompBench (T2I).  This allows for an analysis of which layer (or combination of layers) provides the best balance between detail preservation and high-level semantic understanding for this task.
> <details>
> <summary>read the caption</summary>
> Table 11: LLM Layer Selection Performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T11.7.7">
<tr class="ltx_tr" id="A3.T11.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T11.7.7.7.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.7.7.7.8.1" style="font-size:144%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.1.1.1.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T11.1.1.1.1.1" style="font-size:144%;">Val.</span><span class="ltx_text" id="A3.T11.1.1.1.1.2" style="font-size:144%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T11.1.1.1.1.m1.1"><semantics id="A3.T11.1.1.1.1.m1.1a"><mo id="A3.T11.1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T11.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T11.1.1.1.1.m1.1b"><ci id="A3.T11.1.1.1.1.m1.1.1.cmml" xref="A3.T11.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.2.2.2.2" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T11.2.2.2.2.1" style="font-size:144%;">FID</span><span class="ltx_text" id="A3.T11.2.2.2.2.2" style="font-size:144%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T11.2.2.2.2.m1.1"><semantics id="A3.T11.2.2.2.2.m1.1a"><mo id="A3.T11.2.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T11.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T11.2.2.2.2.m1.1b"><ci id="A3.T11.2.2.2.2.m1.1.1.cmml" xref="A3.T11.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.3.3.3.3" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T11.3.3.3.3.1" style="font-size:144%;">CLIP</span><span class="ltx_text" id="A3.T11.3.3.3.3.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T11.3.3.3.3.m1.1"><semantics id="A3.T11.3.3.3.3.m1.1a"><mo id="A3.T11.3.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T11.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T11.3.3.3.3.m1.1b"><ci id="A3.T11.3.3.3.3.m1.1.1.cmml" xref="A3.T11.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.4.4.4.4" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T11.4.4.4.4.1" style="font-size:144%;">Pick</span><span class="ltx_text" id="A3.T11.4.4.4.4.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T11.4.4.4.4.m1.1"><semantics id="A3.T11.4.4.4.4.m1.1a"><mo id="A3.T11.4.4.4.4.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T11.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T11.4.4.4.4.m1.1b"><ci id="A3.T11.4.4.4.4.m1.1.1.cmml" xref="A3.T11.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.5.5.5.5" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T11.5.5.5.5.1" style="font-size:144%;">GenE.</span><span class="ltx_text" id="A3.T11.5.5.5.5.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T11.5.5.5.5.m1.1"><semantics id="A3.T11.5.5.5.5.m1.1a"><mo id="A3.T11.5.5.5.5.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T11.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T11.5.5.5.5.m1.1b"><ci id="A3.T11.5.5.5.5.m1.1.1.cmml" xref="A3.T11.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.6.6.6.6" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T11.6.6.6.6.1" style="font-size:144%;">Aesth.</span><span class="ltx_text" id="A3.T11.6.6.6.6.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T11.6.6.6.6.m1.1"><semantics id="A3.T11.6.6.6.6.m1.1a"><mo id="A3.T11.6.6.6.6.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T11.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T11.6.6.6.6.m1.1b"><ci id="A3.T11.6.6.6.6.m1.1.1.cmml" xref="A3.T11.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.7.7.7.7" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.T11.7.7.7.7.1" style="font-size:144%;">T2I.</span><span class="ltx_text" id="A3.T11.7.7.7.7.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T11.7.7.7.7.m1.1"><semantics id="A3.T11.7.7.7.7.m1.1a"><mo id="A3.T11.7.7.7.7.m1.1.1" mathsize="144%" stretchy="false" xref="A3.T11.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T11.7.7.7.7.m1.1b"><ci id="A3.T11.7.7.7.7.m1.1.1.cmml" xref="A3.T11.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.7.7.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T11.7.7.8.1" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.8.1.1" style="font-size:144%;">Layer 14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.7.7.8.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.8.2.1" style="font-size:144%;">0.427</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.7.7.8.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.7.7.8.3.1" style="font-size:144%;">15.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.7.7.8.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.8.4.1" style="font-size:144%;">32.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.7.7.8.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.8.5.1" style="font-size:144%;">20.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.7.7.8.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.8.6.1" style="font-size:144%;">68.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.7.7.8.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.8.7.1" style="font-size:144%;">5.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.7.7.8.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.8.8.1" style="font-size:144%;">0.494</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.7.7.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.7.7.9.1" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.9.1.1" style="font-size:144%;">Layer 28</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.9.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.9.2.1" style="font-size:144%;">0.427</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.9.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.9.3.1" style="font-size:144%;">16.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.9.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.7.7.9.4.1" style="font-size:144%;">32.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.9.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.7.7.9.5.1" style="font-size:144%;">20.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.9.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.9.6.1" style="font-size:144%;">71.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.9.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.7.7.9.7.1" style="font-size:144%;">5.64</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.9.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.9.8.1" style="font-size:144%;">0.502</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.7.7.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.7.7.10.1" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.10.1.1" style="font-size:144%;">Layer 42</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.10.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.10.2.1" style="font-size:144%;">0.427</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.10.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.10.3.1" style="font-size:144%;">17.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.10.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.7.7.10.4.1" style="font-size:144%;">32.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.10.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.10.5.1" style="font-size:144%;">20.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.10.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.10.6.1" style="font-size:144%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.10.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.10.7.1" style="font-size:144%;">5.61</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.10.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.10.8.1" style="font-size:144%;">0.501</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.7.7.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.7.7.11.1" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.11.1.1" style="font-size:144%;">Layer 56 (last)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.11.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.11.2.1" style="font-size:144%;">0.427</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.11.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.11.3.1" style="font-size:144%;">16.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.11.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.11.4.1" style="font-size:144%;">32.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.11.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.11.5.1" style="font-size:144%;">20.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.11.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.11.6.1" style="font-size:144%;">72.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.11.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.11.7.1" style="font-size:144%;">5.57</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.7.7.11.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.11.8.1" style="font-size:144%;">0.486</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.7.7.12">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T11.7.7.12.1" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.12.1.1" style="font-size:144%;">Layer 28 + 42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.7.7.12.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.12.2.1" style="font-size:144%;">0.427</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.7.7.12.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.12.3.1" style="font-size:144%;">15.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.7.7.12.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.7.7.12.4.1" style="font-size:144%;">32.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.7.7.12.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.7.7.12.5.1" style="font-size:144%;">20.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.7.7.12.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.7.7.12.6.1" style="font-size:144%;">73.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.7.7.12.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A3.T11.7.7.12.7.1" style="font-size:144%;">5.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.7.7.12.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.7.7.12.8.1" style="font-size:144%;">0.507</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares three different Variational Autoencoders (VAEs) in terms of their performance on image reconstruction and generation.  The VAEs are trained using different strategies:  one with 4 channels trained from scratch, one with 8 channels trained from scratch, and one with 8 channels trained using a progressive approach (starting with 4 channels then increasing to 8). The table shows the KL divergence (a measure of how well the VAE learns the data distribution), reconstruction FID (Fréchet Inception Distance, a measure of reconstruction quality), and downstream generation metrics including FID, CLIP score, Pick score, GenEval score, Aesthetics score, and T2I CompBench score.
> <details>
> <summary>read the caption</summary>
> Table 12: Comparison of VAE on reconstruction and generation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T12.10.10">
<tr class="ltx_tr" id="A4.T12.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A4.T12.7.7.7.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.7.7.7.8.1" style="font-size:144%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.7.7.7.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.7.7.7.9.1" style="font-size:144%;">KL</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A4.T12.1.1.1.1" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.1.1.1.1.1" style="font-size:144%;">rFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T12.1.1.1.1.1.m1.1"><semantics id="A4.T12.1.1.1.1.1.m1.1a"><mo id="A4.T12.1.1.1.1.1.m1.1.1" stretchy="false" xref="A4.T12.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T12.1.1.1.1.1.m1.1b"><ci id="A4.T12.1.1.1.1.1.m1.1.1.cmml" xref="A4.T12.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T12.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T12.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.2.2.2.2" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T12.2.2.2.2.1" style="font-size:144%;">FID</span><span class="ltx_text" id="A4.T12.2.2.2.2.2" style="font-size:144%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T12.2.2.2.2.m1.1"><semantics id="A4.T12.2.2.2.2.m1.1a"><mo id="A4.T12.2.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="A4.T12.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T12.2.2.2.2.m1.1b"><ci id="A4.T12.2.2.2.2.m1.1.1.cmml" xref="A4.T12.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T12.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T12.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.3.3.3.3" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T12.3.3.3.3.1" style="font-size:144%;">CLIP</span><span class="ltx_text" id="A4.T12.3.3.3.3.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T12.3.3.3.3.m1.1"><semantics id="A4.T12.3.3.3.3.m1.1a"><mo id="A4.T12.3.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="A4.T12.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T12.3.3.3.3.m1.1b"><ci id="A4.T12.3.3.3.3.m1.1.1.cmml" xref="A4.T12.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T12.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T12.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.4.4.4.4" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T12.4.4.4.4.1" style="font-size:144%;">Pick</span><span class="ltx_text" id="A4.T12.4.4.4.4.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T12.4.4.4.4.m1.1"><semantics id="A4.T12.4.4.4.4.m1.1a"><mo id="A4.T12.4.4.4.4.m1.1.1" mathsize="144%" stretchy="false" xref="A4.T12.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T12.4.4.4.4.m1.1b"><ci id="A4.T12.4.4.4.4.m1.1.1.cmml" xref="A4.T12.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T12.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T12.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.5.5.5.5" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T12.5.5.5.5.1" style="font-size:144%;">GenE.</span><span class="ltx_text" id="A4.T12.5.5.5.5.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T12.5.5.5.5.m1.1"><semantics id="A4.T12.5.5.5.5.m1.1a"><mo id="A4.T12.5.5.5.5.m1.1.1" mathsize="144%" stretchy="false" xref="A4.T12.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T12.5.5.5.5.m1.1b"><ci id="A4.T12.5.5.5.5.m1.1.1.cmml" xref="A4.T12.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T12.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T12.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.6.6.6.6" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T12.6.6.6.6.1" style="font-size:144%;">Aesth.</span><span class="ltx_text" id="A4.T12.6.6.6.6.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T12.6.6.6.6.m1.1"><semantics id="A4.T12.6.6.6.6.m1.1a"><mo id="A4.T12.6.6.6.6.m1.1.1" mathsize="144%" stretchy="false" xref="A4.T12.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T12.6.6.6.6.m1.1b"><ci id="A4.T12.6.6.6.6.m1.1.1.cmml" xref="A4.T12.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T12.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T12.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.7.7.7.7" style="padding:1.45pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T12.7.7.7.7.1" style="font-size:144%;">T2I.</span><span class="ltx_text" id="A4.T12.7.7.7.7.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T12.7.7.7.7.m1.1"><semantics id="A4.T12.7.7.7.7.m1.1a"><mo id="A4.T12.7.7.7.7.m1.1.1" mathsize="144%" stretchy="false" xref="A4.T12.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T12.7.7.7.7.m1.1b"><ci id="A4.T12.7.7.7.7.m1.1.1.cmml" xref="A4.T12.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T12.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T12.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T12.8.8.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T12.8.8.8.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.8.8.8.2.1" style="font-size:144%;">A</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.8.8.8.1" style="padding:1.45pt 3.0pt;"><math alttext="7\text{\times}{10}^{4}" class="ltx_Math" display="inline" id="A4.T12.8.8.8.1.m1.3"><semantics id="A4.T12.8.8.8.1.m1.3a"><mrow id="A4.T12.8.8.8.1.m1.3.3.3" xref="A4.T12.8.8.8.1.m1.3.3.3.cmml"><mn id="A4.T12.8.8.8.1.m1.1.1.1.1.1.1.1" mathsize="144%" xref="A4.T12.8.8.8.1.m1.3.3.3.cmml">7</mn><mtext id="A4.T12.8.8.8.1.m1.2.2.2.2.2.2.2" mathsize="144%" xref="A4.T12.8.8.8.1.m1.3.3.3.cmml">×</mtext><msup id="A4.T12.8.8.8.1.m1.3.3.3.3.3.3.3" xref="A4.T12.8.8.8.1.m1.3.3.3.cmml"><mn id="A4.T12.8.8.8.1.m1.3.3.3.3.3.3.3.2" mathsize="144%" xref="A4.T12.8.8.8.1.m1.3.3.3.cmml">10</mn><mn id="A4.T12.8.8.8.1.m1.3.3.3.3.3.3.3.3" mathsize="144%" xref="A4.T12.8.8.8.1.m1.3.3.3.cmml">4</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="A4.T12.8.8.8.1.m1.3b"><csymbol cd="latexml" id="A4.T12.8.8.8.1.m1.3.3.3.cmml" xref="A4.T12.8.8.8.1.m1.3.3.3">7E4</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T12.8.8.8.1.m1.3c">7\text{\times}{10}^{4}</annotation><annotation encoding="application/x-llamapun" id="A4.T12.8.8.8.1.m1.3d">start_ARG 7 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG 4 end_ARG end_ARG</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T12.8.8.8.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.8.8.8.3.1" style="font-size:144%;">4.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.8.8.8.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.8.8.8.4.1" style="font-size:144%;">17.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.8.8.8.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.8.8.8.5.1" style="font-size:144%;">32.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.8.8.8.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.8.8.8.6.1" style="font-size:144%;">20.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.8.8.8.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.8.8.8.7.1" style="font-size:144%;">69.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.8.8.8.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.8.8.8.8.1" style="font-size:144%;">5.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.8.8.8.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.8.8.8.9.1" style="font-size:144%;">50.4</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.9.9.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T12.9.9.9.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.9.9.9.2.1" style="font-size:144%;">B</span></td>
<td class="ltx_td ltx_align_center" id="A4.T12.9.9.9.1" style="padding:1.45pt 3.0pt;"><math alttext="9\text{\times}{10}^{5}" class="ltx_Math" display="inline" id="A4.T12.9.9.9.1.m1.3"><semantics id="A4.T12.9.9.9.1.m1.3a"><mrow id="A4.T12.9.9.9.1.m1.3.3.3" xref="A4.T12.9.9.9.1.m1.3.3.3.cmml"><mn id="A4.T12.9.9.9.1.m1.1.1.1.1.1.1.1" mathsize="144%" xref="A4.T12.9.9.9.1.m1.3.3.3.cmml">9</mn><mtext id="A4.T12.9.9.9.1.m1.2.2.2.2.2.2.2" mathsize="144%" xref="A4.T12.9.9.9.1.m1.3.3.3.cmml">×</mtext><msup id="A4.T12.9.9.9.1.m1.3.3.3.3.3.3.3" xref="A4.T12.9.9.9.1.m1.3.3.3.cmml"><mn id="A4.T12.9.9.9.1.m1.3.3.3.3.3.3.3.2" mathsize="144%" xref="A4.T12.9.9.9.1.m1.3.3.3.cmml">10</mn><mn id="A4.T12.9.9.9.1.m1.3.3.3.3.3.3.3.3" mathsize="144%" xref="A4.T12.9.9.9.1.m1.3.3.3.cmml">5</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="A4.T12.9.9.9.1.m1.3b"><csymbol cd="latexml" id="A4.T12.9.9.9.1.m1.3.3.3.cmml" xref="A4.T12.9.9.9.1.m1.3.3.3">9E5</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T12.9.9.9.1.m1.3c">9\text{\times}{10}^{5}</annotation><annotation encoding="application/x-llamapun" id="A4.T12.9.9.9.1.m1.3d">start_ARG 9 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG 5 end_ARG end_ARG</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T12.9.9.9.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.9.9.9.3.1" style="font-size:144%;">2.59</span></td>
<td class="ltx_td ltx_align_center" id="A4.T12.9.9.9.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.9.9.9.4.1" style="font-size:144%;">16.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T12.9.9.9.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.9.9.9.5.1" style="font-size:144%;">32.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T12.9.9.9.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.9.9.9.6.1" style="font-size:144%;">20.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T12.9.9.9.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.9.9.9.7.1" style="font-size:144%;">69.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T12.9.9.9.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.9.9.9.8.1" style="font-size:144%;">5.56</span></td>
<td class="ltx_td ltx_align_center" id="A4.T12.9.9.9.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.9.9.9.9.1" style="font-size:144%;">50.7</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.10.10.10">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T12.10.10.10.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.10.10.10.2.1" style="font-size:144%;">C</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.10.10.10.1" style="padding:1.45pt 3.0pt;"><math alttext="7\text{\times}{10}^{4}" class="ltx_Math" display="inline" id="A4.T12.10.10.10.1.m1.3"><semantics id="A4.T12.10.10.10.1.m1.3a"><mrow id="A4.T12.10.10.10.1.m1.3.3.3" xref="A4.T12.10.10.10.1.m1.3.3.3.cmml"><mn id="A4.T12.10.10.10.1.m1.1.1.1.1.1.1.1" mathsize="144%" xref="A4.T12.10.10.10.1.m1.3.3.3.cmml">7</mn><mtext id="A4.T12.10.10.10.1.m1.2.2.2.2.2.2.2" mathsize="144%" xref="A4.T12.10.10.10.1.m1.3.3.3.cmml">×</mtext><msup id="A4.T12.10.10.10.1.m1.3.3.3.3.3.3.3" xref="A4.T12.10.10.10.1.m1.3.3.3.cmml"><mn id="A4.T12.10.10.10.1.m1.3.3.3.3.3.3.3.2" mathsize="144%" xref="A4.T12.10.10.10.1.m1.3.3.3.cmml">10</mn><mn id="A4.T12.10.10.10.1.m1.3.3.3.3.3.3.3.3" mathsize="144%" xref="A4.T12.10.10.10.1.m1.3.3.3.cmml">4</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="A4.T12.10.10.10.1.m1.3b"><csymbol cd="latexml" id="A4.T12.10.10.10.1.m1.3.3.3.cmml" xref="A4.T12.10.10.10.1.m1.3.3.3">7E4</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T12.10.10.10.1.m1.3c">7\text{\times}{10}^{4}</annotation><annotation encoding="application/x-llamapun" id="A4.T12.10.10.10.1.m1.3d">start_ARG 7 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG 4 end_ARG end_ARG</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T12.10.10.10.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.10.10.10.3.1" style="font-size:144%;">2.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.10.10.10.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.10.10.10.4.1" style="font-size:144%;">16.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.10.10.10.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="A4.T12.10.10.10.5.1" style="font-size:144%;">32.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.10.10.10.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.10.10.10.6.1" style="font-size:144%;">20.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.10.10.10.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.10.10.10.7.1" style="font-size:144%;">70.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.10.10.10.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.10.10.10.8.1" style="font-size:144%;">5.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.10.10.10.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.10.10.10.9.1" style="font-size:144%;">51.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the architectural components and their respective parameter counts for several prominent text-to-image generation models. It breaks down each model into its constituent parts: the text encoder(s) used, the diffusion model, and the autoencoder (VAE), showing the total and trainable parameters for each component.  The 'Trainable' parameter count indicates only the parameters updated during the model's training phase, thus excluding fixed parameters from pre-trained components.
> <details>
> <summary>read the caption</summary>
> Table 13: Breakdown of architectural components for various text-to-image generation models. Trainable components are marked with ⋆⋆\star⋆.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A7.T13.4.2">
<tr class="ltx_tr" id="A7.T13.3.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A7.T13.3.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A7.T13.3.1.1.2.1" style="font-size:50%;">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A7.T13.3.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A7.T13.3.1.1.3.1" style="font-size:50%;">Text Encoder 1</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A7.T13.3.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A7.T13.3.1.1.4.1" style="font-size:50%;">Text Encoder 2</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A7.T13.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A7.T13.3.1.1.1.1" style="font-size:50%;">Diffusion Model<sup class="ltx_sup" id="A7.T13.3.1.1.1.1.1"><span class="ltx_text ltx_font_medium" id="A7.T13.3.1.1.1.1.1.1">⋆</span></sup></span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A7.T13.3.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A7.T13.3.1.1.5.1" style="font-size:50%;">Autoencoder</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="A7.T13.3.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A7.T13.3.1.1.6.1" style="font-size:50%;">Total (B)</span></td>
</tr>
<tr class="ltx_tr" id="A7.T13.4.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T13.4.2.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.3.1.1" style="font-size:50%;">SDXL Base</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T13.4.2.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.3.2.1" style="font-size:50%;">CLIP/L (123M)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T13.4.2.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.3.3.1" style="font-size:50%;">OpenCLIP/g (694M)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T13.4.2.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.3.4.1" style="font-size:50%;">U-Net (2.6B)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T13.4.2.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.3.5.1" style="font-size:50%;">8-ch (84M)</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T13.4.2.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.3.6.1" style="font-size:50%;">3.50</span></td>
</tr>
<tr class="ltx_tr" id="A7.T13.4.2.2">
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A7.T13.4.2.2.1.1" style="font-size:50%;">PixArt-</span><math alttext="\alpha" class="ltx_Math" display="inline" id="A7.T13.4.2.2.1.m1.1"><semantics id="A7.T13.4.2.2.1.m1.1a"><mi id="A7.T13.4.2.2.1.m1.1.1" mathsize="50%" xref="A7.T13.4.2.2.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="A7.T13.4.2.2.1.m1.1b"><ci id="A7.T13.4.2.2.1.m1.1.1.cmml" xref="A7.T13.4.2.2.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.T13.4.2.2.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="A7.T13.4.2.2.1.m1.1d">italic_α</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.2.2.1" style="font-size:50%;">Flan-T5-XXL (4.7B)</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.2.3.1" style="font-size:50%;">–</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.2.4.1" style="font-size:50%;">DiT (0.6B)</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.2.5.1" style="font-size:50%;">4-ch (80M)</span></td>
<td class="ltx_td ltx_align_right" id="A7.T13.4.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.2.6.1" style="font-size:50%;">5.38</span></td>
</tr>
<tr class="ltx_tr" id="A7.T13.4.2.4">
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.4.1.1" style="font-size:50%;">SD3 Medium</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.4.2.1" style="font-size:50%;">CLIP/L + bigG (817M)</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.4.3.1" style="font-size:50%;">T5-v1.1-XXL (4.7B)</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.4.4.1" style="font-size:50%;">DiT (2.0B)</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.4.5.1" style="font-size:50%;">16-ch (85M)</span></td>
<td class="ltx_td ltx_align_right" id="A7.T13.4.2.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.4.6.1" style="font-size:50%;">7.65</span></td>
</tr>
<tr class="ltx_tr" id="A7.T13.4.2.5">
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.5.1.1" style="font-size:50%;">SD3</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.5.2.1" style="font-size:50%;">CLIP/L + bigG (817M)</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.5.3.1" style="font-size:50%;">T5-v1.1-XXL (4.7B)</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.5.4.1" style="font-size:50%;">DiT (8.0B)</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.5.5.1" style="font-size:50%;">16-ch (85M)</span></td>
<td class="ltx_td ltx_align_right" id="A7.T13.4.2.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.5.6.1" style="font-size:50%;">13.60</span></td>
</tr>
<tr class="ltx_tr" id="A7.T13.4.2.6">
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.6.1.1" style="font-size:50%;">Flux-Dev</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.6.2.1" style="font-size:50%;">CLIP/L (123M)</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.6.3.1" style="font-size:50%;">T5-XXL (4.7B)</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.6.4.1" style="font-size:50%;">DiT (12B)</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.6.5.1" style="font-size:50%;">16-ch (85M)</span></td>
<td class="ltx_td ltx_align_right" id="A7.T13.4.2.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.6.6.1" style="font-size:50%;">16.91</span></td>
</tr>
<tr class="ltx_tr" id="A7.T13.4.2.7">
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.7.1.1" style="font-size:50%;">Flux-Schnell</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.7.2.1" style="font-size:50%;">CLIP/L (123M)</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.7.3.1" style="font-size:50%;">T5-XXL (4.7B)</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.7.4.1" style="font-size:50%;">DiT (12B)</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.7.5.1" style="font-size:50%;">16-ch (85M)</span></td>
<td class="ltx_td ltx_align_right" id="A7.T13.4.2.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.7.6.1" style="font-size:50%;">16.91</span></td>
</tr>
<tr class="ltx_tr" id="A7.T13.4.2.8">
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.8.1.1" style="font-size:50%;">JanusPro-7B</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.8.2.1" style="font-size:50%;">–</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.8.3.1" style="font-size:50%;">–</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.8.4.1" style="font-size:50%;">LLM (6.9B)</span></td>
<td class="ltx_td ltx_align_left" id="A7.T13.4.2.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.8.5.1" style="font-size:50%;">16-ch VQ (85M)</span></td>
<td class="ltx_td ltx_align_right" id="A7.T13.4.2.8.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.8.6.1" style="font-size:50%;">6.91</span></td>
</tr>
<tr class="ltx_tr" id="A7.T13.4.2.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T13.4.2.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.9.1.1" style="font-size:50%;">DiT-Air/L-Lite</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T13.4.2.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.9.2.1" style="font-size:50%;">CLIP/H (335M)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T13.4.2.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.9.3.1" style="font-size:50%;">–</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T13.4.2.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.9.4.1" style="font-size:50%;">DiT (0.7B)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T13.4.2.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.9.5.1" style="font-size:50%;">8-ch (84M)</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T13.4.2.9.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.9.6.1" style="font-size:50%;">1.15</span></td>
</tr>
<tr class="ltx_tr" id="A7.T13.4.2.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T13.4.2.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.10.1.1" style="font-size:50%;">DiT-Air/XXL</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T13.4.2.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.10.2.1" style="font-size:50%;">CLIP/H (335M)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T13.4.2.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.10.3.1" style="font-size:50%;">LLM (2.8B)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T13.4.2.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.10.4.1" style="font-size:50%;">DiT (2.8B)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T13.4.2.10.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.10.5.1" style="font-size:50%;">8-ch (84M)</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T13.4.2.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A7.T13.4.2.10.6.1" style="font-size:50%;">5.95</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table provides a detailed breakdown of the GenEval and T2I CompBench scores for various models, including different variants of DiT-Air and other state-of-the-art models.  For each model, it shows the overall performance and a granular analysis across different aspects of image generation, such as object recognition, counting, color attribution, and spatial relationships. This allows for a comprehensive comparison of model strengths and weaknesses across diverse evaluation metrics.
> <details>
> <summary>read the caption</summary>
> Table 14: Supplementary Table: Detailed GenEval and T2I CompBench Breakdown
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10618/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10618/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}