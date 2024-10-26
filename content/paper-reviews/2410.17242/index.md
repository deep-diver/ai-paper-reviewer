---
title: "LVSM: A Large View Synthesis Model with Minimal 3D Inductive Bias"
summary: "LVSM: A new, data-driven view synthesis model outperforms current methods by minimizing 3D assumptions, achieving superior quality and scalability."
categories: ["AI Generated"]
tags: ["🔖 24-10-22", "🤗 24-10-24"]
showSummary: true
date: 2024-10-22
draft: false
---

### TL;DR


{{< lead >}}

The paper introduces the Large View Synthesis Model (LVSM), a novel approach to creating new views of a scene from a limited number of input images.  Unlike many previous methods that heavily rely on 3D assumptions about the scene (like depth information or specific geometric structures), LVSM takes a more data-driven approach. It uses transformers, a type of neural network architecture known for its ability to handle sequential data effectively.  The researchers propose two versions of LVSM: one with an encoder-decoder structure and one that's decoder-only.  The encoder-decoder version first compresses the input images into a compact representation, and then generates new views from this compressed representation.  The decoder-only version directly generates the new views from the input images without any intermediate representation. Both versions significantly outperform existing methods in terms of image quality (measured by PSNR and other metrics) and show improved scalability, meaning they can handle larger scenes and more complex datasets more efficiently. The decoder-only version, in particular, demonstrates impressive zero-shot generalization capabilities— meaning it can produce high-quality images even for numbers of input views it hasn't been trained on. The improvement is achieved by completely removing or minimizing intermediate 3D-related scene representations, thus, allowing the model to focus on directly learning image generation from input data. Overall, LVSM represents a significant step forward in view synthesis, offering a more flexible and effective approach compared to existing methods.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.17242" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does it matter?
The provided research paper introduces LVSM, a novel transformer-based model for novel view synthesis that surpasses existing methods in quality and scalability by minimizing reliance on 3D inductive biases.  This approach represents a significant advancement in the field, offering a more flexible and data-driven approach to view synthesis.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LVSM, a transformer-based model, achieves state-of-the-art novel view synthesis quality, surpassing previous methods by 1.5 to 3.5 dB PSNR. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LVSM minimizes 3D inductive biases, leading to improved generalizability and scalability, outperforming prior methods even with reduced computational resources. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The decoder-only variant of LVSM demonstrates superior zero-shot generalization, achieving higher quality and scalability than the encoder-decoder variant. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png "🔼 Figure 1: LVSM supports feed-forward novel view synthesis from sparse posed image inputs (even from a single view) on both objects and scenes. LVSM achieves significant quality improvements compared with the previous SOTA method, i.e., GS-LRM (Zhang et al., 2024). (Please zoom in for more details.)")

> Figure 1 shows examples of novel view synthesis results of LVSM on both object and scene levels, comparing against the previous state-of-the-art method.





![](charts/charts_10_0.png "🔼 Figure 5: Zero-shot generalization to different number of input images on the GSO dataset (Downs et al., 2022). We note that all models are trained with just 4 input views.")

> The chart displays the PSNR results for decoder-only and encoder-decoder LVSM models, as well as GS-LRM, across varying numbers of input views during zero-shot generalization on the GSO dataset.





