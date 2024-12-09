---
title: "LiFT: Leveraging Human Feedback for Text-to-Video Model Alignment"
summary: "LiFT leverages human feedback, including reasoning, to effectively align text-to-video models with human preferences, significantly improving video quality."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Fudan University",]
showSummary: true
date: 2024-12-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.04814 {{< /keyword >}}
{{< keyword icon="writer" >}} Yibin Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-09 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.04814" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.04814" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/lift-leveraging-human-feedback-for-text-to" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.04814/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current text-to-video (T2V) models struggle to generate videos that truly reflect human preferences; these preferences are subjective and hard to define objectively.  Many existing methods focus solely on overall quality scores, lacking the detailed context of *why* a video is considered good or bad. This limits their ability to create truly aligned videos.



The researchers present LIFT, a novel approach that tackles this problem. **LIFT incorporates human feedback, including both scores and explanations, to train a reward model.** This model acts as a proxy for human judgment, helping to guide the training of the T2V model and improve alignment. By maximizing the reward-weighted likelihood, LIFT effectively tunes the T2V model to better match human expectations. **The results, using the CogVideoX model, demonstrate substantial improvements across various video quality metrics.**  This highlights the potential of human feedback in creating better-aligned, higher-quality videos.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LiFT introduces a novel fine-tuning method using human feedback for improved alignment of text-to-video models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The LIFT-HRA dataset, including both ratings and reasoning behind the feedback, enables a more accurate reward model training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments demonstrate significant improvements in video quality across multiple metrics, surpassing state-of-the-art models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses a critical challenge in text-to-video (T2V) generation: aligning generated videos with human preferences.  **The proposed method, LIFT, directly incorporates human feedback, including both ratings and reasoning, for improved model training and alignment.** This is highly relevant to current research trends in T2V and opens new avenues for incorporating subjective human evaluation into model training. The results show significant improvements in video quality, indicating that LIFT is a promising approach for future T2V development.

------
#### Visual Insights







### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.04814/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04814/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04814/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04814/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04814/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04814/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04814/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04814/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04814/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04814/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}