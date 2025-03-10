---
title: "ProReflow: Progressive Reflow with Decomposed Velocity"
summary: "ProReflow: Improves diffusion model efficiency via progressive training and direction-focused velocity alignment."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Tsinghua University",]
showSummary: true
date: 2025-03-05
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.04824 {{< /keyword >}}
{{< keyword icon="writer" >}} Lei Ke et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.04824" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.04824" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.04824/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion models excel in image and video generation but are computationally intensive. Flow matching, which streamlines the diffusion process for faster generation, offers a solution. However, the original training pipeline of flow matching isn't optimal. This paper introduces two techniques to enhance flow matching. 



The paper presents **ProReflow**, which incorporates progressive reflow and aligned v-prediction. **Progressive reflow** progressively reflows diffusion models in local timesteps until the whole diffusion progresses. **Aligned v-prediction** highlights direction matching over magnitude matching. Experiments show that the method improves performance significantly.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Progressive reflow enables curriculum learning in flow matching, facilitating model training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Direction matching of velocity enhances generation quality by prioritizing direction over magnitude. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The new method achieves state-of-the-art performance with fewer sampling steps. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **improves the efficiency of diffusion models**, making them more practical for real-time applications. The proposed techniques are relatively simple to implement and can be integrated into existing architectures. The improvement helps in creating high-quality images in fewer steps, reducing computational costs, and **opening new possibilities for edge devices**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.04824/x1.png)

> 🔼 Figure 1 consists of two subfigures. Subfigure (a) visualizes the velocity differences across various timesteps within a diffusion model. It uses two metrics, L2 distance and cosine similarity, to quantify the discrepancy in velocities between different timesteps. The results show that the velocity discrepancy increases as the distance between timesteps grows. Subfigure (b) investigates the impact of noise on the quality of generated images. By introducing noise that only affects the direction and magnitude of velocity separately, it demonstrates that noise impacting direction causes a significantly higher FID degradation. This highlights the importance of accurately matching the direction of velocity during flow matching.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) L2 distance and Cosine similarity across velocities at different timesteps, the velocity discrepancy between timesteps increases with their distance in timesteps. (b) The consistently larger FID degradation under directional noise demonstrates that velocity direction is more critical for generation quality.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.4.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.4.1.1.2">Step</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.4.1.1.3">FID (↓)</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.4.1.1.4">CLIP Score(↑)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.2.1.1">2-Reflow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.2.1.2">2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.2.1.3">49.32</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.4.2.1.4">27.36</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.3.2.1">2-Reflow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.3.2.2">4</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.3.2.3">32.97</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.3.2.4">28.93</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.4.3.1">Instaflow-0.9B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.4.3.2">2</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.3.3">71.54</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.4.3.4">26.07</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.5.4.1">Instaflow-0.9B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.5.4.2">4</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.5.4.3">102.41</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.5.4.4">24.39</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.6.5.1">PeRFlow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.6.5.2">4</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.6.5.3">23.81</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.6.5.4">30.24</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.7.6.1">
<span class="ltx_text ltx_font_bold" id="S4.T1.4.7.6.1.1">ProReflow-</span>I (ours)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.7.6.2">4</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.6.3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.7.6.3.1">22.97</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.7.6.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.7.6.4.1">30.29</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.8.7.1">
<span class="ltx_text ltx_font_bold" id="S4.T1.4.8.7.1.1">ProReflow-</span>II (ours)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.8.7.2">2</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.7.3">27.59</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.8.7.4">27.79</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.4.9.8.1">
<span class="ltx_text ltx_font_bold" id="S4.T1.4.9.8.1.1">ProReflow-</span>II (ours)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T1.4.9.8.2">4</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.9.8.3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.9.8.3.1">22.03</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.4.9.8.4">29.95</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of different methods for accelerating the Stable Diffusion model on the COCO-2017 validation set.  The methods are evaluated based on FID (Fréchet Inception Distance) and CLIP (Contrastive Language–Image Pre-training) scores. The number of sampling steps required by each method is also provided. The results show that the proposed ProReflow method significantly outperforms existing flow-based approaches in terms of both FID and CLIP scores, achieving state-of-the-art results with a reduced number of sampling steps.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison on COCO-2017 validation set, following the evaluation setup in  [40]. Our method outperforms existing flow-based approaches.
> </details>





### In-depth insights


