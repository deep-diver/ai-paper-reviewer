---
title: "LARP: Tokenizing Videos with a Learned Autoregressive Generative Prior"
summary: "LARP: a novel video tokenizer using learned holistic queries and an autoregressive prior, achieves state-of-the-art video generation, bridging the gap between reconstruction and generation fidelity."
categories: ["AI Generated"]
tags: ["🔖 24-10-28", "🤗 24-10-29"]
showSummary: true
date: 2024-10-28
draft: false
---

{{< keyword >}} 2410.21264 {{< /keyword >}}

### TL;DR


{{< lead >}}

Current video tokenization methods for autoregressive (AR) generative models struggle with limitations like patchwise encoding and reconstruction-focused designs.  These limitations hinder the generation of high-fidelity videos, creating a gap between reconstruction and generation quality.  Additionally, defining an efficient sequential order for tokens remains a challenge.



The paper introduces LARP, a novel video tokenizer, to overcome these limitations. **LARP employs a holistic tokenization scheme using learned queries to capture global context, offering flexibility in token numbers.**  It integrates a lightweight AR transformer as a training-time prior model that enhances AR-friendliness of the latent space. **Experimental results show LARP outperforms existing methods, achieving state-of-the-art FVD scores in video generation benchmarks.** This demonstrates LARP's effectiveness in generating high-quality videos and its suitability for integration into more complex MLLMs.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.21264" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.21264" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it significantly advances video tokenization for autoregressive generative models.  **It introduces a novel method, LARP, that outperforms state-of-the-art models in video generation benchmarks.** This offers exciting possibilities for creating high-fidelity videos and opens up new avenues for research in multimodal large language models (MLLMs).  **Researchers in computer vision and generative AI will find LARP's innovative approach valuable for improving video generation and the compatibility of AR models with video data.**
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LARP, a novel video tokenizer, uses holistic queries to capture global visual information, unlike traditional patch-based methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A lightweight autoregressive prior model co-trained with LARP optimizes the latent space for smoother and more accurate autoregressive generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LARP achieves state-of-the-art performance in video generation benchmarks (UCF101 and K600). {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.21264/figures_1_0.png)

> 🔼 Figure 1 shows the LARP framework, the effectiveness of the AR prior model, and a comparison across different autoregressive generative models, highlighting LARP's performance advantages.
> <details>
> <summary>read the caption</summary>
> Figure 1: LARP highlights. (a) LARP is a video tokenizer for two-stage video generative models. In the first stage, LARP tokenizer is trained with a lightweight AR prior model to learn an AR-friendly latent space. In the second stage, an AR generative model is trained on LARP's discrete tokens to synthesize high-fidelity videos. (b) The incorporation of the AR prior model significantly improves the generation FVD (gFVD) across various token number configurations. (c) LARP shows a much smaller gap between its reconstruction FVD (rFVD) and generation FVD (gFVD), indicating the effectiveness of the optimized latent space it has learned.
> </details>





