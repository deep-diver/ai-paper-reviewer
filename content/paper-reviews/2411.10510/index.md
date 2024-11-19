---
title: "SmoothCache: A Universal Inference Acceleration Technique for Diffusion Transformers"
summary: "SmoothCache: A universal technique boosts Diffusion Transformer inference speed by 8-71% across modalities, without sacrificing quality!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Generation", "🏢 Roblox",]
showSummary: true
date: 2024-11-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.10510 {{< /keyword >}}
{{< keyword icon="writer" >}} Joseph Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.10510" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.10510" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/smoothcache-a-universal-inference" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.10510/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion Transformers (DiTs) are powerful generative models but their inference process is computationally expensive due to repeated evaluations of attention and feed-forward modules. Existing acceleration methods like advanced solvers, knowledge distillation, and quantization either reduce the number of sampling steps or lower the inference cost per step, but they have limitations.  **Caching has emerged as a potential solution to address this issue** by exploiting the redundancy in the diffusion process, but existing caching techniques are either overly simplistic or model-specific. 

This paper introduces SmoothCache, a novel model-agnostic inference acceleration technique for DiTs. **SmoothCache leverages the high similarity between layer outputs across adjacent diffusion timesteps.** By analyzing layer-wise representation errors from a small calibration set, SmoothCache adaptively caches and reuses key features during inference. **Experiments demonstrate that SmoothCache achieves 8% to 71% speed up while maintaining or even improving generation quality across diverse modalities.** It is also compatible with various common solvers. The findings suggest the technique has a significant impact on enabling real-time applications and broadening the accessibility of powerful DiT models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SmoothCache significantly accelerates Diffusion Transformer inference across image, video, and audio modalities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The technique is model-agnostic, requiring only a small calibration set for adaptive caching and reuse of key features. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SmoothCache achieves substantial speedups (8-71%) while maintaining or even improving generation quality, paving the way for real-time applications. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because **it introduces SmoothCache**, a novel and universal technique for accelerating inference in Diffusion Transformers.  **Its model-agnostic nature and impressive speedups** across diverse modalities (image, video, audio) make it highly relevant to current research trends in generative modeling. **SmoothCache opens new avenues for real-time applications** of powerful DiT models and **promotes further research into efficient inference strategies** for other complex deep learning architectures.

------
#### Visual Insights



