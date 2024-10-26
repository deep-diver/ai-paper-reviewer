---
title: "LVSM: A Large View Synthesis Model with Minimal 3D Inductive Bias"
summary: "The Large View Synthesis Model (LVSM) achieves state-of-the-art novel view synthesis by using a transformer-based approach that minimizes 3D inductive bias.  Its decoder-only variant shows superior ge....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-22", "🤗 2024-10-24"]
showSummary: true
date: 2024-10-22
draft: false
---

### TL;DR


{{< lead >}}

The Large View Synthesis Model (LVSM) achieves state-of-the-art novel view synthesis by using a transformer-based approach that minimizes 3D inductive bias.  Its decoder-only variant shows superior generalization and scalability, outperforming previous methods even with fewer computational resources.  Both variants significantly improve novel view synthesis quality.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.17242" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces LVSM, a novel transformer-based approach for novel view synthesis that minimizes 3D inductive bias.  LVSM surpasses previous state-of-the-art methods in quality and scalability, particularly its decoder-only variant, even with reduced computational resources.  It demonstrates strong zero-shot generalization to varying numbers of input views and achieves significant quality improvements compared to existing methods.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LVSM, a transformer-based model for novel view synthesis, outperforms existing methods in quality and scalability with minimal 3D inductive bias. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Both encoder-decoder and decoder-only LVSM architectures achieve state-of-the-art results, with the decoder-only variant exhibiting superior zero-shot generalization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LVSM demonstrates strong performance even with reduced computational resources (1-2 GPUs), making it accessible to researchers with limited resources {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png "🔼 Figure 1: LVSM supports feed-forward novel view synthesis from sparse posed image inputs (even from a single view) on both objects and scenes. LVSM achieves significant quality improvements compared with the previous SOTA method, i.e., GS-LRM (Zhang et al., 2024). (Please zoom in for more details.)")





{{< table-caption caption="🔽 Quantitative comparisons on object-level (left) and scene-level (right) view synthesis. For the object-level comparison, we matched the baseline settings with GS-LRM (Zhang et al., 2024) in both input and rendering under both resolution of 256 (Res-256) and resolution of 512 (Res-512). For the scene-level comparison, we use the same validation dataset used by pixelSplat (Charatan et al., 2024), which has 256 resolution." >}}
|  | ABO Collins et al. 2022a | ABO Collins et al. 2022a | ABO Collins et al. 2022a | GSO Downs et al.. 2022 | GSO Downs et al.. 2022 | GSO Downs et al.. 2022 | RealEstate10k Zhou et al. 2018) | RealEstate10k Zhou et al. 2018) | RealEstate10k Zhou et al. 2018) |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| PSNR | SSIM | LPIPS ↓ | PSNR | SSIM LPIPS | ↓ |  | PSNR ↑ | SSIM | LPIPS ↓ |  |
| Triplane-LRM Liet al.. 2023 (Res-512) | 27.50 | 0.896 | 0.093 | 26.54 | 0.893 | 0.064 | pixelNeRF Yuetal.. 2021 | 20.43 | 0.589 | 0.550 |
| GS-LRM Zhangetai., 2024) (Res-512) | 29.09 | 0.925 | 0.085 | 30.52 | 0.952 | 0.050 | GPNR Suhail etal. 2022a | 24.11 | 0.793 | 0.255 |
| OursEncoder-Decoder (Res-512) | 29.81 | 0.913 | 0.065 | 29.32 | 0.933 | 0.052 | Du et. al Duetal. 2023, | 24.78 | 0.820 | 0.213 |
| Ours Decoder-Only (Res-512) | 32.10 | 0.938 | 0.045 | 32.36 | 0.962 | 0.028 | pixelSplat Charatan et al.. 2024 | 26.09 | 0.863 | 0.136 |
| LGM Tang et al.. 2024) (Res-256) | 20.79 | 0.813 | 0.158 | 21.44 | 0.832 | 0.122 | MVSpiat Cnen etal., 2024 | 26.39 | 0.869 | 0.128 |
| GS-LRM Znang et al., 2024, (Res-256) | 28.98 | 0.926 | 0.074 | 29.59 | 0.944 | 0.051 | GS-LRM Znang et al., 2024 | 28.10 | 0.892 | 0.114 |
| OursEncoder-Decoder (Res-256) | 30.35 | 0.923 | 0.052 | 29.19 | 0.932 | 0.046 | OursEncoder-Decoder | 28.58 | 0.893 | 0.114 |
| Ours Decoder-Only (Res-256) | 32.47 | 0.944 | 0.037 | 31.71 | 0.957 | 0.027 | Ours Decoder-Only | 29.67 | 0.906 | 0.098 |
{{< /table-caption >}}





<details>
<summary>More on figures
</summary>


![](figures/figures_4_0.png "🔼 LVSM model architecture. LVSM first patchifies the posed input images into tokens. The target view to be synthesized is represented by its Plücker ray embeddings and is also tokenized. The input view and target tokens are sent to a full transformer-based model to predict the tokens that are used to regress the target view pixels. We study two LVSM transformer architectures, as a Decoder-only architecture (left) and a Encoder-Decoder architecture (right).")