![](https://ai-paper-reviewer.com/2410.21264/charts_1_0.png)

> 🔼 The chart displays the effectiveness of the autoregressive prior model in LARP and compares its performance against other AR generative models in terms of reconstruction and generation FVD.
> <details>
> <summary>read the caption</summary>
> (b) Effectiveness of the AR Prior Model in LARP (c) Comparison Across AR Generative Models
> </details>





{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Method</td><td colspan="2">#Params</td><td>#Tokens</td><td>rFVD↓</td><td colspan="2">gFVD�</td></tr><tr><td></td><td>Tokenizer</td><td>Generator</td><td></td><td></td><td>K600</td><td>UCF</td></tr><tr><td colspan="7">Diffusion-based generative models with continuous video tokenizers</td></tr><tr><td>VideoFusion Luo et al. 2023</td><td>-</td><td>2B</td><td>-</td><td></td><td>-</td><td>173</td></tr><tr><td>HPDM Skorokhodov et al.. 2024</td><td>-</td><td>725M</td><td>-</td><td>-</td><td>-</td><td>66</td></tr><tr><td colspan="7">MLM generative models with discrete video tokenizers</td></tr><tr><td>MAGVIT-MLM Yu et al. 2023a</td><td>158M</td><td>306M</td><td>1024</td><td>25</td><td>9.9</td><td>76</td></tr><tr><td>MAGVIT-v2-MLM Yu et al.. 2023b</td><td>-</td><td>307M</td><td>1280</td><td>8.6</td><td>4.3</td><td>58</td></tr><tr><td colspan="7">AR generative models with discrete video tokenizers</td></tr><tr><td>CogVideo Hong et al. 2022</td><td>-</td><td>9.4B</td><td>2065</td><td>-</td><td>109.2</td><td>626</td></tr><tr><td>TATS Ge et al.. 2022</td><td>32M</td><td>321M</td><td>1024</td><td>162</td><td>-</td><td>332</td></tr><tr><td>MAGVIT-AR Yu et al. 2023a</td><td>158M</td><td>306M</td><td>1024</td><td>25</td><td>-</td><td>265</td></tr><tr><td>MAGVIT-v2-AR Yu et al. 2023b</td><td>-</td><td>840M</td><td>1280</td><td>8.6</td><td>-</td><td>109</td></tr><tr><td>OmniTokenizer Wang et al. 2024</td><td>82.2M</td><td>650M</td><td>1280</td><td>42</td><td>32.9</td><td>191</td></tr><tr><td>LARP-L (Ours)</td><td>173M</td><td>343M</td><td>1024</td><td>24</td><td>6.2</td><td>107</td></tr><tr><td>LARP-L-Long (Ours)</td><td>173M</td><td>343M</td><td>1024</td><td>20</td><td>6.2</td><td>102</td></tr><tr><td>LARP-L-Long (Ours)</td><td>173M</td><td>632M</td><td>1024</td><td>20</td><td>5.1</td><td>57</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 compares the performance of LARP with other state-of-the-art video generation methods across different categories of models, highlighting LARP's superior performance on UCF-101 and K600 benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of video generation results. Results are grouped by the type of generative models. The scores for MAGVIT-AR and MAGVIT-v2-AR are taken from the appendix of MAGVIT-v2 (Yu et al., 2023b). LARP-L-Long denotes the LARP-L trained for more epochs. Our best results are obtained with a larger AR generator.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.21264/figures_4_0.png)

> 🔼 This figure compares a traditional patchwise video tokenizer with LARP's holistic tokenization approach, highlighting the incorporation of a learned autoregressive prior model for improved AR generation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Method overview. Cubes ☑ represent video patches, circles O indicate continuous embeddings, and squares denote discrete tokens. (a) Patchwise video tokenizer used in previous works. (b) Left: The LARP tokenizer tokenizes videos in a holistic scheme, gathering information from the video using a set of learned queries. Right: The AR prior model, trained with LARP predicts the next holistic token, enabling a latent space optimized for AR generation. The AR prior model is forwarded in two rounds per iteration. The red arrow represents the first round, and the purple arrows represent the second round. The reconstruction loss Lrec is omitted for simplicity.
> </details>



![](https://ai-paper-reviewer.com/2410.21264/figures_9_0.png)

> 🔼 The figure shows a comparison of video reconstruction results between LARP, OmniTokenizer, and ground truth (GT) on two video clips, demonstrating LARP's superior reconstruction quality.
> <details>
> <summary>read the caption</summary>
> Figure 4: Video reconstruction comparison with OmniTokenizer (Wang et al., 2024).
> </details>



![](https://ai-paper-reviewer.com/2410.21264/figures_10_0.png)

> 🔼 The figure shows a comparison of video reconstruction results between LARP and OmniTokenizer, demonstrating LARP's superior reconstruction quality across various scenes and regions.
> <details>
> <summary>read the caption</summary>
> Figure 4: Video reconstruction comparison with OmniTokenizer (Wang et al., 2024).
> </details>



![](https://ai-paper-reviewer.com/2410.21264/figures_10_1.png)

> 🔼 The figure shows examples of video frame prediction results on the K600 dataset, demonstrating LARP's ability to accurately predict future frames in diverse scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 9: Additional video frame prediction results on K600 dataset.
> </details>



![](https://ai-paper-reviewer.com/2410.21264/figures_17_0.png)

> 🔼 Figure 7 presents a comparison of video reconstruction results between LARP and OmniTokenizer, showcasing LARP's superior reconstruction quality across diverse scenes.
> <details>
> <summary>read the caption</summary>
> Figure 7: Additional video reconstruction comparison with OmniTokenizer (Wang et al., 2024).
> </details>



![](https://ai-paper-reviewer.com/2410.21264/figures_18_0.png)

> 🔼 The figure shows additional examples of class-conditional video generation results produced by LARP on the UCF-101 dataset, showcasing the model's ability to generate diverse and high-fidelity videos across various action classes.
> <details>
> <summary>read the caption</summary>
> Figure 8: Additional class-conditional generation results on UCF-101 dataset.
> </details>



![](https://ai-paper-reviewer.com/2410.21264/figures_19_0.png)

> 🔼 Figure 2 illustrates the architecture of the proposed LARP tokenizer and compares it to a traditional patchwise tokenizer, highlighting LARP's holistic approach and the integration of an autoregressive prior model for improved AR-friendly latent space learning.
> <details>
> <summary>read the caption</summary>
> Figure 2: Method overview. Cubes ☑ represent video patches, circles O indicate continuous embeddings, and squares denote discrete tokens. (a) Patchwise video tokenizer used in previous works. (b) Left: The LARP tokenizer tokenizes videos in a holistic scheme, gathering information from the video using a set of learned queries. Right: The AR prior model, trained with LARP predicts the next holistic token, enabling a latent space optimized for AR generation. The AR prior model is forwarded in two rounds per iteration. The red arrow represents the first round, and the purple arrows represent the second round. The reconstruction loss Lrec is omitted for simplicity.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.21264/charts_7_0.png)

> 🔼 The chart displays the reconstruction FVD (rFVD) and generation FVD (gFVD) for three different sizes of the LARP tokenizer (LARP-S, LARP-B, LARP-L) and varying numbers of discrete tokens.
> <details>
> <summary>read the caption</summary>
> Figure 3: Scaling LARP tokenizer size and number of tokens.
> </details>


![](https://ai-paper-reviewer.com/2410.21264/charts_7_1.png)

> 🔼 The chart displays the impact of scaling the LARP tokenizer size and the number of discrete tokens on reconstruction and generation FVD.
> <details>
> <summary>read the caption</summary>
> Figure 3: Scaling LARP tokenizer size and number of tokens.
> </details>


</details>



### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.21264/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21264/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}