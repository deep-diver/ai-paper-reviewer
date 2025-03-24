---
title: "Bridging Continuous and Discrete Tokens for Autoregressive Visual Generation"
summary: "TokenBridge bridges continuous and discrete tokens for autoregressive visual generation, achieving high-quality synthesis with simple autoregressive modeling."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 University of Hong Kong",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16430 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuqing Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16430" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16430" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16430/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Autoregressive visual generation** relies on tokenizers to compress images. Discrete tokens offer simple modeling but lose information and tokenizer training faces instability. Conversely, continuous tokens retain visual details but need complex distribution modeling, complicating the generation. **This paper aims to resolve the dilemma.**



The paper introduces **TokenBridge**, a new method, maintaining the strong representation of continuous tokens while keeping the modeling simplicity of discrete tokens. This approach decouples discretization from tokenizer training through post-training quantization. A dimension-wise quantization independently discretizes each feature dimension, with an autoregressive prediction mechanism. TokenBridge matches continuous methods' quality while using standard categorical prediction.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} TokenBridge simplifies autoregressive visual generation by decoupling discretization from tokenizer training through post-training quantization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Dimension-wise quantization and prediction efficiently manage large token spaces, making high-quality generation computationally feasible. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The approach achieves visual quality comparable to continuous methods while maintaining the simplicity of discrete token modeling. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
TokenBridge presents a novel approach in visual generation, merging the strengths of discrete and continuous tokens. By simplifying autoregressive modeling, it offers researchers a more efficient path to high-quality visual synthesis. **This work can impact future studies, offering new methods for enhanced AI development.**

------
#### Visual Insights



![](https://arxiv.org/html/2503.16430/x1.png)

> 🔼 This figure compares three different approaches to autoregressive visual generation.  (a) shows the traditional method using discrete tokens, where quantization during training leads to instability and limits the model's ability to represent fine visual details. (b) illustrates a hybrid approach using continuous tokens, preserving detail but requiring complex distribution modeling like diffusion or Gaussian Mixture Models for prediction. (c) presents the proposed 'TokenBridge' method, which leverages pretrained continuous features and applies post-training quantization to achieve the simplicity of discrete tokens while retaining the representational power of continuous tokens, enabling straightforward autoregressive modeling.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of different autoregressive visual generation approaches. (a) Traditional discrete tokenization incorporate quantization during training, resulting in tokenizer training instability and limited vocabulary size that restricts representational capacity. (b) Hybrid continuous AR models preserve rich visual information but need complex distribution modeling (diffusion or GMM) beyond standard categorical prediction. (c) Our approach bridges these paradigms by applying post-training quantization to pretrained continuous features, maintaining the high representational capacity of continuous tokens while enabling simple autoregressive modeling.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.st1.3">
<tr class="ltx_tr" id="S4.T1.st1.3.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.st1.3.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.3.4.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.st1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="B" class="ltx_Math" display="inline" id="S4.T1.st1.1.1.1.m1.1"><semantics id="S4.T1.st1.1.1.1.m1.1a"><mi id="S4.T1.st1.1.1.1.m1.1.1" mathsize="90%" xref="S4.T1.st1.1.1.1.m1.1.1.cmml">B</mi><annotation-xml encoding="MathML-Content" id="S4.T1.st1.1.1.1.m1.1b"><ci id="S4.T1.st1.1.1.1.m1.1.1.cmml" xref="S4.T1.st1.1.1.1.m1.1.1">𝐵</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st1.1.1.1.m1.1c">B</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st1.1.1.1.m1.1d">italic_B</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T1.st1.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T1.st1.2.2.2.1" style="font-size:90%;">rFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.st1.2.2.2.m1.1"><semantics id="S4.T1.st1.2.2.2.m1.1a"><mo id="S4.T1.st1.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.st1.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st1.2.2.2.m1.1b"><ci id="S4.T1.st1.2.2.2.m1.1.1.cmml" xref="S4.T1.st1.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st1.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st1.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T1.st1.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T1.st1.3.3.3.1" style="font-size:90%;">IS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.st1.3.3.3.m1.1"><semantics id="S4.T1.st1.3.3.3.m1.1a"><mo id="S4.T1.st1.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.st1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st1.3.3.3.m1.1b"><ci id="S4.T1.st1.3.3.3.m1.1.1.cmml" xref="S4.T1.st1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st1.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.3.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st1.3.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.4.1.1" style="font-size:90%;">VAE</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st1.3.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.4.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.st1.3.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.4.3.1" style="font-size:90%;">1.11</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.st1.3.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.4.4.1" style="font-size:90%;">306.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.3.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st1.3.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.5.1.1" style="font-size:90%;">Ours</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st1.3.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.5.2.1" style="font-size:90%;">8</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.st1.3.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.5.3.1" style="font-size:90%;">3.69</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.st1.3.5.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.5.4.1" style="font-size:90%;">250.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.3.6">
<td class="ltx_td ltx_align_left" id="S4.T1.st1.3.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.6.1.1" style="font-size:90%;">Ours</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r" id="S4.T1.st1.3.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.6.2.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.st1.3.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.6.3.1" style="font-size:90%;">1.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.st1.3.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.6.4.1" style="font-size:90%;">296.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.3.7">
<td class="ltx_td ltx_align_left" id="S4.T1.st1.3.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.7.1.1" style="font-size:90%;">Ours</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r" id="S4.T1.st1.3.7.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.7.2.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.st1.3.7.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.7.3.1" style="font-size:90%;">1.12</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.st1.3.7.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.7.4.1" style="font-size:90%;">303.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.3.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.st1.3.8.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.8.1.1" style="font-size:90%;">Ours</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.st1.3.8.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.3.8.2.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.st1.3.8.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.3.8.3.1" style="font-size:90%;">1.11</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.st1.3.8.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.3.8.4.1" style="font-size:90%;">305.4</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents an ablation study on the impact of different quantization levels (B) on the reconstruction quality of the TokenBridge model.  The reconstruction quality is measured using the Fréchet Inception Distance (FID) and Inception Score (IS). The results show that as the quantization level increases, resulting in finer granularity, the reconstruction quality improves, reaching a level comparable to the continuous Variational Autoencoder (VAE) baseline when B=64.
> <details>
> <summary>read the caption</summary>
> (a) Different quantization levels. Finer quantization granularity improves performance, with B𝐵Bitalic_B=64 matching continuous VAE.
> </details>





### In-depth insights


#### TokenBridge Idea
The TokenBridge idea, as presented in this paper, is an innovative approach to bridging the gap between continuous and discrete token representations in autoregressive visual generation. The core concept involves **post-training quantization** of continuous tokens, which decouples discretization from the tokenizer training process. This is significant because it allows for retaining the representational power of continuous tokens while leveraging the modeling simplicity of discrete tokens. By quantizing pretrained features, TokenBridge avoids the optimization instabilities associated with training discrete tokenizers and offers a more controlled way to manage vocabulary size. This idea enables **standard autoregressive modeling** with cross-entropy loss to achieve comparable visual quality to continuous methods, representing a promising direction for high-quality visual generation. It effectively harnesses the strengths of both discrete and continuous paradigms.

#### Post-Quantization
Post-quantization is a pivotal stage for streamlining autoregressive visual generation. It **decouples discretization from the tokenizer training**, enabling efficient compression. This involves **transforming continuous representations into discrete tokens without retraining**, leveraging dimension-wise quantization for finer control. It **preserves visual fidelity** and reduces computational overhead. The strategy **circumvents the non-differentiability issues in quantization during training** while allowing for flexible vocabulary sizes. A lightweight autoregressive mechanism predicts tokens dimension-wise, **capturing inter-dependencies efficiently**. Post-quantization balances representation and modeling simplicity, enhancing overall performance.

#### Dimension-Wise AR
Dimension-wise autoregression presents an intriguing approach to handling high-dimensional data, especially in contexts like image or audio generation. The core idea is to **decompose a complex, joint prediction problem into a series of simpler, conditional predictions along each dimension** of the data. This approach offers several potential benefits. It mitigates the computational burden associated with directly modeling the entire high-dimensional space at once. Dimension-wise AR can be more statistically efficient, as it allows the model to **learn dependencies between dimensions sequentially**, potentially capturing intricate relationships that might be missed by methods treating all dimensions independently. This strategy implicitly introduces an **order of prediction**, and the choice of this order can significantly impact performance. Dimensions carrying more global or structural information might be prioritized to guide the generation process more effectively. While dimension-wise AR simplifies modeling, it's crucial to carefully design the conditional dependencies and prediction order to effectively capture the underlying data structure. 

#### Comparable Quality
When evaluating the "Comparable Quality" of a generative model, several factors come into play. It's important to consider both **objective metrics** (like FID and IS scores) and **subjective human evaluation**, as the former may not always fully capture perceptual quality. A model demonstrating "Comparable Quality" should achieve scores on par with existing state-of-the-art methods, indicating its ability to generate realistic and diverse outputs. It should **preserve fine details and avoid artifacts**, even when compared to continuous token approaches. Ideally, it should also strike a balance between computational cost and performance, offering comparable quality with increased efficiency or reduced complexity. Demonstrating similar or superior performance than other approaches while using a simpler training approach is also important.

#### Limitations
The paper acknowledges that the **performance of TokenBridge is inherently tied to the quality of the pre-trained VAE**, meaning any limitations in the VAE's representation capabilities will directly impact TokenBridge's reconstruction and generation fidelity. While the authors emphasize the simplicity and efficiency gains from using cross-entropy loss, they do not thoroughly address potential issues stemming from this choice. Furthermore, the paper admits potential for **biases inherited from the training data** and misuse for creating misleading content, highlighting the need for careful deployment and mitigation strategies.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16430/x2.png)

