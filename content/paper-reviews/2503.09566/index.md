---
title: "TPDiff: Temporal Pyramid Video Diffusion Model"
summary: "TPDiff accelerates video diffusion by progressively increasing frame rates during diffusion, optimizing computational efficiency with a novel stage-wise training strategy."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 National University of Singapore",]
showSummary: true
date: 2025-03-12
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.09566 {{< /keyword >}}
{{< keyword icon="writer" >}} Lingmin Ran et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-13 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.09566" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.09566" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.09566/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Video diffusion models face **high computational costs** due to the complexity of jointly modeling spatial and temporal distributions. Existing methods often suffer from error accumulation, increased inference time, or limited applicability across different diffusion forms. **The redundancy between consecutive video frames is not efficiently utilized**, leading to unnecessary computational overhead.



To address these challenges, TPDiff, a novel framework that **enhances both training and inference efficiency**. TPDiff progressively increases frame rates during the diffusion process, with the final stage operating at full frame rate. A stage-wise diffusion training framework aligns noise and data to train the model. Experiments demonstrate significant reductions in computational costs and improvements in inference speed.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} TPDiff introduces a temporal pyramid approach for video diffusion, enhancing efficiency by varying frame rates across diffusion stages. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The paper presents a stage-wise diffusion training framework that aligns noise and data, enabling seamless integration of various diffusion forms. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments demonstrate the method's generalizability and efficiency gains, achieving faster training and inference compared to vanilla diffusion models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research offers a practical solution to the **computational demands of video diffusion models**, enabling researchers to develop more efficient and scalable generative models. The proposed framework opens new avenues for exploring temporal modeling and paves the way for **high-quality video generation with reduced resource consumption**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.09566/x1.png)

> 🔼 This figure illustrates the core concept of the Temporal Pyramid Video Diffusion Model (TPDiff).  Panel (a) shows a traditional video diffusion model using a constant frame rate throughout the entire diffusion process, while panel (b) depicts the TPDiff approach. TPDiff progressively increases the frame rate across different stages of the diffusion process. Only the final stage operates at the full frame rate. This strategy significantly reduces computational costs during both training and inference.  Panel (c) provides a quantitative comparison of training and inference efficiency between the vanilla video diffusion model and TPDiff, demonstrating the improved efficiency of the proposed method.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of our method. Our method employs progressive frame rates, which utilizes full frame rate only in the final stage as shown in (a) and (b), thereby largely optimizing computational efficiency in both training and inference shown in (c).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.1.1.2">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.3">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1">Latency(s)<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.4">Speed up</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.2.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.1.2.1.1.1">MiniFlux-vid</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.2">Vanilla</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.3">20.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.4">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3.2">
<td class="ltx_td ltx_align_center" id="S4.T1.1.3.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.3.2.1.1">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.3.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.3.2.2.1">12.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.3.2.3">1.71x</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T1.1.4.3.1" rowspan="2"><span class="ltx_text" id="S4.T1.1.4.3.1.1">AnimateDiff</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.4.3.2">Vanilla</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.4.3.3">6.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.4.3.4">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.5.4.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.5.4.1.1">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.5.4.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.5.4.2.1">4.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.5.4.3">1.49x</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the inference efficiency for various video generation models.  It shows the latency (in seconds) required for inference and the speedup achieved by the proposed TPDiff model relative to the baseline models.  The total number of denoising steps used for all models during inference is 30.
> <details>
> <summary>read the caption</summary>
> Table 1: Inference efficiency of baselines and our method. The total denoising step is set to 30 for all models.
> </details>





### In-depth insights


