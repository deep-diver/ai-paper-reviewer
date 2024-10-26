---
title: "LongVU: Spatiotemporal Adaptive Compression for Long Video-Language Understanding"
summary: "Long video understanding is limited by LLM context size. LongVU, a novel spatiotemporal adaptive compression method, addresses this by reducing video tokens while preserving visual details using cross....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-22", "🤗 2024-10-24"]
showSummary: true
date: 2024-10-22
draft: false
---

### TL;DR


{{< lead >}}

Long video understanding is limited by LLM context size. LongVU, a novel spatiotemporal adaptive compression method, addresses this by reducing video tokens while preserving visual details using cross-modal queries and inter-frame dependencies.  LongVU surpasses existing methods on various video understanding benchmarks, especially hour-long ones, and scales effectively to smaller LLMs.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.17434" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
Long Video Understanding is challenging due to the context limitations of LLMs. This paper introduces LongVU, a spatiotemporal adaptive compression method that efficiently processes long videos by leveraging cross-modal queries and inter-frame dependencies.  LongVU reduces the number of video tokens while preserving visual details, leading to state-of-the-art video understanding performance across various benchmarks, particularly in hour-long video tasks. The method scales effectively to smaller LLMs, suggesting practicality and broader accessibility.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LongVU, a novel spatiotemporal adaptive compression mechanism, efficiently processes long videos for LLMs by intelligently reducing the number of video tokens while preserving visual details. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LongVU consistently outperforms existing methods across various video understanding benchmarks, especially on hour-long video tasks, demonstrating its effectiveness and efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LongVU scales effectively to smaller LLMs, suggesting its practicality and potential for broader use in video understanding applications. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_4_0.png "🔼 Architecture of LongVU. Given a densely sampled video frames, we first utilize DINOv2 (Oquab et al., 2023) prior to remove redundant frames, and fuse the remaining frame features from both SigLIP (Zhai et al., 2023) and DINOv2 (Oquab et al., 2023), described in Section 3.1. Then we selectively reduce visual tokens via cross-modal query, detailed in Section 3.2. Finally, as demonstrated in Section 3.3, we conduct spatial token compression based on temporal dependencies to further meet the context length of LLMs.")





{{< table-caption caption="🔽 Results on comprehensive video understanding benchmarks" >}}
| Models | Size | Context Length | #Frames | EgoSchema | MVBench | MLVU | VideoMME | VideoMME |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Models | Size | Context Length | #Frames | EgoSchema | MVBench | MLVU | Overall | Long |
| Duration |  |  |  | 179.8 sec | 16 sec | 3~120 min | 1〜60 min | 30〜60 min |
| Proprietary Models |  |  |  |  |  |  |  |  |
| GPT4-V (OpenAI, 2023) | - | - | 1fps | 55.6 | 43.7 | - | 60.7 | 56.9 |
| GPT4-o (OpenAI, 2024) | - | - | 1fps | 72.2 | 64.6 | 66.2 | 77.2 | 72.1 |
| Open-Source Video MLLMs |  |  |  |  |  |  |  |  |
| Video-LLaVA (Lin et al., 2023) | 7B | 4k | 8 | 38.4 | 41.0 | 47.3 | 40.4 | 38.1 |
| LLaMA-VID (Li et al., 2023d) | 7B | 4k | 1fps | 38.5 | 41.9 | 33.2 | - | - |
| Chat-UniVi (Jin et al., 2023) | 7B | 4k | 64 | - | - | - | 45.9 | 41.8 |
| ShareGPT4Video (Chen et al., 2024) | 8B | 8k | 16 | - | 51.2 | 46.4 | 43.6 | 37.9 |
| LLaVA-NeXT-Video (Zhang et al., 2024b) | 7B | 8k | 32 | 43.9 | 33.7 | - | 46.5 | - |
| VideoLLaMA2 (Cheng et al., 2024) | 7B | 8k | 32 | 51.7 | 54.6 | 48.5 | 46.6 | 43.8 |
| LongVA (Zhang et al., 2024a) | 7B | 224k | 128 | - | - | 56.3 | 54.3 | 47.6 |
| VideoChat2 (Li et al., 2024b) | 7B | 8k | 16 | 54.4 | 60.4 | 47.9 | 54.6 | 39.2 |
| LLaVA-OneVision (Li et al., 2024a) | 7B | 8k | 32 | 60.1 | 56.7 | 64.7 | 58.2 | 46.7 |
| LongVU (Ours) | 7B | 8k | 1fps | 67.6 | 66.9 | 65.4 | 60.6 | 59.5 |
{{< /table-caption >}}