#### Reflow Revisited
The concept of "Reflow Revisited" hints at a critical examination and potential refinement of existing flow-based generative models. It is an iterative process, aiming to rectify and enhance the velocity field within diffusion models. **Progressive training** and **aligned v-prediction** are used, likely addressing limitations such as trajectory inaccuracies and inefficiencies. It seems to explore alternative optimization strategies for flow matching. By revisiting reflow, one could achieve a better balance between computational efficiency and generation quality, or identify novel architectures that streamline the diffusion process. The primary goal would be enhance existing frameworks without fundamental architectural changes.

#### Local Reflows
The concept of "Local Reflows," though not explicitly present, alludes to a strategy for refining generative model trajectories in localized segments. The insight suggests that instead of globally optimizing the entire diffusion process at once, a more effective approach involves **breaking down the trajectory into smaller, manageable windows**. This allows the model to initially focus on learning consistent velocity predictions within adjacent timesteps, where the velocity discrepancies are less pronounced. The potential benefits are multifold, enabling more **stable training dynamics**, enhanced **fine-grained control** over trajectory shaping, and mitigation of the challenges associated with long-range dependencies. By progressively reducing the window size, the model gradually refines its ability to straighten the entire trajectory, resulting in improved generation quality and efficient few-step sampling. Overall, focusing on local reflows is expected to give a model better learning and fine-tuning capabilities.

#### Align Direction
The idea of aligning directions in various fields, such as computer vision or machine learning, suggests a strategy where the **orientation or heading of different elements or processes is harmonized**. This alignment can be crucial for achieving better performance or convergence. For example, in optimization algorithms, aligning the search direction with the gradient can lead to faster convergence. Similarly, in generative models, aligning the latent space directions with meaningful attributes can enable more controlled generation. **Directional alignment** may involve techniques like regularization terms that penalize misalignment or loss functions that explicitly reward directional consistency. The approach often involves understanding the underlying geometry or structure of the data or the problem and then designing methods that encourage alignment with that structure. By prioritizing directional accuracy, systems can achieve superior results compared to those that only focus on magnitude or other scalar measures. This highlights the importance of vector-based thinking over scalar approaches.

#### SDXL Result
When delving into the 'SDXL Result,' the expectation is to find a thorough examination of the proposed methodology's efficacy on the SDXL model. This involves assessing enhancements in **image quality**, **coherence**, and **detail fidelity**, comparing the model's performance against existing state-of-the-art techniques and baselines, using quantitative metrics such as FID scores and qualitative observations, while focusing on trade-offs between performance and computational efficiency in this setting. It's also vital to note any parameter adjustments made to optimize performance, offering insights for real-world applications.

#### CFG's Influence
The section on CFG influence underscores its importance in diffusion models. It highlights that **classifier-free guidance** (CFG) significantly impacts the stability of Stable Diffusion. The training setup involves setting the CFG scale at 1 throughout all stages, indicating **equal consideration for guided and unguided learning**. Evaluations across a broad range of CFG values reveal insights into the model's behavior under different guidance strengths. This emphasizes the **crucial role of CFG in balancing fidelity and diversity** in the generated images, requiring careful tuning for optimal results.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.04824/x2.png)

> 🔼 This figure compares different methods for training diffusion models, focusing on the optimization process and the resulting sampling trajectories.  Subfigures (a) through (e) show how various approaches attempt to straighten the trajectory of a diffusion process (ideal trajectory is a straight line). Traditional methods (a)-(d) struggle to fully achieve this, resulting in curved trajectories, showing that optimization doesn't reach the theoretical ideal.  Subfigure (e) demonstrates the proposed Progressive Reflow method which provides a better approximation by breaking the process into smaller, easier-to-optimize steps. Subfigure (f) illustrates how the proposed Aligned v-Prediction technique refines velocity prediction by correcting the direction of the velocity vector between consecutive timesteps, thus improving accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 2: Conceptual illustration of different methods. (a)–(e) compare training objectives and sampling trajectories across different methods. Arrows show optimization targets, and red dashed lines represent actual sampling trajectories, which are curved due to the optimization not achieving the theoretical optimum. (e) shows our progressive reflow method achieves better approximation. (f) presents how our proposed aligned v-prediction works between timesteps [t,t+1]𝑡𝑡1[t,t+1][ italic_t , italic_t + 1 ], it reduces prediction deviation with velocity direction correction.
> </details>



