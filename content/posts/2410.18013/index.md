---
title: "Scalable Ranked Preference Optimization for Text-to-Image Generation"
summary: "This paper proposes a scalable method for aligning text-to-image models with human preferences using synthetically generated ranked preference data and a novel ranking-based optimization technique (Ra....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-23", "🤗 2024-10-24"]
showSummary: true
date: 2024-10-23
draft: false
---

### TL;DR


{{< lead >}}

This paper proposes a scalable method for aligning text-to-image models with human preferences using synthetically generated ranked preference data and a novel ranking-based optimization technique (RankDPO).  The approach significantly improves both prompt following and image quality while reducing costs and annotation effort.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18013" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces a scalable and cost-effective method for aligning text-to-image (T2I) models with human preferences using synthetically generated data. It avoids the expensive and time-consuming process of manual annotation by employing pre-trained reward models to generate large-scale ranked preference datasets. The method also introduces a novel ranking-based preference optimization (RankDPO) technique to leverage the richer signal from ranked preferences. The proposed approach shows significant improvements in both prompt following and visual quality across various benchmarks compared to existing methods.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Synthetic data generation for preference optimization eliminates the need for expensive human annotation, drastically improving the scalability and cost-effectiveness of training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} RankDPO, a novel ranking-based preference optimization method, leverages the richer information from ranked preferences to improve the model's performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed approach demonstrates significant improvements in both prompt-following and visual quality on various benchmarks, outperforming existing methods. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_5_0.png "🔼 Figure 2: Overview of our two novel components: (A) Syn-Pic and (B) RankDPO. Left illustrates the pipeline to generate a synthetically ranked preference dataset. It starts by collecting prompts and generating images using the same prompt for different T2I models. Next, we calculate the overall preference score using Reward models (e.g., PickScore, ImageReward). Finally, we rank these images in the decreasing order of preference scores. Right: Given true preference rankings for generated images per prompt, we first obtain predicted ranking by current model checkpoint using scores si (see Eq. 5). In this instance, although the predicted ranking is inverse of the true rankings, the ranks (1, 4) obtains a larger penalty than the ranks (2, 3). This penalty is added to our ranking loss through DCG weights (see Eq. 6). Thus, by optimizing θ with Ranking Loss (see Eq. 7), the updated model addresses the incorrect rankings (1,4). This procedure is repeated over the training process, where the rankings induced by the model aligns with the labelled preferences.")





{{< table-caption caption="🔽 Quantitative Results on GenEval. RankDPO improves results on most categories, notably 'two objects', 'counting', and 'color attribution' for SDXL and SD3-Medium." >}}
| Model | Mean ↑ | Single ↑ | Two ↑ | Counting ↑ | Colors ↑ | Position ↑ | Color Attribution ↑ |
| --- | --- | --- | --- | --- | --- | --- | --- |
| SD v2.1 | 0.50 | 0.98 | 0.51 | 0.44 | 0.85 | 0.07 | 0.17 |
| PixArt-� | 0.48 | 0.98 | 0.50 | 0.44 | 0.80 | 0.08 | 0.07 |
| PixArt-� | 0.53 | 0.99 | 0.65 | 0.46 | 0.82 | 0.12 | 0.12 |
| DALL-E 2 | 0.52 | 0.94 | 0.66 | 0.49 | 0.77 | 0.10 | 0.19 |
| DALL-E 3 | 0.67 | 0.96 | 0.87 | 0.47 | 0.83 | 0.43 | 0.45 |
| SDXL | 0.55 | 0.98 | 0.74 | 0.39 | 0.85 | 0.15 | 0.23 |
| SDXL (Ours) | 0.61 | 1.00 | 0.86 | 0.46 | 0.90 | 0.14 | 0.29 |
| SD3-Medium | 0.70 | 1.00 | 0.87 | 0.63 | 0.84 | 0.28 | 0.58 |
| SD3-Medium (Ours) | 0.74 | 1.00 | 0.90 | 0.72 | 0.87 | 0.31 | 0.66 |
{{< /table-caption >}}


------



<details>
<summary>More on figures
</summary>


![](figures/figures_9_0.png "🔼 Figure 4: Comparison among different preference optimization methods and RankDPO for SDXL. The results illustrate that we generate images with better prompt alignment and aesthetic quality.")

![](figures/figures_17_0.png "🔼 Figure 1: Our approach, trained on a synthetic preference dataset with a ranking objective in the preference optimization, improves prompt following and visual quality for SDXL (Podell et al., 2023) and SD3-Medium (Esser et al., 2024), without requiring any manual annotations.")

