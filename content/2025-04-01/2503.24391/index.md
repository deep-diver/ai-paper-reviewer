---
title: "Easi3R: Estimating Disentangled Motion from DUSt3R Without Training"
summary: "Easi3R: Training-free 4D reconstruction via attention disentanglement, enabling dynamic scene understanding from static 3D models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Westlake University",]
showSummary: true
date: 2025-03-31
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.24391 {{< /keyword >}}
{{< keyword icon="writer" >}} Xingyu Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-01 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.24391" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.24391" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.24391/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**DUSt3R**, a network for 3D scene reconstruction, requires large datasets which is a bottleneck for 4D dynamic scenes. Existing 4D methods fine-tune 3D models using data with geometric priors, like optical flow. However, accuracy declines with dynamic objects that violate geometric rules. To address this, researchers need a generalizable 4D model without extensive training. This paper asks if there are human perception methods for 4D reconstruction. 



The paper introduces **Easi3R**, a simple, training-free method for 4D reconstruction via attention adaptation during inference. It uses DUSt3R attention layers to encode camera & object motion. By disentangling these maps, it segments dynamic regions, estimates camera pose, & reconstructs 4D point maps. Experiments show Easi3R outperforms trained methods, offering a scalable solution.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DUSt3R models implicitly encode object and camera motion information in their attention layers. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Easi3R leverages attention disentanglement for dynamic object segmentation and robust 4D reconstruction without training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The method achieves state-of-the-art performance on dynamic video datasets, even surpassing methods trained on extensive dynamic data. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces Easi3R, a novel training-free method for dynamic scene reconstruction, potentially reducing the reliance on extensive training data and offering a scalable solution for real-world applications. It opens new avenues for research in unsupervised 4D reconstruction.

------
#### Visual Insights



