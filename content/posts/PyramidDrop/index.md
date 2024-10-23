---
title: "PyramidDrop: Accelerating Large Vision-Language Models via Visual Redundancy Reduction"
summary: "PyramidDrop selectively reduces redundant visual tokens in deeper layers of large vision-language models, accelerating training and inference while maintaining performance."
categories: ["Post", "Blog"]
tags: ["AI", "Machine Learning", "Vision-Language Models"]
showSummary: true
date: 2024-10-22
draft: false
---

## TL;DR

{{< lead >}}
Large vision-language models (LVLMs) are computationally intensive due to the high number of image tokens. Traditional methods either lose key information or reduce tokens too early, affecting performance. PyramidDrop introduces a smarter approach: it progressively drops redundant image tokens in deeper layers, leveraging the observation that visual redundancy increases as models process deeper features.

PyramidDrop accelerates training by up to 40% and reduces inference FLOPs by 55%, achieving similar or better performance compared to original models like LLaVA-NeXT. This method can also be applied as a plug-and-play acceleration technique, showing superior results over existing solutions. PyramidDrop highlights that not all visual tokens are equally critical throughout a model's depth, offering valuable insights for future LVLM designs.
{{< /lead >}}

{{< icon "circle-info" >}} [**Read the full paper on arXiv**](https://huggingface.co/papers/2410.17247)

---

### Reading Guide

<details>
<summary>
How to efficiently navigate this paper
</summary>

{{< alert "check" >}}
**Introduction & Related Work ([1](#1-introduction) & 2)**  
Start by understanding the central challenge: LVLMs are slow due to the high number of image tokens. Explore why current token reduction methods fall short. This context sets the stage for PyramidDrop.
{{< /alert >}}

<br>

{{< alert "check" >}}
**Visual Token Redundancy (3.1)**  
The key insight of the paper—image token redundancy increases across layers—is explained here. Understanding this section is crucial for appreciating the motivation behind PyramidDrop.
{{< /alert >}}

<br>

{{< alert "check" >}}
**PyramidDrop Method (3.2)**  
Delve into how PyramidDrop works: a staged approach where token dropping is based on attention weights. This section offers insights into the overall design and functionality.
{{< /alert >}}

<br>

{{< alert "check" >}}
**Efficiency Analysis (3.3)**  
This section justifies the method's efficiency gains. Focus on the general conclusions about computational complexity rather than the fine-grained technical details.
{{< /alert >}}

<br>

{{< alert "check" >}}
**Experiments & Results (4)**  
Understand the trade-offs and performance gains of PyramidDrop compared to baseline models. Focus on key results from Tables 1, 2, 5, and Figures 3, 4.
{{< /alert >}}

<br>

{{< alert "check" >}}
**Ablation Study & Further Analysis (4.2 & 4.3)**  
Review how different hyperparameter choices impact results. Visualizations in Figure 5 add further context.
{{< /alert >}}

<br>

{{< alert "check" >}}
**Conclusion (5)**  
Recap the main takeaways and the significance of PyramidDrop.
{{< /alert >}}

</details>

---

## 1. INTRODUCTION

Large Vision-Language Models (LVLMs) have revolutionized tasks requiring a deep understanding of both visual and textual data. However, their computational cost is significant, especially as image tokens grow with resolution. Previous token reduction methods have either led to information loss or were confined to the early stages of the model, impacting overall performance. This introduction frames the need for innovative approaches to balance efficiency and performance, setting the stage for PyramidDrop, which aims to address these challenges.

### **Key Points**
- LVLM computational cost scales quadratically with image resolution.
- Existing token reduction techniques often result in information loss.
- Image data exhibits substantial spatial redundancy.
- Efficient LVLM training and inference are critical research challenges.
- PyramidDrop offers a novel solution by reducing redundant tokens at deeper layers.

{{< gallery >}}
  <img src="paper_imgs/1.png" class="grid-w33" />
  <img src="paper_imgs/2.png" class="grid-w33" />
{{< /gallery >}}

---

## 2. RELATED WORK

Research on token reduction, particularly within large language and vision-language models, is limited. In LLMs, various methods aim to prune less important tokens or optimize memory usage. Vision-language models, however, have received less attention, with earlier work primarily focused on token reduction for vision transformers (ViTs). PyramidDrop builds upon these foundations by addressing token redundancy throughout the depth of LVLMs, presenting a more adaptive, layer-wise token reduction strategy compared to earlier methods like FastV, which only considered shallow layers.

### **Key Points**
- Overview of LLM and VLM token reduction methods, highlighting the lack of effective techniques for visual token reduction in LVLMs.
- Emphasizes the novelty of PyramidDrop’s layer-wise token reduction approach.
- Contrasts prior methods like FastV, focusing on the adaptive and sophisticated strategy offered by PyramidDrop.

{{< gallery >}}
  <img src="paper_imgs/2.png" class="grid-w33" />
  <img src="paper_imgs/3.png" class="grid-w33" />
{{< /gallery >}}

---

## 3. METHOD

PyramidDrop improves LVLM efficiency by progressively dropping redundant image tokens across multiple stages of the model. It splits the LVLM's forward pass into several stages, dropping a predefined percentage of tokens at the end of each stage, based on attention weights. This method is both lightweight and effective, reducing the number of tokens in later layers where redundancy is highest, leading to significant efficiency gains during both training and inference.

Key experiments show up to 40% reduction in training time and 55% reduction in inference FLOPs for LLaVA-NeXT-7B, with minimal to no performance loss. The strategy involves identifying less important tokens using a lightweight attention mechanism, focusing on the attention values between image tokens and the last instruction token.

### **Key Points**
- Visual token importance decreases in deeper layers.
- PyramidDrop progressively reduces tokens over multiple stages.
- 40% reduction in training time and 55% reduction in inference FLOPs for LLaVA-NeXT-7B.
- Adaptive token dropping is based on lightweight attention mechanisms.

![Example](paper_imgs/figure_2_0.png)

{{< gallery >}}
  <img src="paper_imgs/3.png" class="grid-w33" />
  <img src="paper_imgs/4.png" class="grid-w33" />
{{< /gallery >}}

---

## 4. EXPERIMENTS

The experiments demonstrate PyramidDrop's efficiency and its minimal impact on performance across 14 benchmarks, including TextVQA and DocVQA. Both LLaVA-1.5 and LLaVA-NeXT models were used, showing a significant reduction in GPU hours and FLOPs. Results indicate that PyramidDrop can serve as a plug-and-play acceleration method for inference, with performance gains maintained even when large portions of image tokens are dropped.

### **Key Points**
- 40% reduction in training time for LLaVA-NeXT.
- Evaluated on 14 benchmarks across LVLMs.
- Detailed analysis of token dropping strategies.
- PyramidDrop shows strong promise as an inference acceleration technique.

![Results](paper_imgs/figure_7_0.png)

{{< gallery >}}
  <img src="paper_imgs/6.png" class="grid-w33" />
  <img src="paper_imgs/7.png" class="grid-w33" />
  <img src="paper_imgs/8.png" class="grid-w33" />
  <img src="paper_imgs/9.png" class="grid-w33" />
{{< /gallery >}}