> 🔼 Figure 2 showcases images generated by the TokenBridge model.  The images are 256x256 pixels and demonstrate the model's ability to generate high-quality, detailed images across a wide range of categories within the ImageNet dataset. These categories include animals, various types of food, different objects, and a variety of scenes. The figure highlights the model's capacity for generating diverse and visually rich outputs.
> <details>
> <summary>read the caption</summary>
> Figure 2: Generated samples from TokenBridge. Class-conditional generation results on ImageNet [6] 256×256 demonstrating fine details and textures across diverse categories including animals, food, objects, and scenes.
> </details>



![](https://arxiv.org/html/2503.16430/x3.png)

> 🔼 Figure 3 illustrates the TokenBridge's post-training quantization method.  The top panel shows a pretrained continuous Variational Autoencoder (VAE) tokenizer converting an input image into continuous latent features (a tensor with dimensions H x W x C). The VAE's decoder then reconstructs the image from these features. The middle panel details the post-training quantization step, where each channel dimension of the continuous features is independently discretized into discrete tokens. The bottom-left panel compares the original Gaussian-like distribution of the continuous features with its discretized counterpart (histogram), showing how the method preserves the original distribution's shape. Finally, the right panel explains the dequantization process, where the discrete tokens are mapped back to continuous values to allow for decoding using the pretrained VAE decoder.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of our post-training quantization process. The top row shows the pretrained continuous VAE tokenizer, mapping an input image to continuous latent features 𝑿∈ℝH×W×C𝑿superscriptℝ𝐻𝑊𝐶{\bm{X}}\in\mathbb{R}^{H\times W\times C}bold_italic_X ∈ blackboard_R start_POSTSUPERSCRIPT italic_H × italic_W × italic_C end_POSTSUPERSCRIPT and reconstructing it through the decoder. Our post-training quantization process (middle) transforms these continuous features into discrete tokens by independently quantizing each channel dimension. The bottom-left shows how our approach preserves the original Gaussian-like distribution (purple curve) in discretized form (purple histogram). The right portion demonstrates the de-quantization process that maps indices back to continuous values for decoding.
> </details>



![](https://arxiv.org/html/2503.16430/x4.png)

> 🔼 This figure illustrates the autoregressive generation process used in the TokenBridge model.  The model generates image tokens sequentially, both spatially (across the image) and within each spatial location (dimension-wise). Spatially, the model predicts tokens one at a time, conditioning each prediction on previously generated tokens. Within each spatial location (shown in pink), the model uses a dimension-wise approach: it predicts individual channel values sequentially, thereby efficiently managing the exponentially large token space resulting from post-training quantization. This decomposition into smaller classification problems preserves important relationships between channels while making the model computationally feasible.
> <details>
> <summary>read the caption</summary>
> Figure 4: Our autoregressive generation process. At the spatial level, our model autoregressively generates tokens conditioning on previous positions. For each spatial location (highlighted in pink), we apply dimension-wise sequential prediction to efficiently handle the large token space. This approach decomposes the modeling of each token into a series of smaller classification problems while preserving essential inter-dimensional dependencies.
> </details>



![](https://arxiv.org/html/2503.16430/x5.png)

> 🔼 Figure 5 presents a comparison of reconstruction quality between continuous and discrete image tokenization methods.  It shows the results of reconstructing images using three different approaches: a continuous Variational Autoencoder (VAE), Vector Quantization (VQ) from [35] as a representative discrete method, and a Learned Fixed-Point Quantization (LFQ) method from [19]. A comparison with the results from the authors' method (TokenBridge) is also included. The images visually demonstrate that TokenBridge achieves reconstruction quality comparable to the continuous VAE, but preserves significantly more fine details than the traditional VQ and LFQ discrete methods. The improvement is particularly visible in areas with fine textural details such as text and facial features.
> <details>
> <summary>read the caption</summary>
> Figure 5: Reconstruction quality of typical continuous and discrete tokenizers. For discrete baselines, we use VQ from  [35], and LFQ from  [19]. Our method achieves reconstruction quality comparable to continuous VAE, preserving more fine details than traditional discrete tokenizers, especially in text and facial features. Zoom in for better comparison.
> </details>



![](https://arxiv.org/html/2503.16430/x6.png)

> 🔼 This figure visually compares the reconstruction quality achieved by TokenBridge at different quantization levels (B).  It presents a series of images reconstructed from the same original images, each reconstruction using a successively lower quantization granularity.  The purpose is to demonstrate how the model's ability to recover fine details is affected as the quantization level decreases, and to show that even with a relatively coarse quantization, the model maintains good reconstruction quality.  Zooming in on the images is recommended for a better evaluation of the subtle differences in detail preservation.
> <details>
> <summary>read the caption</summary>
> Figure 6: Reconstruction quality of different quantization granularities B. Visual comparison showing reconstructions at decreasing quantization levels. Zoom in for better comparison.
> </details>



![](https://arxiv.org/html/2503.16430/x7.png)

> 🔼 This figure compares two methods for predicting image tokens: parallel prediction and the autoregressive approach. The parallel prediction method predicts all token dimensions independently, leading to blurry and inconsistent image generation.  In contrast, the autoregressive approach presented in the paper sequentially predicts each token dimension, conditioning on previously predicted dimensions.  This sequential process generates much more coherent and high-quality images. The figure highlights that token dimensions are highly interdependent and cannot be accurately predicted in isolation.
> <details>
> <summary>read the caption</summary>
> Figure 7: Token Prediction Strategy. Comparison of dimension-wise token prediction approaches. Top: Parallel prediction produces blurry, inconsistent images. Bottom: Our autoregressive approach sequentially predicts token dimensions, generating coherent, high-quality images. This highlights the interdependence of token dimensions and they cannot be predicted independently.
> </details>



![](https://arxiv.org/html/2503.16430/x8.png)

> 🔼 This figure demonstrates the advantage of using discrete tokens over continuous tokens in autoregressive image generation.  By leveraging confidence scores associated with each discrete token, the model can prioritize high-confidence tokens, resulting in cleaner foreground objects against simpler backgrounds. This selective generation capability is not available with continuous tokens, which lack explicit confidence scores.  The images showcase the difference in generation quality: using confidence scores leads to more focused images with clear subject matter and less noise in the background, while continuous token approaches cannot offer this level of control.
> <details>
> <summary>read the caption</summary>
> Figure 8: Generation guided by token confidence. Our discrete token approach enables confidence-guided generation, producing clean foreground objects against simple backgrounds by prioritizing high-confidence tokens. This provides a advantage over continuous tokens, which lack explicit token-level confidence scores.
> </details>



![](https://arxiv.org/html/2503.16430/x9.png)

> 🔼 This figure showcases a diverse set of images generated by the TokenBridge model. The images represent various categories from the ImageNet dataset, demonstrating the model's ability to generate high-quality, detailed images across a wide range of visual concepts and styles.
> <details>
> <summary>read the caption</summary>
> Figure 9: Additional image generation results of TokenBridge across different ImageNet [6] categories.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.st2.6">
<tr class="ltx_tr" id="S4.T1.st2.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.st2.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.3.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.st2.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.4.1" style="font-size:90%;">Range</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T1.st2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T1.st2.1.1.1.1" style="font-size:90%;">rFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.st2.1.1.1.m1.1"><semantics id="S4.T1.st2.1.1.1.m1.1a"><mo id="S4.T1.st2.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.st2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st2.1.1.1.m1.1b"><ci id="S4.T1.st2.1.1.1.m1.1.1.cmml" xref="S4.T1.st2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st2.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T1.st2.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T1.st2.2.2.2.1" style="font-size:90%;">IS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.st2.2.2.2.m1.1"><semantics id="S4.T1.st2.2.2.2.m1.1a"><mo id="S4.T1.st2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.st2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st2.2.2.2.m1.1b"><ci id="S4.T1.st2.2.2.2.m1.1.1.cmml" xref="S4.T1.st2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.6.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st2.6.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.6.7.1.1" style="font-size:90%;">VAE</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st2.6.7.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.6.7.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.st2.6.7.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.6.7.3.1" style="font-size:90%;">1.11</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.st2.6.7.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.6.7.4.1" style="font-size:90%;">306.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st2.3.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.3.3.2.1" style="font-size:90%;">Ours</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st2.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="\pm{2}" class="ltx_Math" display="inline" id="S4.T1.st2.3.3.1.m1.1"><semantics id="S4.T1.st2.3.3.1.m1.1a"><mrow id="S4.T1.st2.3.3.1.m1.1.1" xref="S4.T1.st2.3.3.1.m1.1.1.cmml"><mo id="S4.T1.st2.3.3.1.m1.1.1a" mathsize="90%" xref="S4.T1.st2.3.3.1.m1.1.1.cmml">±</mo><mn id="S4.T1.st2.3.3.1.m1.1.1.2" mathsize="90%" xref="S4.T1.st2.3.3.1.m1.1.1.2.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.st2.3.3.1.m1.1b"><apply id="S4.T1.st2.3.3.1.m1.1.1.cmml" xref="S4.T1.st2.3.3.1.m1.1.1"><csymbol cd="latexml" id="S4.T1.st2.3.3.1.m1.1.1.1.cmml" xref="S4.T1.st2.3.3.1.m1.1.1">plus-or-minus</csymbol><cn id="S4.T1.st2.3.3.1.m1.1.1.2.cmml" type="integer" xref="S4.T1.st2.3.3.1.m1.1.1.2">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st2.3.3.1.m1.1c">\pm{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st2.3.3.1.m1.1d">± 2</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.st2.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.3.3.3.1" style="font-size:90%;">2.26</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.st2.3.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.3.3.4.1" style="font-size:90%;">267.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.4.4">
<td class="ltx_td ltx_align_left" id="S4.T1.st2.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.4.2.1" style="font-size:90%;">Ours</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r" id="S4.T1.st2.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="\pm{3}" class="ltx_Math" display="inline" id="S4.T1.st2.4.4.1.m1.1"><semantics id="S4.T1.st2.4.4.1.m1.1a"><mrow id="S4.T1.st2.4.4.1.m1.1.1" xref="S4.T1.st2.4.4.1.m1.1.1.cmml"><mo id="S4.T1.st2.4.4.1.m1.1.1a" mathsize="90%" xref="S4.T1.st2.4.4.1.m1.1.1.cmml">±</mo><mn id="S4.T1.st2.4.4.1.m1.1.1.2" mathsize="90%" xref="S4.T1.st2.4.4.1.m1.1.1.2.cmml">3</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.st2.4.4.1.m1.1b"><apply id="S4.T1.st2.4.4.1.m1.1.1.cmml" xref="S4.T1.st2.4.4.1.m1.1.1"><csymbol cd="latexml" id="S4.T1.st2.4.4.1.m1.1.1.1.cmml" xref="S4.T1.st2.4.4.1.m1.1.1">plus-or-minus</csymbol><cn id="S4.T1.st2.4.4.1.m1.1.1.2.cmml" type="integer" xref="S4.T1.st2.4.4.1.m1.1.1.2">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st2.4.4.1.m1.1c">\pm{3}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st2.4.4.1.m1.1d">± 3</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.st2.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.4.3.1" style="font-size:90%;">1.22</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.st2.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.4.4.1" style="font-size:90%;">299.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.5.5">
<td class="ltx_td ltx_align_left" id="S4.T1.st2.5.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.5.5.2.1" style="font-size:90%;">Ours</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r" id="S4.T1.st2.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="\pm{4}" class="ltx_Math" display="inline" id="S4.T1.st2.5.5.1.m1.1"><semantics id="S4.T1.st2.5.5.1.m1.1a"><mrow id="S4.T1.st2.5.5.1.m1.1.1" xref="S4.T1.st2.5.5.1.m1.1.1.cmml"><mo id="S4.T1.st2.5.5.1.m1.1.1a" mathsize="90%" xref="S4.T1.st2.5.5.1.m1.1.1.cmml">±</mo><mn id="S4.T1.st2.5.5.1.m1.1.1.2" mathsize="90%" xref="S4.T1.st2.5.5.1.m1.1.1.2.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.st2.5.5.1.m1.1b"><apply id="S4.T1.st2.5.5.1.m1.1.1.cmml" xref="S4.T1.st2.5.5.1.m1.1.1"><csymbol cd="latexml" id="S4.T1.st2.5.5.1.m1.1.1.1.cmml" xref="S4.T1.st2.5.5.1.m1.1.1">plus-or-minus</csymbol><cn id="S4.T1.st2.5.5.1.m1.1.1.2.cmml" type="integer" xref="S4.T1.st2.5.5.1.m1.1.1.2">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st2.5.5.1.m1.1c">\pm{4}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st2.5.5.1.m1.1d">± 4</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.st2.5.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.5.5.3.1" style="font-size:90%;">1.13</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.st2.5.5.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.5.5.4.1" style="font-size:90%;">305.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.6.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.st2.6.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.6.6.2.1" style="font-size:90%;">Ours</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.st2.6.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="\pm{5}" class="ltx_Math" display="inline" id="S4.T1.st2.6.6.1.m1.1"><semantics id="S4.T1.st2.6.6.1.m1.1a"><mrow id="S4.T1.st2.6.6.1.m1.1.1" xref="S4.T1.st2.6.6.1.m1.1.1.cmml"><mo id="S4.T1.st2.6.6.1.m1.1.1a" mathsize="90%" xref="S4.T1.st2.6.6.1.m1.1.1.cmml">±</mo><mn id="S4.T1.st2.6.6.1.m1.1.1.2" mathsize="90%" xref="S4.T1.st2.6.6.1.m1.1.1.2.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.st2.6.6.1.m1.1b"><apply id="S4.T1.st2.6.6.1.m1.1.1.cmml" xref="S4.T1.st2.6.6.1.m1.1.1"><csymbol cd="latexml" id="S4.T1.st2.6.6.1.m1.1.1.1.cmml" xref="S4.T1.st2.6.6.1.m1.1.1">plus-or-minus</csymbol><cn id="S4.T1.st2.6.6.1.m1.1.1.2.cmml" type="integer" xref="S4.T1.st2.6.6.1.m1.1.1.2">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st2.6.6.1.m1.1c">\pm{5}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st2.6.6.1.m1.1d">± 5</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.st2.6.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.6.6.3.1" style="font-size:90%;">1.11</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.st2.6.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.6.6.4.1" style="font-size:90%;">305.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results on the impact of different quantization ranges on reconstruction quality.  The experiment varied the range of values used for the post-training quantization of the continuous latent features from a VAE. The reconstruction quality is measured by FID, and the goal was to find a range that yields results comparable to a continuous VAE which does not require quantization. The results show that a quantization range of ±5 standard deviations achieves comparable reconstruction quality to the continuous VAE model, indicating the effectiveness of this quantization range.
> <details>
> <summary>read the caption</summary>
> (b) Different quantization ranges. Feature range ±5plus-or-minus5\pm 5± 5 achieves reconstruction quality matching continuous VAE.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.st1.2">
<tr class="ltx_tr" id="S4.T2.st1.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.st1.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st1.2.2.3.1" style="font-size:90%;">Prediction</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T2.st1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.st1.1.1.1.1" style="font-size:90%;">gFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.st1.1.1.1.m1.1"><semantics id="S4.T2.st1.1.1.1.m1.1a"><mo id="S4.T2.st1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.st1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st1.1.1.1.m1.1b"><ci id="S4.T2.st1.1.1.1.m1.1.1.cmml" xref="S4.T2.st1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T2.st1.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.st1.2.2.2.1" style="font-size:90%;">IS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.st1.2.2.2.m1.1"><semantics id="S4.T2.st1.2.2.2.m1.1a"><mo id="S4.T2.st1.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.st1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st1.2.2.2.m1.1b"><ci id="S4.T2.st1.2.2.2.m1.1.1.cmml" xref="S4.T2.st1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st1.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st1.2.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.st1.2.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st1.2.3.1.1" style="font-size:90%;">Parallel</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.st1.2.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st1.2.3.2.1" style="font-size:90%;">15.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.st1.2.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st1.2.3.3.1" style="font-size:90%;">158.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.st1.2.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.st1.2.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st1.2.4.1.1" style="font-size:90%;">Autoregressive</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.st1.2.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.2.4.2.1" style="font-size:90%;">1.94</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.st1.2.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.2.4.3.1" style="font-size:90%;">306.1</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results on the post-training quantization method used in TokenBridge. It shows how different quantization levels and ranges impact the reconstruction quality, measured by FID (Fréchet Inception Distance) and IS (Inception Score).  The results demonstrate the effectiveness of the proposed dimension-wise quantization strategy and its ability to achieve high reconstruction quality comparable to continuous VAEs (Variational Autoencoders) with carefully selected hyperparameters.
> <details>
> <summary>read the caption</summary>
> Table 1: Ablations on post-training quantization.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.st2.2">
<tr class="ltx_tr" id="S4.T2.st2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.st2.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st2.2.2.3.1" style="font-size:90%;">Order</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T2.st2.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.st2.1.1.1.1" style="font-size:90%;">gFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.st2.1.1.1.m1.1"><semantics id="S4.T2.st2.1.1.1.m1.1a"><mo id="S4.T2.st2.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.st2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st2.1.1.1.m1.1b"><ci id="S4.T2.st2.1.1.1.m1.1.1.cmml" xref="S4.T2.st2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st2.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T2.st2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.st2.2.2.2.1" style="font-size:90%;">IS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.st2.2.2.2.m1.1"><semantics id="S4.T2.st2.2.2.2.m1.1a"><mo id="S4.T2.st2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.st2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st2.2.2.2.m1.1b"><ci id="S4.T2.st2.2.2.2.m1.1.1.cmml" xref="S4.T2.st2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.2.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.st2.2.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st2.2.3.1.1" style="font-size:90%;">Normal</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.st2.2.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st2.2.3.2.1" style="font-size:90%;">1.94</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.st2.2.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st2.2.3.3.1" style="font-size:90%;">306.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.2.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.st2.2.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st2.2.4.1.1" style="font-size:90%;">Frequency</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.st2.2.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.2.4.2.1" style="font-size:90%;">1.89</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.st2.2.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.2.4.3.1" style="font-size:90%;">307.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares different prediction strategies for autoregressive visual generation. The parallel prediction approach, which independently predicts each dimension of the image token, fails to capture crucial inter-dimensional relationships, leading to lower-quality generation. In contrast, the autoregressive approach, which sequentially predicts each dimension conditioned on the preceding ones, effectively models these dependencies, significantly improving image quality.
> <details>
> <summary>read the caption</summary>
> (a) Prediction strategy. Parallel prediction fails to model inter-dimensional dependencies critical for quality.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.st3.2">
<tr class="ltx_tr" id="S4.T2.st3.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.st3.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st3.2.2.3.1" style="font-size:90%;">B</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T2.st3.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.st3.1.1.1.1" style="font-size:90%;">gFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.st3.1.1.1.m1.1"><semantics id="S4.T2.st3.1.1.1.m1.1a"><mo id="S4.T2.st3.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.st3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st3.1.1.1.m1.1b"><ci id="S4.T2.st3.1.1.1.m1.1.1.cmml" xref="S4.T2.st3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st3.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T2.st3.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.st3.2.2.2.1" style="font-size:90%;">IS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.st3.2.2.2.m1.1"><semantics id="S4.T2.st3.2.2.2.m1.1a"><mo id="S4.T2.st3.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.st3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st3.2.2.2.m1.1b"><ci id="S4.T2.st3.2.2.2.m1.1.1.cmml" xref="S4.T2.st3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st3.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st3.2.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.st3.2.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st3.2.3.1.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.st3.2.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st3.2.3.2.1" style="font-size:90%;">2.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.st3.2.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st3.2.3.3.1" style="font-size:90%;">295.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.st3.2.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.st3.2.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st3.2.4.1.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.st3.2.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st3.2.4.2.1" style="font-size:90%;">1.98</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.st3.2.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st3.2.4.3.1" style="font-size:90%;">298.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.st3.2.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.st3.2.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st3.2.5.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.st3.2.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st3.2.5.2.1" style="font-size:90%;">1.94</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.st3.2.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st3.2.5.3.1" style="font-size:90%;">306.1</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results on the impact of dimension ordering during image generation.  Specifically, it compares generation quality (measured by FID and IS scores) when dimensions are processed sequentially in their default order versus an order based on frequency.  The frequency-based ordering prioritizes dimensions containing more low-frequency information (structural elements) before processing those with high-frequency details (textures). This strategy aims to improve the generation process by constructing a solid base before adding fine-grained details.
> <details>
> <summary>read the caption</summary>
> (b) Dimension ordering. Frequency based ordering prioritizes structural information before details.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.st4.2">
<tr class="ltx_tr" id="S4.T2.st4.2.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.st4.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st4.2.2.3.1" style="font-size:90%;">#ch/g</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T2.st4.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st4.2.2.4.1" style="font-size:90%;">Classes</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.st4.2.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st4.2.2.5.1" style="font-size:90%;">#params</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T2.st4.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.st4.1.1.1.1" style="font-size:90%;">gFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.st4.1.1.1.m1.1"><semantics id="S4.T2.st4.1.1.1.m1.1a"><mo id="S4.T2.st4.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.st4.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st4.1.1.1.m1.1b"><ci id="S4.T2.st4.1.1.1.m1.1.1.cmml" xref="S4.T2.st4.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st4.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st4.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T2.st4.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.st4.2.2.2.1" style="font-size:90%;">IS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.st4.2.2.2.m1.1"><semantics id="S4.T2.st4.2.2.2.m1.1a"><mo id="S4.T2.st4.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.st4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st4.2.2.2.m1.1b"><ci id="S4.T2.st4.2.2.2.m1.1.1.cmml" xref="S4.T2.st4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st4.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st4.2.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st4.2.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st4.2.3.1.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.st4.2.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st4.2.3.2.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.st4.2.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st4.2.3.3.1" style="font-size:90%;">60M</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.st4.2.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st4.2.3.4.1" style="font-size:90%;">2.28</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.st4.2.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st4.2.3.5.1" style="font-size:90%;">289.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.st4.2.4">
<td class="ltx_td ltx_align_center" id="S4.T2.st4.2.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st4.2.4.1.1" style="font-size:90%;">2</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.st4.2.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st4.2.4.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r" id="S4.T2.st4.2.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st4.2.4.3.1" style="font-size:90%;">63M</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.st4.2.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st4.2.4.4.1" style="font-size:90%;">2.45</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.st4.2.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st4.2.4.5.1" style="font-size:90%;">291.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.st4.2.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.st4.2.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st4.2.5.1.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.st4.2.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st4.2.5.2.1" style="font-size:90%;">65K</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.st4.2.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st4.2.5.3.1" style="font-size:90%;">530M</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.st4.2.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st4.2.5.4.1" style="font-size:90%;">3.24</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.st4.2.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st4.2.5.5.1" style="font-size:90%;">282.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table shows the impact of different quantization levels on the quality of image generation.  The number of quantization levels (or granularity) directly affects the autoregressive model's ability to capture fine details in the images it generates.  As the number of quantization levels increases, the model's capacity to represent nuanced visual information improves, leading to better generation quality.  This is evident through the decrease in FID (Fréchet Inception Distance) scores, which indicate better image fidelity, and the increase in IS (Inception Score) scores, which shows higher image quality and diversity. This experiment highlights the importance of fine-grained quantization for achieving high-quality generation results with the proposed method.
> <details>
> <summary>read the caption</summary>
> (c) Quantization levels. Higher granularity consistently improves generation quality.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.st5.2">
<tr class="ltx_tr" id="S4.T2.st5.2.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.st5.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.2.3.1" style="font-size:90%;">Dim</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T2.st5.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.2.4.1" style="font-size:90%;">Depth</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.st5.2.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.2.5.1" style="font-size:90%;">#params</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T2.st5.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.st5.1.1.1.1" style="font-size:90%;">gFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.st5.1.1.1.m1.1"><semantics id="S4.T2.st5.1.1.1.m1.1a"><mo id="S4.T2.st5.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.st5.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st5.1.1.1.m1.1b"><ci id="S4.T2.st5.1.1.1.m1.1.1.cmml" xref="S4.T2.st5.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st5.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st5.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T2.st5.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.st5.2.2.2.1" style="font-size:90%;">IS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.st5.2.2.2.m1.1"><semantics id="S4.T2.st5.2.2.2.m1.1a"><mo id="S4.T2.st5.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.st5.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st5.2.2.2.m1.1b"><ci id="S4.T2.st5.2.2.2.m1.1.1.cmml" xref="S4.T2.st5.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st5.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st5.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st5.2.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st5.2.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.3.1.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.st5.2.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.3.2.1" style="font-size:90%;">3</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.st5.2.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.3.3.1" style="font-size:90%;">3M</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.st5.2.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.3.4.1" style="font-size:90%;">2.88</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.st5.2.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.3.5.1" style="font-size:90%;">277.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.st5.2.4">
<td class="ltx_td ltx_align_center" id="S4.T2.st5.2.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.4.1.1" style="font-size:90%;">512</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.st5.2.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.4.2.1" style="font-size:90%;">3</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r" id="S4.T2.st5.2.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.4.3.1" style="font-size:90%;">10M</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.st5.2.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.4.4.1" style="font-size:90%;">2.72</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.st5.2.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.4.5.1" style="font-size:90%;">284.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.st5.2.5">
<td class="ltx_td ltx_align_center" id="S4.T2.st5.2.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.5.1.1" style="font-size:90%;">512</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.st5.2.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.5.2.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r" id="S4.T2.st5.2.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.5.3.1" style="font-size:90%;">13M</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.st5.2.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.5.4.1" style="font-size:90%;">2.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.st5.2.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.5.5.1" style="font-size:90%;">295.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.st5.2.6">
<td class="ltx_td ltx_align_center" id="S4.T2.st5.2.6.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.6.1.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.st5.2.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.6.2.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r" id="S4.T2.st5.2.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.6.3.1" style="font-size:90%;">65M</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.st5.2.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.6.4.1" style="font-size:90%;">2.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.st5.2.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.6.5.1" style="font-size:90%;">305.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.st5.2.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.st5.2.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.7.1.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.st5.2.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.7.2.1" style="font-size:90%;">6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.st5.2.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.st5.2.7.3.1" style="font-size:90%;">94M</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.st5.2.7.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st5.2.7.4.1" style="font-size:90%;">1.94</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.st5.2.7.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st5.2.7.5.1" style="font-size:90%;">306.1</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table investigates the impact of grouping multiple channels together for joint classification within the autoregressive model.  It explores the trade-off between increasing model complexity (number of parameters) and the effect on generation quality (measured by FID and IS scores).  The results show that while increasing the number of channels per group increases the model's parameter count, it negatively impacts generation quality, indicating that independent, dimension-wise classification is more effective.
> <details>
> <summary>read the caption</summary>
> (d) Channel grouping. Joint classification of multiple channels (#ch/g denotes channels per group) increases parameters yet degrades quality.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.4">
<tr class="ltx_tr" id="S4.T3.4.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.4.4.5"><span class="ltx_text" id="S4.T3.4.4.5.1" style="font-size:90%;">Token</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.4.4.6"><span class="ltx_text" id="S4.T3.4.4.6.1" style="font-size:90%;">Tokenizer</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.4.4.7"><span class="ltx_text" id="S4.T3.4.4.7.1" style="font-size:90%;">Type</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.4.4.8"><span class="ltx_text" id="S4.T3.4.4.8.1" style="font-size:90%;">Loss</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.4.4.9"><span class="ltx_text" id="S4.T3.4.4.9.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.4.10"><span class="ltx_text" id="S4.T3.4.4.10.1" style="font-size:90%;">#params</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1">
<span class="ltx_text" id="S4.T3.1.1.1.1" style="font-size:90%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.2">
<span class="ltx_text" id="S4.T3.2.2.2.1" style="font-size:90%;">IS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.3">
<span class="ltx_text" id="S4.T3.3.3.3.1" style="font-size:90%;">Pre.</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.4.4">
<span class="ltx_text" id="S4.T3.4.4.4.1" style="font-size:90%;">Rec.</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.5.1" rowspan="8"><span class="ltx_text" id="S4.T3.4.5.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_align_left" id="S4.T3.4.5.1.1.1">
<span class="ltx_p" id="S4.T3.4.5.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.4.5.1.1.1.1.1">training-quantized</span></span>
<span class="ltx_p" id="S4.T3.4.5.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T3.4.5.1.1.1.2.1">discrete tokens</span></span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.5.2"><span class="ltx_text" id="S4.T3.4.5.2.1" style="font-size:90%;">VQ</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.5.3"><span class="ltx_text" id="S4.T3.4.5.3.1" style="font-size:90%;">Mask.</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.5.4"><span class="ltx_text" id="S4.T3.4.5.4.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.5.5">
<span class="ltx_text" id="S4.T3.4.5.5.1" style="font-size:90%;">MaskGIT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.5.5.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S4.T3.4.5.5.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.6"><span class="ltx_text" id="S4.T3.4.5.6.1" style="font-size:90%;">177M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.7"><span class="ltx_text" id="S4.T3.4.5.7.1" style="font-size:90%;">6.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.8"><span class="ltx_text" id="S4.T3.4.5.8.1" style="font-size:90%;">182.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.9"><span class="ltx_text" id="S4.T3.4.5.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.10"><span class="ltx_text" id="S4.T3.4.5.10.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.6">
<td class="ltx_td ltx_align_left" id="S4.T3.4.6.1"><span class="ltx_text" id="S4.T3.4.6.1.1" style="font-size:90%;">VQ</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.6.2"><span class="ltx_text" id="S4.T3.4.6.2.1" style="font-size:90%;">AR</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.6.3"><span class="ltx_text" id="S4.T3.4.6.3.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.6.4">
<span class="ltx_text" id="S4.T3.4.6.4.1" style="font-size:90%;">RQTran </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.6.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a><span class="ltx_text" id="S4.T3.4.6.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.5"><span class="ltx_text" id="S4.T3.4.6.5.1" style="font-size:90%;">3.8B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.6"><span class="ltx_text" id="S4.T3.4.6.6.1" style="font-size:90%;">7.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.7"><span class="ltx_text" id="S4.T3.4.6.7.1" style="font-size:90%;">134.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.8"><span class="ltx_text" id="S4.T3.4.6.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.9"><span class="ltx_text" id="S4.T3.4.6.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.7">
<td class="ltx_td ltx_align_left" id="S4.T3.4.7.1"><span class="ltx_text" id="S4.T3.4.7.1.1" style="font-size:90%;">VQ</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.7.2"><span class="ltx_text" id="S4.T3.4.7.2.1" style="font-size:90%;">AR</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.7.3"><span class="ltx_text" id="S4.T3.4.7.3.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.7.4">
<span class="ltx_text" id="S4.T3.4.7.4.1" style="font-size:90%;">ViT-VQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.7.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a><span class="ltx_text" id="S4.T3.4.7.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.5"><span class="ltx_text" id="S4.T3.4.7.5.1" style="font-size:90%;">1.7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.6"><span class="ltx_text" id="S4.T3.4.7.6.1" style="font-size:90%;">4.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.7"><span class="ltx_text" id="S4.T3.4.7.7.1" style="font-size:90%;">175.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.8"><span class="ltx_text" id="S4.T3.4.7.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.9"><span class="ltx_text" id="S4.T3.4.7.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.8">
<td class="ltx_td ltx_align_left" id="S4.T3.4.8.1"><span class="ltx_text" id="S4.T3.4.8.1.1" style="font-size:90%;">VQ</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.8.2"><span class="ltx_text" id="S4.T3.4.8.2.1" style="font-size:90%;">Mask.</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.8.3"><span class="ltx_text" id="S4.T3.4.8.3.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.8.4">
<span class="ltx_text" id="S4.T3.4.8.4.1" style="font-size:90%;">TiTok-128 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.8.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a><span class="ltx_text" id="S4.T3.4.8.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.5"><span class="ltx_text" id="S4.T3.4.8.5.1" style="font-size:90%;">287M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.6"><span class="ltx_text" id="S4.T3.4.8.6.1" style="font-size:90%;">1.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.7"><span class="ltx_text" id="S4.T3.4.8.7.1" style="font-size:90%;">281.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.8"><span class="ltx_text" id="S4.T3.4.8.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.9"><span class="ltx_text" id="S4.T3.4.8.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.9">
<td class="ltx_td ltx_align_left" id="S4.T3.4.9.1"><span class="ltx_text" id="S4.T3.4.9.1.1" style="font-size:90%;">LFQ</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.9.2"><span class="ltx_text" id="S4.T3.4.9.2.1" style="font-size:90%;">AR</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.9.3"><span class="ltx_text" id="S4.T3.4.9.3.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.9.4">
<span class="ltx_text" id="S4.T3.4.9.4.1" style="font-size:90%;">MAGVIT-v2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.9.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S4.T3.4.9.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.9.5"><span class="ltx_text" id="S4.T3.4.9.5.1" style="font-size:90%;">307M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.9.6"><span class="ltx_text" id="S4.T3.4.9.6.1" style="font-size:90%;">1.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.9.7"><span class="ltx_text" id="S4.T3.4.9.7.1" style="font-size:90%;">319.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.9.8"><span class="ltx_text" id="S4.T3.4.9.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.9.9"><span class="ltx_text" id="S4.T3.4.9.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.10">
<td class="ltx_td ltx_align_left" id="S4.T3.4.10.1"><span class="ltx_text" id="S4.T3.4.10.1.1" style="font-size:90%;">LFQ</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.10.2"><span class="ltx_text" id="S4.T3.4.10.2.1" style="font-size:90%;">AR</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.10.3"><span class="ltx_text" id="S4.T3.4.10.3.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.10.4">
<span class="ltx_text" id="S4.T3.4.10.4.1" style="font-size:90%;">Open-MAGVIT2-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.10.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S4.T3.4.10.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.5"><span class="ltx_text" id="S4.T3.4.10.5.1" style="font-size:90%;">804M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.6"><span class="ltx_text" id="S4.T3.4.10.6.1" style="font-size:90%;">2.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.7"><span class="ltx_text" id="S4.T3.4.10.7.1" style="font-size:90%;">271.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.8"><span class="ltx_text" id="S4.T3.4.10.8.1" style="font-size:90%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.9"><span class="ltx_text" id="S4.T3.4.10.9.1" style="font-size:90%;">0.54</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.11">
<td class="ltx_td ltx_align_left" id="S4.T3.4.11.1"><span class="ltx_text" id="S4.T3.4.11.1.1" style="font-size:90%;">VQ</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.11.2"><span class="ltx_text" id="S4.T3.4.11.2.1" style="font-size:90%;">AR</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.11.3"><span class="ltx_text" id="S4.T3.4.11.3.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.11.4">
<span class="ltx_text" id="S4.T3.4.11.4.1" style="font-size:90%;">LlamaGen </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.11.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S4.T3.4.11.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.11.5"><span class="ltx_text" id="S4.T3.4.11.5.1" style="font-size:90%;">3.1B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.11.6"><span class="ltx_text" id="S4.T3.4.11.6.1" style="font-size:90%;">2.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.11.7"><span class="ltx_text" id="S4.T3.4.11.7.1" style="font-size:90%;">263.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.11.8"><span class="ltx_text" id="S4.T3.4.11.8.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.11.9"><span class="ltx_text" id="S4.T3.4.11.9.1" style="font-size:90%;">0.58</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.12">
<td class="ltx_td ltx_align_left" id="S4.T3.4.12.1"><span class="ltx_text" id="S4.T3.4.12.1.1" style="font-size:90%;">VQ</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.12.2"><span class="ltx_text" id="S4.T3.4.12.2.1" style="font-size:90%;">AR</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.12.3"><span class="ltx_text" id="S4.T3.4.12.3.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.12.4">
<span class="ltx_text" id="S4.T3.4.12.4.1" style="font-size:90%;">VAR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.12.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S4.T3.4.12.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.12.5"><span class="ltx_text" id="S4.T3.4.12.5.1" style="font-size:90%;">2.0B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.12.6"><span class="ltx_text" id="S4.T3.4.12.6.1" style="font-size:90%;">1.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.12.7"><span class="ltx_text" id="S4.T3.4.12.7.1" style="font-size:90%;">350.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.12.8"><span class="ltx_text" id="S4.T3.4.12.8.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.12.9"><span class="ltx_text" id="S4.T3.4.12.9.1" style="font-size:90%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.13.1" rowspan="8"><span class="ltx_text" id="S4.T3.4.13.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_align_left" id="S4.T3.4.13.1.1.1">
<span class="ltx_p" id="S4.T3.4.13.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.4.13.1.1.1.1.1">continuous-valued</span></span>
<span class="ltx_p" id="S4.T3.4.13.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T3.4.13.1.1.1.2.1">tokens</span></span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.13.2"><span class="ltx_text" id="S4.T3.4.13.2.1" style="font-size:90%;">VAE</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.13.3"><span class="ltx_text" id="S4.T3.4.13.3.1" style="font-size:90%;">Diff.</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.13.4"><span class="ltx_text" id="S4.T3.4.13.4.1" style="font-size:90%;">Diff.</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.13.5">
<span class="ltx_text" id="S4.T3.4.13.5.1" style="font-size:90%;">LDM-4 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.13.5.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="S4.T3.4.13.5.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.13.6"><span class="ltx_text" id="S4.T3.4.13.6.1" style="font-size:90%;">400M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.13.7"><span class="ltx_text" id="S4.T3.4.13.7.1" style="font-size:90%;">3.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.13.8"><span class="ltx_text" id="S4.T3.4.13.8.1" style="font-size:90%;">247.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.13.9"><span class="ltx_text" id="S4.T3.4.13.9.1" style="font-size:90%;">0.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.13.10"><span class="ltx_text" id="S4.T3.4.13.10.1" style="font-size:90%;">0.48</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.14">
<td class="ltx_td ltx_align_left" id="S4.T3.4.14.1"><span class="ltx_text" id="S4.T3.4.14.1.1" style="font-size:90%;">VAE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.14.2"><span class="ltx_text" id="S4.T3.4.14.2.1" style="font-size:90%;">Diff.</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.14.3"><span class="ltx_text" id="S4.T3.4.14.3.1" style="font-size:90%;">Diff.</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.14.4">
<span class="ltx_text" id="S4.T3.4.14.4.1" style="font-size:90%;">U-ViT-H/2-G </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.14.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S4.T3.4.14.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.14.5"><span class="ltx_text" id="S4.T3.4.14.5.1" style="font-size:90%;">501M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.14.6"><span class="ltx_text" id="S4.T3.4.14.6.1" style="font-size:90%;">2.29</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.14.7"><span class="ltx_text" id="S4.T3.4.14.7.1" style="font-size:90%;">263.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.14.8"><span class="ltx_text" id="S4.T3.4.14.8.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.14.9"><span class="ltx_text" id="S4.T3.4.14.9.1" style="font-size:90%;">0.57</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.15">
<td class="ltx_td ltx_align_left" id="S4.T3.4.15.1"><span class="ltx_text" id="S4.T3.4.15.1.1" style="font-size:90%;">VAE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.15.2"><span class="ltx_text" id="S4.T3.4.15.2.1" style="font-size:90%;">Diff.</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.15.3"><span class="ltx_text" id="S4.T3.4.15.3.1" style="font-size:90%;">Diff.</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.15.4">
<span class="ltx_text" id="S4.T3.4.15.4.1" style="font-size:90%;">DiT-XL/2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.15.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a><span class="ltx_text" id="S4.T3.4.15.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.15.5"><span class="ltx_text" id="S4.T3.4.15.5.1" style="font-size:90%;">675M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.15.6"><span class="ltx_text" id="S4.T3.4.15.6.1" style="font-size:90%;">2.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.15.7"><span class="ltx_text" id="S4.T3.4.15.7.1" style="font-size:90%;">278.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.15.8"><span class="ltx_text" id="S4.T3.4.15.8.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.15.9"><span class="ltx_text" id="S4.T3.4.15.9.1" style="font-size:90%;">0.57</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.16">
<td class="ltx_td ltx_align_left" id="S4.T3.4.16.1"><span class="ltx_text" id="S4.T3.4.16.1.1" style="font-size:90%;">VAE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.16.2"><span class="ltx_text" id="S4.T3.4.16.2.1" style="font-size:90%;">Diff.</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.16.3"><span class="ltx_text" id="S4.T3.4.16.3.1" style="font-size:90%;">Diff.</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.16.4">
<span class="ltx_text" id="S4.T3.4.16.4.1" style="font-size:90%;">MDTv2-XL/2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.16.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="S4.T3.4.16.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.16.5"><span class="ltx_text" id="S4.T3.4.16.5.1" style="font-size:90%;">676M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.16.6"><span class="ltx_text" id="S4.T3.4.16.6.1" style="font-size:90%;">1.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.16.7"><span class="ltx_text" id="S4.T3.4.16.7.1" style="font-size:90%;">314.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.16.8"><span class="ltx_text" id="S4.T3.4.16.8.1" style="font-size:90%;">0.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.16.9"><span class="ltx_text" id="S4.T3.4.16.9.1" style="font-size:90%;">0.65</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.17">
<td class="ltx_td ltx_align_left" id="S4.T3.4.17.1"><span class="ltx_text" id="S4.T3.4.17.1.1" style="font-size:90%;">VAE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.17.2"><span class="ltx_text" id="S4.T3.4.17.2.1" style="font-size:90%;">AR</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.17.3"><span class="ltx_text" id="S4.T3.4.17.3.1" style="font-size:90%;">GMM</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.17.4">
<span class="ltx_text" id="S4.T3.4.17.4.1" style="font-size:90%;">GIVT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.17.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="S4.T3.4.17.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.17.5"><span class="ltx_text" id="S4.T3.4.17.5.1" style="font-size:90%;">304M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.17.6"><span class="ltx_text" id="S4.T3.4.17.6.1" style="font-size:90%;">3.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.17.7"><span class="ltx_text" id="S4.T3.4.17.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.17.8"><span class="ltx_text" id="S4.T3.4.17.8.1" style="font-size:90%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.17.9"><span class="ltx_text" id="S4.T3.4.17.9.1" style="font-size:90%;">0.53</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.18">
<td class="ltx_td ltx_align_left" id="S4.T3.4.18.1"><span class="ltx_text" id="S4.T3.4.18.1.1" style="font-size:90%;">VAE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.18.2"><span class="ltx_text" id="S4.T3.4.18.2.1" style="font-size:90%;">AR</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.18.3"><span class="ltx_text" id="S4.T3.4.18.3.1" style="font-size:90%;">Flow</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.18.4">
<span class="ltx_text" id="S4.T3.4.18.4.1" style="font-size:90%;">FlowAR-H </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.18.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a><span class="ltx_text" id="S4.T3.4.18.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.18.5"><span class="ltx_text" id="S4.T3.4.18.5.1" style="font-size:90%;">1.9B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.18.6"><span class="ltx_text" id="S4.T3.4.18.6.1" style="font-size:90%;">1.65</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.18.7"><span class="ltx_text" id="S4.T3.4.18.7.1" style="font-size:90%;">296.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.18.8"><span class="ltx_text" id="S4.T3.4.18.8.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.18.9"><span class="ltx_text" id="S4.T3.4.18.9.1" style="font-size:90%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.19">
<td class="ltx_td ltx_align_left" id="S4.T3.4.19.1"><span class="ltx_text" id="S4.T3.4.19.1.1" style="font-size:90%;">VAE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.19.2"><span class="ltx_text" id="S4.T3.4.19.2.1" style="font-size:90%;">AR</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.19.3"><span class="ltx_text" id="S4.T3.4.19.3.1" style="font-size:90%;">Diff.</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.19.4">
<span class="ltx_text" id="S4.T3.4.19.4.1" style="font-size:90%;">MAR-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.19.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a><span class="ltx_text" id="S4.T3.4.19.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.19.5"><span class="ltx_text" id="S4.T3.4.19.5.1" style="font-size:90%;">479M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.19.6"><span class="ltx_text" id="S4.T3.4.19.6.1" style="font-size:90%;">1.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.19.7"><span class="ltx_text" id="S4.T3.4.19.7.1" style="font-size:90%;">296.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.19.8"><span class="ltx_text" id="S4.T3.4.19.8.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.19.9"><span class="ltx_text" id="S4.T3.4.19.9.1" style="font-size:90%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.20">
<td class="ltx_td ltx_align_left" id="S4.T3.4.20.1"><span class="ltx_text" id="S4.T3.4.20.1.1" style="font-size:90%;">VAE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.20.2"><span class="ltx_text" id="S4.T3.4.20.2.1" style="font-size:90%;">AR</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.20.3"><span class="ltx_text" id="S4.T3.4.20.3.1" style="font-size:90%;">Diff.</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.4.20.4">
<span class="ltx_text" id="S4.T3.4.20.4.1" style="font-size:90%;">MAR-H </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.20.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a><span class="ltx_text" id="S4.T3.4.20.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.20.5"><span class="ltx_text" id="S4.T3.4.20.5.1" style="font-size:90%;">943M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.20.6"><span class="ltx_text" id="S4.T3.4.20.6.1" style="font-size:90%;">1.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.20.7"><span class="ltx_text" id="S4.T3.4.20.7.1" style="font-size:90%;">303.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.20.8"><span class="ltx_text" id="S4.T3.4.20.8.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.20.9"><span class="ltx_text" id="S4.T3.4.20.9.1" style="font-size:90%;">0.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.21">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T3.4.21.1" rowspan="2"><span class="ltx_text" id="S4.T3.4.21.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_align_left" id="S4.T3.4.21.1.1.1">
<span class="ltx_p" id="S4.T3.4.21.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.4.21.1.1.1.1.1">post-training quantized</span></span>
<span class="ltx_p" id="S4.T3.4.21.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T3.4.21.1.1.1.2.1">discrete tokens</span></span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.21.2" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.21.2.1" style="font-size:90%;background-color:#E6E6E6;">VAE</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.21.3" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.21.3.1" style="font-size:90%;background-color:#E6E6E6;">AR</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.21.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.21.4.1" style="font-size:90%;background-color:#E6E6E6;">CE</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.21.5" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.21.5.1" style="font-size:90%;background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T3.4.21.5.1.1" style="background-color:#E6E6E6;">Ours-L</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.21.6" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.21.6.1" style="font-size:90%;background-color:#E6E6E6;">486M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.21.7" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.21.7.1" style="font-size:90%;background-color:#E6E6E6;">1.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.21.8" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.21.8.1" style="font-size:90%;background-color:#E6E6E6;">294.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.21.9" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.21.9.1" style="font-size:90%;background-color:#E6E6E6;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.21.10" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.21.10.1" style="font-size:90%;background-color:#E6E6E6;">0.63</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.22">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.4.22.1" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.22.1.1" style="font-size:90%;background-color:#E6E6E6;">VAE</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.4.22.2" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.22.2.1" style="font-size:90%;background-color:#E6E6E6;">AR</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.4.22.3" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.22.3.1" style="font-size:90%;background-color:#E6E6E6;">CE</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.4.22.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.22.4.1" style="font-size:90%;background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T3.4.22.4.1.1" style="background-color:#E6E6E6;">Ours-H</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.22.5" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.22.5.1" style="font-size:90%;background-color:#E6E6E6;">910M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.22.6" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.22.6.1" style="font-size:90%;background-color:#E6E6E6;">1.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.22.7" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.22.7.1" style="font-size:90%;background-color:#E6E6E6;">313.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.22.8" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.22.8.1" style="font-size:90%;background-color:#E6E6E6;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.22.9" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T3.4.22.9.1" style="font-size:90%;background-color:#E6E6E6;">0.65</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation studies on the autoregressive head architecture used in the TokenBridge model for image generation.  It shows the impact of varying the model's depth and number of parameters on the performance, as measured by FID and IS scores. The results demonstrate that even a lightweight design with only 3 million parameters can achieve reasonable image generation quality, and that increasing model capacity further enhances performance.
> <details>
> <summary>read the caption</summary>
> (e) Autoregressive head architecture. Even lightweight design (3M params) achieves reasonable quality. Increasing capacity further enhances performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S1.T4.2">
<tr class="ltx_tr" id="S1.T4.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.1.1.1">
<span class="ltx_p" id="S1.T4.2.1.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.1.1.1.1.1" style="font-size:144%;">config</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.1.2.1">
<span class="ltx_p" id="S1.T4.2.1.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.1.2.1.1.1" style="font-size:144%;">value</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" colspan="2" id="S1.T4.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.2.1.1">
<span class="ltx_p" id="S1.T4.2.2.1.1.1" style="width:97.6pt;"><span class="ltx_rule" style="width:100%;height:1.2pt;background:black;display:inline-block;"> </span></span>
</span><span class="ltx_text" id="S1.T4.2.2.1.2" style="font-size:144%;">       </span><span class="ltx_text ltx_font_italic" id="S1.T4.2.2.1.3" style="font-size:144%;">training hyper-params</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.3.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.3.1.1">
<span class="ltx_p" id="S1.T4.2.3.1.1.1" style="width:97.6pt;"><span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span></span>
<span class="ltx_p" id="S1.T4.2.3.1.1.2"><span class="ltx_text" id="S1.T4.2.3.1.1.2.1" style="font-size:144%;">optimizer</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.3.2.1">
<span class="ltx_p" id="S1.T4.2.3.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.3.2.1.1.1" style="font-size:144%;">AdamW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T4.2.3.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16430v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S1.T4.2.3.2.1.1.3.2" style="font-size:144%;">]</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.4.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.4.1.1">
<span class="ltx_p" id="S1.T4.2.4.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.4.1.1.1.1" style="font-size:144%;">learning rate</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.4.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.4.2.1">
<span class="ltx_p" id="S1.T4.2.4.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.4.2.1.1.1" style="font-size:144%;">8e-4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.5.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.5.1.1">
<span class="ltx_p" id="S1.T4.2.5.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.5.1.1.1.1" style="font-size:144%;">weight decay</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.5.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.5.2.1">
<span class="ltx_p" id="S1.T4.2.5.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.5.2.1.1.1" style="font-size:144%;">0.02</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.6.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.6.1.1">
<span class="ltx_p" id="S1.T4.2.6.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.6.1.1.1.1" style="font-size:144%;">optimizer momentum</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.6.2.1">
<span class="ltx_p" id="S1.T4.2.6.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.6.2.1.1.1" style="font-size:144%;">(0.9, 0.95)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.7.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.7.1.1">
<span class="ltx_p" id="S1.T4.2.7.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.7.1.1.1.1" style="font-size:144%;">batch size</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.7.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.7.2.1">
<span class="ltx_p" id="S1.T4.2.7.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.7.2.1.1.1" style="font-size:144%;">2048</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.8.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.8.1.1">
<span class="ltx_p" id="S1.T4.2.8.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.8.1.1.1.1" style="font-size:144%;">learning rate schedule</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.8.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.8.2.1">
<span class="ltx_p" id="S1.T4.2.8.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.8.2.1.1.1" style="font-size:144%;">cosine decay</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.9.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.9.1.1">
<span class="ltx_p" id="S1.T4.2.9.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.9.1.1.1.1" style="font-size:144%;">warmup epochs</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.9.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.9.2.1">
<span class="ltx_p" id="S1.T4.2.9.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.9.2.1.1.1" style="font-size:144%;">200</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.10.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.10.1.1">
<span class="ltx_p" id="S1.T4.2.10.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.10.1.1.1.1" style="font-size:144%;">ending learning rate</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.10.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.10.2.1">
<span class="ltx_p" id="S1.T4.2.10.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.10.2.1.1.1" style="font-size:144%;">0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.11.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.11.1.1">
<span class="ltx_p" id="S1.T4.2.11.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.11.1.1.1.1" style="font-size:144%;">total epochs</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.11.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.11.2.1">
<span class="ltx_p" id="S1.T4.2.11.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.11.2.1.1.1" style="font-size:144%;">800</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.12.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.12.1.1">
<span class="ltx_p" id="S1.T4.2.12.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.12.1.1.1.1" style="font-size:144%;">dropout rate</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.12.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.12.2.1">
<span class="ltx_p" id="S1.T4.2.12.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.12.2.1.1.1" style="font-size:144%;">0.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.13.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.13.1.1">
<span class="ltx_p" id="S1.T4.2.13.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.13.1.1.1.1" style="font-size:144%;">attn dropout rate</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.13.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.13.2.1">
<span class="ltx_p" id="S1.T4.2.13.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.13.2.1.1.1" style="font-size:144%;">0.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.14.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.14.1.1">
<span class="ltx_p" id="S1.T4.2.14.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.14.1.1.1.1" style="font-size:144%;">class label dropout rate</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.14.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.14.2.1">
<span class="ltx_p" id="S1.T4.2.14.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.14.2.1.1.1" style="font-size:144%;">0.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.15.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.15.1.1">
<span class="ltx_p" id="S1.T4.2.15.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.15.1.1.1.1" style="font-size:144%;">precision</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.15.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.15.2.1">
<span class="ltx_p" id="S1.T4.2.15.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.15.2.1.1.1" style="font-size:144%;">bfloat16</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.16.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.16.1.1">
<span class="ltx_p" id="S1.T4.2.16.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.16.1.1.1.1" style="font-size:144%;">EMA momentum</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.16.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.16.2.1">
<span class="ltx_p" id="S1.T4.2.16.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.16.2.1.1.1" style="font-size:144%;">0.9999</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.17.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.17.1.1">
<span class="ltx_p" id="S1.T4.2.17.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.17.1.1.1.1" style="font-size:144%;">max grad norm</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.17.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.17.2.1">
<span class="ltx_p" id="S1.T4.2.17.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.17.2.1.1.1" style="font-size:144%;">1.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.18">
<td class="ltx_td ltx_align_justify ltx_align_top" colspan="2" id="S1.T4.2.18.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.18.1.1">
<span class="ltx_p" id="S1.T4.2.18.1.1.1" style="width:97.6pt;"><span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span></span>
</span><span class="ltx_text" id="S1.T4.2.18.1.2" style="font-size:144%;">       </span><span class="ltx_text ltx_font_italic" id="S1.T4.2.18.1.3" style="font-size:144%;">sampling hyper-params</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.19.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.19.1.1">
<span class="ltx_p" id="S1.T4.2.19.1.1.1" style="width:97.6pt;"><span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span></span>
<span class="ltx_p" id="S1.T4.2.19.1.1.2"><span class="ltx_text" id="S1.T4.2.19.1.1.2.1" style="font-size:144%;">temperature</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.19.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.19.2.1">
<span class="ltx_p" id="S1.T4.2.19.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.19.2.1.1.1" style="font-size:144%;">0.97(L) / 0.91(H)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.20.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.20.1.1">
<span class="ltx_p" id="S1.T4.2.20.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.20.1.1.1.1" style="font-size:144%;">CFG class dropout rate</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.20.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.20.2.1">
<span class="ltx_p" id="S1.T4.2.20.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.20.2.1.1.1" style="font-size:144%;">0.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.21">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.21.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.21.1.1">
<span class="ltx_p" id="S1.T4.2.21.1.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.21.1.1.1.1" style="font-size:144%;">guidance scale</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.21.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.21.2.1">
<span class="ltx_p" id="S1.T4.2.21.2.1.1" style="width:97.6pt;"><span class="ltx_text" id="S1.T4.2.21.2.1.1.1" style="font-size:144%;">3.1 (L) / 3.45 (H)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T4.2.22">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S1.T4.2.22.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T4.2.22.1.1">
<span class="ltx_p" id="S1.T4.2.22.1.1.1" style="width:97.6pt;"><span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T4.2.22.2"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted on the autoregressive generation model component of TokenBridge.  It explores the impact of various design choices on the model's performance, measured by FID and IS scores.  Specifically, it investigates different prediction strategies (parallel vs. autoregressive), dimension ordering (normal vs. frequency-based), quantization levels, channel grouping within the autoregressive head, and the architecture of the autoregressive head itself (varying dimension and depth).  By comparing the FID and IS scores across these different configurations, the study aims to identify the optimal design choices for maximizing generation quality.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation studies on our generation model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T5.2">
<tr class="ltx_tr" id="S2.T5.2.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T5.2.1.1">
<span class="ltx_rule" style="width:100%;height:1.2pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S2.T5.2.1.1.1" style="font-size:144%;">
Method</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T5.2.1.2"><span class="ltx_text" id="S2.T5.2.1.2.1" style="font-size:144%;">Time (ms)</span></td>
</tr>
<tr class="ltx_tr" id="S2.T5.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T5.2.2.1">
<span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S2.T5.2.2.1.1" style="font-size:144%;">
Diffusion (MAR)</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T5.2.2.2"><span class="ltx_text" id="S2.T5.2.2.2.1" style="font-size:144%;">311.25 ± 1.85</span></td>
</tr>
<tr class="ltx_tr" id="S2.T5.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T5.2.3.1"><span class="ltx_text" id="S2.T5.2.3.1.1" style="font-size:144%;">AR (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.2.3.2"><span class="ltx_text" id="S2.T5.2.3.2.1" style="font-size:144%;">52.42 ± 0.57</span></td>
</tr>
<tr class="ltx_tr" id="S2.T5.2.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T5.2.4.1"><span class="ltx_rule" style="width:100%;height:1.2pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S2.T5.2.4.2"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a quantitative comparison of various image generation models on the ImageNet 256x256 dataset.  The models are categorized into three groups: those using traditional discrete tokens (requiring quantization during training), those using continuous tokens (often involving more complex distribution modeling), and the proposed TokenBridge method. The table evaluates these models based on standard metrics for image generation: Fréchet Inception Distance (FID), Inception Score (IS), Precision, and Recall. The results demonstrate that TokenBridge achieves performance comparable to the state-of-the-art continuous token model (MAR), despite employing standard autoregressive modeling with categorical prediction, thus highlighting the effectiveness of the proposed approach in bridging discrete and continuous token paradigms.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of visual generation methods on ImageNet 256×256. Our model achieves comparable performance to the best continuous token approach (MAR) while using standard categorical prediction in autoregressive modeling.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16430/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16430/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16430/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16430/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16430/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16430/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16430/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16430/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16430/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16430/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16430/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16430/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}