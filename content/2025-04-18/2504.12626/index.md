---
title: "Packing Input Frame Context in Next-Frame Prediction Models for Video Generation"
summary: "FramePack: Improving video generation by compressing input frame context and using anti-drifting sampling to reduce errors and enhance visual quality."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Stanford University",]
showSummary: true
date: 2025-04-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.12626 {{< /keyword >}}
{{< keyword icon="writer" >}} Lvmin Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.12626" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.12626" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.12626/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Next-frame prediction models for video generation face challenges like forgetting earlier content and drifting, where visual quality degrades over time. Addressing these issues often involves trade-offs, as enhancing memory can accelerate error propagation, while reducing error propagation can weaken temporal dependencies. Current solutions like encoding more frames become computationally intractable due to the complexity of transformers. Therefore, there is need to address both issues simultaneously in an efficient manner. 



This paper introduces **FramePack**, a structure that compresses input frames based on importance, ensuring a fixed transformer context length regardless of video duration. Anti-drifting sampling methods break the causal prediction chain, using bi-directional context. Experiments show finetuning video diffusion models with FramePack enables balanced diffusion schedulers, improving visual quality. This helps mitigate forgetting and drifting in video generation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FramePack compresses input frames, enabling models to process more frames with a fixed computational cost. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Anti-drifting sampling methods, like inverted temporal order generation, mitigate error accumulation and improve video quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Finetuning existing video diffusion models with FramePack can improve visual quality due to balanced diffusion schedulers. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers as it introduces FramePack, which addresses **key challenges in video generation** and offers potential improvements in visual quality and efficiency. The work also opens avenues for exploring novel training/sampling methods and compression techniques.

------
#### Visual Insights



![](https://arxiv.org/html/2504.12626/x1.png)

> 🔼 Figure 1 illustrates different variations of the FramePack architecture, focusing on the kernel structures used for compressing input frames in video prediction models. Each variation employs different compression rates and kernel sizes, impacting how input frames are processed before being fed into the transformer.  The variations presented are not exhaustive; the authors highlight that numerous other designs are possible.  The figure aims to show the flexibility and adaptability of the FramePack architecture by showcasing commonly used kernel structures and illustrating how the compression rate can be controlled. The core concept is the progressive compression of frames, prioritizing more temporally recent frames over older ones.
> <details>
> <summary>read the caption</summary>
> Figure 1: Ablation Variants of FramePack. We present several typical kernel structures of FramePack with commonly used kernel sizes and compression rates. This list does not necessarily cover all popular variants, and more structures can be developed in a similar way.
> </details>







### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.12626/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12626/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12626/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12626/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12626/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12626/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12626/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12626/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12626/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12626/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12626/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12626/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12626/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}