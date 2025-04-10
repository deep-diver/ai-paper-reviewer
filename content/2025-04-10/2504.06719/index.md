---
title: "Masked Scene Modeling: Narrowing the Gap Between Supervised and Self-Supervised Learning in 3D Scene Understanding"
summary: "MSM: Narrows the gap between supervised and self-supervised learning in 3D scene understanding with a novel Masked Scene Modeling objective."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Scene Understanding", "🏢 TU Wien",]
showSummary: true
date: 2025-04-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.06719 {{< /keyword >}}
{{< keyword icon="writer" >}} Pedro Hermosilla et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.06719" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.06719" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.06719/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Self-supervised learning has revolutionized 2D computer vision, but its potential in 3D scene understanding remains limited. Current 3D self-supervised methods often serve merely as weight initializations for task-specific fine-tuning, hindering their utility for general-purpose feature extraction. This is due to the lack of a systematic evaluation protocol tailored for 3D scenes and the absence of effective 3D-scene specific masked prediction objectives that account for the hierarchical nature of 3D models. To resolve this, the paper introduces a robust evaluation protocol designed to assess the quality of self-supervised features in 3D scene understanding using multi-resolution feature sampling of hierarchical models for rich point-level representations that capture the semantic capabilities of the model. 



Addressing the limitations, this paper introduces the **Masked Scene Modeling (MSM)** framework. MSM is trained natively in 3D, employing a novel self-supervised approach that reconstructs deep features of masked patches in a bottom-up manner, specifically tailored for hierarchical 3D models. Experiments demonstrate that MSM not only competes with supervised models but also surpasses existing self-supervised approaches by a significant margin. This work marks a step toward versatile, task-agnostic 3D feature extraction.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A new evaluation protocol is introduced to assess self-supervised features for 3D scene understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Masked Scene Modeling (MSM) is proposed, a novel self-supervised framework tailored to hierarchical 3D models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed MSM model achieves competitive, and sometimes superior, performance compared to supervised models in downstream tasks using only off-the-shelf features. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a new benchmark and method for 3D self-supervised learning, bridging the gap with supervised approaches. It offers improved off-the-shelf features and opens avenues for task-agnostic 3D scene understanding, accelerating research towards more effective 3D foundation models and **reducing reliance on labeled data**.

------
#### Visual Insights



