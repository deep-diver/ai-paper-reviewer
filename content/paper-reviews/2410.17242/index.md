---
title: "LVSM: A Large View Synthesis Model with Minimal 3D Inductive Bias"
summary: "LVSM, a novel transformer-based model, achieves state-of-the-art novel view synthesis by eliminating 3D inductive biases, enabling superior quality, scalability, and zero-shot generalization."
categories: ["AI Generated"]
tags: ["🔖 24-10-22", ]
showSummary: true
date: 2024-10-22
draft: false
---

{{< keyword >}} 2410.17242 {{< /keyword >}}

### TL;DR


{{< lead >}}

The paper introduces the Large View Synthesis Model (LVSM), a novel transformer-based method for creating new views of a scene from a limited number of input images. Unlike previous methods that rely on 3D assumptions about the scene (like depth or geometry), LVSM takes a purely data-driven approach.  It explores two architectures: an encoder-decoder model, which processes the input images into a compressed representation before generating new views, and a decoder-only model, which directly generates new views from the input images without any intermediate representation.  The decoder-only model significantly outperforms the encoder-decoder model and achieves state-of-the-art results in terms of image quality, exceeding previous methods by 1.5 to 3.5 dB PSNR.  Importantly, the model demonstrates excellent zero-shot generalization, meaning it can successfully synthesize novel views even when trained on a different number of input views than those it encounters during testing.  Furthermore, it maintains high performance even with limited computing resources, requiring only 1-2 GPUs for training. This makes it a significant advancement in the field due to its superior performance, scalability, and accessibility.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.17242" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.17242" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in computer vision and graphics, particularly those working on novel view synthesis.  It challenges existing methods reliant on 3D inductive biases, proposing a fully data-driven approach that achieves state-of-the-art results with improved scalability and generalization.  The findings inspire new research directions in leveraging transformers for efficient and high-quality view synthesis, and open possibilities for exploration in zero-shot generalization and reduced computational resource requirements.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LVSM surpasses previous methods in novel view synthesis quality, scalability, and zero-shot generalization by adopting a fully data-driven approach. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Both encoder-decoder and decoder-only LVSM architectures demonstrate state-of-the-art performance, with the decoder-only model excelling in quality and scalability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LVSM achieves these results even with reduced computational resources, making it accessible to researchers with limited computing power. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.17242/figures_2_0.png)

> 🔼 Figure 1 shows examples of scene-level and object-level novel view synthesis results using the proposed Large View Synthesis Model (LVSM), comparing its performance against the state-of-the-art method GS-LRM.
> <details>
> <summary>read the caption</summary>
> Figure 1: LVSM supports feed-forward novel view synthesis from sparse posed image inputs (even from a single view) on both objects and scenes. LVSM achieves significant quality improvements compared with the previous SOTA method, i.e., GS-LRM (Zhang et al., 2024). (Please zoom in for more details.)
> </details>