![](figures/figures_7_0.png "🔼 Figure 3: Object-level visual comparison at 512 resolution. Given 4 sparse input posed images (leftmost column), we compare our high-res object-level novel-view rendering results with two baselines: Instant3D's Triplane-LRM (Li et al., 2023) and GS-LRM (Res-512) (Zhang et al., 2024) . Both our Encoder-Decoder and Decoder-Only models exhibit fewer floaters (first example) and fewer blurry artifacts (second example), compared to the baselines. Our Decoder-Only model effectively handles complex geometry, including small holes (third example) and thin structures (fourth example). Additionally, it preserves the details of high-frequency texture (last example).")

![](figures/figures_8_0.png "🔼 Scene-level visual comparison. We evaluate our encoder-decoder and decoder-only models on scene-level view synthesis, comparing them against the prior leading baseline methods, namely pixelSplat (Charatan et al., 2024), MVSplat (Chen et al., 2024), and GS-LRM (Zhang et al., 2024). Our methods exhibit fewer texture and geometric artifacts, generate more accurate and realistic specular reflections, and are closer to the ground truth images.")

![](figures/figures_16_0.png "🔼 Figure 3: Object-level visual comparison at 512 resolution. Given 4 sparse input posed images (leftmost column), we compare our high-res object-level novel-view rendering results with two baselines: Instant3D’s Triplane-LRM (Li et al., 2023) and GS-LRM (Res-512) (Zhang et al., 2024) . Both our Encoder-Decoder and Decoder-Only models exhibit fewer floaters (first example) and fewer blurry artifacts (second example), compared to the baselines. Our Decoder-Only model effectively handles complex geometry, including small holes (third example) and thin structures (fourth example). Additionally, it preserves the details of high-frequency texture (last example).")


</details>

------







<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Quantitative comparisons on object-level (left) and scene-level (right) view synthesis. For the object-level comparison, we matched the baseline settings with GS-LRM (Zhang et al., 2024) in both input and rendering under both resolution of 256 (Res-256) and resolution of 512 (Res-512). For the scene-level comparison, we use the same validation dataset used by pixelSplat (Charatan et al., 2024), which has 256 resolution." >}}
|  | RealEstate10k Zhou et al. 2018) | RealEstate10k Zhou et al. 2018) | RealEstate10k Zhou et al. 2018) |
| --- | --- | --- | --- |
|  | PSNR ↑ | SSIM | LPIPS ↓ |
| Ours Encoder-Decoder (6 + 18) | 28.32 | 0.888 | 0.117 |
| Ours Encoder-Decoder (12 + 12) | 27.39 | 0.869 | 0.137 |
| Ours Encoder-Decoder (18 +6) | 26.80 | 0.855 | 0.152 |
| Ours Decoder-Only (24 layers) | 28.89 | 0.894 | 0.108 |
| Ours Decoder-Only (18 layers) | 28.77 | 0.892 | 0.109 |
| Ours Decoder-Only (12 layers) | 28.61 | 0.890 | 0.111 |
| Ours Decoder-Only (6 layers) | 27.62 | 0.869 | 0.129 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Quantitative comparisons on object-level (left) and scene-level (right) view synthesis. For the object-level comparison, we matched the baseline settings with GS-LRM (Zhang et al., 2024) in both input and rendering under both resolution of 256 (Res-256) and resolution of 512 (Res-512). For the scene-level comparison, we use the same validation dataset used by pixelSplat (Charatan et al., 2024), which has 256 resolution." >}}
|  | GSO Downs et al. 2022 | GSO Downs et al. 2022 | GSO Downs et al. 2022 |
| --- | --- | --- | --- |
|  | PSNR ↑ | SSIM T | LPIPS ↓ |
| Ours Encoder-Decoder | 28.07 | 0.920 | 0.053 |
| Ours w/o latents' self-updating | 26.61 | 0.903 | 0.061 |
|  | RealEstate10k Zhou et al., 2018 | RealEstate10k Zhou et al., 2018 | RealEstate10k Zhou et al., 2018 |
|  | PSNR ↑ | SSIM� | LPIPS ↓ |
| Ours Decoder-Only | 29.67 | 0.906 | 0.098 |
| Ours w/ per-patch prediction | 28.98 | 0.897 | 0.103 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Quantitative comparisons on object-level (left) and scene-level (right) view synthesis. For the object-level comparison, we matched the baseline settings with GS-LRM (Zhang et al., 2024) in both input and rendering under both resolution of 256 (Res-256) and resolution of 512 (Res-512). For the scene-level comparison, we use the same validation dataset used by pixelSplat (Charatan et al., 2024), which has 256 resolution." >}}
|  | GSO Downs et al., 2022 | GSO Downs et al., 2022 | GSO Downs et al., 2022 |
| --- | --- | --- | --- |
|  | PSNR ↑ | SSIMT | LPIPS ↓ |
| Ours Decoder-Only (24 layers) | 27.04 | 0.910 | 0.055 |
| Ours Decoder-Only (18 layers) | 26.81 | 0.907 | 0.057 |
| Ours Decoder-Only (12 layers) | 26.11 | 0.896 | 0.065 |
| Ours Decoder-Only (6 layers) | 24.15 | 0.865 | 0.092 |
{{< /table-caption >}}


</details>

------



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