![](https://arxiv.org/html/2504.06719/x2.png)

> 🔼 This figure visualizes features learned by a self-supervised model using Principal Component Analysis (PCA).  The model's point cloud features are reduced to three dimensions using PCA and mapped to colors.  The resulting color-coded point clouds show that semantically similar objects (e.g., sofas, chairs) have similar feature representations (similar colors), while dissimilar objects (e.g., counter, table; crib, curtains) have distinct feature representations (different colors). This demonstrates that the learned features possess semantic awareness.
> <details>
> <summary>read the caption</summary>
> Figure 1: Self-Supervised Feature Visualization using PCA. We reduce the point features obtained with our self-supervised model to three dimensions using PCA and visualize them as colors. Features learned by our model are semantic-aware, which is visible from the color separation: Similar objects result in similar features, such as the sofas in the first figure or the chairs in the last one, while different objects result in different features, such as the counter and the tables in the second image or the crib and the curtains in the third one.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.2.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T1.2.1.1.1" style="padding-left:7.5pt;padding-right:7.5pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T1.2.1.1.2" style="padding-left:7.5pt;padding-right:7.5pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.1.1.3.1" style="font-size:90%;">BB</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.1.1.4.1" style="font-size:90%;">ScN</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.1.1.5.1" style="font-size:90%;">ScN200</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.6" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.1.1.6.1" style="font-size:90%;">S3DIS</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T1.2.2.2.1" style="padding-left:7.5pt;padding-right:7.5pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T1.2.2.2.2" style="padding-left:7.5pt;padding-right:7.5pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.3" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.2.2.3.1" style="font-size:80%;color:#646464;background-color:#EBEBEB;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.4" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.2.2.4.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.5" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.2.2.5.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.6" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.2.2.6.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">68.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.3.3">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.2.3.3.1" style="padding-left:7.5pt;padding-right:7.5pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.3.3.2" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.3.3.2.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">Supervised</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.3.3.3" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.3.3.3.1" style="font-size:80%;color:#646464;background-color:#EBEBEB;">HUNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.3.3.4" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.3.3.4.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.3.3.5" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.3.3.5.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">35.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.3.3.6" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.3.3.6.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">71.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.2.4.4.1" rowspan="6" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.4.4.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T1.2.4.4.1.1.1" style="width:6.1pt;height:13.5pt;vertical-align:-3.7pt;"><span class="ltx_transformed_inner" style="width:13.5pt;transform:translate(-3.68pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T1.2.4.4.1.1.1.1">NN</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.2.4.4.2" style="padding-left:7.5pt;padding-right:7.5pt;">
<span class="ltx_text" id="S5.T1.2.4.4.2.1" style="font-size:90%;">MM3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.2.4.4.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S5.T1.2.4.4.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.4.4.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.4.4.3.1" style="font-size:80%;">PT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.4.4.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.4.4.4.1" style="font-size:90%;">19.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.4.4.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.4.4.5.1" style="font-size:90%;">3.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.4.4.6" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.4.4.6.1" style="font-size:90%;">24.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.5.5.1" style="padding-left:7.5pt;padding-right:7.5pt;">
<span class="ltx_text" id="S5.T1.2.5.5.1.1" style="font-size:90%;">CSC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.2.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S5.T1.2.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.5.5.2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.5.5.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.5.5.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.5.5.3.1" style="font-size:90%;">24.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.5.5.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.5.5.4.1" style="font-size:90%;">4.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.5.5.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.5.5.5.1" style="font-size:90%;">32.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.6.6.1" style="padding-left:7.5pt;padding-right:7.5pt;">
<span class="ltx_text" id="S5.T1.2.6.6.1.1" style="font-size:90%;">OESSL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.2.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="S5.T1.2.6.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.6.6.2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.6.6.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.6.6.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.6.6.3.1" style="font-size:90%;">31.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.6.6.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.6.6.4.1" style="font-size:90%;">6.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.6.6.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.6.6.5.1" style="font-size:90%;">34.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.7.7.1" rowspan="2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.7.7.1.1" style="font-size:90%;">MSC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.7.7.2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.7.7.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.7.7.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.7.7.3.1" style="font-size:90%;">31.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.7.7.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.7.7.4.1" style="font-size:90%;">7.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.7.7.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.7.7.5.1" style="font-size:90%;">35.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.8.8">
<td class="ltx_td ltx_align_center" id="S5.T1.2.8.8.1" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.8.8.1.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.8.8.2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.8.8.2.1" style="font-size:90%;">39.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.8.8.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.8.8.3.1" style="font-size:90%;">11.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.8.8.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.8.8.4.1" style="font-size:90%;">39.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.2.9.9.1" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.9.9.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.9.9.2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.9.9.2.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.9.9.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.2.9.9.3.1" style="font-size:90%;">65.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.9.9.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.2.9.9.4.1" style="font-size:90%;">22.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.9.9.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.2.9.9.5.1" style="font-size:90%;">45.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T1.2.10.10.1" rowspan="6" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.10.10.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T1.2.10.10.1.1.1" style="width:6.1pt;height:25.2pt;vertical-align:-9.5pt;"><span class="ltx_transformed_inner" style="width:25.2pt;transform:translate(-9.5pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T1.2.10.10.1.1.1.1">Linear</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.2.10.10.2" style="padding-left:7.5pt;padding-right:7.5pt;">
<span class="ltx_text" id="S5.T1.2.10.10.2.1" style="font-size:90%;">MM3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.2.10.10.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S5.T1.2.10.10.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.10.10.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.10.10.3.1" style="font-size:80%;">PT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.10.10.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.10.10.4.1" style="font-size:90%;">26.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.10.10.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.10.10.5.1" style="font-size:90%;">4.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.10.10.6" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.10.10.6.1" style="font-size:90%;">36.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.11.11.1" style="padding-left:7.5pt;padding-right:7.5pt;">
<span class="ltx_text" id="S5.T1.2.11.11.1.1" style="font-size:90%;">CSC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.2.11.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S5.T1.2.11.11.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.11.11.2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.11.11.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.11.11.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.11.11.3.1" style="font-size:90%;">27.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.11.11.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.11.11.4.1" style="font-size:90%;">5.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.11.11.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.11.11.5.1" style="font-size:90%;">31.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.12.12.1" style="padding-left:7.5pt;padding-right:7.5pt;">
<span class="ltx_text" id="S5.T1.2.12.12.1.1" style="font-size:90%;">OESSL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.2.12.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="S5.T1.2.12.12.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.12.12.2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.12.12.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.12.12.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.12.12.3.1" style="font-size:90%;">35.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.12.12.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.12.12.4.1" style="font-size:90%;">9.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.12.12.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.12.12.5.1" style="font-size:90%;">35.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.13.13.1" rowspan="2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.13.13.1.1" style="font-size:90%;">MSC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.13.13.2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.13.13.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.13.13.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.13.13.3.1" style="font-size:90%;">37.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.13.13.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.13.13.4.1" style="font-size:90%;">10.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.13.13.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.13.13.5.1" style="font-size:90%;">41.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.14.14">
<td class="ltx_td ltx_align_center" id="S5.T1.2.14.14.1" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.14.14.1.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.14.14.2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.14.14.2.1" style="font-size:90%;">58.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.14.14.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.14.14.3.1" style="font-size:90%;">20.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.14.14.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.14.14.4.1" style="font-size:90%;">57.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T1.2.15.15.1" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.15.15.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.15.15.2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T1.2.15.15.2.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.15.15.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.2.15.15.3.1" style="font-size:90%;">68.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.15.15.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.2.15.15.4.1" style="font-size:90%;">26.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.15.15.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.2.15.15.5.1" style="font-size:90%;">59.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of various self-supervised learning models on the semantic segmentation task.  The models are evaluated using two metrics: Nearest Neighbor (NN) and Linear probing, both applied to the ScanNet, ScanNet200, and S3DIS datasets.  The results show the mean Intersection over Union (mIoU) scores, indicating the model's ability to accurately classify the semantic class of each point in a 3D scene.  It compares the performance of the proposed Masked Scene Modeling (MSM) approach against state-of-the-art self-supervised methods, as well as supervised models trained from scratch, providing a comprehensive evaluation of the effectiveness and efficiency of different 3D feature learning strategies. 
> <details>
> <summary>read the caption</summary>
> Table 1: Semantic Segmentation. Performance of different self-supervised models on the task of semantic segmentation (mIoU).
> </details>





### In-depth insights


#### 3D Self-Supervised
3D self-supervision presents a compelling avenue for representation learning by leveraging the inherent structure of 3D data. Unlike supervised methods, which require extensive labeled datasets, self-supervised approaches aim to learn directly from the raw 3D data itself, through pretext tasks. These tasks, like masked scene modeling, involve reconstructing or predicting certain aspects of the input, forcing the model to learn meaningful features. **The key advantage lies in the ability to utilize the vast amounts of unlabeled 3D data available**, thus overcoming a major bottleneck in 3D deep learning. **Effectively designed pretext tasks capture crucial geometric and semantic relationships**, leading to representations that generalize well to downstream tasks like segmentation and object detection. The success of self-supervised learning hinges on the choice of appropriate pretext tasks that encourage the model to learn robust and task-agnostic features.

#### Masked MIM in 3D
Masked Image Modeling (MIM) in 3D presents a unique challenge, differing significantly from its 2D counterpart. The core idea involves **masking portions of a 3D scene and training a model to reconstruct the missing information**. This can be achieved by masking input features or deep features. Unlike images, 3D data such as point clouds or voxels are often sparse and irregular. Direct application of 2D MIM techniques may not be optimal. A crucial aspect is the choice of masking strategy. Techniques are evolving focusing on masking points. Effective MIM in 3D demands careful design of masking strategies, reconstruction targets, and network architectures to leverage the unique characteristics of 3D data. **It learns semantic features**, leading to better performance.

#### Hierarchical Feat.
Hierarchical feature extraction is crucial for 3D scene understanding, as models often use UNet-like architectures. Evaluating only the last layer's features might not fully capture the self-supervised model's semantic capabilities. **Using a concatenation of features from each level in the hierarchical decoder, with trilinear interpolation, can better reflect the semantic capabilities for each point in space.** This approach allows for evaluating features with information at different scales, and it uncovers better performance in self-supervised models. **The pilot study confirms that deeper layers of self-supervised models contain relevant information, assisting in downstream tasks, highlighting the necessity of considering the hierarchical nature**.

#### Semantic Encoding
While the provided research paper focuses on self-supervised learning in 3D scene understanding, the concept of 'Semantic Encoding,' though not explicitly a heading, is fundamental.  Effective semantic encoding is the crux of learning meaningful representations from unlabeled 3D data.  The success of methods like Masked Scene Modeling hinges on the ability to encode geometric and contextual information into rich feature vectors.  The paper implicitly addresses semantic encoding through its novel Masked Scene Modeling objective and hierarchical reconstruction loss. **The key is the reconstruction of deep features from masked patches, compelling the model to learn view-invariant, semantically aware representations**. By encoding semantic relationships, the model achieves performance rivaling supervised methods, showcasing the power of effective semantic encoding. **The hierarchical approach ensures that features at different scales are captured and combined, leading to more robust and informative semantic representations**. This careful design contributes to the improved downstream task performance observed in the paper, emphasizing the importance of semantic encoding for 3D scene understanding.

#### Beyond 2D Models
Moving **beyond 2D models** is crucial for advanced scene understanding. While 2D models have achieved significant progress, they lack the inherent spatial awareness and geometric understanding that 3D models provide. Utilizing 3D data allows us to directly capture and reason about the physical structure of the environment, leading to more accurate and robust perception. This is particularly important for applications like robotics, autonomous driving, and augmented reality, where **precise spatial reasoning** is essential. Self-supervised learning in 3D environments enables the development of models capable of learning rich, task-agnostic features directly from raw 3D data, without relying on expensive manual annotations. This shift towards **3D-native learning** is a key step towards unlocking the full potential of AI in understanding and interacting with the real world.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.06719/x3.png)

> 🔼 This figure shows the results of a pilot study comparing the performance of different self-supervised methods for 3D scene understanding using hierarchical and last-layer features.  The results demonstrate that hierarchical features, which incorporate information from multiple layers of the model, significantly improve the performance of all self-supervised models. The study also highlights a substantial gap in performance between self-supervised and supervised models, even when using the better-performing hierarchical features. This gap underscores the challenges in achieving comparable performance using self-supervised methods versus supervised methods in 3D scene understanding.
> <details>
> <summary>read the caption</summary>
> Figure 2: Pilot study. Our hierarchical features uncover better performance in all self-supervised models. Moreover, our study shows that existing approaches exhibit a large performance gap between supervised and self-supervised training.
> </details>



![](https://arxiv.org/html/2504.06719/x4.png)

> 🔼 This figure illustrates the process of extracting hierarchical features from a UNet-like architecture commonly used in 3D scene understanding.  Instead of using only the output of the final layer, the method uses tri-linear interpolation to upsample feature maps from each decoder level. These upsampled features are then combined to create a rich, task-agnostic feature map that captures hierarchical information from all levels.  This approach provides a more comprehensive representation of the learned features than using the output of the last layer alone.
> <details>
> <summary>read the caption</summary>
> Figure 3: Hierarchical features
> </details>



![](https://arxiv.org/html/2504.06719/x5.png)

> 🔼 Figure 4 illustrates the Masked Scene Modeling framework.  It begins with a 3D point cloud (a) which is voxelized into two distinct views (b). These views are then cropped and randomly masked to create partial observations (c). A 'student' model processes the unmasked portions of the cropped views (d) and incorporates the masked voxel information using a learnable token. Next, a decoder reconstructs the deep features from the masked regions (e).  Finally, a 'teacher' model, trained using an exponential moving average (EMA) of the student model's parameters, provides the ground truth features for calculating a cross-view reconstruction loss (f).
> <details>
> <summary>read the caption</summary>
> Figure 4: Overview. Our method receives as input a 3D scene represented as a pointcloud, (a). The scene is voxelized into two different views, (b), and then further cropped and masked, (c). The student model first encodes the cropped views and then adds the masked voxels with a learnable token, (d). The decoder processes the cropped views and reconstructs deep features of the masked tokens, (e). The loss is computed in a cross-view manner where the target features, (f), are obtained from a teacher model updated with EMA.
> </details>



![](https://arxiv.org/html/2504.06719/x6.png)

> 🔼 This figure illustrates the hierarchical reconstruction process within the Masked Scene Modeling framework.  The input is a voxelized 3D scene with masked regions.  A hierarchical encoder processes the unmasked portions. The decoder then reconstructs the masked regions in a bottom-up fashion, starting with the deepest layer's features.  At each decoder level, masked features are added using a learnable token, the loss is computed, and the output is upsampled and combined with skip connections from the preceding level. This process iterates until the final feature map is generated at the original voxel resolution, effectively integrating information from multiple levels of the network.
> <details>
> <summary>read the caption</summary>
> Figure 5: Hierarchical reconstruction. The masked voxelization is processed by our hierarchical encoder. The decoder processes the encoded features in a bottom-up manner by first including the masked voxels with a learnable token. Each level is used in the loss computation before the decoded features are upscaled and combined with the skip connection from the previous level.
> </details>



![](https://arxiv.org/html/2504.06719/x7.png)

> 🔼 This figure displays a qualitative comparison of feature visualizations from different self-supervised learning models, including the proposed method and several baselines.  Each image shows a 3D point cloud where points are colored according to their feature vectors reduced to three dimensions using Principal Component Analysis (PCA). The goal is to visually demonstrate the semantic awareness of learned features. The authors claim that their model's features exhibit better alignment with semantic classes (meaning similar objects have similar colors) than those learned by the compared methods.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative results. Feature visualization of off-the-shelf features of our method and the baselines. Our learned features align with semantic classes better than existing methods.
> </details>



![](https://arxiv.org/html/2504.06719/x8.png)

> 🔼 This figure visualizes the semantic features learned by different self-supervised methods, including the proposed method and several baselines.  Principal Component Analysis (PCA) is used to reduce the high-dimensional feature vectors to three dimensions, which are then mapped to colors. Each point in the 3D point cloud is colored according to its feature vector. The visualization shows that features learned by the proposed method exhibit a clearer separation based on semantic class compared to the baselines, suggesting that the proposed method learns more semantically meaningful features.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative results. Feature visualization of off-the-shelf features of our method and the baselines. Our learned features align with semantic classes better than existing methods.
> </details>



![](https://arxiv.org/html/2504.06719/x9.png)

> 🔼 This figure shows the impact of varying the masking ratio on the performance of the Masked Scene Modeling method.  The x-axis represents the percentage of voxels masked in the input point cloud, while the y-axis shows the mean Intersection over Union (mIoU) achieved on a semantic segmentation task using linear probing. The plot demonstrates the model's robustness to different masking ratios within a certain range (approximately 30% to 60%), with optimal performance around 40%. Outside this range, performance degrades significantly.
> <details>
> <summary>read the caption</summary>
> Figure 8: Masking ratio. Linear probing performance for different masking ratios.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.2.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T2.2.1.1.1" style="padding-left:7.5pt;padding-right:7.5pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T2.2.1.1.2" style="padding-left:7.5pt;padding-right:7.5pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.1.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.1.1.3.1" style="font-size:90%;">BB</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.1.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.1.1.4.1" style="font-size:90%;">ScN</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.1.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.1.1.5.1" style="font-size:90%;">ScN200</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.1.6" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.1.1.6.1" style="font-size:90%;">S3DIS</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T2.2.2.2.1" style="padding-left:7.5pt;padding-right:7.5pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T2.2.2.2.2" style="padding-left:7.5pt;padding-right:7.5pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.3" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.2.2.3.1" style="font-size:80%;color:#646464;background-color:#EBEBEB;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.4" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.2.2.4.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">56.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.5" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.2.2.5.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">24.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.6" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.2.2.6.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">59.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.3.3">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T2.2.3.3.1" style="padding-left:7.5pt;padding-right:7.5pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.2.3.3.2" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.3.3.2.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">Supervised</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.2.3.3.3" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.3.3.3.1" style="font-size:80%;color:#646464;background-color:#EBEBEB;">HUNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.3.3.4" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.3.3.4.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">65.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.3.3.5" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.3.3.5.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">32.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.3.3.6" style="background-color:#EBEBEB;padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.3.3.6.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">58.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T2.2.4.4.1" rowspan="6" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.4.4.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T2.2.4.4.1.1.1" style="width:6.1pt;height:25.2pt;vertical-align:-9.5pt;"><span class="ltx_transformed_inner" style="width:25.2pt;transform:translate(-9.5pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T2.2.4.4.1.1.1.1">Linear</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.2.4.4.2" style="padding-left:7.5pt;padding-right:7.5pt;">
<span class="ltx_text" id="S5.T2.2.4.4.2.1" style="font-size:90%;">MM3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.2.4.4.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S5.T2.2.4.4.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.4.4.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.4.4.3.1" style="font-size:80%;">PT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.4.4.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.4.4.4.1" style="font-size:90%;">4.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.4.4.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.4.4.5.1" style="font-size:90%;">0.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.4.4.6" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.4.4.6.1" style="font-size:90%;">7.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.2.5.5.1" style="padding-left:7.5pt;padding-right:7.5pt;">
<span class="ltx_text" id="S5.T2.2.5.5.1.1" style="font-size:90%;">CSC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.2.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S5.T2.2.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T2.2.5.5.2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.5.5.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.5.5.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.5.5.3.1" style="font-size:90%;">3.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.5.5.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.5.5.4.1" style="font-size:90%;">0.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.5.5.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.5.5.5.1" style="font-size:90%;">14.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.2.6.6.1" style="padding-left:7.5pt;padding-right:7.5pt;">
<span class="ltx_text" id="S5.T2.2.6.6.1.1" style="font-size:90%;">OESSL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.2.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="S5.T2.2.6.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T2.2.6.6.2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.6.6.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.6.6.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.6.6.3.1" style="font-size:90%;">13.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.6.6.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.6.6.4.1" style="font-size:90%;">2.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.6.6.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.6.6.5.1" style="font-size:90%;">16.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.2.7.7.1" rowspan="2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.7.7.1.1" style="font-size:90%;">MSC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.2.7.7.2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.7.7.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.7.7.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.7.7.3.1" style="font-size:90%;">10.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.7.7.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.7.7.4.1" style="font-size:90%;">1.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.7.7.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.7.7.5.1" style="font-size:90%;">16.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.8.8">
<td class="ltx_td ltx_align_center" id="S5.T2.2.8.8.1" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.8.8.1.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.8.8.2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.8.8.2.1" style="font-size:90%;">24.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.8.8.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.8.8.3.1" style="font-size:90%;">3.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.8.8.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.8.8.4.1" style="font-size:90%;">18.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T2.2.9.9.1" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.9.9.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.2.9.9.2" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text" id="S5.T2.2.9.9.2.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.2.9.9.3" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.9.9.3.1" style="font-size:90%;">44.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.2.9.9.4" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.9.9.4.1" style="font-size:90%;">8.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.2.9.9.5" style="padding-left:7.5pt;padding-right:7.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.9.9.5.1" style="font-size:90%;">23.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various self-supervised learning models on the task of 3D instance segmentation.  The metric used to evaluate the performance is mean Average Precision (mAP) at an Intersection over Union (IoU) threshold of 0.5 (mAP@50). The table compares the results of different self-supervised approaches against a supervised baseline, providing insights into the effectiveness of self-supervised learning for this specific task.  Different models are compared across three datasets: ScanNet, ScanNet200, and S3DIS.  For each model, two performance scores are presented: one from a Nearest Neighbor approach and one from a linear probing method.
> <details>
> <summary>read the caption</summary>
> Table 2: Instance Segmentation. Performance of self-supervised models on the task of instance segmentation (mAP@50).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.2.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T3.2.1.1.1" style="padding-left:9.0pt;padding-right:9.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T3.2.1.1.2" style="padding-left:9.0pt;padding-right:9.0pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.1.1.3" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.1.1.3.1" style="font-size:90%;">BB</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.1.1.4" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.1.1.4.1" style="font-size:90%;">U</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.1.1.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.1.1.5.1" style="font-size:90%;">M</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.1.1.6" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.1.1.6.1" style="font-size:90%;">O</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T3.2.2.2.1" style="padding-left:9.0pt;padding-right:9.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T3.2.2.2.2" style="padding-left:9.0pt;padding-right:9.0pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.3" style="background-color:#EBEBEB;padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.2.2.3.1" style="font-size:80%;color:#646464;background-color:#EBEBEB;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.4" style="background-color:#EBEBEB;padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.2.2.4.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">78.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.5" style="background-color:#EBEBEB;padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.2.2.5.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">35.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.6" style="background-color:#EBEBEB;padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.2.2.6.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">44.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.3.3">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T3.2.3.3.1" style="padding-left:9.0pt;padding-right:9.0pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.2.3.3.2" style="background-color:#EBEBEB;padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.3.3.2.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">Supervised</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.2.3.3.3" style="background-color:#EBEBEB;padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.3.3.3.1" style="font-size:80%;color:#646464;background-color:#EBEBEB;">HUNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.3.3.4" style="background-color:#EBEBEB;padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.3.3.4.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">–</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.3.3.5" style="background-color:#EBEBEB;padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.3.3.5.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">–</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.3.3.6" style="background-color:#EBEBEB;padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.3.3.6.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">–</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T3.2.4.4.1" rowspan="6" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.4.4.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T3.2.4.4.1.1.1" style="width:6.1pt;height:40.6pt;vertical-align:-17.2pt;"><span class="ltx_transformed_inner" style="width:40.6pt;transform:translate(-17.24pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T3.2.4.4.1.1.1.1">Cross-Att.</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.2.4.4.2" style="padding-left:9.0pt;padding-right:9.0pt;">
<span class="ltx_text" id="S5.T3.2.4.4.2.1" style="font-size:90%;">MM3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.2.4.4.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S5.T3.2.4.4.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.4.4.3" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.4.4.3.1" style="font-size:80%;">PT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.4.4.4" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.4.4.4.1" style="font-size:90%;">65.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.4.4.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.4.4.5.1" style="font-size:90%;">32.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.4.4.6" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.4.4.6.1" style="font-size:90%;">40.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.2.5.5.1" style="padding-left:9.0pt;padding-right:9.0pt;">
<span class="ltx_text" id="S5.T3.2.5.5.1.1" style="font-size:90%;">CSC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.2.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S5.T3.2.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.2.5.5.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.5.5.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.5.5.3" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.5.5.3.1" style="font-size:90%;">66.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.5.5.4" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.5.5.4.1" style="font-size:90%;">32.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.5.5.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.5.5.5.1" style="font-size:90%;">39.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.2.6.6.1" style="padding-left:9.0pt;padding-right:9.0pt;">
<span class="ltx_text" id="S5.T3.2.6.6.1.1" style="font-size:90%;">OESSL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.2.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="S5.T3.2.6.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.2.6.6.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.6.6.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.6.6.3" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.6.6.3.1" style="font-size:90%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.6.6.4" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.6.6.4.1" style="font-size:90%;">35.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.6.6.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.6.6.5.1" style="font-size:90%;">43.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.2.7.7.1" rowspan="2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.7.7.1.1" style="font-size:90%;">MSC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.2.7.7.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.7.7.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.7.7.3" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.7.7.3.1" style="font-size:90%;">77.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.7.7.4" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.7.7.4.1" style="font-size:90%;">37.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.7.7.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.7.7.5.1" style="font-size:90%;">45.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.8.8">
<td class="ltx_td ltx_align_center" id="S5.T3.2.8.8.1" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.8.8.1.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.8.8.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.8.8.2.1" style="font-size:90%;">84.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.8.8.3" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.8.8.3.1" style="font-size:90%;">42.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.8.8.4" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.8.8.4.1" style="font-size:90%;">51.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T3.2.9.9.1" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.9.9.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.9.9.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S5.T3.2.9.9.2.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.9.9.3" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.9.9.3.1" style="font-size:90%;">87.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.9.9.4" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.9.9.4.1" style="font-size:90%;">44.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.9.9.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.9.9.5.1" style="font-size:90%;">55.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the 3D visual grounding task, which involves locating a specific object in a 3D scene based on a textual description.  The accuracy of several self-supervised learning models are compared against a supervised model serving as a baseline.  The results are organized by model name, and show the accuracy achieved on three different subsets of the ScanRefer dataset: Unique, Multiple, and Overall.  Unique represents scenes with only one instance of the target object, Multiple scenes with multiple instances, and Overall combines these two.
> <details>
> <summary>read the caption</summary>
> Table 3: 3D Visual Grounding. Accuracy of different self-supervised models on the task of 3D visual grounding.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.2.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T4.2.1.1.1" style="padding-left:4.5pt;padding-right:4.5pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T4.2.1.1.2" style="padding-left:4.5pt;padding-right:4.5pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.2.1.1.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.1.1.3.1" style="font-size:90%;">BB</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.2.1.1.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.1.1.4.1" style="font-size:90%;">1%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.2.1.1.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.1.1.5.1" style="font-size:90%;">5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.2.1.1.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.1.1.6.1" style="font-size:90%;">10%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.2.1.1.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.1.1.7.1" style="font-size:90%;">20%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.2.1.1.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.1.1.8.1" style="font-size:90%;">100%</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T4.2.2.2.1" style="padding-left:4.5pt;padding-right:4.5pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T4.2.2.2.2" style="padding-left:4.5pt;padding-right:4.5pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2.3" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.2.2.3.1" style="font-size:80%;color:#646464;background-color:#EBEBEB;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2.4" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.2.2.4.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">26.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2.5" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.2.2.5.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">47.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2.6" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.2.2.6.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">56.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2.7" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.2.2.7.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2.8" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.2.2.8.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">72.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.3.3">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T4.2.3.3.1" style="padding-left:4.5pt;padding-right:4.5pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.2.3.3.2" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.3.3.2.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">Supervised</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.2.3.3.3" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.3.3.3.1" style="font-size:80%;color:#646464;background-color:#EBEBEB;">HUNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.3.3.4" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.3.3.4.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">19.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.3.3.5" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.3.3.5.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">36.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.3.3.6" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.3.3.6.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">52.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.3.3.7" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.3.3.7.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">67.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.3.3.8" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.3.3.8.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">77.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.2.4.4.1" rowspan="6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.4.4.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T4.2.4.4.1.1.1" style="width:6.1pt;height:13.5pt;vertical-align:-3.7pt;"><span class="ltx_transformed_inner" style="width:13.5pt;transform:translate(-3.68pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T4.2.4.4.1.1.1.1">NN</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.2.4.4.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S5.T4.2.4.4.2.1" style="font-size:90%;">MM3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.2.4.4.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S5.T4.2.4.4.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.4.4.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.4.4.3.1" style="font-size:80%;">PT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.4.4.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.4.4.4.1" style="font-size:90%;">9.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.4.4.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.4.4.5.1" style="font-size:90%;">13.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.4.4.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.4.4.6.1" style="font-size:90%;">14.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.4.4.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.4.4.7.1" style="font-size:90%;">15.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.4.4.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.4.4.8.1" style="font-size:90%;">19.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.2.5.5.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S5.T4.2.5.5.1.1" style="font-size:90%;">CSC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.2.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S5.T4.2.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T4.2.5.5.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.5.5.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.5.5.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.5.5.3.1" style="font-size:90%;">12.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.5.5.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.5.5.4.1" style="font-size:90%;">16.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.5.5.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.5.5.5.1" style="font-size:90%;">18.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.5.5.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.5.5.6.1" style="font-size:90%;">19.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.5.5.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.5.5.7.1" style="font-size:90%;">24.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.2.6.6.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S5.T4.2.6.6.1.1" style="font-size:90%;">OESSL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.2.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="S5.T4.2.6.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T4.2.6.6.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.6.6.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.6.6.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.6.6.3.1" style="font-size:90%;">15.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.6.6.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.6.6.4.1" style="font-size:90%;">20.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.6.6.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.6.6.5.1" style="font-size:90%;">23.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.6.6.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.6.6.6.1" style="font-size:90%;">25.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.6.6.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.6.6.7.1" style="font-size:90%;">31.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.2.7.7.1" rowspan="2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.7.7.1.1" style="font-size:90%;">MSC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.2.7.7.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.7.7.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.7.7.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.7.7.3.1" style="font-size:90%;">17.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.7.7.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.7.7.4.1" style="font-size:90%;">21.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.7.7.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.7.7.5.1" style="font-size:90%;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.7.7.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.7.7.6.1" style="font-size:90%;">26.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.7.7.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.7.7.7.1" style="font-size:90%;">31.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.8.8">
<td class="ltx_td ltx_align_center" id="S5.T4.2.8.8.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.8.8.1.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.8.8.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.8.8.2.1" style="font-size:90%;">22.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.8.8.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.8.8.3.1" style="font-size:90%;">30.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.8.8.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.8.8.4.1" style="font-size:90%;">33.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.8.8.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.8.8.5.1" style="font-size:90%;">35.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.8.8.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.8.8.6.1" style="font-size:90%;">39.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.2.9.9.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.9.9.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.9.9.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.9.9.2.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.9.9.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.9.9.3.1" style="font-size:90%;">35.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.9.9.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.9.9.4.1" style="font-size:90%;">53.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.9.9.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.9.9.5.1" style="font-size:90%;">59.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.9.9.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.9.9.6.1" style="font-size:90%;">60.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.9.9.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.9.9.7.1" style="font-size:90%;">65.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T4.2.10.10.1" rowspan="6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.10.10.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T4.2.10.10.1.1.1" style="width:6.1pt;height:25.2pt;vertical-align:-9.5pt;"><span class="ltx_transformed_inner" style="width:25.2pt;transform:translate(-9.5pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T4.2.10.10.1.1.1.1">Linear</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.2.10.10.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S5.T4.2.10.10.2.1" style="font-size:90%;">MM3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.2.10.10.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S5.T4.2.10.10.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.10.10.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.10.10.3.1" style="font-size:80%;">PT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.10.10.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.10.10.4.1" style="font-size:90%;">16.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.10.10.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.10.10.5.1" style="font-size:90%;">22.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.10.10.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.10.10.6.1" style="font-size:90%;">25.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.10.10.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.10.10.7.1" style="font-size:90%;">26.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.10.10.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.10.10.8.1" style="font-size:90%;">26.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.2.11.11.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S5.T4.2.11.11.1.1" style="font-size:90%;">CSC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.2.11.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S5.T4.2.11.11.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T4.2.11.11.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.11.11.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.11.11.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.11.11.3.1" style="font-size:90%;">17.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.11.11.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.11.11.4.1" style="font-size:90%;">21.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.11.11.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.11.11.5.1" style="font-size:90%;">26.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.11.11.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.11.11.6.1" style="font-size:90%;">27.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.11.11.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.11.11.7.1" style="font-size:90%;">27.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.2.12.12.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S5.T4.2.12.12.1.1" style="font-size:90%;">OESSL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.2.12.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="S5.T4.2.12.12.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T4.2.12.12.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.12.12.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.12.12.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.12.12.3.1" style="font-size:90%;">20.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.12.12.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.12.12.4.1" style="font-size:90%;">28.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.12.12.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.12.12.5.1" style="font-size:90%;">32.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.12.12.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.12.12.6.1" style="font-size:90%;">34.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.12.12.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.12.12.7.1" style="font-size:90%;">35.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.2.13.13.1" rowspan="2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.13.13.1.1" style="font-size:90%;">MSC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.2.13.13.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.13.13.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.13.13.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.13.13.3.1" style="font-size:90%;">21.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.13.13.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.13.13.4.1" style="font-size:90%;">31.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.13.13.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.13.13.5.1" style="font-size:90%;">34.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.13.13.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.13.13.6.1" style="font-size:90%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.13.13.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.13.13.7.1" style="font-size:90%;">37.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.14.14">
<td class="ltx_td ltx_align_center" id="S5.T4.2.14.14.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.14.14.1.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.14.14.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.14.14.2.1" style="font-size:90%;">30.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.14.14.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.14.14.3.1" style="font-size:90%;">44.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.14.14.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.14.14.4.1" style="font-size:90%;">50.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.14.14.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.14.14.5.1" style="font-size:90%;">54.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.14.14.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.14.14.6.1" style="font-size:90%;">58.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T4.2.15.15.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.15.15.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.2.15.15.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T4.2.15.15.2.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.2.15.15.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.15.15.3.1" style="font-size:90%;">35.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.2.15.15.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.15.15.4.1" style="font-size:90%;">54.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.2.15.15.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.15.15.5.1" style="font-size:90%;">61.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.2.15.15.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.15.15.6.1" style="font-size:90%;">63.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.2.15.15.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.15.15.7.1" style="font-size:90%;">68.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an efficiency benchmark experiment evaluating the performance of various semantic segmentation models under conditions of limited training data.  Specifically, it shows the mean Intersection over Union (mIoU) scores achieved by different self-supervised and supervised models when trained with a reduced number of scenes from the ScanNet, ScanNet200, and S3DIS datasets.  The purpose is to assess how well these models generalize when fewer training examples are available.
> <details>
> <summary>read the caption</summary>
> Table 4: Efficiency benchmark. Semantic segmentation performance with a limited number of scenes in the training set.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T5.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.2.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T5.2.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T5.2.1.1.2" style="padding-left:5.0pt;padding-right:5.0pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.2.1.1.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.1.1.3.1" style="font-size:90%;">BB</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.2.1.1.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.1.1.4.1" style="font-size:90%;">20</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.2.1.1.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.1.1.5.1" style="font-size:90%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.2.1.1.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.1.1.6.1" style="font-size:90%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.2.1.1.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.1.1.7.1" style="font-size:90%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.2.1.1.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.1.1.8.1" style="font-size:90%;">Full</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.2.2.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.2.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.2.3" style="background-color:#EBEBEB;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.3.1" style="font-size:80%;color:#646464;background-color:#EBEBEB;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.2.4" style="background-color:#EBEBEB;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.4.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">41.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.2.5" style="background-color:#EBEBEB;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.5.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">53.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.2.6" style="background-color:#EBEBEB;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.6.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">62.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.2.7" style="background-color:#EBEBEB;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.7.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">65.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.2.8" style="background-color:#EBEBEB;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.8.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">72.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.3.3">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T5.2.3.3.1" style="padding-left:5.0pt;padding-right:5.0pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.3.3.2" style="background-color:#EBEBEB;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.3.3.2.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">Supervised</span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.3.3.3" style="background-color:#EBEBEB;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.3.3.3.1" style="font-size:80%;color:#646464;background-color:#EBEBEB;">HUNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.3.3.4" style="background-color:#EBEBEB;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.3.3.4.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">62.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.3.3.5" style="background-color:#EBEBEB;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.3.3.5.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.3.3.6" style="background-color:#EBEBEB;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.3.3.6.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">73.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.3.3.7" style="background-color:#EBEBEB;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.3.3.7.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">73.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.3.3.8" style="background-color:#EBEBEB;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.3.3.8.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">77.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.2.4.4.1" rowspan="6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.4.4.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T5.2.4.4.1.1.1" style="width:6.1pt;height:13.5pt;vertical-align:-3.7pt;"><span class="ltx_transformed_inner" style="width:13.5pt;transform:translate(-3.68pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T5.2.4.4.1.1.1.1">NN</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.2.4.4.2" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S5.T5.2.4.4.2.1" style="font-size:90%;">MM3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.4.4.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S5.T5.2.4.4.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.4.4.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.4.4.3.1" style="font-size:80%;">PT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.4.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.4.4.4.1" style="font-size:90%;">10.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.4.4.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.4.4.5.1" style="font-size:90%;">11.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.4.4.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.4.4.6.1" style="font-size:90%;">12.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.4.4.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.4.4.7.1" style="font-size:90%;">13.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.4.4.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.4.4.8.1" style="font-size:90%;">19.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.5.5.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S5.T5.2.5.5.1.1" style="font-size:90%;">CSC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S5.T5.2.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.5.5.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.5.5.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.5.5.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.5.5.3.1" style="font-size:90%;">15.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.5.5.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.5.5.4.1" style="font-size:90%;">17.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.5.5.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.5.5.5.1" style="font-size:90%;">18.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.5.5.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.5.5.6.1" style="font-size:90%;">19.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.5.5.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.5.5.7.1" style="font-size:90%;">24.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.6.6.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S5.T5.2.6.6.1.1" style="font-size:90%;">OESSL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="S5.T5.2.6.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.6.6.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.6.6.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.6.6.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.6.6.3.1" style="font-size:90%;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.6.6.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.6.6.4.1" style="font-size:90%;">22.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.6.6.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.6.6.5.1" style="font-size:90%;">24.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.6.6.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.6.6.6.1" style="font-size:90%;">24.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.6.6.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.6.6.7.1" style="font-size:90%;">31.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.7.7.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.7.7.1.1" style="font-size:90%;">MSC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.7.7.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.7.7.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.7.7.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.7.7.3.1" style="font-size:90%;">20.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.7.7.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.7.7.4.1" style="font-size:90%;">22.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.7.7.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.7.7.5.1" style="font-size:90%;">23.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.7.7.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.7.7.6.1" style="font-size:90%;">25.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.7.7.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.7.7.7.1" style="font-size:90%;">31.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.8.8">
<td class="ltx_td ltx_align_center" id="S5.T5.2.8.8.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.8.8.1.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.8.8.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.8.8.2.1" style="font-size:90%;">25.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.8.8.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.8.8.3.1" style="font-size:90%;">27.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.8.8.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.8.8.4.1" style="font-size:90%;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.8.8.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.8.8.5.1" style="font-size:90%;">32.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.8.8.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.8.8.6.1" style="font-size:90%;">39.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.2.9.9.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.9.9.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.9.9.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.9.9.2.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.9.9.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.9.9.3.1" style="font-size:90%;">55.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.9.9.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.9.9.4.1" style="font-size:90%;">60.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.9.9.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.9.9.5.1" style="font-size:90%;">61.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.9.9.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.9.9.6.1" style="font-size:90%;">62.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.9.9.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.9.9.7.1" style="font-size:90%;">65.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T5.2.10.10.1" rowspan="6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.10.10.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T5.2.10.10.1.1.1" style="width:6.1pt;height:25.2pt;vertical-align:-9.5pt;"><span class="ltx_transformed_inner" style="width:25.2pt;transform:translate(-9.5pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T5.2.10.10.1.1.1.1">Linear</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.2.10.10.2" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S5.T5.2.10.10.2.1" style="font-size:90%;">MM3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.10.10.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S5.T5.2.10.10.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.10.10.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.10.10.3.1" style="font-size:80%;">PT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.10.10.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.10.10.4.1" style="font-size:90%;">20.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.10.10.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.10.10.5.1" style="font-size:90%;">24.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.10.10.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.10.10.6.1" style="font-size:90%;">25.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.10.10.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.10.10.7.1" style="font-size:90%;">25.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.10.10.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.10.10.8.1" style="font-size:90%;">26.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.11.11.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S5.T5.2.11.11.1.1" style="font-size:90%;">CSC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.11.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S5.T5.2.11.11.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.11.11.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.11.11.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.11.11.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.11.11.3.1" style="font-size:90%;">23.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.11.11.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.11.11.4.1" style="font-size:90%;">25.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.11.11.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.11.11.5.1" style="font-size:90%;">26.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.11.11.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.11.11.6.1" style="font-size:90%;">26.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.11.11.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.11.11.7.1" style="font-size:90%;">27.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.12.12.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S5.T5.2.12.12.1.1" style="font-size:90%;">OESSL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.12.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="S5.T5.2.12.12.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.12.12.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.12.12.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.12.12.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.12.12.3.1" style="font-size:90%;">30.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.12.12.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.12.12.4.1" style="font-size:90%;">32.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.12.12.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.12.12.5.1" style="font-size:90%;">33.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.12.12.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.12.12.6.1" style="font-size:90%;">33.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.12.12.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.12.12.7.1" style="font-size:90%;">35.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.13.13.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.13.13.1.1" style="font-size:90%;">MSC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.13.13.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.13.13.2.1" style="font-size:80%;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.13.13.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.13.13.3.1" style="font-size:90%;">31.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.13.13.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.13.13.4.1" style="font-size:90%;">34.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.13.13.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.13.13.5.1" style="font-size:90%;">35.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.13.13.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.13.13.6.1" style="font-size:90%;">35.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.13.13.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.13.13.7.1" style="font-size:90%;">37.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.14.14">
<td class="ltx_td ltx_align_center" id="S5.T5.2.14.14.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.14.14.1.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.14.14.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.14.14.2.1" style="font-size:90%;">51.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.14.14.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.14.14.3.1" style="font-size:90%;">55.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.14.14.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.14.14.4.1" style="font-size:90%;">56.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.14.14.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.14.14.5.1" style="font-size:90%;">56.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.14.14.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.14.14.6.1" style="font-size:90%;">58.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T5.2.15.15.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.15.15.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.15.15.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T5.2.15.15.2.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.15.15.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.15.15.3.1" style="font-size:90%;">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.15.15.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.15.15.4.1" style="font-size:90%;">65.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.15.15.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.15.15.5.1" style="font-size:90%;">67.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.15.15.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.15.15.6.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.15.15.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.15.15.7.1" style="font-size:90%;">68.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment evaluating the efficiency of different self-supervised and supervised models for semantic segmentation when only a limited number of annotated points are available per scene. It compares the performance (measured by mean Intersection over Union or mIoU) of various models trained on different subsets of the ScanNet dataset, demonstrating how model performance changes based on the limited amount of labeled data. This is important for assessing the effectiveness of models in scenarios with scarce annotations.
> <details>
> <summary>read the caption</summary>
> Table 5: Efficiency benchmark. Semantic segmentation performance with a limited number of annotated points per scene.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T6.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.2.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T6.2.1.1.1" style="padding-left:4.5pt;padding-right:4.5pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T6.2.1.1.2" style="padding-left:4.5pt;padding-right:4.5pt;"></th>
<td class="ltx_td ltx_border_tt" id="S5.T6.2.1.1.3" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.2.1.1.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.1.1.4.1" style="font-size:90%;">Sem. Seg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T6.2.1.1.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.1.1.5.1" style="font-size:90%;">3D VG</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T6.2.2.2.1" style="padding-left:4.5pt;padding-right:4.5pt;"></th>
<th class="ltx_td ltx_th ltx_th_row" id="S5.T6.2.2.2.2" style="padding-left:4.5pt;padding-right:4.5pt;"></th>
<td class="ltx_td ltx_align_center" id="S5.T6.2.2.2.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.2.2.3.1" style="font-size:90%;">BB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.2.2.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.2.2.4.1" style="font-size:90%;">ScN</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.2.2.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.2.2.5.1" style="font-size:90%;">U</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.2.2.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.2.2.6.1" style="font-size:90%;">M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.2.2.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.2.2.7.1" style="font-size:90%;">O</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.3.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T6.2.3.3.1" style="padding-left:4.5pt;padding-right:4.5pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T6.2.3.3.2" style="padding-left:4.5pt;padding-right:4.5pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.3.3.3" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.3.3.3.1" style="font-size:80%;color:#646464;background-color:#EBEBEB;">SR-UNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.3.3.4" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.3.3.4.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.3.3.5" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.3.3.5.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">78.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.3.3.6" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.3.3.6.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">35.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.3.3.7" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.3.3.7.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">44.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.4.4">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T6.2.4.4.1" style="padding-left:4.5pt;padding-right:4.5pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.2.4.4.2" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.4.4.2.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">Supervised</span></th>
<td class="ltx_td ltx_align_center" id="S5.T6.2.4.4.3" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.4.4.3.1" style="font-size:80%;color:#646464;background-color:#EBEBEB;">HUNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.4.4.4" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.4.4.4.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.4.4.5" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.4.4.5.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">–</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.4.4.6" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.4.4.6.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">–</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.4.4.7" style="background-color:#EBEBEB;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.4.4.7.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">–</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T6.2.5.5.1" rowspan="4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.5.5.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T6.2.5.5.1.1.1" style="width:6.1pt;height:11.4pt;vertical-align:-2.6pt;"><span class="ltx_transformed_inner" style="width:11.4pt;transform:translate(-2.61pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T6.2.5.5.1.1.1.1">2D</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T6.2.5.5.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S5.T6.2.5.5.2.1" style="font-size:90%;">DINOv2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.2.5.5.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a><span class="ltx_text" id="S5.T6.2.5.5.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.5.5.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.5.5.3.1" style="font-size:80%;">ViT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.5.5.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.5.5.4.1" style="font-size:90%;">62.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.5.5.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.5.5.5.1" style="font-size:90%;">87.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.5.5.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.5.5.6.1" style="font-size:90%;">43.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.5.5.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.5.5.7.1" style="font-size:90%;">52.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.2.6.6.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S5.T6.2.6.6.1.1" style="font-size:90%;">LSeg </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.2.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a><span class="ltx_text" id="S5.T6.2.6.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T6.2.6.6.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.6.6.2.1" style="font-size:80%;">ViT</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.6.6.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.6.6.3.1" style="font-size:90%;">47.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.6.6.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.6.6.4.1" style="font-size:90%;">88.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.6.6.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.6.6.5.1" style="font-size:90%;">41.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.6.6.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.6.6.6.1" style="font-size:90%;">50.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.2.7.7.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S5.T6.2.7.7.1.1" style="font-size:90%;">CLIP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.2.7.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a><span class="ltx_text" id="S5.T6.2.7.7.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T6.2.7.7.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.7.7.2.1" style="font-size:80%;">ViT</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.7.7.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.7.7.3.1" style="font-size:90%;">3.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.7.7.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.7.7.4.1" style="font-size:90%;">86.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.7.7.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.7.7.5.1" style="font-size:90%;">41.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.7.7.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.7.7.6.1" style="font-size:90%;">50.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.2.8.8.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S5.T6.2.8.8.1.1" style="font-size:90%;">SD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.2.8.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="S5.T6.2.8.8.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T6.2.8.8.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.8.8.2.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.8.8.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.8.8.3.1" style="font-size:90%;">42.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.8.8.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.8.8.4.1" style="font-size:90%;">86.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.8.8.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.8.8.5.1" style="font-size:90%;">41.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.8.8.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.8.8.6.1" style="font-size:90%;">50.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.9.9">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T6.2.9.9.1" style="padding-left:4.5pt;padding-right:4.5pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T6.2.9.9.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.9.9.2.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.2.9.9.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S5.T6.2.9.9.3.1" style="font-size:80%;">HUNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.2.9.9.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.2.9.9.4.1" style="font-size:90%;">68.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.2.9.9.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.2.9.9.5.1" style="font-size:90%;">87.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.2.9.9.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.2.9.9.6.1" style="font-size:90%;">44.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.2.9.9.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.2.9.9.7.1" style="font-size:90%;">52.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of the proposed self-supervised 3D model against several 2D foundation models on two downstream tasks: semantic segmentation and 3D visual grounding.  It highlights the limitations of using 2D features in 3D scene understanding and demonstrates the superiority of the proposed approach that is trained natively on 3D data.
> <details>
> <summary>read the caption</summary>
> Table 6: 2D Foundation models. Comparison to 2D foundation models on semantic segmentation and 3D visual grounding.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T7.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T7.2.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T7.2.1.1.1" style="padding-left:11.0pt;padding-right:11.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T7.2.1.1.2" style="padding-left:11.0pt;padding-right:11.0pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.2.1.1.3" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.1.1.3.1" style="font-size:90%;">ScN</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.2.1.1.4" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.1.1.4.1" style="font-size:90%;">ScN200</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.2.1.1.5" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.1.1.5.1" style="font-size:90%;">S3DIS</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A2.T7.2.2.2.1" rowspan="8" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.2.2.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A2.T7.2.2.2.1.1.1" style="width:7.9pt;height:48.2pt;vertical-align:-21.9pt;"><span class="ltx_transformed_inner" style="width:48.1pt;transform:translate(-20.11pt,2.63pt) rotate(-90deg) ;">
<span class="ltx_p" id="A2.T7.2.2.2.1.1.1.1">Fine Tuning</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T7.2.2.2.2" style="background-color:#EBEBEB;padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.2.2.2.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">SR-UNet</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.2.2.3" style="background-color:#EBEBEB;padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.2.2.3.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.2.2.4" style="background-color:#EBEBEB;padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.2.2.4.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.2.2.5" style="background-color:#EBEBEB;padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.2.2.5.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">68.2</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T7.2.3.3.1" style="padding-left:11.0pt;padding-right:11.0pt;">
<span class="ltx_text" id="A2.T7.2.3.3.1.1" style="font-size:90%;">       + PC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T7.2.3.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a><span class="ltx_text" id="A2.T7.2.3.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T7.2.3.3.2" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.3.3.2.1" style="font-size:90%;">74.1</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.3.3.3" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.3.3.3.1" style="font-size:90%;">26.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.3.3.4" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.3.3.4.1" style="font-size:90%;">70.3</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T7.2.4.4.1" style="padding-left:11.0pt;padding-right:11.0pt;">
<span class="ltx_text" id="A2.T7.2.4.4.1.1" style="font-size:90%;">       + CSC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T7.2.4.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="A2.T7.2.4.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T7.2.4.4.2" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.4.4.2.1" style="font-size:90%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.4.4.3" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.4.4.3.1" style="font-size:90%;">26.4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.4.4.4" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.4.4.4.1" style="font-size:90%;">72.2</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T7.2.5.5.1" style="padding-left:11.0pt;padding-right:11.0pt;">
<span class="ltx_text" id="A2.T7.2.5.5.1.1" style="font-size:90%;">       + MSC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T7.2.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="A2.T7.2.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T7.2.5.5.2" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.5.5.2.1" style="font-size:90%;">75.3</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.5.5.3" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.5.5.3.1" style="font-size:90%;">28.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.5.5.4" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.5.5.4.1" style="font-size:90%;">–</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T7.2.6.6.1" style="padding-left:11.0pt;padding-right:11.0pt;">
<span class="ltx_text" id="A2.T7.2.6.6.1.1" style="font-size:90%;">       + GC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T7.2.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a><span class="ltx_text" id="A2.T7.2.6.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T7.2.6.6.2" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.6.6.2.1" style="font-size:90%;">75.7</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.6.6.3" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.6.6.3.1" style="font-size:90%;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.6.6.4" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.6.6.4.1" style="font-size:90%;">72.0</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T7.2.7.7.1" style="background-color:#EBEBEB;padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.7.7.1.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">HUNet</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.7.7.2" style="background-color:#EBEBEB;padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.7.7.2.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">77.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.7.7.3" style="background-color:#EBEBEB;padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.7.7.3.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">35.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.7.7.4" style="background-color:#EBEBEB;padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.7.7.4.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">71.3</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T7.2.8.8.1" style="padding-left:11.0pt;padding-right:11.0pt;">
<span class="ltx_text" id="A2.T7.2.8.8.1.1" style="font-size:90%;">       + MSC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T7.2.8.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="A2.T7.2.8.8.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T7.2.8.8.2" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.8.8.2.1" style="font-size:90%;">78.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.8.8.3" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.8.8.3.1" style="font-size:90%;">34.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.8.8.4" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.8.8.4.1" style="font-size:90%;">72.1</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T7.2.9.9.1" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="A2.T7.2.9.9.1.1" style="font-size:90%;">       + Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.2.9.9.2" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.2.9.9.2.1" style="font-size:90%;">78.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.2.9.9.3" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.2.9.9.3.1" style="font-size:90%;">35.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.2.9.9.4" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.2.9.9.4.1" style="font-size:90%;">73.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of fine-tuning various pre-trained self-supervised models on the semantic segmentation task.  It compares the performance improvement after fine-tuning, showing how different pre-training strategies affect the final performance on a downstream task. The table likely includes metrics such as mean Intersection over Union (mIoU) for evaluating the accuracy of the segmentation.
> <details>
> <summary>read the caption</summary>
> Table 7: Fine-tuning. Performance of different pre-trained methods after fine-tuning on the semantic segmentation task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T8.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T8.2.1.1">
<td class="ltx_td ltx_border_tt" id="A2.T8.2.1.1.1" style="padding-left:14.0pt;padding-right:14.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.2.1.1.2" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.1.1.2.1" style="font-size:90%;">mAP@25</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.2.1.1.3" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.1.1.3.1" style="font-size:90%;">mAP@50</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.2.2.2.1" style="background-color:#EBEBEB;padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.2.2.1.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">3DETR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.2.2.2" style="background-color:#EBEBEB;padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.2.2.2.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">62.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.2.2.3" style="background-color:#EBEBEB;padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.2.2.3.1" style="font-size:90%;color:#646464;background-color:#EBEBEB;">37.9</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.3.3">
<td class="ltx_td ltx_align_left" id="A2.T8.2.3.3.1" style="padding-left:14.0pt;padding-right:14.0pt;">
<span class="ltx_text" id="A2.T8.2.3.3.1.1" style="font-size:90%;">        + Point-Bert </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T8.2.3.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a><span class="ltx_text" id="A2.T8.2.3.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.3.3.2" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.3.3.2.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.3.3.3" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.3.3.3.1" style="font-size:90%;">38.3</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.4.4">
<td class="ltx_td ltx_align_left" id="A2.T8.2.4.4.1" style="padding-left:14.0pt;padding-right:14.0pt;">
<span class="ltx_text" id="A2.T8.2.4.4.1.1" style="font-size:90%;">        + Point-MAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T8.2.4.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a><span class="ltx_text" id="A2.T8.2.4.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.4.4.2" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.4.4.2.1" style="font-size:90%;">63.4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.4.4.3" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.4.4.3.1" style="font-size:90%;">40.6</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.5.5">
<td class="ltx_td ltx_align_left" id="A2.T8.2.5.5.1" style="padding-left:14.0pt;padding-right:14.0pt;">
<span class="ltx_text" id="A2.T8.2.5.5.1.1" style="font-size:90%;">        + MaskPoint </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T8.2.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="A2.T8.2.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.5.5.2" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.5.5.2.1" style="font-size:90%;">63.4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.5.5.3" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.5.5.3.1" style="font-size:90%;">40.6</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.6.6">
<td class="ltx_td ltx_align_left" id="A2.T8.2.6.6.1" style="padding-left:14.0pt;padding-right:14.0pt;">
<span class="ltx_text" id="A2.T8.2.6.6.1.1" style="font-size:90%;">        + Point-M2AE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T8.2.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="A2.T8.2.6.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.6.6.2" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.6.6.2.1" style="font-size:90%;">66.3</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.6.6.3" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.6.6.3.1" style="font-size:90%;">48.3</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.7.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.2.7.7.1" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.7.7.1.1" style="font-size:90%;">        + Ours (Lin.)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.7.7.2" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.7.7.2.1" style="font-size:90%;">65.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.7.7.3" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.7.7.3.1" style="font-size:90%;">40.2</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.8.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T8.2.8.8.1" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T8.2.8.8.1.1" style="font-size:90%;">        + Ours (FT)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.2.8.8.2" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.8.8.2.1" style="font-size:90%;">71.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.2.8.8.3" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.8.8.3.1" style="font-size:90%;">52.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of different approaches on the object detection task. Specifically, it compares the performance of using the authors' off-the-shelf features (without fine-tuning) against several object-centric self-supervised methods that have been fine-tuned for the same task. The results are presented in terms of mean Average Precision (mAP) at IoU thresholds of 0.25 and 0.5, providing a comprehensive evaluation of the different feature extraction and training strategies.
> <details>
> <summary>read the caption</summary>
> Table 8: Object detection. Comparison of our off-the-shelf features to fine-tuning object-centric self-supervised methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T9.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T9.2.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T9.2.1.1.1" style="padding-left:7.0pt;padding-right:7.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T9.2.1.1.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.1.1.2.1" style="font-size:90%;">Obj. Det.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T9.2.1.1.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.1.1.3.1" style="font-size:90%;">Sem. Seg.</span></th>
</tr>
<tr class="ltx_tr" id="A2.T9.2.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="A2.T9.2.2.2.1" style="padding-left:7.0pt;padding-right:7.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T9.2.2.2.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.2.2.2.1" style="font-size:90%;">mAP@25</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T9.2.2.2.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.2.2.3.1" style="font-size:90%;">mAP@50</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T9.2.2.2.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.2.2.4.1" style="font-size:90%;">ScN</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T9.2.2.2.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.2.2.5.1" style="font-size:90%;">S3DIS</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T9.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T9.2.3.1.1" style="padding-left:7.0pt;padding-right:7.0pt;">
<span class="ltx_text" id="A2.T9.2.3.1.1.1" style="font-size:90%;">Bridge3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T9.2.3.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="A2.T9.2.3.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.2.3.1.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.3.1.2.1" style="font-size:90%;">65.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.2.3.1.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.3.1.3.1" style="font-size:90%;">44.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.2.3.1.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.3.1.4.1" style="font-size:90%;">73.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.2.3.1.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.3.1.5.1" style="font-size:90%;">70.2</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T9.2.4.2.1" style="padding-left:7.0pt;padding-right:7.0pt;">
<span class="ltx_text" id="A2.T9.2.4.2.1.1" style="font-size:90%;">SAM-MAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T9.2.4.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a><span class="ltx_text" id="A2.T9.2.4.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T9.2.4.2.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.4.2.2.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.2.4.2.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.4.2.3.1" style="font-size:90%;">48.4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.2.4.2.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.4.2.4.1" style="font-size:90%;">75.4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.2.4.2.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.4.2.5.1" style="font-size:90%;">71.8</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T9.2.5.3.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.5.3.1.1" style="font-size:90%;">Ours (Lin.)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.2.5.3.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.5.3.2.1" style="font-size:90%;">65.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.2.5.3.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.5.3.3.1" style="font-size:90%;">40.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.2.5.3.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.5.3.4.1" style="font-size:90%;">68.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.2.5.3.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.5.3.5.1" style="font-size:90%;">59.5</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T9.2.6.4.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A2.T9.2.6.4.1.1" style="font-size:90%;">Ours (FT)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.2.6.4.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.2.6.4.2.1" style="font-size:90%;">71.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.2.6.4.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.2.6.4.3.1" style="font-size:90%;">52.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.2.6.4.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.2.6.4.4.1" style="font-size:90%;">78.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.2.6.4.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.2.6.4.5.1" style="font-size:90%;">73.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different methods for 3D scene understanding that utilize knowledge distillation from 2D foundation models.  It shows the mean Average Precision (mAP) at IoU thresholds of 0.25 and 0.5 for both object detection and semantic segmentation tasks on the ScanNet and S3DIS datasets.  The table allows for a comparison of the proposed method's performance against existing techniques that leverage knowledge from 2D models to improve 3D scene understanding.
> <details>
> <summary>read the caption</summary>
> Table 9: 2D-3D KD. Comparison to methods that rely on knowledge distillation from 2D foundation models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T10.st1.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T10.st1.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.st1.2.1.1.1" style="padding-left:16.0pt;padding-right:16.0pt;"><span class="ltx_text" id="A2.T10.st1.2.1.1.1.1" style="font-size:144%;">     No Mask</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.st1.2.1.1.2" style="padding-left:16.0pt;padding-right:16.0pt;"><span class="ltx_text" id="A2.T10.st1.2.1.1.2.1" style="font-size:144%;">     50.7</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.st1.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.st1.2.2.2.1" style="background-color:#EBEBEB;padding-left:16.0pt;padding-right:16.0pt;">
<span class="ltx_text" id="A2.T10.st1.2.2.2.1.1" style="font-size:144%;">     </span><span class="ltx_text" id="A2.T10.st1.2.2.2.1.2" style="font-size:144%;background-color:#EBEBEB;">Mask</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.st1.2.2.2.2" style="background-color:#EBEBEB;padding-left:16.0pt;padding-right:16.0pt;">
<span class="ltx_text" id="A2.T10.st1.2.2.2.2.1" style="font-size:144%;">     </span><span class="ltx_text ltx_font_bold" id="A2.T10.st1.2.2.2.2.2" style="font-size:144%;background-color:#EBEBEB;">66.8<span class="ltx_text ltx_font_medium" id="A2.T10.st1.2.2.2.2.2.1"></span></span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study on the effect of masking in Masked Scene Modeling.  It compares the performance of semantic segmentation on the ScanNet dataset when using the proposed masking approach versus a version without masking. This demonstrates the importance of the masking strategy for achieving good results in self-supervised learning.
> <details>
> <summary>read the caption</summary>
> (a) Masking. Patch supervision with vs without masking.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T10.st2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T10.st2.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.st2.2.1.1.1" style="padding-left:20.0pt;padding-right:20.0pt;"><span class="ltx_text" id="A2.T10.st2.2.1.1.1.1" style="font-size:144%;">      Last</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.st2.2.1.1.2" style="padding-left:20.0pt;padding-right:20.0pt;"><span class="ltx_text" id="A2.T10.st2.2.1.1.2.1" style="font-size:144%;">      60.5</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.st2.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.st2.2.2.2.1" style="background-color:#EBEBEB;padding-left:20.0pt;padding-right:20.0pt;">
<span class="ltx_text" id="A2.T10.st2.2.2.2.1.1" style="font-size:144%;">      </span><span class="ltx_text" id="A2.T10.st2.2.2.2.1.2" style="font-size:144%;background-color:#EBEBEB;">All</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.st2.2.2.2.2" style="background-color:#EBEBEB;padding-left:20.0pt;padding-right:20.0pt;">
<span class="ltx_text" id="A2.T10.st2.2.2.2.2.1" style="font-size:144%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T10.st2.2.2.2.2.2" style="font-size:144%;background-color:#EBEBEB;">66.8<span class="ltx_text ltx_font_medium" id="A2.T10.st2.2.2.2.2.2.1"></span></span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study on the impact of using different layers in the hierarchical decoder for the loss function. It compares the performance of using only the last layer's output versus using all layers' outputs for loss calculation during training.  The results demonstrate the importance of incorporating hierarchical supervision across all layers rather than just the final layer, which significantly improves overall model performance.
> <details>
> <summary>read the caption</summary>
> (b) Supervision. Layers in the hierarchy used in the loss.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T10.st3.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T10.st3.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.st3.2.1.1.1" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T10.st3.2.1.1.1.1" style="font-size:144%;">top-down</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.st3.2.1.1.2" style="padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T10.st3.2.1.1.2.1" style="font-size:144%;">62.4</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.st3.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.st3.2.2.2.1" style="background-color:#EBEBEB;padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text" id="A2.T10.st3.2.2.2.1.1" style="font-size:144%;background-color:#EBEBEB;">bottom-up</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.st3.2.2.2.2" style="background-color:#EBEBEB;padding-left:14.0pt;padding-right:14.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T10.st3.2.2.2.2.1" style="font-size:144%;background-color:#EBEBEB;">66.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of two different masking strategies in a self-supervised learning framework for 3D scene understanding.  A *bottom-up* approach starts masking at lower levels (coarser resolution) of the hierarchy and progressively refines the masks at higher levels (finer resolution). A *top-down* approach does the opposite, starting with the higher resolution level and propagating masks down the hierarchy. The table shows that the bottom-up approach yields significantly better results on the semantic segmentation task of the ScanNet dataset.
> <details>
> <summary>read the caption</summary>
> (c) Mask strategy. Masking hierarchy top-down vs bottom-up.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T10.st4.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T10.st4.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.st4.2.1.1.1" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A2.T10.st4.2.1.1.1.1" style="font-size:144%;">SparseConv</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.st4.2.1.1.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A2.T10.st4.2.1.1.2.1" style="font-size:144%;">61.8</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.st4.2.2.2">
<td class="ltx_td ltx_align_center" id="A2.T10.st4.2.2.2.1" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A2.T10.st4.2.2.2.1.1" style="font-size:144%;">MHA</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.st4.2.2.2.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A2.T10.st4.2.2.2.2.1" style="font-size:144%;">52.3</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.st4.2.3.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.st4.2.3.3.1" style="background-color:#EBEBEB;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="A2.T10.st4.2.3.3.1.1" style="font-size:144%;background-color:#EBEBEB;">HUNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.st4.2.3.3.2" style="background-color:#EBEBEB;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T10.st4.2.3.3.2.1" style="font-size:144%;background-color:#EBEBEB;">66.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study result of using different model architectures for the task of semantic segmentation.  It compares the performance of models using only Sparse Convolution layers, Multi-Head Attention (MHA) layers, and a hybrid architecture which combines both Sparse Convolution and MHA layers. The table shows that the hybrid architecture which is used in the main paper outperforms others by a large margin.
> <details>
> <summary>read the caption</summary>
> (d) Model. Types of model used.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T11.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T11.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T11.2.1.1.1" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.1.1.1.1" style="font-size:144%;">        Layer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T11.2.1.1.2" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.1.1.2.1" style="font-size:144%;">        Alone</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T11.2.1.1.3" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.1.1.3.1" style="font-size:144%;">        Remove</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T11.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T11.2.2.1.1" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.2.1.1.1" style="font-size:144%;">        1</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.2.2.1.2" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.2.1.2.1" style="font-size:144%;">        28.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.2.2.1.3" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.2.1.3.1" style="font-size:144%;">        67.1</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T11.2.3.2.1" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.3.2.1.1" style="font-size:144%;">        2</span></th>
<td class="ltx_td ltx_align_center" id="A3.T11.2.3.2.2" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.3.2.2.1" style="font-size:144%;">        43.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.2.3.2.3" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.3.2.3.1" style="font-size:144%;">        67.0</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.2.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T11.2.4.3.1" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.4.3.1.1" style="font-size:144%;">        3</span></th>
<td class="ltx_td ltx_align_center" id="A3.T11.2.4.3.2" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.4.3.2.1" style="font-size:144%;">        54.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.2.4.3.3" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.4.3.3.1" style="font-size:144%;">        67.0</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.2.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T11.2.5.4.1" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.5.4.1.1" style="font-size:144%;">        4</span></th>
<td class="ltx_td ltx_align_center" id="A3.T11.2.5.4.2" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.5.4.2.1" style="font-size:144%;">        62.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.2.5.4.3" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.5.4.3.1" style="font-size:144%;">        66.6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.2.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T11.2.6.5.1" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.6.5.1.1" style="font-size:144%;">        5</span></th>
<td class="ltx_td ltx_align_center" id="A3.T11.2.6.5.2" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.6.5.2.1" style="font-size:144%;">        62.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.2.6.5.3" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.6.5.3.1" style="font-size:144%;">        64.4</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.2.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A3.T11.2.7.6.1" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.7.6.1.1" style="font-size:144%;">        All</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" colspan="2" id="A3.T11.2.7.6.2" style="padding-left:26.0pt;padding-right:26.0pt;"><span class="ltx_text" id="A3.T11.2.7.6.2.1" style="font-size:144%;">        68.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted to evaluate the impact of different components within the proposed Masked Scene Modeling framework.  Specifically, it examines the contribution of key design choices on the task of semantic segmentation using the ScanNet dataset. The studies isolate the effects of various aspects, allowing for a quantitative assessment of their individual influence on overall performance.  This analysis helps to understand the effectiveness and necessity of each component in the framework.
> <details>
> <summary>read the caption</summary>
> Table 10: Ablation studies. Evaluation of the different components of our framework on the task of semantic segmentation on ScanNet.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T12.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T12.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A4.T12.2.1.1.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.1.1.1.1" style="font-size:144%;">Config</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.2.1.1.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.1.1.2.1" style="font-size:144%;">Value</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T12.2.2.2.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.2.2.1.1" style="font-size:144%;">Voxel size</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.2.2.2.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.2.2.2.1" style="font-size:144%;">2 cm</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.3.3.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.3.3.1.1" style="font-size:144%;">Norm layers</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.3.3.2" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="A4.T12.2.3.3.2.1" style="font-size:144%;">RMSNorm </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T12.2.3.3.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a><span class="ltx_text" id="A4.T12.2.3.3.2.3.2" style="font-size:144%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.4.4.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.4.4.1.1" style="font-size:144%;">Downsample</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.4.4.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.4.4.2.1" style="font-size:144%;">Strided SparseConv</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.5.5.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.5.5.1.1" style="font-size:144%;">Upsample</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.5.5.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.5.5.2.1" style="font-size:144%;">Transpose SparseConv</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.6.6.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.6.6.1.1" style="font-size:144%;">Serialization</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.6.6.2" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="A4.T12.2.6.6.2.1" style="font-size:144%;">Z + TZ + H + TH </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T12.2.6.6.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a><span class="ltx_text" id="A4.T12.2.6.6.2.3.2" style="font-size:144%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.7.7.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.7.7.1.1" style="font-size:144%;">Block bias</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.7.7.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.7.7.2.1" style="font-size:144%;">False</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.8.8.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.8.8.1.1" style="font-size:144%;">Att. drop</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.8.8.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.8.8.2.1" style="font-size:144%;">0.1</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.9.9.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.9.9.1.1" style="font-size:144%;">Drop path</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.9.9.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.9.9.2.1" style="font-size:144%;">0.4</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.10.10.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.10.10.1.1" style="font-size:144%;">Activation func.</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.10.10.2" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="A4.T12.2.10.10.2.1" style="font-size:144%;">GELU </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T12.2.10.10.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="A4.T12.2.10.10.2.3.2" style="font-size:144%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.11.11.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.11.11.1.1" style="font-size:144%;">FF layer</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.11.11.2" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="A4.T12.2.11.11.2.1" style="font-size:144%;">GEGLU </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T12.2.11.11.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="A4.T12.2.11.11.2.3.2" style="font-size:144%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.12.12.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.12.12.1.1" style="font-size:144%;">FF ratio</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.12.12.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.12.12.2.1" style="font-size:144%;">4</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.13.13.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.13.13.1.1" style="font-size:144%;">Enc. channels</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.13.13.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.13.13.2.1" style="font-size:144%;">[32, 64, 128, 256, 384]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.14.14.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.14.14.1.1" style="font-size:144%;">Enc. ResNet</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.14.14.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.14.14.2.1" style="font-size:144%;">[2, 2, 2, 2, 2]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.15.15.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.15.15.1.1" style="font-size:144%;">Enc. MHA</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.15.15.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.15.15.2.1" style="font-size:144%;">[0, 0, 0, 2, 2]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.16.16.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.16.16.1.1" style="font-size:144%;">Enc. MHA Window</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.16.16.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.16.16.2.1" style="font-size:144%;">[0, 0, 0, 1024, 1024]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.17.17.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.17.17.1.1" style="font-size:144%;">Enc. MHA # Heads</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.17.17.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.17.17.2.1" style="font-size:144%;">[0, 0, 0, 32, 48]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.18.18.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.18.18.1.1" style="font-size:144%;">Dec. channels</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.18.18.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.18.18.2.1" style="font-size:144%;">[64, 96, 128, 256, 384]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.19.19.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.19.19.1.1" style="font-size:144%;">Dec. ResNet</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.19.19.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.19.19.2.1" style="font-size:144%;">[2, 2, 2, 2, 2]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.20.20.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.20.20.1.1" style="font-size:144%;">Dec. MHA</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.20.20.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.20.20.2.1" style="font-size:144%;">[0, 0, 0, 2, 2]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T12.2.21.21.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.21.21.1.1" style="font-size:144%;">Dec. MHA Window</span></th>
<td class="ltx_td ltx_align_center" id="A4.T12.2.21.21.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.21.21.2.1" style="font-size:144%;">[0, 0, 0, 1024, 1024]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.2.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T12.2.22.22.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.22.22.1.1" style="font-size:144%;">Enc. MHA # Heads</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.2.22.22.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T12.2.22.22.2.1" style="font-size:144%;">[0, 0, 0, 32, 48]</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results on the impact of using different layers of a hierarchical model for feature extraction in a linear probing setup.  It compares two scenarios: using only one layer ('Alone') versus using all layers except one ('Remove'). The results show the performance of the linear probing task, likely semantic segmentation, for each layer configuration, illustrating the relative importance of each layer in the hierarchical representation.
> <details>
> <summary>read the caption</summary>
> Table 11: Layer importance. Comparison of the performance on the linear probing setup when only one layer is used (Alone) or when all layers except one are used (Remove).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T13.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T13.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A4.T13.2.1.1.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.1.1.1.1" style="font-size:144%;">Config</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.2.1.1.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.1.1.2.1" style="font-size:144%;">Value</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T13.2.2.2.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.2.2.1.1" style="font-size:144%;">Voxel size</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.2.2.2.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.2.2.2.1" style="font-size:144%;">4 cm</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.3.3.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.3.3.1.1" style="font-size:144%;">Norm layers</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.3.3.2" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="A4.T13.2.3.3.2.1" style="font-size:144%;">RMSNorm </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T13.2.3.3.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a><span class="ltx_text" id="A4.T13.2.3.3.2.3.2" style="font-size:144%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.4.4.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.4.4.1.1" style="font-size:144%;">Downsample</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.4.4.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.4.4.2.1" style="font-size:144%;">Strided SparseConv</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.5.5.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.5.5.1.1" style="font-size:144%;">Upsample</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.5.5.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.5.5.2.1" style="font-size:144%;">Transpose SparseConv</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.6.6.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.6.6.1.1" style="font-size:144%;">Serialization</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.6.6.2" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="A4.T13.2.6.6.2.1" style="font-size:144%;">Z + TZ + H + TH </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T13.2.6.6.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a><span class="ltx_text" id="A4.T13.2.6.6.2.3.2" style="font-size:144%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.7.7.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.7.7.1.1" style="font-size:144%;">Block bias</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.7.7.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.7.7.2.1" style="font-size:144%;">False</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.8.8.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.8.8.1.1" style="font-size:144%;">Att. drop</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.8.8.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.8.8.2.1" style="font-size:144%;">0.1</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.9.9.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.9.9.1.1" style="font-size:144%;">Drop path</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.9.9.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.9.9.2.1" style="font-size:144%;">0.4</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.10.10.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.10.10.1.1" style="font-size:144%;">Activation func.</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.10.10.2" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="A4.T13.2.10.10.2.1" style="font-size:144%;">GELU </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T13.2.10.10.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="A4.T13.2.10.10.2.3.2" style="font-size:144%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.11.11.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.11.11.1.1" style="font-size:144%;">FF layer</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.11.11.2" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="A4.T13.2.11.11.2.1" style="font-size:144%;">GEGLU </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T13.2.11.11.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="A4.T13.2.11.11.2.3.2" style="font-size:144%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.12.12.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.12.12.1.1" style="font-size:144%;">FF Ratio</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.12.12.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.12.12.2.1" style="font-size:144%;">4</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.13.13.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.13.13.1.1" style="font-size:144%;">Enc. channels</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.13.13.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.13.13.2.1" style="font-size:144%;">[64, 128, 256, 384]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.14.14.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.14.14.1.1" style="font-size:144%;">Enc. ResNet</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.14.14.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.14.14.2.1" style="font-size:144%;">[2, 2, 2, 2]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.15.15.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.15.15.1.1" style="font-size:144%;">Enc. MHA</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.15.15.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.15.15.2.1" style="font-size:144%;">[0, 0, 2, 2]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.16.16.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.16.16.1.1" style="font-size:144%;">Enc. MHA Window</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.16.16.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.16.16.2.1" style="font-size:144%;">[0, 0, 1024, 1024]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.17.17.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.17.17.1.1" style="font-size:144%;">Enc. MHA # Heads</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.17.17.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.17.17.2.1" style="font-size:144%;">[0, 0, 32, 48]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.18.18.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.18.18.1.1" style="font-size:144%;">Dec. channels</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.18.18.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.18.18.2.1" style="font-size:144%;">[96, 128, 256, 384]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.19.19.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.19.19.1.1" style="font-size:144%;">Dec. ResNet</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.19.19.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.19.19.2.1" style="font-size:144%;">[2, 2, 2, 2]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.20.20.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.20.20.1.1" style="font-size:144%;">Dec. MHA</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.20.20.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.20.20.2.1" style="font-size:144%;">[0, 0, 2, 2]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T13.2.21.21.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.21.21.1.1" style="font-size:144%;">Dec. MHA Window</span></th>
<td class="ltx_td ltx_align_center" id="A4.T13.2.21.21.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.21.21.2.1" style="font-size:144%;">[0, 0, 1024, 1024]</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.2.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T13.2.22.22.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.22.22.1.1" style="font-size:144%;">Enc. MHA # Heads</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.2.22.22.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="A4.T13.2.22.22.2.1" style="font-size:144%;">[0, 0, 32, 48]</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters and architectural specifications of the Hybrid UNet (HUNet) model used in the experiments. It breaks down the configuration into various categories, including voxel size, normalization layers, downsampling and upsampling methods, serialization strategies, activation functions, and the number of channels and ResNet and Multi-Head Attention (MHA) blocks in both the encoder and decoder parts of the model.  These parameters are crucial for understanding the model's structure and how it processes 3D scene data.
> <details>
> <summary>read the caption</summary>
> Table 12: Model configuration.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T14.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T14.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A4.T14.1.2.1.1" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.2.1.1.1" style="font-size:144%;">         Config</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T14.1.2.1.2" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.2.1.2.1" style="font-size:144%;">         Value</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T14.1.3.2.1" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.3.2.1.1" style="font-size:144%;">         Optimizer</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.1.3.2.2" style="padding-left:28.0pt;padding-right:28.0pt;">
<span class="ltx_text" id="A4.T14.1.3.2.2.1" style="font-size:144%;">         AdamW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T14.1.3.2.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="A4.T14.1.3.2.2.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="A4.T14.1.3.2.2.4" style="font-size:144%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T14.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T14.1.4.3.1" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.4.3.1.1" style="font-size:144%;">         Betas</span></th>
<td class="ltx_td ltx_align_center" id="A4.T14.1.4.3.2" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.4.3.2.1" style="font-size:144%;">         (0.9, 0.95)</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T14.1.5.4.1" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.5.4.1.1" style="font-size:144%;">         Weight decay</span></th>
<td class="ltx_td ltx_align_center" id="A4.T14.1.5.4.2" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.5.4.2.1" style="font-size:144%;">         0.05</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T14.1.6.5.1" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.6.5.1.1" style="font-size:144%;">         Learning rate</span></th>
<td class="ltx_td ltx_align_center" id="A4.T14.1.6.5.2" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.6.5.2.1" style="font-size:144%;">         0.0015</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T14.1.7.6.1" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.7.6.1.1" style="font-size:144%;">         LR Scheduler</span></th>
<td class="ltx_td ltx_align_center" id="A4.T14.1.7.6.2" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.7.6.2.1" style="font-size:144%;">         Cosine</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T14.1.8.7.1" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.8.7.1.1" style="font-size:144%;">         Batch size</span></th>
<td class="ltx_td ltx_align_center" id="A4.T14.1.8.7.2" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.8.7.2.1" style="font-size:144%;">         12</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T14.1.9.8.1" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.9.8.1.1" style="font-size:144%;">         Epochs</span></th>
<td class="ltx_td ltx_align_center" id="A4.T14.1.9.8.2" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.9.8.2.1" style="font-size:144%;">         1800</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T14.1.10.9.1" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.10.9.1.1" style="font-size:144%;">         Warmup epochs</span></th>
<td class="ltx_td ltx_align_center" id="A4.T14.1.10.9.2" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.10.9.2.1" style="font-size:144%;">         60</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T14.1.11.10.1" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.11.10.1.1" style="font-size:144%;">         Crop size</span></th>
<td class="ltx_td ltx_align_center" id="A4.T14.1.11.10.2" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.11.10.2.1" style="font-size:144%;">         240000</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T14.1.12.11.1" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.12.11.1.1" style="font-size:144%;">         Mask Ratio</span></th>
<td class="ltx_td ltx_align_center" id="A4.T14.1.12.11.2" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.12.11.2.1" style="font-size:144%;">         0.4</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T14.1.1.2" style="padding-left:28.0pt;padding-right:28.0pt;"><span class="ltx_text" id="A4.T14.1.1.2.1" style="font-size:144%;">         Teacher mom.</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T14.1.1.1" style="padding-left:28.0pt;padding-right:28.0pt;">
<span class="ltx_text" id="A4.T14.1.1.1.1" style="font-size:144%;">         0.996 </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="A4.T14.1.1.1.m1.1"><semantics id="A4.T14.1.1.1.m1.1a"><mo id="A4.T14.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="A4.T14.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A4.T14.1.1.1.m1.1b"><ci id="A4.T14.1.1.1.m1.1.1.cmml" xref="A4.T14.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T14.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="A4.T14.1.1.1.2" style="font-size:144%;"> 1.0</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the specific hyperparameters and architectural configurations used in the ablation studies of the Masked Scene Modeling framework.  It shows the values for various parameters such as voxel size, normalization layers, downsampling and upsampling methods, serialization techniques, activation functions, and the number of channels and ResNet/MHA blocks used in both the encoder and decoder parts of the model.  The purpose is to allow for a precise comparison of the model's performance when altering each individual component to analyze their individual impact on the overall performance.
> <details>
> <summary>read the caption</summary>
> Table 13: Model configuration for ablation studies.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T15.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T15.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A4.T15.2.1.1.1"><span class="ltx_text" id="A4.T15.2.1.1.1.1" style="font-size:144%;">Config</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A4.T15.2.1.1.2"><span class="ltx_text" id="A4.T15.2.1.1.2.1" style="font-size:144%;">Value</span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.2.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="A4.T15.2.2.2.1"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.2.2.2.2"><span class="ltx_text" id="A4.T15.2.2.2.2.1" style="font-size:144%;">ScanNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.2.2.2.3"><span class="ltx_text" id="A4.T15.2.2.2.3.1" style="font-size:144%;">ScanNet200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.2.2.2.4"><span class="ltx_text" id="A4.T15.2.2.2.4.1" style="font-size:144%;">S3DIS</span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T15.2.3.3.1"><span class="ltx_text" id="A4.T15.2.3.3.1.1" style="font-size:144%;">Optimizer</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A4.T15.2.3.3.2">
<span class="ltx_text" id="A4.T15.2.3.3.2.1" style="font-size:144%;">AdamW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T15.2.3.3.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="A4.T15.2.3.3.2.3.2" style="font-size:144%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T15.2.4.4.1"><span class="ltx_text" id="A4.T15.2.4.4.1.1" style="font-size:144%;">Betas</span></th>
<td class="ltx_td ltx_align_center" colspan="3" id="A4.T15.2.4.4.2"><span class="ltx_text" id="A4.T15.2.4.4.2.1" style="font-size:144%;">(0.9, 0.95)</span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T15.2.5.5.1"><span class="ltx_text" id="A4.T15.2.5.5.1.1" style="font-size:144%;">Weight decay</span></th>
<td class="ltx_td ltx_align_center" colspan="3" id="A4.T15.2.5.5.2"><span class="ltx_text" id="A4.T15.2.5.5.2.1" style="font-size:144%;">0.01</span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T15.2.6.6.1"><span class="ltx_text" id="A4.T15.2.6.6.1.1" style="font-size:144%;">Learning rate</span></th>
<td class="ltx_td ltx_align_center" colspan="3" id="A4.T15.2.6.6.2"><span class="ltx_text" id="A4.T15.2.6.6.2.1" style="font-size:144%;">0.01</span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T15.2.7.7.1"><span class="ltx_text" id="A4.T15.2.7.7.1.1" style="font-size:144%;">LR Scheduler</span></th>
<td class="ltx_td ltx_align_center" colspan="3" id="A4.T15.2.7.7.2"><span class="ltx_text" id="A4.T15.2.7.7.2.1" style="font-size:144%;">Cosine</span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.2.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T15.2.8.8.1"><span class="ltx_text" id="A4.T15.2.8.8.1.1" style="font-size:144%;">Batch size</span></th>
<td class="ltx_td ltx_align_center" colspan="3" id="A4.T15.2.8.8.2"><span class="ltx_text" id="A4.T15.2.8.8.2.1" style="font-size:144%;">8</span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T15.2.9.9.1"><span class="ltx_text" id="A4.T15.2.9.9.1.1" style="font-size:144%;">Epochs</span></th>
<td class="ltx_td ltx_align_center" id="A4.T15.2.9.9.2"><span class="ltx_text" id="A4.T15.2.9.9.2.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center" id="A4.T15.2.9.9.3"><span class="ltx_text" id="A4.T15.2.9.9.3.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center" id="A4.T15.2.9.9.4"><span class="ltx_text" id="A4.T15.2.9.9.4.1" style="font-size:144%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.2.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T15.2.10.10.1"><span class="ltx_text" id="A4.T15.2.10.10.1.1" style="font-size:144%;">Warmup epochs</span></th>
<td class="ltx_td ltx_align_center" id="A4.T15.2.10.10.2"><span class="ltx_text" id="A4.T15.2.10.10.2.1" style="font-size:144%;">2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T15.2.10.10.3"><span class="ltx_text" id="A4.T15.2.10.10.3.1" style="font-size:144%;">2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T15.2.10.10.4"><span class="ltx_text" id="A4.T15.2.10.10.4.1" style="font-size:144%;">1</span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.2.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T15.2.11.11.1"><span class="ltx_text" id="A4.T15.2.11.11.1.1" style="font-size:144%;">Crop size</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T15.2.11.11.2"><span class="ltx_text" id="A4.T15.2.11.11.2.1" style="font-size:144%;">120000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T15.2.11.11.3"><span class="ltx_text" id="A4.T15.2.11.11.3.1" style="font-size:144%;">120000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T15.2.11.11.4"><span class="ltx_text" id="A4.T15.2.11.11.4.1" style="font-size:144%;">200000</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used during the self-supervised training phase of the Masked Scene Modeling framework.  It includes settings for the optimizer (AdamW), weight decay, learning rate, learning rate scheduler (Cosine), batch size, number of epochs, warmup epochs, crop size, masking ratio, and teacher momentum.
> <details>
> <summary>read the caption</summary>
> Table 14: Self-supervised training configuration.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T16.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T16.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A4.T16.2.1.1.1"><span class="ltx_text" id="A4.T16.2.1.1.1.1" style="font-size:144%;">Config</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A4.T16.2.1.1.2"><span class="ltx_text" id="A4.T16.2.1.1.2.1" style="font-size:144%;">Value</span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.2.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="A4.T16.2.2.2.1"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.2.2.2.2"><span class="ltx_text" id="A4.T16.2.2.2.2.1" style="font-size:144%;">ScanNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.2.2.2.3"><span class="ltx_text" id="A4.T16.2.2.2.3.1" style="font-size:144%;">ScanNet200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.2.2.2.4"><span class="ltx_text" id="A4.T16.2.2.2.4.1" style="font-size:144%;">S3DIS</span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T16.2.3.3.1"><span class="ltx_text" id="A4.T16.2.3.3.1.1" style="font-size:144%;">Optimizer</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A4.T16.2.3.3.2"><span class="ltx_text" id="A4.T16.2.3.3.2.1" style="font-size:144%;">SGD</span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T16.2.4.4.1"><span class="ltx_text" id="A4.T16.2.4.4.1.1" style="font-size:144%;">Momentum</span></th>
<td class="ltx_td ltx_align_center" colspan="3" id="A4.T16.2.4.4.2"><span class="ltx_text" id="A4.T16.2.4.4.2.1" style="font-size:144%;">0.9</span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T16.2.5.5.1"><span class="ltx_text" id="A4.T16.2.5.5.1.1" style="font-size:144%;">Weight decay</span></th>
<td class="ltx_td ltx_align_center" colspan="3" id="A4.T16.2.5.5.2"><span class="ltx_text" id="A4.T16.2.5.5.2.1" style="font-size:144%;">0.0001</span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T16.2.6.6.1"><span class="ltx_text" id="A4.T16.2.6.6.1.1" style="font-size:144%;">Learning rate</span></th>
<td class="ltx_td ltx_align_center" colspan="3" id="A4.T16.2.6.6.2"><span class="ltx_text" id="A4.T16.2.6.6.2.1" style="font-size:144%;">0.1</span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T16.2.7.7.1"><span class="ltx_text" id="A4.T16.2.7.7.1.1" style="font-size:144%;">LR Scheduler</span></th>
<td class="ltx_td ltx_align_center" colspan="3" id="A4.T16.2.7.7.2"><span class="ltx_text" id="A4.T16.2.7.7.2.1" style="font-size:144%;">PolyR</span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.2.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T16.2.8.8.1"><span class="ltx_text" id="A4.T16.2.8.8.1.1" style="font-size:144%;">Batch size</span></th>
<td class="ltx_td ltx_align_center" id="A4.T16.2.8.8.2"><span class="ltx_text" id="A4.T16.2.8.8.2.1" style="font-size:144%;">12</span></td>
<td class="ltx_td ltx_align_center" id="A4.T16.2.8.8.3"><span class="ltx_text" id="A4.T16.2.8.8.3.1" style="font-size:144%;">12</span></td>
<td class="ltx_td ltx_align_center" id="A4.T16.2.8.8.4"><span class="ltx_text" id="A4.T16.2.8.8.4.1" style="font-size:144%;">8</span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T16.2.9.9.1"><span class="ltx_text" id="A4.T16.2.9.9.1.1" style="font-size:144%;">Epochs</span></th>
<td class="ltx_td ltx_align_center" id="A4.T16.2.9.9.2"><span class="ltx_text" id="A4.T16.2.9.9.2.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center" id="A4.T16.2.9.9.3"><span class="ltx_text" id="A4.T16.2.9.9.3.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center" id="A4.T16.2.9.9.4"><span class="ltx_text" id="A4.T16.2.9.9.4.1" style="font-size:144%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.2.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T16.2.10.10.1"><span class="ltx_text" id="A4.T16.2.10.10.1.1" style="font-size:144%;">Crop size</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T16.2.10.10.2"><span class="ltx_text" id="A4.T16.2.10.10.2.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T16.2.10.10.3"><span class="ltx_text" id="A4.T16.2.10.10.3.1" style="font-size:144%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T16.2.10.10.4"><span class="ltx_text" id="A4.T16.2.10.10.4.1" style="font-size:144%;">200000</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for the linear probing experiments conducted on the semantic segmentation task. It specifies the optimizer used (SGD), momentum (0.9), weight decay (0.0001), learning rate (0.1), learning rate scheduler (PolyR), batch size (12 for ScanNet and ScanNet200, 8 for S3DIS), number of epochs (200 for ScanNet and ScanNet200, 100 for S3DIS), and crop size (200000 for all datasets). These settings were applied separately to the ScanNet, ScanNet200, and S3DIS datasets, demonstrating dataset-specific configurations for optimal performance in the linear probing experiments for semantic segmentation.
> <details>
> <summary>read the caption</summary>
> Table 15: Linear probing config. for semantic segmentation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T17.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T17.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A4.T17.2.1.1.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.1.1.1.1" style="font-size:144%;">        Config</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T17.2.1.1.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.1.1.2.1" style="font-size:144%;">        Value</span></td>
</tr>
<tr class="ltx_tr" id="A4.T17.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T17.2.2.2.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.2.2.1.1" style="font-size:144%;">        Optimizer</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.2.2.2.2" style="padding-left:25.0pt;padding-right:25.0pt;">
<span class="ltx_text" id="A4.T17.2.2.2.2.1" style="font-size:144%;">        AdamW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T17.2.2.2.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="A4.T17.2.2.2.2.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="A4.T17.2.2.2.2.4" style="font-size:144%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T17.2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T17.2.3.3.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.3.3.1.1" style="font-size:144%;">        Betas</span></th>
<td class="ltx_td ltx_align_center" id="A4.T17.2.3.3.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.3.3.2.1" style="font-size:144%;">        (0.9, 0.95)</span></td>
</tr>
<tr class="ltx_tr" id="A4.T17.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T17.2.4.4.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.4.4.1.1" style="font-size:144%;">        Weight decay</span></th>
<td class="ltx_td ltx_align_center" id="A4.T17.2.4.4.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.4.4.2.1" style="font-size:144%;">        0.00001</span></td>
</tr>
<tr class="ltx_tr" id="A4.T17.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T17.2.5.5.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.5.5.1.1" style="font-size:144%;">        Learning rate</span></th>
<td class="ltx_td ltx_align_center" id="A4.T17.2.5.5.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.5.5.2.1" style="font-size:144%;">        0.0005</span></td>
</tr>
<tr class="ltx_tr" id="A4.T17.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T17.2.6.6.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.6.6.1.1" style="font-size:144%;">        LR Scheduler</span></th>
<td class="ltx_td ltx_align_center" id="A4.T17.2.6.6.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.6.6.2.1" style="font-size:144%;">        Cosine</span></td>
</tr>
<tr class="ltx_tr" id="A4.T17.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T17.2.7.7.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.7.7.1.1" style="font-size:144%;">        Batch size</span></th>
<td class="ltx_td ltx_align_center" id="A4.T17.2.7.7.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.7.7.2.1" style="font-size:144%;">        12</span></td>
</tr>
<tr class="ltx_tr" id="A4.T17.2.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T17.2.8.8.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.8.8.1.1" style="font-size:144%;">        Epochs</span></th>
<td class="ltx_td ltx_align_center" id="A4.T17.2.8.8.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.8.8.2.1" style="font-size:144%;">        10</span></td>
</tr>
<tr class="ltx_tr" id="A4.T17.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T17.2.9.9.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.9.9.1.1" style="font-size:144%;">        Warmup epochs</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T17.2.9.9.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T17.2.9.9.2.1" style="font-size:144%;">        1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for the linear probing experiments on the instance segmentation task.  It includes settings such as optimizer, momentum, weight decay, learning rate, learning rate scheduler, batch size, number of epochs, and crop size, specifying these values for the ScanNet, ScanNet200, and S3DIS datasets. These settings are crucial for understanding how the model was evaluated and can be compared to the parameters used in other experiments within the paper.
> <details>
> <summary>read the caption</summary>
> Table 16: Linear probing config. for instance segmentation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T18.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T18.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A4.T18.2.1.1.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.1.1.1.1" style="font-size:144%;">        Config</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T18.2.1.1.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.1.1.2.1" style="font-size:144%;">        Value</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T18.2.2.2.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.2.2.1.1" style="font-size:144%;">        Optimizer</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.2.2.2.2" style="padding-left:25.0pt;padding-right:25.0pt;">
<span class="ltx_text" id="A4.T18.2.2.2.2.1" style="font-size:144%;">        AdamW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T18.2.2.2.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="A4.T18.2.2.2.2.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="A4.T18.2.2.2.2.4" style="font-size:144%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T18.2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T18.2.3.3.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.3.3.1.1" style="font-size:144%;">        Betas</span></th>
<td class="ltx_td ltx_align_center" id="A4.T18.2.3.3.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.3.3.2.1" style="font-size:144%;">        (0.9, 0.95)</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T18.2.4.4.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.4.4.1.1" style="font-size:144%;">        Weight decay</span></th>
<td class="ltx_td ltx_align_center" id="A4.T18.2.4.4.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.4.4.2.1" style="font-size:144%;">        0.1</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T18.2.5.5.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.5.5.1.1" style="font-size:144%;">        Learning rate</span></th>
<td class="ltx_td ltx_align_center" id="A4.T18.2.5.5.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.5.5.2.1" style="font-size:144%;">        1e-6</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T18.2.6.6.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.6.6.1.1" style="font-size:144%;">        LR Scheduler</span></th>
<td class="ltx_td ltx_align_center" id="A4.T18.2.6.6.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.6.6.2.1" style="font-size:144%;">        Cosine</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T18.2.7.7.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.7.7.1.1" style="font-size:144%;">        Batch size</span></th>
<td class="ltx_td ltx_align_center" id="A4.T18.2.7.7.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.7.7.2.1" style="font-size:144%;">        24</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.2.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T18.2.8.8.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.8.8.1.1" style="font-size:144%;">        Epochs</span></th>
<td class="ltx_td ltx_align_center" id="A4.T18.2.8.8.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.8.8.2.1" style="font-size:144%;">        1080</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T18.2.9.9.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.9.9.1.1" style="font-size:144%;">        Warmup epochs</span></th>
<td class="ltx_td ltx_align_center" id="A4.T18.2.9.9.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.9.9.2.1" style="font-size:144%;">        9</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.2.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T18.2.10.10.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.10.10.1.1" style="font-size:144%;">        Clip gradients</span></th>
<td class="ltx_td ltx_align_center" id="A4.T18.2.10.10.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.10.10.2.1" style="font-size:144%;">        0.1</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.2.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T18.2.11.11.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.11.11.1.1" style="font-size:144%;">        # queries</span></th>
<td class="ltx_td ltx_align_center" id="A4.T18.2.11.11.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.11.11.2.1" style="font-size:144%;">        256</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.2.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T18.2.12.12.1" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.12.12.1.1" style="font-size:144%;">        # points</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T18.2.12.12.2" style="padding-left:25.0pt;padding-right:25.0pt;"><span class="ltx_text" id="A4.T18.2.12.12.2.1" style="font-size:144%;">        2048</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for training the visual grounding model.  It specifies the optimizer, learning rate, weight decay, batch size, number of epochs, warmup epochs, and the number of points and queries used during training.
> <details>
> <summary>read the caption</summary>
> Table 17: Visual grounding configuration.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T19.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T19.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A4.T19.2.1.1.1"><span class="ltx_text" id="A4.T19.2.1.1.1.1" style="font-size:144%;">Config</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A4.T19.2.1.1.2"><span class="ltx_text" id="A4.T19.2.1.1.2.1" style="font-size:144%;">Value</span></td>
</tr>
<tr class="ltx_tr" id="A4.T19.2.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="A4.T19.2.2.2.1"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.2.2.2.2"><span class="ltx_text" id="A4.T19.2.2.2.2.1" style="font-size:144%;">ScanNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.2.2.2.3"><span class="ltx_text" id="A4.T19.2.2.2.3.1" style="font-size:144%;">ScanNet200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.2.2.2.4"><span class="ltx_text" id="A4.T19.2.2.2.4.1" style="font-size:144%;">S3DIS</span></td>
</tr>
<tr class="ltx_tr" id="A4.T19.2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T19.2.3.3.1"><span class="ltx_text" id="A4.T19.2.3.3.1.1" style="font-size:144%;">Optimizer</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A4.T19.2.3.3.2">
<span class="ltx_text" id="A4.T19.2.3.3.2.1" style="font-size:144%;">AdamW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T19.2.3.3.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.06719v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="A4.T19.2.3.3.2.3.2" style="font-size:144%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A4.T19.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T19.2.4.4.1"><span class="ltx_text" id="A4.T19.2.4.4.1.1" style="font-size:144%;">Betas</span></th>
<td class="ltx_td ltx_align_center" colspan="3" id="A4.T19.2.4.4.2"><span class="ltx_text" id="A4.T19.2.4.4.2.1" style="font-size:144%;">(0.9, 0.95)</span></td>
</tr>
<tr class="ltx_tr" id="A4.T19.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T19.2.5.5.1"><span class="ltx_text" id="A4.T19.2.5.5.1.1" style="font-size:144%;">Weight decay</span></th>
<td class="ltx_td ltx_align_center" colspan="3" id="A4.T19.2.5.5.2"><span class="ltx_text" id="A4.T19.2.5.5.2.1" style="font-size:144%;">0.05</span></td>
</tr>
<tr class="ltx_tr" id="A4.T19.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T19.2.6.6.1"><span class="ltx_text" id="A4.T19.2.6.6.1.1" style="font-size:144%;">Learning rate</span></th>
<td class="ltx_td ltx_align_center" colspan="3" id="A4.T19.2.6.6.2"><span class="ltx_text" id="A4.T19.2.6.6.2.1" style="font-size:144%;">0.001</span></td>
</tr>
<tr class="ltx_tr" id="A4.T19.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T19.2.7.7.1"><span class="ltx_text" id="A4.T19.2.7.7.1.1" style="font-size:144%;">LR Scheduler</span></th>
<td class="ltx_td ltx_align_center" colspan="3" id="A4.T19.2.7.7.2"><span class="ltx_text" id="A4.T19.2.7.7.2.1" style="font-size:144%;">Cosine</span></td>
</tr>
<tr class="ltx_tr" id="A4.T19.2.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T19.2.8.8.1"><span class="ltx_text" id="A4.T19.2.8.8.1.1" style="font-size:144%;">Batch size</span></th>
<td class="ltx_td ltx_align_center" id="A4.T19.2.8.8.2"><span class="ltx_text" id="A4.T19.2.8.8.2.1" style="font-size:144%;">48</span></td>
<td class="ltx_td ltx_align_center" id="A4.T19.2.8.8.3"><span class="ltx_text" id="A4.T19.2.8.8.3.1" style="font-size:144%;">48</span></td>
<td class="ltx_td ltx_align_center" id="A4.T19.2.8.8.4"><span class="ltx_text" id="A4.T19.2.8.8.4.1" style="font-size:144%;">32</span></td>
</tr>
<tr class="ltx_tr" id="A4.T19.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T19.2.9.9.1"><span class="ltx_text" id="A4.T19.2.9.9.1.1" style="font-size:144%;">Epochs</span></th>
<td class="ltx_td ltx_align_center" id="A4.T19.2.9.9.2"><span class="ltx_text" id="A4.T19.2.9.9.2.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center" id="A4.T19.2.9.9.3"><span class="ltx_text" id="A4.T19.2.9.9.3.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center" id="A4.T19.2.9.9.4"><span class="ltx_text" id="A4.T19.2.9.9.4.1" style="font-size:144%;">500</span></td>
</tr>
<tr class="ltx_tr" id="A4.T19.2.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T19.2.10.10.1"><span class="ltx_text" id="A4.T19.2.10.10.1.1" style="font-size:144%;">Warmup epochs</span></th>
<td class="ltx_td ltx_align_center" id="A4.T19.2.10.10.2"><span class="ltx_text" id="A4.T19.2.10.10.2.1" style="font-size:144%;">2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T19.2.10.10.3"><span class="ltx_text" id="A4.T19.2.10.10.3.1" style="font-size:144%;">2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T19.2.10.10.4"><span class="ltx_text" id="A4.T19.2.10.10.4.1" style="font-size:144%;">20</span></td>
</tr>
<tr class="ltx_tr" id="A4.T19.2.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T19.2.11.11.1"><span class="ltx_text" id="A4.T19.2.11.11.1.1" style="font-size:144%;">Crop size</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T19.2.11.11.2"><span class="ltx_text" id="A4.T19.2.11.11.2.1" style="font-size:144%;">120000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T19.2.11.11.3"><span class="ltx_text" id="A4.T19.2.11.11.3.1" style="font-size:144%;">120000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T19.2.11.11.4"><span class="ltx_text" id="A4.T19.2.11.11.4.1" style="font-size:144%;">100000</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for training the object detection model.  It includes specifications for the optimizer (AdamW), weight decay, learning rate, batch size, number of epochs, warmup epochs, the number of points used, and the clipping of gradients.  These settings were specifically used for the experiments on object detection within the paper.
> <details>
> <summary>read the caption</summary>
> Table 18: Object detection configuration.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.06719/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06719/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06719/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06719/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06719/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06719/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06719/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06719/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06719/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06719/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06719/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06719/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06719/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06719/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06719/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06719/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06719/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}