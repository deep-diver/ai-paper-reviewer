---
title: "MaskGWM: A Generalizable Driving World Model with Video Mask Reconstruction"
summary: "MaskGWM: Improves driving world models by using video mask reconstruction for better generalization."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 SenseTime Research",]
showSummary: true
date: 2025-02-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.11663 {{< /keyword >}}
{{< keyword icon="writer" >}} Jingcheng Ni et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.11663" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.11663" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.11663/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Autonomous driving models need to accurately forecast environmental changes, but current driving world models struggle with predictive duration and generalization. These models, which rely on video prediction, are limited in complex scenarios like weather changes and scene variations. To tackle these issues, a new model design is needed, that combines generation loss with feature-level context learning to improve fidelity, generalizability, and long-time series prediction.



This paper introduces **MaskGWM, a Generalizable driving World Model** that utilizes video mask reconstruction. It employs a Diffusion Transformer structure trained with extra mask construction, diffusion-related mask tokens, and extends mask construction to spatial-temporal domains using row-wise masking. Comprehensive evaluations on multiple datasets confirm that **MaskGWM** significantly improves upon existing driving world models, demonstrating enhanced video quality, zero-shot performance, and long-term prediction.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MaskGWM improves fidelity, generalizability, and long-term forecasting of driving world models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Mask reconstruction is introduced as a complementary task for diffusion-based world models, enhancing performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Comprehensive experiments validate the method's ability to generate superior video quality and generalize across different conditions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel approach for enhancing driving world models. **The MaskGWM** enhances realism, generalizability, and forecast accuracy in autonomous driving simulations. It presents new avenues for research on improving the reliability and adaptability of autonomous systems in diverse and complex real-world conditions.

------
#### Visual Insights







### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.11663/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11663/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11663/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11663/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11663/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11663/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11663/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11663/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11663/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11663/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11663/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11663/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11663/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11663/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11663/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11663/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11663/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}