#### Entropy Reduction
The concept of entropy reduction in the context of video diffusion models is intriguing. It suggests that the reverse diffusion process, responsible for generating coherent video frames from random noise, inherently reduces uncertainty. In the early stages of diffusion, the latents are high-entropy, containing minimal structured information. The **key insight** is that maintaining full frame rates at this stage is computationally wasteful. As the diffusion process progresses, the entropy decreases, and the video latents gradually acquire more structured content. Therefore, the computational resources should be focused on the later stages with high informative inter-frame relationships, operating on full frame rate. This **entropy-reducing nature** can be exploited to optimize training and inference efficiency in video diffusion models. By progressively increasing the frame rate alongside the denoising stages, the framework becomes more efficient, improving speed without compromising quality, which provides valuable optimization benefits during later stages.

#### Stage-wise Diff
The 'Stage-wise Diffusion' approach is interesting as it aims to enhance training and inference by dividing the diffusion process into stages. **Each stage seems to operate at a different frame rate, progressively increasing as the diffusion process advances.** This is based on the insight that early diffusion steps have low signal-to-noise ratio, making full frame rates unnecessary. A key challenge is training this multi-stage model in a unified way, and the paper proposes a dedicated training framework to address this. By carefully managing frame rates across diffusion stages, it smartly optimizes computational efficiency during both training and generation.

#### Temporal Pyramid
The temporal pyramid concept leverages video redundancy. Successive frames often exhibit minimal changes, and early diffusion steps have weak inter-frame dependencies due to low SNR. **TPDiff progressively raises frame rates** during denoising, focusing computational efforts on later, high-information stages. Unlike methods with separate temporal interpolation, TPDiff uses a single model for all rates by dividing the diffusion process. This stage-wise diffusion is trained by **solving partitioned probability flow ODEs**, aligning data and noise for versatile diffusion forms. Experiments show the framework's applicability and improved efficiency.

#### Data-Noise Align
**Data-noise alignment** is an innovative training technique to improve diffusion model convergence by pre-determining target noise distribution for each video. This alignment reduces training randomness by ensuring **ODE** paths are nearly deterministic, leading to faster convergence. This method mitigates boundary distribution shifts in multi-stage diffusion, where traditional techniques struggle to find a unified training target. By constraining the value of e within a narrow range, data-noise alignment helps model learn the desired noise characteristics more accurately, ultimately improving the efficiency of training process.

#### Multi-stage ODE
**Multi-stage ODEs** could offer a novel approach to solving complex problems. By breaking down a problem into multiple stages, each with its own ODE, we can leverage the strengths of different numerical methods. **Adaptive step-size control** can be applied to each stage independently, leading to improved efficiency and accuracy. This approach also allows for **parallelization**, where each stage can be solved concurrently. The challenge lies in ensuring smooth transitions between stages and maintaining overall stability, as well as proper error estimation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.09566/x2.png)

> 🔼 Figure 2 illustrates the methodology of the Temporal Pyramid Video Diffusion model (TPDiff). Part (a) shows the model's pipeline, where the diffusion process is divided into multiple stages with progressively increasing frame rates.  Within each stage, temporal interpolation is used to generate initial frames, enhancing efficiency.  Part (b) contrasts the training strategies of TPDiff and traditional vanilla diffusion models. Vanilla diffusion models directly guide the noise direction along the ordinary differential equation (ODE) path toward the true data distribution.  In contrast, TPDiff employs a stage-wise diffusion strategy where the noise direction in each stage is oriented towards the endpoint of that specific stage, improving training efficiency and making the training more stable and effective. 
> <details>
> <summary>read the caption</summary>
> Figure 2: Methodology. a) Pipeline of temporal pyramid video diffusion model. We divide diffusion process into multiple stages with increasing frame rate. In each stage, new frames are initially temporally interpolated from existing frames. b) Our training strategy: stage-wise diffusion. In vanilla diffusion models, the noise direction along the ODE path points toward the real data distribution. In stage-wise diffusion, the noise direction is oriented to the end point of the current stage.
> </details>