{{< table-caption caption="🔽 Table 1: Quantitative comparisons on object-level (left) and scene-level (right) view synthesis. For the object-level comparison, we matched the baseline settings with GS-LRM (Zhang et al., 2024) in both input and rendering under both resolution of 256 (Res-256) and resolution of 512 (Res-512). For the scene-level comparison, we use the same validation dataset used by pixelSplat (Charatan et al., 2024), which has 256 resolution." >}}
<br><table id='1' style='font-size:14px'><tr><td rowspan="2"></td><td colspan="3">ABO Collins et al. 2022a</td><td colspan="3">GSO Downs et al.. 2022</td><td></td><td colspan="3">RealEstate10k Zhou et al. 2018)</td></tr><tr><td>PSNR</td><td>SSIM</td><td>LPIPS ↓</td><td>PSNR</td><td>SSIM LPIPS</td><td>↓</td><td></td><td>PSNR ↑</td><td>SSIM</td><td>LPIPS ↓</td></tr><tr><td>Triplane-LRM Liet al.. 2023 (Res-512)</td><td>27.50</td><td>0.896</td><td>0.093</td><td>26.54</td><td>0.893</td><td>0.064</td><td>pixelNeRF Yuetal.. 2021</td><td>20.43</td><td>0.589</td><td>0.550</td></tr><tr><td>GS-LRM Zhangetai., 2024) (Res-512)</td><td>29.09</td><td>0.925</td><td>0.085</td><td>30.52</td><td>0.952</td><td>0.050</td><td>GPNR Suhail etal. 2022a</td><td>24.11</td><td>0.793</td><td>0.255</td></tr><tr><td>OursEncoder-Decoder (Res-512)</td><td>29.81</td><td>0.913</td><td>0.065</td><td>29.32</td><td>0.933</td><td>0.052</td><td>Du et. al Duetal. 2023,</td><td>24.78</td><td>0.820</td><td>0.213</td></tr><tr><td>Ours Decoder-Only (Res-512)</td><td>32.10</td><td>0.938</td><td>0.045</td><td>32.36</td><td>0.962</td><td>0.028</td><td>pixelSplat Charatan et al.. 2024</td><td>26.09</td><td>0.863</td><td>0.136</td></tr><tr><td>LGM Tang et al.. 2024) (Res-256)</td><td>20.79</td><td>0.813</td><td>0.158</td><td>21.44</td><td>0.832</td><td>0.122</td><td>MVSpiat Cnen etal., 2024</td><td>26.39</td><td>0.869</td><td>0.128</td></tr><tr><td>GS-LRM Znang et al., 2024, (Res-256)</td><td>28.98</td><td>0.926</td><td>0.074</td><td>29.59</td><td>0.944</td><td>0.051</td><td>GS-LRM Znang et al., 2024</td><td>28.10</td><td>0.892</td><td>0.114</td></tr><tr><td>OursEncoder-Decoder (Res-256)</td><td>30.35</td><td>0.923</td><td>0.052</td><td>29.19</td><td>0.932</td><td>0.046</td><td>OursEncoder-Decoder</td><td>28.58</td><td>0.893</td><td>0.114</td></tr><tr><td>Ours Decoder-Only (Res-256)</td><td>32.47</td><td>0.944</td><td>0.037</td><td>31.71</td><td>0.957</td><td>0.027</td><td>Ours Decoder-Only</td><td>29.67</td><td>0.906</td><td>0.098</td></tr></table>{{< /table-caption >}}

> Table 1 quantitatively compares the performance of the proposed LVSM model against various baselines on object-level and scene-level view synthesis tasks, reporting PSNR, SSIM, and LPIPS metrics for different resolutions.



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_4_0.png "🔼 Figure 2: LVSM model architecture. LVSM first patchifies the posed input images into tokens. The target view to be synthesized is represented by its Plücker ray embeddings and is also tokenized. The input view and target tokens are sent to a full transformer-based model to predict the tokens that are used to regress the target view pixels. We study two LVSM transformer architectures, as a Decoder-only architecture (left) and a Encoder-Decoder architecture (right).")

> This figure illustrates the two main architectures of the Large View Synthesis Model (LVSM): a decoder-only architecture and an encoder-decoder architecture, both using transformers to synthesize novel views from input images.


![](figures/figures_7_0.png "🔼 Figure 3: Object-level visual comparison at 512 resolution. Given 4 sparse input posed images (leftmost column), we compare our high-res object-level novel-view rendering results with two baselines: Instant3D’s Triplane-LRM (Li et al., 2023) and GS-LRM (Res-512) (Zhang et al., 2024). Both our Encoder-Decoder and Decoder-Only models exhibit fewer floaters (first example) and fewer blurry artifacts (second example), compared to the baselines. Our Decoder-Only model effectively handles complex geometry, including small holes (third example) and thin structures (fourth example). Additionally, it preserves the details of high-frequency texture (last example).")

> Figure 3 shows a comparison of object-level novel view synthesis results between the proposed LVSM and two baseline methods, highlighting the improved quality and handling of complex geometry by LVSM.


![](figures/figures_8_0.png "🔼 Figure 4: Scene-level visual comparison. We evaluate our encoder-decoder and decoder-only models on scene-level view synthesis, comparing them against the prior leading baseline methods, namely pixelSplat (Charatan et al., 2024), MVSplat (Chen et al., 2024), and GS-LRM (Zhang et al., 2024). Our methods exhibit fewer texture and geometric artifacts, generate more accurate and realistic specular reflections, and are closer to the ground truth images.")

> The figure compares the scene-level view synthesis results of the proposed LVSM models against several baseline methods, highlighting improvements in accuracy and realism.


![](figures/figures_16_0.png "🔼 Figure 3: Object-level visual comparison at 512 resolution. Given 4 sparse input posed images (leftmost column), we compare our high-res object-level novel-view rendering results with two baselines: Instant3D’s Triplane-LRM (Li et al., 2023) and GS-LRM (Res-512) (Zhang et al., 2024). Both our Encoder-Decoder and Decoder-Only models exhibit fewer floaters (first example) and fewer blurry artifacts (second example), compared to the baselines. Our Decoder-Only model effectively handles complex geometry, including small holes (third example) and thin structures (fourth example). Additionally, it preserves the details of high-frequency texture (last example).")

> Figure 3 shows a comparison of object-level novel view rendering results using four input views with the proposed LVSM model and two baseline methods, highlighting the superior quality and detail preservation of the proposed model.


</details>




