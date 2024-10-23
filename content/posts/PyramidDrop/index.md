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