---
title: "Measuring memorization through probabilistic discoverable extraction"
summary: "**Researchers introduce probabilistic discoverable extraction**, a novel approach improving LLM memorization measurement by considering probabilistic sampling and multiple extraction attempts, reveali..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Google DeepMind",]
showSummary: true
date: 2024-10-25
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2410.19482 {{< /keyword >}}
{{< keyword icon="writer" >}} Jamie Hayes et el. {{< /keyword >}}
 
{{< keyword icon="hf-logo" >}} 2024-10-30 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2410.19482" target="_self" >}}
↗ arXiv
{{< /button >}}
&nbsp; 
{{< button href="https://huggingface.co/papers/2410.19482" target="_self" >}}
↗ Hugging Face
{{< /button >}}

### TL;DR


{{< lead >}}

Large language models (LLMs) can memorize training data, posing significant risks, especially when sensitive information is involved. Current memorization measurement, primarily through discoverable extraction, relies on single-sequence sampling and often underestimates memorization rates. This limits our ability to assess and mitigate these risks effectively. 

This research introduces probabilistic discoverable extraction to solve these problems. This new approach quantifies the probability of extracting a target sequence from LLMs using various sampling schemes and multiple attempts.  It is shown that the probabilistic measure reveals higher memorization rates than previous methods, offering a more comprehensive assessment. The impact of different sampling schemes on extractability is studied, leading to a more realistic evaluation of memorization risks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Probabilistic discoverable extraction provides a more realistic assessment of LLM memorization than previous single-attempt methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Sampling scheme significantly impacts extractability, necessitating a more nuanced approach to memorization evaluation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The new method helps detect higher memorization rates in larger models and with repeated training data. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This paper is crucial** for researchers working with large language models (LLMs) due to its novel approach to measuring memorization.  It addresses limitations of existing methods, offering a more realistic and comprehensive assessment of LLM memorization risks, which is vital for responsible AI development and deployment.  The introduction of probabilistic memorization opens new avenues for research into mitigating this risk and for comparing different models' memorization characteristics more accurately.  The findings directly impact current research on LLM safety and security.

------
#### Visual Insights





![](https://ai-paper-reviewer.com/2410.19482/charts_5_0.png)

> 🔼 The chart compares the rank of target tokens in the predicted probability distribution for greedy and top-k sampling, showing how greedy sampling can miss clear memorization instances that top-k sampling would detect.
> <details>
> <summary>read the caption</summary>
> Figure 1 | An example of how greedy sampling can mask clear signs of memorization. We plot the rank of the target suffix tokens over each successive token that is decoded by greedy and top-k sampling. At every index except one, the tokens in the target sequence have rank 1. At index 15, the target token has rank 2, which means greedy sampling does not select this token, and after which the generated sequence diverges from the target. If, at index 15, the second most likely token had been selected instead, then the remaining positions all have the target token as the top ranked token, so a probabilistic sampling scheme like top-k sampling has a high likelihood of generating the target suffix. See Figure 11a in Appendix E for the specific generated and target text for this example.
> </details>







### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.19482/charts_16_3.png)

> 🔼 (n,p)-discoverable extraction for different Pythia model sizes using top-k=40 sampling is shown, demonstrating how the extraction rate varies with the number of trials (n), probability (p), and model size.
> <details>
> <summary>read the caption</summary>
> Figure 12 | (n, p)-discoverable extraction for different (Pythia) model sizes using top-k = 40 sampling.
> </details>


![](https://ai-paper-reviewer.com/2410.19482/charts_18_0.png)

> 🔼 The chart shows that the empirically measured probability of a target suffix appearing in a set of n generated sequences closely matches the theoretically calculated probability.
> <details>
> <summary>read the caption</summary>
> Figure 9 | We check that generating a set of n sequences and checking the probability a training example appears at least once in the set (empirical p), matches the theoretical p according to Equation (2).
> </details>


</details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.19482/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19482/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}