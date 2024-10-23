---
title: "PyramidDrop: Accelerating Your Large Vision-Language Models via Pyramid Visual Redundancy Reduction"
summary: "PyramidDrop enhances large vision-language models by selectively dropping redundant visual tokens in deeper layers to accelerate training and inference without sacrificing performance."
categories: ["Post","Blog",]
tags: ["post","lorem","ipsum"]
#externalUrl: ""
showSummary: true
date: 2024-10-22
draft: false
---

## TLDR;

Large vision-language models (LVLMs) are computationally expensive because images require many tokens. Existing methods for reducing these tokens either lose crucial information or only drop tokens early, impacting performance. PyramidDrop offers a novel solution: it strategically drops a portion of image tokens at the end of each stage of the LVLM, starting with a smaller portion in early stages and progressively increasing in later stages. This leverages the observation that visual token redundancy increases as the model processes deeper layers.

This simple yet effective approach significantly accelerates both training and inference. Experiments demonstrate up to a 40% reduction in training time and a 55% reduction in inference FLOPs for LLaVA-NeXT, achieving comparable or even better performance than original models. PyramidDrop can also be used as a plug-and-play inference acceleration technique, outperforming other methods. The results suggest that not all visual tokens are equally important in all layers of the model, providing valuable insights for future LVLMs.

<details>
  <summary>
    How to read guide
  </summary>

  {{< timeline >}}

  {{< timelineItem icon="check" header="Introduction & Related Work" subheader="Section 1 & 2">}}
  Start by grasping the overall problem: LVLMs are slow due to the high number of image tokens. Understand the context of existing token reduction methods and why they are insufficient. This sets the stage for the proposed solution.
  {{< /timelineItem >}}

  {{< timelineItem icon="check" header="Study of Visual Token Redundancy" subheader="Section 3.1">}}
  This is crucial. The paper's core insight is revealed here – that image token redundancy increases across layers of the LVLM. Understanding the empirical evidence (Figure 1) is essential to appreciating the rationale behind PyramidDrop.
  {{< /timelineItem >}}

  {{< timelineItem icon="check" header="PyramidDrop Method" subheader="Section 3.2">}}
  After understanding the problem and the key insight, dive into the proposed solution. Focus on how PyramidDrop works: the staged approach, token dropping based on attention weights, and the overall design (Figure 2).
  {{< /timelineItem >}}

  {{< timelineItem icon="check" header="Efficiency Analysis" subheader="Section 3.3">}}
  This section justifies the claimed efficiency gains. While potentially more technical, understanding the computational complexity argument adds weight to the method's practicality. Don't get bogged down in complex equations; focus on the general conclusions.
  {{< /timelineItem >}}

  {{< timelineItem icon="check" header="Experiments & Results" subheader="Section 4">}}
  This is the validation section. Focus on the key results: improvements in training time and inference speed, and performance comparison with baseline models and other methods (Tables 1, 2, 5, Figures 3, 4). Select a few key results to focus on rather than trying to grasp every detail.
  {{< /timelineItem >}}

  {{< timelineItem icon="check" header="Ablation Study & Further Analysis" subheader="Section 4.2 & 4.3">}}
  This strengthens the claims. Analyze how different choices in hyperparameters (e.g., the dropping ratio) affect the results. This section provides further justification and context. Visualizations in Figure 5 can provide additional intuition.
  {{< /timelineItem >}}

  {{< timelineItem icon="check" header="Conclusion" subheader="Section 5">}}
  Recap the main findings and the significance of the work.
  {{< /timelineItem >}}

  {{< /timeline >}}

</details>

## Test

{{< gallery >}}
  <img src="paper_imgs/1.png" class="grid-w33" />
  <img src="paper_imgs/2.png" class="grid-w33" />
  <img src="paper_imgs/3.png" class="grid-w33" />
  <img src="paper_imgs/4.png" class="grid-w33" />
  <img src="paper_imgs/5.png" class="grid-w33" />
  <img src="paper_imgs/6.png" class="grid-w33" />
  <img src="paper_imgs/7.png" class="grid-w33" />
{{< /gallery >}}