![](https://arxiv.org/html/2503.24391/x1.png)

> 🔼 Easi3R is a novel method for 4D reconstruction that works without any training.  It takes advantage of the attention mechanisms within the pre-trained DUSt3R model to separate camera motion from object motion.  This disentanglement allows Easi3R to adapt DUSt3R to dynamic scenes, generating accurate 4D point clouds despite the presence of moving objects.  The figure shows a visual representation of this process, illustrating how Easi3R processes video frames to produce a 4D reconstruction by distinguishing between camera and object movements.
> <details>
> <summary>read the caption</summary>
> Figure 1:  We present Easi3R, a training-free, plug-and-play approach that efficiently disentangles object and camera motion, enabling the adaptation of DUSt3R for 4D reconstruction.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="S4.F5.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.F5.4.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S4.F5.4.1.1.1" style="width:86.7pt;padding-left:0.1pt;padding-right:0.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F5.4.1.1.1.1">
<span class="ltx_p" id="S4.F5.4.1.1.1.1.1"><span class="ltx_text" id="S4.F5.4.1.1.1.1.1.1" style="font-size:70%;">Video Frame</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S4.F5.4.1.1.2" style="width:86.7pt;padding-left:0.1pt;padding-right:0.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F5.4.1.1.2.1">
<span class="ltx_p" id="S4.F5.4.1.1.2.1.1"><span class="ltx_text" id="S4.F5.4.1.1.2.1.1.1" style="font-size:70%;">MonST3R</span><span class="ltx_text" id="S4.F5.4.1.1.2.1.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F5.4.1.1.2.1.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a><span class="ltx_text" id="S4.F5.4.1.1.2.1.1.4.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S4.F5.4.1.1.3" style="width:86.7pt;padding-left:0.1pt;padding-right:0.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F5.4.1.1.3.1">
<span class="ltx_p" id="S4.F5.4.1.1.3.1.1"><span class="ltx_text" id="S4.F5.4.1.1.3.1.1.1" style="font-size:70%;">DAS3R</span><span class="ltx_text" id="S4.F5.4.1.1.3.1.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F5.4.1.1.3.1.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a><span class="ltx_text" id="S4.F5.4.1.1.3.1.1.4.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S4.F5.4.1.1.4" style="width:86.7pt;padding-left:0.1pt;padding-right:0.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F5.4.1.1.4.1">
<span class="ltx_p" id="S4.F5.4.1.1.4.1.1"><span class="ltx_text" id="S4.F5.4.1.1.4.1.1.1" style="font-size:70%;">Ours</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S4.F5.4.1.1.5" style="width:86.7pt;padding-left:0.1pt;padding-right:0.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F5.4.1.1.5.1">
<span class="ltx_p" id="S4.F5.4.1.1.5.1.1"><span class="ltx_text" id="S4.F5.4.1.1.5.1.1.1" style="font-size:70%;">GT</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive comparison of different methods for dynamic object segmentation on the DAVIS dataset.  The table evaluates the performance of several approaches, including the baseline methods DUSt3R and MonST3R, along with their enhanced versions using the proposed Easi3R adaptation.  The results are presented in terms of Jaccard Index (JM) and Recall (JR), which are common metrics for evaluating the quality of object segmentation.  The best and second-best results for each metric are highlighted, allowing for an easy comparison and clear identification of the top-performing methods.  The Easi3R method is evaluated using both DUSt3R and MonST3R as the base networks (backbones).
> <details>
> <summary>read the caption</summary>
> Table 1: Dynamic Object Segmentation on the DAVIS dataset. The best and second best results are bold and underlined, respectively. Easi3R dust3r/monst3rdust3r/monst3r{}_{\text{dust3r/monst3r}}start_FLOATSUBSCRIPT dust3r/monst3r end_FLOATSUBSCRIPT denotes the Easi3R experiment with the backbones of MonST3R/DUSt3R.
> </details>





### In-depth insights


#### DUSt3R Adaptation
**Easi3R leverages the pre-trained DUSt3R model for dynamic scene reconstruction without fine-tuning.** It cleverly exploits the attention mechanisms within DUSt3R, which implicitly encode information about camera and object motion. The core idea involves a training-free adaptation strategy during inference. **By analyzing and carefully disentangling the cross-attention maps, Easi3R can segment dynamic regions, estimate camera pose, and reconstruct 4D point clouds.** This approach avoids the need for extensive training on dynamic datasets, which are often limited in scale and diversity. The method's effectiveness stems from the observation that DUSt3R's attention layers assign low values to regions violating epipolar geometry constraints (e.g., texture-less, under-observed, and dynamic areas). **Easi3R effectively isolates these components, enabling accurate long-horizon dynamic object detection and segmentation.**

#### Training-Free 4D
The concept of "Training-Free 4D" reconstruction is intriguing, as it aims to circumvent the limitations posed by scarce and diverse 4D datasets. The core idea likely involves leveraging pre-trained models, perhaps trained on large static scene datasets, and adapting them to dynamic scenarios **without requiring further training**. This could involve clever techniques like attention mechanisms or geometric priors to disentangle object and camera motion. The advantage is significant: it unlocks the potential to reconstruct dynamic scenes from readily available video data without the costly and time-consuming process of creating or fine-tuning on specialized 4D datasets. This approach would need to be highly adaptable and robust to handle the complexities of real-world dynamic videos, including varying lighting conditions, occlusions, and object motion patterns. Success in this area would represent a major step forward in making 4D reconstruction more accessible and practical.

#### Attention Secrets
The title "Attention Secrets" hints at a deeper exploration into how attention mechanisms, particularly in models like DUSt3R, contribute to scene understanding. It suggests an attempt to unravel the implicit knowledge encoded within attention layers, possibly related to identifying key features, relationships between objects, and even discerning motion. **The core idea is to extract useful information from the model's internal workings without explicit training for a specific task.** This involves analyzing attention weights to identify areas the network deems important, offering insights into segmentation and motion, potentially leading to novel ways to improve performance or adapt models for new scenarios. It is also expected that the study reveals the method the model use to differentiate objects, their characteristics and their movements. 

#### Dynamic Disentangle
While the paper doesn't explicitly use the term "Dynamic Disentangle" as a heading, this concept is at the core of the research. It alludes to the **algorithm's ability to separate and handle independently dynamic (moving) objects and the static background within a video sequence**. This disentanglement is crucial for accurate 4D reconstruction, as it prevents the motion of objects from interfering with camera pose estimation and the reconstruction of the static scene. Easi3R achieves this by **analyzing attention maps within the DUSt3R framework to identify regions corresponding to moving objects**. By isolating these regions, the algorithm can then **re-weight the attention and improve the accuracy of both dynamic object segmentation and the overall reconstruction**. The disentanglement directly affects the **temporal consistency** of the reconstruction.

#### Limited Accuracy
**Limited accuracy** is a crucial concern in many research areas. Several factors can contribute to this such as **low-quality data**, **inadequate model complexity**, or **the presence of confounding variables**. It's important to acknowledge situations where the model or method struggles to achieve high precision or recall. This limitation could stem from the inherent difficulty of the task or the **specific dataset used**. Furthermore, accuracy may be limited by the **assumptions** made during model development or the **availability of computational resources**. Acknowledging this prompts further investigation, potentially leading to refined methods, more comprehensive datasets, or alternative approaches to mitigate the shortcomings and improve overall performance and reliability.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.24391/x2.png)

> 🔼 The figure illustrates how DUSt3R, a method for 3D reconstruction, handles video data.  DUSt3R processes image pairs through a sliding window approach.  However, when moving objects are present, the accuracy of the reconstruction decreases because the relative motion between objects and the camera violates assumptions inherent to the method. The resulting reconstruction becomes misaligned and inaccurate in areas where substantial portions of the frame are occupied by moving objects.
> <details>
> <summary>read the caption</summary>
> Figure 2: DUSt3R with Dynamic Video. We process videos using a sliding window and infer the DUSt3R network pairwise. Reconstruction degrades with misalignment when dynamic objects occupy a considerable portion of the frames.
> </details>



![](https://arxiv.org/html/2503.24391/extracted/6321542/figures/fig_pipe.png)

> 🔼 This figure illustrates the architecture of DUSt3R and how the authors' method, Easi3R, adapts it for dynamic scenes. DUSt3R processes two images, creating feature tokens that are decoded into point maps. Easi3R enhances this by aggregating cross-attention maps from DUSt3R's decoders, generating four maps representing different motion aspects (mean and variance of attention from source and reference views).  These new maps are then used in a second inference pass, improving reconstruction quality in dynamic scenes.
> <details>
> <summary>read the caption</summary>
> Figure 3: DUSt3R and our Easi3R adaptation. DUSt3R encodes two images Ia,Ibsuperscript𝐼𝑎superscript𝐼𝑏I^{a},I^{b}italic_I start_POSTSUPERSCRIPT italic_a end_POSTSUPERSCRIPT , italic_I start_POSTSUPERSCRIPT italic_b end_POSTSUPERSCRIPT into feature tokens 𝐅0a,𝐅0bsuperscriptsubscript𝐅0𝑎superscriptsubscript𝐅0𝑏\mathbf{F}_{0}^{a},\mathbf{F}_{0}^{b}bold_F start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_a end_POSTSUPERSCRIPT , bold_F start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_b end_POSTSUPERSCRIPT, which are then decoded into point maps in the reference view coordinate space using two decoders. Our Easi3R aggregates the cross-attention maps from the decoders, producing four semantically meaningful maps: 𝐀μb=src,𝐀σb=src,𝐀μa=ref,𝐀σb=refsubscriptsuperscript𝐀𝑏src𝜇subscriptsuperscript𝐀𝑏src𝜎subscriptsuperscript𝐀𝑎ref𝜇subscriptsuperscript𝐀𝑏ref𝜎\mathbf{A}^{b=\text{src}}_{\mu},\mathbf{A}^{b=\text{src}}_{\sigma},\mathbf{A}^% {a=\text{ref}}_{\mu},\mathbf{A}^{b=\text{ref}}_{\sigma}bold_A start_POSTSUPERSCRIPT italic_b = src end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_μ end_POSTSUBSCRIPT , bold_A start_POSTSUPERSCRIPT italic_b = src end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_σ end_POSTSUBSCRIPT , bold_A start_POSTSUPERSCRIPT italic_a = ref end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_μ end_POSTSUBSCRIPT , bold_A start_POSTSUPERSCRIPT italic_b = ref end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_σ end_POSTSUBSCRIPT. These maps are then used for a second inference pass to enhance reconstruction quality.
> </details>



![](https://arxiv.org/html/2503.24391/x3.png)

> 🔼 Figure 4 visualizes cross-attention maps from a deep learning model used for 4D reconstruction.  The maps are color-coded, with brighter colors representing higher attention values, and darker values representing lower attention. The figure showcases different patterns within these attention maps, highlighting how the model attends to various aspects of the scene, including dynamic objects, textured areas, areas with little texture, and under-observed parts. Each column shows a different type of attention pattern.  The caption invites readers to visit a website for more details because the visualization is more effectively shown with interactive elements.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization for Cross-Attention Maps. We color the normalized values of attention maps, ranging from one to zero. We highlight the patterns captured by each type of attention map using relatively high values. For a more detailed demonstration, we invite reviewers to visit our webpage under easi3r.github.io.
> </details>



![](https://arxiv.org/html/2503.24391/x8.png)

> 🔼 Figure 5 presents a qualitative comparison of dynamic object segmentation results from several methods, including the proposed Easi3R method using the MonST3R backbone.  The 'enhanced' setting shown uses the output of each method as a prompt for the SAM2 model, which performs mask refinement. The figure demonstrates the improvement in segmentation accuracy achieved by Easi3R compared to other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative Results of Dynamic Object Segmentation. “Ours” refers to the Easi3Rmonst3rsubscriptEasi3Rmonst3r\mbox{{Easi3R}}_{\text{monst3r}}Easi3R start_POSTSUBSCRIPT monst3r end_POSTSUBSCRIPT setting. Here, we present the enhanced setting, where outputs from different methods serve as prompts and are used with SAM2 [46] for mask inference.
> </details>



![](https://arxiv.org/html/2503.24391/x11.png)

> 🔼 Figure 6 presents a qualitative comparison of 4D reconstruction results across different methods.  The top row shows the input video frames. The subsequent rows display the reconstruction results from CUTR3, MonST3R, DAS3R, and the proposed Easi3R method (with DUSt3R and MonST3R backbones).  Easi3R uses estimated per-frame dynamic masks to filter out dynamic points when comparing across different timestamps, unlike previous methods which used ground truth masks. The visualization demonstrates that Easi3R achieves temporally consistent reconstruction of both static and dynamic elements, while the baseline methods suffer from issues like misaligned static structures, unstable camera pose estimation, and ghosting artifacts caused by inaccurate dynamic segmentation.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative Comparison. We visualize cross-frame globally aligned static scenes with dynamic point clouds at a selected timestamp. Notably, instead of using ground truth dynamic masks in previous work, we apply the estimated per-frame dynamic masks to filter out dynamic points at other timestamps for comparison. Our method (top two and bottom two rows as Easi3R dust3r/monst3rdust3r/monst3r{}_{\text{dust3r/monst3r}}start_FLOATSUBSCRIPT dust3r/monst3r end_FLOATSUBSCRIPT, respectively) achieves temporally consistent reconstruction of both static scenes and moving objects, whereas baselines suffer from static structure misalignment and unstable camera pose estimation, and ghosting artifacts due to inaccuracy estimation of dynamic segmentation.
> </details>



![](https://arxiv.org/html/2503.24391/x12.png)

> 🔼 Figure 7 presents a comparison of estimated camera trajectories.  The ground truth trajectory is shown in gray.  The trajectories estimated using the original DUSt3R and MonST3R models are shown in blue.  The trajectory generated by the proposed Easi3R method is shown in orange.  The figure visually demonstrates that Easi3R produces a more accurate camera trajectory, exhibiting less deviation from the ground truth compared to the original models.
> <details>
> <summary>read the caption</summary>
> Figure 7: Visualization of estimated camera trajectories. Our robust estimated camera trajectory (orange) deviates less from the ground truth (gray) compared to the original backbones (blue).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.16.14">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.16.14.15.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.16.14.15.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.16.14.15.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S4.T1.16.14.15.1.3" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.16.14.15.1.3.1" style="font-size:70%;">DAVIS</span><span class="ltx_text" id="S4.T1.16.14.15.1.3.2" style="font-size:70%;">-16</span>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S4.T1.16.14.15.1.4" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.16.14.15.1.4.1" style="font-size:70%;">DAVIS</span><span class="ltx_text" id="S4.T1.16.14.15.1.4.2" style="font-size:70%;">-17</span>
</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S4.T1.16.14.15.1.5" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.16.14.15.1.5.1" style="font-size:70%;">DAVIS</span><span class="ltx_text" id="S4.T1.16.14.15.1.5.2" style="font-size:70%;">-all</span>
</th>
</tr>
<tr class="ltx_tr" id="S4.T1.16.14.16.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_column ltx_th_row" id="S4.T1.16.14.16.2.1" style="padding-left:0.0pt;padding-right:0.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T1.16.14.16.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T1.16.14.16.2.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.16.2.3.1" style="font-size:70%;">w/o SAM2</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="S4.T1.16.14.16.2.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.16.2.4.1" style="font-size:70%;">w/ SAM2</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T1.16.14.16.2.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.16.2.5.1" style="font-size:70%;">w/o SAM2</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="S4.T1.16.14.16.2.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.16.2.6.1" style="font-size:70%;">w/ SAM2</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T1.16.14.16.2.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.16.2.7.1" style="font-size:70%;">w/o SAM2</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T1.16.14.16.2.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.16.2.8.1" style="font-size:70%;">w/ SAM2</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.14.12.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T1.14.12.12.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.14.12.12.13.1" style="font-size:70%;">Method</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T1.14.12.12.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.14.12.12.14.1" style="font-size:70%;">Flow</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column" id="S4.T1.3.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.3.1.1.1.1" style="font-size:70%;">JM</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.1.1.1.m1.1"><semantics id="S4.T1.3.1.1.1.m1.1a"><mo id="S4.T1.3.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.1.1.1.m1.1b"><ci id="S4.T1.3.1.1.1.m1.1.1.cmml" xref="S4.T1.3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column" id="S4.T1.4.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.4.2.2.2.1" style="font-size:70%;">JR</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.2.2.2.m1.1"><semantics id="S4.T1.4.2.2.2.m1.1a"><mo id="S4.T1.4.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.2.2.2.m1.1b"><ci id="S4.T1.4.2.2.2.m1.1.1.cmml" xref="S4.T1.4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column" id="S4.T1.5.3.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.5.3.3.3.1" style="font-size:70%;">JM</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.3.3.3.m1.1"><semantics id="S4.T1.5.3.3.3.m1.1a"><mo id="S4.T1.5.3.3.3.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.5.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.3.3.3.m1.1b"><ci id="S4.T1.5.3.3.3.m1.1.1.cmml" xref="S4.T1.5.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_r" id="S4.T1.6.4.4.4" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.6.4.4.4.1" style="font-size:70%;">JR</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.4.4.4.m1.1"><semantics id="S4.T1.6.4.4.4.m1.1a"><mo id="S4.T1.6.4.4.4.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.6.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.4.4.4.m1.1b"><ci id="S4.T1.6.4.4.4.m1.1.1.cmml" xref="S4.T1.6.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column" id="S4.T1.7.5.5.5" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.7.5.5.5.1" style="font-size:70%;">JM</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.7.5.5.5.m1.1"><semantics id="S4.T1.7.5.5.5.m1.1a"><mo id="S4.T1.7.5.5.5.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.7.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.5.5.5.m1.1b"><ci id="S4.T1.7.5.5.5.m1.1.1.cmml" xref="S4.T1.7.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column" id="S4.T1.8.6.6.6" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.8.6.6.6.1" style="font-size:70%;">JR</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.8.6.6.6.m1.1"><semantics id="S4.T1.8.6.6.6.m1.1a"><mo id="S4.T1.8.6.6.6.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.8.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.6.6.6.m1.1b"><ci id="S4.T1.8.6.6.6.m1.1.1.cmml" xref="S4.T1.8.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column" id="S4.T1.9.7.7.7" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.9.7.7.7.1" style="font-size:70%;">JM</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.9.7.7.7.m1.1"><semantics id="S4.T1.9.7.7.7.m1.1a"><mo id="S4.T1.9.7.7.7.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.9.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.7.7.7.m1.1b"><ci id="S4.T1.9.7.7.7.m1.1.1.cmml" xref="S4.T1.9.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_r" id="S4.T1.10.8.8.8" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.10.8.8.8.1" style="font-size:70%;">JR</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.10.8.8.8.m1.1"><semantics id="S4.T1.10.8.8.8.m1.1a"><mo id="S4.T1.10.8.8.8.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.10.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.8.8.8.m1.1b"><ci id="S4.T1.10.8.8.8.m1.1.1.cmml" xref="S4.T1.10.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.8.8.8.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column" id="S4.T1.11.9.9.9" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.11.9.9.9.1" style="font-size:70%;">JM</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.11.9.9.9.m1.1"><semantics id="S4.T1.11.9.9.9.m1.1a"><mo id="S4.T1.11.9.9.9.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.11.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.11.9.9.9.m1.1b"><ci id="S4.T1.11.9.9.9.m1.1.1.cmml" xref="S4.T1.11.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.9.9.9.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column" id="S4.T1.12.10.10.10" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.12.10.10.10.1" style="font-size:70%;">JR</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.12.10.10.10.m1.1"><semantics id="S4.T1.12.10.10.10.m1.1a"><mo id="S4.T1.12.10.10.10.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.12.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.10.10.10.m1.1b"><ci id="S4.T1.12.10.10.10.m1.1.1.cmml" xref="S4.T1.12.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.10.10.10.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column" id="S4.T1.13.11.11.11" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.13.11.11.11.1" style="font-size:70%;">JM</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.13.11.11.11.m1.1"><semantics id="S4.T1.13.11.11.11.m1.1a"><mo id="S4.T1.13.11.11.11.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.13.11.11.11.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.13.11.11.11.m1.1b"><ci id="S4.T1.13.11.11.11.m1.1.1.cmml" xref="S4.T1.13.11.11.11.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.11.11.11.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.11.11.11.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column" id="S4.T1.14.12.12.12" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.14.12.12.12.1" style="font-size:70%;">JR</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.14.12.12.12.m1.1"><semantics id="S4.T1.14.12.12.12.m1.1a"><mo id="S4.T1.14.12.12.12.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.14.12.12.12.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.14.12.12.12.m1.1b"><ci id="S4.T1.14.12.12.12.m1.1.1.cmml" xref="S4.T1.14.12.12.12.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.12.12.12.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.12.12.12.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.16.14.17.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.16.14.17.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.16.14.17.1.1.1" style="font-size:70%;">DUSt3R</span><span class="ltx_text" id="S4.T1.16.14.17.1.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.16.14.17.1.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="S4.T1.16.14.17.1.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.16.14.17.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.17.1.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.16.14.17.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.17.1.3.1" style="font-size:70%;">42.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.16.14.17.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.17.1.4.1" style="font-size:70%;">45.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.16.14.17.1.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.17.1.5.1" style="font-size:70%;">58.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.16.14.17.1.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.17.1.6.1" style="font-size:70%;">63.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.16.14.17.1.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.17.1.7.1" style="font-size:70%;">35.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.16.14.17.1.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.17.1.8.1" style="font-size:70%;">35.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.16.14.17.1.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.17.1.9.1" style="font-size:70%;">48.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.16.14.17.1.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.17.1.10.1" style="font-size:70%;">50.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.16.14.17.1.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.17.1.11.1" style="font-size:70%;">35.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.16.14.17.1.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.17.1.12.1" style="font-size:70%;">34.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.16.14.17.1.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.17.1.13.1" style="font-size:70%;">47.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.16.14.17.1.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.17.1.14.1" style="font-size:70%;">48.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.16.14.18.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.16.14.18.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.16.14.18.2.1.1" style="font-size:70%;">MonST3R</span><span class="ltx_text" id="S4.T1.16.14.18.2.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.16.14.18.2.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a><span class="ltx_text" id="S4.T1.16.14.18.2.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.16.14.18.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.18.2.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.18.2.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.18.2.3.1" style="font-size:70%;">40.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.18.2.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.18.2.4.1" style="font-size:70%;">42.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.18.2.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.18.2.5.1" style="font-size:70%;">64.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.16.14.18.2.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.16.14.18.2.6.1" style="font-size:70%;">73.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.18.2.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.18.2.7.1" style="font-size:70%;">38.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.18.2.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.18.2.8.1" style="font-size:70%;">38.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.18.2.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.18.2.9.1" style="font-size:70%;">56.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.16.14.18.2.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.18.2.10.1" style="font-size:70%;">59.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.18.2.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.18.2.11.1" style="font-size:70%;">36.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.18.2.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.18.2.12.1" style="font-size:70%;">34.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.18.2.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.18.2.13.1" style="font-size:70%;">51.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.18.2.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.18.2.14.1" style="font-size:70%;">54.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.16.14.19.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.16.14.19.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T1.16.14.19.3.1.1" style="font-size:70%;">DAS3R</span><span class="ltx_text" id="S4.T1.16.14.19.3.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.16.14.19.3.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a><span class="ltx_text" id="S4.T1.16.14.19.3.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.16.14.19.3.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.19.3.2.1" style="font-size:70%;">✗</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.19.3.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.19.3.3.1" style="font-size:70%;">41.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.19.3.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.19.3.4.1" style="font-size:70%;">39.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.19.3.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.19.3.5.1" style="font-size:70%;">54.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.16.14.19.3.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.19.3.6.1" style="font-size:70%;">55.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.19.3.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.19.3.7.1" style="font-size:70%;">43.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.19.3.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.19.3.8.1" style="font-size:70%;">42.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.19.3.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.19.3.9.1" style="font-size:70%;">57.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.16.14.19.3.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.19.3.10.1" style="font-size:70%;">61.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.19.3.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.19.3.11.1" style="font-size:70%;">43.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.19.3.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.19.3.12.1" style="font-size:70%;">38.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.19.3.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.19.3.13.1" style="font-size:70%;">53.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.16.14.19.3.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.19.3.14.1" style="font-size:70%;">54.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.13.13">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.15.13.13.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.15.13.13.1.1" style="font-size:70%;">Easi3R</span><math alttext="{}_{\text{dust3r}}" class="ltx_Math" display="inline" id="S4.T1.15.13.13.1.m1.1"><semantics id="S4.T1.15.13.13.1.m1.1a"><msub id="S4.T1.15.13.13.1.m1.1.1" xref="S4.T1.15.13.13.1.m1.1.1.cmml"><mi id="S4.T1.15.13.13.1.m1.1.1a" xref="S4.T1.15.13.13.1.m1.1.1.cmml"></mi><mtext id="S4.T1.15.13.13.1.m1.1.1.1" mathsize="70%" xref="S4.T1.15.13.13.1.m1.1.1.1a.cmml">dust3r</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T1.15.13.13.1.m1.1b"><apply id="S4.T1.15.13.13.1.m1.1.1.cmml" xref="S4.T1.15.13.13.1.m1.1.1"><ci id="S4.T1.15.13.13.1.m1.1.1.1a.cmml" xref="S4.T1.15.13.13.1.m1.1.1.1"><mtext id="S4.T1.15.13.13.1.m1.1.1.1.cmml" mathsize="49%" xref="S4.T1.15.13.13.1.m1.1.1.1">dust3r</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.13.13.1.m1.1c">{}_{\text{dust3r}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.13.13.1.m1.1d">start_FLOATSUBSCRIPT dust3r end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.15.13.13.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.15.13.13.2.1" style="font-size:70%;">✗</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.15.13.13.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.15.13.13.3.1" style="font-size:70%;">53.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.15.13.13.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.15.13.13.4.1" style="font-size:70%;">60.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.15.13.13.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.15.13.13.5.1" style="font-size:70%;">67.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.15.13.13.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.15.13.13.6.1" style="font-size:70%;">71.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.15.13.13.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.15.13.13.7.1" style="font-size:70%;">49.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.15.13.13.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.15.13.13.8.1" style="font-size:70%;">56.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.15.13.13.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.15.13.13.9.1" style="font-size:70%;">60.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.15.13.13.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.15.13.13.10.1" style="font-size:70%;">65.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.15.13.13.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.15.13.13.11.1" style="font-size:70%;">44.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.15.13.13.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.15.13.13.12.1" style="font-size:70%;">49.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.15.13.13.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.15.13.13.13.1" style="font-size:70%;">54.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.15.13.13.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.15.13.13.14.1" style="font-size:70%;">60.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.16.14.14">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.16.14.14.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.16.14.14.1.1" style="font-size:70%;">Easi3R</span><math alttext="{}_{\text{monst3r}}" class="ltx_Math" display="inline" id="S4.T1.16.14.14.1.m1.1"><semantics id="S4.T1.16.14.14.1.m1.1a"><msub id="S4.T1.16.14.14.1.m1.1.1" xref="S4.T1.16.14.14.1.m1.1.1.cmml"><mi id="S4.T1.16.14.14.1.m1.1.1a" xref="S4.T1.16.14.14.1.m1.1.1.cmml"></mi><mtext id="S4.T1.16.14.14.1.m1.1.1.1" mathsize="70%" xref="S4.T1.16.14.14.1.m1.1.1.1a.cmml">monst3r</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T1.16.14.14.1.m1.1b"><apply id="S4.T1.16.14.14.1.m1.1.1.cmml" xref="S4.T1.16.14.14.1.m1.1.1"><ci id="S4.T1.16.14.14.1.m1.1.1.1a.cmml" xref="S4.T1.16.14.14.1.m1.1.1.1"><mtext id="S4.T1.16.14.14.1.m1.1.1.1.cmml" mathsize="49%" xref="S4.T1.16.14.14.1.m1.1.1.1">monst3r</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.14.14.1.m1.1c">{}_{\text{monst3r}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.14.14.1.m1.1d">start_FLOATSUBSCRIPT monst3r end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.16.14.14.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.16.14.14.2.1" style="font-size:70%;">✗</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.16.14.14.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.16.14.14.3.1" style="font-size:70%;">57.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.16.14.14.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.16.14.14.4.1" style="font-size:70%;">71.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.16.14.14.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.16.14.14.5.1" style="font-size:70%;">70.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.16.14.14.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.16.14.14.6.1" style="font-size:70%;">79.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.16.14.14.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.16.14.14.7.1" style="font-size:70%;">56.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.16.14.14.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.16.14.14.8.1" style="font-size:70%;">68.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.16.14.14.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.16.14.14.9.1" style="font-size:70%;">67.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.16.14.14.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.16.14.14.10.1" style="font-size:70%;">76.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.16.14.14.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.16.14.14.11.1" style="font-size:70%;">53.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.16.14.14.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.16.14.14.12.1" style="font-size:70%;">63.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.16.14.14.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.16.14.14.13.1" style="font-size:70%;">63.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.16.14.14.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.16.14.14.14.1" style="font-size:70%;">72.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of camera pose estimation results on three datasets (DyCheck, ADT, and TUM-dynamics) using different methods.  The methods compared include baseline DUSt3R and MonST3R models and the proposed Easi3R method using DUSt3R and MonST3R as backbones (denoted as Easi3R_dust3r and Easi3R_monst3r respectively).  The performance is measured using three metrics: Absolute Translation Error (ATE), Relative Translation Error (RTE), and Relative Rotation Error (RRE).  The best and second-best results for each metric and dataset are highlighted in bold and underlined, respectively.  The table demonstrates the improvements achieved by incorporating Easi3R.
> <details>
> <summary>read the caption</summary>
> Table 2: Benefits of Easi3R on Camera Pose Estimation on the DyCheck, ADT and TUM-dynamics datasets. The best and second best results are bold and underlined, respectively. Easi3R dust3r/monst3rdust3r/monst3r{}_{\text{dust3r/monst3r}}start_FLOATSUBSCRIPT dust3r/monst3r end_FLOATSUBSCRIPT denotes the Easi3R experiment with the backbones of MonST3R/DUSt3R.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="S4.F6.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.F6.4.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S4.F6.4.1.1.1" style="width:21.7pt;padding:-2.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F6.4.1.1.1.1">
<span class="ltx_p" id="S4.F6.4.1.1.1.1.1"><span class="ltx_text" id="S4.F6.4.1.1.1.1.1.1" style="font-size:90%;">Video</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S4.F6.4.1.1.2" style="width:103.0pt;padding:-2.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F6.4.1.1.2.1">
<span class="ltx_p" id="S4.F6.4.1.1.2.1.1"><span class="ltx_text" id="S4.F6.4.1.1.2.1.1.1" style="font-size:90%;">CUT3R</span><span class="ltx_text" id="S4.F6.4.1.1.2.1.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F6.4.1.1.2.1.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="S4.F6.4.1.1.2.1.1.4.2" style="font-size:90%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S4.F6.4.1.1.3" style="width:103.0pt;padding:-2.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F6.4.1.1.3.1">
<span class="ltx_p" id="S4.F6.4.1.1.3.1.1"><span class="ltx_text" id="S4.F6.4.1.1.3.1.1.1" style="font-size:90%;">MonST3R</span><span class="ltx_text" id="S4.F6.4.1.1.3.1.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F6.4.1.1.3.1.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a><span class="ltx_text" id="S4.F6.4.1.1.3.1.1.4.2" style="font-size:90%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S4.F6.4.1.1.4" style="width:103.0pt;padding:-2.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F6.4.1.1.4.1">
<span class="ltx_p" id="S4.F6.4.1.1.4.1.1"><span class="ltx_text" id="S4.F6.4.1.1.4.1.1.1" style="font-size:90%;">DAS3R</span><span class="ltx_text" id="S4.F6.4.1.1.4.1.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F6.4.1.1.4.1.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a><span class="ltx_text" id="S4.F6.4.1.1.4.1.1.4.2" style="font-size:90%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S4.F6.4.1.1.5" style="width:103.0pt;padding:-2.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F6.4.1.1.5.1">
<span class="ltx_p" id="S4.F6.4.1.1.5.1.1"><span class="ltx_text" id="S4.F6.4.1.1.5.1.1.1" style="font-size:90%;">Ours</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of camera pose estimation results across three different datasets: DyCheck, ADT, and TUM-dynamics.  For each dataset, it shows the Absolute Translation Error (ATE), Relative Translation Error (RTE), and Relative Rotation Error (RRE) achieved by several different methods. The best performing method for each error metric on each dataset is highlighted in bold, with the second best underlined.  This allows for a direct comparison of the accuracy and robustness of various approaches in estimating camera poses within diverse and challenging dynamic scenes.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative Comparisons of Camera Pose Estimation on the DyCheck, ADT and TUM-dynamics datasets. The best and second best results are bold and underlined, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.15.13">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.15.13.14.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.15.13.14.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.15.13.14.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T2.15.13.14.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.14.1.3.1" style="font-size:70%;">DyCheck</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T2.15.13.14.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.14.1.4.1" style="font-size:70%;">ADT</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T2.15.13.14.1.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.14.1.5.1" style="font-size:70%;">TUM-dynamics</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.11.9.9">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T2.11.9.9.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.11.9.9.10.1" style="font-size:70%;">Method</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T2.11.9.9.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.11.9.9.11.1" style="font-size:70%;">Flow</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.3.1.1.1.1" style="font-size:70%;">ATE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.1.1.1.m1.1"><semantics id="S4.T2.3.1.1.1.m1.1a"><mo id="S4.T2.3.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T2.3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.1.1.1.m1.1b"><ci id="S4.T2.3.1.1.1.m1.1.1.cmml" xref="S4.T2.3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.4.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.4.2.2.2.1" style="font-size:70%;">RTE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.2.2.2.m1.1"><semantics id="S4.T2.4.2.2.2.m1.1a"><mo id="S4.T2.4.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T2.4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.2.2.2.m1.1b"><ci id="S4.T2.4.2.2.2.m1.1.1.cmml" xref="S4.T2.4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.5.3.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.5.3.3.3.1" style="font-size:70%;">RRE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.5.3.3.3.m1.1"><semantics id="S4.T2.5.3.3.3.m1.1a"><mo id="S4.T2.5.3.3.3.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T2.5.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.3.3.3.m1.1b"><ci id="S4.T2.5.3.3.3.m1.1.1.cmml" xref="S4.T2.5.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.4.4.4" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.6.4.4.4.1" style="font-size:70%;">ATE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.6.4.4.4.m1.1"><semantics id="S4.T2.6.4.4.4.m1.1a"><mo id="S4.T2.6.4.4.4.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T2.6.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.4.4.4.m1.1b"><ci id="S4.T2.6.4.4.4.m1.1.1.cmml" xref="S4.T2.6.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.7.5.5.5" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.7.5.5.5.1" style="font-size:70%;">RTE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.7.5.5.5.m1.1"><semantics id="S4.T2.7.5.5.5.m1.1a"><mo id="S4.T2.7.5.5.5.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T2.7.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.5.5.5.m1.1b"><ci id="S4.T2.7.5.5.5.m1.1.1.cmml" xref="S4.T2.7.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.8.6.6.6" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.8.6.6.6.1" style="font-size:70%;">RRE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.8.6.6.6.m1.1"><semantics id="S4.T2.8.6.6.6.m1.1a"><mo id="S4.T2.8.6.6.6.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T2.8.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.6.6.6.m1.1b"><ci id="S4.T2.8.6.6.6.m1.1.1.cmml" xref="S4.T2.8.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.9.7.7.7" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.9.7.7.7.1" style="font-size:70%;">ATE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.9.7.7.7.m1.1"><semantics id="S4.T2.9.7.7.7.m1.1a"><mo id="S4.T2.9.7.7.7.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T2.9.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.7.7.7.m1.1b"><ci id="S4.T2.9.7.7.7.m1.1.1.cmml" xref="S4.T2.9.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.7.7.7.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.10.8.8.8" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.10.8.8.8.1" style="font-size:70%;">RTE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.10.8.8.8.m1.1"><semantics id="S4.T2.10.8.8.8.m1.1a"><mo id="S4.T2.10.8.8.8.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T2.10.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.8.8.8.m1.1b"><ci id="S4.T2.10.8.8.8.m1.1.1.cmml" xref="S4.T2.10.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.8.8.8.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.11.9.9.9" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.11.9.9.9.1" style="font-size:70%;">RRE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.11.9.9.9.m1.1"><semantics id="S4.T2.11.9.9.9.m1.1a"><mo id="S4.T2.11.9.9.9.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T2.11.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.9.9.9.m1.1b"><ci id="S4.T2.11.9.9.9.m1.1.1.cmml" xref="S4.T2.11.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.9.9.9.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.15.13.15.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.15.13.15.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.15.13.15.1.1.1" style="font-size:70%;">DUSt3R</span><span class="ltx_text" id="S4.T2.15.13.15.1.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.15.13.15.1.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="S4.T2.15.13.15.1.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.15.13.15.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.15.1.2.1" style="font-size:70%;">✗</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.15.13.15.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.15.1.3.1" style="font-size:70%;">0.035</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.15.13.15.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.15.1.4.1" style="font-size:70%;">0.030</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.15.13.15.1.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.15.1.5.1" style="font-size:70%;">2.323</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.15.13.15.1.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.15.13.15.1.6.1" style="font-size:70%;">0.042</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.15.13.15.1.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.15.1.7.1" style="font-size:70%;">0.025</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.15.13.15.1.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.15.1.8.1" style="font-size:70%;">1.212</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.15.13.15.1.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.15.1.9.1" style="font-size:70%;">0.100</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.15.13.15.1.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.15.1.10.1" style="font-size:70%;">0.087</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.15.13.15.1.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.15.1.11.1" style="font-size:70%;">2.692</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.10.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.12.10.10.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.12.10.10.1.1" style="font-size:70%;">Easi3R</span><math alttext="{}_{\text{dust3r}}" class="ltx_Math" display="inline" id="S4.T2.12.10.10.1.m1.1"><semantics id="S4.T2.12.10.10.1.m1.1a"><msub id="S4.T2.12.10.10.1.m1.1.1" xref="S4.T2.12.10.10.1.m1.1.1.cmml"><mi id="S4.T2.12.10.10.1.m1.1.1a" xref="S4.T2.12.10.10.1.m1.1.1.cmml"></mi><mtext id="S4.T2.12.10.10.1.m1.1.1.1" mathsize="70%" xref="S4.T2.12.10.10.1.m1.1.1.1a.cmml">dust3r</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T2.12.10.10.1.m1.1b"><apply id="S4.T2.12.10.10.1.m1.1.1.cmml" xref="S4.T2.12.10.10.1.m1.1.1"><ci id="S4.T2.12.10.10.1.m1.1.1.1a.cmml" xref="S4.T2.12.10.10.1.m1.1.1.1"><mtext id="S4.T2.12.10.10.1.m1.1.1.1.cmml" mathsize="49%" xref="S4.T2.12.10.10.1.m1.1.1.1">dust3r</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.10.10.1.m1.1c">{}_{\text{dust3r}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.10.10.1.m1.1d">start_FLOATSUBSCRIPT dust3r end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.12.10.10.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.12.10.10.2.1" style="font-size:70%;">✗</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.12.10.10.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.10.10.3.1" style="font-size:70%;">0.029</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.12.10.10.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.12.10.10.4.1" style="font-size:70%;">0.025</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T2.12.10.10.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.10.10.5.1" style="font-size:70%;">1.774</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.12.10.10.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.12.10.10.6.1" style="font-size:70%;">0.040</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.12.10.10.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.10.10.7.1" style="font-size:70%;">0.021</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T2.12.10.10.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.10.10.8.1" style="font-size:70%;">0.880</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.12.10.10.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.12.10.10.9.1" style="font-size:70%;">0.093</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.12.10.10.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.12.10.10.10.1" style="font-size:70%;">0.076</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.12.10.10.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.10.10.11.1" style="font-size:70%;">2.366</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.13.16.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.15.13.16.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.15.13.16.2.1.1" style="font-size:70%;">DUSt3R</span><span class="ltx_text" id="S4.T2.15.13.16.2.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.15.13.16.2.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="S4.T2.15.13.16.2.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.15.13.16.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.16.2.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.15.13.16.2.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.15.13.16.2.3.1" style="font-size:70%;">0.029</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.15.13.16.2.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.15.13.16.2.4.1" style="font-size:70%;">0.021</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T2.15.13.16.2.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.16.2.5.1" style="font-size:70%;">1.875</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.15.13.16.2.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.16.2.6.1" style="font-size:70%;">0.076</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.15.13.16.2.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.16.2.7.1" style="font-size:70%;">0.030</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T2.15.13.16.2.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.16.2.8.1" style="font-size:70%;">0.974</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.15.13.16.2.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.15.13.16.2.9.1" style="font-size:70%;">0.071</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.15.13.16.2.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.15.13.16.2.10.1" style="font-size:70%;">0.067</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.15.13.16.2.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.16.2.11.1" style="font-size:70%;">3.711</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.11.11">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.13.11.11.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.13.11.11.1.1" style="font-size:70%;">Easi3R</span><math alttext="{}_{\text{dust3r}}" class="ltx_Math" display="inline" id="S4.T2.13.11.11.1.m1.1"><semantics id="S4.T2.13.11.11.1.m1.1a"><msub id="S4.T2.13.11.11.1.m1.1.1" xref="S4.T2.13.11.11.1.m1.1.1.cmml"><mi id="S4.T2.13.11.11.1.m1.1.1a" xref="S4.T2.13.11.11.1.m1.1.1.cmml"></mi><mtext id="S4.T2.13.11.11.1.m1.1.1.1" mathsize="70%" xref="S4.T2.13.11.11.1.m1.1.1.1a.cmml">dust3r</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T2.13.11.11.1.m1.1b"><apply id="S4.T2.13.11.11.1.m1.1.1.cmml" xref="S4.T2.13.11.11.1.m1.1.1"><ci id="S4.T2.13.11.11.1.m1.1.1.1a.cmml" xref="S4.T2.13.11.11.1.m1.1.1.1"><mtext id="S4.T2.13.11.11.1.m1.1.1.1.cmml" mathsize="49%" xref="S4.T2.13.11.11.1.m1.1.1.1">dust3r</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.11.11.1.m1.1c">{}_{\text{dust3r}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.11.11.1.m1.1d">start_FLOATSUBSCRIPT dust3r end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.13.11.11.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.13.11.11.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.13.11.11.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.11.3.1" style="font-size:70%;">0.021</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.13.11.11.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.11.4.1" style="font-size:70%;">0.014</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T2.13.11.11.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.11.5.1" style="font-size:70%;">1.092</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.13.11.11.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.11.11.6.1" style="font-size:70%;">0.042</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.13.11.11.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.11.7.1" style="font-size:70%;">0.015</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T2.13.11.11.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.11.8.1" style="font-size:70%;">0.655</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.13.11.11.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.11.9.1" style="font-size:70%;">0.070</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.13.11.11.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.11.10.1" style="font-size:70%;">0.061</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.13.11.11.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.11.11.1" style="font-size:70%;">2.361</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.13.17.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.15.13.17.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.15.13.17.3.1.1" style="font-size:70%;">MonST3R</span><span class="ltx_text" id="S4.T2.15.13.17.3.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.15.13.17.3.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a><span class="ltx_text" id="S4.T2.15.13.17.3.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.15.13.17.3.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.17.3.2.1" style="font-size:70%;">✗</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.15.13.17.3.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.17.3.3.1" style="font-size:70%;">0.040</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.15.13.17.3.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.17.3.4.1" style="font-size:70%;">0.034</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.15.13.17.3.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.17.3.5.1" style="font-size:70%;">1.820</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.15.13.17.3.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.15.13.17.3.6.1" style="font-size:70%;">0.045</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.15.13.17.3.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.15.13.17.3.7.1" style="font-size:70%;">0.024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.15.13.17.3.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.17.3.8.1" style="font-size:70%;">0.759</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.15.13.17.3.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.17.3.9.1" style="font-size:70%;">0.183</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.15.13.17.3.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.13.17.3.10.1" style="font-size:70%;">0.148</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.15.13.17.3.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.17.3.11.1" style="font-size:70%;">6.985</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.12.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.14.12.12.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.14.12.12.1.1" style="font-size:70%;">Easi3R</span><math alttext="{}_{\text{monst3r}}" class="ltx_Math" display="inline" id="S4.T2.14.12.12.1.m1.1"><semantics id="S4.T2.14.12.12.1.m1.1a"><msub id="S4.T2.14.12.12.1.m1.1.1" xref="S4.T2.14.12.12.1.m1.1.1.cmml"><mi id="S4.T2.14.12.12.1.m1.1.1a" xref="S4.T2.14.12.12.1.m1.1.1.cmml"></mi><mtext id="S4.T2.14.12.12.1.m1.1.1.1" mathsize="70%" xref="S4.T2.14.12.12.1.m1.1.1.1a.cmml">monst3r</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T2.14.12.12.1.m1.1b"><apply id="S4.T2.14.12.12.1.m1.1.1.cmml" xref="S4.T2.14.12.12.1.m1.1.1"><ci id="S4.T2.14.12.12.1.m1.1.1.1a.cmml" xref="S4.T2.14.12.12.1.m1.1.1.1"><mtext id="S4.T2.14.12.12.1.m1.1.1.1.cmml" mathsize="49%" xref="S4.T2.14.12.12.1.m1.1.1.1">monst3r</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.12.12.1.m1.1c">{}_{\text{monst3r}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.12.12.1.m1.1d">start_FLOATSUBSCRIPT monst3r end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.14.12.12.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.14.12.12.2.1" style="font-size:70%;">✗</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.14.12.12.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.14.12.12.3.1" style="font-size:70%;">0.038</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.14.12.12.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.14.12.12.4.1" style="font-size:70%;">0.032</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T2.14.12.12.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.14.12.12.5.1" style="font-size:70%;">1.736</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.14.12.12.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.14.12.12.6.1" style="font-size:70%;">0.045</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.14.12.12.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.14.12.12.7.1" style="font-size:70%;">0.024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T2.14.12.12.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.14.12.12.8.1" style="font-size:70%;">0.715</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.14.12.12.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.14.12.12.9.1" style="font-size:70%;">0.184</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.14.12.12.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.14.12.12.10.1" style="font-size:70%;">0.149</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.14.12.12.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.14.12.12.11.1" style="font-size:70%;">6.311</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.13.18.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.15.13.18.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.15.13.18.4.1.1" style="font-size:70%;">MonST3R</span><span class="ltx_text" id="S4.T2.15.13.18.4.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.15.13.18.4.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a><span class="ltx_text" id="S4.T2.15.13.18.4.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.15.13.18.4.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.18.4.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.15.13.18.4.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.15.13.18.4.3.1" style="font-size:70%;">0.033</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.15.13.18.4.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.15.13.18.4.4.1" style="font-size:70%;">0.024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T2.15.13.18.4.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.15.13.18.4.5.1" style="font-size:70%;">1.501</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.15.13.18.4.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.18.4.6.1" style="font-size:70%;">0.055</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.15.13.18.4.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.18.4.7.1" style="font-size:70%;">0.025</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T2.15.13.18.4.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.18.4.8.1" style="font-size:70%;">0.776</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.15.13.18.4.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.15.13.18.4.9.1" style="font-size:70%;">0.170</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.15.13.18.4.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.18.4.10.1" style="font-size:70%;">0.155</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.15.13.18.4.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.18.4.11.1" style="font-size:70%;">6.455</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.13.13">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.15.13.13.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.15.13.13.1.1" style="font-size:70%;">Easi3R</span><math alttext="{}_{\text{monst3r}}" class="ltx_Math" display="inline" id="S4.T2.15.13.13.1.m1.1"><semantics id="S4.T2.15.13.13.1.m1.1a"><msub id="S4.T2.15.13.13.1.m1.1.1" xref="S4.T2.15.13.13.1.m1.1.1.cmml"><mi id="S4.T2.15.13.13.1.m1.1.1a" xref="S4.T2.15.13.13.1.m1.1.1.cmml"></mi><mtext id="S4.T2.15.13.13.1.m1.1.1.1" mathsize="70%" xref="S4.T2.15.13.13.1.m1.1.1.1a.cmml">monst3r</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T2.15.13.13.1.m1.1b"><apply id="S4.T2.15.13.13.1.m1.1.1.cmml" xref="S4.T2.15.13.13.1.m1.1.1"><ci id="S4.T2.15.13.13.1.m1.1.1.1a.cmml" xref="S4.T2.15.13.13.1.m1.1.1.1"><mtext id="S4.T2.15.13.13.1.m1.1.1.1.cmml" mathsize="49%" xref="S4.T2.15.13.13.1.m1.1.1.1">monst3r</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.13.13.1.m1.1c">{}_{\text{monst3r}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.13.13.1.m1.1d">start_FLOATSUBSCRIPT monst3r end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.15.13.13.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.13.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T2.15.13.13.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.13.13.3.1" style="font-size:70%;">0.030</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T2.15.13.13.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.13.13.4.1" style="font-size:70%;">0.021</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.15.13.13.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.13.13.5.1" style="font-size:70%;">1.390</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T2.15.13.13.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.13.13.6.1" style="font-size:70%;">0.039</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T2.15.13.13.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.13.13.7.1" style="font-size:70%;">0.016</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.15.13.13.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.13.13.8.1" style="font-size:70%;">0.640</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T2.15.13.13.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.13.13.9.1" style="font-size:70%;">0.168</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T2.15.13.13.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.15.13.13.10.1" style="font-size:70%;">0.150</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T2.15.13.13.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.13.13.11.1" style="font-size:70%;">5.925</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of point cloud reconstruction results on the DyCheck dataset.  It shows the performance of different methods, including the baseline DUSt3R and MonST3R, as well as the proposed Easi3R method using both DUSt3R and MonST3R as backbones. The metrics used are Accuracy, Completeness, and Distance, reflecting the quality of the reconstructed point cloud.  The best and second-best results for each metric are highlighted. This allows for an evaluation of how effectively each method reconstructs the 3D point cloud from the input data, especially in the context of handling dynamic scenes.
> <details>
> <summary>read the caption</summary>
> Table 4: Benefits of Easi3R on Point Cloud Reconstruction on the DyCheck dataset. The best and second best results are bold and underlined, respectively. Easi3R dust3r/monst3rdust3r/monst3r{}_{\text{dust3r/monst3r}}start_FLOATSUBSCRIPT dust3r/monst3r end_FLOATSUBSCRIPT denotes the Easi3R experiment with the backbones of MonST3R/DUSt3R.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.11.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.11.11.12.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.11.11.12.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.11.11.12.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T3.11.11.12.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.12.1.3.1" style="font-size:70%;">DyCheck</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T3.11.11.12.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.12.1.4.1" style="font-size:70%;">ADT</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T3.11.11.12.1.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.12.1.5.1" style="font-size:70%;">TUM-dynamics</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.9">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T3.9.9.9.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.9.9.9.10.1" style="font-size:70%;">Method</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T3.9.9.9.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.9.9.9.11.1" style="font-size:70%;">Flow</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T3.1.1.1.1.1" style="font-size:70%;">ATE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T3.2.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T3.2.2.2.2.1" style="font-size:70%;">RTE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.3.3.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T3.3.3.3.3.1" style="font-size:70%;">RRE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T3.4.4.4.4" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T3.4.4.4.4.1" style="font-size:70%;">ATE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.4.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.5.5.5" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T3.5.5.5.5.1" style="font-size:70%;">RTE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.5.m1.1a"><mo id="S4.T3.5.5.5.5.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.5.m1.1b"><ci id="S4.T3.5.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.6.6.6.6" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T3.6.6.6.6.1" style="font-size:70%;">RRE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.6.m1.1"><semantics id="S4.T3.6.6.6.6.m1.1a"><mo id="S4.T3.6.6.6.6.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.6.m1.1b"><ci id="S4.T3.6.6.6.6.m1.1.1.cmml" xref="S4.T3.6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T3.7.7.7.7" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T3.7.7.7.7.1" style="font-size:70%;">ATE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.7.7.7.7.m1.1"><semantics id="S4.T3.7.7.7.7.m1.1a"><mo id="S4.T3.7.7.7.7.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.7.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.7.m1.1b"><ci id="S4.T3.7.7.7.7.m1.1.1.cmml" xref="S4.T3.7.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.7.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T3.8.8.8.8" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T3.8.8.8.8.1" style="font-size:70%;">RTE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.8.8.8.8.m1.1"><semantics id="S4.T3.8.8.8.8.m1.1a"><mo id="S4.T3.8.8.8.8.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.8.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.8.m1.1b"><ci id="S4.T3.8.8.8.8.m1.1.1.cmml" xref="S4.T3.8.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.8.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T3.9.9.9.9" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T3.9.9.9.9.1" style="font-size:70%;">RRE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.9.9.9.9.m1.1"><semantics id="S4.T3.9.9.9.9.m1.1a"><mo id="S4.T3.9.9.9.9.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.9.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.9.m1.1b"><ci id="S4.T3.9.9.9.9.m1.1.1.cmml" xref="S4.T3.9.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.9.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.11.11.13.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.11.11.13.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T3.11.11.13.1.1.1" style="font-size:70%;">DUSt3R</span><span class="ltx_text" id="S4.T3.11.11.13.1.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.11.11.13.1.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="S4.T3.11.11.13.1.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.11.11.13.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.13.1.2.1" style="font-size:70%;">✗</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T3.11.11.13.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.13.1.3.1" style="font-size:70%;">0.035</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T3.11.11.13.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.13.1.4.1" style="font-size:70%;">0.030</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.11.11.13.1.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.13.1.5.1" style="font-size:70%;">2.323</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T3.11.11.13.1.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.13.1.6.1" style="font-size:70%;">0.042</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T3.11.11.13.1.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.13.1.7.1" style="font-size:70%;">0.025</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.11.11.13.1.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.13.1.8.1" style="font-size:70%;">1.212</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T3.11.11.13.1.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.13.1.9.1" style="font-size:70%;">0.100</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T3.11.11.13.1.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.11.11.13.1.10.1" style="font-size:70%;">0.087</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T3.11.11.13.1.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.11.11.13.1.11.1" style="font-size:70%;">2.692</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.11.14.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.11.11.14.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T3.11.11.14.2.1.1" style="font-size:70%;">CUT3R</span><span class="ltx_text" id="S4.T3.11.11.14.2.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.11.11.14.2.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="S4.T3.11.11.14.2.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.11.11.14.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.14.2.2.1" style="font-size:70%;">✗</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.14.2.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.11.11.14.2.3.1" style="font-size:70%;">0.029</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.14.2.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.11.11.14.2.4.1" style="font-size:70%;">0.020</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T3.11.11.14.2.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.11.11.14.2.5.1" style="font-size:70%;">1.383</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.14.2.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.14.2.6.1" style="font-size:70%;">0.084</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.14.2.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.14.2.7.1" style="font-size:70%;">0.025</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T3.11.11.14.2.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.14.2.8.1" style="font-size:70%;">0.490</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.14.2.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.11.11.14.2.9.1" style="font-size:70%;">0.079</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.14.2.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.14.2.10.1" style="font-size:70%;">0.088</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.14.2.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.14.2.11.1" style="font-size:70%;">10.41</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.11.15.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.11.11.15.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T3.11.11.15.3.1.1" style="font-size:70%;">MonST3R</span><span class="ltx_text" id="S4.T3.11.11.15.3.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.11.11.15.3.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a><span class="ltx_text" id="S4.T3.11.11.15.3.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.11.11.15.3.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.15.3.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.15.3.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.15.3.3.1" style="font-size:70%;">0.033</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.15.3.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.15.3.4.1" style="font-size:70%;">0.024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T3.11.11.15.3.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.15.3.5.1" style="font-size:70%;">1.501</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.15.3.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.15.3.6.1" style="font-size:70%;">0.055</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.15.3.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.15.3.7.1" style="font-size:70%;">0.025</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T3.11.11.15.3.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.15.3.8.1" style="font-size:70%;">0.776</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.15.3.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.15.3.9.1" style="font-size:70%;">0.170</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.15.3.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.15.3.10.1" style="font-size:70%;">0.155</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.15.3.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.15.3.11.1" style="font-size:70%;">6.455</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.11.16.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.11.11.16.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T3.11.11.16.4.1.1" style="font-size:70%;">DAS3R</span><span class="ltx_text" id="S4.T3.11.11.16.4.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.11.11.16.4.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a><span class="ltx_text" id="S4.T3.11.11.16.4.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.11.11.16.4.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.16.4.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.16.4.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.16.4.3.1" style="font-size:70%;">0.033</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.16.4.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.16.4.4.1" style="font-size:70%;">0.022</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T3.11.11.16.4.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.16.4.5.1" style="font-size:70%;">1.467</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.16.4.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.11.11.16.4.6.1" style="font-size:70%;">0.040</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.16.4.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.16.4.7.1" style="font-size:70%;">0.017</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T3.11.11.16.4.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.16.4.8.1" style="font-size:70%;">0.685</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.16.4.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.16.4.9.1" style="font-size:70%;">0.173</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.16.4.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.16.4.10.1" style="font-size:70%;">0.157</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.11.11.16.4.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.16.4.11.1" style="font-size:70%;">8.341</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.10.10.10.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.10.10.10.1.1" style="font-size:70%;">Easi3R</span><math alttext="{}_{\text{monst3r}}" class="ltx_Math" display="inline" id="S4.T3.10.10.10.1.m1.1"><semantics id="S4.T3.10.10.10.1.m1.1a"><msub id="S4.T3.10.10.10.1.m1.1.1" xref="S4.T3.10.10.10.1.m1.1.1.cmml"><mi id="S4.T3.10.10.10.1.m1.1.1a" xref="S4.T3.10.10.10.1.m1.1.1.cmml"></mi><mtext id="S4.T3.10.10.10.1.m1.1.1.1" mathsize="70%" xref="S4.T3.10.10.10.1.m1.1.1.1a.cmml">monst3r</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.1.m1.1b"><apply id="S4.T3.10.10.10.1.m1.1.1.cmml" xref="S4.T3.10.10.10.1.m1.1.1"><ci id="S4.T3.10.10.10.1.m1.1.1.1a.cmml" xref="S4.T3.10.10.10.1.m1.1.1.1"><mtext id="S4.T3.10.10.10.1.m1.1.1.1.cmml" mathsize="49%" xref="S4.T3.10.10.10.1.m1.1.1.1">monst3r</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.1.m1.1c">{}_{\text{monst3r}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.1.m1.1d">start_FLOATSUBSCRIPT monst3r end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.10.10.10.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.10.10.10.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.10.10.10.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.10.10.10.3.1" style="font-size:70%;">0.030</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.10.10.10.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.10.10.10.4.1" style="font-size:70%;">0.021</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T3.10.10.10.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.10.10.10.5.1" style="font-size:70%;">1.390</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.10.10.10.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.10.6.1" style="font-size:70%;">0.039</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.10.10.10.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.10.10.10.7.1" style="font-size:70%;">0.016</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T3.10.10.10.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.10.10.10.8.1" style="font-size:70%;">0.640</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.10.10.10.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.10.10.10.9.1" style="font-size:70%;">0.168</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.10.10.10.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.10.10.10.10.1" style="font-size:70%;">0.150</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.10.10.10.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.10.10.10.11.1" style="font-size:70%;">5.925</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.11.11">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.11.11.11.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.11.11.11.1.1" style="font-size:70%;">Easi3R</span><math alttext="{}_{\text{dust3r}}" class="ltx_Math" display="inline" id="S4.T3.11.11.11.1.m1.1"><semantics id="S4.T3.11.11.11.1.m1.1a"><msub id="S4.T3.11.11.11.1.m1.1.1" xref="S4.T3.11.11.11.1.m1.1.1.cmml"><mi id="S4.T3.11.11.11.1.m1.1.1a" xref="S4.T3.11.11.11.1.m1.1.1.cmml"></mi><mtext id="S4.T3.11.11.11.1.m1.1.1.1" mathsize="70%" xref="S4.T3.11.11.11.1.m1.1.1.1a.cmml">dust3r</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.11.1.m1.1b"><apply id="S4.T3.11.11.11.1.m1.1.1.cmml" xref="S4.T3.11.11.11.1.m1.1.1"><ci id="S4.T3.11.11.11.1.m1.1.1.1a.cmml" xref="S4.T3.11.11.11.1.m1.1.1.1"><mtext id="S4.T3.11.11.11.1.m1.1.1.1.cmml" mathsize="49%" xref="S4.T3.11.11.11.1.m1.1.1.1">dust3r</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.11.1.m1.1c">{}_{\text{dust3r}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.11.1.m1.1d">start_FLOATSUBSCRIPT dust3r end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.11.11.11.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.11.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T3.11.11.11.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.11.3.1" style="font-size:70%;">0.021</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T3.11.11.11.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.11.4.1" style="font-size:70%;">0.014</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_r" id="S4.T3.11.11.11.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.11.5.1" style="font-size:70%;">1.092</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T3.11.11.11.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.11.6.1" style="font-size:70%;">0.042</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T3.11.11.11.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.11.7.1" style="font-size:70%;">0.015</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_r" id="S4.T3.11.11.11.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T3.11.11.11.8.1" style="font-size:70%;">0.655</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T3.11.11.11.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.11.9.1" style="font-size:70%;">0.070</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T3.11.11.11.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.11.10.1" style="font-size:70%;">0.061</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T3.11.11.11.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.11.11.1" style="font-size:70%;">2.361</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of point cloud reconstruction results on the DyCheck dataset.  Several methods are compared, including DUSt3R, MonST3R, DAS3R, and the proposed Easi3R method, with and without the use of optical flow.  The metrics used to evaluate performance are Accuracy, Completeness, and Distance.  For each method, the mean and median values of these metrics are reported.  The best and second-best results for each metric are highlighted in bold and underlined, respectively, allowing for easy identification of top-performing methods.
> <details>
> <summary>read the caption</summary>
> Table 5: Quantitative Comparisons of Point Cloud Reconstruction on the DyCheck dataset. The best and second best results are bold and underlined, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.9.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.5.3.3">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.5.3.3.4"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.5.3.3.5"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T4.3.1.1.1">
<span class="ltx_text" id="S4.T4.3.1.1.1.1" style="font-size:70%;">Accuracy</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.1.1.1.m1.1"><semantics id="S4.T4.3.1.1.1.m1.1a"><mo id="S4.T4.3.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T4.3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.1.1.1.m1.1b"><ci id="S4.T4.3.1.1.1.m1.1.1.cmml" xref="S4.T4.3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T4.4.2.2.2">
<span class="ltx_text" id="S4.T4.4.2.2.2.1" style="font-size:70%;">Completeness</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.4.2.2.2.m1.1"><semantics id="S4.T4.4.2.2.2.m1.1a"><mo id="S4.T4.4.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T4.4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.2.2.2.m1.1b"><ci id="S4.T4.4.2.2.2.m1.1.1.cmml" xref="S4.T4.4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T4.5.3.3.3">
<span class="ltx_text" id="S4.T4.5.3.3.3.1" style="font-size:70%;">Distance</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.5.3.3.3.m1.1"><semantics id="S4.T4.5.3.3.3.m1.1a"><mo id="S4.T4.5.3.3.3.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T4.5.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.3.3.3.m1.1b"><ci id="S4.T4.5.3.3.3.m1.1.1.cmml" xref="S4.T4.5.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S4.T4.9.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T4.9.7.8.1.1"><span class="ltx_text" id="S4.T4.9.7.8.1.1.1" style="font-size:70%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T4.9.7.8.1.2"><span class="ltx_text" id="S4.T4.9.7.8.1.2.1" style="font-size:70%;">Flow</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.9.7.8.1.3"><span class="ltx_text" id="S4.T4.9.7.8.1.3.1" style="font-size:70%;">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.9.7.8.1.4"><span class="ltx_text" id="S4.T4.9.7.8.1.4.1" style="font-size:70%;">Median</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.9.7.8.1.5"><span class="ltx_text" id="S4.T4.9.7.8.1.5.1" style="font-size:70%;">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.9.7.8.1.6"><span class="ltx_text" id="S4.T4.9.7.8.1.6.1" style="font-size:70%;">Median</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.9.7.8.1.7"><span class="ltx_text" id="S4.T4.9.7.8.1.7.1" style="font-size:70%;">Mean</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.9.7.8.1.8"><span class="ltx_text" id="S4.T4.9.7.8.1.8.1" style="font-size:70%;">Median</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.9.7.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.9.7.9.1.1">
<span class="ltx_text" id="S4.T4.9.7.9.1.1.1" style="font-size:70%;">DUSt3R</span><span class="ltx_text" id="S4.T4.9.7.9.1.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.9.7.9.1.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="S4.T4.9.7.9.1.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.9.7.9.1.2"><span class="ltx_text" id="S4.T4.9.7.9.1.2.1" style="font-size:70%;">✗</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.7.9.1.3"><span class="ltx_text" id="S4.T4.9.7.9.1.3.1" style="font-size:70%;">0.802</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.9.7.9.1.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.7.9.1.4.1" style="font-size:70%;">0.595</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.7.9.1.5"><span class="ltx_text" id="S4.T4.9.7.9.1.5.1" style="font-size:70%;">1.950</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.9.7.9.1.6"><span class="ltx_text" id="S4.T4.9.7.9.1.6.1" style="font-size:70%;">0.815</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.7.9.1.7"><span class="ltx_text" id="S4.T4.9.7.9.1.7.1" style="font-size:70%;">0.353</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.9.7.9.1.8"><span class="ltx_text" id="S4.T4.9.7.9.1.8.1" style="font-size:70%;">0.233</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.6.4.4.1">
<span class="ltx_text ltx_font_bold" id="S4.T4.6.4.4.1.1" style="font-size:70%;">Easi3R</span><math alttext="{}_{\text{dust3r}}" class="ltx_Math" display="inline" id="S4.T4.6.4.4.1.m1.1"><semantics id="S4.T4.6.4.4.1.m1.1a"><msub id="S4.T4.6.4.4.1.m1.1.1" xref="S4.T4.6.4.4.1.m1.1.1.cmml"><mi id="S4.T4.6.4.4.1.m1.1.1a" xref="S4.T4.6.4.4.1.m1.1.1.cmml"></mi><mtext id="S4.T4.6.4.4.1.m1.1.1.1" mathsize="70%" xref="S4.T4.6.4.4.1.m1.1.1.1a.cmml">dust3r</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T4.6.4.4.1.m1.1b"><apply id="S4.T4.6.4.4.1.m1.1.1.cmml" xref="S4.T4.6.4.4.1.m1.1.1"><ci id="S4.T4.6.4.4.1.m1.1.1.1a.cmml" xref="S4.T4.6.4.4.1.m1.1.1.1"><mtext id="S4.T4.6.4.4.1.m1.1.1.1.cmml" mathsize="49%" xref="S4.T4.6.4.4.1.m1.1.1.1">dust3r</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.4.4.1.m1.1c">{}_{\text{dust3r}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.4.4.1.m1.1d">start_FLOATSUBSCRIPT dust3r end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.6.4.4.2"><span class="ltx_text" id="S4.T4.6.4.4.2.1" style="font-size:70%;">✗</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.6.4.4.3"><span class="ltx_text" id="S4.T4.6.4.4.3.1" style="font-size:70%;">0.772</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.6.4.4.4"><span class="ltx_text" id="S4.T4.6.4.4.4.1" style="font-size:70%;">0.596</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.4.4.5"><span class="ltx_text" id="S4.T4.6.4.4.5.1" style="font-size:70%;">1.813</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.6.4.4.6"><span class="ltx_text" id="S4.T4.6.4.4.6.1" style="font-size:70%;">0.757</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.4.4.7"><span class="ltx_text" id="S4.T4.6.4.4.7.1" style="font-size:70%;">0.336</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.6.4.4.8"><span class="ltx_text" id="S4.T4.6.4.4.8.1" style="font-size:70%;">0.219</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.7.10.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.9.7.10.2.1">
<span class="ltx_text" id="S4.T4.9.7.10.2.1.1" style="font-size:70%;">DUSt3R</span><span class="ltx_text" id="S4.T4.9.7.10.2.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.9.7.10.2.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="S4.T4.9.7.10.2.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.9.7.10.2.2"><span class="ltx_text" id="S4.T4.9.7.10.2.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.10.2.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.7.10.2.3.1" style="font-size:70%;">0.738</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.7.10.2.4"><span class="ltx_text" id="S4.T4.9.7.10.2.4.1" style="font-size:70%;">0.599</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.10.2.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.7.10.2.5.1" style="font-size:70%;">1.669</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.7.10.2.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.7.10.2.6.1" style="font-size:70%;">0.678</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.10.2.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.7.10.2.7.1" style="font-size:70%;">0.313</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.9.7.10.2.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.7.10.2.8.1" style="font-size:70%;">0.196</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.7.5.5.1">
<span class="ltx_text ltx_font_bold" id="S4.T4.7.5.5.1.1" style="font-size:70%;">Easi3R</span><math alttext="{}_{\text{dust3r}}" class="ltx_Math" display="inline" id="S4.T4.7.5.5.1.m1.1"><semantics id="S4.T4.7.5.5.1.m1.1a"><msub id="S4.T4.7.5.5.1.m1.1.1" xref="S4.T4.7.5.5.1.m1.1.1.cmml"><mi id="S4.T4.7.5.5.1.m1.1.1a" xref="S4.T4.7.5.5.1.m1.1.1.cmml"></mi><mtext id="S4.T4.7.5.5.1.m1.1.1.1" mathsize="70%" xref="S4.T4.7.5.5.1.m1.1.1.1a.cmml">dust3r</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T4.7.5.5.1.m1.1b"><apply id="S4.T4.7.5.5.1.m1.1.1.cmml" xref="S4.T4.7.5.5.1.m1.1.1"><ci id="S4.T4.7.5.5.1.m1.1.1.1a.cmml" xref="S4.T4.7.5.5.1.m1.1.1.1"><mtext id="S4.T4.7.5.5.1.m1.1.1.1.cmml" mathsize="49%" xref="S4.T4.7.5.5.1.m1.1.1.1">dust3r</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.5.5.1.m1.1c">{}_{\text{dust3r}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.5.5.1.m1.1d">start_FLOATSUBSCRIPT dust3r end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.7.5.5.2"><span class="ltx_text" id="S4.T4.7.5.5.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.5.3"><span class="ltx_text ltx_font_bold" id="S4.T4.7.5.5.3.1" style="font-size:70%;">0.703</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.7.5.5.4"><span class="ltx_text ltx_font_bold" id="S4.T4.7.5.5.4.1" style="font-size:70%;">0.589</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T4.7.5.5.5.1" style="font-size:70%;">1.474</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.7.5.5.6"><span class="ltx_text ltx_font_bold" id="S4.T4.7.5.5.6.1" style="font-size:70%;">0.586</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.5.7"><span class="ltx_text ltx_font_bold" id="S4.T4.7.5.5.7.1" style="font-size:70%;">0.301</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.7.5.5.8"><span class="ltx_text ltx_font_bold" id="S4.T4.7.5.5.8.1" style="font-size:70%;">0.186</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.7.11.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.9.7.11.3.1">
<span class="ltx_text" id="S4.T4.9.7.11.3.1.1" style="font-size:70%;">MonST3R</span><span class="ltx_text" id="S4.T4.9.7.11.3.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.9.7.11.3.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a><span class="ltx_text" id="S4.T4.9.7.11.3.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.9.7.11.3.2"><span class="ltx_text" id="S4.T4.9.7.11.3.2.1" style="font-size:70%;">✗</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.7.11.3.3"><span class="ltx_text" id="S4.T4.9.7.11.3.3.1" style="font-size:70%;">0.855</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.9.7.11.3.4"><span class="ltx_text" id="S4.T4.9.7.11.3.4.1" style="font-size:70%;">0.693</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.7.11.3.5"><span class="ltx_text" id="S4.T4.9.7.11.3.5.1" style="font-size:70%;">1.916</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.9.7.11.3.6"><span class="ltx_text" id="S4.T4.9.7.11.3.6.1" style="font-size:70%;">1.035</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.7.11.3.7"><span class="ltx_text" id="S4.T4.9.7.11.3.7.1" style="font-size:70%;">0.398</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.9.7.11.3.8"><span class="ltx_text" id="S4.T4.9.7.11.3.8.1" style="font-size:70%;">0.295</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.8.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.8.6.6.1">
<span class="ltx_text ltx_font_bold" id="S4.T4.8.6.6.1.1" style="font-size:70%;">Easi3R</span><math alttext="{}_{\text{monst3r}}" class="ltx_Math" display="inline" id="S4.T4.8.6.6.1.m1.1"><semantics id="S4.T4.8.6.6.1.m1.1a"><msub id="S4.T4.8.6.6.1.m1.1.1" xref="S4.T4.8.6.6.1.m1.1.1.cmml"><mi id="S4.T4.8.6.6.1.m1.1.1a" xref="S4.T4.8.6.6.1.m1.1.1.cmml"></mi><mtext id="S4.T4.8.6.6.1.m1.1.1.1" mathsize="70%" xref="S4.T4.8.6.6.1.m1.1.1.1a.cmml">monst3r</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T4.8.6.6.1.m1.1b"><apply id="S4.T4.8.6.6.1.m1.1.1.cmml" xref="S4.T4.8.6.6.1.m1.1.1"><ci id="S4.T4.8.6.6.1.m1.1.1.1a.cmml" xref="S4.T4.8.6.6.1.m1.1.1.1"><mtext id="S4.T4.8.6.6.1.m1.1.1.1.cmml" mathsize="49%" xref="S4.T4.8.6.6.1.m1.1.1.1">monst3r</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.6.6.1.m1.1c">{}_{\text{monst3r}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.6.6.1.m1.1d">start_FLOATSUBSCRIPT monst3r end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.8.6.6.2"><span class="ltx_text" id="S4.T4.8.6.6.2.1" style="font-size:70%;">✗</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.8.6.6.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.8.6.6.3.1" style="font-size:70%;">0.846</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.8.6.6.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.8.6.6.4.1" style="font-size:70%;">0.660</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.6.6.5"><span class="ltx_text" id="S4.T4.8.6.6.5.1" style="font-size:70%;">1.840</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.8.6.6.6"><span class="ltx_text" id="S4.T4.8.6.6.6.1" style="font-size:70%;">0.983</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.6.6.7"><span class="ltx_text" id="S4.T4.8.6.6.7.1" style="font-size:70%;">0.390</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.8.6.6.8"><span class="ltx_text" id="S4.T4.8.6.6.8.1" style="font-size:70%;">0.290</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.7.12.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.9.7.12.4.1">
<span class="ltx_text" id="S4.T4.9.7.12.4.1.1" style="font-size:70%;">MonST3R</span><span class="ltx_text" id="S4.T4.9.7.12.4.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.9.7.12.4.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a><span class="ltx_text" id="S4.T4.9.7.12.4.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.9.7.12.4.2"><span class="ltx_text" id="S4.T4.9.7.12.4.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.12.4.3"><span class="ltx_text" id="S4.T4.9.7.12.4.3.1" style="font-size:70%;">0.851</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.7.12.4.4"><span class="ltx_text" id="S4.T4.9.7.12.4.4.1" style="font-size:70%;">0.689</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.12.4.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.7.12.4.5.1" style="font-size:70%;">1.734</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.7.12.4.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.7.12.4.6.1" style="font-size:70%;">0.958</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.12.4.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.7.12.4.7.1" style="font-size:70%;">0.353</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.9.7.12.4.8"><span class="ltx_text ltx_font_bold" id="S4.T4.9.7.12.4.8.1" style="font-size:70%;">0.254</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.9.7.7.1">
<span class="ltx_text ltx_font_bold" id="S4.T4.9.7.7.1.1" style="font-size:70%;">Easi3R</span><math alttext="{}_{\text{monst3r}}" class="ltx_Math" display="inline" id="S4.T4.9.7.7.1.m1.1"><semantics id="S4.T4.9.7.7.1.m1.1a"><msub id="S4.T4.9.7.7.1.m1.1.1" xref="S4.T4.9.7.7.1.m1.1.1.cmml"><mi id="S4.T4.9.7.7.1.m1.1.1a" xref="S4.T4.9.7.7.1.m1.1.1.cmml"></mi><mtext id="S4.T4.9.7.7.1.m1.1.1.1" mathsize="70%" xref="S4.T4.9.7.7.1.m1.1.1.1a.cmml">monst3r</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T4.9.7.7.1.m1.1b"><apply id="S4.T4.9.7.7.1.m1.1.1.cmml" xref="S4.T4.9.7.7.1.m1.1.1"><ci id="S4.T4.9.7.7.1.m1.1.1.1a.cmml" xref="S4.T4.9.7.7.1.m1.1.1.1"><mtext id="S4.T4.9.7.7.1.m1.1.1.1.cmml" mathsize="49%" xref="S4.T4.9.7.7.1.m1.1.1.1">monst3r</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.7.7.1.m1.1c">{}_{\text{monst3r}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.7.7.1.m1.1d">start_FLOATSUBSCRIPT monst3r end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.9.7.7.2"><span class="ltx_text" id="S4.T4.9.7.7.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.7.7.3"><span class="ltx_text ltx_font_bold" id="S4.T4.9.7.7.3.1" style="font-size:70%;">0.834</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.9.7.7.4"><span class="ltx_text ltx_font_bold" id="S4.T4.9.7.7.4.1" style="font-size:70%;">0.643</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.7.7.5"><span class="ltx_text ltx_font_bold" id="S4.T4.9.7.7.5.1" style="font-size:70%;">1.661</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.9.7.7.6"><span class="ltx_text ltx_font_bold" id="S4.T4.9.7.7.6.1" style="font-size:70%;">0.916</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.7.7.7"><span class="ltx_text ltx_font_bold" id="S4.T4.9.7.7.7.1" style="font-size:70%;">0.350</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.9.7.7.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.7.7.8.1" style="font-size:70%;">0.255</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the dynamic object segmentation task using the DAVIS dataset. It shows the impact of removing different components of the proposed Easi3R method on the final performance, measured by the Jaccard Index (JM) and Recall (JR). The components investigated include individual attention maps (Aa=src, A=src, Aa=ref, A=ref), the feature clustering process, and all features combined. The ablation is conducted on the DUSt3R and MonST3R backbones separately to assess their individual contribution and robustness.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation of Dynamic Object Segmentation on DAVIS.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.3.3.3">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.3.3.3.4"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.3.3.3.5"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T5.1.1.1.1">
<span class="ltx_text" id="S4.T5.1.1.1.1.1" style="font-size:70%;">Accuracy</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T5.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T5.2.2.2.2">
<span class="ltx_text" id="S4.T5.2.2.2.2.1" style="font-size:70%;">Completeness</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T5.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.3.3.3.3">
<span class="ltx_text" id="S4.T5.3.3.3.3.1" style="font-size:70%;">Distance</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.3.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.3.m1.1a"><mo id="S4.T5.3.3.3.3.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T5.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S4.T5.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T5.5.5.6.1.1"><span class="ltx_text" id="S4.T5.5.5.6.1.1.1" style="font-size:70%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T5.5.5.6.1.2"><span class="ltx_text" id="S4.T5.5.5.6.1.2.1" style="font-size:70%;">Flow</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.5.6.1.3"><span class="ltx_text" id="S4.T5.5.5.6.1.3.1" style="font-size:70%;">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T5.5.5.6.1.4"><span class="ltx_text" id="S4.T5.5.5.6.1.4.1" style="font-size:70%;">Median</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.5.6.1.5"><span class="ltx_text" id="S4.T5.5.5.6.1.5.1" style="font-size:70%;">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T5.5.5.6.1.6"><span class="ltx_text" id="S4.T5.5.5.6.1.6.1" style="font-size:70%;">Median</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.5.6.1.7"><span class="ltx_text" id="S4.T5.5.5.6.1.7.1" style="font-size:70%;">Mean</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.5.6.1.8"><span class="ltx_text" id="S4.T5.5.5.6.1.8.1" style="font-size:70%;">Median</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.5.5.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.5.7.1.1">
<span class="ltx_text" id="S4.T5.5.5.7.1.1.1" style="font-size:70%;">DUSt3R</span><span class="ltx_text" id="S4.T5.5.5.7.1.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T5.5.5.7.1.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="S4.T5.5.5.7.1.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.5.5.7.1.2"><span class="ltx_text" id="S4.T5.5.5.7.1.2.1" style="font-size:70%;">✗</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.5.7.1.3"><span class="ltx_text" id="S4.T5.5.5.7.1.3.1" style="font-size:70%;">0.802</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.5.5.7.1.4"><span class="ltx_text" id="S4.T5.5.5.7.1.4.1" style="font-size:70%;">0.595</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.5.7.1.5"><span class="ltx_text" id="S4.T5.5.5.7.1.5.1" style="font-size:70%;">1.950</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.5.5.7.1.6"><span class="ltx_text" id="S4.T5.5.5.7.1.6.1" style="font-size:70%;">0.815</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.5.7.1.7"><span class="ltx_text" id="S4.T5.5.5.7.1.7.1" style="font-size:70%;">0.353</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.5.5.7.1.8"><span class="ltx_text" id="S4.T5.5.5.7.1.8.1" style="font-size:70%;">0.233</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.5.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.5.8.2.1">
<span class="ltx_text" id="S4.T5.5.5.8.2.1.1" style="font-size:70%;">CUT3R</span><span class="ltx_text" id="S4.T5.5.5.8.2.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T5.5.5.8.2.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="S4.T5.5.5.8.2.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.5.5.8.2.2"><span class="ltx_text" id="S4.T5.5.5.8.2.2.1" style="font-size:70%;">✗</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.8.2.3"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.8.2.3.1" style="font-size:70%;">0.458</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.5.5.8.2.4"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.8.2.4.1" style="font-size:70%;">0.342</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.8.2.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.5.5.8.2.5.1" style="font-size:70%;">1.633</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.5.5.8.2.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.5.5.8.2.6.1" style="font-size:70%;">0.792</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.8.2.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.5.5.8.2.7.1" style="font-size:70%;">0.326</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.5.5.8.2.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.5.5.8.2.8.1" style="font-size:70%;">0.229</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.5.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.5.9.3.1">
<span class="ltx_text" id="S4.T5.5.5.9.3.1.1" style="font-size:70%;">MonST3R</span><span class="ltx_text" id="S4.T5.5.5.9.3.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T5.5.5.9.3.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a><span class="ltx_text" id="S4.T5.5.5.9.3.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.5.5.9.3.2"><span class="ltx_text" id="S4.T5.5.5.9.3.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.9.3.3"><span class="ltx_text" id="S4.T5.5.5.9.3.3.1" style="font-size:70%;">0.851</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.5.5.9.3.4"><span class="ltx_text" id="S4.T5.5.5.9.3.4.1" style="font-size:70%;">0.689</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.9.3.5"><span class="ltx_text" id="S4.T5.5.5.9.3.5.1" style="font-size:70%;">1.734</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.5.5.9.3.6"><span class="ltx_text" id="S4.T5.5.5.9.3.6.1" style="font-size:70%;">0.958</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.9.3.7"><span class="ltx_text" id="S4.T5.5.5.9.3.7.1" style="font-size:70%;">0.353</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.5.5.9.3.8"><span class="ltx_text" id="S4.T5.5.5.9.3.8.1" style="font-size:70%;">0.254</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.5.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.5.10.4.1">
<span class="ltx_text" id="S4.T5.5.5.10.4.1.1" style="font-size:70%;">DAS3R</span><span class="ltx_text" id="S4.T5.5.5.10.4.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T5.5.5.10.4.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.24391v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a><span class="ltx_text" id="S4.T5.5.5.10.4.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.5.5.10.4.2"><span class="ltx_text" id="S4.T5.5.5.10.4.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.10.4.3"><span class="ltx_text" id="S4.T5.5.5.10.4.3.1" style="font-size:70%;">1.772</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.5.5.10.4.4"><span class="ltx_text" id="S4.T5.5.5.10.4.4.1" style="font-size:70%;">1.438</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.10.4.5"><span class="ltx_text" id="S4.T5.5.5.10.4.5.1" style="font-size:70%;">2.503</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.5.5.10.4.6"><span class="ltx_text" id="S4.T5.5.5.10.4.6.1" style="font-size:70%;">1.548</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.10.4.7"><span class="ltx_text" id="S4.T5.5.5.10.4.7.1" style="font-size:70%;">0.475</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.5.5.10.4.8"><span class="ltx_text" id="S4.T5.5.5.10.4.8.1" style="font-size:70%;">0.352</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.4.4.4.1">
<span class="ltx_text ltx_font_bold" id="S4.T5.4.4.4.1.1" style="font-size:70%;">Easi3R</span><math alttext="{}_{\text{monst3r}}" class="ltx_Math" display="inline" id="S4.T5.4.4.4.1.m1.1"><semantics id="S4.T5.4.4.4.1.m1.1a"><msub id="S4.T5.4.4.4.1.m1.1.1" xref="S4.T5.4.4.4.1.m1.1.1.cmml"><mi id="S4.T5.4.4.4.1.m1.1.1a" xref="S4.T5.4.4.4.1.m1.1.1.cmml"></mi><mtext id="S4.T5.4.4.4.1.m1.1.1.1" mathsize="70%" xref="S4.T5.4.4.4.1.m1.1.1.1a.cmml">monst3r</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.4.1.m1.1b"><apply id="S4.T5.4.4.4.1.m1.1.1.cmml" xref="S4.T5.4.4.4.1.m1.1.1"><ci id="S4.T5.4.4.4.1.m1.1.1.1a.cmml" xref="S4.T5.4.4.4.1.m1.1.1.1"><mtext id="S4.T5.4.4.4.1.m1.1.1.1.cmml" mathsize="49%" xref="S4.T5.4.4.4.1.m1.1.1.1">monst3r</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.4.1.m1.1c">{}_{\text{monst3r}}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.4.1.m1.1d">start_FLOATSUBSCRIPT monst3r end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.4.4.2"><span class="ltx_text" id="S4.T5.4.4.4.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.4.3"><span class="ltx_text" id="S4.T5.4.4.4.3.1" style="font-size:70%;">0.834</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.4.4.4"><span class="ltx_text" id="S4.T5.4.4.4.4.1" style="font-size:70%;">0.643</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.4.5"><span class="ltx_text" id="S4.T5.4.4.4.5.1" style="font-size:70%;">1.661</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.4.4.6"><span class="ltx_text" id="S4.T5.4.4.4.6.1" style="font-size:70%;">0.916</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.4.7"><span class="ltx_text" id="S4.T5.4.4.4.7.1" style="font-size:70%;">0.350</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.4.4.4.8"><span class="ltx_text" id="S4.T5.4.4.4.8.1" style="font-size:70%;">0.255</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.5.5.5.1">
<span class="ltx_text ltx_font_bold" id="S4.T5.5.5.5.1.1" style="font-size:70%;">Easi3R</span><math alttext="{}_{\text{dust3r}}" class="ltx_Math" display="inline" id="S4.T5.5.5.5.1.m1.1"><semantics id="S4.T5.5.5.5.1.m1.1a"><msub id="S4.T5.5.5.5.1.m1.1.1" xref="S4.T5.5.5.5.1.m1.1.1.cmml"><mi id="S4.T5.5.5.5.1.m1.1.1a" xref="S4.T5.5.5.5.1.m1.1.1.cmml"></mi><mtext id="S4.T5.5.5.5.1.m1.1.1.1" mathsize="70%" xref="S4.T5.5.5.5.1.m1.1.1.1a.cmml">dust3r</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T5.5.5.5.1.m1.1b"><apply id="S4.T5.5.5.5.1.m1.1.1.cmml" xref="S4.T5.5.5.5.1.m1.1.1"><ci id="S4.T5.5.5.5.1.m1.1.1.1a.cmml" xref="S4.T5.5.5.5.1.m1.1.1.1"><mtext id="S4.T5.5.5.5.1.m1.1.1.1.cmml" mathsize="49%" xref="S4.T5.5.5.5.1.m1.1.1.1">dust3r</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.5.5.5.1.m1.1c">{}_{\text{dust3r}}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.5.5.5.1.m1.1d">start_FLOATSUBSCRIPT dust3r end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.5.5.5.2"><span class="ltx_text" id="S4.T5.5.5.5.2.1" style="font-size:70%;">✓</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.5.5.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.5.5.5.3.1" style="font-size:70%;">0.703</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.5.5.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.5.5.5.4.1" style="font-size:70%;">0.589</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.5.5.1" style="font-size:70%;">1.474</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.5.5.5.6"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.5.6.1" style="font-size:70%;">0.586</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.5.5.7"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.5.7.1" style="font-size:70%;">0.301</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.5.5.5.8"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.5.8.1" style="font-size:70%;">0.186</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted on the DyCheck dataset to analyze the impact of different design choices on camera pose estimation and point cloud reconstruction.  It examines the effects of applying attention re-weighting to either only the reference view decoder or both the reference and source decoders, and the influence of incorporating global alignment using optical flow with and without dynamic object segmentation.  The metrics used for evaluation include Absolute Translation Error (ATE), Relative Translation Error (RTE), Relative Rotation Error (RRE), Accuracy, Completeness, and Distance.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation Study of Camera Pose Estimation and Point Cloud Reconstruction on the DyCheck dataset.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.24391/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24391/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24391/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24391/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24391/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24391/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24391/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24391/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24391/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24391/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24391/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24391/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24391/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24391/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}