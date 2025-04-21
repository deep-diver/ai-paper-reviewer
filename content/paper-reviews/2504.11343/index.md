---
title: "A Minimalist Approach to LLM Reasoning: from Rejection Sampling to Reinforce"
summary: "Rejection sampling can match complex RL for LLM reasoning!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 Salesforce AI Research",]
showSummary: true
date: 2025-04-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.11343 {{< /keyword >}}
{{< keyword icon="writer" >}} Wei Xiong et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.11343" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.11343" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.11343/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Reinforcement learning (RL) has become popular for fine-tuning large language models (LLMs) on reasoning tasks. GRPO, known for its success in training models like DeepSeek-R1, lacks clear understanding of its effectiveness. This paper revisits GRPO from a reinforce-like algorithm view, analyzing its key parts to see how it works. Surprisingly, a basic rejection sampling baseline, RAFT, which only trains on positively rewarded samples, performs comparably to GRPO and PPO. 



The authors found GRPO's advantage comes from discarding prompts with completely wrong responses, rather than reward normalization. Motivated by this, they suggest Reinforce-Rej, a policy gradient extension that filters both entirely incorrect and correct samples. It improves KL efficiency and stability, offering a lightweight alternative to complex RL algorithms. They recommend RAFT as a robust baseline and suggest focusing on principled designs for negative samples.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} RAFT, a simple rejection sampling baseline, achieves competitive performance compared to state-of-the-art RL methods like GRPO. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Filtering prompts with entirely incorrect responses significantly improves performance in on-policy methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Reinforce-Rej, a minimal extension of policy gradient, offers comparable performance to GRPO with superior KL efficiency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper provides **valuable insights** into reward-based LLM post-training by demonstrating the effectiveness of simple rejection sampling and identifying key factors that impact performance. It encourages a more principled approach to incorporating negative samples, **opening new avenues** for developing lightweight and effective RL algorithms. This work will help researchers to **focus on sample selection** rather than complex algorithmic designs.

------
#### Visual Insights







### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.11343/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11343/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11343/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11343/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11343/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11343/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11343/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11343/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11343/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11343/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11343/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11343/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}