---
title: "Diffusion Distillation With Direct Preference Optimization For Efficient 3D LiDAR Scene Completion"
summary: "Distillation-DPO: Efficient 3D LiDAR scene completion via diffusion distillation with direct preference optimization."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Zhejiang University",]
showSummary: true
date: 2025-04-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.11447 {{< /keyword >}}
{{< keyword icon="writer" >}} An Zhaol et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.11447" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.11447" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.11447/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

3D LiDAR scene completion has been boosted by diffusion models, but their slow sampling hinders real-world application. Score distillation can speed up sampling, but it leads to performance drops. To solve these, reward models could help mitigate the performance degradation from distillation, but they are hard to optimize directly due to challenges in obtaining large-scale labeled data and non-differentiable evaluation metrics.



To address these challenges, this paper introduces **Distillation-DPO**, a novel diffusion distillation framework for LiDAR scene completion with preference alignment. It generates completion scenes with different initial noises, uses LiDAR scene evaluation metrics as preference to construct winning/losing sample pairs and optimizes the student model by exploiting the difference in score functions. The results show higher completion quality and over 5x faster speeds.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Distillation-DPO, a novel framework, significantly accelerates LiDAR scene completion using preference alignment. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method achieves higher completion quality and speed compared to state-of-the-art diffusion models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The paper introduces preference learning in distillation, offering insights for future research. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper presents Distillation-DPO, a novel diffusion distillation framework for 3D LiDAR scene completion. It achieves higher-quality scene completion with faster speeds, marking a significant advancement. This work opens new avenues for preference-aligned distillation and provides insights for future research, accelerating developments in autonomous driving, robotics, and augmented reality.

------
#### Visual Insights



