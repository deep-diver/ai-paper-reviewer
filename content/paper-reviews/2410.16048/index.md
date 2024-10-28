---
title: "Continuous Speech Synthesis using per-token Latent Diffusion"
summary: "SALAD, a novel per-token latent diffusion model, achieves superior zero-shot speech synthesis, surpassing discrete methods in intelligibility while maintaining speech quality and speaker similarity."
categories: ["AI Generated"]
tags: ["🔖 24-10-21", "🤗 24-10-28"]
showSummary: true
date: 2024-10-21
draft: false
---

### TL;DR


{{< lead >}}

This research introduces SALAD, a new method for generating speech from text without needing any prior training data on that specific speaker (zero-shot).  Instead of using discrete units of sound like previous approaches, SALAD uses a continuous representation, which is more natural to audio. They use something called a 'per-token latent diffusion model', which generates the speech token by token but in a continuous way.  The paper compares this new method to existing discrete methods and shows that it achieves significantly better intelligibility. Importantly, SALAD maintains a high quality of speech output and effectively replicates the characteristics of the speaker's voice.  The researchers tested different variations of their method and demonstrated that their approach is competitive even when comparing against established, well-performing methods.  The research is significant for the field because it improves speech quality and suggests better ways for future systems to be developed.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.16048" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.16048" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it introduces a novel approach to speech synthesis that avoids the limitations of discrete-token methods.  It opens avenues for improved speech quality and intelligibility in zero-shot text-to-speech systems. The comparative analysis of discrete and continuous approaches provides valuable insights for future research. The innovative use of a per-token latent diffusion model for variable-length output generation is a significant contribution.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SALAD, a new per-token latent diffusion model for zero-shot text-to-speech, significantly improves intelligibility compared to traditional discrete-token methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SALAD's continuous speech modeling approach achieves high speech quality and speaker similarity comparable to ground-truth audio. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study offers a valuable comparative analysis of discrete and continuous speech modeling techniques, highlighting the strengths and weaknesses of each. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png)

> 🔼 The figure illustrates the difference between continuous and discrete speech modeling approaches, showing how continuous latent variables are processed using a diffusion head versus discrete RVQ codes processed using RVQ prediction heads.
> <details>
> <summary>read the caption</summary>
> Figure 1: Continuous vs. discrete modeling
> </details>





![](charts/charts_8_0.png)

> 🔼 The chart displays the results of subjective listening tests, comparing the MOS (Mean Opinion Score) and speaker similarity scores for various speech synthesis models, including ground truth, XTTS, and different variants of SALAD (Text-to-Acoustic and Semantic-to-Acoustic, both continuous and discrete).
> <details>
> <summary>read the caption</summary>
> Figure 5: Subjective listening results
> </details>





{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Task</td><td>Modeling</td><td>Representation</td><td>UTMOS ↑</td><td>STT CER (%) ↓</td><td>Similarity ↑</td></tr><tr><td>Ground Truth</td><td>-</td><td>-</td><td>4.121</td><td>0.528</td><td>0.736</td></tr><tr><td>Text to Acoustic</td><td>AR</td><td>Continuous</td><td>4.280</td><td>0.739</td><td>0.539</td></tr><tr><td>Text to Acoustic</td><td>AR</td><td>Discrete</td><td>4.270</td><td>2.298</td><td>0.600</td></tr><tr><td>Semantic to Acoustic</td><td>AR</td><td>Continuous</td><td>4.27</td><td>2.198</td><td>0.588</td></tr><tr><td>Semantic to Acoustic</td><td>AR</td><td>Discrete</td><td>4.348</td><td>1.231</td><td>0.549</td></tr><tr><td>Semantic to Acoustic</td><td>NAR</td><td>Continuous</td><td>4.277</td><td>1.393</td><td>0.558</td></tr><tr><td>Semantic to Acoustic</td><td>NAR</td><td>Discrete</td><td>4.351</td><td>1.846</td><td>0.602</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the objective evaluation results of different speech synthesis models on the LibriSpeech test-clean dataset, comparing metrics such as UTMOS, STT CER, and speaker similarity.
> <details>
> <summary>read the caption</summary>
> Table 1: Objective evaluation of LibriSpeech test-clean
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_4_0.png)

> 🔼 The figure illustrates the per-token diffusion head architecture used in the SALAD model, showing both the training and inference processes.
> <details>
> <summary>read the caption</summary>
> Figure 2: The per-token diffusion head
> </details>



![](figures/figures_5_0.png)

> 🔼 The figure illustrates the process of speech synthesis using semantic-to-acoustic models, showing the flow of information from text and speaker prompt to the final synthesized audio.
> <details>
> <summary>read the caption</summary>
> Figure 3: Synthesis using Semantic-to-Acoustic models
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](charts/charts_9_0.png "🔼 Figure 6: Inference hyperparameters influence")

> 🔼 The chart displays the impact of various inference hyperparameters, such as CFG scale, noise scale, diffusion steps, and MaskGIT steps, on the UTMOS score and speaker similarity.
> <details>
> <summary>read the caption</summary>
> Figure 6: Inference hyperparameters influence
> </details>


![](charts/charts_10_0.png "🔼 Figure 7: High-fidelity RVQ codes")

> 🔼 The chart displays the relationships between reconstruction quality, noise sensitivity, and cross entropy loss with different numbers of RVQ codebooks and VAE embedding dimensions.
> <details>
> <summary>read the caption</summary>
> Figure 7: High-fidelity RVQ codes
> </details>


![](charts/charts_14_0.png "🔼 Figure 8: Additional results")

> 🔼 The chart displays the GMM entropy drop to zero during training and the SoundStorm unmasking method performance comparison.
> <details>
> <summary>read the caption</summary>
> Figure 8: Additional results
> </details>


![](charts/charts_14_1.png "🔼 Figure 8: Additional results")

> 🔼 The chart compares three different unmasking methods in the SoundStorm model, showing that random unmasking achieves the highest UTMOS score.
> <details>
> <summary>read the caption</summary>
> Figure 8: Additional results
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='3' style='font-size:18px'><tr><td></td><td>UTMOS ↑</td><td>Intelligibility ↓</td><td>Similarity ↑</td></tr><tr><td>T2A HiFi Continuous d = 32</td><td>4.271</td><td>1.157</td><td>0.545</td></tr><tr><td>T2A HiFi Discrete Q = 12</td><td>4.203</td><td>5.461</td><td>0.597</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table compares the performance of high-fidelity continuous and discrete T2A models, showing the continuous model achieves better intelligibility with comparable quality and similarity scores.


{{< table-caption >}}
<table id='6' style='font-size:18px'><tr><td></td><td>UTMOS ↑</td><td>Intelligibility ↓</td><td>Similarity ↑</td></tr><tr><td>VAE Sample</td><td>4.280</td><td>0.739</td><td>0.539</td></tr><tr><td>VAE NoSample</td><td>3.468</td><td>1.891</td><td>0.613</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the objective evaluation results of different speech synthesis models on the LibriSpeech test-clean dataset, comparing metrics such as UTMOS, STT CER, and speaker similarity.


</details>


### Full paper

{{< gallery >}}
<img src="paper_images/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}