![](https://arxiv.org/html/2503.09566/x3.png)

> 🔼 This figure illustrates the core concept behind data-noise alignment, a crucial aspect of the proposed training strategy.  Panel (a) depicts the stochastic nature of vanilla diffusion training, where noise is sampled randomly across the entire noise distribution, leading to an ODE path that varies significantly across training iterations. Panel (b) shows that, in contrast, the proposed method uses data-noise alignment to select noise from a much smaller range that's closest to the data. This ensures that the ODE path is far more deterministic and stable across training steps, resulting in improved training efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 3: Data-Noise Alignment. For every training sample, (a) vanilla diffusion training randomly samples noises across the entire noise distribution, resulting in stochastic ODE path during training. (b) In contrast, our method samples noises in the closest range, making the ODE path approximately deterministic during training.
> </details>



![](https://arxiv.org/html/2503.09566/x4.png)

> 🔼 This figure shows a qualitative comparison of video generation results between models trained with vanilla diffusion and the proposed TPDiff method. Each pair of videos presents a comparison; the top row displays the output from the vanilla diffusion model and the bottom row shows the output from TPDiff. The first two pairs were generated using the MiniFlux-vid model, while the remaining two pairs were generated using the AnimateDiff model.  The figure demonstrates the visual differences in video quality, highlighting how TPDiff enhances the results.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparison. In each pair of videos, the first row presents the results of models trained using vanilla diffusion and the second row shows the results of our method. The first two video pairs are generated by MiniFlux-vid and the remaining are generated by animatediff.
> </details>



![](https://arxiv.org/html/2503.09566/x5.png)

> 🔼 This figure displays the training efficiency of the proposed TPDiff model and vanilla diffusion models using two different diffusion methods: DDIM (denoising diffusion implicit models) and Flow Matching.  The x-axis represents the GPU hours consumed during training, and the y-axis represents the Fréchet Video Distance (FVD), a metric that measures the quality of generated videos.  Lower FVD values indicate better video quality.  The plots show that for the same level of video quality (FVD), the TPDiff model requires significantly fewer GPU hours to train compared to vanilla diffusion methods for both DDIM and Flow Matching.  This demonstrates the efficiency improvements achieved by the proposed TPDiff model.
> <details>
> <summary>read the caption</summary>
> Figure 5: Convergence curve of vanilla diffusion models and our method on (a) DDIM, (b) Flow Matching. We illustrate the FVD of two methods with different GPU hours consumed. Our method achieves higher training efficiency compared to vanilla approachs.
> </details>



![](https://arxiv.org/html/2503.09566/x6.png)

> 🔼 This ablation study compares the video generation quality of the proposed method with and without the inference denoising step. The results show that the proposed method, with the inference denoising, generates smoother, higher-quality videos while the baseline without this step produces videos with significant flickering artifacts.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation study of inference strategy. Our method generates smooth, high-quality videos, whereas the baseline without inference renoising exhibits significant flickers
> </details>



![](https://arxiv.org/html/2503.09566/x7.png)

> 🔼 This ablation study compares video generation results with and without data-noise alignment. The figure shows that using data-noise alignment (our method) produces clearer videos compared to the baseline which does not use data-noise alignment, highlighting the importance of this technique in enhancing video quality.
> <details>
> <summary>read the caption</summary>
> Figure 7: Ablation study of data-noise alignment. Our method can produce clearer videos compared to the baseline.
> </details>



![](https://arxiv.org/html/2503.09566/x8.png)

> 🔼 This figure compares video generation results from a vanilla diffusion model and the proposed TPDiff model after only 5000 training steps.  The target video is a serene scene of a sunflower field. The key observation is that TPDiff produces temporally stable and coherent videos even in the early stages of training, whereas the vanilla diffusion model struggles to generate consistent video frames at this point.
> <details>
> <summary>read the caption</summary>
> Figure 8: Comparison between vanilla diffusion and our method after 5000 training steps. Our method can generate temporally stable videos even at very early training steps while vanilla method cannot. The prompt is ”A serene scene of a sunflower field.”
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.2.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.2">Total Score</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.3">Motion Smoothness</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.4">Object Class</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.5">Multiple Objects</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.6">Spatial Relationship</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.2.1.1">ModelScope <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.09566v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.1.2">73.12%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.1.3">95.83%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.1.4">67.06%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.1.5">33.91%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.1.6">27.55%</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.3.2.1">OpenSora <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.09566v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.2.2">74.08%</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.2.3">91.97%</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.2.4">78.30%</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.2.5">30.69%</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.2.6">41.11%</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.4.3.1">AnimateDiff - Vanilla</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.3.2">73.65%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.3.3">96.28%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.3.4">81.34%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.3.5"><span class="ltx_text ltx_font_bold" id="S4.T2.2.4.3.5.1" style="color:#0000FF;">39.42%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.3.6">43.23%</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.5.4.1">AnimateDiff - Ours</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.5.4.2.1" style="color:#0000FF;">74.96%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.5.4.3.1" style="color:#0000FF;">97.68%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.2.5.4.4.1" style="color:#0000FF;">86.77%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.4.5">31.15%</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.4.6"><span class="ltx_text ltx_font_bold" id="S4.T2.2.5.4.6.1" style="color:#0000FF;">56.62%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.6.5.1">MiniFlux-vid - Vanilla</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.6.5.2">77.69%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.6.5.3">98.34%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.6.5.4">77.32%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.6.5.5">36.26%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.6.5.6"><span class="ltx_text ltx_font_bold" id="S4.T2.2.6.5.6.1">49.79%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.2.7.6.1">MiniFlux-vid - Ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.7.6.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.7.6.2.1">78.52%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.7.6.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.7.6.3.1">98.96%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.7.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.2.7.6.4.1">83.21%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.7.6.5"><span class="ltx_text ltx_font_bold" id="S4.T2.2.7.6.5.1">43.18%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.7.6.6">42.23%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of video generation quality between several baselines and the proposed TPDiff method.  The baselines include standard video diffusion models (trained without the temporal pyramid approach) using two different image models: MiniFlux-vid and AnimateDiff.  The metrics used to evaluate video generation quality are: Total Score, Motion Smoothness, Object Class, Multiple Objects, and Spatial Relationship.  Higher scores indicate better performance in each respective aspect of video generation quality.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of video generation quality of baselines and our method.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.3.1.1" rowspan="2"><span class="ltx_text" id="S4.T3.2.3.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.3.1.2" rowspan="2"><span class="ltx_text" id="S4.T3.2.3.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T3.2.3.1.3">Metrics</th>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.1.1">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.2.2.2">CLIPSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.2.4.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.4.1.1" rowspan="2"><span class="ltx_text" id="S4.T3.2.4.1.1.1">MiniFlux-vid</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.4.1.2">w.o. alignment</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.4.1.3">602.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.4.1.4">29.34</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.5.2">
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.2.1">w. alignment</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.5.2.2.1">562.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.2.3"><span class="ltx_text ltx_font_bold" id="S4.T3.2.5.2.3.1">29.76</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.6.3">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.2.6.3.1" rowspan="2"><span class="ltx_text" id="S4.T3.2.6.3.1.1">AnimateDiff</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.6.3.2">w.o. alignment</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.6.3.3">834.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.6.3.4">28.21</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.7.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.7.4.1">w. alignment</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.7.4.2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.7.4.2.1">782.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.7.4.3"><span class="ltx_text ltx_font_bold" id="S4.T3.2.7.4.3.1">28.91</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the impact of data-noise alignment in the proposed video generation model.  It compares the Fréchet Video Distance (FVD) and CLIP-SIM scores for the AnimateDiff and MiniFlux-vid models, both with and without data-noise alignment. Lower FVD indicates better generation quality, and higher CLIP-SIM suggests better semantic similarity between generated and real videos. The results demonstrate the positive impact of the data-noise alignment technique on video generation performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation on data-noise alignmenmt.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.09566/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09566/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09566/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09566/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09566/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09566/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09566/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09566/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09566/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09566/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09566/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}