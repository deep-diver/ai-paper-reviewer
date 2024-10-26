---
title: "WAFFLE: Multi-Modal Model for Automated Front-End Development"
summary: "WAFFLE is a new fine-tuning approach for multi-modal language models that significantly improves automated front-end web development by enhancing their understanding of HTML structure and aligning the....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-24", "🤗 2024-10-25"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

WAFFLE is a new fine-tuning approach for multi-modal language models that significantly improves automated front-end web development by enhancing their understanding of HTML structure and aligning their understanding of UI images and HTML code, leading to state-of-the-art results on multiple benchmarks.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18362" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
WAFFLE is a novel fine-tuning strategy for multi-modal large language models (MLLMs) that improves the automation of HTML code generation from UI designs.  It addresses two key challenges: representing HTML's hierarchical structure and bridging the gap between visual UI designs and text-based HTML.  WAFFLE uses a structure-aware attention mechanism and contrastive fine-tuning to achieve state-of-the-art performance on UI-to-HTML code generation benchmarks.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} WAFFLE improves the accuracy of HTML code generation from UI designs by using structure-aware attention and contrastive learning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} WAFFLE outperforms existing methods on two benchmark datasets, WebSight-Test and Design2Code. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} WAFFLE is model-independent and can be applied to improve any MLLM for UI-to-HTML code generation. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png "🔼 Figure 1: Removing the children of the element <div id='left-column'> highlighted in yellow does not affect the structure of the visual layout of itself or its sibling element <div id='right-column'>.")





{{< table-caption caption="🔽 Table 2: Main results on the WebSight-Test dataset." >}}
| Shanchao Liang | Nan Jiang | Shangshu Qian | Lin Tan |
| --- | --- | --- | --- |
| Purdue University | Purdue University | Purdue University | Purdue University |
| liang422@purdue.edu | jiang719@purdue.edu | qian151 @purdue.edu | lintan@purdue.edu |
{{< /table-caption >}}





<details>
<summary>More on figures
</summary>


![](figures/figures_3_0.png "🔼 Overview of WAFFLE, including training data mutation, structure-aware attention, and contrastive learning.")

![](figures/figures_4_0.png "🔼 Example of structure-aware attention.")

![](figures/figures_12_0.png "🔼 Figure 5: Example test instance from WebSight-Test dataset, with the generated images by GPT-40, Standard FT, and WAFFLE.")

![](figures/figures_12_1.png "🔼 Figure 6: Illustration of the tuning process of the parameter that controls the effect of structure-aware attention. In (b), the green line almost overlaps with the blue line.")


</details>

------







