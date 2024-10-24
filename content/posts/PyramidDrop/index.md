---
title: "PyramidDrop: Accelerating Large Vision-Language Models via Visual Redundancy Reduction"
summary: "PyramidDrop selectively reduces redundant visual tokens in deeper layers of large vision-language models, accelerating training and inference while maintaining performance."
categories: ["Post", "Blog"]
tags: ["AI", "Machine Learning", "Vision-Language Models"]
showSummary: true
date: 2024-10-22
draft: false
---

### TL;DR

{{< lead >}}

blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah 

{{< /lead >}}

{{< button href="#button" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?

blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah 

#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} blah blah blah blah blah blah blah blah blah {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} blah blah blah blah blah blah blah blah blah {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} blah blah blah blah blah blah blah blah blah {{< /typeit >}}
{{< /alert >}}

------

#### Visual Insights

![Results](paper_imgs/figure_2_0.png "Figure 1. Observatioins about visual redundancy acoross layers. Left: TextVQA performance of LLaVA-1.5 with varying ratio of retained image tokens at different layer. The preserved image tokens are those that receive the highest attention from the text tokens. Right: Visualization of attention map in shallow and deep layers.")

<br><table id='1' style='font-size:14px'><tr><td>Model</td><td>Train & Infer</td><td>GPU hours</td><td>#patches</td><td>Infer Flops(T)</td><td>MME</td><td>MMB</td><td>MMB CN</td><td>SEEDI</td><td>MM Star</td><td>POPE</td><td>Avg</td></tr><tr><td rowspan="4">LLaVA -NeXT-7B</td><td>vanilla</td><td>366</td><td>5</td><td>20.8</td><td>1534.1</td><td>68.7</td><td>60.5</td><td>71.1</td><td>41.1</td><td>86.1</td><td>67.4</td></tr><tr><td>PDrop</td><td>218</td><td>5</td><td>9.46</td><td>1540.8</td><td>67.8</td><td>60.6</td><td>69.9</td><td>41.7</td><td>86.5</td><td>67.3</td></tr><tr><td>vanilla</td><td>483</td><td>9</td><td>40.6</td><td>1544.7</td><td>67.4</td><td>60.0</td><td>69.5</td><td>40.0</td><td>86.3</td><td>66.7</td></tr><tr><td>PDrop</td><td>269</td><td>9</td><td>18.1</td><td>1542.0</td><td>68.1</td><td>61.0</td><td>70.3</td><td>40.9</td><td>86.6</td><td>67.3</td></tr><tr><td rowspan="2">LLaVA -1.5-7B</td><td>vanilla</td><td>104</td><td>1</td><td>3.82</td><td>1510.7</td><td>64.3</td><td>58.3</td><td>66.1</td><td>33.2</td><td>85.9</td><td>63.9</td></tr><tr><td>PDrop</td><td>79</td><td>1</td><td>1.78</td><td>1467.3</td><td>66.1</td><td>58.5</td><td>65.5</td><td>34.0</td><td>86.0</td><td>63.9</td></tr></table>

![Results](paper_imgs/table.png "Table 1. LVLM w and w/o our method on 6 benchmarks. Benchmark names are abbreviated due to space limits. MMB: MMBenchmark (Liu et al., 2023); MMBCN : MMBench-Chinese (Liu et al.,2023); SEEDI: SEED-Bench (Image) (Li et al., 2023b). We denote PyramidDrop as PDrop.")

<details>
<summary>More visual insights
</summary>

![Results](paper_imgs/figure_3_0.png "Figure 2. Overview of PyramidDrop. We divide the forward pass of the LLM into multiple stages, and drop part of the image tokens at the end of each stage with a pre-defined ratio. The dropping is based on a lightweight attention calculation with a negligible time overhead, and according to this criterion, the LLM accurately selects important image tokens related to instruction. Due to the efficient redundancy reduction strategy, the average sequence length decreases rapidly.")
![Results](paper_imgs/figure_7_0.png "Figure 3. We compare the performance of the original LLaVA-1.5 and LLaVA-1.5 trained using PDrop, where we preserve different ratios of image tokens at layer 2, 8, 16, and 24, respectively. The horizontal axis represents the proportion of retained image tokens according to attention score.")
</details>

### Section Summary

#### Introduction

blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah 

{{< alert "reference" >}}
Ref. [blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}

<details>
<summary>
More references to follow-up
</summary>

{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
</details>

#### Related Work

blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah 

{{< alert "reference" >}}
Ref. [blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}

<details>
<summary>
More references to follow-up
</summary>

{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
</details>

#### Method

blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah 

{{< alert "reference" >}}
Ref. [blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}

<details>
<summary>
More references to follow-up
</summary>

{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
</details>

#### Experiments

blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah 

{{< alert "reference" >}}
Ref. [blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}

<details>
<summary>
More references to follow-up
</summary>

{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
{{< alert "reference" >}}
[blah blah blah blah blah blah blah blah blah](#)
{{< /alert >}}
</details>

### Paper Image

{{< gallery >}}
  <img src="paper_imgs/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
  <img src="paper_imgs/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
  <img src="paper_imgs/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
  <img src="paper_imgs/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
  <img src="paper_imgs/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
  <img src="paper_imgs/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
  <img src="paper_imgs/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
  <img src="paper_imgs/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
  <img src="paper_imgs/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
  <img src="paper_imgs/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
  <img src="paper_imgs/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
  <img src="paper_imgs/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
  <img src="paper_imgs/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
  <img src="paper_imgs/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}

---

<!-- ### Reading Guide

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
 -->