![](figures/figures_19_0.png "🔼 Figure 1: Our approach, trained on a synthetic preference dataset with a ranking objective in the preference optimization, improves prompt following and visual quality for SDXL (Podell et al., 2023) and SD3-Medium (Esser et al., 2024), without requiring any manual annotations.")

![](figures/figures_19_1.png "🔼 Figure 1: Our approach, trained on a synthetic preference dataset with a ranking objective in the preference optimization, improves prompt following and visual quality for SDXL (Podell et al., 2023) and SD3-Medium (Esser et al., 2024), without requiring any manual annotations.")


</details>

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 3: Quantitative results on DPG-Bench. DSG (Cho et al., 2024) and VQAScore (Lin et al., 2024) measure prompt following using VQA models while Q-Align (Wu et al., 2024a) measures visual quality using multimodal LLMs." >}}
| Model Name | Prompt Alignment | Prompt Alignment | Visual Quality |
| --- | --- | --- | --- |
|  | DSG Score | VQA Score | Q-Align Score |
| SD1.5 | 63.18 | - | - |
| SD2.1 | 68.09 | - | - |
| Pixart-� | 71.11 | - | - |
| Playgroundv2 | 74.54 | - | - |
| DALL-E 3 | 83.50 | - | - |
| SDXL | 74.65 | 84.33 | 0.72 |
| DPO-SDXL | 76.74 | 85.67 | 0.74 |
| MaPO-SDXL | 74.53 | 84.54 | 0.80 |
| SPO-SDXL | 74.73 | 84.71 | 0.82 |
| SDXL (Ours) | 79.26 | 87.52 | 0.81 |
| SD3-Medium | 85.54 | 90.58 | 0.67 |
| SD3-Medium (Ours) | 86.78 | 90.99 | 0.68 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: Quantitative results on DPG-Bench. DSG (Cho et al., 2024) and VQAScore (Lin et al., 2024) measure prompt following using VQA models while Q-Align (Wu et al., 2024a) measures visual quality using multimodal LLMs." >}}
| Model Name | Prompt Alignment | Prompt Alignment | Visual Quality |
| --- | --- | --- | --- |
|  | DSG Score | VQA Score | Q-Align Score |
| SDXL | 74.65 | 84.33 | 0.72 |
| DPO (Random Labelling) | 75.66 | 84.42 | 0.74 |
| DPO (HPSv2) | 78.04 | 86.22 | 0.83 |
| DPO (Pick-a-Picv2) | 76.74 | 85.67 | 0.74 |
| DPO (5 Rewards) | 78.84 | 86.27 | 0.81 |
| RankDPO (Only SDXL) | 78.40 | 86.76 | 0.74 |
| RankDPO | 79.26 | 87.52 | 0.81 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: Quantitative results on DPG-Bench. DSG (Cho et al., 2024) and VQAScore (Lin et al., 2024) measure prompt following using VQA models while Q-Align (Wu et al., 2024a) measures visual quality using multimodal LLMs." >}}
| Model Name | Prompt Alignment | Prompt Alignment | Visual Quality |
| --- | --- | --- | --- |
|  | DSG Score | VQA Score | Q-Align Score |
| SDXL | 74.65 | 84.33 | 0.72 |
| Supervised Fine-Tuning | 76.56 | 85.45 | 0.78 |
| Weighted Fine-Tuning | 77.02 | 85.55 | 0.79 |
| DPO | 78.84 | 86.27 | 0.81 |
| DPO + Gain Weights | 79.15 | 87.43 | 0.82 |
| RankDPO (Ours) | 79.26 | 87.52 | 0.81 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 6: Comparison of T2I-Compbench Dataset with DPG-Bench, including model attributes, training time, and inference time increases." >}}
| Dataset | Color | Shape | Texture | Spatial | Non-Spatial | DPG Score | Train Time (A100 Days) | Training Data | Same Inference Time |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| SDXL | 58.79 | 46.87 | 52.99 | 21.31 | 31.19 | 74.65 |  |  |  |
| ELLA (SDXL) | 72.60 | 56.34 | 66.86 | 22.14 | 30.69 | 80.23 | 112 | 34M | X |
| RankDPO (SDXL) | 72.33 | 56.93 | 69.67 | 24.53 | 31.33 | 79.26 | 6 | 0.24M |  |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 7: Comparing features of our proposal against baselines that aim to improve T2I model quality post-training. ELLA* also replaces the CLIP text-encoders with T5-XL text-encoder and a 470M parameter adapter applied at each timestep, thereby increasing the inference cost." >}}
| Method | Training Images | A100 GPU days | Equal Inference Cost | DPG-Bench Score |
| --- | --- | --- | --- | --- |
| DPO | 1.0M | 30 |  | 76.74 |
| MaPO | 1.0M | 25 |  | 74.53 |
| SPO | - | 5 | V | 74.73 |
| ELLA* | 34M | 112 | X | 80.23 |
| Ours | 0.24M | 6 | V | 79.26 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Quantitative Results on GenEval. RankDPO improves results on most categories, notably 'two objects', 'counting', and 'color attribution' for SDXL and SD3-Medium." >}}
| Item | Pick-a-Picv2 | Syn-Pic |
| --- | --- | --- |
| Number of prompts | 58 000 | 58 000 |
| Number of images | 1 025 015 | 232 000 |
| Number of preferences | 959 000 | N/A |
| Image generation cost | N/A | $185.60 |
| Annotation/Labelling cost | $47 950.00 | < $20.00 |
| Total cost | $47 950.00 | < $205.60 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Quantitative Results on GenEval. RankDPO improves results on most categories, notably 'two objects', 'counting', and 'color attribution' for SDXL and SD3-Medium." >}}
| Algorithm 1 DataGen: Generate Synthetically Labeled Ranked Preference Dataset (Syn-Pic) |
| --- |
| Input: N prompts (P = {ci}N=1), k T2I Models ({0i}(=1), n Reward Models ({Rv}"=1) Output: Ranked Preference Dataset D Initialize: Synthetic dataset D = ⌀ for cin P do Generate k images x1 x2 , · · . , xk = 01(c), 02(c), . . · , 0k(c) , Initialize preference counts Ci = 0; VA E {1,. . . , k} for each reward model Ri⌀ do Compute scores Ri = Ri⌀ (xi , c); Vi E {1,. . , k} for each pair (i, j) with i ≠ j do if Ri > Rij then Increment preference count Ci = Ci +1 Vi E {1, . · · , k} Compute probabilities ⌀(xi) = n.(ki-1) ; Store entry (c,x1, x2 , · . . , xk, ⌀(x1), ⌀(x2) , . . . , ⌀(xk ( ( ( ( ( ) in D return Ranked Preference Dataset D |
| Algorithm 2 RankDPO: Ranking-based Preference Optimization using Syn-Pic |
| Input: Ranked Preference Dataset D, Initial model ⌀init, Reference model Oref Input: Pre-defined signal-noise schedule {at, ot}�t=1 Hyper-parameters: # Optimization Steps (m), Learning Rate (7), Divergence Control B Initialize: 0 = ⌀init Output: Fine-tuned model ARankDPO for iter = 0 to m do Sample entry (c, x1 x2 , · · · , xk, ⌀(x1 ) , ⌀(x2), · , ⌀(xk ( ( ( ( ( ) ~ D , Sample timestep t ~ U(1, T), and noise E⌀ ~ N(0, I) Compute noisy image x2 = atxi + �t�i Compute model scores Si 스 s(xi , c,t, 0) = ||e⌀ - e⌀(xt, c)112 - ||�i - Eref(Xt, c)113 Determine ranking T by sorting images based on ⌀(x2) in descending order for each pair (i, j) with i > j in T do Compute pairwise gains: Gij = 2⌀(xi) - 2⌀(xi ) Compute discount factors: D(T(i)) = log(1 + �(i)) and D(T(j)) = log(1 + �(j)) Compute pairwise DCG weights: △ij = |Gij| · D(T(i)) - D(T(j)) Compute pairwise loss: Lij = △inj log o (�� (s(xi, c,t,0) - s(x) c,t,01)) Sum pairwise losses: LRankDPO = - Ei>j Lij Compute gradients graditer = V�LRankDPO Update model parameters: 0 = 0 - 7 · graditer Final ARankDPO = 0 return Fine-tuned model ARankDPO |
| Algorithm 3 Generate Syn-Pic and Train RankDPO |
| Input: N prompts (P = {ci}N1), k T2I Models ({0i}i=1), n Reward Models ({Rv}:=1) Input: Initial model ⌀init, Reference model ⌀ref, Pre-defined signal-noise schedule {at, ot}}t=1 Hyper-parameters: # Optimization Steps (m), Learning Rate (7), Divergence Control B Output: Fine-tuned model ARankDPO // Generate Synthetically Labeled Ranked Preference dataset D using Algorithm 1 D = DataGen(P, {⌀i}k=1, {Ri⌀}n=1) // Train 0 using Algorithm 2 ARankDPO = RankDPO(D, ⌀init, ⌀ref, {⌀t, ot}t=1,m,7,B) |
{{< /table-caption >}}


</details>

------