<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 1: Quantitative comparisons on object-level (left) and scene-level (right) view synthesis. For the object-level comparison, we matched the baseline settings with GS-LRM (Zhang et al., 2024) in both input and rendering under both resolution of 256 (Res-256) and resolution of 512 (Res-512). For the scene-level comparison, we use the same validation dataset used by pixelSplat (Charatan et al., 2024), which has 256 resolution." >}}
<table id='1' style='font-size:14px'><tr><td></td><td colspan="3">RealEstate10k Zhou et al. 2018)</td></tr><tr><td></td><td>PSNR ↑</td><td>SSIM</td><td>LPIPS ↓</td></tr><tr><td>Ours Encoder-Decoder (6 + 18)</td><td>28.32</td><td>0.888</td><td>0.117</td></tr><tr><td>Ours Encoder-Decoder (12 + 12)</td><td>27.39</td><td>0.869</td><td>0.137</td></tr><tr><td>Ours Encoder-Decoder (18 +6)</td><td>26.80</td><td>0.855</td><td>0.152</td></tr><tr><td>Ours Decoder-Only (24 layers)</td><td>28.89</td><td>0.894</td><td>0.108</td></tr><tr><td>Ours Decoder-Only (18 layers)</td><td>28.77</td><td>0.892</td><td>0.109</td></tr><tr><td>Ours Decoder-Only (12 layers)</td><td>28.61</td><td>0.890</td><td>0.111</td></tr><tr><td>Ours Decoder-Only (6 layers)</td><td>27.62</td><td>0.869</td><td>0.129</td></tr></table>{{< /table-caption >}}

> Table 1 quantitatively compares the performance of LVSM against state-of-the-art methods on object-level and scene-level novel view synthesis tasks, using PSNR, SSIM, and LPIPS metrics.


{{< table-caption caption="🔽 Table 1: Quantitative comparisons on object-level (left) and scene-level (right) view synthesis. For the object-level comparison, we matched the baseline settings with GS-LRM (Zhang et al., 2024) in both input and rendering under both resolution of 256 (Res-256) and resolution of 512 (Res-512). For the scene-level comparison, we use the same validation dataset used by pixelSplat (Charatan et al., 2024), which has 256 resolution." >}}
<br><table id='3' style='font-size:14px'><tr><td></td><td colspan="3">GSO Downs et al. 2022</td></tr><tr><td></td><td>PSNR ↑</td><td>SSIM T</td><td>LPIPS ↓</td></tr><tr><td>Ours Encoder-Decoder</td><td>28.07</td><td>0.920</td><td>0.053</td></tr><tr><td>Ours w/o latents' self-updating</td><td>26.61</td><td>0.903</td><td>0.061</td></tr><tr><td></td><td colspan="3">RealEstate10k Zhou et al., 2018</td></tr><tr><td></td><td>PSNR ↑</td><td>SSIM�</td><td>LPIPS ↓</td></tr><tr><td>Ours Decoder-Only</td><td>29.67</td><td>0.906</td><td>0.098</td></tr><tr><td>Ours w/ per-patch prediction</td><td>28.98</td><td>0.897</td><td>0.103</td></tr></table>{{< /table-caption >}}

> Table 1 quantitatively compares the performance of the proposed LVSM model against existing state-of-the-art methods on object-level and scene-level view synthesis tasks, reporting PSNR, SSIM, and LPIPS metrics for different resolutions.


{{< table-caption caption="🔽 Table 1: Quantitative comparisons on object-level (left) and scene-level (right) view synthesis. For the object-level comparison, we matched the baseline settings with GS-LRM (Zhang et al., 2024) in both input and rendering under both resolution of 256 (Res-256) and resolution of 512 (Res-512). For the scene-level comparison, we use the same validation dataset used by pixelSplat (Charatan et al., 2024), which has 256 resolution." >}}
<table id='1' style='font-size:14px'><tr><td></td><td colspan="3">GSO Downs et al., 2022</td></tr><tr><td></td><td>PSNR ↑</td><td>SSIMT</td><td>LPIPS ↓</td></tr><tr><td>Ours Decoder-Only (24 layers)</td><td>27.04</td><td>0.910</td><td>0.055</td></tr><tr><td>Ours Decoder-Only (18 layers)</td><td>26.81</td><td>0.907</td><td>0.057</td></tr><tr><td>Ours Decoder-Only (12 layers)</td><td>26.11</td><td>0.896</td><td>0.065</td></tr><tr><td>Ours Decoder-Only (6 layers)</td><td>24.15</td><td>0.865</td><td>0.092</td></tr></table>{{< /table-caption >}}

> Table 1 quantitatively compares the performance of the proposed LVSM model against several baseline methods on object-level and scene-level novel view synthesis tasks, reporting PSNR, SSIM, and LPIPS metrics.


</details>


### Full paper

{{< gallery >}}
<img src="paper_images/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}