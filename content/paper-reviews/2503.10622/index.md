---
title: "Transformers without Normalization"
summary: "Transformers can achieve state-of-the-art performance without normalization layers via Dynamic Tanh (DyT), offering a simpler and more efficient alternative."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 FAIR, Meta",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10622 {{< /keyword >}}
{{< keyword icon="writer" >}} Jiachen Zhu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10622" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10622" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10622/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Normalization layers are a staple in modern neural networks, believed to be vital for good performance. They help optimization, stabilize convergence, and are deemed indispensable. However, recent architectures focus on replacing attention or convolution while still keeping normalization layers. This paper challenges the necessity of normalization by introducing Dynamic Tanh (DyT) as a simple alternative.



This paper shows Transformers without normalization are viable.  DyT, defined as DyT(x) = tanh(ax) (where 'a' is learnable), mimics layer normalization's S-shaped mapping.  DyT-integrated Transformers matched or exceeded normalized versions' performance across tasks like recognition, generation, & self-supervision, from vision to language. The finding challenges normalization's necessity and suggests new insights into deep networks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Dynamic Tanh (DyT) can replace normalization layers in Transformers without performance degradation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} DyT matches or exceeds the performance of normalized Transformers. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DyT improves training and inference speed. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **challenges the long-held belief** that normalization layers are essential in deep networks, potentially simplifying architectures & reducing computational costs. This work can **opens new doors** for designing & training more efficient deep learning models.

------
#### Visual Insights



![](https://arxiv.org/html/2503.10622/x1.png)

> 🔼 This figure illustrates the architecture of a standard Transformer block and a modified version incorporating the proposed Dynamic Tanh (DyT) layer. The left panel depicts a traditional Transformer block, highlighting its core components: Attention/Feed-Forward Network (Attention/FFN), Layer Normalization (LN), and scale & shift operations. The right panel shows the integration of the DyT layer as a direct replacement for LN.  The DyT layer functions as a learnable element-wise operation, approximating the behavior of LN and RMSNorm (another normalization technique) while omitting the computationally expensive statistical calculations. The caption emphasizes that using DyT instead of LN results in similar or superior performance in Transformers.
> <details>
> <summary>read the caption</summary>
> Figure 1: Left: original Transformer block. Right: block with our proposed Dynamic Tanh (DyT) layer. DyT is a straightforward replacement for commonly used Layer Norm (Ba et al., 2016) (in some cases RMSNorm (Zhang and Sennrich, 2019)) layers. Transformers with DyT match or exceed the performance of their normalized counterparts.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T1.3.4.1.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.3.4.1.1.1" style="font-size:80%;">model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.3.4.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.3.4.1.2.1" style="font-size:80%;">LN</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.3.4.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.3.4.1.3.1" style="font-size:80%;">DyT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.3.4.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.3.4.1.4.1" style="font-size:80%;">change</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.1.1.2.1" style="font-size:80%;">ViT-B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.1.1.3.1" style="font-size:80%;">82.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.1.1.4.1" style="font-size:80%;">82.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1" style="padding:0.6pt 7.0pt;">
<math alttext="\uparrow\," class="ltx_Math" display="inline" id="S5.T1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.m1.1a"><mo id="S5.T1.1.1.1.m1.1.1" mathcolor="#009000" mathsize="80%" stretchy="false" xref="S5.T1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.m1.1b"><ci id="S5.T1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.m1.1c">\uparrow\,</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S5.T1.1.1.1.1" style="font-size:80%;color:#009000;">0.2%</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.2.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.2.2.2.1" style="font-size:80%;">ViT-L</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.2.2.3.1" style="font-size:80%;">83.1%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.2.2.4.1" style="font-size:80%;">83.6%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.1" style="padding:0.6pt 7.0pt;">
<math alttext="\uparrow\," class="ltx_Math" display="inline" id="S5.T1.2.2.1.m1.1"><semantics id="S5.T1.2.2.1.m1.1a"><mo id="S5.T1.2.2.1.m1.1.1" mathcolor="#009000" mathsize="80%" stretchy="false" xref="S5.T1.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.1.m1.1b"><ci id="S5.T1.2.2.1.m1.1.1.cmml" xref="S5.T1.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.1.m1.1c">\uparrow\,</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S5.T1.2.2.1.1" style="font-size:80%;color:#009000;">0.5%</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.3.5.1.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.3.5.1.1.1" style="font-size:80%;">ConvNeXt-B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.3.5.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.3.5.1.2.1" style="font-size:80%;">83.7%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.5.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.3.5.1.3.1" style="font-size:80%;">83.7%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.5.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.3.5.1.4.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S5.T1.3.3.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.3.3.2.1" style="font-size:80%;">ConvNeXt-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.3.3.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.3.3.3.1" style="font-size:80%;">84.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.3.3.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T1.3.3.4.1" style="font-size:80%;">84.4%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.3.3.1" style="padding:0.6pt 7.0pt;">
<math alttext="\uparrow\," class="ltx_Math" display="inline" id="S5.T1.3.3.1.m1.1"><semantics id="S5.T1.3.3.1.m1.1a"><mo id="S5.T1.3.3.1.m1.1.1" mathcolor="#009000" mathsize="80%" stretchy="false" xref="S5.T1.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.1.m1.1b"><ci id="S5.T1.3.3.1.m1.1.1.cmml" xref="S5.T1.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.1.m1.1c">\uparrow\,</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S5.T1.3.3.1.1" style="font-size:80%;color:#009000;">0.1%</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the top-1 accuracy results of image classification on the ImageNet-1K dataset for four different models: ViT-B, ViT-L, ConvNeXt-B, and ConvNeXt-L.  Each model was trained using two different normalization methods: Layer Normalization (LN) and Dynamic Tanh (DyT). The table shows that the performance with DyT is either on par with or superior to the performance achieved with LN. This comparison is made across various model sizes, demonstrating the effectiveness and generalizability of DyT.
> <details>
> <summary>read the caption</summary>
> Table 1: Supervised classification accuracy on ImageNet-1K. DyT achieves better or similar performance than LN across both architectures and model sizes.
> </details>





### In-depth insights


#### DyT: How it works
**Dynamic Tanh (DyT) operates as a drop-in replacement for normalization layers, primarily in Transformers**. It introduces a learnable scaling factor *alpha* that adjusts the input activation range before squashing extreme values via a tanh function. **Unlike normalization layers which compute statistics across tokens, DyT operates element-wise without aggregation, emulating normalization's S-shaped input-output mapping with a scaled tanh**. This approach offers simplicity and potential efficiency gains.

#### Beyond LayerNorm
**Moving beyond LayerNorm (LN)** is a compelling direction for neural network research. While LN has become a staple, especially in Transformers, its limitations warrant exploration of alternatives. **DyT offers a fresh perspective** by directly addressing LN's behavior, i.e., mapping to tanh-like curves, which is innovative. It opens a pathway to understand, **whether normalization's benefits stem solely from statistical normalization, or from the non-linear element-wise squashing,** and or from learning scaling paramters. **DyT's simplicity is an asset**. It reduces computational overhead, and potentially improves inference speed as suggested. This can be valuable for resource-constrained environments. Its drop-in nature also makes experimentation easy. If DyT can achieve comparable or superior performance, it challenges the necessity of complex normalization. Further, this motivates **rethinking network architectures from the ground up**, rather than relying on norm by default.

#### No-Norm ViTs/DiTs
**Normalization layers are ubiquitous in Vision Transformers (ViTs) and Diffusion Transformers (DiTs)**, yet the paper challenges their necessity. The concept of "No-Norm ViTs/DiTs" suggests **eliminating normalization layers** while maintaining or improving performance. The paper introduces Dynamic Tanh (DyT) as a substitute, emulating the behavior of normalization. This substitution presents potential benefits like **reduced computational overhead** and **simplification of network architecture**. A deeper question explored might be whether normalization's primary role is simply activation scaling and stabilization, which DyT effectively addresses. By challenging the necessity of normalization layers, this work could potentially lead to **more efficient and interpretable network designs** in the future for both ViTs and DiTs.

#### Model Scaling Laws
**Model scaling laws** are crucial for understanding the relationship between model size, dataset size, and performance. Intuitively, larger models trained on more data perform better, but scaling laws quantify this relationship precisely. These laws often express performance as a power-law function of model size, indicating diminishing returns as models grow. Understanding these laws allows for efficient resource allocation by predicting the optimal model size for a given dataset and computational budget. **Deviations from scaling laws can also reveal architectural inefficiencies or dataset biases**. While the initial focus was on language models, scaling laws are now being investigated in other domains like computer vision and reinforcement learning. **Extending and refining these laws remains an active area of research**, particularly in understanding the role of architectural innovations and the impact of data quality on scaling behavior.

#### BN limitations?
While Batch Normalization (BN) has been foundational, it has limitations. **BN's reliance on batch statistics can be problematic with small batch sizes, leading to inaccurate normalization and reduced performance.** Furthermore, **BN's effectiveness diminishes in recurrent neural networks (RNNs) due to the varying statistics across time steps.** Additionally, **BN introduces dependencies between samples within a batch**, which can be undesirable in certain applications like reinforcement learning. There is the computational overhead associated with calculating and storing batch statistics during training, as well as the need for separate handling during inference. The above can also limit the architectural flexibility, since BN can interfere with certain network designs and training techniques.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10622/x2.png)

> 🔼 This figure displays scatter plots visualizing the relationship between input and output values for selected layer normalization (LN) layers within three different Transformer models: Vision Transformer (ViT), wav2vec 2.0, and Diffusion Transformer (DiT).  For each model, four different LN layers are represented. The x-axis represents the input values to the LN layer, and the y-axis shows the corresponding output values (before the affine transformation within the LN layer). The plots reveal that the input-output mappings of the LN layers often exhibit a characteristic S-shaped or tanh-like curve, particularly in deeper layers, which is a key observation in the paper that motivates the proposed Dynamic Tanh (DyT) method as a more efficient and effective replacement for the LN layer.
> <details>
> <summary>read the caption</summary>
> Figure 2: Output vs. input of selected layer normalization (LN) layers in Vision Transformer (ViT) (Dosovitskiy et al., 2020), wav2vec 2.0 (a Transformer model for speech) (Baevski et al., 2020), and Diffusion Transformer (DiT) (Peebles and Xie, 2023). We sample a mini-batch of samples and plot the input / output values of four LN layers in each model. The outputs are before the affine transformation in LN. The S𝑆Sitalic_S-shaped curves highly resemble that of a tanh function (see Figure 3). The more linear shapes in earlier layers can also be captured by the center part of a tanh curve. This motivates us to propose Dynamic Tanh (DyT) as a replacement, with a learnable scaler α𝛼\alphaitalic_α to account for different scales on the x𝑥xitalic_x axis.
> </details>