![](https://ai-paper-reviewer.com/2410.17242/charts_10_0.png)

> 🔼 The chart shows the zero-shot generalization performance of three novel view synthesis models (decoder-only LVSM, encoder-decoder LVSM, and GS-LRM) across varying numbers of input views on the GSO dataset.
> <details>
> <summary>read the caption</summary>
> Figure 5: Zero-shot generalization to different number of input images on the GSO dataset (Downs et al., 2022). We note that all models are trained with just 4 input views.
> </details>





{{< table-caption >}}
<br><table id='1' style='font-size:14px'><tr><td rowspan="2"></td><td colspan="3">ABO Collins et al. 2022a</td><td colspan="3">GSO Downs et al.. 2022</td><td></td><td colspan="3">RealEstate10k Zhou et al. 2018)</td></tr><tr><td>PSNR</td><td>SSIM</td><td>LPIPS ↓</td><td>PSNR</td><td>SSIM LPIPS</td><td>↓</td><td></td><td>PSNR ↑</td><td>SSIM</td><td>LPIPS ↓</td></tr><tr><td>Triplane-LRM Liet al.. 2023 (Res-512)</td><td>27.50</td><td>0.896</td><td>0.093</td><td>26.54</td><td>0.893</td><td>0.064</td><td>pixelNeRF Yuetal.. 2021</td><td>20.43</td><td>0.589</td><td>0.550</td></tr><tr><td>GS-LRM Zhangetai., 2024) (Res-512)</td><td>29.09</td><td>0.925</td><td>0.085</td><td>30.52</td><td>0.952</td><td>0.050</td><td>GPNR Suhail etal. 2022a</td><td>24.11</td><td>0.793</td><td>0.255</td></tr><tr><td>OursEncoder-Decoder (Res-512)</td><td>29.81</td><td>0.913</td><td>0.065</td><td>29.32</td><td>0.933</td><td>0.052</td><td>Du et. al Duetal. 2023,</td><td>24.78</td><td>0.820</td><td>0.213</td></tr><tr><td>Ours Decoder-Only (Res-512)</td><td>32.10</td><td>0.938</td><td>0.045</td><td>32.36</td><td>0.962</td><td>0.028</td><td>pixelSplat Charatan et al.. 2024</td><td>26.09</td><td>0.863</td><td>0.136</td></tr><tr><td>LGM Tang et al.. 2024) (Res-256)</td><td>20.79</td><td>0.813</td><td>0.158</td><td>21.44</td><td>0.832</td><td>0.122</td><td>MVSpiat Cnen etal., 2024</td><td>26.39</td><td>0.869</td><td>0.128</td></tr><tr><td>GS-LRM Znang et al., 2024, (Res-256)</td><td>28.98</td><td>0.926</td><td>0.074</td><td>29.59</td><td>0.944</td><td>0.051</td><td>GS-LRM Znang et al., 2024</td><td>28.10</td><td>0.892</td><td>0.114</td></tr><tr><td>OursEncoder-Decoder (Res-256)</td><td>30.35</td><td>0.923</td><td>0.052</td><td>29.19</td><td>0.932</td><td>0.046</td><td>OursEncoder-Decoder</td><td>28.58</td><td>0.893</td><td>0.114</td></tr><tr><td>Ours Decoder-Only (Res-256)</td><td>32.47</td><td>0.944</td><td>0.037</td><td>31.71</td><td>0.957</td><td>0.027</td><td>Ours Decoder-Only</td><td>29.67</td><td>0.906</td><td>0.098</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 quantitatively compares the performance of LVSM against state-of-the-art methods on object-level and scene-level novel view synthesis tasks, reporting PSNR, SSIM, and LPIPS scores for different resolutions.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparisons on object-level (left) and scene-level (right) view synthesis. For the object-level comparison, we matched the baseline settings with GS-LRM (Zhang et al., 2024) in both input and rendering under both resolution of 256 (Res-256) and resolution of 512 (Res-512). For the scene-level comparison, we use the same validation dataset used by pixelSplat (Charatan et al., 2024), which has 256 resolution.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.17242/figures_4_0.png)

> 🔼 The figure illustrates the two transformer-based architectures of the Large View Synthesis Model (LVSM): a decoder-only architecture and an encoder-decoder architecture, showing how input images and target views are processed to generate novel views.
> <details>
> <summary>read the caption</summary>
> Figure 2: LVSM model architecture. LVSM first patchifies the posed input images into tokens. The target view to be synthesized is represented by its Plücker ray embeddings and is also tokenized. The input view and target tokens are sent to a full transformer-based model to predict the tokens that are used to regress the target view pixels. We study two LVSM transformer architectures, as a Decoder-only architecture (left) and a Encoder-Decoder architecture (right).
> </details>