<details>
<summary>More on figures
</summary>


![](figures/figures_8_0.png "🔼 Figure 3 Examples for various video understanding capabilities of LongVU model. We showcase that our LongVU is able to complete different types of video understanding tasks.")

![](figures/figures_8_1.png "🔼 Figure 3 Examples for various video understanding capabilities of LongVU model. We showcase that our LongVU is able to complete different types of video understanding tasks.")

![](figures/figures_8_2.png "🔼 Figure 1 Effectiveness of our LongVU over commonly-used uniform sampling and dense sampling. Uniform sampling overlooks critical frames due to its sparse nature. Dense sampling may surpass the maximum context length, leading to truncation of tokens from targeted frames. In contrast, our method can adaptively conduct spatiotemporal compression, accommodating long video sequences while preserving more visual details.")

![](figures/figures_16_0.png "🔼 Figure 6. Similarity comparison between SigLIP (Zhai et al., 2023) and DINOv2 (Oquab et al., 2023) features. The similarity is calculated between the first frame and the remainings. DINO concentrating on vision centric task effectively capture subtle frame differences compared with SigLIP (Zhai et al., 2023) which is aligned on semantic space.")


</details>

------







<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 2 Results of small-size video language models across video understanding benchmarks." >}}
| Models | EgoSchema | MVBench | VideoMME | VideoMME | MLVU |
| --- | --- | --- | --- | --- | --- |
| Models | EgoSchema | MVBench | Overall | Long | MLVU |
| InternVL2 (InternLM2-1.8B) (OpenGVLab, 2024) | - | 60.2 | 47.3 | 42.6 | - |
| VideoChat2 (Phi-3-mini-4B) (Li et al., 2024b) | 56.7 | 55.1 | - | - | - |
| Phi-3.5-vision-instruct (Phi-3-mini-4B) (Abdin et al., 2024) | - | - | 50.8 | 43.8 | - |
| LongVU (Ours) (Llama3.2-3B) | 59.1 | 60.9 | 51.5 | 47.2 | 55.9 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3 Ablation studies of number of tokens per frame, different context lengths, and our spatiotemporal compression components." >}}
| Methods | Context Length | #Tokens | EgoSchema | VideoMME | MLVU |
| --- | --- | --- | --- | --- | --- |
| Uniform | 16k | 144 | 67.12 | 60.01 | 64.70 |
| DINO | 16k | 144 | 67.34 | 61.25 | 64.83 |
| Uniform | 8k | 64 | 66.84 | 57.56 | 60.87 |
| Uniform | 8k | 144 | 66.28 | 58.84 | 63.28 |
| SigLIP | 8k | 64 | 66.04 | 58.63 | 62.17 |
| DINO | 8k | 64 | 66.20 | 59.90 | 62.54 |
| DINO + Query | 8k | 64,  144 | 67.30 | 60.08 | 65.05 |
| DINO + Query + STC (default) | 8k | dynamic | 67.62 | 60.56 | 65.44 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1 Results on comprehensive video understanding benchmarks" >}}
| Stratgy | count | ego | needle | order | plotQA | anomaly | reasoning | Avg |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| DINO | 24.15 | 59.09 | 68.16 | 52.89 | 71.24 | 74.00 | 86.36 | 62.54 |
| DINO+Query | 28.98 | 55.39 | 78.87 | 56.37 | 72.35 | 75.50 | 87.87 | 65.05 |
| DINO+Query+STC (default) | 28.98 | 59.37 | 76.33 | 58.30 | 71.61 | 76.00 | 87.50 | 65.44 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1 Results on comprehensive video understanding benchmarks" >}}
| Model | Short | Medium | Long | Overall | Reduction rate |
| --- | --- | --- | --- | --- | --- |
| 1st frame in sliding window (default) | 64.7 | 58.2 | 59.5 | 60.9 | 55.47% |
| (K/2)th frame in sliding window | 64.7 | 58.7 | 58.6 | 60.7 | 54.97% |
| frame with high changes | 64.7 | 58.2 | 58.3 | 60.4 | 55.62% |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 6 Training data statistics." >}}
| Modality | Task | # Samples | Dataset |
| --- | --- | --- | --- |
| Image-Text | Single-Image | 3.2M | LLaVA-OneVision |
| Video-Text | Captioning | 43K | TextVR, MovieChat, YouCook2 |
| Video-Text | Classification | 1K | Kinetics-710 |
| Video-Text | VQA | 424K | NExTQA, CLEVRER, EgoQA, TGIF, WebVidQA, DiDeMo |
| Video-Text | Instruction | 85K | ShareGPT4Video |
{{< /table-caption >}}