![](https://arxiv.org/html/2503.04824/x5.png)

> 🔼 This figure analyzes the performance of two proposed models, ProReflow-I and ProReflow-II, under varying classifier-free guidance (CFG) scales.  ProReflow-I uses 4 inference steps, while ProReflow-II employs only 2.  The x-axis represents the CFG scale (ranging from 2 to 7), while the y-axis shows the resulting FID and CLIP scores. The results are evaluated on the COCO-2017 dataset, providing insights into model robustness and efficiency across different CFG settings. The curves reveal how FID and CLIP scores vary as the CFG scale changes for both models, helping to compare their performance. 
> <details>
> <summary>read the caption</summary>
> Figure 3: Performance of our models under different factors of classifier-free guidance (CFG) on COCO-2017. CFG scale ranges from 2 to 7. I and II stands for ProReflow-I with 4 steps and ProReflow-II with 2 steps, respectively.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.1.2.1.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.2.1.2">Time (↓)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.2.1.3">Step</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.1.2.1.4">FID (↓)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="S4.T2.1.3.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.3.2.1.1">ODE-solver based methods</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.3">
<td class="ltx_td ltx_align_left" id="S4.T2.1.4.3.1">DPMSolver <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.2">0.88s</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.3">25</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.4.3.4">9.78</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5.4">
<td class="ltx_td ltx_align_left" id="S4.T2.1.5.4.1">DPMSolver <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.4.2">0.34s</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.4.3">8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.5.4.4">22.44</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6.5">
<td class="ltx_td ltx_align_left" id="S4.T2.1.6.5.1">DPMSolver++ <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.5.2">0.26s</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.5.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.6.5.4">22.36</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.2">DDIM(our teacher) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1"><math alttext="-" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" xref="S4.T2.1.1.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><minus id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3">32</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.4">10.05</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="S4.T2.1.7.6.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.7.6.1.1">Distillation-based methods</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.8.7">
<td class="ltx_td ltx_align_left" id="S4.T2.1.8.7.1">LCM-LoRA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.8.7.2">0.12s</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.8.7.3">2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.8.7.4">24.28</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.9.8">
<td class="ltx_td ltx_align_left" id="S4.T2.1.9.8.1">LCM-LoRA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.9.8.2">0.19s</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.9.8.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.9.8.4">23.62</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.10.9">
<td class="ltx_td ltx_align_left" id="S4.T2.1.10.9.1">UniPC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.9.2">0.19s</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.9.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.10.9.4">23.30</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.11.10">
<td class="ltx_td ltx_align_left" id="S4.T2.1.11.10.1">Flash Diffusion <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.11.10.2">0.19s</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.11.10.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.11.10.4">12.41</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.12.11">
<td class="ltx_td ltx_align_left" id="S4.T2.1.12.11.1">PCM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.12.11.2">0.19s</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.12.11.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.12.11.4">11.70</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.13.12">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="S4.T2.1.13.12.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.13.12.1.1">Flow-based methods</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.14.13">
<td class="ltx_td ltx_align_left" id="S4.T2.1.14.13.1">Instaflow-0.9B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.14.13.2">0.13s</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.14.13.3">2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.14.13.4">24.61</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.15.14">
<td class="ltx_td ltx_align_left" id="S4.T2.1.15.14.1">Instaflow-0.9B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.15.14.2">0.21s</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.15.14.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.15.14.4">44.01</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.16.15">
<td class="ltx_td ltx_align_left" id="S4.T2.1.16.15.1">2-ReFlow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.16.15.2">0.13s</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.16.15.3">2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.16.15.4">20.17</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.17.16">
<td class="ltx_td ltx_align_left" id="S4.T2.1.17.16.1">2-ReFlow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.17.16.2">0.21s</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.17.16.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.17.16.4">15.32</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.18.17">
<td class="ltx_td ltx_align_left" id="S4.T2.1.18.17.1">PeRFlow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.04824v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.18.17.2">0.21s</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.18.17.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.18.17.4">12.01</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.19.18">
<td class="ltx_td ltx_align_left" id="S4.T2.1.19.18.1">ProReflow-I (ours)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.19.18.2">0.21s</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.19.18.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.19.18.4">11.16</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.20.19">
<td class="ltx_td ltx_align_left" id="S4.T2.1.20.19.1">ProReflow-II (ours)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.20.19.2">0.13s</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.20.19.3">2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.20.19.4">15.44</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.21.20">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.1.21.20.1">
<span class="ltx_text ltx_font_bold" id="S4.T2.1.21.20.1.1">ProReflow-</span>II (ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.21.20.2">0.21s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.21.20.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.21.20.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.21.20.4.1">10.70</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for accelerating the diffusion process in image generation, specifically focusing on the COCO-2014 validation set.  It compares the FID (Fréchet Inception Distance) scores achieved by various methods, including both ODE-solver based approaches (like DPM-Solver and its variants), distillation-based methods, and flow-based methods (including the proposed ProReflow). The number of steps required for sampling and the inference time are also included to demonstrate the efficiency of each approach. The evaluation setup follows the guidelines described in reference [11].  Lower FID values indicate better image quality.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison on COCO-2014 validation set, following the evaluation setup in  [11].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.4.1.1.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.1.1.2">Res.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.1.1.3">Steps</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T3.4.1.1.4">FID (↓)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="S4.T3.4.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.2.1.1">COCO2017</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.3.3">
<td class="ltx_td ltx_align_left" id="S4.T3.4.3.3.1">Perflow</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.3.3.2">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.3.3.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.3.3.4">27.06</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4">
<td class="ltx_td ltx_align_left" id="S4.T3.4.4.4.1">Rectified Diffusion</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.2">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.4.4.4">25.81</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.5.5">
<td class="ltx_td ltx_align_left" id="S4.T3.4.5.5.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.5.5.1.1">ProReflow-SDXL (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.5.5.2">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.5.5.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.5.5.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.5.5.4.1">25.36</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="S4.T3.4.6.6.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.6.6.1.1">COCO2014-10k</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.7.7">
<td class="ltx_td ltx_align_left" id="S4.T3.4.7.7.1">SDXL-Lightning</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.7.2">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.7.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.7.7.4">24.56</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.8.8">
<td class="ltx_td ltx_align_left" id="S4.T3.4.8.8.1">SDXL-Turbo</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.8.2">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.8.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.8.8.4">23.19</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.9.9">
<td class="ltx_td ltx_align_left" id="S4.T3.4.9.9.1">LCM</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.9.9.2">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.9.9.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.9.9.4">22.16</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.10.10">
<td class="ltx_td ltx_align_left" id="S4.T3.4.10.10.1">PCM</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.10.2">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.10.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.10.10.4">21.04</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.11.11">
<td class="ltx_td ltx_align_left" id="S4.T3.4.11.11.1">Perflow</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.11.11.2">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.11.11.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.11.11.4">20.99</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.12.12">
<td class="ltx_td ltx_align_left" id="S4.T3.4.12.12.1">Rectified Diffusion</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.12.12.2">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.12.12.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.12.12.4">19.71</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.13.13">
<td class="ltx_td ltx_align_left" id="S4.T3.4.13.13.1">DMDv2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.13.13.2">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.13.13.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.13.13.4">19.32</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.14.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.4.14.14.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.14.14.1.1">ProReflow-SDXL (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.14.14.2">1024</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.14.14.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.4.14.14.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.14.14.4.1">19.10</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different methods' performance on the Stable Diffusion XL (SDXL) model for image generation.  It shows the FID (Fréchet Inception Distance) scores achieved by various methods on two benchmark datasets: COCO2017 and COCO2014-10k.  The evaluation uses 4 sampling steps, following the methodology described in reference [40].  The results highlight the performance of the proposed ProReflow-SDXL method compared to other existing approaches.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison results on SDXL on COCO2017 validation set and COCO2014-10k validation set with 4 steps, following the evaluation setup in [40].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.4.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.4.1.1.2">Steps</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.1.1.3">FID (↓)</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.1.1.4">CLIP (↑)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.4.2.1.1">w/o progressive reflow</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T4.4.2.1.2">4</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.2.1.3">23.46</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.4.2.1.4">30.21</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.4.3.2.1">w/o aligned v-prediction</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T4.4.3.2.2">4</th>
<td class="ltx_td ltx_align_center" id="S5.T4.4.3.2.3">23.09</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.4.3.2.4">30.25</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.4.4.3.1">w/o both</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T4.4.4.3.2">4</th>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.3.3">23.81</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.4.4.3.4">30.24</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.4.5.4.1">
<span class="ltx_text ltx_font_bold" id="S5.T4.4.5.4.1.1">ProReflow-</span>I</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T4.4.5.4.2">4</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.5.4.3"><span class="ltx_text ltx_font_bold" id="S5.T4.4.5.4.3.1">22.97</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T4.4.5.4.4"><span class="ltx_text ltx_font_bold" id="S5.T4.4.5.4.4.1">30.29</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results on the COCO-2017 validation set.  It systematically investigates the impact of each component of the proposed ProReflow method (progressive reflow and aligned v-prediction) on the model's performance. The study starts with the full ProReflow model, and then progressively removes one component at a time, assessing the effect on FID and CLIP scores using a consistent guidance scale of 4 across all experiments. This allows for a precise evaluation of each component's individual contributions and their synergistic effect.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation studies on COCO-2017 validation set. We first show the results of gradually removing progressive reflow, aligned v-prediction, and both components, followed by our full model. We use a guidance scale of 4 for all the models.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.04824/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04824/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04824/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04824/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04824/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04824/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04824/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04824/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04824/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04824/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04824/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}