![](https://arxiv.org/html/2504.11447/x2.png)

> 🔼 Figure 1 showcases a comparison of LiDAR scene completion methods on the SemanticKITTI dataset.  Subfigure (a) displays a sparse LiDAR input scan, representing the incomplete data. Subfigure (b) shows the corresponding ground truth, representing the complete scene. Subfigure (c) presents the completion result using LiDiff, a state-of-the-art model, which serves as a baseline for comparison.  Subfigure (d) demonstrates the superior result obtained with the proposed Distillation-DPO method. The key takeaway is that Distillation-DPO achieves higher completion quality (measured by Chamfer Distance) with a significant increase in speed; it is more than 5 times faster than LiDiff.
> <details>
> <summary>read the caption</summary>
> Figure 1:  An example demonstration of Distillation-DPO for LiDAR scene completion on SemanticKITTI dataset. (a) The input sparse LiDAR scan. (b) The corresponding ground truth scene. (c) Completion results of the existing state-of-the-art (SOTA) model, LiDiff [21]. (d) Completion results of the proposed Distillation-DPO. Compared to LiDiff, Distillation-DPO can complete a scene more than 5 times faster while achieving higher completion quality (lower Chamfer Distance).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.9.9">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T1.4.4.4.5">Model</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1">CD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.2.2">JSD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.3.3.3">EMD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.4.4.4">Times (s) <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.5.5.1">LMSCNet<sup class="ltx_sup" id="S4.T1.5.5.5.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.5.5.5.1.1.1">†</span></sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.11447v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.5.5.5.2">0.641</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.5.5.5.3">0.431</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.5.5.5.4">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.5.5.5.5">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.6.6.1">LODE<sup class="ltx_sup" id="S4.T1.6.6.6.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.6.6.6.1.1.1">†</span></sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.11447v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.6.6.6.2">1.029</td>
<td class="ltx_td ltx_align_right" id="S4.T1.6.6.6.3">0.451</td>
<td class="ltx_td ltx_align_right" id="S4.T1.6.6.6.4">-</td>
<td class="ltx_td ltx_align_right" id="S4.T1.6.6.6.5">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.7.7.1">MID<sup class="ltx_sup" id="S4.T1.7.7.7.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.7.7.7.1.1.1">†</span></sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.11447v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.7.7.7.2">0.503</td>
<td class="ltx_td ltx_align_right" id="S4.T1.7.7.7.3">0.470</td>
<td class="ltx_td ltx_align_right" id="S4.T1.7.7.7.4">-</td>
<td class="ltx_td ltx_align_right" id="S4.T1.7.7.7.5">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.9.9.10.1.1">PVD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.11447v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.9.9.10.1.2">1.256</td>
<td class="ltx_td ltx_align_right" id="S4.T1.9.9.10.1.3">0.498</td>
<td class="ltx_td ltx_align_right" id="S4.T1.9.9.10.1.4">-</td>
<td class="ltx_td ltx_align_right" id="S4.T1.9.9.10.1.5">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.8.8.8.1">LiDiff<sup class="ltx_sup" id="S4.T1.8.8.8.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.8.8.8.1.1.1">†</span></sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.11447v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.8.8.8.2">0.434</td>
<td class="ltx_td ltx_align_right" id="S4.T1.8.8.8.3">0.444</td>
<td class="ltx_td ltx_align_right" id="S4.T1.8.8.8.4" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T1.8.8.8.4.1" style="background-color:#FF9999;">22.15</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.8.8.8.5" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T1.8.8.8.5.1" style="background-color:#FFFF99;">17.75</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.9.9.9.1">LiDiff (Refined)<sup class="ltx_sup" id="S4.T1.9.9.9.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.9.9.9.1.1.1">†</span></sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.11447v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.9.9.9.2" style="background-color:#FFCC99;"><span class="ltx_text" id="S4.T1.9.9.9.2.1" style="background-color:#FFCC99;">0.375</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.9.9.9.3" style="background-color:#FFCC99;"><span class="ltx_text" id="S4.T1.9.9.9.3.1" style="background-color:#FFCC99;">0.416</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.9.9.9.4" style="background-color:#FFCC99;"><span class="ltx_text" id="S4.T1.9.9.9.4.1" style="background-color:#FFCC99;">23.16</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.9.9.9.5">17.87</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.11.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.9.9.11.2.1">Distillation-DPO</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.9.9.11.2.2" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T1.9.9.11.2.2.1" style="background-color:#FFFF99;">0.414</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.9.9.11.2.3" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T1.9.9.11.2.3.1" style="background-color:#FFFF99;">0.419</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.9.9.11.2.4" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T1.9.9.11.2.4.1" style="background-color:#FFFF99;">23.29</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.9.9.11.2.5" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T1.9.9.11.2.5.1" style="background-color:#FF9999;">3.28</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.12.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.9.9.12.3.1">Distillation-DPO (Refined)</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.9.9.12.3.2" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T1.9.9.12.3.2.1" style="background-color:#FF9999;">0.354</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.9.9.12.3.3" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T1.9.9.12.3.3.1" style="background-color:#FF9999;">0.387</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.9.9.12.3.4">23.66</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.9.9.12.3.5" style="background-color:#FFCC99;"><span class="ltx_text" id="S4.T1.9.9.12.3.5.1" style="background-color:#FFCC99;">3.38</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the proposed Distillation-DPO model's performance against several existing state-of-the-art (SOTA) LiDAR scene completion methods.  The comparison is based on three common evaluation metrics: Chamfer Distance (CD), Jensen-Shannon Divergence (JSD), and Earth Mover's Distance (EMD). Lower values for CD, JSD, and EMD indicate better performance.  The table also shows the completion time for each method.  It's important to note that the completion times for LiDiff and its refined version were calculated using the official implementations and released checkpoints, while Distillation-DPO uses a significantly reduced number of sampling steps (8 vs. 50 for LiDiff). The color-coding highlights the top three performers for each metric.
> <details>
> <summary>read the caption</summary>
> Table 1: The results on LiDAR scene completion of Distillation-DPO with existing models. Colors denote the 1st, 2nd, and 3rd best-performing model. “††{\dagger}†” means the completion time is calculated based on the official implementation and released checkpoints. Here Lidiff takes 50 NFEs while ours takes 8 only.
> </details>





### In-depth insights


#### DPO Distillation
DPO Distillation, as a concept, likely involves combining Direct Preference Optimization (DPO) with knowledge distillation techniques. DPO, in itself, offers a way to align a model's behavior with desired preferences without explicitly training a reward model. By distilling a DPO-aligned "teacher" model into a smaller "student" model, the benefits of preference alignment can be transferred efficiently. **This approach aims to create a more compact and computationally efficient model that retains the desired behaviors and performance characteristics learned from the larger, preference-aligned teacher model.** This is achieved by training the student to mimic the score differences between teacher and student models, therefore **compressing its size and boosting the speed** while retaining the key capabilities of the teacher. Using a smaller network also helps with the efficient memory consumption. The most significant challenges of DPO Distillation involve preserving the nuances of preference alignment during the distillation process and preventing the student model from simply overfitting to the teacher model's outputs. Hence, the **key benefits are improved efficiency, smaller size, and boosted speed**.

#### LiDAR Completion
LiDAR scene completion is the task of generating a dense 3D point cloud from a sparse LiDAR scan. Traditional methods use techniques like depth map recovery or leveraging RGB images, but these are limited by voxel resolution. Recent works use diffusion models for high-quality completion, focusing on reconstructing dense scans or recovering complete scenes. To improve efficiency, distillation methods like ScoreLiDAR have been introduced. **LiDAR completion is crucial for autonomous driving and robotics, enabling better scene understanding and navigation.** The field is actively developing, with a focus on improving both the quality and efficiency of completion methods, especially through the use of diffusion models and distillation techniques.

#### Speed vs. Quality
The inherent trade-off between processing speed and output quality is a central theme in various fields, particularly in machine learning and computer vision applications like 3D LiDAR scene completion. **Achieving a balance** is crucial, as excessively prioritizing speed can lead to degraded accuracy and detail, while an over-emphasis on quality may result in impractical processing times. In the context of diffusion models, known for their high-quality generative capabilities, the **slow sampling speed** poses a significant bottleneck. Techniques like score distillation aim to accelerate the process, but often at the cost of reduced fidelity. A core challenge lies in **optimizing algorithms** and model architectures to minimize computational complexity without sacrificing essential details or introducing artifacts. Methods like knowledge distillation and network pruning can compress models, making them faster, but careful attention must be paid to prevent information loss. Furthermore, **hardware acceleration** through GPUs or specialized processors plays a vital role in enhancing speed. Ultimately, the optimal balance depends on the specific application requirements, with real-time systems demanding faster processing and applications where high accuracy is paramount needing more emphasis on quality. **Evaluation metrics** must accurately reflect both aspects, considering not just accuracy but also computational cost.

#### Preference Align
**Preference alignment** is a crucial aspect of modern machine learning, particularly in generative models and reinforcement learning. It involves training models to produce outputs that align with human preferences or desired objectives. This is often achieved through techniques like reinforcement learning from human feedback (RLHF) or direct preference optimization (DPO), where models are trained to maximize a reward signal derived from human preferences. **The challenge lies in accurately capturing and representing these preferences**, as they can be subjective, complex, and difficult to quantify. Furthermore, preference alignment aims to ensure that models not only generate high-quality outputs but also avoid undesirable behaviors or biases. **Robust evaluation metrics** are essential to assess the degree of alignment and identify potential issues. The goal is to create models that are both performant and aligned with human values, leading to more trustworthy and beneficial AI systems.

#### DPO Limitations
**Diffusion-DPO (DPO) limitations** often stem from its reliance on preference data, which, if biased or limited, can skew the model towards suboptimal solutions. The **quality and diversity of the preference data** are critical; if the data doesn't accurately reflect the desired outcomes, the model may learn to exploit the evaluation metrics rather than improve scene understanding. Furthermore, **DPO's on-policy training** can lead to instability if the student model deviates significantly from the teacher, potentially causing the preference data to become unreliable. This can be mitigated by careful hyperparameter tuning and regularization techniques. The **computational cost** associated with generating and evaluating preference data pairs can also be a limitation, especially for high-resolution LiDAR scenes. Additionally, the **choice of evaluation metrics** for constructing preference pairs is crucial. If these metrics are not well-aligned with human perception or task-specific requirements, the resulting models may not generalize well to real-world applications. Moreover, DPO's performance is constrained by the teacher model's capabilities; the student model can only learn to approximate the teacher's distribution, limiting its potential to surpass the teacher's performance. Careful consideration of these limitations is essential for effectively applying DPO to LiDAR scene completion and visual generation tasks. Finally, DPO implementation **requires the need for high expertise** in setting up experiments and in doing code debugging.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.5.5.5.6">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.1">NFE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2.2">CD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.3.3.3">JSD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.4.4.4">EMD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.5.5.5.5">Time (s) <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.5.6.1.1">LiDiff <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.11447v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.5.6.1.2">50</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.5.6.1.3">0.434</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.5.6.1.4">0.444</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.5.6.1.5" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T2.5.5.6.1.5.1" style="background-color:#FF9999;">22.15</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.5.6.1.6">17.75</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.5.7.2.1">LiDiff (Refined) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.11447v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T2.5.5.7.2.2">50</th>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.7.2.3" style="background-color:#FFCC99;"><span class="ltx_text" id="S4.T2.5.5.7.2.3.1" style="background-color:#FFCC99;">0.375</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.7.2.4">0.416</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.7.2.5" style="background-color:#FFCC99;"><span class="ltx_text" id="S4.T2.5.5.7.2.5.1" style="background-color:#FFCC99;">23.16</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.7.2.6">17.87</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.5.8.3.1">LiDiff <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.11447v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T2.5.5.8.3.2">8</th>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.8.3.3">0.447</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.8.3.4">0.432</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.8.3.5">24.90</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.8.3.6">3.35</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.5.9.4.1">LiDiff (Refined) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.11447v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T2.5.5.9.4.2">8</th>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.9.4.3" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T2.5.5.9.4.3.1" style="background-color:#FFFF99;">0.411</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.9.4.4" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T2.5.5.9.4.4.1" style="background-color:#FFFF99;">0.406</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.9.4.5">25.74</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.9.4.6">3.48</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.5.10.5.1">Distillation-DPO (Refined)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.5.10.5.2">8</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.5.10.5.3" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T2.5.5.10.5.3.1" style="background-color:#FF9999;">0.354</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.5.10.5.4" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T2.5.5.10.5.4.1" style="background-color:#FF9999;">0.387</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.5.10.5.5" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T2.5.5.10.5.5.1" style="background-color:#FFFF99;">23.66</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.5.10.5.6">3.38</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.5.11.6.1">Distillation-DPO (Refined)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T2.5.5.11.6.2">4</th>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.11.6.3">0.429</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.11.6.4">0.413</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.11.6.5">24.24</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.11.6.6" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T2.5.5.11.6.6.1" style="background-color:#FFFF99;">1.84</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.5.12.7.1">Distillation-DPO (Refined)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T2.5.5.12.7.2">2</th>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.12.7.3">0.475</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.12.7.4" style="background-color:#FFCC99;"><span class="ltx_text" id="S4.T2.5.5.12.7.4.1" style="background-color:#FFCC99;">0.398</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.12.7.5">25.30</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.12.7.6" style="background-color:#FFCC99;"><span class="ltx_text" id="S4.T2.5.5.12.7.6.1" style="background-color:#FFCC99;">1.08</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.13.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.5.5.13.8.1">Distillation-DPO (Refined)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="S4.T2.5.5.13.8.2">1</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.5.13.8.3">0.645</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.5.13.8.4">0.430</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.5.13.8.5">28.11</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.5.13.8.6" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T2.5.5.13.8.6.1" style="background-color:#FF9999;">0.69</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of the Distillation-DPO model on the SemanticKITTI dataset using different numbers of inference steps.  It shows how the model's performance (measured by Chamfer Distance (CD), Jensen-Shannon Divergence (JSD), Earth Mover's Distance (EMD), and completion time) varies as the number of inference steps is reduced from 50 to 1.  This allows for an analysis of the trade-off between computational speed and accuracy.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison results of different inference steps on the SemanticKITTI dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.3.3.4">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1">CD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2">JSD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3">EMD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.4.4.1">
<math alttext="\lambda=1.1" class="ltx_Math" display="inline" id="S4.T3.4.4.1.m1.1"><semantics id="S4.T3.4.4.1.m1.1a"><mrow id="S4.T3.4.4.1.m1.1.1" xref="S4.T3.4.4.1.m1.1.1.cmml"><mi id="S4.T3.4.4.1.m1.1.1.2" xref="S4.T3.4.4.1.m1.1.1.2.cmml">λ</mi><mo id="S4.T3.4.4.1.m1.1.1.1" xref="S4.T3.4.4.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.4.4.1.m1.1.1.3" xref="S4.T3.4.4.1.m1.1.1.3.cmml">1.1</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.1.m1.1b"><apply id="S4.T3.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.1.m1.1.1"><eq id="S4.T3.4.4.1.m1.1.1.1.cmml" xref="S4.T3.4.4.1.m1.1.1.1"></eq><ci id="S4.T3.4.4.1.m1.1.1.2.cmml" xref="S4.T3.4.4.1.m1.1.1.2">𝜆</ci><cn id="S4.T3.4.4.1.m1.1.1.3.cmml" type="float" xref="S4.T3.4.4.1.m1.1.1.3">1.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.1.m1.1c">\lambda=1.1</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.1.m1.1d">italic_λ = 1.1</annotation></semantics></math> (ours)</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.4.4.2" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T3.4.4.2.1" style="background-color:#FF9999;">0.354</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.4.4.3" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T3.4.4.3.1" style="background-color:#FF9999;">0.387</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.4.4.4">23.66</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.5.1"><math alttext="\lambda=1.05" class="ltx_Math" display="inline" id="S4.T3.5.5.1.m1.1"><semantics id="S4.T3.5.5.1.m1.1a"><mrow id="S4.T3.5.5.1.m1.1.1" xref="S4.T3.5.5.1.m1.1.1.cmml"><mi id="S4.T3.5.5.1.m1.1.1.2" xref="S4.T3.5.5.1.m1.1.1.2.cmml">λ</mi><mo id="S4.T3.5.5.1.m1.1.1.1" xref="S4.T3.5.5.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.5.5.1.m1.1.1.3" xref="S4.T3.5.5.1.m1.1.1.3.cmml">1.05</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.1.m1.1b"><apply id="S4.T3.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.1.m1.1.1"><eq id="S4.T3.5.5.1.m1.1.1.1.cmml" xref="S4.T3.5.5.1.m1.1.1.1"></eq><ci id="S4.T3.5.5.1.m1.1.1.2.cmml" xref="S4.T3.5.5.1.m1.1.1.2">𝜆</ci><cn id="S4.T3.5.5.1.m1.1.1.3.cmml" type="float" xref="S4.T3.5.5.1.m1.1.1.3">1.05</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.1.m1.1c">\lambda=1.05</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.1.m1.1d">italic_λ = 1.05</annotation></semantics></math></th>
<td class="ltx_td ltx_align_right" id="S4.T3.5.5.2" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T3.5.5.2.1" style="background-color:#FFFF99;">0.418</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.5.5.3" style="background-color:#FFCC99;"><span class="ltx_text" id="S4.T3.5.5.3.1" style="background-color:#FFCC99;">0.421</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.5.5.4" style="background-color:#FFCC99;"><span class="ltx_text" id="S4.T3.5.5.4.1" style="background-color:#FFCC99;">23.48</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.6.6.1"><math alttext="\lambda=1.2" class="ltx_Math" display="inline" id="S4.T3.6.6.1.m1.1"><semantics id="S4.T3.6.6.1.m1.1a"><mrow id="S4.T3.6.6.1.m1.1.1" xref="S4.T3.6.6.1.m1.1.1.cmml"><mi id="S4.T3.6.6.1.m1.1.1.2" xref="S4.T3.6.6.1.m1.1.1.2.cmml">λ</mi><mo id="S4.T3.6.6.1.m1.1.1.1" xref="S4.T3.6.6.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.6.6.1.m1.1.1.3" xref="S4.T3.6.6.1.m1.1.1.3.cmml">1.2</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.1.m1.1b"><apply id="S4.T3.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.1.m1.1.1"><eq id="S4.T3.6.6.1.m1.1.1.1.cmml" xref="S4.T3.6.6.1.m1.1.1.1"></eq><ci id="S4.T3.6.6.1.m1.1.1.2.cmml" xref="S4.T3.6.6.1.m1.1.1.2">𝜆</ci><cn id="S4.T3.6.6.1.m1.1.1.3.cmml" type="float" xref="S4.T3.6.6.1.m1.1.1.3">1.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.1.m1.1c">\lambda=1.2</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.1.m1.1d">italic_λ = 1.2</annotation></semantics></math></th>
<td class="ltx_td ltx_align_right" id="S4.T3.6.6.2">0.421</td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.6.3">0.423</td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.6.4" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T3.6.6.4.1" style="background-color:#FF9999;">23.44</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.7.7.1"><math alttext="\lambda=1.5" class="ltx_Math" display="inline" id="S4.T3.7.7.1.m1.1"><semantics id="S4.T3.7.7.1.m1.1a"><mrow id="S4.T3.7.7.1.m1.1.1" xref="S4.T3.7.7.1.m1.1.1.cmml"><mi id="S4.T3.7.7.1.m1.1.1.2" xref="S4.T3.7.7.1.m1.1.1.2.cmml">λ</mi><mo id="S4.T3.7.7.1.m1.1.1.1" xref="S4.T3.7.7.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.7.7.1.m1.1.1.3" xref="S4.T3.7.7.1.m1.1.1.3.cmml">1.5</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.1.m1.1b"><apply id="S4.T3.7.7.1.m1.1.1.cmml" xref="S4.T3.7.7.1.m1.1.1"><eq id="S4.T3.7.7.1.m1.1.1.1.cmml" xref="S4.T3.7.7.1.m1.1.1.1"></eq><ci id="S4.T3.7.7.1.m1.1.1.2.cmml" xref="S4.T3.7.7.1.m1.1.1.2">𝜆</ci><cn id="S4.T3.7.7.1.m1.1.1.3.cmml" type="float" xref="S4.T3.7.7.1.m1.1.1.3">1.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.1.m1.1c">\lambda=1.5</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.1.m1.1d">italic_λ = 1.5</annotation></semantics></math></th>
<td class="ltx_td ltx_align_right" id="S4.T3.7.7.2" style="background-color:#FFCC99;"><span class="ltx_text" id="S4.T3.7.7.2.1" style="background-color:#FFCC99;">0.409</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.7.3" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T3.7.7.3.1" style="background-color:#FFFF99;">0.422</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.7.4" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T3.7.7.4.1" style="background-color:#FFFF99;">23.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.8.8.1"><math alttext="\lambda=2.0" class="ltx_Math" display="inline" id="S4.T3.8.8.1.m1.1"><semantics id="S4.T3.8.8.1.m1.1a"><mrow id="S4.T3.8.8.1.m1.1.1" xref="S4.T3.8.8.1.m1.1.1.cmml"><mi id="S4.T3.8.8.1.m1.1.1.2" xref="S4.T3.8.8.1.m1.1.1.2.cmml">λ</mi><mo id="S4.T3.8.8.1.m1.1.1.1" xref="S4.T3.8.8.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.8.8.1.m1.1.1.3" xref="S4.T3.8.8.1.m1.1.1.3.cmml">2.0</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.1.m1.1b"><apply id="S4.T3.8.8.1.m1.1.1.cmml" xref="S4.T3.8.8.1.m1.1.1"><eq id="S4.T3.8.8.1.m1.1.1.1.cmml" xref="S4.T3.8.8.1.m1.1.1.1"></eq><ci id="S4.T3.8.8.1.m1.1.1.2.cmml" xref="S4.T3.8.8.1.m1.1.1.2">𝜆</ci><cn id="S4.T3.8.8.1.m1.1.1.3.cmml" type="float" xref="S4.T3.8.8.1.m1.1.1.3">2.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.1.m1.1c">\lambda=2.0</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.1.m1.1d">italic_λ = 2.0</annotation></semantics></math></th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.8.8.2">0.427</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.8.8.3">0.432</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.8.8.4">23.82</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of the Distillation-DPO model on the SemanticKITTI dataset using different values for the parameter λ (lambda).  Lambda controls the initial noise scale during scene completion. The table shows how changes in lambda affect the model's performance metrics (Chamfer Distance (CD), Jensen-Shannon Divergence (JSD), and Earth Mover's Distance (EMD)).  All results shown have undergone a refinement process to improve their quality.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison results of different λ𝜆\lambdaitalic_λ value SemanticKITTI dataset. All results have been refined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.3.3.4">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1">CD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2">JSD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3">EMD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.6.1.1">LiDiff <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.11447v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.5.6.1.2">0.375</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.5.6.1.3">0.416</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.5.6.1.4">23.16</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.4.4.1">LiDiff<sup class="ltx_sup" id="S4.T4.4.4.1.1">∗</sup>
</th>
<td class="ltx_td ltx_align_right" id="S4.T4.4.4.2">0.368</td>
<td class="ltx_td ltx_align_right" id="S4.T4.4.4.3">0.401</td>
<td class="ltx_td ltx_align_right" id="S4.T4.4.4.4" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T4.4.4.4.1" style="background-color:#FF9999;">22.69</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.7.2.1">Distillation-DPO</th>
<td class="ltx_td ltx_align_right" id="S4.T4.5.7.2.2">0.354</td>
<td class="ltx_td ltx_align_right" id="S4.T4.5.7.2.3">0.387</td>
<td class="ltx_td ltx_align_right" id="S4.T4.5.7.2.4">23.66</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.5.5.1">Distillation-DPO<sup class="ltx_sup" id="S4.T4.5.5.1.1">∗</sup>
</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T4.5.5.2" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T4.5.5.2.1" style="background-color:#FF9999;">0.343</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T4.5.5.3" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T4.5.5.3.1" style="background-color:#FF9999;">0.385</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T4.5.5.4">23.53</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of the Distillation-DPO model when trained using different teacher models.  The first row shows the results using the original LiDiff model as the teacher. The second row shows the results of using a refined LiDiff model (LiDiff*), which has been improved using Diffusion-DPO. The third row shows results from training Distillation-DPO using the original LiDiff model as a teacher. The fourth row shows the results of training Distillation-DPO with the improved LiDiff* model as the teacher.  The table demonstrates that using a stronger teacher model (one that has been improved by Diffusion-DPO) leads to improved performance of the student model (Distillation-DPO).  All results presented have been refined.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison results of using different teacher models. LiDiff∗ represents the LiDiff model refined with Diffusion-DPO and it enjoys boosted performance. Distillation-DPO∗ represents the Distillation-DPO trained with LiDiff∗. With a stronger teacher, the distillated student also have better performance. All results have been refined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.3.3.4">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1">CD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.2.2">JSD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.m1.1.1" stretchy="false" xref="S4.T5.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.3">EMD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.m1.1a"><mo id="S4.T5.3.3.3.m1.1.1" stretchy="false" xref="S4.T5.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.3.4.1.1">Distillation-DPO (CD)</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.4.1.2" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T5.3.4.1.2.1" style="background-color:#FF9999;">0.354</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.4.1.3" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T5.3.4.1.3.1" style="background-color:#FF9999;">0.387</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.4.1.4" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T5.3.4.1.4.1" style="background-color:#FF9999;">23.66</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.3.5.2.1">Distillation-DPO (JSD)</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T5.3.5.2.2">0.444</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T5.3.5.2.3">0.445</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T5.3.5.2.4">24.82</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the results obtained using different metrics for determining the winning sample (G<sup>w</sup><sub>0</sub>) and losing sample (G<sup>l</sup><sub>0</sub>) in the Distillation-DPO method. It shows the Chamfer Distance (CD), Jensen-Shannon Divergence (JSD), and Earth Mover's Distance (EMD) for both samples when using different metrics in the Distillation-DPO process.  The values presented are refined, meaning the results have undergone post-processing optimization.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison results of using different metrics to determine 𝒢0wsuperscriptsubscript𝒢0𝑤\mathcal{G}_{0}^{w}caligraphic_G start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_w end_POSTSUPERSCRIPT and 𝒢0lsuperscriptsubscript𝒢0𝑙\mathcal{G}_{0}^{l}caligraphic_G start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_l end_POSTSUPERSCRIPT. All results have been refined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T6.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T6.3.3.4">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1">CD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.m1.1a"><mo id="S4.T6.1.1.1.m1.1.1" stretchy="false" xref="S4.T6.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.m1.1b"><ci id="S4.T6.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.2.2.2">JSD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.2.2.2.m1.1"><semantics id="S4.T6.2.2.2.m1.1a"><mo id="S4.T6.2.2.2.m1.1.1" stretchy="false" xref="S4.T6.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.m1.1b"><ci id="S4.T6.2.2.2.m1.1.1.cmml" xref="S4.T6.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.3.3.3">EMD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.3.3.3.m1.1"><semantics id="S4.T6.3.3.3.m1.1a"><mo id="S4.T6.3.3.3.m1.1.1" stretchy="false" xref="S4.T6.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.3.3.3.m1.1b"><ci id="S4.T6.3.3.3.m1.1.1.cmml" xref="S4.T6.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.3.4.1.1">LiDiff <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.11447v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.3.4.1.2" style="background-color:#FFCC99;"><span class="ltx_text" id="S4.T6.3.4.1.2.1" style="background-color:#FFCC99;">0.375</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.3.4.1.3" style="background-color:#FFCC99;"><span class="ltx_text" id="S4.T6.3.4.1.3.1" style="background-color:#FFCC99;">0.416</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.3.4.1.4" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T6.3.4.1.4.1" style="background-color:#FF9999;">23.16</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.3.5.2.1">Score Distillation</th>
<td class="ltx_td ltx_align_right" id="S4.T6.3.5.2.2" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T6.3.5.2.2.1" style="background-color:#FFFF99;">0.419</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.3.5.2.3" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T6.3.5.2.3.1" style="background-color:#FFFF99;">0.430</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.3.5.2.4" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T6.3.5.2.4.1" style="background-color:#FFFF99;">24.61</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T6.3.6.3.1">Distillation-DPO</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T6.3.6.3.2" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T6.3.6.3.2.1" style="background-color:#FF9999;">0.354</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T6.3.6.3.3" style="background-color:#FF9999;"><span class="ltx_text" id="S4.T6.3.6.3.3.1" style="background-color:#FF9999;">0.387</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T6.3.6.3.4" style="background-color:#FFCC99;"><span class="ltx_text" id="S4.T6.3.6.3.4.1" style="background-color:#FFCC99;">23.66</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comparison of the performance of Distillation-DPO against a traditional score distillation method for LiDAR scene completion.  The comparison focuses on three key metrics: Chamfer Distance (CD), Jensen-Shannon Divergence (JSD), and Earth Mover's Distance (EMD).  All results shown in the table have undergone a refinement process to ensure accuracy and consistency. The table aims to demonstrate the superior performance of the Distillation-DPO approach in terms of both speed and accuracy in completing LiDAR scenes.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison between Distillation-DPO and traditional score distillation. All results have been refined.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.11447/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11447/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11447/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11447/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11447/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11447/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11447/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11447/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11447/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11447/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}