![](https://arxiv.org/html/2411.10510/extracted/6002813/imgs/figures/dit_error_curves.png)

> 🔼 This figure demonstrates the acceleration of Diffusion Transformer inference across different modalities (image, video, and audio).  For images, 50 DDIM steps were used with the DiT-XL 256x256 model. For audio, a 10-second sample was processed using 100 DPMSolver++ (3M) SDE steps with the Stable Audio Open model, with the spectrogram displayed in the figure. For video, 30 Rectified Flow steps were used on Open-Sora with a 480p resolution and 2-second duration.
> <details>
> <summary>read the caption</summary>
> Figure 1: Accelerating Diffusion Transformer inference across multiple modalities with 50 DDIM Steps on DiT-XL-256x256, 100 DPMSolver++(3M) SDE steps for a 10s audio sample (spectrogram shown) on Stable Audio Open, 30 Rectified Flow steps on Open-Sora 480p 2s videos.
> </details>





{{< table-caption >}}
| Schedule | Steps | FID (↓) | sFID (↓) | IS (↑) | TMACs | Latency (s) |
|---|---|---|---|---|---|---|
| L2C | 50 | 2.27 ± 0.04 | 4.23 ± 0.02 | 245.8 ± 0.7 | 278.71 | 6.85 |
| No Cache | 50 | 2.28 ± 0.03 | 4.30 ± 0.02 | 241.6 ± 1.1 | 365.59 | 8.34 |
| Ours (α = 0.08) | 50 | **2.28 ± 0.03** | **4.29 ± 0.02** | **241.8 ± 0.9** | **336.37** | **7.62** |
| FORA (n=2) | 50 | 2.65 ± 0.04 | 4.69 ± 0.03 | 238.5 ± 1.1 | 190.25 | 5.17 |
| Ours (α = 0.18) | 50 | **2.65 ± 0.04** | **4.65 ± 0.03** | **238.7 ± 1.1** | **175.65** | **4.85** |
| FORA (n=3) | 50 | 3.31 ± 0.05 | 5.71 ± 0.06 | 230.1 ± 1.3 | 131.81 | 4.12 |
| Ours (α = 0.22) | 50 | **3.14 ± 0.05** | **5.19 ± 0.04** | **231.7 ± 1.0** | **131.81** | **4.11** |
| No Cache | 30 | 2.66 ± 0.04 | 4.42 ± 0.03 | 234.6 ± 1.0 | 219.36 | 4.88 |
| FORA (n=2) | 30 | 3.79 ± 0.04 | 5.72 ± 0.05 | 222.2 ± 1.2 | 117.08 | 3.13 |
| Ours (α = 0.35) | 30 | **3.72 ± 0.04** | **5.51 ± 0.05** | **222.9 ± 1.0** | **117.08** | **3.13** |
| No Cache | 70 | 2.17 ± 0.02 | 4.33 ± 0.02 | 242.3 ± 1.6 | 511.83 | 11.47 |
| FORA (n=2) | 70 | 2.36 ± 0.02 | 4.46 ± 0.03 | 242.2 ± 1.3 | 263.43 | 7.15 |
| Ours (α = 0.08) | 70 | **2.37 ± 0.02** | **4.29 ± 0.03** | **242.6 ± 1.5** | **248.8** | **6.9** |
| FORA (n=3) | 70 | 2.80 ± 0.02 | 5.38 ± 0.04 | 238.0 ± 1.2 | 175.77 | 5.61 |
| Ours (α = 0.12) | 70 | **2.68 ± 0.02** | **4.90 ± 0.04** | **238.8 ± 1.3** | **175.77** | **5.62** |{{< /table-caption >}}

> 🔼 This table presents the results of different methods for accelerating DiT-XL-256x256 image generation using the DDIM sampling technique.  It compares the performance of several approaches, including SmoothCache with different hyperparameter settings (α), FORA with varying numbers of cached layers (n), and a baseline with no caching (No Cache). The table is sorted by the total number of Multiply-Accumulate operations (TMACs), indicating computational cost. Key metrics presented include Inception Score (IS), Fréchet Inception Distance (FID), and Structural Similarity Index (SSIM), all of which assess the quality of the generated images. Latency (in seconds) is also reported, reflecting the inference time.  The table highlights that SmoothCache achieves a favorable trade-off between speed and quality, often outperforming other methods with similar or faster inference times. Notably, it emphasizes that L2C (Learning-to-Cache), one of the compared methods, is not training-free unlike SmoothCache.
> <details>
> <summary>read the caption</summary>
> Table 1: Results For DiT-XL-256x256 on using DDIM Sampling, sorted by TMACs. Note that L2C is not training free.
> </details>





### In-depth insights


#### DiT Inference Speedup
The research paper explores accelerating Diffusion Transformer (DiT) inference, a computationally expensive process.  **SmoothCache**, the proposed method, leverages the high similarity between layer outputs across adjacent diffusion timesteps. By analyzing layer-wise representation errors from a small calibration set, it adaptively caches and reuses key features. This approach demonstrates model-agnostic acceleration, achieving speedups ranging from 8% to 71% across diverse modalities (image, video, audio) while maintaining or improving generation quality. **Key to its success is the training-free nature and generalizability across DiT architectures and solvers.** The method's effectiveness is validated through experiments on DiT-XL, OpenSora, and Stable Audio Open, highlighting its potential for real-time applications.  The results show a compelling balance between speed and quality, surpassing or matching state-of-the-art caching methods while remaining simple to implement.  This signifies a considerable advancement in efficient DiT inference, making powerful generative models more accessible.

#### SmoothCache: A Method
The proposed SmoothCache method is a **model-agnostic and training-free** approach to accelerate inference in diffusion transformer models. It leverages the observed high similarity between layer outputs across adjacent diffusion timesteps, a phenomenon that holds across diverse model architectures and modalities. SmoothCache strategically caches and reuses these similar features by analyzing layer-wise representation errors from a small calibration set, thus **adaptively determining caching intensity** rather than employing a uniform scheme.  The method's ingenuity lies in its **generality**: it avoids model-specific assumptions and training, applying a generalizable caching scheme to various DiT architectures without requiring modifications. This results in considerable speedup across multiple modalities (image, video, audio) while maintaining or improving generation quality, exceeding the performance of other, often model-specific caching methods.

#### Model-Agnostic Caching
Model-agnostic caching is a crucial concept in optimizing the inference speed of deep learning models. **It aims to improve efficiency by leveraging the redundancy inherent in the data generated during diffusion processes.** Unlike model-specific caching techniques, which are tailored to the architecture of a particular model, a model-agnostic approach offers broader applicability and compatibility. **The key benefit lies in its ability to generalize across various diffusion transformer models and modalities**, such as image, video, and audio generation, without requiring model-specific adaptations or retraining. This significantly reduces development time and effort. The effectiveness of this approach is rooted in identifying and reusing similar layer outputs from adjacent diffusion steps, which are prevalent in diffusion transformers. This approach reduces computational redundancy and accelerates the inference process, especially when dealing with multiple modalities. **By carefully analyzing layer-wise representation errors, the method dynamically determines the optimal caching intensity** at different stages of the inference process. This dynamic nature helps to maintain a good balance between speed and generation quality, achieving significant performance gains without sacrificing the quality of outputs. This makes it a highly promising technique for accelerating inference in various contexts and expanding the applicability of resource-intensive models.

#### Cross-Modal Efficiency
Cross-modal efficiency in large language models (LLMs) focuses on optimizing performance across different modalities (text, image, audio, video).  **SmoothCache**, as described in the provided research paper, directly addresses this by leveraging the inherent redundancy between consecutive steps in the diffusion process.  This model-agnostic approach cleverly caches intermediate representations to accelerate computation without significantly sacrificing generation quality.  The effectiveness demonstrated across image, video and audio generation highlights its potential to **significantly reduce computational cost** and **enable real-time applications** for various multi-modal LLMs. **A key advantage is its training-free nature**, reducing the need for extensive model-specific fine-tuning.  However, further research could investigate the impact of varying the number of cached layers and optimizing for specific modalities to further enhance cross-modal efficiency and explore the trade-off between computational savings and generation fidelity.

#### Future Work: DiT
Future research on Diffusion Transformers (DiTs) could significantly benefit from investigating **adaptive caching strategies** that go beyond simple uniform or model-specific approaches.  A promising avenue would be exploring the development of **more sophisticated error models** to better predict the impact of caching on downstream layers, potentially through the use of more advanced machine learning techniques.  Further improvements may come from studying the interplay between different layers and exploring methods for **efficiently handling the dependencies between them**. This includes the potential of using techniques like **knowledge distillation** to compress models before caching and thus improve inference times significantly. Another aspect for future exploration is the optimization of SmoothCache for **diverse DiT architectures and modalities**, given its sensitivity to certain architecture types.  Finally, a deeper investigation into the relationship between **sampling step size, caching strategy, and generative quality** would be invaluable, leading to more robust and efficient inference techniques for DiTs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.10510/extracted/6002813/imgs/figures/layersN.png)

