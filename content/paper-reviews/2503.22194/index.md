---
title: "ORIGEN: Zero-Shot 3D Orientation Grounding in Text-to-Image Generation"
summary: "ORIGEN: First zero-shot 3D orientation grounding in text-to-image generation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 KAIST",]
showSummary: true
date: 2025-03-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.22194 {{< /keyword >}}
{{< keyword icon="writer" >}} Yunhong Min et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-31 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.22194" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.22194" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.22194/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing spatial grounding in image generation is limited to 2D, lacking 3D orientation control. Existing 3D methods are limited to synthetic data, lack realism, or handle only single objects with restricted viewpoints. These methods also struggle with multi-object scenarios. Furthermore, accurate real-world training data with per-object orientation annotations is scarce, hindering supervised learning approaches.



ORIGEN tackles these issues with a **zero-shot method for 3D orientation grounding** in text-to-image generation using reward-guided sampling. By leveraging Langevin dynamics, it balances reward maximization with realism, avoiding local optima. The approach is enhanced with adaptive time rescaling for faster convergence and is implemented in a method that can be done with a single line of code. Experiments demonstrate superior performance compared to existing methods, including multi-object handling.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces ORIGEN, the first zero-shot method for 3D orientation grounding in text-to-image generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents a reward-guided sampling approach using Langevin dynamics for balancing reward maximization and realism. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Achieves superior 3D orientation grounding compared to existing methods, demonstrated through quantitative metrics and user studies. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research pioneers **3D orientation grounding** in image generation, a leap beyond existing 2D spatial control methods. It offers researchers a new tool for precise image manipulation, fostering advancements in fields like robotics, virtual reality, and content creation where **3D spatial understanding** is crucial.

------
#### Visual Insights