<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Main results on the WebSight-Test dataset." >}}
| Backbones | Techniques | HTML-Match (%) ↑ | CW-SSIM ↑ | CLIP ↑ | Low-Level Element Matching (LLEM) (%) ↑ | Low-Level Element Matching (LLEM) (%) ↑ | Low-Level Element Matching (LLEM) (%) ↑ | Low-Level Element Matching (LLEM) (%) ↑ | Low-Level Element Matching (LLEM) (%) ↑ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Backbones | Techniques | HTML-Match (%) ↑ | CW-SSIM ↑ | CLIP ↑ | Average | Block-Match | Text | Position | Color |
| Gemini 1.5 Pro GPT-4o mini GPT-4o | Prompting | 9.40 | 0.3385 | 88.55 | 90.16 | 94.31 | 98.41 | 84.73 | 83.18 |
| Gemini 1.5 Pro GPT-4o mini GPT-4o | Prompting | 10.20 | 0.3055 | 87.72 | 87.54 | 92.59 | 98.48 | 82.65 | 76.45 |
| Gemini 1.5 Pro GPT-4o mini GPT-4o | Prompting | 11.40 | 0.3666 | 89.03 | 92.18 | 94.66 | 98.43 | 87.04 | 88.60 |
| Moondream2 | Standard FT | 21.60 | 0.4233 | 89.92 | 90.59 | 91.73 | 96.98 | 87.56 | 86.77 |
| Moondream2 | WAFFLE | 27.60 | 0.4486 | 89.98 | 91.72 | 92.26 | 97.25 | 89.55 | 87.81 |
| VLM-WebSight | Standard FT | 28.00 | 0.5023 | 93.30 | 92.73 | 97.95 | 90.72 | 91.07 | 93.45 |
| VLM-WebSight | WAFFLE | 37.00 | 0.6005 | 94.57 | 95.16 | 93.62 | 98.16 | 93.29 | 95.57 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 4: Ablation studies on the two test datasets. LLEM refers to the averaged Low-Level Element Matching." >}}
| Backbones | Techniques | WebSight-Test | WebSight-Test | WebSight-Test | WebSight-Test | Design2Code | Design2Code | Design2Code |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Backbones | Techniques | HTML-Match (%) ↑ | CW-SSIM ↑ | CLIP ↑ | LLEM (%) ↑ | CW-SSIM ↑ | CLIP ↑ | LLEM (%) ↑ |
| Moondream2 | Standard FT | 21.60 | 0.4233 | 89.92 | 90.59 | 0.1348 | 46.63 | 40.71 |
| Moondream2 | WAFFLE-attn | 23.60 | 0.4311 | 90.47 | 91.34 | 0.1821 | 67.73 | 56.49 |
| Moondream2 | WAFFLE-contra | 26.00 | 0.4296 | 89.55 | 91.21 | 0.2100 | 76.63 | 65.82 |
| Moondream2 | WAFFLE | 27.60 | 0.4486 | 89.98 | 91.72 | 0.2142 | 79.62 | 67.83 |
| VLM-WebSight | Standard FT | 28.00 | 0.5023 | 93.30 | 92.73 | 0.2518 | 82.35 | 73.00 |
| VLM-WebSight | WAFFLE-attn | 30.80 | 0.5411 | 94.29 | 94.20 | 0.2480 | 85.64 | 75.34 |
| VLM-WebSight | WAFFLE-contra | 35.80 | 0.5677 | 95.08 | 95.30 | 0.2653 | 85.16 | 76.48 |
| VLM-WebSight | WAFFLE | 37.00 | 0.6005 | 94.57 | 95.16 | 0.2815 | 85.98 | 77.81 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 5: Human evaluation on two datasets using VLM-WebSight as the backbone. The numbers are shown as 'xly (x+y)', where x is the result on WebSight-Test and y is the result on Design2Code." >}}
| Techniques | Rank 1 ↑ | Rank 2 ↑ | Rank 3 ↑ | Avg Rankings ↓ |
| --- | --- | --- | --- | --- |
| Standard FT | 7117 (24) | 14|13 (27) | 17|18 (35) | 2.9012.42 (2.66) |
| WAFFLE-attn | 15|16 (31) | 9117 (26) | 24116 (40) | 2.55 12.37 (2.46) |
| WAFFLE-contra | 38120 (58) | 8111 (19) | 10|15 (25) | 1.67 12.38 (2.02) |
| WAFFLE | 27132 (59) | 18112 (30) | 10| 9 (19) | 1.88 l1.85 (1.87) |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 6: CW-SSIM on 20 samples using the VLM-WebSight backbone. “Prior” refers to “without intermediate mistakes”, and “Current” to “with intermediate mistakes”." >}}
| Techniques | Prior | Current | Drop (%) |
| --- | --- | --- | --- |
| WAFFLE-attn | 0.8002 | 0.5797 | 27.55 |
| WAFFLE | 0.8291 | 0.7932 | 4.34 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 7: Specification for Mutation Rules to construct the Contrastive dataset." >}}
| Class | Failure Type | Specification |
| --- | --- | --- |
| CSS | Color | Random Color in Range [#000000 , #FFFFFF] |
| CSS | Size | Random Size in [0, 500] pixels |
| CSS | Margin | Random Size in [0, 100] pixels |
| CSS | Font | Random Size in [0, 40] pixels |
| CSS | Display | Random Keyword for text-align, display, flex-direction, and justify-content |
| CSS | Position | Random Keyword for border-radius, position, top, and right |
| HTML | Structure | Duplication of a Random HTML Element, excluding , , ,  |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 8: Distance (d) and similarity (sim) between averaged image embeddings v<sup>i</sup> and text embeddings t<sup>i</sup>, using Moondream2 as the backbone." >}}
| Techniques | d(vi, ti) ↓ | sim(vi, ti) ↑ |
| --- | --- | --- |
| Standard FT | 1.3395 | 0.1027 |
| WAFFLE-attn | 0.8447 | 0.6244 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 9: Distance (d) and similarity (sim) between each averaged image embeddings v² with the corresponding centroid c of the group of mutants, with Moondream2 backbone." >}}
| Techniques | d(vi, c) ↑ | sim(vi, cg) ↓ |
| --- | --- | --- |
| Standard FT | 0.1224 | 0.9910 |
| WAFFLE-attn | 0.7590 | 0.6202 |
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

{{< /gallery >}}