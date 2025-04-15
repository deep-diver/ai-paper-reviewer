---
title: "VL-Rethinker: Incentivizing Self-Reflection of Vision-Language Models with Reinforcement Learning"
summary: "VL-Rethinker: RL for enhanced self-reflection in vision-language models, achieving SOTA results on multimodal benchmarks!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2025-04-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.08837 {{< /keyword >}}
{{< keyword icon="writer" >}} Haozhe Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-15 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.08837" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.08837" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.08837/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent AI models, like GPT-01, show great problem-solving through reflection, but their multimodal reasoning lags behind. They don't perform as well on tasks requiring both vision and language understanding. The goal is to make these models better at complex reasoning by encouraging more deliberate thinking. 



To solve the above issues, VL-Rethinker uses reinforcement learning to enhance vision-language models. It introduces Selective Sample Replay (SSR) to improve training stability and Forced Rethinking to encourage self-reflection. VL-Rethinker achieves state-of-the-art results on MathVista, MathVerse, and MathVision, and open-source SoTA on MMMU-Pro, EMMA, and MEGA-Bench.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Reinforcement learning can directly enhance slow-thinking in VLMs without distillation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Selective Sample Replay (SSR) stabilizes GRPO-based RL for VLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Forced Rethinking effectively incentivizes self-reflection in VLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the limitations of current multimodal reasoning models by **introducing a novel reinforcement learning approach to incentivize slow-thinking capabilities**. This research is highly relevant given the increasing focus on complex reasoning in AI and opens new avenues for improving the performance of vision-language models through better self-reflection.

------
#### Visual Insights







### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.08837/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08837/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08837/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08837/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08837/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08837/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08837/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08837/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08837/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08837/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08837/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08837/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08837/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}