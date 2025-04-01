---
title: "ViLBench: A Suite for Vision-Language Process Reward Modeling"
summary: "VILBENCH: Vision-Language Process Reward Modeling Suite"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 UC Santa Cruz",]
showSummary: true
date: 2025-03-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.20271 {{< /keyword >}}
{{< keyword icon="writer" >}} Haoqin Tu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.20271" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.20271" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.20271/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Process-supervised reward models offer detailed feedback to model responses, which is key for complex tasks. Despite advantages, PRM evaluation in multimodal contexts is lacking. The study benchmarks vision large language models as reward models, and finds no consistent outperformance across tasks. VLLMs do not inherently yield better rewarding performance. To address this, the paper introduces VILBENCH, a vision-language benchmark that requires process reward signals. 



 The paper also presents a vision-language PRM, ViLPRM, trained using 73.6K vision-language process reward data. MCTS enhances the PRM by using a tree-search algorithm. The PRM improves stepwise reward evaluation accuracy. The 3B model surpasses standard chain-of-thought approaches, improving by 3.3%, and outperforming its counterpart in VILBENCH by 2.5% when selecting OpenAI-generated solutions.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current VLLMs struggle to consistently excel as reward models across diverse vision-language tasks, highlighting a gap between general capabilities and reward assessment. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The VILBENCH benchmark reveals that advanced models like GPT-4o achieve only 27.3% accuracy, emphasizing the need for intensive process reward signals. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The ViLPRM model demonstrates improved performance over standard CoT and untrained counterparts on VILBENCH, showcasing the potential of fine-grained reward modeling. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **reveals limitations of current vision-language models** in process reward modeling. The work **introduces a new benchmark, VILBENCH, to foster research in this area** and **provides a vision-language PRM, ViLPRM**, as a promising direction for future exploration. By identifying the challenges and providing resources, the paper helps facilitate advances in multimodal AI.

------
#### Visual Insights



![](https://arxiv.org/html/2503.20271/ICCV25/pics/mcts2.pdf)

> 🔼 This figure shows a Monte Carlo Tree Search (MCTS) tree used in constructing the ViLReward-73K dataset.  The MCTS process explores different reasoning paths to solve geometry problems. Each node in the tree represents a step in the reasoning process, and the edges connect steps. One path in the MCTS tree leads to the correct solution, while other paths result in incorrect answers.  The value associated with each node represents the estimated quality of that reasoning step. The ellipses indicate that some nodes in the original MCTS tree have been omitted for clarity.
> <details>
> <summary>read the caption</summary>
> Figure 1: MCTS tree we have constructed for geometry problem datasets (e.g., MAVIS-Geometry). One path in the tree yields a correct result, while the remaining paths result in incorrect answers. It is worth noting that we use ellipses to omit some nodes in the original MCTS tree for better presentation.
> </details>







### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.20271/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20271/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20271/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20271/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20271/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20271/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20271/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20271/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20271/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20271/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20271/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20271/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20271/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20271/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20271/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}