![](https://ai-paper-reviewer.com/2410.17242/figures_7_0.png)

> 🔼 Figure 3 shows a comparison of object-level novel view synthesis results of the proposed LVSM model against two baseline methods, highlighting the improved quality and handling of complex geometry by the LVSM.
> <details>
> <summary>read the caption</summary>
> Figure 3: Object-level visual comparison at 512 resolution. Given 4 sparse input posed images (leftmost column), we compare our high-res object-level novel-view rendering results with two baselines: Instant3D’s Triplane-LRM (Li et al., 2023) and GS-LRM (Res-512) (Zhang et al., 2024) . Both our Encoder-Decoder and Decoder-Only models exhibit fewer floaters (first example) and fewer blurry artifacts (second example), compared to the baselines. Our Decoder-Only model effectively handles complex geometry, including small holes (third example) and thin structures (fourth example). Additionally, it preserves the details of high-frequency texture (last example).
> </details>



![](https://ai-paper-reviewer.com/2410.17242/figures_8_0.png)

> 🔼 Figure 4 shows a qualitative comparison of scene-level view synthesis results between the proposed LVSM and several baseline methods, highlighting improvements in texture, geometry, and specular reflections.
> <details>
> <summary>read the caption</summary>
> Figure 4: Scene-level visual comparison. We evaluate our encoder-decoder and decoder-only models on scene-level view synthesis, comparing them against the prior leading baseline methods, namely pixelSplat (Charatan et al., 2024), MVSplat (Chen et al., 2024), and GS-LRM (Zhang et al., 2024). Our methods exhibit fewer texture and geometric artifacts, generate more accurate and realistic specular reflections, and are closer to the ground truth images.
> </details>



![](https://ai-paper-reviewer.com/2410.17242/figures_16_0.png)

> 🔼 Figure 3 shows a comparison of object-level novel view synthesis results between LVSM and two baseline methods (Triplane-LRM and GS-LRM) across four examples, highlighting LVSM's superior performance in handling complex geometries and high-frequency textures.
> <details>
> <summary>read the caption</summary>
> Figure 3: Object-level visual comparison at 512 resolution. Given 4 sparse input posed images (leftmost column), we compare our high-res object-level novel-view rendering results with two baselines: Instant3D’s Triplane-LRM (Li et al., 2023) and GS-LRM (Res-512) (Zhang et al., 2024). Both our Encoder-Decoder and Decoder-Only models exhibit fewer floaters (first example) and fewer blurry artifacts (second example), compared to the baselines. Our Decoder-Only model effectively handles complex geometry, including small holes (third example) and thin structures (fourth example). Additionally, it preserves the details of high-frequency texture (last example).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td></td><td colspan="3">RealEstate10k Zhou et al. 2018)</td></tr><tr><td></td><td>PSNR ↑</td><td>SSIM</td><td>LPIPS ↓</td></tr><tr><td>Ours Encoder-Decoder (6 + 18)</td><td>28.32</td><td>0.888</td><td>0.117</td></tr><tr><td>Ours Encoder-Decoder (12 + 12)</td><td>27.39</td><td>0.869</td><td>0.137</td></tr><tr><td>Ours Encoder-Decoder (18 +6)</td><td>26.80</td><td>0.855</td><td>0.152</td></tr><tr><td>Ours Decoder-Only (24 layers)</td><td>28.89</td><td>0.894</td><td>0.108</td></tr><tr><td>Ours Decoder-Only (18 layers)</td><td>28.77</td><td>0.892</td><td>0.109</td></tr><tr><td>Ours Decoder-Only (12 layers)</td><td>28.61</td><td>0.890</td><td>0.111</td></tr><tr><td>Ours Decoder-Only (6 layers)</td><td>27.62</td><td>0.869</td><td>0.129</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 quantitatively compares the performance of the proposed LVSM model against several baselines on object-level and scene-level novel view synthesis tasks, reporting PSNR, SSIM, and LPIPS metrics.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparisons on object-level (left) and scene-level (right) view synthesis. For the object-level comparison, we matched the baseline settings with GS-LRM (Zhang et al., 2024) in both input and rendering under both resolution of 256 (Res-256) and resolution of 512 (Res-512). For the scene-level comparison, we use the same validation dataset used by pixelSplat (Charatan et al., 2024), which has 256 resolution.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td></td><td colspan="3">GSO Downs et al., 2022</td></tr><tr><td></td><td>PSNR ↑</td><td>SSIMT</td><td>LPIPS ↓</td></tr><tr><td>Ours Decoder-Only (24 layers)</td><td>27.04</td><td>0.910</td><td>0.055</td></tr><tr><td>Ours Decoder-Only (18 layers)</td><td>26.81</td><td>0.907</td><td>0.057</td></tr><tr><td>Ours Decoder-Only (12 layers)</td><td>26.11</td><td>0.896</td><td>0.065</td></tr><tr><td>Ours Decoder-Only (6 layers)</td><td>24.15</td><td>0.865</td><td>0.092</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 quantitatively compares the performance of LVSM against state-of-the-art methods on object-level and scene-level novel view synthesis tasks, reporting PSNR, SSIM, and LPIPS metrics.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparisons on object-level (left) and scene-level (right) view synthesis. For the object-level comparison, we matched the baseline settings with GS-LRM (Zhang et al., 2024) in both input and rendering under both resolution of 256 (Res-256) and resolution of 512 (Res-512). For the scene-level comparison, we use the same validation dataset used by pixelSplat (Charatan et al., 2024), which has 256 resolution.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.17242/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17242/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17242/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17242/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17242/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17242/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17242/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17242/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17242/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17242/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17242/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17242/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17242/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17242/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17242/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17242/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17242/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}