![](https://arxiv.org/html/2503.22194/extracted/6317238/figures/quali/userstudy/initial.jpg)

> 🔼 This figure showcases the results of ORIGEN, a novel zero-shot method for 3D orientation grounding in text-to-image generation.  It demonstrates ORIGEN's ability to generate high-quality images of multiple objects from diverse categories, accurately aligning the objects' orientations with user-specified conditions.  The colored arrows in the images visually represent these specified orientations, highlighting the precision of ORIGEN's control over 3D object placement.
> <details>
> <summary>read the caption</summary>
> Figure 1: 3D orientaion-grounded text-to-image generation results of Origen. We present Origen, the first zero-shot method for 3D orientation grounding in text-to-image generation across multiple objects and diverse categories. Origen generates high-quality images that are accurately aligned with the grounding orientation conditions, indicated by the colored arrows, and the input text prompts.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.F2.2">
<tr class="ltx_tr" id="S3.F2.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.F2.1.1.2" style="padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.F2.1.1.2.1">
<span class="ltx_p" id="S3.F2.1.1.2.1.1" style="width:12.6pt;"></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S3.F2.1.1.3" style="padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.F2.1.1.3.1">
<span class="ltx_p" id="S3.F2.1.1.3.1.1"><span class="ltx_text" id="S3.F2.1.1.3.1.1.1" style="font-size:70%;">Ground Truth</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S3.F2.1.1.4" style="padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.F2.1.1.4.1">
<span class="ltx_p" id="S3.F2.1.1.4.1.1"><span class="ltx_text" id="S3.F2.1.1.4.1.1.1" style="font-size:70%;">ReNO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.F2.1.1.4.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a><span class="ltx_text" id="S3.F2.1.1.4.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S3.F2.1.1.1" style="padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.F2.1.1.1.1">
<span class="ltx_p" id="S3.F2.1.1.1.1.1"><math alttext="\textsc{Origen}^{*}" class="ltx_Math" display="inline" id="S3.F2.1.1.1.1.1.m1.1"><semantics id="S3.F2.1.1.1.1.1.m1.1a"><msup id="S3.F2.1.1.1.1.1.m1.1.1" xref="S3.F2.1.1.1.1.1.m1.1.1.cmml"><mtext class="ltx_font_smallcaps" id="S3.F2.1.1.1.1.1.m1.1.1.2" mathsize="70%" xref="S3.F2.1.1.1.1.1.m1.1.1.2a.cmml">Origen</mtext><mo id="S3.F2.1.1.1.1.1.m1.1.1.3" mathsize="70%" xref="S3.F2.1.1.1.1.1.m1.1.1.3.cmml">∗</mo></msup><annotation-xml encoding="MathML-Content" id="S3.F2.1.1.1.1.1.m1.1b"><apply id="S3.F2.1.1.1.1.1.m1.1.1.cmml" xref="S3.F2.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.F2.1.1.1.1.1.m1.1.1.1.cmml" xref="S3.F2.1.1.1.1.1.m1.1.1">superscript</csymbol><ci id="S3.F2.1.1.1.1.1.m1.1.1.2a.cmml" xref="S3.F2.1.1.1.1.1.m1.1.1.2"><mtext class="ltx_font_smallcaps" id="S3.F2.1.1.1.1.1.m1.1.1.2.cmml" mathsize="70%" xref="S3.F2.1.1.1.1.1.m1.1.1.2">Origen</mtext></ci><times id="S3.F2.1.1.1.1.1.m1.1.1.3.cmml" xref="S3.F2.1.1.1.1.1.m1.1.1.3"></times></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.F2.1.1.1.1.1.m1.1c">\textsc{Origen}^{*}</annotation><annotation encoding="application/x-llamapun" id="S3.F2.1.1.1.1.1.m1.1d">Origen start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S3.F2.1.1.5" style="padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.F2.1.1.5.1">
<span class="ltx_p" id="S3.F2.1.1.5.1.1"><span class="ltx_text ltx_font_smallcaps" id="S3.F2.1.1.5.1.1.1" style="font-size:70%;">Origen</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.F2.2.2">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_align_top" colspan="5" id="S3.F2.2.2.1" style="padding:-3.5pt 0.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="281" id="S3.F2.2.2.1.g1" src="extracted/6317238/figures/toy_exp_v2.jpg" width="598"/></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different methods for 3D orientation grounded image generation.  The methods are evaluated using several metrics, including accuracy at different angular tolerances (Acc.@22.5°, Acc.@5°), absolute error, CLIP score, VQA score, and PickScore, which assess the alignment of generated images with specified 3D orientations and textual descriptions.  The table allows for a direct comparison of performance across various techniques, highlighting the best and second-best performers for each metric.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparisons on 3D orientation grounded image generation. Best and second-best results are highlighted in bold and underlined, respectively.
> </details>





### In-depth insights


#### 3D Orientation
**3D orientation** in image generation is underexplored, with existing methods often limited to **relative control**, **synthetic data**, or **single objects**. Challenges include the lack of real-world training data with accurate per-object annotations. Current approaches struggle to balance orientation grounding with realism, often getting stuck in local optima or deviating from the prior latent distribution. A promising direction involves **reward-guided sampling** that incorporates stochasticity to avoid local optima and maintain a balance between reward maximization and adherence to the prior latent distribution. This could potentially enable more robust and generalizable control over 3D orientation in generated images.

#### Reward-Guided SDE
**Reward-Guided Stochastic Differential Equations (SDEs)** represent a powerful paradigm for generative modeling by infusing external guidance into the sampling process. Unlike traditional SDEs that rely solely on the inherent dynamics for generation, reward-guided approaches leverage a **reward function** to shape the trajectory of the generated sample towards desired attributes or properties. This reward function acts as a driving force, influencing the SDE's drift term to favor regions of the data space that align with the defined objectives. The benefit lies in the ability to exert explicit control over the generated output, enabling the generation of samples that are not only realistic but also tailored to specific criteria. However, challenges arise in designing effective reward functions that are well-behaved and capable of accurately capturing the desired attributes. Careful consideration must be given to avoid reward hacking or unintended consequences, ensuring that the guidance leads to genuine improvement rather than artificial manipulation of the generated output.

#### Adaptive Scaling
Adaptive scaling, in the context of image generation, likely refers to a dynamic adjustment of parameters, such as step size or learning rate, during the generation process. **This adjustment is crucial for optimizing both the quality and efficiency of the generated images**. Without adaptive scaling, the generation process might suffer from slow convergence or get stuck in local optima. **Implementing such scaling mechanisms, especially through reward functions, enables the system to intelligently navigate the latent space**, ensuring generated images adhere to both the input text prompt and the orientation conditions. Furthermore, **the integration of time rescaling ensures a balance between convergence speed and result accuracy**, proving advantageous in achieving desired outcomes.

#### Zero-Shot ORIGEN
The concept of a "Zero-Shot ORIGEN" implies a significant advancement in text-to-image generation. **Zero-shot learning** suggests the model can generate images conditioned on 3D orientation from text descriptions **without explicit training on paired data of text and 3D orientations.** This tackles a major challenge: the scarcity of datasets with diverse, real-world images annotated with accurate 3D orientation information. ORIGEN leverages pre-trained models, implying a modular design. It uses a **foundational discriminative model for 3D orientation estimation** and a **text-to-image generative model.** This allows the model to infer the orientation from the generated image and guide the generation process. The zero-shot capability offers immense flexibility, allowing users to control the 3D orientation of objects in generated scenes through textual prompts alone. This facilitates greater control and customization in image generation, creating possibilities for applications where precise 3D orientation control is crucial.

#### MS-COCO Dataset
The authors leverage the MS-COCO dataset, a widely recognized resource, as the foundation for constructing three novel benchmarks: MS-COCO-Single, MS-COCO-NView, and MS-COCO-Multi. Recognizing the absence of existing datasets specifically tailored for evaluating 3D orientation grounding in text-to-image generation, they curate these benchmarks. This proactive approach addresses a critical gap in the field, enabling quantitative assessments of novel methods like ORIGEN. **MS-COCO's rich set of images, captions, and object annotations provides a strong base for this challenging task.** This strategy allows to compare ORIGEN to prior methods, particularly in the single-object orientation context. The deliberate choice of MS-COCO ensures that the evaluation is grounded in real-world data, enhancing the practical relevance of the findings.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.22194/extracted/6317238/figures/quali/userstudy/problem.jpg)

> 🔼 This figure displays a comparison of different methods for sampling latent vectors in a generative model, aiming to maximize a reward function while maintaining realism.  The top row visualizes the latent space samples (red points), and the bottom row shows the corresponding generated data samples (blue points) in the image space. The four columns illustrate: (1) the ground truth target distribution, representing the ideal outcome; (2) the results obtained using the ReNO [16] method; (3) the results from the proposed method with uniform time scaling; and (4) the results from the proposed method with reward-adaptive time rescaling. The figure demonstrates that the proposed method with reward-adaptive time rescaling most closely approximates the ideal target distribution.
> <details>
> <summary>read the caption</summary>
> Figure 2: Toy experiment results. The top row shows latent space samples (red), while the bottom row shows the corresponding data space samples (blue). From left to right, each column represents: (1) the ground truth target distribution from Eq. (2); (2) results of ReNO [16]; (3) results of ours with uniform time scaling; and (4) results of ours with reward-adaptive time rescaling.
> </details>



![](https://arxiv.org/html/2503.22194/extracted/6317238/figures/gplot_small.jpg)

> 🔼 Figure 3 presents a qualitative comparison of image generation results on the MS-COCO-Single benchmark dataset.  Three methods are compared: Zero-1-to-3 [46], C3DW [11], and the proposed ORIGEN model. The figure shows that ORIGEN generates more realistic images that better align with the specified object orientations than the existing methods.  The specified object orientation is visually indicated by colored arrows overlaid on each generated image.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative comparisons on MS-COCO-Single benchmark (Sec. 4.3). Compared to the existing orientation-to-image models [11, 46], Origen generates the most realistic images, which also best align with the grounding conditions, indicated by the overlapped arrow in each image.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.F3.4">
<tr class="ltx_tr" id="S4.F3.4.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S4.F3.4.5.1" style="padding:-3.5pt 1.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F3.4.5.1.1">
<span class="ltx_p" id="S4.F3.4.5.1.1.1"><span class="ltx_text" id="S4.F3.4.5.1.1.1.1" style="font-size:70%;">Orientation</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S4.F3.4.5.2" style="padding:-3.5pt 1.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F3.4.5.2.1">
<span class="ltx_p" id="S4.F3.4.5.2.1.1"><span class="ltx_text" id="S4.F3.4.5.2.1.1.1" style="font-size:70%;">Zero-1-to-3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F3.4.5.2.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a><span class="ltx_text" id="S4.F3.4.5.2.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S4.F3.4.5.3" style="padding:-3.5pt 1.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F3.4.5.3.1">
<span class="ltx_p" id="S4.F3.4.5.3.1.1"><span class="ltx_text" id="S4.F3.4.5.3.1.1.1" style="font-size:70%;">C3DW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F3.4.5.3.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="S4.F3.4.5.3.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S4.F3.4.5.4" style="padding:-3.5pt 1.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F3.4.5.4.1">
<span class="ltx_p" id="S4.F3.4.5.4.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.F3.4.5.4.1.1.1" style="font-size:70%;">Origen<span class="ltx_text ltx_font_upright" id="S4.F3.4.5.4.1.1.1.1"> (Ours)</span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S4.F3.4.5.5" style="padding:-3.5pt 1.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F3.4.5.5.1">
<span class="ltx_p" id="S4.F3.4.5.5.1.1"><span class="ltx_text" id="S4.F3.4.5.5.1.1.1" style="font-size:70%;">Orientation</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S4.F3.4.5.6" style="padding:-3.5pt 1.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F3.4.5.6.1">
<span class="ltx_p" id="S4.F3.4.5.6.1.1"><span class="ltx_text" id="S4.F3.4.5.6.1.1.1" style="font-size:70%;">Zero-1-to-3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F3.4.5.6.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a><span class="ltx_text" id="S4.F3.4.5.6.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S4.F3.4.5.7" style="padding:-3.5pt 1.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F3.4.5.7.1">
<span class="ltx_p" id="S4.F3.4.5.7.1.1"><span class="ltx_text" id="S4.F3.4.5.7.1.1.1" style="font-size:70%;">C3DW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F3.4.5.7.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="S4.F3.4.5.7.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S4.F3.4.5.8" style="padding:-3.5pt 1.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F3.4.5.8.1">
<span class="ltx_p" id="S4.F3.4.5.8.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.F3.4.5.8.1.1.1" style="font-size:70%;">Origen<span class="ltx_text ltx_font_upright" id="S4.F3.4.5.8.1.1.1.1"> (Ours)</span></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.F3.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="4" id="S4.F3.1.1.1" style="padding:-3.5pt 1.4pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="88" id="S4.F3.1.1.1.g1" src="extracted/6317238/figures/quali/benchmark/0162.jpg" width="299"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="4" id="S4.F3.2.2.2" style="padding:-3.5pt 1.4pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="88" id="S4.F3.2.2.2.g1" src="extracted/6317238/figures/quali/benchmark/0693.jpg" width="299"/></td>
</tr>
<tr class="ltx_tr" id="S4.F3.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="4" id="S4.F3.3.3.1" style="padding:-3.5pt 1.4pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="88" id="S4.F3.3.3.1.g1" src="extracted/6317238/figures/quali/benchmark/0576.jpg" width="299"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="4" id="S4.F3.4.4.2" style="padding:-3.5pt 1.4pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="88" id="S4.F3.4.4.2.g1" src="extracted/6317238/figures/quali/benchmark/0940.jpg" width="299"/></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for 3D orientation grounding in text-to-image generation, specifically on the MS-COCO-Single benchmark (described in Section 4.3 of the paper).  It compares ORIGEN (the proposed method) with several baselines, including other methods for orientation-conditioned image generation and training-free guided generation methods.  The comparison uses multiple metrics, evaluating both the accuracy of the orientation grounding (Azimuth Accuracy @ 22.5°, Azimuth Absolute Error) and the overall quality of the generated images (CLIP score, VQA score, PickScore).  The table also includes results for ORIGEN* (without reward-adaptive time rescaling) to highlight the impact of this technique on performance.
> <details>
> <summary>read the caption</summary>
> (a)  Comparisons on MS-COCO-Single (Sec. 4.3). Origen∗ denotes ours without reward-adaptive time rescaling, where Origen represents our full method.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.F4.3">
<tr class="ltx_tr" id="S4.F4.3.4">
<td class="ltx_td ltx_align_justify" id="S4.F4.3.4.1" style="padding-left:2.1pt;padding-right:2.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F4.3.4.1.1">
<span class="ltx_p" id="S4.F4.3.4.1.1.1"><span class="ltx_text" id="S4.F4.3.4.1.1.1.1" style="font-size:70%;">Orientation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.F4.3.4.2" style="padding-left:2.1pt;padding-right:2.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F4.3.4.2.1">
<span class="ltx_p" id="S4.F4.3.4.2.1.1"><span class="ltx_text" id="S4.F4.3.4.2.1.1.1" style="font-size:70%;">SD-Turbo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F4.3.4.2.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a><span class="ltx_text" id="S4.F4.3.4.2.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.F4.3.4.3" style="padding-left:2.1pt;padding-right:2.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F4.3.4.3.1">
<span class="ltx_p" id="S4.F4.3.4.3.1.1"><span class="ltx_text" id="S4.F4.3.4.3.1.1.1" style="font-size:70%;">SDXL-Turbo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F4.3.4.3.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a><span class="ltx_text" id="S4.F4.3.4.3.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.F4.3.4.4" style="padding-left:2.1pt;padding-right:2.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F4.3.4.4.1">
<span class="ltx_p" id="S4.F4.3.4.4.1.1"><span class="ltx_text" id="S4.F4.3.4.4.1.1.1" style="font-size:70%;">FLUX-Schnell </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F4.3.4.4.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="S4.F4.3.4.4.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.F4.3.4.5" style="padding-left:2.1pt;padding-right:2.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F4.3.4.5.1">
<span class="ltx_p" id="S4.F4.3.4.5.1.1"><span class="ltx_text" id="S4.F4.3.4.5.1.1.1" style="font-size:70%;">Zero-1-to-3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F4.3.4.5.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a><span class="ltx_text" id="S4.F4.3.4.5.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.F4.3.4.6" style="padding-left:2.1pt;padding-right:2.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F4.3.4.6.1">
<span class="ltx_p" id="S4.F4.3.4.6.1.1"><span class="ltx_text" id="S4.F4.3.4.6.1.1.1" style="font-size:70%;">C3DW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F4.3.4.6.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="S4.F4.3.4.6.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.F4.3.4.7" style="padding-left:2.1pt;padding-right:2.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F4.3.4.7.1">
<span class="ltx_p" id="S4.F4.3.4.7.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.F4.3.4.7.1.1.1" style="font-size:70%;">Origen<span class="ltx_text ltx_font_upright" id="S4.F4.3.4.7.1.1.1.1"> (Ours)</span></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.F4.1.1">
<td class="ltx_td ltx_align_center" colspan="7" id="S4.F4.1.1.1" style="padding-left:2.1pt;padding-right:2.1pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="116" id="S4.F4.1.1.1.g1" src="extracted/6317238/figures/quali/3view/left_0028.jpg" width="685"/></td>
</tr>
<tr class="ltx_tr" id="S4.F4.2.2">
<td class="ltx_td ltx_align_center" colspan="7" id="S4.F4.2.2.1" style="padding-left:2.1pt;padding-right:2.1pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="116" id="S4.F4.2.2.1.g1" src="extracted/6317238/figures/quali/3view/front_0083.jpg" width="685"/></td>
</tr>
<tr class="ltx_tr" id="S4.F4.3.3">
<td class="ltx_td ltx_align_center" colspan="7" id="S4.F4.3.3.1" style="padding-left:2.1pt;padding-right:2.1pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="116" id="S4.F4.3.3.1.g1" src="extracted/6317238/figures/quali/3view/back_0248.jpg" width="685"/></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 1b presents a quantitative comparison of different methods for 3D orientation grounding in text-to-image generation on the MS-COCO-NView benchmark.  The benchmark uses images with single objects but controlled viewpoints (front, left, right, and back). The table compares ORIGEN to several baselines, including other orientation-conditioned image generation methods and training-free guided generation methods, across multiple metrics such as orientation alignment accuracy (Acc.@22.5° and absolute error), and text-to-image alignment (CLIP score, VQA score, and PickScore).  This allows for a comprehensive evaluation of ORIGEN's performance in various aspects.
> <details>
> <summary>read the caption</summary>
> (b)  Comparisons on MS-COCO-NView (Sec. 4.4).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.F5.8">
<tr class="ltx_tr" id="S4.F5.8.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S4.F5.8.9.1" style="padding:-3.5pt 1.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F5.8.9.1.1">
<span class="ltx_p" id="S4.F5.8.9.1.1.1"><span class="ltx_text" id="S4.F5.8.9.1.1.1.1" style="font-size:70%;">Orientation</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S4.F5.8.9.2" style="padding:-3.5pt 1.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F5.8.9.2.1">
<span class="ltx_p" id="S4.F5.8.9.2.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.F5.8.9.2.1.1.1" style="font-size:70%;">Origen<span class="ltx_text ltx_font_upright" id="S4.F5.8.9.2.1.1.1.1"> (Ours)</span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S4.F5.8.9.3" style="padding:-3.5pt 1.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F5.8.9.3.1">
<span class="ltx_p" id="S4.F5.8.9.3.1.1"><span class="ltx_text" id="S4.F5.8.9.3.1.1.1" style="font-size:70%;">Orientation</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S4.F5.8.9.4" style="padding:-3.5pt 1.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F5.8.9.4.1">
<span class="ltx_p" id="S4.F5.8.9.4.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.F5.8.9.4.1.1.1" style="font-size:70%;">Origen<span class="ltx_text ltx_font_upright" id="S4.F5.8.9.4.1.1.1.1"> (Ours)</span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S4.F5.8.9.5" style="padding:-3.5pt 1.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F5.8.9.5.1">
<span class="ltx_p" id="S4.F5.8.9.5.1.1"><span class="ltx_text" id="S4.F5.8.9.5.1.1.1" style="font-size:70%;">Orientation</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S4.F5.8.9.6" style="padding:-3.5pt 1.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F5.8.9.6.1">
<span class="ltx_p" id="S4.F5.8.9.6.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.F5.8.9.6.1.1.1" style="font-size:70%;">Origen<span class="ltx_text ltx_font_upright" id="S4.F5.8.9.6.1.1.1.1"> (Ours)</span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S4.F5.8.9.7" style="padding:-3.5pt 1.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F5.8.9.7.1">
<span class="ltx_p" id="S4.F5.8.9.7.1.1"><span class="ltx_text" id="S4.F5.8.9.7.1.1.1" style="font-size:70%;">Orientation</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify" id="S4.F5.8.9.8" style="padding:-3.5pt 1.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F5.8.9.8.1">
<span class="ltx_p" id="S4.F5.8.9.8.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.F5.8.9.8.1.1.1" style="font-size:70%;">Origen<span class="ltx_text ltx_font_upright" id="S4.F5.8.9.8.1.1.1.1"> (Ours)</span></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.F5.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="2" id="S4.F5.1.1.1" style="padding:-3.5pt 1.4pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="101" id="S4.F5.1.1.1.g1" src="extracted/6317238/figures/quali/multi/0007.jpg" width="172"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="2" id="S4.F5.2.2.2" style="padding:-3.5pt 1.4pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="101" id="S4.F5.2.2.2.g1" src="extracted/6317238/figures/quali/multi/0044.jpg" width="172"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="2" id="S4.F5.3.3.3" style="padding:-3.5pt 1.4pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="101" id="S4.F5.3.3.3.g1" src="extracted/6317238/figures/quali/multi/0102.jpg" width="172"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.F5.4.4.4" style="padding:-3.5pt 1.4pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="101" id="S4.F5.4.4.4.g1" src="extracted/6317238/figures/quali/multi/0133.jpg" width="172"/></td>
</tr>
<tr class="ltx_tr" id="S4.F5.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="2" id="S4.F5.5.5.1" style="padding:-3.5pt 1.4pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="101" id="S4.F5.5.5.1.g1" src="extracted/6317238/figures/quali/multi/0151.jpg" width="172"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="2" id="S4.F5.6.6.2" style="padding:-3.5pt 1.4pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="101" id="S4.F5.6.6.2.g1" src="extracted/6317238/figures/quali/multi/0205.jpg" width="172"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="2" id="S4.F5.7.7.3" style="padding:-3.5pt 1.4pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="101" id="S4.F5.7.7.3.g1" src="extracted/6317238/figures/quali/multi/0221.jpg" width="172"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.F5.8.8.4" style="padding:-3.5pt 1.4pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="101" id="S4.F5.8.8.4.g1" src="extracted/6317238/figures/quali/multi/0261.jpg" width="172"/></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Quantitative comparison of different models on the MS-COCO-Multi benchmark focusing on 3D orientation grounding in text-to-image generation.  The table presents the performance of the ORIGEN model against other baselines in terms of orientation alignment (accuracy at 22.5 degrees and absolute error), as well as text-to-image alignment metrics (CLIP score, VQA score, and PickScore). This dataset tests the model's ability to accurately generate images of multiple objects with specified orientations.
> <details>
> <summary>read the caption</summary>
> (c)  Comparisons on MS-COCO-Multi (Sec. 4.5).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.st1.8">
<tr class="ltx_tr" id="S4.T1.st1.8.7">
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_tt" id="S4.T1.st1.8.7.1" rowspan="2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.7.1.1" style="font-size:70%;">Id</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.st1.8.7.2" rowspan="2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.7.2.1" style="font-size:70%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.st1.8.7.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.8.7.3.1" style="font-size:70%;">Orientation Alignment</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.st1.8.7.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.8.7.4.1" style="font-size:70%;">Text Alignment</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.5">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.st1.3.1.1" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st1.3.1.1.1" style="font-size:70%;">Acc.@22.5° </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.st1.3.1.1.m1.1"><semantics id="S4.T1.st1.3.1.1.m1.1a"><mo id="S4.T1.st1.3.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.st1.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st1.3.1.1.m1.1b"><ci id="S4.T1.st1.3.1.1.m1.1.1.cmml" xref="S4.T1.st1.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st1.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st1.3.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.4.2.2" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st1.4.2.2.1" style="font-size:70%;">Abs. Err. </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.st1.4.2.2.m1.1"><semantics id="S4.T1.st1.4.2.2.m1.1a"><mo id="S4.T1.st1.4.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.st1.4.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st1.4.2.2.m1.1b"><ci id="S4.T1.st1.4.2.2.m1.1.1.cmml" xref="S4.T1.st1.4.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st1.4.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st1.4.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.5.3.3" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st1.5.3.3.1" style="font-size:70%;">CLIP </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.st1.5.3.3.m1.1"><semantics id="S4.T1.st1.5.3.3.m1.1a"><mo id="S4.T1.st1.5.3.3.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.st1.5.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st1.5.3.3.m1.1b"><ci id="S4.T1.st1.5.3.3.m1.1.1.cmml" xref="S4.T1.st1.5.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st1.5.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st1.5.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.6.4.4" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st1.6.4.4.1" style="font-size:70%;">VQA </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.st1.6.4.4.m1.1"><semantics id="S4.T1.st1.6.4.4.m1.1a"><mo id="S4.T1.st1.6.4.4.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.st1.6.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st1.6.4.4.m1.1b"><ci id="S4.T1.st1.6.4.4.m1.1.1.cmml" xref="S4.T1.st1.6.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st1.6.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st1.6.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.5.5" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st1.7.5.5.1" style="font-size:70%;">PickScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.st1.7.5.5.m1.1"><semantics id="S4.T1.st1.7.5.5.m1.1a"><mo id="S4.T1.st1.7.5.5.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.st1.7.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st1.7.5.5.m1.1b"><ci id="S4.T1.st1.7.5.5.m1.1.1.cmml" xref="S4.T1.st1.7.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st1.7.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st1.7.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.8.8">
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.st1.8.8.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.8.1.1" style="font-size:70%;">1</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.st1.8.8.2" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st1.8.8.2.1" style="font-size:70%;">C3DW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.st1.8.8.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="S4.T1.st1.8.8.2.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.st1.8.8.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.8.3.1" style="font-size:70%;">0.426</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.8.8.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.8.4.1" style="font-size:70%;">64.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.8.8.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.8.5.1" style="font-size:70%;">0.220</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.8.8.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.8.6.1" style="font-size:70%;">0.439</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.8.8.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.8.7.1" style="font-size:70%;">0.197</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.8.9">
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.st1.8.9.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.9.1.1" style="font-size:70%;">2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.st1.8.9.2" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st1.8.9.2.1" style="font-size:70%;">Zero-1-to-3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.st1.8.9.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a><span class="ltx_text" id="S4.T1.st1.8.9.2.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.st1.8.9.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.9.3.1" style="font-size:70%;">0.499</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.8.9.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.9.4.1" style="font-size:70%;">59.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.8.9.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.8.9.5.1" style="font-size:70%;">0.272</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.8.9.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.9.6.1" style="font-size:70%;">0.663</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.8.9.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.9.7.1" style="font-size:70%;">0.213</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.8.10">
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.st1.8.10.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.10.1.1" style="font-size:70%;">3</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.st1.8.10.2" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st1.8.10.2.1" style="font-size:70%;">FreeDoM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.st1.8.10.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib74" title=""><span class="ltx_text" style="font-size:90%;">74</span></a><span class="ltx_text" id="S4.T1.st1.8.10.2.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.st1.8.10.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.10.3.1" style="font-size:70%;">0.741</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.8.10.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.10.4.1" style="font-size:70%;">20.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.8.10.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.10.5.1" style="font-size:70%;">0.259</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.8.10.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.10.6.1" style="font-size:70%;">0.728</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.8.10.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.8.10.7.1" style="font-size:70%;">0.225</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.8.11">
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.st1.8.11.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.11.1.1" style="font-size:70%;">4</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.st1.8.11.2" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st1.8.11.2.1" style="font-size:70%;">ReNO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.st1.8.11.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a><span class="ltx_text" id="S4.T1.st1.8.11.2.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.st1.8.11.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.11.3.1" style="font-size:70%;">0.796</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.8.11.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.11.4.1" style="font-size:70%;">20.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.8.11.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.11.5.1" style="font-size:70%;">0.247</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.8.11.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.11.6.1" style="font-size:70%;">0.663</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.8.11.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.11.7.1" style="font-size:70%;">0.212</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.8.6">
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.st1.8.6.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.6.2.1" style="font-size:70%;">5</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.st1.8.6.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.st1.8.6.1.1" style="font-size:70%;">Origen<sup class="ltx_sup" id="S4.T1.st1.8.6.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_upright" id="S4.T1.st1.8.6.1.1.1.1">∗</span></sup><span class="ltx_text ltx_font_upright" id="S4.T1.st1.8.6.1.1.2"> (Ours)</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.st1.8.6.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.st1.8.6.3.1" style="font-size:70%;">0.854</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.8.6.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.st1.8.6.4.1" style="font-size:70%;">18.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.8.6.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.st1.8.6.5.1" style="font-size:70%;">0.265</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.8.6.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.st1.8.6.6.1" style="font-size:70%;">0.732</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.8.6.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.st1.8.6.7.1" style="font-size:70%;">0.224</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.8.12">
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S4.T1.st1.8.12.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st1.8.12.1.1" style="font-size:70%;">6</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.st1.8.12.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.st1.8.12.2.1" style="font-size:70%;">Origen<span class="ltx_text ltx_font_upright" id="S4.T1.st1.8.12.2.1.1"> (Ours)</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.st1.8.12.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.8.12.3.1" style="font-size:70%;">0.871</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st1.8.12.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.8.12.4.1" style="font-size:70%;">17.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st1.8.12.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.st1.8.12.5.1" style="font-size:70%;">0.265</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st1.8.12.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.8.12.6.1" style="font-size:70%;">0.735</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st1.8.12.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.st1.8.12.7.1" style="font-size:70%;">0.224</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a user study comparing the 3D orientation grounding capabilities of ORIGEN against two baseline methods (C3DW [11] and Zero-1-to-3 [46]).  A total of 100 participants on Amazon Mechanical Turk were asked to choose the image that best matched a given text prompt and 3D orientation condition from the images generated by each method.  ORIGEN significantly outperformed the baselines, with 58.18% of participants preferring its results. The table shows the percentage of user preference for each method, broken down for 3-view and 4-view alignment scenarios.
> <details>
> <summary>read the caption</summary>
> Table 2: User Study Results. 3D orientation-grounded text-to-image generation results of Origen was preferred by 58.18% of the participants on Amazon Mechanical Turk [9], significantly outperforming the baselines [11, 46].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.st2.4">
<tr class="ltx_tr" id="S4.T1.st2.4.5">
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_tt" id="S4.T1.st2.4.5.1" rowspan="2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.5.1.1" style="font-size:70%;">Id</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.st2.4.5.2" rowspan="2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.5.2.1" style="font-size:70%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.st2.4.5.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.4.5.3.1" style="font-size:70%;">3-view Alignment</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.st2.4.5.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.4.5.4.1" style="font-size:70%;">4-view Alignment</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.4.4">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.st2.1.1.1" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st2.1.1.1.1" style="font-size:70%;">Acc.@22.5° </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.st2.1.1.1.m1.1"><semantics id="S4.T1.st2.1.1.1.m1.1a"><mo id="S4.T1.st2.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.st2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st2.1.1.1.m1.1b"><ci id="S4.T1.st2.1.1.1.m1.1.1.cmml" xref="S4.T1.st2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st2.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.2" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st2.2.2.2.1" style="font-size:70%;">Abs. Err. </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.st2.2.2.2.m1.1"><semantics id="S4.T1.st2.2.2.2.m1.1a"><mo id="S4.T1.st2.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.st2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st2.2.2.2.m1.1b"><ci id="S4.T1.st2.2.2.2.m1.1.1.cmml" xref="S4.T1.st2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.3.3.3" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st2.3.3.3.1" style="font-size:70%;">Acc.@22.5° </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.st2.3.3.3.m1.1"><semantics id="S4.T1.st2.3.3.3.m1.1a"><mo id="S4.T1.st2.3.3.3.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.st2.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st2.3.3.3.m1.1b"><ci id="S4.T1.st2.3.3.3.m1.1.1.cmml" xref="S4.T1.st2.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st2.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st2.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.4.4.4" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st2.4.4.4.1" style="font-size:70%;">Abs. Err. </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.st2.4.4.4.m1.1"><semantics id="S4.T1.st2.4.4.4.m1.1a"><mo id="S4.T1.st2.4.4.4.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.st2.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st2.4.4.4.m1.1b"><ci id="S4.T1.st2.4.4.4.m1.1.1.cmml" xref="S4.T1.st2.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st2.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st2.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.4.6">
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.st2.4.6.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.6.1.1" style="font-size:70%;">1</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.st2.4.6.2" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st2.4.6.2.1" style="font-size:70%;">SD-Turbo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.st2.4.6.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a><span class="ltx_text" id="S4.T1.st2.4.6.2.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.st2.4.6.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.6.3.1" style="font-size:70%;">0.257</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.4.6.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.6.4.1" style="font-size:70%;">75.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.4.6.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.6.5.1" style="font-size:70%;">0.244</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.4.6.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.6.6.1" style="font-size:70%;">78.47</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.4.7">
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.st2.4.7.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.7.1.1" style="font-size:70%;">2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.st2.4.7.2" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st2.4.7.2.1" style="font-size:70%;">SDXL-Turbo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.st2.4.7.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a><span class="ltx_text" id="S4.T1.st2.4.7.2.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.st2.4.7.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.7.3.1" style="font-size:70%;">0.189</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.4.7.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.7.4.1" style="font-size:70%;">78.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.4.7.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.7.5.1" style="font-size:70%;">0.196</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.4.7.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.7.6.1" style="font-size:70%;">81.88</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.4.8">
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.st2.4.8.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.8.1.1" style="font-size:70%;">3</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.st2.4.8.2" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st2.4.8.2.1" style="font-size:70%;">FLUX-Schnell </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.st2.4.8.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="S4.T1.st2.4.8.2.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.st2.4.8.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.8.3.1" style="font-size:70%;">0.312</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.4.8.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.8.4.1" style="font-size:70%;">75.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.4.8.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.st2.4.8.5.1" style="font-size:70%;">0.424</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.4.8.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.st2.4.8.6.1" style="font-size:70%;">60.26</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.4.9">
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.st2.4.9.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.9.1.1" style="font-size:70%;">4</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.st2.4.9.2" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st2.4.9.2.1" style="font-size:70%;">C3DW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.st2.4.9.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="S4.T1.st2.4.9.2.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.st2.4.9.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.st2.4.9.3.1" style="font-size:70%;">0.504</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.4.9.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.st2.4.9.4.1" style="font-size:70%;">53.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.4.9.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.9.5.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.4.9.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.9.6.1" style="font-size:70%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.4.10">
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.st2.4.10.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.10.1.1" style="font-size:70%;">5</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.st2.4.10.2" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st2.4.10.2.1" style="font-size:70%;">Zero-1-to-3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.st2.4.10.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a><span class="ltx_text" id="S4.T1.st2.4.10.2.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.st2.4.10.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.10.3.1" style="font-size:70%;">0.366</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.4.10.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.10.4.1" style="font-size:70%;">68.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.4.10.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.10.5.1" style="font-size:70%;">0.321</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.4.10.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.10.6.1" style="font-size:70%;">75.10</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.4.11">
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S4.T1.st2.4.11.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st2.4.11.1.1" style="font-size:70%;">6</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.st2.4.11.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.st2.4.11.2.1" style="font-size:70%;">Origen<span class="ltx_text ltx_font_upright" id="S4.T1.st2.4.11.2.1.1"> (Ours)</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.st2.4.11.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.4.11.3.1" style="font-size:70%;">0.824</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st2.4.11.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.4.11.4.1" style="font-size:70%;">20.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st2.4.11.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.4.11.5.1" style="font-size:70%;">0.866</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st2.4.11.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.4.11.6.1" style="font-size:70%;">17.45</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the 25 object classes used in the MS-COCO-Single dataset benchmark.  These classes represent a variety of common objects with distinct visual characteristics suitable for evaluating 3D orientation grounding in image generation. The classes were carefully selected to ensure a balance of complexity and representation of different object types.
> <details>
> <summary>read the caption</summary>
> Table A: Selected object classes in our dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.st3.5">
<tr class="ltx_tr" id="S4.T1.st3.5.6">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.st3.5.6.1" rowspan="2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T1.st3.5.6.1.1" style="font-size:70%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.st3.5.6.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st3.5.6.2.1" style="font-size:70%;">Orientation Alignment</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.st3.5.6.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st3.5.6.3.1" style="font-size:70%;">Text alignment</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st3.5.5">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.st3.1.1.1" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st3.1.1.1.1" style="font-size:70%;">Acc.@22.5° </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.st3.1.1.1.m1.1"><semantics id="S4.T1.st3.1.1.1.m1.1a"><mo id="S4.T1.st3.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.st3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st3.1.1.1.m1.1b"><ci id="S4.T1.st3.1.1.1.m1.1.1.cmml" xref="S4.T1.st3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st3.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st3.2.2.2" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st3.2.2.2.1" style="font-size:70%;">Abs. Err. </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.st3.2.2.2.m1.1"><semantics id="S4.T1.st3.2.2.2.m1.1a"><mo id="S4.T1.st3.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.st3.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st3.2.2.2.m1.1b"><ci id="S4.T1.st3.2.2.2.m1.1.1.cmml" xref="S4.T1.st3.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st3.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st3.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st3.3.3.3" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st3.3.3.3.1" style="font-size:70%;">CLIP </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.st3.3.3.3.m1.1"><semantics id="S4.T1.st3.3.3.3.m1.1a"><mo id="S4.T1.st3.3.3.3.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.st3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st3.3.3.3.m1.1b"><ci id="S4.T1.st3.3.3.3.m1.1.1.cmml" xref="S4.T1.st3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st3.4.4.4" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st3.4.4.4.1" style="font-size:70%;">VQA </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.st3.4.4.4.m1.1"><semantics id="S4.T1.st3.4.4.4.m1.1a"><mo id="S4.T1.st3.4.4.4.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.st3.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st3.4.4.4.m1.1b"><ci id="S4.T1.st3.4.4.4.m1.1.1.cmml" xref="S4.T1.st3.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st3.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st3.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st3.5.5.5" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S4.T1.st3.5.5.5.1" style="font-size:70%;">PickScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.st3.5.5.5.m1.1"><semantics id="S4.T1.st3.5.5.5.m1.1a"><mo id="S4.T1.st3.5.5.5.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.st3.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st3.5.5.5.m1.1b"><ci id="S4.T1.st3.5.5.5.m1.1.1.cmml" xref="S4.T1.st3.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st3.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st3.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.st3.5.7">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_t" id="S4.T1.st3.5.7.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.st3.5.7.1.1" style="font-size:70%;">Origen<span class="ltx_text ltx_font_upright" id="S4.T1.st3.5.7.1.1.1"> (Ours)</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.st3.5.7.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st3.5.7.2.1" style="font-size:70%;">0.634</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.st3.5.7.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st3.5.7.3.1" style="font-size:70%;">34.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.st3.5.7.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st3.5.7.4.1" style="font-size:70%;">0.281</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.st3.5.7.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st3.5.7.5.1" style="font-size:70%;">0.764</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.st3.5.7.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st3.5.7.6.1" style="font-size:70%;">0.219</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table B presents a quantitative analysis of ORIGEN's performance on general orientation controllability.  It shows the accuracy of ORIGEN in predicting azimuth, polar, and rotation angles, along with text-to-image alignment metrics (CLIP, VQA, PickScore). The results demonstrate that ORIGEN maintains high accuracy even when evaluated on a more diverse set of samples than those used in the previous, more constrained experiments.
> <details>
> <summary>read the caption</summary>
> Table B: Quantitative Results on General Orientation Controllability. Origen maintains high accuracy even when evaluated on a more general set of samples.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.1">
<tr class="ltx_tr" id="S4.T2.1.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.2.1"><span class="ltx_text" id="S4.T2.1.2.1.1" style="font-size:70%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.2.2">
<span class="ltx_text" id="S4.T2.1.2.2.1" style="font-size:70%;">Zero-1-to-3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.1.2.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a><span class="ltx_text" id="S4.T2.1.2.2.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.2.3">
<span class="ltx_text" id="S4.T2.1.2.3.1" style="font-size:70%;">C3DW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.1.2.3.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22194v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="S4.T2.1.2.3.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.2.4"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T2.1.2.4.1" style="font-size:70%;">Origen<span class="ltx_text ltx_font_upright" id="S4.T2.1.2.4.1.1"> (Ours)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.1">
<span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:70%;">User Preferences </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T2.1.1.1.2" style="font-size:70%;"> (%)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.2"><span class="ltx_text" id="S4.T2.1.1.2.1" style="font-size:70%;">20.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.3"><span class="ltx_text" id="S4.T2.1.1.3.1" style="font-size:70%;">21.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.1" style="font-size:70%;">58.18</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table C presents a quantitative comparison of different methods for 3D orientation-grounded image generation using the MS-COCO-NView dataset.  The table compares the performance of ORIGEN (with and without reward-adaptive time rescaling) against several baselines (SD-Turbo, SDXL-Turbo, FLUX-Schnell, C3DW, and Zero-1-to-3).  Evaluation metrics include accuracy at 22.5° and absolute error for azimuth angle, along with CLIP score, VQA score, and PickScore for text-to-image alignment.  The best and second-best results for each metric are highlighted.
> <details>
> <summary>read the caption</summary>
> Table C: Quantitative comparisons on 3D orientation grounded image generation on MS-COCO-NView dataset. Origen∗ denotes ours without reward-adaptive time rescaling, where Origen represents our full method. Best and second-best results are highlighted in bold and underlined, respectively.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.22194/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22194/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22194/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22194/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22194/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22194/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22194/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22194/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22194/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22194/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22194/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22194/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22194/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22194/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22194/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22194/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22194/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}