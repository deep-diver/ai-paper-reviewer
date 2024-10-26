---
title: "WAFFLE: Multi-Modal Model for Automated Front-End Development"
summary: "WAFFLE is a new fine-tuning approach for multi-modal language models that significantly improves automated front-end web development by enhancing their understanding of HTML structure and aligning the....."
categories: ["AI Generated"]
tags: ["2024-10-24"]
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

------



<details>
<summary>More on figures
</summary>


![](figures/figures_3_0.png "🔼 Overview of WAFFLE, including training data mutation, structure-aware attention, and contrastive learning.")

![](figures/figures_4_0.png "🔼 Example of structure-aware attention.")

![](figures/figures_12_0.png "🔼 Figure 5: Example test instance from WebSight-Test dataset, with the generated images by GPT-40, Standard FT, and WAFFLE.")

![](figures/figures_12_1.png "🔼 Figure 6: Illustration of the tuning process of the parameter that controls the effect of structure-aware attention. In (b), the green line almost overlaps with the blue line.")


</details>

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Main results on the WebSight-Test dataset." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 4: Ablation studies on the two test datasets. LLEM refers to the averaged Low-Level Element Matching." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 5: Human evaluation on two datasets using VLM-WebSight as the backbone. The numbers are shown as 'xly (x+y)', where x is the result on WebSight-Test and y is the result on Design2Code." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 6: CW-SSIM on 20 samples using the VLM-WebSight backbone. “Prior” refers to “without intermediate mistakes”, and “Current” to “with intermediate mistakes”." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 7: Specification for Mutation Rules to construct the Contrastive dataset." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 8: Distance (d) and similarity (sim) between averaged image embeddings v<sup>i</sup> and text embeddings t<sup>i</sup>, using Moondream2 as the backbone." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 9: Distance (d) and similarity (sim) between each averaged image embeddings v² with the corresponding centroid c of the group of mutants, with Moondream2 backbone." >}}
{{< /table-caption >}}


</details>

------

