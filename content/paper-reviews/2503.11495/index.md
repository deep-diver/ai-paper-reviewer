---
title: "V-STaR: Benchmarking Video-LLMs on Video Spatio-Temporal Reasoning"
summary: "V-STaR: A new benchmark to evaluate Video-LLMs in video spatio-temporal reasoning, revealing gaps in current models' understanding."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Queen Mary University of London",]
showSummary: true
date: 2025-03-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.11495 {{< /keyword >}}
{{< keyword icon="writer" >}} Zixu Cheng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.11495" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.11495" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.11495/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Video-LLMs are advancing, but existing benchmarks mainly test object identification, overlooking their ability to reason about space, time, and causality. Models often rely on pre-trained associations rather than truly understanding how objects interact. This makes it difficult to assess if they truly “understand” videos, leading to inconsistencies.  To address this, researchers introduce a new benchmark to evaluate Video-LLMs.



The new benchmark contains the Reverse Spatio-Temporal Reasoning task, which evaluates models on what objects are present, when events occur, and where objects are located, all while capturing the Chain-of-Thought logic. The authors built a dataset using a semi-automated pipeline that mimics human cognition. Experiments on 14 Video-LLMs expose critical weaknesses in current video models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Video-LLMs often rely on pre-trained co-occurrence biases rather than true spatio-temporal reasoning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Reverse Spatio-Temporal Reasoning (RSTR) task can effectively evaluate video understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Current Video-LLMs still have significant gaps in their ability to integrate spatial, temporal, and causal relationships in video understanding. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because **it addresses the limitations of current video understanding benchmarks**, which often fail to assess true spatio-temporal reasoning. By introducing V-STaR, the authors provide a more rigorous evaluation framework, **highlighting gaps in existing Video-LLMs' abilities**. The benchmark and the proposed RSTR task open new avenues for developing more robust and consistent video reasoning models.

------
#### Visual Insights







### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.11495/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11495/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11495/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11495/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11495/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11495/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11495/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11495/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11495/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11495/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}