{{< table-caption caption="🔽 Results on comprehensive video understanding benchmarks" >}}
| Model | Size | Frames | Short | Medium | Long | Overall |
| --- | --- | --- | --- | --- | --- | --- |
| Video-LLa VA (Lin et al., 2023) | 7B | 8 | 46.1 | 40.7 | 38.1 | 41.6 |
| ShareGPT4Video (Chen et al., 2024) | 8B | 16 | 53.6 | 39.3 | 37.9 | 43.6 |
| Chat- Univi-v1.5 (Jin et al., 2023) | 7B | 64 | 51.2 | 44.6 | 41.8 | 45.9 |
| VideoLLaMA2 (Cheng et al., 2024) | 7B | 16 | 59.4 | 47.6 | 43.8 | 50.3 |
| VideoChat2 (Li et al., 2024b) | 7B | 16 | 52.8 | 39.4 | 39.2 | 43.8 |
| LongVA (Zhang et al., 2024a) | 7B | 128 | 61.6 | 50.4 | 47.6 | 54.3 |
| LLaVA-OneVision (Li et al., 2024a) | 7B | 32 | 69.1 | 53.3 | 46.7 | 58.2 |
| LongVU (Ours) | 7B | 1fps | 64.7 | 58.2 | 59.5 | 60.9 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 8 Ablation study on with or without FPE." >}}
| Methods | Context Length | #Tokens | EgoSchema | VideoMME | MLVU |
| --- | --- | --- | --- | --- | --- |
| DINO + Query | 8k | 64, / 144 | 67.30 | 60.08 | 65.05 |
| DINO + Query + STC (default) | 8k | dynamic | 67.62 | 60.56 | 65.44 |
| DINO + Query + STC + FPE | 8k | dynamic | 67.87 | 60.89 | 64.56 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1 Results on comprehensive video understanding benchmarks" >}}
| Stratgy | count | ego | needle | order | plotQA | anomaly | reasoning | Avg |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| DINO | 24.15 | 59.09 | 68.16 | 52.89 | 71.24 | 74.0 | 86.36 | 62.54 |
| DINO+Query | 28.98 | 55.39 | 78.87 | 56.37 | 72.35 | 75.5 | 87.87 | 65.05 |
| DINO +Query+STC (default) | 28.98 | 59.37 | 76.33 | 58.30 | 71.61 | 76.0 | 87.50 | 65.44 |
| DINO + Query+STC+ FPE | 29.46 | 60.79 | 74.08 | 52.12 | 71.79 | 74.5 | 86.74 | 64.56 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1 Results on comprehensive video understanding benchmarks" >}}
| Model | SQA-IMG | MMVP | POPE | RealWorldQA |
| --- | --- | --- | --- | --- |
| Before video SFT | 95.44 | 51.33 | 86.65 | 61.06 |
| After video SFT | 83.94 | 32.00 | 81.23 | 47.65 |
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