![](https://arxiv.org/html/2503.10622/extracted/6278329/figures/inout_color.png)

> 🔼 This figure shows plots of the function y = tanh(αx) for three different values of α (alpha).  The parameter α controls the steepness of the curve. A larger α value results in a steeper curve, while a smaller α value results in a shallower curve. The tanh function itself is a sigmoid function that maps values from negative infinity to positive infinity to a range between -1 and 1. This function's shape is similar to the input-output relationship observed in layer normalization (LN) layers of Transformer models, which inspired the use of the Dynamic Tanh (DyT) function in the paper. The figure visually illustrates how the DyT function with its learnable parameter α can mimic the behavior of LN layers in squashing extreme values while maintaining a relatively linear response in the central region.
> <details>
> <summary>read the caption</summary>
> Figure 3: tanh⁡(α⁢x)𝛼𝑥\tanh(\alpha x)roman_tanh ( italic_α italic_x ) with three different α𝛼\alphaitalic_α values.
> </details>



![](https://arxiv.org/html/2503.10622/x9.png)

> 🔼 Figure 4 visualizes the input-output relationships of layer normalization (LN) layers in a vision transformer model.  The plots show how LN processes inputs by separating and handling data across token and channel dimensions. The left two panels highlight that LN acts linearly across channels for each token.  Individual tokens (same color) plot as straight lines. However, the collection of these lines creates a nonlinear, S-shaped (tanh-like) curve.  The right two panels illustrate the different input ranges across individual channels. Some channels have more extreme input values that are squashed by LN, resulting in the S-shaped curve. This visualization clarifies LN's dual nature of linear processing per token and nonlinear squashing of extremes across all channels.
> <details>
> <summary>read the caption</summary>
> Figure 4: Output vs. input of two LN layers, with tensor elements colored to indicate different channel and token dimensions. The input tensor has a shape of (samples, tokens, and channels), with elements visualized by assigning consistent colors to the same tokens (left two panels) and channels (right two panels). Left two panels: points representing the same token (same color) form straight lines across different channels, as LN operates linearly across channels for each token. Interestingly, when plotted collectively, these lines form a non-linear tanh-shaped curve. Right two panels: each channel’s input spans different ranges on the x𝑥xitalic_x-axis, contributing distinct segments to the overall tanh-shaped curve. Certain channels (e.g., red, green, and pink) exhibit more extreme x𝑥xitalic_x values, which are squashed by LN.
> </details>



![](https://arxiv.org/html/2503.10622/x12.png)

> 🔼 This figure displays the training loss curves for two different models, Vision Transformer (ViT-B) and ConvNeXt-B, both trained using two different normalization methods: Layer Normalization (LN) and Dynamic Tanh (DyT).  The curves for both models and both normalization techniques show remarkably similar patterns and rates of convergence,  suggesting a strong similarity in how these different methods affect the training process. This implies that DyT, a much simpler normalization technique, might effectively replicate the behavior and benefits of the more complex LN during training.
> <details>
> <summary>read the caption</summary>
> Figure 5: Training loss curves for ViT-B and ConvNeXt-B models. The loss curves for both model types exhibit similar patterns between LN and DyT, suggesting that LN and DyT may share similar learning dynamics.
> </details>



![](https://arxiv.org/html/2503.10622/x13.png)

> 🔼 This figure displays the training loss curves for four different sizes of the LLaMA large language model (LLaMA 7B, 13B, 34B, and 70B) during pretraining.  Each model size is shown with two curves: one using RMSNorm (the original normalization method) and another using the proposed DyT (Dynamic Tanh) method. The closeness of the curves for each model size shows that DyT achieves comparable performance to RMSNorm during training, regardless of model size.
> <details>
> <summary>read the caption</summary>
> Figure 6: LLaMA pretraining loss. The loss curves of DyT and RMSNorm models are closely aligned across model sizes.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T2.3.4.1.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.3.4.1.1.1" style="font-size:80%;">model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.3.4.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.3.4.1.2.1" style="font-size:80%;">LN</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.3.4.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.3.4.1.3.1" style="font-size:80%;">DyT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.3.4.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.3.4.1.4.1" style="font-size:80%;">change</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.3.5.1.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.3.5.1.1.1" style="font-size:80%;">MAE ViT-B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.5.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.3.5.1.2.1" style="font-size:80%;">83.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.5.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.3.5.1.3.1" style="font-size:80%;">83.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.5.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.3.5.1.4.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.1.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.1.1.2.1" style="font-size:80%;">MAE ViT-L</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.1.1.3.1" style="font-size:80%;">85.5%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.1.1.4.1" style="font-size:80%;">85.4%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.1" style="padding:0.6pt 7.0pt;">
<math alttext="\downarrow\," class="ltx_Math" display="inline" id="S5.T2.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.m1.1a"><mo id="S5.T2.1.1.1.m1.1.1" mathcolor="#EA4335" mathsize="80%" stretchy="false" xref="S5.T2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.m1.1c">\downarrow\,</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S5.T2.1.1.1.1" style="font-size:80%;color:#EA4335;">0.1%</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.2.2.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.2.2.2.1" style="font-size:80%;">DINO ViT-B (patch size 16)</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.2.2.3.1" style="font-size:80%;">83.2%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.2.2.4.1" style="font-size:80%;">83.4%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.1" style="padding:0.6pt 7.0pt;">
<math alttext="\uparrow\," class="ltx_Math" display="inline" id="S5.T2.2.2.1.m1.1"><semantics id="S5.T2.2.2.1.m1.1a"><mo id="S5.T2.2.2.1.m1.1.1" mathcolor="#009000" mathsize="80%" stretchy="false" xref="S5.T2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.1.m1.1b"><ci id="S5.T2.2.2.1.m1.1.1.cmml" xref="S5.T2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.1.m1.1c">\uparrow\,</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S5.T2.2.2.1.1" style="font-size:80%;color:#009000;">0.2%</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S5.T2.3.3.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.3.3.2.1" style="font-size:80%;">DINO ViT-B (patch size 8)</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.3.3.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.3.3.3.1" style="font-size:80%;">84.1%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.3.3.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T2.3.3.4.1" style="font-size:80%;">84.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.3.3.1" style="padding:0.6pt 7.0pt;">
<math alttext="\uparrow\," class="ltx_Math" display="inline" id="S5.T2.3.3.1.m1.1"><semantics id="S5.T2.3.3.1.m1.1a"><mo id="S5.T2.3.3.1.m1.1.1" mathcolor="#009000" mathsize="80%" stretchy="false" xref="S5.T2.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.1.m1.1b"><ci id="S5.T2.3.3.1.m1.1.1.cmml" xref="S5.T2.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.1.m1.1c">\uparrow\,</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S5.T2.3.3.1.1" style="font-size:80%;color:#009000;">0.4%</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of self-supervised learning experiments on the ImageNet-1K dataset.  Two popular self-supervised learning methods, Masked Autoencoders (MAE) and DINO, were used, each with Vision Transformer backbones of varying sizes. The table compares the top-1 classification accuracy achieved after fine-tuning the pre-trained models with both Layer Normalization (LN) and Dynamic Tanh (DyT).  This demonstrates that DyT achieves comparable performance to LN across different model sizes and self-supervised learning methods.
> <details>
> <summary>read the caption</summary>
> Table 2: Self-supervised learning accuracy on ImageNet-1K. DyT performs on par with LN across different pretraining methods and model sizes in self-supervised learning tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.3.4.1.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T3.3.4.1.1.1" style="font-size:80%;">model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.4.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T3.3.4.1.2.1" style="font-size:80%;">LN</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.4.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T3.3.4.1.3.1" style="font-size:80%;">DyT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.4.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T3.3.4.1.4.1" style="font-size:80%;">change</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T3.1.1.2.1" style="font-size:80%;">DiT-B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T3.1.1.3.1" style="font-size:80%;">64.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T3.1.1.4.1" style="font-size:80%;">63.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1" style="padding:0.6pt 7.0pt;">
<math alttext="\downarrow\," class="ltx_Math" display="inline" id="S5.T3.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.m1.1.1" mathcolor="#009000" mathsize="80%" stretchy="false" xref="S5.T3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.m1.1c">\downarrow\,</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S5.T3.1.1.1.1" style="font-size:80%;color:#009000;">1.0</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.2.2.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T3.2.2.2.1" style="font-size:80%;">DiT-L</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T3.2.2.3.1" style="font-size:80%;">45.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T3.2.2.4.1" style="font-size:80%;">45.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.1" style="padding:0.6pt 7.0pt;">
<math alttext="\downarrow\," class="ltx_Math" display="inline" id="S5.T3.2.2.1.m1.1"><semantics id="S5.T3.2.2.1.m1.1a"><mo id="S5.T3.2.2.1.m1.1.1" mathcolor="#009000" mathsize="80%" stretchy="false" xref="S5.T3.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.1.m1.1b"><ci id="S5.T3.2.2.1.m1.1.1.cmml" xref="S5.T3.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.1.m1.1c">\downarrow\,</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.1.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S5.T3.2.2.1.1" style="font-size:80%;color:#009000;">0.2</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S5.T3.3.3.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T3.3.3.2.1" style="font-size:80%;">DiT-XL</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.3.3.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T3.3.3.3.1" style="font-size:80%;">19.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.3.3.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T3.3.3.4.1" style="font-size:80%;">20.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.3.3.1" style="padding:0.6pt 7.0pt;">
<math alttext="\uparrow\," class="ltx_Math" display="inline" id="S5.T3.3.3.1.m1.1"><semantics id="S5.T3.3.3.1.m1.1a"><mo id="S5.T3.3.3.1.m1.1.1" mathcolor="#EA4335" mathsize="80%" stretchy="false" xref="S5.T3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.1.m1.1b"><ci id="S5.T3.3.3.1.m1.1.1.cmml" xref="S5.T3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.1.m1.1c">\uparrow\,</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S5.T3.3.3.1.1" style="font-size:80%;color:#EA4335;">0.9</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Fréchet Inception Distance (FID) scores, a metric for evaluating the quality of generated images, for three different sizes of the Diffusion Transformer (DiT) model.  The models were trained on the ImageNet-1K dataset.  Lower FID scores indicate better image generation quality.  The table compares the FID scores achieved by models using layer normalization (LN) with those using the proposed Dynamic Tanh (DyT) as a replacement for LN.  The results demonstrate that DyT achieves comparable or superior performance compared to LN across all model sizes.
> <details>
> <summary>read the caption</summary>
> Table 3: Image generation quality (FID, lower is better) on ImageNet. DyT achieves comparable or superior FID scores to LN across various DiT model sizes.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.2.3.1.1" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.2.3.1.1.1" style="font-size:80%;">score / loss</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.3.1.2" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.2.3.1.2.1" style="font-size:80%;">RMSNorm</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.3.1.3" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.2.3.1.3.1" style="font-size:80%;">DyT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.3.1.4" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.2.3.1.4.1" style="font-size:80%;">change</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.1.2" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.1.1.2.1" style="font-size:80%;">LLaMA 7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.1.1.3.1" style="font-size:80%;">0.513 / 1.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.4" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.1.1.4.1" style="font-size:80%;">0.513 / 1.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1" style="padding:0.6pt 10.0pt;">
<span class="ltx_text" id="S5.T4.1.1.1.1" style="font-size:80%;">- / </span><math alttext="\uparrow\," class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.m1.1.1" mathcolor="#EA4335" mathsize="80%" stretchy="false" xref="S5.T4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">\uparrow\,</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S5.T4.1.1.1.2" style="font-size:80%;color:#EA4335;">0.01</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.2.2.2" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.2.2.2.1" style="font-size:80%;">LLaMA 13B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.3" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.2.2.3.1" style="font-size:80%;">0.529 / 1.53</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.4" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.2.2.4.1" style="font-size:80%;">0.529 / 1.54</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.1" style="padding:0.6pt 10.0pt;">
<span class="ltx_text" id="S5.T4.2.2.1.1" style="font-size:80%;">- / </span><math alttext="\uparrow\," class="ltx_Math" display="inline" id="S5.T4.2.2.1.m1.1"><semantics id="S5.T4.2.2.1.m1.1a"><mo id="S5.T4.2.2.1.m1.1.1" mathcolor="#EA4335" mathsize="80%" stretchy="false" xref="S5.T4.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.1.m1.1b"><ci id="S5.T4.2.2.1.m1.1.1.cmml" xref="S5.T4.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.1.m1.1c">\uparrow\,</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S5.T4.2.2.1.2" style="font-size:80%;color:#EA4335;">0.01</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.2.4.1.1" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.2.4.1.1.1" style="font-size:80%;">LLaMA 34B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.2.4.1.2" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.2.4.1.2.1" style="font-size:80%;">0.536 / 1.50</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.4.1.3" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.2.4.1.3.1" style="font-size:80%;">0.536 / 1.50</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.4.1.4" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.2.4.1.4.1" style="font-size:80%;">- / -</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S5.T4.2.5.2.1" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.2.5.2.1.1" style="font-size:80%;">LLaMA 70B</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.2.5.2.2" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.2.5.2.2.1" style="font-size:80%;">0.549 / 1.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.2.5.2.3" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.2.5.2.3.1" style="font-size:80%;">0.549 / 1.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.2.5.2.4" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S5.T4.2.5.2.4.1" style="font-size:80%;">- / -</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of large language models (LLaMs) using either RMSNorm or DyT normalization.  It shows the training loss and average performance across 15 zero-shot tasks from the lm-eval benchmark.  The results demonstrate that DyT achieves comparable performance to RMSNorm in both aspects, suggesting that DyT is a viable alternative to RMSNorm in LLMs without sacrificing performance.
> <details>
> <summary>read the caption</summary>
> Table 4: Language models’ training loss and average performance with 15 zero-shot lm-eval tasks. DyT achieves a comparable zero-shot performance and training loss to RMSNorm.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.1.2.1.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T5.1.2.1.1.1" style="font-size:80%;">model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.2.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T5.1.2.1.2.1" style="font-size:80%;">LN</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.2.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T5.1.2.1.3.1" style="font-size:80%;">DyT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.2.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T5.1.2.1.4.1" style="font-size:80%;">change</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.3.1.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T5.1.3.1.1.1" style="font-size:80%;">wav2vec 2.0 Base</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T5.1.3.1.2.1" style="font-size:80%;">1.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T5.1.3.1.3.1" style="font-size:80%;">1.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T5.1.3.1.4.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S5.T5.1.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T5.1.1.2.1" style="font-size:80%;">wav2vec 2.0 Large</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.1.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T5.1.1.3.1" style="font-size:80%;">1.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.1.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T5.1.1.4.1" style="font-size:80%;">1.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.1.1.1" style="padding:0.6pt 7.0pt;">
<math alttext="\downarrow\," class="ltx_Math" display="inline" id="S5.T5.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.m1.1a"><mo id="S5.T5.1.1.1.m1.1.1" mathcolor="#009000" mathsize="80%" stretchy="false" xref="S5.T5.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.m1.1c">\downarrow\,</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S5.T5.1.1.1.1" style="font-size:80%;color:#009000;">0.01</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the validation loss achieved during the pretraining phase of two wav2vec 2.0 models: the base model and the large model.  The results compare the performance of using Layer Normalization (LN) against the proposed Dynamic Tanh (DyT) method.  The purpose of the table is to demonstrate that DyT achieves comparable performance to LN in a speech recognition pretraining task.
> <details>
> <summary>read the caption</summary>
> Table 5: Speech pretraining validation loss on LibriSpeech. DyT performs comparably to LN for both wav2vec 2.0 models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T6.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T6.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T6.2.1.1.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T6.2.1.1.1.1" style="font-size:80%;">model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.2.1.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T6.2.1.1.2.1" style="font-size:80%;">LN</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.2.1.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T6.2.1.1.3.1" style="font-size:80%;">DyT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.2.1.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T6.2.1.1.4.1" style="font-size:80%;">change</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T6.2.2.1.1" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="S5.T6.2.2.1.1.1" style="font-size:80%;">HyenaDNA </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.T6.2.2.1.1.2.1" style="font-size:80%;">(</span>Nguyen et al.<span class="ltx_text" id="S5.T6.2.2.1.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.10622v1#bib.bib57" title="">2024</a><span class="ltx_text" id="S5.T6.2.2.1.1.4.3" style="font-size:80%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.2.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T6.2.2.1.2.1" style="font-size:80%;">85.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.2.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T6.2.2.1.3.1" style="font-size:80%;">85.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.2.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T6.2.2.1.4.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S5.T6.2.3.2.1" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="S5.T6.2.3.2.1.1" style="font-size:80%;">Caduceus </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.T6.2.3.2.1.2.1" style="font-size:80%;">(</span>Schiff et al.<span class="ltx_text" id="S5.T6.2.3.2.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.10622v1#bib.bib66" title="">2024</a><span class="ltx_text" id="S5.T6.2.3.2.1.4.3" style="font-size:80%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T6.2.3.2.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T6.2.3.2.2.1" style="font-size:80%;">86.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T6.2.3.2.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T6.2.3.2.3.1" style="font-size:80%;">86.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T6.2.3.2.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S5.T6.2.3.2.4.1" style="font-size:80%;">-</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of DNA classification accuracy experiments using the GenomicBenchmarks dataset.  Two models, HyenaDNA and Caduceus, were evaluated. Each model was trained with either Layer Normalization (LN) or Dynamic Tanh (DyT). The accuracy is reported as an average across all datasets within GenomicBenchmarks. The key observation is that DyT achieves performance comparable to LN, suggesting its suitability as a replacement for LN in this specific task.
> <details>
> <summary>read the caption</summary>
> Table 6: DNA classification accuracy on GenomicBenchmarks, averaged over each dataset in GenomicBenchmarks. DyT achieves comparable performance to LN.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T7.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T7.4.5.1">
<td class="ltx_td ltx_border_tt" id="S6.T7.4.5.1.1" style="padding-top:0.6pt;padding-bottom:0.6pt;"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S6.T7.4.5.1.2" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.5.1.2.1" style="font-size:80%;">inference</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S6.T7.4.5.1.3" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.5.1.3.1" style="font-size:80%;">training</span></th>
</tr>
<tr class="ltx_tr" id="S6.T7.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S6.T7.4.6.2.1" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.6.2.1.1" style="font-size:80%;">LLaMA 7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T7.4.6.2.2" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.6.2.2.1" style="font-size:80%;">layer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T7.4.6.2.3" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.6.2.3.1" style="font-size:80%;">model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T7.4.6.2.4" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.6.2.4.1" style="font-size:80%;">layer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T7.4.6.2.5" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.6.2.5.1" style="font-size:80%;">model</span></th>
</tr>
<tr class="ltx_tr" id="S6.T7.4.7.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.7.3.1" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.7.3.1.1" style="font-size:80%;">RMSNorm</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.7.3.2" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.7.3.2.1" style="font-size:80%;">2.1s</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.7.3.3" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.7.3.3.1" style="font-size:80%;">14.1s</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.7.3.4" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.7.3.4.1" style="font-size:80%;">8.3s</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.7.3.5" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.7.3.5.1" style="font-size:80%;">42.6s</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.8.4">
<td class="ltx_td ltx_align_center" id="S6.T7.4.8.4.1" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.8.4.1.1" style="font-size:80%;">DyT</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.8.4.2" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.8.4.2.1" style="font-size:80%;">1.0s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.8.4.3" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.8.4.3.1" style="font-size:80%;">13.0s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.8.4.4" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.8.4.4.1" style="font-size:80%;">4.8s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.8.4.5" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.8.4.5.1" style="font-size:80%;">39.1s</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.4">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S6.T7.4.4.5" style="padding-top:0.6pt;padding-bottom:0.6pt;"><span class="ltx_text" id="S6.T7.4.4.5.1" style="font-size:80%;">reduction</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S6.T7.1.1.1" style="padding-top:0.6pt;padding-bottom:0.6pt;">
<math alttext="\downarrow\," class="ltx_Math" display="inline" id="S6.T7.1.1.1.m1.1"><semantics id="S6.T7.1.1.1.m1.1a"><mo id="S6.T7.1.1.1.m1.1.1" mathcolor="#009000" mathsize="80%" stretchy="false" xref="S6.T7.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T7.1.1.1.m1.1b"><ci id="S6.T7.1.1.1.m1.1.1.cmml" xref="S6.T7.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.1.1.1.m1.1c">\downarrow\,</annotation><annotation encoding="application/x-llamapun" id="S6.T7.1.1.1.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S6.T7.1.1.1.1" style="font-size:80%;color:#009000;">52.4%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S6.T7.2.2.2" style="padding-top:0.6pt;padding-bottom:0.6pt;">
<math alttext="\downarrow\," class="ltx_Math" display="inline" id="S6.T7.2.2.2.m1.1"><semantics id="S6.T7.2.2.2.m1.1a"><mo id="S6.T7.2.2.2.m1.1.1" mathcolor="#009000" mathsize="80%" stretchy="false" xref="S6.T7.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T7.2.2.2.m1.1b"><ci id="S6.T7.2.2.2.m1.1.1.cmml" xref="S6.T7.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.2.2.2.m1.1c">\downarrow\,</annotation><annotation encoding="application/x-llamapun" id="S6.T7.2.2.2.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S6.T7.2.2.2.1" style="font-size:80%;color:#009000;">7.8%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S6.T7.3.3.3" style="padding-top:0.6pt;padding-bottom:0.6pt;">
<math alttext="\downarrow\," class="ltx_Math" display="inline" id="S6.T7.3.3.3.m1.1"><semantics id="S6.T7.3.3.3.m1.1a"><mo id="S6.T7.3.3.3.m1.1.1" mathcolor="#009000" mathsize="80%" stretchy="false" xref="S6.T7.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T7.3.3.3.m1.1b"><ci id="S6.T7.3.3.3.m1.1.1.cmml" xref="S6.T7.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.3.3.3.m1.1c">\downarrow\,</annotation><annotation encoding="application/x-llamapun" id="S6.T7.3.3.3.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S6.T7.3.3.3.1" style="font-size:80%;color:#009000;">42.2%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S6.T7.4.4.4" style="padding-top:0.6pt;padding-bottom:0.6pt;">
<math alttext="\downarrow\," class="ltx_Math" display="inline" id="S6.T7.4.4.4.m1.1"><semantics id="S6.T7.4.4.4.m1.1a"><mo id="S6.T7.4.4.4.m1.1.1" mathcolor="#009000" mathsize="80%" stretchy="false" xref="S6.T7.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T7.4.4.4.m1.1b"><ci id="S6.T7.4.4.4.m1.1.1.cmml" xref="S6.T7.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.4.4.4.m1.1c">\downarrow\,</annotation><annotation encoding="application/x-llamapun" id="S6.T7.4.4.4.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S6.T7.4.4.4.1" style="font-size:80%;color:#009000;">8.2%</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the inference and training times of the LLaMA 7B large language model using two different normalization layer types: RMSNorm and DyT.  The experiment measures the time taken for 100 forward passes (inference) and 100 forward-backward passes (training) on a single 4096-token sequence, using BF16 precision on an Nvidia H100 GPU. The results show a substantial reduction in both inference and training time when using DyT compared to RMSNorm.
> <details>
> <summary>read the caption</summary>
> Table 7: Inference and training latency (BF16 precision) for LLaMA 7B with RMSNorm or DyT. DyT achieves a substantial reduction in both inference and training time.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T8.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T8.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T8.2.3.1.1" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S6.T8.2.3.1.1.1" style="font-size:80%;">model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T8.2.3.1.2" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S6.T8.2.3.1.2.1" style="font-size:80%;">identity</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T8.2.3.1.3" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S6.T8.2.3.1.3.1" style="font-size:80%;">tanh</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T8.2.3.1.4" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S6.T8.2.3.1.4.1" style="font-size:80%;">hardtanh</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T8.2.3.1.5" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S6.T8.2.3.1.5.1" style="font-size:80%;">sigmoid</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T8.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T8.1.1.2" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S6.T8.1.1.2.1" style="font-size:80%;">ViT-S</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.1.1.1" style="padding:0.6pt 10.0pt;">
<span class="ltx_text" id="S6.T8.1.1.1.1" style="font-size:80%;">58.5% </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T8.1.1.1.m1.1"><semantics id="S6.T8.1.1.1.m1.1a"><mo id="S6.T8.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S6.T8.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T8.1.1.1.m1.1b"><ci id="S6.T8.1.1.1.m1.1.1.cmml" xref="S6.T8.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T8.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T8.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S6.T8.1.1.1.2" style="font-size:80%;"> failed</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.1.1.3" style="padding:0.6pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.1.1.3.1" style="font-size:80%;">80.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.1.1.4" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S6.T8.1.1.4.1" style="font-size:80%;">79.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.1.1.5" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S6.T8.1.1.5.1" style="font-size:80%;">79.6%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S6.T8.2.2.2" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S6.T8.2.2.2.1" style="font-size:80%;">ViT-B</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T8.2.2.1" style="padding:0.6pt 10.0pt;">
<span class="ltx_text" id="S6.T8.2.2.1.1" style="font-size:80%;">61.0% </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T8.2.2.1.m1.1"><semantics id="S6.T8.2.2.1.m1.1a"><mo id="S6.T8.2.2.1.m1.1.1" mathsize="80%" stretchy="false" xref="S6.T8.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T8.2.2.1.m1.1b"><ci id="S6.T8.2.2.1.m1.1.1.cmml" xref="S6.T8.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T8.2.2.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T8.2.2.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S6.T8.2.2.1.2" style="font-size:80%;"> failed</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T8.2.2.3" style="padding:0.6pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.2.2.3.1" style="font-size:80%;">82.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T8.2.2.4" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S6.T8.2.2.4.1" style="font-size:80%;">82.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T8.2.2.5" style="padding:0.6pt 10.0pt;"><span class="ltx_text" id="S6.T8.2.2.5.1" style="font-size:80%;">81.6%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ImageNet-1K classification accuracy results for a Vision Transformer model (ViT) using various activation functions in place of the tanh function within the DyT layer.  The goal is to analyze the impact of different squashing functions on model training stability and performance. The results show that employing squashing functions is crucial for stable model training, preventing divergence, and that the tanh function yields the best performance among the tested functions (tanh, hardtanh, sigmoid).  The table also highlights that the absence of a squashing function leads to training instability and divergence.
> <details>
> <summary>read the caption</summary>
> Table 8: ImageNet-1K classification accuracy with different squashing functions. All experiments follow the same training recipe as the original LN-based models. Squashing functions play a crucial role in preventing divergence, with tanh achieving the highest performance among the three functions. “→→\rightarrow→ failed” indicates that training diverged after some progress, with the preceding number representing the highest accuracy reached before divergence.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T9.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T9.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T9.2.3.1.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S6.T9.2.3.1.1.1" style="font-size:80%;">model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T9.2.3.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S6.T9.2.3.1.2.1" style="font-size:80%;">tanh</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T9.2.3.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S6.T9.2.3.1.3.1" style="font-size:80%;">hardtanh</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T9.2.3.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S6.T9.2.3.1.4.1" style="font-size:80%;">sigmoid</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T9.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T9.1.1.1" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="S6.T9.1.1.1.1" style="font-size:80%;">without </span><math alttext="\alpha" class="ltx_Math" display="inline" id="S6.T9.1.1.1.m1.1"><semantics id="S6.T9.1.1.1.m1.1a"><mi id="S6.T9.1.1.1.m1.1.1" mathsize="80%" xref="S6.T9.1.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S6.T9.1.1.1.m1.1b"><ci id="S6.T9.1.1.1.m1.1.1.cmml" xref="S6.T9.1.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T9.1.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S6.T9.1.1.1.m1.1d">italic_α</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T9.1.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S6.T9.1.1.2.1" style="font-size:80%;">81.1%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T9.1.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S6.T9.1.1.3.1" style="font-size:80%;">80.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T9.1.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S6.T9.1.1.4.1" style="font-size:80%;">80.7%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T9.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S6.T9.2.2.1" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="S6.T9.2.2.1.1" style="font-size:80%;">with </span><math alttext="\alpha" class="ltx_Math" display="inline" id="S6.T9.2.2.1.m1.1"><semantics id="S6.T9.2.2.1.m1.1a"><mi id="S6.T9.2.2.1.m1.1.1" mathsize="80%" xref="S6.T9.2.2.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S6.T9.2.2.1.m1.1b"><ci id="S6.T9.2.2.1.m1.1.1.cmml" xref="S6.T9.2.2.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T9.2.2.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S6.T9.2.2.1.m1.1d">italic_α</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T9.2.2.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.2.2.2.1" style="font-size:80%;">82.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T9.2.2.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.2.2.3.1" style="font-size:80%;">82.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T9.2.2.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.2.2.4.1" style="font-size:80%;">81.6%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ImageNet-1K classification accuracy results for Vision Transformer (ViT-B) models.  The experiments compare the performance of ViT-B models with and without the learnable scaling parameter (α) in the Dynamic Tanh (DyT) layer, while keeping other aspects of the training process consistent with the original Layer Normalization (LN) based models. The results demonstrate the importance of the learnable parameter (α) for achieving high performance in the models using DyT.
> <details>
> <summary>read the caption</summary>
> Table 9: ImageNet-1K classification accuracy with ViT-B. All experiments follow the same training recipe as the original LN-based models. The learnable α𝛼\alphaitalic_α is essential for enhancing model performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T10.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T10.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T10.1.1.2" style="padding:0.6pt 2.0pt;"><span class="ltx_text" id="S6.T10.1.1.2.1" style="font-size:80%;">model</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S6.T10.1.1.3" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.1.3.1">
<span class="ltx_p" id="S6.T10.1.1.3.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.1.3.1.1.1" style="font-size:80%;">LN</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S6.T10.1.1.4" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.1.4.1">
<span class="ltx_p" id="S6.T10.1.1.4.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.1.4.1.1.1" style="font-size:80%;">Fixup</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S6.T10.1.1.5" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.1.5.1">
<span class="ltx_p" id="S6.T10.1.1.5.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.1.5.1.1.1" style="font-size:80%;">SkipInit</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S6.T10.1.1.1" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.1.1.1">
<span class="ltx_p" id="S6.T10.1.1.1.1.1" style="width:40.0pt;"><math alttext="\sigma" class="ltx_Math" display="inline" id="S6.T10.1.1.1.1.1.m1.1"><semantics id="S6.T10.1.1.1.1.1.m1.1a"><mi id="S6.T10.1.1.1.1.1.m1.1.1" mathsize="80%" xref="S6.T10.1.1.1.1.1.m1.1.1.cmml">σ</mi><annotation-xml encoding="MathML-Content" id="S6.T10.1.1.1.1.1.m1.1b"><ci id="S6.T10.1.1.1.1.1.m1.1.1.cmml" xref="S6.T10.1.1.1.1.1.m1.1.1">𝜎</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T10.1.1.1.1.1.m1.1c">\sigma</annotation><annotation encoding="application/x-llamapun" id="S6.T10.1.1.1.1.1.m1.1d">italic_σ</annotation></semantics></math><span class="ltx_text" id="S6.T10.1.1.1.1.1.1" style="font-size:80%;">Reparam</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S6.T10.1.1.6" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.1.6.1">
<span class="ltx_p" id="S6.T10.1.1.6.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.1.6.1.1.1" style="font-size:80%;">DyT</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T10.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T10.1.2.1.1" style="padding:0.6pt 2.0pt;"><span class="ltx_text" id="S6.T10.1.2.1.1.1" style="font-size:80%;">ViT-B</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T10.1.2.1.2" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.2.1.2.1">
<span class="ltx_p" id="S6.T10.1.2.1.2.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.2.1.2.1.1.1" style="font-size:80%;">82.3%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T10.1.2.1.3" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.2.1.3.1">
<span class="ltx_p" id="S6.T10.1.2.1.3.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.2.1.3.1.1.1" style="font-size:80%;">77.2%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T10.1.2.1.4" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.2.1.4.1">
<span class="ltx_p" id="S6.T10.1.2.1.4.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.2.1.4.1.1.1" style="font-size:80%;">74.1%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T10.1.2.1.5" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.2.1.5.1">
<span class="ltx_p" id="S6.T10.1.2.1.5.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.2.1.5.1.1.1" style="font-size:80%;">82.5%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T10.1.2.1.6" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.2.1.6.1">
<span class="ltx_p" id="S6.T10.1.2.1.6.1.1" style="width:40.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T10.1.2.1.6.1.1.1" style="font-size:80%;">82.8%</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T10.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T10.1.3.2.1" style="padding:0.6pt 2.0pt;"><span class="ltx_text" id="S6.T10.1.3.2.1.1" style="font-size:80%;">ViT-L</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T10.1.3.2.2" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.3.2.2.1">
<span class="ltx_p" id="S6.T10.1.3.2.2.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.3.2.2.1.1.1" style="font-size:80%;">83.1%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T10.1.3.2.3" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.3.2.3.1">
<span class="ltx_p" id="S6.T10.1.3.2.3.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.3.2.3.1.1.1" style="font-size:80%;">78.1%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T10.1.3.2.4" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.3.2.4.1">
<span class="ltx_p" id="S6.T10.1.3.2.4.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.3.2.4.1.1.1" style="font-size:80%;">75.6%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T10.1.3.2.5" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.3.2.5.1">
<span class="ltx_p" id="S6.T10.1.3.2.5.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.3.2.5.1.1.1" style="font-size:80%;">83.0%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T10.1.3.2.6" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.3.2.6.1">
<span class="ltx_p" id="S6.T10.1.3.2.6.1.1" style="width:40.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T10.1.3.2.6.1.1.1" style="font-size:80%;">83.6%</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T10.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T10.1.4.3.1" style="padding:0.6pt 2.0pt;"><span class="ltx_text" id="S6.T10.1.4.3.1.1" style="font-size:80%;">MAE ViT-B</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T10.1.4.3.2" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.4.3.2.1">
<span class="ltx_p" id="S6.T10.1.4.3.2.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.4.3.2.1.1.1" style="font-size:80%;">83.2%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T10.1.4.3.3" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.4.3.3.1">
<span class="ltx_p" id="S6.T10.1.4.3.3.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.4.3.3.1.1.1" style="font-size:80%;">73.7%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T10.1.4.3.4" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.4.3.4.1">
<span class="ltx_p" id="S6.T10.1.4.3.4.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.4.3.4.1.1.1" style="font-size:80%;">73.1%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T10.1.4.3.5" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.4.3.5.1">
<span class="ltx_p" id="S6.T10.1.4.3.5.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.4.3.5.1.1.1" style="font-size:80%;">83.2%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T10.1.4.3.6" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.4.3.6.1">
<span class="ltx_p" id="S6.T10.1.4.3.6.1.1" style="width:40.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T10.1.4.3.6.1.1.1" style="font-size:80%;">83.7%</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T10.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S6.T10.1.5.4.1" style="padding:0.6pt 2.0pt;"><span class="ltx_text" id="S6.T10.1.5.4.1.1" style="font-size:80%;">MAE ViT-L</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S6.T10.1.5.4.2" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.5.4.2.1">
<span class="ltx_p" id="S6.T10.1.5.4.2.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.5.4.2.1.1.1" style="font-size:80%;">85.5%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S6.T10.1.5.4.3" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.5.4.3.1">
<span class="ltx_p" id="S6.T10.1.5.4.3.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.5.4.3.1.1.1" style="font-size:80%;">74.1%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S6.T10.1.5.4.4" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.5.4.4.1">
<span class="ltx_p" id="S6.T10.1.5.4.4.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.5.4.4.1.1.1" style="font-size:80%;">74.0%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S6.T10.1.5.4.5" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.5.4.5.1">
<span class="ltx_p" id="S6.T10.1.5.4.5.1.1" style="width:40.0pt;"><span class="ltx_text" id="S6.T10.1.5.4.5.1.1.1" style="font-size:80%;">85.4%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S6.T10.1.5.4.6" style="padding:0.6pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T10.1.5.4.6.1">
<span class="ltx_p" id="S6.T10.1.5.4.6.1.1" style="width:40.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T10.1.5.4.6.1.1.1" style="font-size:80%;">85.8%</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 10 presents a comparison of classification accuracy on the ImageNet-1K dataset across several methods for training vision transformers without normalization layers.  The methods compared include DyT (Dynamic Tanh, the method proposed in the paper), Fixup, SkipInit, and Reparam.  These alternative training methods are compared against the baseline approach of using Layer Normalization (LN).  The results demonstrate that DyT consistently outperforms the other methods in achieving higher classification accuracy on the benchmark dataset.
> <details>
> <summary>read the caption</summary>
> Table 10: Classification accuracy on ImageNet-1K. DyT consistently achieves superior performance over other methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S7.T11.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S7.T11.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S7.T11.1.1.2" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.1.2.1">
<span class="ltx_p" id="S7.T11.1.1.2.1.1" style="width:50.0pt;"><span class="ltx_text" id="S7.T11.1.1.2.1.1.1" style="font-size:80%;">model</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S7.T11.1.1.3" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.1.3.1">
<span class="ltx_p" id="S7.T11.1.1.3.1.1" style="width:30.0pt;"><span class="ltx_text" id="S7.T11.1.1.3.1.1.1" style="font-size:80%;">width</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S7.T11.1.1.4" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.1.4.1">
<span class="ltx_p" id="S7.T11.1.1.4.1.1" style="width:30.0pt;"><span class="ltx_text" id="S7.T11.1.1.4.1.1.1" style="font-size:80%;">depth</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S7.T11.1.1.1" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.1.1.1">
<span class="ltx_p" id="S7.T11.1.1.1.1.1" style="width:60.0pt;"><span class="ltx_text" id="S7.T11.1.1.1.1.1.1" style="font-size:80%;">optimal </span><math alttext="\alpha_{0}" class="ltx_centering" display="inline" id="S7.T11.1.1.1.1.1.m1.1"><semantics id="S7.T11.1.1.1.1.1.m1.1a"><msub id="S7.T11.1.1.1.1.1.m1.1.1" xref="S7.T11.1.1.1.1.1.m1.1.1.cmml"><mi id="S7.T11.1.1.1.1.1.m1.1.1.2" mathsize="80%" xref="S7.T11.1.1.1.1.1.m1.1.1.2.cmml">α</mi><mn id="S7.T11.1.1.1.1.1.m1.1.1.3" mathsize="80%" xref="S7.T11.1.1.1.1.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="S7.T11.1.1.1.1.1.m1.1b"><apply id="S7.T11.1.1.1.1.1.m1.1.1.cmml" xref="S7.T11.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S7.T11.1.1.1.1.1.m1.1.1.1.cmml" xref="S7.T11.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S7.T11.1.1.1.1.1.m1.1.1.2.cmml" xref="S7.T11.1.1.1.1.1.m1.1.1.2">𝛼</ci><cn id="S7.T11.1.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S7.T11.1.1.1.1.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T11.1.1.1.1.1.m1.1c">\alpha_{0}</annotation><annotation encoding="application/x-llamapun" id="S7.T11.1.1.1.1.1.m1.1d">italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math></span>
</span>
</th>
</tr>
<tr class="ltx_tr" id="S7.T11.1.2.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S7.T11.1.2.1.1" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.2.1.1.1">
<span class="ltx_p" id="S7.T11.1.2.1.1.1.1" style="width:50.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S7.T11.1.2.1.2" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.2.1.2.1">
<span class="ltx_p" id="S7.T11.1.2.1.2.1.1" style="width:30.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S7.T11.1.2.1.3" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.2.1.3.1">
<span class="ltx_p" id="S7.T11.1.2.1.3.1.1" style="width:30.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S7.T11.1.2.1.4" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.2.1.4.1">
<span class="ltx_p" id="S7.T11.1.2.1.4.1.1" style="width:60.0pt;"><span class="ltx_text" id="S7.T11.1.2.1.4.1.1.1" style="font-size:80%;">(attention/other)</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S7.T11.1.3.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S7.T11.1.3.1.1" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.3.1.1.1">
<span class="ltx_p" id="S7.T11.1.3.1.1.1.1" style="width:50.0pt;"><span class="ltx_text" id="S7.T11.1.3.1.1.1.1.1" style="font-size:80%;">LLaMA 7B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S7.T11.1.3.1.2" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.3.1.2.1">
<span class="ltx_p" id="S7.T11.1.3.1.2.1.1" style="width:30.0pt;"><span class="ltx_text" id="S7.T11.1.3.1.2.1.1.1" style="font-size:80%;">4096</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S7.T11.1.3.1.3" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.3.1.3.1">
<span class="ltx_p" id="S7.T11.1.3.1.3.1.1" style="width:30.0pt;"><span class="ltx_text" id="S7.T11.1.3.1.3.1.1.1" style="font-size:80%;">32</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S7.T11.1.3.1.4" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.3.1.4.1">
<span class="ltx_p" id="S7.T11.1.3.1.4.1.1" style="width:60.0pt;"><span class="ltx_text" id="S7.T11.1.3.1.4.1.1.1" style="font-size:80%;">0.8/0.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T11.1.4.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S7.T11.1.4.2.1" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.4.2.1.1">
<span class="ltx_p" id="S7.T11.1.4.2.1.1.1" style="width:50.0pt;"><span class="ltx_text" id="S7.T11.1.4.2.1.1.1.1" style="font-size:80%;">LLaMA 13B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S7.T11.1.4.2.2" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.4.2.2.1">
<span class="ltx_p" id="S7.T11.1.4.2.2.1.1" style="width:30.0pt;"><span class="ltx_text" id="S7.T11.1.4.2.2.1.1.1" style="font-size:80%;">5120</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S7.T11.1.4.2.3" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.4.2.3.1">
<span class="ltx_p" id="S7.T11.1.4.2.3.1.1" style="width:30.0pt;"><span class="ltx_text" id="S7.T11.1.4.2.3.1.1.1" style="font-size:80%;">40</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S7.T11.1.4.2.4" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.4.2.4.1">
<span class="ltx_p" id="S7.T11.1.4.2.4.1.1" style="width:60.0pt;"><span class="ltx_text" id="S7.T11.1.4.2.4.1.1.1" style="font-size:80%;">0.6/0.15</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T11.1.5.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S7.T11.1.5.3.1" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.5.3.1.1">
<span class="ltx_p" id="S7.T11.1.5.3.1.1.1" style="width:50.0pt;"><span class="ltx_text" id="S7.T11.1.5.3.1.1.1.1" style="font-size:80%;">LLaMA 34B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S7.T11.1.5.3.2" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.5.3.2.1">
<span class="ltx_p" id="S7.T11.1.5.3.2.1.1" style="width:30.0pt;"><span class="ltx_text" id="S7.T11.1.5.3.2.1.1.1" style="font-size:80%;">8196</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S7.T11.1.5.3.3" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.5.3.3.1">
<span class="ltx_p" id="S7.T11.1.5.3.3.1.1" style="width:30.0pt;"><span class="ltx_text" id="S7.T11.1.5.3.3.1.1.1" style="font-size:80%;">48</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S7.T11.1.5.3.4" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.5.3.4.1">
<span class="ltx_p" id="S7.T11.1.5.3.4.1.1" style="width:60.0pt;"><span class="ltx_text" id="S7.T11.1.5.3.4.1.1.1" style="font-size:80%;">0.2/0.05</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T11.1.6.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S7.T11.1.6.4.1" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.6.4.1.1">
<span class="ltx_p" id="S7.T11.1.6.4.1.1.1" style="width:50.0pt;"><span class="ltx_text" id="S7.T11.1.6.4.1.1.1.1" style="font-size:80%;">LLaMA 70B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S7.T11.1.6.4.2" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.6.4.2.1">
<span class="ltx_p" id="S7.T11.1.6.4.2.1.1" style="width:30.0pt;"><span class="ltx_text" id="S7.T11.1.6.4.2.1.1.1" style="font-size:80%;">8196</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S7.T11.1.6.4.3" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.6.4.3.1">
<span class="ltx_p" id="S7.T11.1.6.4.3.1.1" style="width:30.0pt;"><span class="ltx_text" id="S7.T11.1.6.4.3.1.1.1" style="font-size:80%;">80</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S7.T11.1.6.4.4" style="padding:0.6pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T11.1.6.4.4.1">
<span class="ltx_p" id="S7.T11.1.6.4.4.1.1" style="width:60.0pt;"><span class="ltx_text" id="S7.T11.1.6.4.4.1.1.1" style="font-size:80%;">0.2/0.05</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the optimal initial values for the scaling parameter α (alpha) in the Dynamic Tanh (DyT) layer for different sizes of the LLaMA language model.  It reveals that larger models require smaller initial α values.  Importantly, it also demonstrates that it's beneficial to initialize α differently for the DyT layers within the attention blocks compared to the feed-forward networks (FFN) blocks and the final DyT layer before the output.  Specifically, the attention blocks require significantly higher initial α values than other parts of the network.
> <details>
> <summary>read the caption</summary>
> Table 11: Optimal α0subscript𝛼0\alpha_{0}italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT for different LLaMA models. Larger models require smaller α0subscript𝛼0\alpha_{0}italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT values. We find it is important to initialize α𝛼\alphaitalic_α differently in (1) attention blocks (“attention”), versus (2) the FFN blocks, and the final DyT layer before outputs (“other”). α0subscript𝛼0\alpha_{0}italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT in attention blocks require larger values.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S7.T12.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S7.T12.6.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S7.T12.6.1.1.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.1.1.1.1" style="font-size:80%;">width / depth</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T12.6.1.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.1.1.2.1" style="font-size:80%;">8</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T12.6.1.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.1.1.3.1" style="font-size:80%;">16</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T12.6.1.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.1.1.4.1" style="font-size:80%;">32</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T12.6.1.1.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.1.1.5.1" style="font-size:80%;">64</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S7.T12.6.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S7.T12.6.2.1.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.2.1.1.1" style="font-size:80%;">1024</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T12.6.2.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.2.1.2.1" style="font-size:80%;">1.0/1.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T12.6.2.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.2.1.3.1" style="font-size:80%;">1.0/1.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T12.6.2.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.2.1.4.1" style="font-size:80%;">1.0/1.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T12.6.2.1.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.2.1.5.1" style="font-size:80%;">1.0/1.0</span></td>
</tr>
<tr class="ltx_tr" id="S7.T12.6.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S7.T12.6.3.2.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.3.2.1.1" style="font-size:80%;">2048</span></th>
<td class="ltx_td ltx_align_center" id="S7.T12.6.3.2.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.3.2.2.1" style="font-size:80%;">1.0/0.5</span></td>
<td class="ltx_td ltx_align_center" id="S7.T12.6.3.2.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.3.2.3.1" style="font-size:80%;">1.0/0.5</span></td>
<td class="ltx_td ltx_align_center" id="S7.T12.6.3.2.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.3.2.4.1" style="font-size:80%;">1.0/0.5</span></td>
<td class="ltx_td ltx_align_center" id="S7.T12.6.3.2.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.3.2.5.1" style="font-size:80%;">1.0/0.5</span></td>
</tr>
<tr class="ltx_tr" id="S7.T12.6.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S7.T12.6.4.3.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.4.3.1.1" style="font-size:80%;">4096</span></th>
<td class="ltx_td ltx_align_center" id="S7.T12.6.4.3.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.4.3.2.1" style="font-size:80%;">0.8/0.2</span></td>
<td class="ltx_td ltx_align_center" id="S7.T12.6.4.3.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.4.3.3.1" style="font-size:80%;">0.8/0.2</span></td>
<td class="ltx_td ltx_align_center" id="S7.T12.6.4.3.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.4.3.4.1" style="font-size:80%;">0.8/0.2</span></td>
<td class="ltx_td ltx_align_center" id="S7.T12.6.4.3.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.4.3.5.1" style="font-size:80%;">0.8/0.2</span></td>
</tr>
<tr class="ltx_tr" id="S7.T12.6.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b" id="S7.T12.6.5.4.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.5.4.1.1" style="font-size:80%;">8192</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S7.T12.6.5.4.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.5.4.2.1" style="font-size:80%;">0.2/0.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S7.T12.6.5.4.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.5.4.3.1" style="font-size:80%;">0.2/0.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S7.T12.6.5.4.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.5.4.4.1" style="font-size:80%;">0.2/0.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S7.T12.6.5.4.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="S7.T12.6.5.4.5.1" style="font-size:80%;">0.2/0.05</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the optimal initial values for the scaling parameter α0 (alpha-zero) used in the Dynamic Tanh (DyT) layer within the LLaMA large language models.  The optimal α0 values are shown for different model widths and depths, broken down into two categories:  one for α0 values within attention blocks and another for α0 values elsewhere in the model. The results demonstrate a strong correlation between model width and the optimal α0: wider models necessitate smaller α0 values.  Model depth, conversely, has little effect on α0 selection.
> <details>
> <summary>read the caption</summary>
> Table 12: Optimal α0subscript𝛼0\alpha_{0}italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT (attention / other) across model widths and depths in LLaMA training. Model width significantly impacts the choice of α0subscript𝛼0\alpha_{0}italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT, with wider networks requiring smaller values. In contrast, model depth has negligible influence.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T13.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T13.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A2.T13.2.1.1.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.1.1.1.1" style="font-size:80%;">model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T13.2.1.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.1.1.2.1" style="font-size:80%;">LN (original)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T13.2.1.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.1.1.3.1" style="font-size:80%;">DyT (original)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T13.2.1.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.1.1.4.1" style="font-size:80%;">LN (tuned)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T13.2.1.1.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.1.1.5.1" style="font-size:80%;">DyT (tuned)</span></td>
</tr>
<tr class="ltx_tr" id="A2.T13.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T13.2.2.2.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.2.2.1.1" style="font-size:80%;">ViT-B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.2.2.2" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.2.2.2.1" style="font-size:80%;">82.3% </span><span class="ltx_text" id="A2.T13.2.2.2.2.2" style="font-size:70%;">(4e-3)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.2.2.3" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.2.2.3.1" style="font-size:80%;">82.5% </span><span class="ltx_text" id="A2.T13.2.2.2.3.2" style="font-size:70%;">(4e-3)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.2.2.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.2.2.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.2.2.5" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.2.2.5.1" style="font-size:80%;">82.8% </span><span class="ltx_text" id="A2.T13.2.2.2.5.2" style="font-size:70%;">(6e-3)</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T13.2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T13.2.3.3.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.3.3.1.1" style="font-size:80%;">ViT-L</span></th>
<td class="ltx_td ltx_align_center" id="A2.T13.2.3.3.2" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.3.3.2.1" style="font-size:80%;">83.1% </span><span class="ltx_text" id="A2.T13.2.3.3.2.2" style="font-size:70%;">(4e-3)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.3.3.3" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.3.3.3.1" style="font-size:80%;">83.6% </span><span class="ltx_text" id="A2.T13.2.3.3.3.2" style="font-size:70%;">(4e-3)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.3.3.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.3.3.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.3.3.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.3.3.5.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T13.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T13.2.4.4.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.4.4.1.1" style="font-size:80%;">ConvNeXt-B</span></th>
<td class="ltx_td ltx_align_center" id="A2.T13.2.4.4.2" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.4.4.2.1" style="font-size:80%;">83.7% </span><span class="ltx_text" id="A2.T13.2.4.4.2.2" style="font-size:70%;">(4e-3)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.4.4.3" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.4.4.3.1" style="font-size:80%;">83.7% </span><span class="ltx_text" id="A2.T13.2.4.4.3.2" style="font-size:70%;">(4e-3)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.4.4.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.4.4.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.4.4.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.4.4.5.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T13.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T13.2.5.5.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.5.5.1.1" style="font-size:80%;">ConvNeXt-L</span></th>
<td class="ltx_td ltx_align_center" id="A2.T13.2.5.5.2" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.5.5.2.1" style="font-size:80%;">84.3% </span><span class="ltx_text" id="A2.T13.2.5.5.2.2" style="font-size:70%;">(4e-3)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.5.5.3" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.5.5.3.1" style="font-size:80%;">84.4% </span><span class="ltx_text" id="A2.T13.2.5.5.3.2" style="font-size:70%;">(4e-3)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.5.5.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.5.5.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.5.5.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.5.5.5.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T13.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T13.2.6.6.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.6.6.1.1" style="font-size:80%;">MAE ViT-B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.6.6.2" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.6.6.2.1" style="font-size:80%;">83.2% </span><span class="ltx_text" id="A2.T13.2.6.6.2.2" style="font-size:70%;">(2.4e-3)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.6.6.3" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.6.6.3.1" style="font-size:80%;">83.2% </span><span class="ltx_text" id="A2.T13.2.6.6.3.2" style="font-size:70%;">(2.4e-3)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.6.6.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.6.6.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.6.6.5" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.6.6.5.1" style="font-size:80%;">83.7% </span><span class="ltx_text" id="A2.T13.2.6.6.5.2" style="font-size:70%;">(3.2e-3)</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T13.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T13.2.7.7.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.7.7.1.1" style="font-size:80%;">MAE ViT-L</span></th>
<td class="ltx_td ltx_align_center" id="A2.T13.2.7.7.2" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.7.7.2.1" style="font-size:80%;">85.5% </span><span class="ltx_text" id="A2.T13.2.7.7.2.2" style="font-size:70%;">(2.4e-3)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.7.7.3" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.7.7.3.1" style="font-size:80%;">85.4% </span><span class="ltx_text" id="A2.T13.2.7.7.3.2" style="font-size:70%;">(2.4e-3)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.7.7.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.7.7.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.7.7.5" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.7.7.5.1" style="font-size:80%;">85.8% </span><span class="ltx_text" id="A2.T13.2.7.7.5.2" style="font-size:70%;">(3.2e-3)</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T13.2.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T13.2.8.8.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.8.8.1.1" style="font-size:80%;">DINO ViT-B (patch size 16)</span></th>
<td class="ltx_td ltx_align_center" id="A2.T13.2.8.8.2" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.8.8.2.1" style="font-size:80%;">83.2% </span><span class="ltx_text" id="A2.T13.2.8.8.2.2" style="font-size:70%;">(7.5e-4)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.8.8.3" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.8.8.3.1" style="font-size:80%;">83.4% </span><span class="ltx_text" id="A2.T13.2.8.8.3.2" style="font-size:70%;">(7.5e-4)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.8.8.4" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.8.8.4.1" style="font-size:80%;">83.3% </span><span class="ltx_text" id="A2.T13.2.8.8.4.2" style="font-size:70%;">(1e-3)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.8.8.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.8.8.5.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T13.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T13.2.9.9.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.9.9.1.1" style="font-size:80%;">DINO ViT-B (patch size 8)</span></th>
<td class="ltx_td ltx_align_center" id="A2.T13.2.9.9.2" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.9.9.2.1" style="font-size:80%;">84.1% </span><span class="ltx_text" id="A2.T13.2.9.9.2.2" style="font-size:70%;">(5e-4)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.9.9.3" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.9.9.3.1" style="font-size:80%;">84.5% </span><span class="ltx_text" id="A2.T13.2.9.9.3.2" style="font-size:70%;">(5e-4)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.9.9.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.9.9.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.9.9.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.9.9.5.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T13.2.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T13.2.10.10.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.10.10.1.1" style="font-size:80%;">DiT-B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.10.10.2" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.10.10.2.1" style="font-size:80%;">64.9 </span><span class="ltx_text" id="A2.T13.2.10.10.2.2" style="font-size:70%;">(4e-4)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.10.10.3" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.10.10.3.1" style="font-size:80%;">63.9 </span><span class="ltx_text" id="A2.T13.2.10.10.3.2" style="font-size:70%;">(4e-4)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.10.10.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.10.10.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.10.10.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.10.10.5.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T13.2.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T13.2.11.11.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.11.11.1.1" style="font-size:80%;">DiT-L</span></th>
<td class="ltx_td ltx_align_center" id="A2.T13.2.11.11.2" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.11.11.2.1" style="font-size:80%;">45.9 </span><span class="ltx_text" id="A2.T13.2.11.11.2.2" style="font-size:70%;">(4e-4)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.11.11.3" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.11.11.3.1" style="font-size:80%;">45.7 </span><span class="ltx_text" id="A2.T13.2.11.11.3.2" style="font-size:70%;">(4e-4)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.11.11.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.11.11.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.11.11.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.11.11.5.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T13.2.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T13.2.12.12.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.12.12.1.1" style="font-size:80%;">DiT-XL</span></th>
<td class="ltx_td ltx_align_center" id="A2.T13.2.12.12.2" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.12.12.2.1" style="font-size:80%;">19.9 </span><span class="ltx_text" id="A2.T13.2.12.12.2.2" style="font-size:70%;">(4e-4)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.12.12.3" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.12.12.3.1" style="font-size:80%;">20.8 </span><span class="ltx_text" id="A2.T13.2.12.12.3.2" style="font-size:70%;">(4e-4)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.12.12.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.12.12.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.12.12.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.12.12.5.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T13.2.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T13.2.13.13.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.13.13.1.1" style="font-size:80%;">wav2vec 2.0 Base</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.13.13.2" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.13.13.2.1" style="font-size:80%;">1.95 </span><span class="ltx_text" id="A2.T13.2.13.13.2.2" style="font-size:70%;">(5e-4)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.13.13.3" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.13.13.3.1" style="font-size:80%;">1.95 </span><span class="ltx_text" id="A2.T13.2.13.13.3.2" style="font-size:70%;">(5e-4)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.13.13.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.13.13.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.13.13.5" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.13.13.5.1" style="font-size:80%;">1.94 </span><span class="ltx_text" id="A2.T13.2.13.13.5.2" style="font-size:70%;">(6e-4)</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T13.2.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T13.2.14.14.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.14.14.1.1" style="font-size:80%;">wav2vec 2.0 Large</span></th>
<td class="ltx_td ltx_align_center" id="A2.T13.2.14.14.2" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.14.14.2.1" style="font-size:80%;">1.92 </span><span class="ltx_text" id="A2.T13.2.14.14.2.2" style="font-size:70%;">(3e-4)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.14.14.3" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.14.14.3.1" style="font-size:80%;">1.91 </span><span class="ltx_text" id="A2.T13.2.14.14.3.2" style="font-size:70%;">(3e-4)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.14.14.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.14.14.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T13.2.14.14.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.14.14.5.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T13.2.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T13.2.15.15.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.15.15.1.1" style="font-size:80%;">HyenaDNA</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.15.15.2" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.15.15.2.1" style="font-size:80%;">85.2% </span><span class="ltx_text" id="A2.T13.2.15.15.2.2" style="font-size:70%;">(6e-4)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.15.15.3" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.15.15.3.1" style="font-size:80%;">85.2% </span><span class="ltx_text" id="A2.T13.2.15.15.3.2" style="font-size:70%;">(6e-4)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.15.15.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.15.15.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.2.15.15.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.15.15.5.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T13.2.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A2.T13.2.16.16.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.16.16.1.1" style="font-size:80%;">Caduceus</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T13.2.16.16.2" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.16.16.2.1" style="font-size:80%;">86.9% </span><span class="ltx_text" id="A2.T13.2.16.16.2.2" style="font-size:70%;">(8e-3)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T13.2.16.16.3" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T13.2.16.16.3.1" style="font-size:80%;">86.9% </span><span class="ltx_text" id="A2.T13.2.16.16.3.2" style="font-size:70%;">(8e-3)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T13.2.16.16.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.16.16.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T13.2.16.16.5" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T13.2.16.16.5.1" style="font-size:80%;">-</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of models using Layer Normalization (LN) and Dynamic Tanh (DyT) with both original and tuned learning rates on ImageNet-1K.  It shows that tuning the learning rate leads to only minor improvements in DyT models, suggesting the original hyperparameters (designed for LN) are already suitable for DyT.  The '-' indicates instances where tuning didn't improve performance over the original learning rate.  Parenthetical values show the learning rates used.
> <details>
> <summary>read the caption</summary>
> Table 13: Performance comparison between original and tuned learning rates for LN and DyT models. Results show that tuning learning rates provide only modest performance improvements for DyT models, suggesting that the default hyperparameters optimized for LN models are already well-suited for DyT models. Entries marked with “-” indicate no performance gain over the original learning rate. The values in parentheses represent the learning rate used.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T14.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T14.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T14.1.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.1.1.2.1" style="font-size:80%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T14.1.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.1.1.3.1" style="font-size:80%;">LN</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T14.1.1.1" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T14.1.1.1.1" style="font-size:80%;">DyT (</span><math alttext="\alpha_{0}=0.5" class="ltx_Math" display="inline" id="A2.T14.1.1.1.m1.1"><semantics id="A2.T14.1.1.1.m1.1a"><mrow id="A2.T14.1.1.1.m1.1.1" xref="A2.T14.1.1.1.m1.1.1.cmml"><msub id="A2.T14.1.1.1.m1.1.1.2" xref="A2.T14.1.1.1.m1.1.1.2.cmml"><mi id="A2.T14.1.1.1.m1.1.1.2.2" mathsize="80%" xref="A2.T14.1.1.1.m1.1.1.2.2.cmml">α</mi><mn id="A2.T14.1.1.1.m1.1.1.2.3" mathsize="80%" xref="A2.T14.1.1.1.m1.1.1.2.3.cmml">0</mn></msub><mo id="A2.T14.1.1.1.m1.1.1.1" mathsize="80%" xref="A2.T14.1.1.1.m1.1.1.1.cmml">=</mo><mn id="A2.T14.1.1.1.m1.1.1.3" mathsize="80%" xref="A2.T14.1.1.1.m1.1.1.3.cmml">0.5</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T14.1.1.1.m1.1b"><apply id="A2.T14.1.1.1.m1.1.1.cmml" xref="A2.T14.1.1.1.m1.1.1"><eq id="A2.T14.1.1.1.m1.1.1.1.cmml" xref="A2.T14.1.1.1.m1.1.1.1"></eq><apply id="A2.T14.1.1.1.m1.1.1.2.cmml" xref="A2.T14.1.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="A2.T14.1.1.1.m1.1.1.2.1.cmml" xref="A2.T14.1.1.1.m1.1.1.2">subscript</csymbol><ci id="A2.T14.1.1.1.m1.1.1.2.2.cmml" xref="A2.T14.1.1.1.m1.1.1.2.2">𝛼</ci><cn id="A2.T14.1.1.1.m1.1.1.2.3.cmml" type="integer" xref="A2.T14.1.1.1.m1.1.1.2.3">0</cn></apply><cn id="A2.T14.1.1.1.m1.1.1.3.cmml" type="float" xref="A2.T14.1.1.1.m1.1.1.3">0.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T14.1.1.1.m1.1c">\alpha_{0}=0.5</annotation><annotation encoding="application/x-llamapun" id="A2.T14.1.1.1.m1.1d">italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT = 0.5</annotation></semantics></math><span class="ltx_text" id="A2.T14.1.1.1.2" style="font-size:80%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T14.1.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.1.1.4.1" style="font-size:80%;">DyT (tuned)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T14.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T14.2.2.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.2.2.2.1" style="font-size:80%;">ViT-B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.2.2.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.2.2.3.1" style="font-size:80%;">82.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.2.2.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.2.2.4.1" style="font-size:80%;">82.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.2.2.1" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T14.2.2.1.2" style="font-size:80%;">82.6% </span><span class="ltx_text" id="A2.T14.2.2.1.1" style="font-size:70%;">(<math alttext="\alpha_{0}=1.0" class="ltx_Math" display="inline" id="A2.T14.2.2.1.1.m1.1"><semantics id="A2.T14.2.2.1.1.m1.1a"><mrow id="A2.T14.2.2.1.1.m1.1.1" xref="A2.T14.2.2.1.1.m1.1.1.cmml"><msub id="A2.T14.2.2.1.1.m1.1.1.2" xref="A2.T14.2.2.1.1.m1.1.1.2.cmml"><mi id="A2.T14.2.2.1.1.m1.1.1.2.2" xref="A2.T14.2.2.1.1.m1.1.1.2.2.cmml">α</mi><mn id="A2.T14.2.2.1.1.m1.1.1.2.3" xref="A2.T14.2.2.1.1.m1.1.1.2.3.cmml">0</mn></msub><mo id="A2.T14.2.2.1.1.m1.1.1.1" xref="A2.T14.2.2.1.1.m1.1.1.1.cmml">=</mo><mn id="A2.T14.2.2.1.1.m1.1.1.3" xref="A2.T14.2.2.1.1.m1.1.1.3.cmml">1.0</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T14.2.2.1.1.m1.1b"><apply id="A2.T14.2.2.1.1.m1.1.1.cmml" xref="A2.T14.2.2.1.1.m1.1.1"><eq id="A2.T14.2.2.1.1.m1.1.1.1.cmml" xref="A2.T14.2.2.1.1.m1.1.1.1"></eq><apply id="A2.T14.2.2.1.1.m1.1.1.2.cmml" xref="A2.T14.2.2.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="A2.T14.2.2.1.1.m1.1.1.2.1.cmml" xref="A2.T14.2.2.1.1.m1.1.1.2">subscript</csymbol><ci id="A2.T14.2.2.1.1.m1.1.1.2.2.cmml" xref="A2.T14.2.2.1.1.m1.1.1.2.2">𝛼</ci><cn id="A2.T14.2.2.1.1.m1.1.1.2.3.cmml" type="integer" xref="A2.T14.2.2.1.1.m1.1.1.2.3">0</cn></apply><cn id="A2.T14.2.2.1.1.m1.1.1.3.cmml" type="float" xref="A2.T14.2.2.1.1.m1.1.1.3">1.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T14.2.2.1.1.m1.1c">\alpha_{0}=1.0</annotation><annotation encoding="application/x-llamapun" id="A2.T14.2.2.1.1.m1.1d">italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT = 1.0</annotation></semantics></math>)</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T14.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T14.4.5.1.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.5.1.1.1" style="font-size:80%;">ViT-L</span></th>
<td class="ltx_td ltx_align_center" id="A2.T14.4.5.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.5.1.2.1" style="font-size:80%;">83.1%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.5.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.5.1.3.1" style="font-size:80%;">83.6%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.5.1.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.5.1.4.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T14.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T14.4.6.2.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.6.2.1.1" style="font-size:80%;">ConvNeXt-B</span></th>
<td class="ltx_td ltx_align_center" id="A2.T14.4.6.2.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.6.2.2.1" style="font-size:80%;">83.7%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.6.2.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.6.2.3.1" style="font-size:80%;">83.7%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.6.2.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.6.2.4.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T14.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T14.4.7.3.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.7.3.1.1" style="font-size:80%;">ConvNeXt-L</span></th>
<td class="ltx_td ltx_align_center" id="A2.T14.4.7.3.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.7.3.2.1" style="font-size:80%;">84.3%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.7.3.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.7.3.3.1" style="font-size:80%;">84.4%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.7.3.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.7.3.4.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T14.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T14.3.3.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.3.3.2.1" style="font-size:80%;">MAE ViT-B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.3.3.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.3.3.3.1" style="font-size:80%;">83.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.3.3.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.3.3.4.1" style="font-size:80%;">83.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.3.3.1" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T14.3.3.1.2" style="font-size:80%;">83.4% </span><span class="ltx_text" id="A2.T14.3.3.1.1" style="font-size:70%;">(<math alttext="\alpha_{0}=1.0" class="ltx_Math" display="inline" id="A2.T14.3.3.1.1.m1.1"><semantics id="A2.T14.3.3.1.1.m1.1a"><mrow id="A2.T14.3.3.1.1.m1.1.1" xref="A2.T14.3.3.1.1.m1.1.1.cmml"><msub id="A2.T14.3.3.1.1.m1.1.1.2" xref="A2.T14.3.3.1.1.m1.1.1.2.cmml"><mi id="A2.T14.3.3.1.1.m1.1.1.2.2" xref="A2.T14.3.3.1.1.m1.1.1.2.2.cmml">α</mi><mn id="A2.T14.3.3.1.1.m1.1.1.2.3" xref="A2.T14.3.3.1.1.m1.1.1.2.3.cmml">0</mn></msub><mo id="A2.T14.3.3.1.1.m1.1.1.1" xref="A2.T14.3.3.1.1.m1.1.1.1.cmml">=</mo><mn id="A2.T14.3.3.1.1.m1.1.1.3" xref="A2.T14.3.3.1.1.m1.1.1.3.cmml">1.0</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T14.3.3.1.1.m1.1b"><apply id="A2.T14.3.3.1.1.m1.1.1.cmml" xref="A2.T14.3.3.1.1.m1.1.1"><eq id="A2.T14.3.3.1.1.m1.1.1.1.cmml" xref="A2.T14.3.3.1.1.m1.1.1.1"></eq><apply id="A2.T14.3.3.1.1.m1.1.1.2.cmml" xref="A2.T14.3.3.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="A2.T14.3.3.1.1.m1.1.1.2.1.cmml" xref="A2.T14.3.3.1.1.m1.1.1.2">subscript</csymbol><ci id="A2.T14.3.3.1.1.m1.1.1.2.2.cmml" xref="A2.T14.3.3.1.1.m1.1.1.2.2">𝛼</ci><cn id="A2.T14.3.3.1.1.m1.1.1.2.3.cmml" type="integer" xref="A2.T14.3.3.1.1.m1.1.1.2.3">0</cn></apply><cn id="A2.T14.3.3.1.1.m1.1.1.3.cmml" type="float" xref="A2.T14.3.3.1.1.m1.1.1.3">1.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T14.3.3.1.1.m1.1c">\alpha_{0}=1.0</annotation><annotation encoding="application/x-llamapun" id="A2.T14.3.3.1.1.m1.1d">italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT = 1.0</annotation></semantics></math>)</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T14.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T14.4.8.4.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.8.4.1.1" style="font-size:80%;">MAE ViT-L</span></th>
<td class="ltx_td ltx_align_center" id="A2.T14.4.8.4.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.8.4.2.1" style="font-size:80%;">85.5%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.8.4.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.8.4.3.1" style="font-size:80%;">85.4%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.8.4.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.8.4.4.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T14.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T14.4.9.5.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.9.5.1.1" style="font-size:80%;">DINO ViT-B (patch 16)</span></th>
<td class="ltx_td ltx_align_center" id="A2.T14.4.9.5.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.9.5.2.1" style="font-size:80%;">83.2%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.9.5.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.9.5.3.1" style="font-size:80%;">83.4%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.9.5.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.9.5.4.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T14.4.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T14.4.10.6.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.10.6.1.1" style="font-size:80%;">DINO ViT-B (patch 8)</span></th>
<td class="ltx_td ltx_align_center" id="A2.T14.4.10.6.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.10.6.2.1" style="font-size:80%;">84.1%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.10.6.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.10.6.3.1" style="font-size:80%;">84.5%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.10.6.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.10.6.4.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T14.4.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T14.4.11.7.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.11.7.1.1" style="font-size:80%;">DiT-B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.11.7.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.11.7.2.1" style="font-size:80%;">64.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.11.7.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.11.7.3.1" style="font-size:80%;">63.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.11.7.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.11.7.4.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T14.4.12.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T14.4.12.8.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.12.8.1.1" style="font-size:80%;">DiT-L</span></th>
<td class="ltx_td ltx_align_center" id="A2.T14.4.12.8.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.12.8.2.1" style="font-size:80%;">45.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.12.8.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.12.8.3.1" style="font-size:80%;">45.7</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.12.8.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.12.8.4.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T14.4.13.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T14.4.13.9.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.13.9.1.1" style="font-size:80%;">DiT-XL</span></th>
<td class="ltx_td ltx_align_center" id="A2.T14.4.13.9.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.13.9.2.1" style="font-size:80%;">19.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.13.9.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.13.9.3.1" style="font-size:80%;">20.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.13.9.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.13.9.4.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T14.4.14.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T14.4.14.10.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.14.10.1.1" style="font-size:80%;">wav2vec 2.0 Base</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.14.10.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.14.10.2.1" style="font-size:80%;">1.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.14.10.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.14.10.3.1" style="font-size:80%;">1.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.14.10.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.14.10.4.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T14.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T14.4.4.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.4.2.1" style="font-size:80%;">wav2vec 2.0 Large</span></th>
<td class="ltx_td ltx_align_center" id="A2.T14.4.4.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.4.3.1" style="font-size:80%;">1.92</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.4.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.4.4.1" style="font-size:80%;">1.91</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.4.1" style="padding:0.6pt 7.0pt;">
<span class="ltx_text" id="A2.T14.4.4.1.2" style="font-size:80%;">1.90 </span><span class="ltx_text" id="A2.T14.4.4.1.1" style="font-size:70%;">(<math alttext="\alpha_{0}=1.0" class="ltx_Math" display="inline" id="A2.T14.4.4.1.1.m1.1"><semantics id="A2.T14.4.4.1.1.m1.1a"><mrow id="A2.T14.4.4.1.1.m1.1.1" xref="A2.T14.4.4.1.1.m1.1.1.cmml"><msub id="A2.T14.4.4.1.1.m1.1.1.2" xref="A2.T14.4.4.1.1.m1.1.1.2.cmml"><mi id="A2.T14.4.4.1.1.m1.1.1.2.2" xref="A2.T14.4.4.1.1.m1.1.1.2.2.cmml">α</mi><mn id="A2.T14.4.4.1.1.m1.1.1.2.3" xref="A2.T14.4.4.1.1.m1.1.1.2.3.cmml">0</mn></msub><mo id="A2.T14.4.4.1.1.m1.1.1.1" xref="A2.T14.4.4.1.1.m1.1.1.1.cmml">=</mo><mn id="A2.T14.4.4.1.1.m1.1.1.3" xref="A2.T14.4.4.1.1.m1.1.1.3.cmml">1.0</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T14.4.4.1.1.m1.1b"><apply id="A2.T14.4.4.1.1.m1.1.1.cmml" xref="A2.T14.4.4.1.1.m1.1.1"><eq id="A2.T14.4.4.1.1.m1.1.1.1.cmml" xref="A2.T14.4.4.1.1.m1.1.1.1"></eq><apply id="A2.T14.4.4.1.1.m1.1.1.2.cmml" xref="A2.T14.4.4.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="A2.T14.4.4.1.1.m1.1.1.2.1.cmml" xref="A2.T14.4.4.1.1.m1.1.1.2">subscript</csymbol><ci id="A2.T14.4.4.1.1.m1.1.1.2.2.cmml" xref="A2.T14.4.4.1.1.m1.1.1.2.2">𝛼</ci><cn id="A2.T14.4.4.1.1.m1.1.1.2.3.cmml" type="integer" xref="A2.T14.4.4.1.1.m1.1.1.2.3">0</cn></apply><cn id="A2.T14.4.4.1.1.m1.1.1.3.cmml" type="float" xref="A2.T14.4.4.1.1.m1.1.1.3">1.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T14.4.4.1.1.m1.1c">\alpha_{0}=1.0</annotation><annotation encoding="application/x-llamapun" id="A2.T14.4.4.1.1.m1.1d">italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT = 1.0</annotation></semantics></math>)</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T14.4.15.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T14.4.15.11.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.15.11.1.1" style="font-size:80%;">HyenaDNA</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.15.11.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.15.11.2.1" style="font-size:80%;">85.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.15.11.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.15.11.3.1" style="font-size:80%;">85.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.15.11.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.15.11.4.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T14.4.16.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A2.T14.4.16.12.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.16.12.1.1" style="font-size:80%;">Caduceus</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T14.4.16.12.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.16.12.2.1" style="font-size:80%;">86.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T14.4.16.12.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.16.12.3.1" style="font-size:80%;">86.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T14.4.16.12.4" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A2.T14.4.16.12.4.1" style="font-size:80%;">-</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 14 investigates the impact of modifying the initial value of the scaling parameter (α₀) within the Dynamic Tanh (DyT) layer on model performance.  The experiment tunes α₀ for various model architectures and tasks, comparing the results against the default value of α₀=0.5. The findings suggest that the default initialization already yields near-optimal performance in most cases, with only minor improvements observed upon tuning α₀ for specific models.  The table shows the performance differences between the baseline using the default α₀ and a model with a tuned α₀ value.  A '-' in the table indicates no performance improvement from tuning.
> <details>
> <summary>read the caption</summary>
> Table 14: Impact of tuning the α0subscript𝛼0\alpha_{0}italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT in DyT models. Optimizing α0subscript𝛼0\alpha_{0}italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT from the default value (α0=0.5subscript𝛼00.5\alpha_{0}=0.5italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT = 0.5) yields only minor performance gains for select DyT models, implying the default initialization already achieves near-optimal performance. Entries marked with “-” indicate no improvement over the default α0subscript𝛼0\alpha_{0}italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T15.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T15.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T15.2.1.1.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A3.T15.2.1.1.1.1" style="font-size:80%;">model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T15.2.1.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A3.T15.2.1.1.2.1" style="font-size:80%;">BN</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T15.2.1.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A3.T15.2.1.1.3.1" style="font-size:80%;">DyT</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T15.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T15.2.2.1.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A3.T15.2.2.1.1.1" style="font-size:80%;">ResNet-50</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T15.2.2.1.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A3.T15.2.2.1.2.1" style="font-size:80%;">76.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T15.2.2.1.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A3.T15.2.2.1.3.1" style="font-size:80%;">68.9%</span></td>
</tr>
<tr class="ltx_tr" id="A3.T15.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A3.T15.2.3.2.1" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A3.T15.2.3.2.1.1" style="font-size:80%;">VGG19</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T15.2.3.2.2" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A3.T15.2.3.2.2.1" style="font-size:80%;">72.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T15.2.3.2.3" style="padding:0.6pt 7.0pt;"><span class="ltx_text" id="A3.T15.2.3.2.3.1" style="font-size:80%;">71.0%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ImageNet-1K classification accuracy results for ResNet-50 and VGG19 models, comparing the performance when using Batch Normalization (BN) against using Dynamic Tanh (DyT) as a replacement.  The results show a significant performance drop when BN is replaced with DyT in both the ResNet-50 and VGG19 architectures, suggesting that DyT may not be a suitable replacement for BN in classic convolutional neural networks.
> <details>
> <summary>read the caption</summary>
> Table 15: ImageNet-1K classification accuracy with BN and DyT. Replacing BN with DyT in ResNet-50 and VGG19 results in a performance drop, indicating that DyT cannot fully substitute BN in these architectures.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10622/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10622/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}