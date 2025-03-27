---
title: "Unconditional Priors Matter! Improving Conditional Generation of Fine-Tuned Diffusion Models"
summary: "Fixing fine-tuned diffusion models! By using richer, unconditional priors, they generate better images and videos."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 KAIST",]
showSummary: true
date: 2025-03-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.20240 {{< /keyword >}}
{{< keyword icon="writer" >}} Prin Phunyaphibarn et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.20240" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.20240" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.20240/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion models are used to generate images/videos by adding noise and iteratively removing it. Conditional diffusion models allow to steer the generation based on conditions (e.g. text prompts). Classifier-Free Guidance (CFG) is a technique to train conditional diffusion models but fine-tuning diffusion models with CFG can degrade the quality of the unconditional noise prediction, which then lowers the conditional image generation quality.



This paper shows that replacing the unconditional noise prediction from a fine-tuned diffusion model with that of a base model improves the generation quality. Surprisingly, the base model does not have to be the one the fine-tuned model branched out from but can be any diffusion model with high generation quality. The approach can be applied to image and video generation tasks based on CFG such as Zero-1-to-3, Versatile Diffusion, and DynamiCrafter.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Fine-tuning diffusion models can degrade unconditional priors, negatively impacting conditional generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Replacing the fine-tuned model's unconditional noise with that of a base model significantly improves generation quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The unconditional noise can come from a different pre-trained diffusion model, eliminating joint learning requirements. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **tackles a key problem in conditional diffusion models**, improving generation quality and offering a training-free solution. It is highly relevant to the diffusion model research and opens new avenues for enhancing conditional image and video generation.

------
#### Visual Insights



![](https://arxiv.org/html/2503.20240/extracted/6307886/figures/DiT/DiT_qualitatives.jpg)

> 🔼 Figure 1 showcases how leveraging a strong unconditional prior improves the conditional generation capabilities of fine-tuned diffusion models.  Fine-tuning often diminishes the quality of a model's unconditional generation, which negatively impacts performance when using techniques like Classifier-Free Guidance (CFG). This figure demonstrates that incorporating a richer unconditional prior from a separate, well-trained diffusion model significantly enhances the results of conditional generation tasks.  Examples across various models (Zero-1-to-3, Versatile Diffusion, InstructPix2Pix, and DynamiCrafter) illustrate this improvement.
> <details>
> <summary>read the caption</summary>
> Figure 1: Unconditional Priors Matter in CFG-Based Conditional Generation. Fine-tuned conditional diffusion models often show drastic degradation in their unconditional priors, adversely affecting conditional generation when using techniques such as CFG [28]. We demonstrate that leveraging a diffusion model with a richer unconditional prior and combining its unconditional noise prediction with the conditional noise prediction from the fine-tuned model can lead to substantial improvements in conditional generation quality. This is demonstrated across diverse conditional diffusion models including Zero-1-to-3 [46], Versatile Diffusion [64], InstructPix2Pix [7], and DynamiCrafter [62].
> </details>







### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.20240/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20240/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}