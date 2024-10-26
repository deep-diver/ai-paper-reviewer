---
title: "Stable Consistency Tuning: Understanding and Improving Consistency Models"
summary: "Stable Consistency Tuning (SCT) improves consistency model training by reducing variance and discretization errors, leading to faster convergence and state-of-the-art image generation quality on CIFAR....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-24", "🤗 2024-10-25"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

Stable Consistency Tuning (SCT) improves consistency model training by reducing variance and discretization errors, leading to faster convergence and state-of-the-art image generation quality on CIFAR-10 and ImageNet-64.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18958" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper presents Stable Consistency Tuning (SCT), a novel method that improves the training of consistency models for image generation.  SCT addresses issues like high training variance and discretization errors by incorporating variance-reduced learning and a smoother training schedule.  The method achieves state-of-the-art results on benchmark datasets.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Stable Consistency Tuning (SCT) significantly improves the training stability and convergence speed of consistency models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SCT incorporates variance-reduced learning and a smoother training schedule to address the limitations of previous methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SCT achieves state-of-the-art performance on CIFAR-10 and ImageNet-64, setting a new benchmark for consistency models. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png "🔼 Stable consistency tuning (SCT) with variance reduced training target. SCT provides a unifying perspective to understand different training strategies of consistency models.")





{{< table-caption caption="🔽 Table 2: Comparing the quality of samples on CIFAR-10." >}}
| Fu-Yun Wang | Zhengyang Geng | Hongsheng Li |
| --- | --- | --- |
| MMLab, CUHK | Carnegie Mellon University | MMLab, CUHK |
| Hong Kong SAR | Pittsburgh, USA | Hong Kong SAR |
| fywang@link . cuhk · edu . hk | zhengyanggeng@gmail · com | hsli@ee · cuhk · edu. hk |
{{< /table-caption >}}





<details>
<summary>More on figures
</summary>


![](figures/figures_5_0.png "🔼 Figure 2: Phasing the ODE path along the time axis for consistency training. We visualize both training and inference techniques in discrete form for easier understanding.")

![](figures/figures_18_0.png "🔼 Figure 1: Stable consistency tuning (SCT) with variance reduced training target. SCT provides a unifying perspective to understand different training strategies of consistency models.")

![](figures/figures_19_0.png "🔼 Figure 7: 1-step samples from class-conditional SCT trained on CIFAR-10. Each row corresponds to a different class.")

![](figures/figures_20_0.png "🔼 Figure 1: Stable consistency tuning (SCT) with variance reduced training target. SCT provides a unifying perspective to understand different training strategies of consistency models.")

![](figures/figures_21_0.png "🔼 Figure 1: Stable consistency tuning (SCT) with variance reduced training target. SCT provides a unifying perspective to understand different training strategies of consistency models.")

![](figures/figures_22_0.png "🔼 Figure 1: Stable consistency tuning (SCT) with variance reduced training target. SCT provides a unifying perspective to understand different training strategies of consistency models.")

![](figures/figures_23_0.png "🔼 Figure 1: Stable consistency tuning (SCT) with variance reduced training target. SCT provides a unifying perspective to understand different training strategies of consistency models.")

![](figures/figures_24_0.png "🔼 Figure 13: 1-step samples from class-conditional SCT trained on ImageNet-64 (FID 2.23). Each row corresponds to a different class.")

![](figures/figures_25_0.png "🔼 Figure 13: 1-step samples from class-conditional SCT trained on ImageNet-64 (FID 2.23). Each row corresponds to a different class.")

![](figures/figures_26_0.png "🔼 Figure 13: 1-step samples from class-conditional SCT trained on ImageNet-64 (FID 2.23). Each row corresponds to a different class.")


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

  <img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

{{< /gallery >}}