> 🔼 This figure displays L1 relative error curves for different components of various diffusion model architectures.  The curves illustrate the error between layer outputs at different diffusion timesteps, showing the similarity between adjacent timesteps.  Data is based on 10 calibration samples for each component, with 95% confidence intervals shown.  The y-axis range is scaled for easy comparison across different models. Note that the OpenSora model has separate spatial and temporal diffusion blocks, resulting in distinct error curves for these blocks.
> <details>
> <summary>read the caption</summary>
> Figure 2: L1 Relative Error Curves of different architecture components. Curves are plotted with 95% confidence intervals from 10 calibration samples from all components explored in this paper and scaled to the same y-axis range. Note that OpenSora has distinct spatial and temporal diffusion blocks.
> </details>



![](https://arxiv.org/html/2411.10510/extracted/6002813/imgs/figures/dit_compute_composition.png)

> 🔼 Figure 3 illustrates which layers within different diffusion model architectures are targeted for caching by the SmoothCache technique.  The figure visually represents the three models considered in the paper: DiT-XL, Stable Audio Open, and OpenSora.  Each model is depicted with its relevant DiT blocks, highlighting the specific layers (Self-attention, Cross-attention, and Feed-forward) that SmoothCache chooses to cache. The selection is based on the proximity of these layers to residual connections within each model's architecture. The diagram clarifies which layers are candidates for caching in each model to improve inference speed without significant quality loss. Note that the OpenSora model has both spatial and temporal partitions of the DiT blocks, and both are shown to have the same layers targeted for caching.
> <details>
> <summary>read the caption</summary>
> Figure 3: SmoothCache-Eligible Layers of candidate models. This visualization highlights the targeted layers that precede residual connections in a DiT block for each architecture. Each model contains N𝑁Nitalic_N DiT blocks. In the original DiT-XL model, Self-attention and Feed-forward layers are cached. In the Stable Audio Open model, Self-attention, Cross-attention, and Feed-forward layers are cached. In the Open Sora model, Self-attention, Cross-attention, and Feed-forward layers across both the temporal and spatial partitions of the DiT block.
> </details>



![](https://arxiv.org/html/2411.10510/extracted/6002813/imgs/dit/Speedup_figure_DiT.png)

> 🔼 This figure shows a breakdown of computation for different layers across three different diffusion models: DiT-XL (image generation), Stable Audio Open (audio generation), and OpenSora (video generation).  The percentages represent the proportion of Multiply-Accumulate (MAC) operations for each layer type (Self-Attention, Cross-Attention, and Feed-Forward Network) within the models' default configurations.  This visualization helps clarify which layers are computationally intensive and therefore most suitable for SmoothCache's optimization strategy.
> <details>
> <summary>read the caption</summary>
> Figure 4: SmoothCache-Eligible Layers Compute Composition of candidate models. These are computed from the MACs of the default configurations experimented on in this paper.
> </details>



![](https://arxiv.org/html/2411.10510/extracted/6002813/imgs/stableaudio/Stable_Audio_Visualization.png)

> 🔼 This figure visualizes the results of the SmoothCache technique on DiT-XL/2-256x256 model for unconditional image generation.  It compares the image quality produced by SmoothCache using two different threshold values (0.08 and 0.18) against a baseline of no caching and a static caching approach. Each method generated 50,000 images using 50 DDIM sampling steps on the ImageNet-1k dataset.  The images displayed are a visual representation of the generated image samples, showcasing any visible differences in quality or artifacts introduced by the various techniques. This allows for a direct visual comparison of image generation quality across the different caching strategies.
> <details>
> <summary>read the caption</summary>
> Figure 5: SmoothCache results on DiT-XL/2-256x256 for unconditional generation with 50 DDIM sampling steps on ImageNet-1k for thresholds 0.08 and 0.18, as well as for Static Caching.
> </details>



![](https://arxiv.org/html/2411.10510/extracted/6002813/imgs/opensora/OpenSora_Speedup.png)

> 🔼 This figure visualizes the results of applying SmoothCache to Stable Audio Open, a text-to-audio diffusion model, with two different threshold values (0.15 and 0.3). Log-Mel spectrograms are displayed to represent the generated audio.  The spectrograms allow for a visual comparison of the audio generated with no caching, and with SmoothCache applied at the specified thresholds, revealing potential differences in audio quality and characteristics resulting from the application of SmoothCache.  Each spectrogram represents a different audio sample.
> <details>
> <summary>read the caption</summary>
> Figure 6: SmoothCache Results on Stable Audio Open for threshold 0.15 and 0.3. Log-Mel Spectrograms are shown.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Schedule | Steps | VBench (%) (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.m1.1d">↑</annotation></semantics></math>) | TMACs | Latency (s) |
|---|---|---|---|---|
| No Cache | 30 | 79.36 <math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.3.3.2.m2.1"><semantics id="S3.T2.3.3.2.m2.1a"><mo id="S3.T2.3.3.2.m2.1.1" xref="S3.T2.3.3.2.m2.1.1.cmml">\pm</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.2.m2.1b"><csymbol cd="latexml" id="S3.T2.3.3.2.m2.1.1.cmml" xref="S3.T2.3.3.2.m2.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.2.m2.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.2.m2.1d">\pm</annotation></semantics></math>0.19 | 1612.1 | 28.43 |
| Ours (<math alttext="\alpha" class="ltx_Math" display="inline" id="S3.T2.5.5.1.m1.1"><semantics id="S3.T2.5.5.1.m1.1a"><mi id="S3.T2.5.5.1.m1.1.1" xref="S3.T2.5.5.1.m1.1.1.cmml">\alpha</mi><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.1.m1.1b"><ci id="S3.T2.5.5.1.m1.1.1.cmml" xref="S3.T2.5.5.1.m1.1.1">\alpha</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.1.m1.1d">italic_\alpha</annotation></semantics></math> = 0.02) | 30 | 78.76 <math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.7.7.3.m2.1"><semantics id="S3.T2.7.7.3.m2.1a"><mo id="S3.T2.7.7.3.m2.1.1" xref="S3.T2.7.7.3.m2.1.1.cmml">\pm</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.3.m2.1b"><csymbol cd="latexml" id="S3.T2.7.7.3.m2.1.1.cmml" xref="S3.T2.7.7.3.m2.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.3.m2.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.3.m2.1d">\pm</annotation></semantics></math>0.38 | 1388.5 | 26.57 |
| Ours (<math alttext="\alpha" class="ltx_Math" display="inline" id="S3.T2.9.9.1.m1.1"><semantics id="S3.T2.9.9.1.m1.1a"><mi id="S3.T2.9.9.1.m1.1.1" xref="S3.T2.9.9.1.m1.1.1.cmml">\alpha</mi><annotation-xml encoding="MathML-Content" id="S3.T2.9.9.1.m1.1b"><ci id="S3.T2.9.9.1.m1.1.1.cmml" xref="S3.T2.9.9.1.m1.1.1">\alpha</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.9.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.9.1.m1.1d">italic_\alpha</annotation></semantics></math> = 0.03) | 30 | 78.10 <math alttext="\pm" class="ltx_Math" display="inline" id="S3.T2.11.11.3.m2.1"><semantics id="S3.T2.11.11.3.m2.1a"><mo id="S3.T2.11.11.3.m2.1.1" xref="S3.T2.11.11.3.m2.1.1.cmml">\pm</mo><annotation-xml encoding="MathML-Content" id="S3.T2.11.11.3.m2.1b"><csymbol cd="latexml" id="S3.T2.11.11.3.m2.1.1.cmml" xref="S3.T2.11.11.3.m2.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.11.11.3.m2.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T2.11.11.3.m2.1d">\pm</annotation></semantics></math>0.51 | 1321.1 | 26.17 |{{< /table-caption >}}
> 🔼 This table presents the results of applying SmoothCache and other methods (No Cache, FORA with 2 and 3 steps caching) to the OpenSora model using the Rectified Flow solver.  It shows the VBench score (a metric for video generation quality), the total number of multiply-accumulate operations (TMACS), the inference latency in seconds, and the number of sampling steps used for each method.  The data illustrates the trade-off between speed and quality achieved by each method, showing how SmoothCache improves the model's performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Results For OpenSora on Rectified Flow.
> </details>

{{< table-caption >}}
| Schedule | AudioCaps |  |  | MusicCaps (No Singing) |  |  | Song Describer (No Singing) |  |  | TMACs | Latency (s) |
|---|---|---|---|---|---|---|---|---|---|---|---| 
|  | FD<sub>OpenL3</sub> (↓) | KL<sub>PaSST</sub> (↓) | CLAP (↑) | FD<sub>OpenL3</sub> (↓) | KL<sub>PaSST</sub> (↓) | CLAP (↑) | FD<sub>OpenL3</sub> (↓) | KL<sub>PaSST</sub> (↓) | CLAP (↑) |  |  |
| No Cache | 81.7 ± 6.8 | 2.13 ± 0.02 | 0.287 ± 0.003 | 82.7 ± 2.1 | 0.931 ± 0.012 | 0.467 ± 0.001 | 105.2 ± 6.3 | 0.551 ± 0.024 | 0.421 ± 0.003 | 209.82 | 5.65 |
| Ours (α = 0.15) | 84.5 ± 6.7 | 2.15 ± 0.02 | 0.285 ± 0.003 | 85.9 ± 2.3 | 0.942 ± 0.012 | 0.467 ± 0.001 | 106.2 ± 6.6 | 0.555 ± 0.024 | 0.420 ± 0.003 | 170.75 | 4.59 |
| Ours (α = 0.30) | 89.6 ± 6.3 | 2.17 ± 0.02 | 0.271 ± 0.003 | 82.0 ± 1.5 | 0.962 ± 0.012 | 0.448 ± 0.001 | 131.3 ± 5.9 | 0.596 ± 0.028 | 0.392 ± 0.003 | 136.16 | 3.72 |{{< /table-caption >}}
> 🔼 This table presents the results of the SmoothCache method applied to the Stable Audio Open model, using the DPM-Solver++(3M) stochastic differential equation (SDE) solver across three datasets: AudioCaps, MusicCaps (without singing prompts), and Song Describer (without singing prompts).  For each dataset, the table shows the performance metrics (FDOpenL3, KL-PASST, CLAP,  Total Multiply-Accumulate Operations (TMACS), and inference Latency in seconds) for three scenarios: no caching, static caching (with N=2), and SmoothCache with two different threshold values (α = 0.15 and α = 0.30). This allows for a comparison of SmoothCache's performance against a baseline (no caching) and a simpler caching approach (static caching), demonstrating its effectiveness in accelerating inference while maintaining or improving generation quality.
> <details>
> <summary>read the caption</summary>
> Table 3: Results For Stable Audio Open on DPMSolver++(3M) SDE on 3 datasets.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.10510/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10510/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10510/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10510/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10510/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10510/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10510/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10510/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10510/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10510/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}