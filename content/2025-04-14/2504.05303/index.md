---
title: "InteractVLM: 3D Interaction Reasoning from 2D Foundational Models"
summary: "InteractVLM estimates 3D human-object contacts from 2D images using visual-language models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Max Planck Institute for Intelligent Systems, Tübingen, Germany",]
showSummary: true
date: 2025-04-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.05303 {{< /keyword >}}
{{< keyword icon="writer" >}} Sai Kumar Dwivedi et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.05303" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.05303" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.05303/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Reconstructing human-object interactions (HOI) in 3D from 2D images is challenging due to occlusions and diverse object shapes. Existing methods rely on expensive 3D contact annotations, limiting scalability. To address these issues, this paper introduces a method that leverages large Vision-Language Models (VLMs) to estimate 3D contact points on human bodies and objects from a single image. It also introduces a new "Semantic Human Contact" estimation task and overcomes the data scarcity. 



The study introduces **InteractVLM**, a novel framework based on a reasoning module based on a VLM and a new Multi-View Localization model that highlights parts that are in contact. This model operates with a novel “Render-Localize-Lift” framework. The VLM guides the MV-Loc model to localize contacts in 3D, enhancing joint reconstruction. Experiments show that the approach outperforms existing methods on contact estimation and in facilitating 3D reconstruction, with code and models publicly available.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} InteractVLM, a novel framework, facilitates HOI reconstruction by detecting 3D contacts on both bodies and objects from a single in-the-wild image. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method minimizes reliance on 3D contact annotations via exploiting the broad visual knowledge of Vision-Language Models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A novel "Multi-view Localization" model helps in estimating contacts in 3D by transforming the reasoning of foundation models from 2D to 3D. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research enables more **realistic 3D human-object interaction reconstruction** from images. By reducing the need for extensive 3D contact annotations and providing a new method for leveraging visual-language models, this paper opens new avenues for research in robotics, mixed reality, and human behavior analysis, where understanding realistic interactions is crucial. The new contact estimation task will likely stimulate future research.

------
#### Visual Insights



![](https://arxiv.org/html/2504.05303/x2.png)

> 🔼 This figure showcases InteractVLM's ability to predict 3D contact points between humans and objects using only a single, unconstrained image. Red patches highlight the estimated contact points on the human and object.  Unlike traditional methods that only determine whether contact exists (binary contact), InteractVLM identifies specific contact locations and relates them to particular objects, making the interaction more semantically rich. This advanced capability stems from the model's utilization of a large Visual Language Model (VLM), which provides a broad understanding of visual information and the relationships between objects and human actions.
> <details>
> <summary>read the caption</summary>
> Figure 1:  We present InteractVLM, a novel method for estimating contact points on both human bodies and objects from a single in-the-wild image, shown here as red patches. Our method goes beyond traditional binary contact estimation methods by estimating contact points on a human in relation to a specified object. We do so by leveraging the broad visual knowledge of a large Visual Language Model.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.5.5">
<tr class="ltx_tr" id="S4.T1.5.5.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.5.5.6.1"><span class="ltx_text" id="S4.T1.5.5.6.1.1" style="font-size:70%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.5.6.2"><span class="ltx_text" id="S4.T1.5.5.6.2.1" style="font-size:70%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.5.6.3"><span class="ltx_text" id="S4.T1.5.5.6.3.1" style="font-size:70%;">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.5.6.4"><span class="ltx_text" id="S4.T1.5.5.6.4.1" style="font-size:70%;">Recall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.5.6.5"><span class="ltx_text" id="S4.T1.5.5.6.5.1" style="font-size:70%;">Geodesic</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4">
<td class="ltx_td ltx_border_r" id="S4.T1.4.4.4.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.1">
<span class="ltx_text" id="S4.T1.1.1.1.1.1" style="font-size:70%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.2">
<span class="ltx_text" id="S4.T1.2.2.2.2.1" style="font-size:70%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.3">
<span class="ltx_text" id="S4.T1.3.3.3.3.1" style="font-size:70%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.4">
<span class="ltx_text" id="S4.T1.4.4.4.4.1" style="font-size:70%;">(cm) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.5.5.5.1">
<math alttext="\mbox{POSA}^{\text{{\scriptsize{\mbox{PIXIE}}}}}" class="ltx_Math" display="inline" id="S4.T1.5.5.5.1.m1.1"><semantics id="S4.T1.5.5.5.1.m1.1a"><msup id="S4.T1.5.5.5.1.m1.1.1" xref="S4.T1.5.5.5.1.m1.1.1.cmml"><mtext id="S4.T1.5.5.5.1.m1.1.1.2" mathsize="70%" xref="S4.T1.5.5.5.1.m1.1.1.2a.cmml">POSA</mtext><mtext id="S4.T1.5.5.5.1.m1.1.1.3" xref="S4.T1.5.5.5.1.m1.1.1.3a.cmml">PIXIE</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.1.m1.1b"><apply id="S4.T1.5.5.5.1.m1.1.1.cmml" xref="S4.T1.5.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.5.5.5.1.m1.1.1.1.cmml" xref="S4.T1.5.5.5.1.m1.1.1">superscript</csymbol><ci id="S4.T1.5.5.5.1.m1.1.1.2a.cmml" xref="S4.T1.5.5.5.1.m1.1.1.2"><mtext id="S4.T1.5.5.5.1.m1.1.1.2.cmml" mathsize="70%" xref="S4.T1.5.5.5.1.m1.1.1.2">POSA</mtext></ci><ci id="S4.T1.5.5.5.1.m1.1.1.3a.cmml" xref="S4.T1.5.5.5.1.m1.1.1.3"><mtext id="S4.T1.5.5.5.1.m1.1.1.3.cmml" mathsize="70%" xref="S4.T1.5.5.5.1.m1.1.1.3">PIXIE</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.1.m1.1c">\mbox{POSA}^{\text{{\scriptsize{\mbox{PIXIE}}}}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.1.m1.1d">POSA start_POSTSUPERSCRIPT PIXIE end_POSTSUPERSCRIPT</annotation></semantics></math><span class="ltx_text" id="S4.T1.5.5.5.1.1" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.5.5.5.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S4.T1.5.5.5.1.3.2" style="font-size:70%;">]</span></cite><span class="ltx_text" id="S4.T1.5.5.5.1.4" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.5.5.5.1.5.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S4.T1.5.5.5.1.6.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.5.2"><span class="ltx_text" id="S4.T1.5.5.5.2.1" style="font-size:70%;">31.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.5.3"><span class="ltx_text" id="S4.T1.5.5.5.3.1" style="font-size:70%;">42.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.5.4"><span class="ltx_text" id="S4.T1.5.5.5.4.1" style="font-size:70%;">34.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.5.5"><span class="ltx_text" id="S4.T1.5.5.5.5.1" style="font-size:70%;">33.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.5.5.7.1">
<span class="ltx_text" id="S4.T1.5.5.7.1.1" style="font-size:70%;">BSTRO</span><span class="ltx_text" id="S4.T1.5.5.7.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.5.5.7.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a><span class="ltx_text" id="S4.T1.5.5.7.1.4.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.2"><span class="ltx_text" id="S4.T1.5.5.7.2.1" style="font-size:70%;">46.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.3"><span class="ltx_text" id="S4.T1.5.5.7.3.1" style="font-size:70%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.4"><span class="ltx_text" id="S4.T1.5.5.7.4.1" style="font-size:70%;">53.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.5"><span class="ltx_text" id="S4.T1.5.5.7.5.1" style="font-size:70%;">38.06</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.5.5.8.1">
<span class="ltx_text" id="S4.T1.5.5.8.1.1" style="font-size:70%;">DECO</span><span class="ltx_text" id="S4.T1.5.5.8.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.5.5.8.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a><span class="ltx_text" id="S4.T1.5.5.8.1.4.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.2"><span class="ltx_text" id="S4.T1.5.5.8.2.1" style="font-size:70%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.3"><span class="ltx_text" id="S4.T1.5.5.8.3.1" style="font-size:70%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.4"><span class="ltx_text" id="S4.T1.5.5.8.4.1" style="font-size:70%;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.5"><span class="ltx_text" id="S4.T1.5.5.8.5.1" style="font-size:70%;">21.32</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.5.5.9.1"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.9.1.1" style="font-size:70%;">InteractVLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.5.9.2"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.9.2.1" style="font-size:70%;">75.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.5.9.3"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.9.3.1" style="font-size:70%;">75.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.5.9.4"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.9.4.1" style="font-size:70%;">76.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.5.9.5"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.9.5.1" style="font-size:70%;">2.89</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative evaluation of the InteractVLM model's performance on the task of binary human contact prediction.  The model's performance (measured by F1 score, precision, recall, and geodesic distance) is compared against several state-of-the-art methods using the DAMON dataset [60].  Importantly, the InteractVLM model was trained *only* for this specific binary contact prediction task, not for any other tasks, highlighting the effectiveness of the model in isolation.
> <details>
> <summary>read the caption</summary>
> Table 1:  Evaluation for “Binary Human Contact” prediction on the DAMON dataset [60]. We compare our InteractVLM model (trained only  for this task) with the state of the art.
> </details>





### In-depth insights


#### VLM for 3D HOI
**VLMs show promise in 3D HOI** due to their broad visual knowledge, overcoming data scarcity. Finetuning VLMs with limited 3D data enables reasoning about human-object interactions in images. The models can estimate contact points, a key factor in 3D reconstruction, by **bridging the gap between 2D understanding and 3D space**. This facilitates HOI analysis from single images, addressing challenges like occlusions. Leveraging VLMs enhances the accuracy and realism of 3D HOI models by leveraging visual context, which is a great solution to make the process of reconstruction more efficient and accurate.

#### RLL: 2D to 3D
The concept of translating information from 2D to 3D, as suggested by “RLL: 2D to 3D,” addresses a core challenge in computer vision: bridging the gap between flat image data and the three-dimensional world humans inhabit. **This translation is critical for applications like robotics, augmented reality, and scene understanding, where spatial awareness is paramount.** Techniques for this conversion often involve leveraging cues present in 2D images, such as shading, texture gradients, and perspective, to infer depth and spatial relationships. Successfully achieving 2D to 3D conversion also requires addressing inherent ambiguities and information loss that occur when projecting a 3D scene onto a 2D plane. **Models trained on stereo images or depth maps can guide this lifting process.** Moreover, the rise of neural networks, particularly those with attention mechanisms, has enabled more sophisticated estimations of depth and 3D structure from single or multiple images. **By encoding contextual information and learning complex mappings, these networks can provide robust and accurate 3D reconstructions**, pushing the boundaries of what's possible in converting two-dimensional data into three-dimensional insights.

#### Semantic Contact
**Semantic contact** moves beyond simple binary contact detection to understand *how* humans interact with objects. It enriches interaction modeling by conditioning contact predictions on object semantics, enabling a more nuanced understanding of human-object relationships. It acknowledges that contact isn't just about 'touching', but *how* and *why* we touch things. This approach is valuable for creating realistic simulations, improving robot interactions, and enhancing mixed reality experiences by capturing the intent behind interactions.

#### In-the-wild Data
In-the-wild data is crucial for training robust and generalizable models in computer vision. **It captures the complexity and variability of real-world scenarios**, including diverse lighting, viewpoints, occlusions, and object appearances. Training on such data enables models to handle noisy and unstructured environments more effectively. However, in-the-wild data often lacks precise annotations, necessitating innovative approaches such as self-supervision, weakly supervised learning, or transfer learning. Furthermore, **careful consideration must be given to potential biases** present in these datasets to ensure fairness and prevent unintended consequences. Addressing the challenges of in-the-wild data is essential for deploying computer vision systems in practical applications.

#### Contact Driven HOI
**Contact-driven Human-Object Interaction (HOI)** emphasizes the significance of physical contact between humans and objects for inferring interactions. This approach moves beyond merely recognizing the presence of objects to understanding how humans interact with them, providing richer contextual understanding. By explicitly modeling contact, systems can better discern the nature of the interaction. **Contact points act as constraints** to infer action and object affordances, enhancing the accuracy of HOI recognition. These points are essential for realistically reconstructing interaction and are essential for robots to manipulate objects in a human way. Despite its promise, creating 3D datasets of object contact is a barrier. Recent works have started to tackle this barrier using AI-generated information.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.05303/x3.png)

> 🔼 InteractVLM processes a color image using a Vision-Language Model (VLM) to understand the scene and reason about potential human-object interactions.  The VLM's output guides a novel Multi-view Localization (MV-Loc) model.  The MV-Loc model then uses multi-view rendering of 3D human and object models to identify and localize 2D contact points.  These 2D contact points are lifted to 3D space to estimate contact points on both the human body and the object.  This figure focuses on the process for the human body; object contact details are shown in Figure 3.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Overview of InteractVLM. Given a color image, our VLM performs the core reasoning, and guides a novel MV-Loc model to localize contacts on both bodies and objects in 3D. Here we show only the body; for details, and object contact, see Fig. 3.
> </details>



![](https://arxiv.org/html/2504.05303/x4.png)

> 🔼 Figure 3 illustrates the InteractVLM method.  Part (a) details the contact estimation process:  A vision-language model (VLM) processes an image and text prompt to generate contact tokens for humans and objects.  These tokens are converted into feature embeddings which guide a multi-view localization model.  This model renders the 3D human and object geometry from multiple viewpoints, creating 2D renderings that are processed to identify 2D contact points. The 2D points are transformed into 3D-aware representations using camera parameters. Finally, a module lifts these 2D contacts to 3D. Part (b) shows that the 3D human-object interaction (HOI) reconstruction leverages the estimated 3D contact points within an optimization framework.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Method overview. Given a single in-the-wild color image, our novel InteractVLM method estimates 3D contact points on both humans and objects (a). Then, we reconstruct a 3D human and object in interaction by exploiting these contacts (b). More specifically: (a) Contact estimation. Given an image, I𝐼Iitalic_I, and prompt text, Ti⁢n⁢psubscript𝑇𝑖𝑛𝑝T_{inp}italic_T start_POSTSUBSCRIPT italic_i italic_n italic_p end_POSTSUBSCRIPT, our VLM, ΨΨ\Psiroman_Ψ, produces contact tokens for humans and objects, <HCON> and <OCON>, which are projected (ΓΓ\Gammaroman_Γ) into feature embeddings, EHsuperscript𝐸𝐻E^{H}italic_E start_POSTSUPERSCRIPT italic_H end_POSTSUPERSCRIPT and EOsuperscript𝐸𝑂E^{O}italic_E start_POSTSUPERSCRIPT italic_O end_POSTSUPERSCRIPT. These guide a “Multi-View [contact] Localization” model. This renders the 3D human and object geometry via cameras, K𝐾{K}italic_K, into multi-view 2D renders and passes these to encoder, ΘΘ\Thetaroman_Θ, while decoders, ΩHsuperscriptΩ𝐻\Omega^{H}roman_Ω start_POSTSUPERSCRIPT italic_H end_POSTSUPERSCRIPT, ΩOsuperscriptΩ𝑂\Omega^{O}roman_Ω start_POSTSUPERSCRIPT italic_O end_POSTSUPERSCRIPT, estimate and highlight 2D contacts in these renders. Then, the FeatLift module, ΦΦ\Phiroman_Φ, transforms the VLM’s features (EHsuperscript𝐸𝐻E^{H}italic_E start_POSTSUPERSCRIPT italic_H end_POSTSUPERSCRIPT, EOsuperscript𝐸𝑂E^{O}italic_E start_POSTSUPERSCRIPT italic_O end_POSTSUPERSCRIPT) to become 3D-aware (E3⁢DHsubscriptsuperscript𝐸𝐻3𝐷E^{H}_{3D}italic_E start_POSTSUPERSCRIPT italic_H end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 3 italic_D end_POSTSUBSCRIPT, E3⁢DOsubscriptsuperscript𝐸𝑂3𝐷E^{O}_{3D}italic_E start_POSTSUPERSCRIPT italic_O end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 3 italic_D end_POSTSUBSCRIPT) by exploiting the camera parameters, K𝐾{K}italic_K. A final module lifts the detected 2D contacts to 3D. (b) 3D HOI reconstruction. For joint human-object reconstruction, we use InteractVLM’s inferred contacts in an optimization framework.
> </details>



![](https://arxiv.org/html/2504.05303/x5.png)

> 🔼 This figure visually compares the performance of InteractVLM and the Semantic-DECO baseline on the task of 'Semantic Human Contact' estimation.  Given an input image and the label of an object, both methods attempt to predict the contact points on the human body that are interacting with that specific object.  InteractVLM's predictions (shown in red patches) are highlighted on the body meshes (blue). The interacting objects are indicated by green circles. The results visually demonstrate that InteractVLM outperforms the Semantic-DECO baseline by producing more accurate and precise contact point predictions.
> <details>
> <summary>read the caption</summary>
> Figure 4:  “Semantic Human Contact” estimation (Sec. 4.2). Given an image and an object label, InteractVLM infers body contacts for this object. InteractVLM outperforms a Semantic-DECO [60] baseline. Objects are shown in green circles, and contacts as red patches.
> </details>



![](https://arxiv.org/html/2504.05303/x6.png)

> 🔼 This figure demonstrates InteractVLM's efficiency in using 3D annotations for training.  It shows that even with a small percentage of the DAMON dataset for training, InteractVLM significantly outperforms DECO, a baseline model that requires the full dataset. This superior performance highlights InteractVLM's ability to leverage the broader visual knowledge inherent in foundation models.
> <details>
> <summary>read the caption</summary>
> Figure 5:  InteractVLM’s reliance on 3D annotations. We evaluate performance for “binary human contact” (F1 score, Y-axis) for models trained on a varying percentage of DAMON [60] training data (X-axis). The DECO baseline trains on 100% of DAMON. Instead, InteractVLM trains on a varying (smaller) portion of this dataset. Yet, it achieves a significantly higher performance, by leveraging the broad visual knowledge of foundation models.
> </details>



![](https://arxiv.org/html/2504.05303/x7.png)

> 🔼 Figure 6 showcases the 3D human-object interaction (HOI) reconstruction results obtained using the proposed InteractVLM method.  The method refines a SMPL-X human body model and an OpenShape-retrieved object model by fitting them to a single in-the-wild image. This fitting process is guided by the 3D contact points predicted by InteractVLM.  The results are compared against those of the state-of-the-art (SotA) PHOSA method for quantitative evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 6:  3D HOI reconstruction (Sec. 5). We build an optimization method that fits a SMPL-X body and OpenShape-retrieved object to an in-the-wild image. We evaluate against the SotA method PHOSA [69]. Reconstruction is guided by InteractVLM-inferred contacts.
> </details>



![](https://arxiv.org/html/2504.05303/x8.png)

> 🔼 Figure S.1 illustrates instances where the InteractVLM model's contact prediction accuracy falters.  The left side showcases examples of unusual or non-standard human poses that challenge the model's ability to accurately estimate contact points.  These poses deviate significantly from the typical interaction patterns observed during training.  The right side displays examples where contact predictions for objects are ambiguous. This ambiguity is particularly noticeable for larger objects, such as chairs. The reason for this is the use of object affordances during training in place of direct 3D contact labels, due to the non-existence of datasets containing 3D object contacts in real-world scenes.
> <details>
> <summary>read the caption</summary>
> Figure S.1:  Contact Estimation Failure Cases. Our method struggles with unusual human poses (left). For objects (right), training on affordances rather than actual contacts can sometimes lead to ambiguous contact predictions, especially for large objects like chairs. However, no dataset exists for 3D object contacts for in-the-wild images.
> </details>



![](https://arxiv.org/html/2504.05303/x9.png)

> 🔼 Figure S.2 shows examples where the OpenShape object retrieval system, used in the InteractVLM framework, fails to perfectly match the 3D model to the object in the input image.  This can occur due to factors such as significant occlusion in the image, an atypical or unusual object instance not well-represented in the database of 3D models, or limitations in the database's coverage of object variations.  However, despite these inaccuracies in the retrieved object's precise shape and appearance, the system consistently selects objects from the correct semantic category.
> <details>
> <summary>read the caption</summary>
> Figure S.2:  Object Retrieval Failure Cases. The retrieved object meshes (right) differ notably from the actual objects in the input images (left), especially in cases of significant occlusion, atypical object instances, or limited database coverage. Despite these inaccuracies, the retrieval consistently selects objects within the correct semantic category.
> </details>



![](https://arxiv.org/html/2504.05303/x10.png)

> 🔼 Figure S.3 showcases a comparison of object affordance prediction results between the InteractVLM model and the state-of-the-art IAGNet model.  The comparison uses the PIAD dataset.  The focus is on affordance prediction because there isn't a publicly available dataset of real-world images with corresponding 3D contact point annotations for objects.  The figure illustrates that for actions like 'sitting' or 'grasping', affordance prediction identifies areas on the object where contact is likely.
> <details>
> <summary>read the caption</summary>
> Figure S.3:  Object Affordance Prediction. Here we compare our InteractVLM method trained for object affordance prediction on PIAD [67] dataset with the state-of-the-art IAGNet method. We train for affordance detection because there exists no dataset of in-the-wild images paired with ground-truth 3D contacts for objects. Note that given an image of a person performing an action like “sit” or “grasp”, the affordance prediction task estimates “contact possibilities” on the object.
> </details>



![](https://arxiv.org/html/2504.05303/x11.png)

> 🔼 Figure S.4 visualizes the results of semantic human contact estimation using the InteractVLM model. Each row presents a different scenario where a person interacts with multiple objects simultaneously. The figure highlights the model's capability to precisely predict contact points on the human body that are specifically related to each object interacted with, demonstrating the model's ability to distinguish between multiple contacts in complex interactions.
> <details>
> <summary>read the caption</summary>
> Figure S.4:  Semantic Human Contact estimation. Here we show results for “semantic human contact” estimation from in-the-wild images. Each row shows a person in contact with multiple objects. Note how InteractVLM estimates contact on bodies that is specific to the object.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.8.8">
<tr class="ltx_tr" id="S4.T2.8.8.9">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T2.8.8.9.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S4.T2.8.8.9.2">Semantic-DECO <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a>]</cite> (Baseline)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T2.8.8.9.3"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.9.3.1">InteractVLM</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.8.8.10.1">Object</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.2">F1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.3">Prec.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.4">Rec.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.8.8.10.5">Geo</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.6">F1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.7">Prec.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.8">Rec.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.9">Geo</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.8.8.8.9">Categories</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.1">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.2">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.3">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.4.4">(cm) <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.5">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.6">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.6.m1.1"><semantics id="S4.T2.6.6.6.6.m1.1a"><mo id="S4.T2.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T2.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.6.m1.1b"><ci id="S4.T2.6.6.6.6.m1.1.1.cmml" xref="S4.T2.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.7">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.7.7.7.7.m1.1"><semantics id="S4.T2.7.7.7.7.m1.1a"><mo id="S4.T2.7.7.7.7.m1.1.1" stretchy="false" xref="S4.T2.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.7.m1.1b"><ci id="S4.T2.7.7.7.7.m1.1.1.cmml" xref="S4.T2.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.8">(cm) <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.8.8.8.8.m1.1"><semantics id="S4.T2.8.8.8.8.m1.1a"><mo id="S4.T2.8.8.8.8.m1.1.1" stretchy="false" xref="S4.T2.8.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.8.m1.1b"><ci id="S4.T2.8.8.8.8.m1.1.1.cmml" xref="S4.T2.8.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.8.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.8.8.11.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.8.8.11.1.1" style="width:42.9pt;height:8.699999999999999pt;vertical-align:-1.9pt;"><span class="ltx_transformed_inner" style="width:42.9pt;transform:translate(0pt,2.92pt) rotate(-0deg) ;">
<p class="ltx_p" id="S4.T2.8.8.11.1.1.1">Accessory</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.11.2">40.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.11.3">30.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.11.4"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.11.4.1">75.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.8.8.11.5">21.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.11.6"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.11.6.1">61.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.11.7"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.11.7.1">72.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.11.8">65.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.11.9"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.11.9.1">6.91</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.8.8.12.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.8.8.12.1.1" style="width:43.8pt;height:8.800000000000001pt;vertical-align:-1.9pt;"><span class="ltx_transformed_inner" style="width:43.8pt;transform:translate(0pt,2.92pt) rotate(-0deg) ;">
<p class="ltx_p" id="S4.T2.8.8.12.1.1.1">Daily Obj</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.12.2">26.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.12.3">20.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.12.4">52.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.12.5">60.34</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.12.6"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.12.6.1">68.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.12.7"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.12.7.1">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.12.8"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.12.8.1">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.12.9"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.12.9.1">7.46</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.8.8.13.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.8.8.13.1.1" style="width:21.8pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:21.8pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<p class="ltx_p" id="S4.T2.8.8.13.1.1.1">Food</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.13.2">11.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.13.3">19.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.13.4">12.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.13.5">49.61</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.13.6"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.13.6.1">66.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.13.7"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.13.7.1">66.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.13.8"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.13.8.1">77.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.13.9"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.13.9.1">7.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.8.8.14.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.8.8.14.1.1" style="width:41.3pt;height:6.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:41.3pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<p class="ltx_p" id="S4.T2.8.8.14.1.1.1">Furniture</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.14.2">24.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.14.3">15.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.14.4"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.14.4.1">83.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.14.5">29.17</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.14.6"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.14.6.1">60.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.14.7"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.14.7.1">64.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.14.8">60.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.14.9"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.14.9.1">6.21</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.8.8.15.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.8.8.15.1.1" style="width:34.2pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:34.2pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<p class="ltx_p" id="S4.T2.8.8.15.1.1.1">Kitchen</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.15.2">27.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.15.3">24.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.15.4">37.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.15.5">52.34</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.15.6"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.15.6.1">71.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.15.7"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.15.7.1">71.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.15.8"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.15.8.1">81.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.15.9"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.15.9.1">7.61</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.8.8.16.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.8.8.16.1.1" style="width:28.1pt;height:8.699999999999999pt;vertical-align:-1.9pt;"><span class="ltx_transformed_inner" style="width:28.1pt;transform:translate(0pt,2.92pt) rotate(-0deg) ;">
<p class="ltx_p" id="S4.T2.8.8.16.1.1.1">Sports</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.16.2">36.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.16.3">30.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.16.4">80.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.16.5">79.21</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.16.6"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.16.6.1">77.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.16.7"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.16.7.1">76.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.16.8"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.16.8.1">83.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.16.9"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.16.9.1">7.98</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.17">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.8.8.17.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.8.8.17.1.1" style="width:43.4pt;height:8.699999999999999pt;vertical-align:-1.9pt;"><span class="ltx_transformed_inner" style="width:43.4pt;transform:translate(0pt,2.92pt) rotate(-0deg) ;">
<p class="ltx_p" id="S4.T2.8.8.17.1.1.1">Transport</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.17.2">52.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.17.3">39.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.17.4">93.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.8.8.17.5">31.78</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.17.6"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.17.6.1">77.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.17.7"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.17.7.1">80.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.17.8"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.17.8.1">78.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.17.9"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.17.9.1">7.97</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of the InteractVLM model's performance on the task of semantic human contact prediction.  It compares InteractVLM against a baseline model (Semantic-DECO), which is an extension of the DECO model adapted for semantic contact prediction. The evaluation is conducted on the DAMON dataset, assessing the model's ability to accurately predict human contact points in relation to specific objects.  The results are detailed for each object category, providing a granular view of the model's performance on different types of interactions.  For a more detailed breakdown of the results per object category, refer to the supplementary materials.
> <details>
> <summary>read the caption</summary>
> Table 2:  Evaluation for “Semantic Human Contact” prediction on the DAMON [60] dataset. For results on each class, see Sup. Mat. The “Semantic-DECO” baseline extends DECO for our new task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.8.8">
<tr class="ltx_tr" id="S4.T3.8.8.9">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T3.8.8.9.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S4.T3.8.8.9.2">PIAD-Seen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T3.8.8.9.3">PIAD-Unseen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.8.8.10.1">Methods</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.10.2">SIM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.10.3">AUC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.10.4">aIOU</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.8.8.10.5">MAE</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.10.6">SIM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.10.7">AUC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.10.8">aIOU</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.10.9">MAE</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.8">
<td class="ltx_td ltx_border_r" id="S4.T3.8.8.8.9"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.1">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.2">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.3">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.4.4.4.4"><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.5">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.5.m1.1a"><mo id="S4.T3.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T3.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.5.m1.1b"><ci id="S4.T3.5.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.6">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.6.m1.1"><semantics id="S4.T3.6.6.6.6.m1.1a"><mo id="S4.T3.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T3.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.6.m1.1b"><ci id="S4.T3.6.6.6.6.m1.1.1.cmml" xref="S4.T3.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7.7">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.7.7.7.7.m1.1"><semantics id="S4.T3.7.7.7.7.m1.1a"><mo id="S4.T3.7.7.7.7.m1.1.1" stretchy="false" xref="S4.T3.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.7.m1.1b"><ci id="S4.T3.7.7.7.7.m1.1.1.cmml" xref="S4.T3.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.8"><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.8.8.8.8.m1.1"><semantics id="S4.T3.8.8.8.8.m1.1a"><mo id="S4.T3.8.8.8.8.m1.1.1" stretchy="false" xref="S4.T3.8.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.8.m1.1b"><ci id="S4.T3.8.8.8.8.m1.1.1.cmml" xref="S4.T3.8.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.8.m1.1d">↓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.8.8.11.1">PMF <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib72" title=""><span class="ltx_text" style="font-size:90%;">72</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.11.2">42.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.11.3">75.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.11.4">10.13</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.8.8.11.5">1.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.11.6">33.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.11.7">60.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.11.8">4.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.11.9">2.11</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.8.8.12.1">ILN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.12.2">42.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.12.3">75.84</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.12.4">11.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.8.8.12.5">1.37</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.12.6">32.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.12.7">59.69</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.12.8">4.71</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.12.9">2.07</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.8.8.13.1">PFusion <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib65" title=""><span class="ltx_text" style="font-size:90%;">65</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.13.2">43.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.13.3">77.50</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.13.4">12.31</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.8.8.13.5">1.35</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.13.6">33.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.13.7">61.87</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.13.8">5.33</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.13.9">1.93</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.8.8.14.1">XMF <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.14.2">44.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.14.3">78.24</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.14.4">12.94</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.8.8.14.5">1.27</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.14.6">34.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.14.7">62.58</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.14.8">5.68</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.14.9">1.88</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.8.8.15.1">IAGNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.15.2">54.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.15.3">84.85</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.15.4">20.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.8.8.15.5">0.98</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.15.6">35.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.15.7">71.84</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.15.8">7.95</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.15.9">1.27</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.8.8.16.1"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.16.1.1">InteractVLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.8.8.16.2"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.16.2.1">62.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.8.8.16.3"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.16.3.1">86.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.8.8.16.4"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.16.4.1">21.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.8.8.16.5"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.16.5.1">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.8.8.16.6"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.16.6.1">41.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.8.8.16.7"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.16.7.1">75.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.8.8.16.8"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.16.8.1">8.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.8.8.16.9"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.16.9.1">0.99</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a quantitative evaluation of the InteractVLM model's performance on the task of object affordance prediction.  It compares InteractVLM's results against several state-of-the-art methods on the PIAD dataset [67]. The evaluation metrics include Similarity (SIM), Area Under the ROC Curve (AUC), Intersection over Union (aIOU), and Mean Absolute Error (MAE).  The table specifically shows the model's performance on both seen and unseen object categories from the PIAD dataset, demonstrating its generalization capabilities.
> <details>
> <summary>read the caption</summary>
> Table 3:  Evaluation for “Object Affordance Prediction” on the PIAD [67] dataset. We compare our InteractVLM model (trained only  for this task) with the state of the art.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.4.4">
<tr class="ltx_tr" id="S2.T1.4.4.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S2.T1.4.4.5.1"><span class="ltx_text" id="S2.T1.4.4.5.1.1" style="font-size:70%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S2.T1.4.4.5.2"><span class="ltx_text" id="S2.T1.4.4.5.2.1" style="font-size:70%;">3D Supervision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.4.4.5.3"><span class="ltx_text" id="S2.T1.4.4.5.3.1" style="font-size:70%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.4.4.5.4"><span class="ltx_text" id="S2.T1.4.4.5.4.1" style="font-size:70%;">Prec.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.4.4.5.5"><span class="ltx_text" id="S2.T1.4.4.5.5.1" style="font-size:70%;">Rec.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.4.4.5.6"><span class="ltx_text" id="S2.T1.4.4.5.6.1" style="font-size:70%;">Geo.</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.4.4">
<td class="ltx_td ltx_border_r" id="S2.T1.4.4.4.5"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.4.4.6"><span class="ltx_text" id="S2.T1.4.4.4.6.1" style="font-size:70%;">Human</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.4.4.7"><span class="ltx_text" id="S2.T1.4.4.4.7.1" style="font-size:70%;">Obj.</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.1.1">
<span class="ltx_text" id="S2.T1.1.1.1.1.1" style="font-size:70%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.1.1.1.1.m1.1"><semantics id="S2.T1.1.1.1.1.m1.1a"><mo id="S2.T1.1.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S2.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.1.1.1.1.m1.1b"><ci id="S2.T1.1.1.1.1.m1.1.1.cmml" xref="S2.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.2.2">
<span class="ltx_text" id="S2.T1.2.2.2.2.1" style="font-size:70%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.2.2.2.2.m1.1"><semantics id="S2.T1.2.2.2.2.m1.1a"><mo id="S2.T1.2.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="S2.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.2.2.2.2.m1.1b"><ci id="S2.T1.2.2.2.2.m1.1.1.cmml" xref="S2.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.3.3">
<span class="ltx_text" id="S2.T1.3.3.3.3.1" style="font-size:70%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.3.3.3.3.m1.1"><semantics id="S2.T1.3.3.3.3.m1.1a"><mo id="S2.T1.3.3.3.3.m1.1.1" mathsize="70%" stretchy="false" xref="S2.T1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.3.3.3.3.m1.1b"><ci id="S2.T1.3.3.3.3.m1.1.1.cmml" xref="S2.T1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.4.4">
<span class="ltx_text" id="S2.T1.4.4.4.4.1" style="font-size:70%;">(cm) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T1.4.4.4.4.m1.1"><semantics id="S2.T1.4.4.4.4.m1.1a"><mo id="S2.T1.4.4.4.4.m1.1.1" mathsize="70%" stretchy="false" xref="S2.T1.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T1.4.4.4.4.m1.1b"><ci id="S2.T1.4.4.4.4.m1.1.1.cmml" xref="S2.T1.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.4.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.4.4.6.1">
<span class="ltx_text" id="S2.T1.4.4.6.1.1" style="font-size:70%;">BSTRO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S2.T1.4.4.6.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a><span class="ltx_text" id="S2.T1.4.4.6.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.4.4.6.2"><span class="ltx_text" id="S2.T1.4.4.6.2.1" style="font-size:70%;color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.4.4.6.3"><span class="ltx_text" id="S2.T1.4.4.6.3.1" style="font-size:70%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.4.6.4"><span class="ltx_text" id="S2.T1.4.4.6.4.1" style="font-size:70%;">55.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.4.6.5"><span class="ltx_text" id="S2.T1.4.4.6.5.1" style="font-size:70%;">57.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.4.6.6"><span class="ltx_text" id="S2.T1.4.4.6.6.1" style="font-size:70%;">58.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.4.6.7"><span class="ltx_text" id="S2.T1.4.4.6.7.1" style="font-size:70%;">28.58</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.4.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.4.4.7.1">
<span class="ltx_text" id="S2.T1.4.4.7.1.1" style="font-size:70%;">DECO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S2.T1.4.4.7.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a><span class="ltx_text" id="S2.T1.4.4.7.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.4.7.2"><span class="ltx_text" id="S2.T1.4.4.7.2.1" style="font-size:70%;color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.4.7.3"><span class="ltx_text" id="S2.T1.4.4.7.3.1" style="font-size:70%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.7.4"><span class="ltx_text" id="S2.T1.4.4.7.4.1" style="font-size:70%;">69.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.7.5"><span class="ltx_text" id="S2.T1.4.4.7.5.1" style="font-size:70%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.7.6"><span class="ltx_text" id="S2.T1.4.4.7.6.1" style="font-size:70%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.7.7"><span class="ltx_text" id="S2.T1.4.4.7.7.1" style="font-size:70%;">15.25</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.4.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.4.4.8.1">
<span class="ltx_text" id="S2.T1.4.4.8.1.1" style="font-size:70%;">LEMON-P </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S2.T1.4.4.8.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a><span class="ltx_text" id="S2.T1.4.4.8.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.4.8.2"><span class="ltx_text" id="S2.T1.4.4.8.2.1" style="font-size:70%;color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.4.8.3"><span class="ltx_text" id="S2.T1.4.4.8.3.1" style="font-size:70%;color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.8.4"><span class="ltx_text" id="S2.T1.4.4.8.4.1" style="font-size:70%;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.8.5"><span class="ltx_text" id="S2.T1.4.4.8.5.1" style="font-size:70%;">76.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.8.6"><span class="ltx_text" id="S2.T1.4.4.8.6.1" style="font-size:70%;">81.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.8.7"><span class="ltx_text" id="S2.T1.4.4.8.7.1" style="font-size:70%;">9.02</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.4.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.4.4.9.1">
<span class="ltx_text" id="S2.T1.4.4.9.1.1" style="font-size:70%;">LEMON-D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S2.T1.4.4.9.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a><span class="ltx_text" id="S2.T1.4.4.9.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.4.9.2"><span class="ltx_text" id="S2.T1.4.4.9.2.1" style="font-size:70%;color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.4.9.3"><span class="ltx_text" id="S2.T1.4.4.9.3.1" style="font-size:70%;color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.9.4"><span class="ltx_text" id="S2.T1.4.4.9.4.1" style="font-size:70%;">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.9.5"><span class="ltx_text" id="S2.T1.4.4.9.5.1" style="font-size:70%;">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.9.6"><span class="ltx_text ltx_font_bold" id="S2.T1.4.4.9.6.1" style="font-size:70%;">82.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.9.7"><span class="ltx_text" id="S2.T1.4.4.9.7.1" style="font-size:70%;">7.55</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.4.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.4.4.10.1"><span class="ltx_text ltx_font_bold" id="S2.T1.4.4.10.1.1" style="font-size:70%;">InteractVLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.4.4.10.2"><span class="ltx_text" id="S2.T1.4.4.10.2.1" style="font-size:70%;color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.4.4.10.3"><span class="ltx_text" id="S2.T1.4.4.10.3.1" style="font-size:70%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.4.4.10.4"><span class="ltx_text ltx_font_bold" id="S2.T1.4.4.10.4.1" style="font-size:70%;">78.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.4.4.10.5"><span class="ltx_text ltx_font_bold" id="S2.T1.4.4.10.5.1" style="font-size:70%;">82.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.4.4.10.6"><span class="ltx_text" id="S2.T1.4.4.10.6.1" style="font-size:70%;">76.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.4.4.10.7"><span class="ltx_text ltx_font_bold" id="S2.T1.4.4.10.7.1" style="font-size:70%;">6.73</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table S.1 presents a comparison of different methods for predicting binary human contact, specifically focusing on performance on the 3DIR dataset.  The key distinction highlighted is that LEMON utilizes paired human-object contact data for training, while InteractVLM, for this specific evaluation, is trained using only human contact data from the same dataset. This allows for a direct comparison of performance with different training methodologies.
> <details>
> <summary>read the caption</summary>
> Table S.1:  Evaluation for “Binary Human Contact” prediction on the 3DIR dataset [68]. Note that LEMON is trained with paired human-object contact data from 3DIR dataset. Instead, for this task, InteractVLM is only trained with human contact data from the same dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T2.2.1">
<tr class="ltx_tr" id="S2.T2.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S2.T2.2.1.1.1"><span class="ltx_text" id="S2.T2.2.1.1.1.1" style="font-size:70%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.2.1.1.2"><span class="ltx_text" id="S2.T2.2.1.1.2.1" style="font-size:70%;">Head</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.2.1.1.3"><span class="ltx_text" id="S2.T2.2.1.1.3.1" style="font-size:70%;">Torso</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.2.1.1.4"><span class="ltx_text" id="S2.T2.2.1.1.4.1" style="font-size:70%;">Hips</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.2.1.1.5"><span class="ltx_text" id="S2.T2.2.1.1.5.1" style="font-size:70%;">Hands</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.2.1.1.6"><span class="ltx_text" id="S2.T2.2.1.1.6.1" style="font-size:70%;">Arms</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.2.1.1.7"><span class="ltx_text" id="S2.T2.2.1.1.7.1" style="font-size:70%;">Feet</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.2.1.1.8"><span class="ltx_text" id="S2.T2.2.1.1.8.1" style="font-size:70%;">Legs</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.2.1.2.1">
<span class="ltx_text" id="S2.T2.2.1.2.1.1" style="font-size:70%;">DECO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S2.T2.2.1.2.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a><span class="ltx_text" id="S2.T2.2.1.2.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.2.1.2.2"><span class="ltx_text" id="S2.T2.2.1.2.2.1" style="font-size:70%;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.2.1.2.3"><span class="ltx_text" id="S2.T2.2.1.2.3.1" style="font-size:70%;">46.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.2.1.2.4"><span class="ltx_text" id="S2.T2.2.1.2.4.1" style="font-size:70%;">66.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.2.1.2.5"><span class="ltx_text" id="S2.T2.2.1.2.5.1" style="font-size:70%;">74.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.2.1.2.6"><span class="ltx_text" id="S2.T2.2.1.2.6.1" style="font-size:70%;">22.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.2.1.2.7"><span class="ltx_text" id="S2.T2.2.1.2.7.1" style="font-size:70%;">94.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.2.1.2.8"><span class="ltx_text" id="S2.T2.2.1.2.8.1" style="font-size:70%;">66.6</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S2.T2.2.1.3.1"><span class="ltx_text ltx_font_bold" id="S2.T2.2.1.3.1.1" style="font-size:70%;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.2.1.3.2"><span class="ltx_text ltx_font_bold" id="S2.T2.2.1.3.2.1" style="font-size:70%;">56.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.2.1.3.3"><span class="ltx_text ltx_font_bold" id="S2.T2.2.1.3.3.1" style="font-size:70%;">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.2.1.3.4"><span class="ltx_text ltx_font_bold" id="S2.T2.2.1.3.4.1" style="font-size:70%;">95.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.2.1.3.5"><span class="ltx_text ltx_font_bold" id="S2.T2.2.1.3.5.1" style="font-size:70%;">93.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.2.1.3.6"><span class="ltx_text ltx_font_bold" id="S2.T2.2.1.3.6.1" style="font-size:70%;">71.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.2.1.3.7"><span class="ltx_text ltx_font_bold" id="S2.T2.2.1.3.7.1" style="font-size:70%;">96.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.2.1.3.8"><span class="ltx_text ltx_font_bold" id="S2.T2.2.1.3.8.1" style="font-size:70%;">68.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the InteractVLM model's performance in estimating human-body contacts across different body parts. It compares the F1 scores achieved by the InteractVLM model and the DECO model for each body part (head, torso, hips, hands, arms, feet, and legs), providing a comprehensive view of the model's accuracy in localizing contacts in various regions of the human body.
> <details>
> <summary>read the caption</summary>
> Table S.2: F1 scores for human contact estimation w.r.t. body parts
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T3.8.8">
<tr class="ltx_tr" id="S2.T3.8.8.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S2.T3.8.8.9.1"><span class="ltx_text" id="S2.T3.8.8.9.1.1" style="font-size:144%;">Object</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T3.8.8.9.2"><span class="ltx_text" id="S2.T3.8.8.9.2.1" style="font-size:144%;">#</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S2.T3.8.8.9.3">
<span class="ltx_text" id="S2.T3.8.8.9.3.1" style="font-size:144%;">Semantic-</span><span class="ltx_text" id="S2.T3.8.8.9.3.2" style="font-size:144%;">DECO</span><span class="ltx_text" id="S2.T3.8.8.9.3.3" style="font-size:144%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S2.T3.8.8.9.3.4.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.05303v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a><span class="ltx_text" id="S2.T3.8.8.9.3.5.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S2.T3.8.8.9.4">
<span class="ltx_text ltx_font_bold" id="S2.T3.8.8.9.4.1" style="font-size:144%;">InteractVLM</span><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.9.4.2" style="font-size:144%;"> (Ours)</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.10">
<td class="ltx_td ltx_border_r" id="S2.T3.8.8.10.1"></td>
<td class="ltx_td ltx_border_r" id="S2.T3.8.8.10.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.8.8.10.3"><span class="ltx_text" id="S2.T3.8.8.10.3.1" style="font-size:144%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.8.8.10.4"><span class="ltx_text" id="S2.T3.8.8.10.4.1" style="font-size:144%;">Prec.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.8.8.10.5"><span class="ltx_text" id="S2.T3.8.8.10.5.1" style="font-size:144%;">Rec.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T3.8.8.10.6"><span class="ltx_text" id="S2.T3.8.8.10.6.1" style="font-size:144%;">Geo.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.8.8.10.7"><span class="ltx_text" id="S2.T3.8.8.10.7.1" style="font-size:144%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.8.8.10.8"><span class="ltx_text" id="S2.T3.8.8.10.8.1" style="font-size:144%;">Prec.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.8.8.10.9"><span class="ltx_text" id="S2.T3.8.8.10.9.1" style="font-size:144%;">Rec.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.8.8.10.10"><span class="ltx_text" id="S2.T3.8.8.10.10.1" style="font-size:144%;">Geo.</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.8.9"><span class="ltx_text" id="S2.T3.8.8.8.9.1" style="font-size:144%;">Categories</span></td>
<td class="ltx_td ltx_border_r" id="S2.T3.8.8.8.10"></td>
<td class="ltx_td ltx_align_center" id="S2.T3.1.1.1.1">
<span class="ltx_text" id="S2.T3.1.1.1.1.1" style="font-size:144%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T3.1.1.1.1.m1.1"><semantics id="S2.T3.1.1.1.1.m1.1a"><mo id="S2.T3.1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S2.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T3.1.1.1.1.m1.1b"><ci id="S2.T3.1.1.1.1.m1.1.1.cmml" xref="S2.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S2.T3.2.2.2.2">
<span class="ltx_text" id="S2.T3.2.2.2.2.1" style="font-size:144%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T3.2.2.2.2.m1.1"><semantics id="S2.T3.2.2.2.2.m1.1a"><mo id="S2.T3.2.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="S2.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T3.2.2.2.2.m1.1b"><ci id="S2.T3.2.2.2.2.m1.1.1.cmml" xref="S2.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S2.T3.3.3.3.3">
<span class="ltx_text" id="S2.T3.3.3.3.3.1" style="font-size:144%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T3.3.3.3.3.m1.1"><semantics id="S2.T3.3.3.3.3.m1.1a"><mo id="S2.T3.3.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="S2.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T3.3.3.3.3.m1.1b"><ci id="S2.T3.3.3.3.3.m1.1.1.cmml" xref="S2.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.4.4.4.4">
<span class="ltx_text" id="S2.T3.4.4.4.4.1" style="font-size:144%;">(cm) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T3.4.4.4.4.m1.1"><semantics id="S2.T3.4.4.4.4.m1.1a"><mo id="S2.T3.4.4.4.4.m1.1.1" mathsize="144%" stretchy="false" xref="S2.T3.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T3.4.4.4.4.m1.1b"><ci id="S2.T3.4.4.4.4.m1.1.1.cmml" xref="S2.T3.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T3.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S2.T3.5.5.5.5">
<span class="ltx_text" id="S2.T3.5.5.5.5.1" style="font-size:144%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T3.5.5.5.5.m1.1"><semantics id="S2.T3.5.5.5.5.m1.1a"><mo id="S2.T3.5.5.5.5.m1.1.1" mathsize="144%" stretchy="false" xref="S2.T3.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T3.5.5.5.5.m1.1b"><ci id="S2.T3.5.5.5.5.m1.1.1.cmml" xref="S2.T3.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T3.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S2.T3.6.6.6.6">
<span class="ltx_text" id="S2.T3.6.6.6.6.1" style="font-size:144%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T3.6.6.6.6.m1.1"><semantics id="S2.T3.6.6.6.6.m1.1a"><mo id="S2.T3.6.6.6.6.m1.1.1" mathsize="144%" stretchy="false" xref="S2.T3.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T3.6.6.6.6.m1.1b"><ci id="S2.T3.6.6.6.6.m1.1.1.cmml" xref="S2.T3.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T3.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S2.T3.7.7.7.7">
<span class="ltx_text" id="S2.T3.7.7.7.7.1" style="font-size:144%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T3.7.7.7.7.m1.1"><semantics id="S2.T3.7.7.7.7.m1.1a"><mo id="S2.T3.7.7.7.7.m1.1.1" mathsize="144%" stretchy="false" xref="S2.T3.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T3.7.7.7.7.m1.1b"><ci id="S2.T3.7.7.7.7.m1.1.1.cmml" xref="S2.T3.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T3.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.8.8">
<span class="ltx_text" id="S2.T3.8.8.8.8.1" style="font-size:144%;">(cm) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T3.8.8.8.8.m1.1"><semantics id="S2.T3.8.8.8.8.m1.1a"><mo id="S2.T3.8.8.8.8.m1.1.1" mathsize="144%" stretchy="false" xref="S2.T3.8.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T3.8.8.8.8.m1.1b"><ci id="S2.T3.8.8.8.8.m1.1.1.cmml" xref="S2.T3.8.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.8.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T3.8.8.8.8.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T3.8.8.11.1"><span class="ltx_text" id="S2.T3.8.8.11.1.1" style="font-size:144%;">Skateboard</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T3.8.8.11.2"><span class="ltx_text" id="S2.T3.8.8.11.2.1" style="font-size:144%;">85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.8.8.11.3"><span class="ltx_text" id="S2.T3.8.8.11.3.1" style="font-size:144%;">30.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.8.8.11.4"><span class="ltx_text" id="S2.T3.8.8.11.4.1" style="font-size:144%;">19.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.8.8.11.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.11.5.1" style="font-size:144%;">91.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T3.8.8.11.6"><span class="ltx_text" id="S2.T3.8.8.11.6.1" style="font-size:144%;">99.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.8.8.11.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.11.7.1" style="font-size:144%;">71.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.8.8.11.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.11.8.1" style="font-size:144%;">67.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.8.8.11.9"><span class="ltx_text" id="S2.T3.8.8.11.9.1" style="font-size:144%;">83.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.8.8.11.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.11.10.1" style="font-size:144%;">0.90</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.12.1"><span class="ltx_text" id="S2.T3.8.8.12.1.1" style="font-size:144%;">Surfboard</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.12.2"><span class="ltx_text" id="S2.T3.8.8.12.2.1" style="font-size:144%;">70</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.12.3"><span class="ltx_text" id="S2.T3.8.8.12.3.1" style="font-size:144%;">23.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.12.4"><span class="ltx_text" id="S2.T3.8.8.12.4.1" style="font-size:144%;">14.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.12.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.12.5.1" style="font-size:144%;">98.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.12.6"><span class="ltx_text" id="S2.T3.8.8.12.6.1" style="font-size:144%;">101.22</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.12.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.12.7.1" style="font-size:144%;">79.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.12.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.12.8.1" style="font-size:144%;">76.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.12.9"><span class="ltx_text" id="S2.T3.8.8.12.9.1" style="font-size:144%;">78.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.12.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.12.10.1" style="font-size:144%;">0.80</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.13.1"><span class="ltx_text" id="S2.T3.8.8.13.1.1" style="font-size:144%;">Snowboard</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.13.2"><span class="ltx_text" id="S2.T3.8.8.13.2.1" style="font-size:144%;">49</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.13.3"><span class="ltx_text" id="S2.T3.8.8.13.3.1" style="font-size:144%;">38.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.13.4"><span class="ltx_text" id="S2.T3.8.8.13.4.1" style="font-size:144%;">25.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.13.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.13.5.1" style="font-size:144%;">92.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.13.6"><span class="ltx_text" id="S2.T3.8.8.13.6.1" style="font-size:144%;">108.29</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.13.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.13.7.1" style="font-size:144%;">84.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.13.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.13.8.1" style="font-size:144%;">83.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.13.9"><span class="ltx_text" id="S2.T3.8.8.13.9.1" style="font-size:144%;">84.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.13.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.13.10.1" style="font-size:144%;">0.20</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.14.1"><span class="ltx_text" id="S2.T3.8.8.14.1.1" style="font-size:144%;">T. Racket</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.14.2"><span class="ltx_text" id="S2.T3.8.8.14.2.1" style="font-size:144%;">45</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.14.3"><span class="ltx_text" id="S2.T3.8.8.14.3.1" style="font-size:144%;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.14.4"><span class="ltx_text" id="S2.T3.8.8.14.4.1" style="font-size:144%;">42.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.14.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.14.5.1" style="font-size:144%;">99.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.14.6"><span class="ltx_text" id="S2.T3.8.8.14.6.1" style="font-size:144%;">64.25</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.14.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.14.7.1" style="font-size:144%;">82.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.14.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.14.8.1" style="font-size:144%;">80.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.14.9"><span class="ltx_text" id="S2.T3.8.8.14.9.1" style="font-size:144%;">86.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.14.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.14.10.1" style="font-size:144%;">0.20</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.15.1"><span class="ltx_text" id="S2.T3.8.8.15.1.1" style="font-size:144%;">Cell phone</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.15.2"><span class="ltx_text" id="S2.T3.8.8.15.2.1" style="font-size:144%;">43</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.15.3"><span class="ltx_text" id="S2.T3.8.8.15.3.1" style="font-size:144%;">42.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.15.4"><span class="ltx_text" id="S2.T3.8.8.15.4.1" style="font-size:144%;">27.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.15.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.15.5.1" style="font-size:144%;">99.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.15.6"><span class="ltx_text" id="S2.T3.8.8.15.6.1" style="font-size:144%;">51.73</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.15.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.15.7.1" style="font-size:144%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.15.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.15.8.1" style="font-size:144%;">73.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.15.9"><span class="ltx_text" id="S2.T3.8.8.15.9.1" style="font-size:144%;">74.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.15.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.15.10.1" style="font-size:144%;">7.00</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.16.1"><span class="ltx_text" id="S2.T3.8.8.16.1.1" style="font-size:144%;">Couch</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.16.2"><span class="ltx_text" id="S2.T3.8.8.16.2.1" style="font-size:144%;">38</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.16.3"><span class="ltx_text" id="S2.T3.8.8.16.3.1" style="font-size:144%;">31.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.16.4"><span class="ltx_text" id="S2.T3.8.8.16.4.1" style="font-size:144%;">19.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.16.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.16.5.1" style="font-size:144%;">89.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.16.6"><span class="ltx_text" id="S2.T3.8.8.16.6.1" style="font-size:144%;">17.07</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.16.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.16.7.1" style="font-size:144%;">62.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.16.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.16.8.1" style="font-size:144%;">62.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.16.9"><span class="ltx_text" id="S2.T3.8.8.16.9.1" style="font-size:144%;">60.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.16.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.16.10.1" style="font-size:144%;">2.10</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.17.1"><span class="ltx_text" id="S2.T3.8.8.17.1.1" style="font-size:144%;">Bicycle</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.17.2"><span class="ltx_text" id="S2.T3.8.8.17.2.1" style="font-size:144%;">37</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.17.3"><span class="ltx_text" id="S2.T3.8.8.17.3.1" style="font-size:144%;">62.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.17.4"><span class="ltx_text" id="S2.T3.8.8.17.4.1" style="font-size:144%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.17.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.17.5.1" style="font-size:144%;">98.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.17.6"><span class="ltx_text" id="S2.T3.8.8.17.6.1" style="font-size:144%;">29.89</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.17.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.17.7.1" style="font-size:144%;">81.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.17.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.17.8.1" style="font-size:144%;">84.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.17.9"><span class="ltx_text" id="S2.T3.8.8.17.9.1" style="font-size:144%;">81.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.17.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.17.10.1" style="font-size:144%;">2.50</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.18.1"><span class="ltx_text" id="S2.T3.8.8.18.1.1" style="font-size:144%;">Chair</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.18.2"><span class="ltx_text" id="S2.T3.8.8.18.2.1" style="font-size:144%;">36</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.18.3"><span class="ltx_text" id="S2.T3.8.8.18.3.1" style="font-size:144%;">23.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.18.4"><span class="ltx_text" id="S2.T3.8.8.18.4.1" style="font-size:144%;">14.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.18.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.18.5.1" style="font-size:144%;">87.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.18.6"><span class="ltx_text" id="S2.T3.8.8.18.6.1" style="font-size:144%;">36.05</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.18.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.18.7.1" style="font-size:144%;">70.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.18.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.18.8.1" style="font-size:144%;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.18.9"><span class="ltx_text" id="S2.T3.8.8.18.9.1" style="font-size:144%;">68.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.18.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.18.10.1" style="font-size:144%;">1.60</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.19.1"><span class="ltx_text" id="S2.T3.8.8.19.1.1" style="font-size:144%;">Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.19.2"><span class="ltx_text" id="S2.T3.8.8.19.2.1" style="font-size:144%;">35</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.19.3"><span class="ltx_text" id="S2.T3.8.8.19.3.1" style="font-size:144%;">19.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.19.4"><span class="ltx_text" id="S2.T3.8.8.19.4.1" style="font-size:144%;">11.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.19.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.19.5.1" style="font-size:144%;">92.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.19.6"><span class="ltx_text" id="S2.T3.8.8.19.6.1" style="font-size:144%;">29.51</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.19.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.19.7.1" style="font-size:144%;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.19.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.19.8.1" style="font-size:144%;">70.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.19.9"><span class="ltx_text" id="S2.T3.8.8.19.9.1" style="font-size:144%;">64.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.19.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.19.10.1" style="font-size:144%;">4.00</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.20.1"><span class="ltx_text" id="S2.T3.8.8.20.1.1" style="font-size:144%;">Motorcycle</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.20.2"><span class="ltx_text" id="S2.T3.8.8.20.2.1" style="font-size:144%;">33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.20.3"><span class="ltx_text" id="S2.T3.8.8.20.3.1" style="font-size:144%;">60.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.20.4"><span class="ltx_text" id="S2.T3.8.8.20.4.1" style="font-size:144%;">45.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.20.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.20.5.1" style="font-size:144%;">99.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.20.6"><span class="ltx_text" id="S2.T3.8.8.20.6.1" style="font-size:144%;">19.24</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.20.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.20.7.1" style="font-size:144%;">76.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.20.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.20.8.1" style="font-size:144%;">78.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.20.9"><span class="ltx_text" id="S2.T3.8.8.20.9.1" style="font-size:144%;">77.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.20.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.20.10.1" style="font-size:144%;">0.90</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.21.1"><span class="ltx_text" id="S2.T3.8.8.21.1.1" style="font-size:144%;">Book</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.21.2"><span class="ltx_text" id="S2.T3.8.8.21.2.1" style="font-size:144%;">27</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.21.3"><span class="ltx_text" id="S2.T3.8.8.21.3.1" style="font-size:144%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.21.4"><span class="ltx_text" id="S2.T3.8.8.21.4.1" style="font-size:144%;">33.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.21.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.21.5.1" style="font-size:144%;">99.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.21.6"><span class="ltx_text" id="S2.T3.8.8.21.6.1" style="font-size:144%;">53.59</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.21.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.21.7.1" style="font-size:144%;">74.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.21.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.21.8.1" style="font-size:144%;">75.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.21.9"><span class="ltx_text" id="S2.T3.8.8.21.9.1" style="font-size:144%;">80.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.21.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.21.10.1" style="font-size:144%;">1.10</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.22.1"><span class="ltx_text" id="S2.T3.8.8.22.1.1" style="font-size:144%;">Skis</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.22.2"><span class="ltx_text" id="S2.T3.8.8.22.2.1" style="font-size:144%;">25</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.22.3"><span class="ltx_text" id="S2.T3.8.8.22.3.1" style="font-size:144%;">36.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.22.4"><span class="ltx_text" id="S2.T3.8.8.22.4.1" style="font-size:144%;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.22.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.22.5.1" style="font-size:144%;">93.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.22.6"><span class="ltx_text" id="S2.T3.8.8.22.6.1" style="font-size:144%;">104.07</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.22.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.22.7.1" style="font-size:144%;">83.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.22.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.22.8.1" style="font-size:144%;">81.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.22.9"><span class="ltx_text" id="S2.T3.8.8.22.9.1" style="font-size:144%;">83.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.22.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.22.10.1" style="font-size:144%;">0.80</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.23.1"><span class="ltx_text" id="S2.T3.8.8.23.1.1" style="font-size:144%;">Bed</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.23.2"><span class="ltx_text" id="S2.T3.8.8.23.2.1" style="font-size:144%;">24</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.23.3"><span class="ltx_text" id="S2.T3.8.8.23.3.1" style="font-size:144%;">29.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.23.4"><span class="ltx_text" id="S2.T3.8.8.23.4.1" style="font-size:144%;">19.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.23.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.23.5.1" style="font-size:144%;">82.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.23.6"><span class="ltx_text" id="S2.T3.8.8.23.6.1" style="font-size:144%;">20.71</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.23.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.23.7.1" style="font-size:144%;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.23.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.23.8.1" style="font-size:144%;">56.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.23.9"><span class="ltx_text" id="S2.T3.8.8.23.9.1" style="font-size:144%;">48.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.23.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.23.10.1" style="font-size:144%;">2.70</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.24.1"><span class="ltx_text" id="S2.T3.8.8.24.1.1" style="font-size:144%;">Laptop</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.24.2"><span class="ltx_text" id="S2.T3.8.8.24.2.1" style="font-size:144%;">24</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.24.3"><span class="ltx_text" id="S2.T3.8.8.24.3.1" style="font-size:144%;">36.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.24.4"><span class="ltx_text" id="S2.T3.8.8.24.4.1" style="font-size:144%;">24.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.24.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.24.5.1" style="font-size:144%;">94.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.24.6"><span class="ltx_text" id="S2.T3.8.8.24.6.1" style="font-size:144%;">45.73</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.24.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.24.7.1" style="font-size:144%;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.24.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.24.8.1" style="font-size:144%;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.24.9"><span class="ltx_text" id="S2.T3.8.8.24.9.1" style="font-size:144%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.24.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.24.10.1" style="font-size:144%;">4.70</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.25.1"><span class="ltx_text" id="S2.T3.8.8.25.1.1" style="font-size:144%;">Backpack</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.25.2"><span class="ltx_text" id="S2.T3.8.8.25.2.1" style="font-size:144%;">24</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.25.3"><span class="ltx_text" id="S2.T3.8.8.25.3.1" style="font-size:144%;">37.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.25.4"><span class="ltx_text" id="S2.T3.8.8.25.4.1" style="font-size:144%;">24.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.25.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.25.5.1" style="font-size:144%;">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.25.6"><span class="ltx_text" id="S2.T3.8.8.25.6.1" style="font-size:144%;">12.10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.25.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.25.7.1" style="font-size:144%;">59.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.25.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.25.8.1" style="font-size:144%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.25.9"><span class="ltx_text" id="S2.T3.8.8.25.9.1" style="font-size:144%;">54.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.25.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.25.10.1" style="font-size:144%;">3.50</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.26.1"><span class="ltx_text" id="S2.T3.8.8.26.1.1" style="font-size:144%;">Umbrella</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.26.2"><span class="ltx_text" id="S2.T3.8.8.26.2.1" style="font-size:144%;">23</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.26.3"><span class="ltx_text" id="S2.T3.8.8.26.3.1" style="font-size:144%;">51.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.26.4"><span class="ltx_text" id="S2.T3.8.8.26.4.1" style="font-size:144%;">36.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.26.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.26.5.1" style="font-size:144%;">99.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.26.6"><span class="ltx_text" id="S2.T3.8.8.26.6.1" style="font-size:144%;">67.20</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.26.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.26.7.1" style="font-size:144%;">82.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.26.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.26.8.1" style="font-size:144%;">83.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.26.9"><span class="ltx_text" id="S2.T3.8.8.26.9.1" style="font-size:144%;">86.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.26.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.26.10.1" style="font-size:144%;">1.00</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.27.1"><span class="ltx_text" id="S2.T3.8.8.27.1.1" style="font-size:144%;">Knife</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.27.2"><span class="ltx_text" id="S2.T3.8.8.27.2.1" style="font-size:144%;">19</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.27.3"><span class="ltx_text" id="S2.T3.8.8.27.3.1" style="font-size:144%;">63.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.27.4"><span class="ltx_text" id="S2.T3.8.8.27.4.1" style="font-size:144%;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.27.5"><span class="ltx_text" id="S2.T3.8.8.27.5.1" style="font-size:144%;">84.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.27.6"><span class="ltx_text" id="S2.T3.8.8.27.6.1" style="font-size:144%;">31.55</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.27.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.27.7.1" style="font-size:144%;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.27.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.27.8.1" style="font-size:144%;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.27.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.27.9.1" style="font-size:144%;">86.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.27.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.27.10.1" style="font-size:144%;">0.10</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.28.1"><span class="ltx_text" id="S2.T3.8.8.28.1.1" style="font-size:144%;">Frisbee</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.28.2"><span class="ltx_text" id="S2.T3.8.8.28.2.1" style="font-size:144%;">15</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.28.3"><span class="ltx_text" id="S2.T3.8.8.28.3.1" style="font-size:144%;">33.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.28.4"><span class="ltx_text" id="S2.T3.8.8.28.4.1" style="font-size:144%;">22.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.28.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.28.5.1" style="font-size:144%;">99.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.28.6"><span class="ltx_text" id="S2.T3.8.8.28.6.1" style="font-size:144%;">69.43</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.28.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.28.7.1" style="font-size:144%;">68.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.28.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.28.8.1" style="font-size:144%;">71.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.28.9"><span class="ltx_text" id="S2.T3.8.8.28.9.1" style="font-size:144%;">84.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.28.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.28.10.1" style="font-size:144%;">1.00</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.29">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.29.1"><span class="ltx_text" id="S2.T3.8.8.29.1.1" style="font-size:144%;">D. Table</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.29.2"><span class="ltx_text" id="S2.T3.8.8.29.2.1" style="font-size:144%;">11</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.29.3"><span class="ltx_text" id="S2.T3.8.8.29.3.1" style="font-size:144%;">19.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.29.4"><span class="ltx_text" id="S2.T3.8.8.29.4.1" style="font-size:144%;">14.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.29.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.29.5.1" style="font-size:144%;">67.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.29.6"><span class="ltx_text" id="S2.T3.8.8.29.6.1" style="font-size:144%;">42.56</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.29.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.29.7.1" style="font-size:144%;">35.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.29.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.29.8.1" style="font-size:144%;">44.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.29.9"><span class="ltx_text" id="S2.T3.8.8.29.9.1" style="font-size:144%;">63.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.29.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.29.10.1" style="font-size:144%;">6.60</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.30">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.30.1"><span class="ltx_text" id="S2.T3.8.8.30.1.1" style="font-size:144%;">B. Glove</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.30.2"><span class="ltx_text" id="S2.T3.8.8.30.2.1" style="font-size:144%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.30.3"><span class="ltx_text" id="S2.T3.8.8.30.3.1" style="font-size:144%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.30.4"><span class="ltx_text" id="S2.T3.8.8.30.4.1" style="font-size:144%;">63.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.30.5"><span class="ltx_text" id="S2.T3.8.8.30.5.1" style="font-size:144%;">81.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.30.6"><span class="ltx_text" id="S2.T3.8.8.30.6.1" style="font-size:144%;">41.58</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.30.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.30.7.1" style="font-size:144%;">93.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.30.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.30.8.1" style="font-size:144%;">98.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.30.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.30.9.1" style="font-size:144%;">89.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.30.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.30.10.1" style="font-size:144%;">0.10</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.31">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.31.1"><span class="ltx_text" id="S2.T3.8.8.31.1.1" style="font-size:144%;">Remote</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.31.2"><span class="ltx_text" id="S2.T3.8.8.31.2.1" style="font-size:144%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.31.3"><span class="ltx_text" id="S2.T3.8.8.31.3.1" style="font-size:144%;">0.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.31.4"><span class="ltx_text" id="S2.T3.8.8.31.4.1" style="font-size:144%;">1.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.31.5"><span class="ltx_text" id="S2.T3.8.8.31.5.1" style="font-size:144%;">0.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.31.6"><span class="ltx_text" id="S2.T3.8.8.31.6.1" style="font-size:144%;">82.16</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.31.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.31.7.1" style="font-size:144%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.31.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.31.8.1" style="font-size:144%;">77.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.31.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.31.9.1" style="font-size:144%;">82.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.31.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.31.10.1" style="font-size:144%;">0.50</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.32">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.32.1"><span class="ltx_text" id="S2.T3.8.8.32.1.1" style="font-size:144%;">Banana</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.32.2"><span class="ltx_text" id="S2.T3.8.8.32.2.1" style="font-size:144%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.32.3"><span class="ltx_text" id="S2.T3.8.8.32.3.1" style="font-size:144%;">6.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.32.4"><span class="ltx_text" id="S2.T3.8.8.32.4.1" style="font-size:144%;">7.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.32.5"><span class="ltx_text" id="S2.T3.8.8.32.5.1" style="font-size:144%;">6.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.32.6"><span class="ltx_text" id="S2.T3.8.8.32.6.1" style="font-size:144%;">67.19</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.32.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.32.7.1" style="font-size:144%;">76.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.32.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.32.8.1" style="font-size:144%;">74.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.32.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.32.9.1" style="font-size:144%;">81.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.32.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.32.10.1" style="font-size:144%;">2.80</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.33">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.33.1"><span class="ltx_text" id="S2.T3.8.8.33.1.1" style="font-size:144%;">Kite</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.33.2"><span class="ltx_text" id="S2.T3.8.8.33.2.1" style="font-size:144%;">9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.33.3"><span class="ltx_text" id="S2.T3.8.8.33.3.1" style="font-size:144%;">65.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.33.4"><span class="ltx_text" id="S2.T3.8.8.33.4.1" style="font-size:144%;">51.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.33.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.33.5.1" style="font-size:144%;">95.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.33.6"><span class="ltx_text" id="S2.T3.8.8.33.6.1" style="font-size:144%;">50.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.33.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.33.7.1" style="font-size:144%;">85.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.33.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.33.8.1" style="font-size:144%;">86.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.33.9"><span class="ltx_text" id="S2.T3.8.8.33.9.1" style="font-size:144%;">85.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.33.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.33.10.1" style="font-size:144%;">0.30</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.34">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.34.1"><span class="ltx_text" id="S2.T3.8.8.34.1.1" style="font-size:144%;">Toothbrush</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.34.2"><span class="ltx_text" id="S2.T3.8.8.34.2.1" style="font-size:144%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.34.3"><span class="ltx_text" id="S2.T3.8.8.34.3.1" style="font-size:144%;">2.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.34.4"><span class="ltx_text" id="S2.T3.8.8.34.4.1" style="font-size:144%;">4.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.34.5"><span class="ltx_text" id="S2.T3.8.8.34.5.1" style="font-size:144%;">2.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.34.6"><span class="ltx_text" id="S2.T3.8.8.34.6.1" style="font-size:144%;">56.38</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.34.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.34.7.1" style="font-size:144%;">77.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.34.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.34.8.1" style="font-size:144%;">82.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.34.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.34.9.1" style="font-size:144%;">74.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.34.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.34.10.1" style="font-size:144%;">5.40</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.35">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.35.1"><span class="ltx_text" id="S2.T3.8.8.35.1.1" style="font-size:144%;">Boat</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.35.2"><span class="ltx_text" id="S2.T3.8.8.35.2.1" style="font-size:144%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.35.3"><span class="ltx_text" id="S2.T3.8.8.35.3.1" style="font-size:144%;">33.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.35.4"><span class="ltx_text" id="S2.T3.8.8.35.4.1" style="font-size:144%;">23.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.35.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.35.5.1" style="font-size:144%;">83.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.35.6"><span class="ltx_text" id="S2.T3.8.8.35.6.1" style="font-size:144%;">46.24</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.35.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.35.7.1" style="font-size:144%;">71.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.35.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.35.8.1" style="font-size:144%;">75.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.35.9"><span class="ltx_text" id="S2.T3.8.8.35.9.1" style="font-size:144%;">63.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.35.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.35.10.1" style="font-size:144%;">1.40</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.36">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.36.1"><span class="ltx_text" id="S2.T3.8.8.36.1.1" style="font-size:144%;">Sports ball</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.36.2"><span class="ltx_text" id="S2.T3.8.8.36.2.1" style="font-size:144%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.36.3"><span class="ltx_text" id="S2.T3.8.8.36.3.1" style="font-size:144%;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.36.4"><span class="ltx_text" id="S2.T3.8.8.36.4.1" style="font-size:144%;">34.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.36.5"><span class="ltx_text" id="S2.T3.8.8.36.5.1" style="font-size:144%;">39.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.36.6"><span class="ltx_text" id="S2.T3.8.8.36.6.1" style="font-size:144%;">60.54</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.36.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.36.7.1" style="font-size:144%;">64.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.36.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.36.8.1" style="font-size:144%;">74.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.36.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.36.9.1" style="font-size:144%;">83.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.36.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.36.10.1" style="font-size:144%;">5.30</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.37">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.37.1"><span class="ltx_text" id="S2.T3.8.8.37.1.1" style="font-size:144%;">B. Bat</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.37.2"><span class="ltx_text" id="S2.T3.8.8.37.2.1" style="font-size:144%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.37.3"><span class="ltx_text" id="S2.T3.8.8.37.3.1" style="font-size:144%;">36.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.37.4"><span class="ltx_text" id="S2.T3.8.8.37.4.1" style="font-size:144%;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.37.5"><span class="ltx_text" id="S2.T3.8.8.37.5.1" style="font-size:144%;">27.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.37.6"><span class="ltx_text" id="S2.T3.8.8.37.6.1" style="font-size:144%;">26.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.37.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.37.7.1" style="font-size:144%;">82.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.37.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.37.8.1" style="font-size:144%;">81.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.37.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.37.9.1" style="font-size:144%;">87.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.37.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.37.10.1" style="font-size:144%;">1.60</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.38">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.38.1"><span class="ltx_text" id="S2.T3.8.8.38.1.1" style="font-size:144%;">Apple</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.38.2"><span class="ltx_text" id="S2.T3.8.8.38.2.1" style="font-size:144%;">7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.38.3"><span class="ltx_text" id="S2.T3.8.8.38.3.1" style="font-size:144%;">6.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.38.4"><span class="ltx_text" id="S2.T3.8.8.38.4.1" style="font-size:144%;">17.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.38.5"><span class="ltx_text" id="S2.T3.8.8.38.5.1" style="font-size:144%;">3.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.38.6"><span class="ltx_text" id="S2.T3.8.8.38.6.1" style="font-size:144%;">45.69</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.38.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.38.7.1" style="font-size:144%;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.38.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.38.8.1" style="font-size:144%;">62.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.38.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.38.9.1" style="font-size:144%;">77.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.38.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.38.10.1" style="font-size:144%;">4.20</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.39">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.39.1"><span class="ltx_text" id="S2.T3.8.8.39.1.1" style="font-size:144%;">Handbag</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.39.2"><span class="ltx_text" id="S2.T3.8.8.39.2.1" style="font-size:144%;">7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.39.3"><span class="ltx_text" id="S2.T3.8.8.39.3.1" style="font-size:144%;">12.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.39.4"><span class="ltx_text" id="S2.T3.8.8.39.4.1" style="font-size:144%;">7.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.39.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.39.5.1" style="font-size:144%;">46.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.39.6"><span class="ltx_text" id="S2.T3.8.8.39.6.1" style="font-size:144%;">26.61</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.39.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.39.7.1" style="font-size:144%;">31.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.39.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.39.8.1" style="font-size:144%;">27.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.39.9"><span class="ltx_text" id="S2.T3.8.8.39.9.1" style="font-size:144%;">40.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.39.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.39.10.1" style="font-size:144%;">4.10</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.40">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.40.1"><span class="ltx_text" id="S2.T3.8.8.40.1.1" style="font-size:144%;">Tie</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.40.2"><span class="ltx_text" id="S2.T3.8.8.40.2.1" style="font-size:144%;">6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.40.3"><span class="ltx_text" id="S2.T3.8.8.40.3.1" style="font-size:144%;">39.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.40.4"><span class="ltx_text" id="S2.T3.8.8.40.4.1" style="font-size:144%;">28.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.40.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.40.5.1" style="font-size:144%;">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.40.6"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.40.6.1" style="font-size:144%;">7.24</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.40.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.40.7.1" style="font-size:144%;">49.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.40.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.40.8.1" style="font-size:144%;">32.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.40.9"><span class="ltx_text" id="S2.T3.8.8.40.9.1" style="font-size:144%;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.40.10"><span class="ltx_text" id="S2.T3.8.8.40.10.1" style="font-size:144%;">7.60</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.41">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.41.1"><span class="ltx_text" id="S2.T3.8.8.41.1.1" style="font-size:144%;">Suitcase</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.41.2"><span class="ltx_text" id="S2.T3.8.8.41.2.1" style="font-size:144%;">6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.41.3"><span class="ltx_text" id="S2.T3.8.8.41.3.1" style="font-size:144%;">26.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.41.4"><span class="ltx_text" id="S2.T3.8.8.41.4.1" style="font-size:144%;">24.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.41.5"><span class="ltx_text" id="S2.T3.8.8.41.5.1" style="font-size:144%;">30.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.41.6"><span class="ltx_text" id="S2.T3.8.8.41.6.1" style="font-size:144%;">87.44</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.41.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.41.7.1" style="font-size:144%;">79.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.41.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.41.8.1" style="font-size:144%;">65.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.41.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.41.9.1" style="font-size:144%;">83.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.41.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.41.10.1" style="font-size:144%;">0.80</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.42">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.42.1"><span class="ltx_text" id="S2.T3.8.8.42.1.1" style="font-size:144%;">Wine glass</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.42.2"><span class="ltx_text" id="S2.T3.8.8.42.2.1" style="font-size:144%;">5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.42.3"><span class="ltx_text" id="S2.T3.8.8.42.3.1" style="font-size:144%;">5.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.42.4"><span class="ltx_text" id="S2.T3.8.8.42.4.1" style="font-size:144%;">8.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.42.5"><span class="ltx_text" id="S2.T3.8.8.42.5.1" style="font-size:144%;">5.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.42.6"><span class="ltx_text" id="S2.T3.8.8.42.6.1" style="font-size:144%;">70.32</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.42.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.42.7.1" style="font-size:144%;">66.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.42.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.42.8.1" style="font-size:144%;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.42.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.42.9.1" style="font-size:144%;">69.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.42.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.42.10.1" style="font-size:144%;">4.40</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.43">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.43.1"><span class="ltx_text" id="S2.T3.8.8.43.1.1" style="font-size:144%;">Spoon</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.43.2"><span class="ltx_text" id="S2.T3.8.8.43.2.1" style="font-size:144%;">5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.43.3"><span class="ltx_text" id="S2.T3.8.8.43.3.1" style="font-size:144%;">61.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.43.4"><span class="ltx_text" id="S2.T3.8.8.43.4.1" style="font-size:144%;">48.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.43.5"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.43.5.1" style="font-size:144%;">89.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.43.6"><span class="ltx_text" id="S2.T3.8.8.43.6.1" style="font-size:144%;">15.35</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.43.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.43.7.1" style="font-size:144%;">67.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.43.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.43.8.1" style="font-size:144%;">62.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.43.9"><span class="ltx_text" id="S2.T3.8.8.43.9.1" style="font-size:144%;">78.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.43.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.43.10.1" style="font-size:144%;">5.50</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.44">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.44.1"><span class="ltx_text" id="S2.T3.8.8.44.1.1" style="font-size:144%;">Fork</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.44.2"><span class="ltx_text" id="S2.T3.8.8.44.2.1" style="font-size:144%;">5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.44.3"><span class="ltx_text" id="S2.T3.8.8.44.3.1" style="font-size:144%;">1.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.44.4"><span class="ltx_text" id="S2.T3.8.8.44.4.1" style="font-size:144%;">1.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.44.5"><span class="ltx_text" id="S2.T3.8.8.44.5.1" style="font-size:144%;">1.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.44.6"><span class="ltx_text" id="S2.T3.8.8.44.6.1" style="font-size:144%;">75.47</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.44.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.44.7.1" style="font-size:144%;">64.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.44.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.44.8.1" style="font-size:144%;">66.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.44.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.44.9.1" style="font-size:144%;">76.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.44.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.44.10.1" style="font-size:144%;">2.20</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.45">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.45.1"><span class="ltx_text" id="S2.T3.8.8.45.1.1" style="font-size:144%;">Keyboard</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.45.2"><span class="ltx_text" id="S2.T3.8.8.45.2.1" style="font-size:144%;">5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.45.3"><span class="ltx_text" id="S2.T3.8.8.45.3.1" style="font-size:144%;">3.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.45.4"><span class="ltx_text" id="S2.T3.8.8.45.4.1" style="font-size:144%;">6.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.45.5"><span class="ltx_text" id="S2.T3.8.8.45.5.1" style="font-size:144%;">3.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.45.6"><span class="ltx_text" id="S2.T3.8.8.45.6.1" style="font-size:144%;">70.41</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.45.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.45.7.1" style="font-size:144%;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.45.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.45.8.1" style="font-size:144%;">69.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.45.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.45.9.1" style="font-size:144%;">74.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.45.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.45.10.1" style="font-size:144%;">0.50</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.46">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.46.1"><span class="ltx_text" id="S2.T3.8.8.46.1.1" style="font-size:144%;">Teddy bear</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.46.2"><span class="ltx_text" id="S2.T3.8.8.46.2.1" style="font-size:144%;">5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.46.3"><span class="ltx_text" id="S2.T3.8.8.46.3.1" style="font-size:144%;">17.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.46.4"><span class="ltx_text" id="S2.T3.8.8.46.4.1" style="font-size:144%;">15.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.46.5"><span class="ltx_text" id="S2.T3.8.8.46.5.1" style="font-size:144%;">45.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.46.6"><span class="ltx_text" id="S2.T3.8.8.46.6.1" style="font-size:144%;">24.70</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.46.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.46.7.1" style="font-size:144%;">43.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.46.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.46.8.1" style="font-size:144%;">61.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.46.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.46.9.1" style="font-size:144%;">68.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.46.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.46.10.1" style="font-size:144%;">11.60</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.47">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.47.1"><span class="ltx_text" id="S2.T3.8.8.47.1.1" style="font-size:144%;">Clock</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.47.2"><span class="ltx_text" id="S2.T3.8.8.47.2.1" style="font-size:144%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.47.3"><span class="ltx_text" id="S2.T3.8.8.47.3.1" style="font-size:144%;">23.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.47.4"><span class="ltx_text" id="S2.T3.8.8.47.4.1" style="font-size:144%;">14.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.47.5"><span class="ltx_text" id="S2.T3.8.8.47.5.1" style="font-size:144%;">58.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.47.6"><span class="ltx_text" id="S2.T3.8.8.47.6.1" style="font-size:144%;">46.42</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.47.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.47.7.1" style="font-size:144%;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.47.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.47.8.1" style="font-size:144%;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.47.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.47.9.1" style="font-size:144%;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.47.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.47.10.1" style="font-size:144%;">3.30</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.48">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.48.1"><span class="ltx_text" id="S2.T3.8.8.48.1.1" style="font-size:144%;">Cake</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.48.2"><span class="ltx_text" id="S2.T3.8.8.48.2.1" style="font-size:144%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.48.3"><span class="ltx_text" id="S2.T3.8.8.48.3.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.48.4"><span class="ltx_text" id="S2.T3.8.8.48.4.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.48.5"><span class="ltx_text" id="S2.T3.8.8.48.5.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.48.6"><span class="ltx_text" id="S2.T3.8.8.48.6.1" style="font-size:144%;">83.99</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.48.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.48.7.1" style="font-size:144%;">52.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.48.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.48.8.1" style="font-size:144%;">41.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.48.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.48.9.1" style="font-size:144%;">82.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.48.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.48.10.1" style="font-size:144%;">10.60</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.49">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.49.1"><span class="ltx_text" id="S2.T3.8.8.49.1.1" style="font-size:144%;">Scissors</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.49.2"><span class="ltx_text" id="S2.T3.8.8.49.2.1" style="font-size:144%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.49.3"><span class="ltx_text" id="S2.T3.8.8.49.3.1" style="font-size:144%;">0.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.49.4"><span class="ltx_text" id="S2.T3.8.8.49.4.1" style="font-size:144%;">0.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.49.5"><span class="ltx_text" id="S2.T3.8.8.49.5.1" style="font-size:144%;">0.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.49.6"><span class="ltx_text" id="S2.T3.8.8.49.6.1" style="font-size:144%;">87.88</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.49.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.49.7.1" style="font-size:144%;">28.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.49.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.49.8.1" style="font-size:144%;">21.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.49.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.49.9.1" style="font-size:144%;">73.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.49.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.49.10.1" style="font-size:144%;">40.10</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.50">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.50.1"><span class="ltx_text" id="S2.T3.8.8.50.1.1" style="font-size:144%;">Cup</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.50.2"><span class="ltx_text" id="S2.T3.8.8.50.2.1" style="font-size:144%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.50.3"><span class="ltx_text" id="S2.T3.8.8.50.3.1" style="font-size:144%;">7.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.50.4"><span class="ltx_text" id="S2.T3.8.8.50.4.1" style="font-size:144%;">11.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.50.5"><span class="ltx_text" id="S2.T3.8.8.50.5.1" style="font-size:144%;">5.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.50.6"><span class="ltx_text" id="S2.T3.8.8.50.6.1" style="font-size:144%;">69.03</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.50.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.50.7.1" style="font-size:144%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.50.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.50.8.1" style="font-size:144%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.50.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.50.9.1" style="font-size:144%;">76.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.50.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.50.10.1" style="font-size:144%;">1.70</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.51">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.51.1"><span class="ltx_text" id="S2.T3.8.8.51.1.1" style="font-size:144%;">Car</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.51.2"><span class="ltx_text" id="S2.T3.8.8.51.2.1" style="font-size:144%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.51.3"><span class="ltx_text" id="S2.T3.8.8.51.3.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.51.4"><span class="ltx_text" id="S2.T3.8.8.51.4.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.51.5"><span class="ltx_text" id="S2.T3.8.8.51.5.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.51.6"><span class="ltx_text" id="S2.T3.8.8.51.6.1" style="font-size:144%;">49.13</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.51.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.51.7.1" style="font-size:144%;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.51.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.51.8.1" style="font-size:144%;">67.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.51.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.51.9.1" style="font-size:144%;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.51.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.51.10.1" style="font-size:144%;">5.30</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.52">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.52.1"><span class="ltx_text" id="S2.T3.8.8.52.1.1" style="font-size:144%;">Pizza</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.52.2"><span class="ltx_text" id="S2.T3.8.8.52.2.1" style="font-size:144%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.52.3"><span class="ltx_text" id="S2.T3.8.8.52.3.1" style="font-size:144%;">19.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.52.4"><span class="ltx_text" id="S2.T3.8.8.52.4.1" style="font-size:144%;">19.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.52.5"><span class="ltx_text" id="S2.T3.8.8.52.5.1" style="font-size:144%;">35.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.52.6"><span class="ltx_text" id="S2.T3.8.8.52.6.1" style="font-size:144%;">46.43</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.52.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.52.7.1" style="font-size:144%;">44.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.52.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.52.8.1" style="font-size:144%;">44.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.52.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.52.9.1" style="font-size:144%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.52.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.52.10.1" style="font-size:144%;">29.20</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.53">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.53.1"><span class="ltx_text" id="S2.T3.8.8.53.1.1" style="font-size:144%;">Carrot</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.53.2"><span class="ltx_text" id="S2.T3.8.8.53.2.1" style="font-size:144%;">3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.53.3"><span class="ltx_text" id="S2.T3.8.8.53.3.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.53.4"><span class="ltx_text" id="S2.T3.8.8.53.4.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.53.5"><span class="ltx_text" id="S2.T3.8.8.53.5.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.53.6"><span class="ltx_text" id="S2.T3.8.8.53.6.1" style="font-size:144%;">90.22</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.53.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.53.7.1" style="font-size:144%;">59.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.53.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.53.8.1" style="font-size:144%;">62.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.53.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.53.9.1" style="font-size:144%;">77.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.53.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.53.10.1" style="font-size:144%;">0.20</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.54">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.54.1"><span class="ltx_text" id="S2.T3.8.8.54.1.1" style="font-size:144%;">Truck</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.54.2"><span class="ltx_text" id="S2.T3.8.8.54.2.1" style="font-size:144%;">3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.54.3"><span class="ltx_text" id="S2.T3.8.8.54.3.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.54.4"><span class="ltx_text" id="S2.T3.8.8.54.4.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.54.5"><span class="ltx_text" id="S2.T3.8.8.54.5.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.54.6"><span class="ltx_text" id="S2.T3.8.8.54.6.1" style="font-size:144%;">61.65</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.54.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.54.7.1" style="font-size:144%;">81.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.54.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.54.8.1" style="font-size:144%;">84.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.54.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.54.9.1" style="font-size:144%;">77.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.54.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.54.10.1" style="font-size:144%;">3.10</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.55">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.55.1"><span class="ltx_text" id="S2.T3.8.8.55.1.1" style="font-size:144%;">Bottle</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.55.2"><span class="ltx_text" id="S2.T3.8.8.55.2.1" style="font-size:144%;">3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.55.3"><span class="ltx_text" id="S2.T3.8.8.55.3.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.55.4"><span class="ltx_text" id="S2.T3.8.8.55.4.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.55.5"><span class="ltx_text" id="S2.T3.8.8.55.5.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.55.6"><span class="ltx_text" id="S2.T3.8.8.55.6.1" style="font-size:144%;">91.14</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.55.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.55.7.1" style="font-size:144%;">59.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.55.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.55.8.1" style="font-size:144%;">55.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.55.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.55.9.1" style="font-size:144%;">81.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.55.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.55.10.1" style="font-size:144%;">0.10</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.56">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.56.1"><span class="ltx_text" id="S2.T3.8.8.56.1.1" style="font-size:144%;">Airplane</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.56.2"><span class="ltx_text" id="S2.T3.8.8.56.2.1" style="font-size:144%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.56.3"><span class="ltx_text" id="S2.T3.8.8.56.3.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.56.4"><span class="ltx_text" id="S2.T3.8.8.56.4.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.56.5"><span class="ltx_text" id="S2.T3.8.8.56.5.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.56.6"><span class="ltx_text" id="S2.T3.8.8.56.6.1" style="font-size:144%;">87.52</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.56.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.56.7.1" style="font-size:144%;">76.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.56.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.56.8.1" style="font-size:144%;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.56.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.56.9.1" style="font-size:144%;">85.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.56.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.56.10.1" style="font-size:144%;">3.60</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.57">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.57.1"><span class="ltx_text" id="S2.T3.8.8.57.1.1" style="font-size:144%;">Toilet</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.57.2"><span class="ltx_text" id="S2.T3.8.8.57.2.1" style="font-size:144%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.57.3"><span class="ltx_text" id="S2.T3.8.8.57.3.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.57.4"><span class="ltx_text" id="S2.T3.8.8.57.4.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.57.5"><span class="ltx_text" id="S2.T3.8.8.57.5.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.57.6"><span class="ltx_text" id="S2.T3.8.8.57.6.1" style="font-size:144%;">86.55</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.57.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.57.7.1" style="font-size:144%;">32.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.57.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.57.8.1" style="font-size:144%;">35.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.57.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.57.9.1" style="font-size:144%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.57.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.57.10.1" style="font-size:144%;">3.30</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.58">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.58.1"><span class="ltx_text" id="S2.T3.8.8.58.1.1" style="font-size:144%;">Hot dog</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.58.2"><span class="ltx_text" id="S2.T3.8.8.58.2.1" style="font-size:144%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.58.3"><span class="ltx_text" id="S2.T3.8.8.58.3.1" style="font-size:144%;">7.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.58.4"><span class="ltx_text" id="S2.T3.8.8.58.4.1" style="font-size:144%;">23.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.58.5"><span class="ltx_text" id="S2.T3.8.8.58.5.1" style="font-size:144%;">4.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.58.6"><span class="ltx_text" id="S2.T3.8.8.58.6.1" style="font-size:144%;">46.32</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.58.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.58.7.1" style="font-size:144%;">81.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.58.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.58.8.1" style="font-size:144%;">84.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.58.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.58.9.1" style="font-size:144%;">78.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.58.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.58.10.1" style="font-size:144%;">4.10</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.59">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.59.1"><span class="ltx_text" id="S2.T3.8.8.59.1.1" style="font-size:144%;">Donut</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.59.2"><span class="ltx_text" id="S2.T3.8.8.59.2.1" style="font-size:144%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.59.3"><span class="ltx_text" id="S2.T3.8.8.59.3.1" style="font-size:144%;">19.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.59.4"><span class="ltx_text" id="S2.T3.8.8.59.4.1" style="font-size:144%;">30.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.59.5"><span class="ltx_text" id="S2.T3.8.8.59.5.1" style="font-size:144%;">14.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.59.6"><span class="ltx_text" id="S2.T3.8.8.59.6.1" style="font-size:144%;">42.47</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.59.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.59.7.1" style="font-size:144%;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.59.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.59.8.1" style="font-size:144%;">90.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.59.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.59.9.1" style="font-size:144%;">65.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.59.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.59.10.1" style="font-size:144%;">12.00</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.60">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.60.1"><span class="ltx_text" id="S2.T3.8.8.60.1.1" style="font-size:144%;">Mouse</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.60.2"><span class="ltx_text" id="S2.T3.8.8.60.2.1" style="font-size:144%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.60.3"><span class="ltx_text" id="S2.T3.8.8.60.3.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.60.4"><span class="ltx_text" id="S2.T3.8.8.60.4.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.60.5"><span class="ltx_text" id="S2.T3.8.8.60.5.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.60.6"><span class="ltx_text" id="S2.T3.8.8.60.6.1" style="font-size:144%;">82.03</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.60.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.60.7.1" style="font-size:144%;">40.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.60.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.60.8.1" style="font-size:144%;">27.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.60.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.60.9.1" style="font-size:144%;">82.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.60.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.60.10.1" style="font-size:144%;">0.10</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.61">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T3.8.8.61.1"><span class="ltx_text" id="S2.T3.8.8.61.1.1" style="font-size:144%;">Vase</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.61.2"><span class="ltx_text" id="S2.T3.8.8.61.2.1" style="font-size:144%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.61.3"><span class="ltx_text" id="S2.T3.8.8.61.3.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.61.4"><span class="ltx_text" id="S2.T3.8.8.61.4.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.61.5"><span class="ltx_text" id="S2.T3.8.8.61.5.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T3.8.8.61.6"><span class="ltx_text" id="S2.T3.8.8.61.6.1" style="font-size:144%;">91.96</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.61.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.61.7.1" style="font-size:144%;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.61.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.61.8.1" style="font-size:144%;">59.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.61.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.61.9.1" style="font-size:144%;">81.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.8.61.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.61.10.1" style="font-size:144%;">0.20</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8.62">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S2.T3.8.8.62.1"><span class="ltx_text" id="S2.T3.8.8.62.1.1" style="font-size:144%;">F. Hydrant</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T3.8.8.62.2"><span class="ltx_text" id="S2.T3.8.8.62.2.1" style="font-size:144%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.8.8.62.3"><span class="ltx_text" id="S2.T3.8.8.62.3.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.8.8.62.4"><span class="ltx_text" id="S2.T3.8.8.62.4.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.8.8.62.5"><span class="ltx_text" id="S2.T3.8.8.62.5.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T3.8.8.62.6"><span class="ltx_text" id="S2.T3.8.8.62.6.1" style="font-size:144%;">88.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.8.8.62.7"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.62.7.1" style="font-size:144%;">85.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.8.8.62.8"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.62.8.1" style="font-size:144%;">82.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.8.8.62.9"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.62.9.1" style="font-size:144%;">88.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.8.8.62.10"><span class="ltx_text ltx_font_bold" id="S2.T3.8.8.62.10.1" style="font-size:144%;">0.00</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table S.3 presents a detailed breakdown of the performance of the InteractVLM model and the Semantic-DECO baseline model (an extension of the DECO model) on the task of semantic human contact prediction.  The table evaluates performance across various object categories within the DAMON dataset's test set.  Each row represents a different object category, showing the number of samples available for that category, and the F1 score, precision, and recall achieved by both models.  The 'Geodesic' column indicates the average geodesic distance (in centimeters) of predicted contact points from their ground truth locations.  Zero values in the F1, precision, and recall columns indicate that neither model was able to correctly predict any contact points for that object category. This table offers a granular insight into the capabilities of each model across a range of different object types and provides a clear visualization of the relative strengths and weaknesses.
> <details>
> <summary>read the caption</summary>
> Table S.3: Evaluation for “Semantic Human Contact” prediction on the DAMON [60] dataset for different object categories in the test set. The number of samples for each category is shown in the second column. “Semantic-DECO” is our extension of the existing DECO [60] model for this new task. Zero metrics indicate no correct predictions for the class.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T4.6.6">
<tr class="ltx_tr" id="S2.T4.6.6.7">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S2.T4.6.6.7.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S2.T4.6.6.7.2"><span class="ltx_text" id="S2.T4.6.6.7.2.1" style="font-size:70%;">Variants</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T4.6.6.7.3"><span class="ltx_text" id="S2.T4.6.6.7.3.1" style="font-size:70%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T4.6.6.7.4"><span class="ltx_text" id="S2.T4.6.6.7.4.1" style="font-size:70%;">Prec.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T4.6.6.7.5"><span class="ltx_text" id="S2.T4.6.6.7.5.1" style="font-size:70%;">Rec.</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.3.3.3">
<td class="ltx_td ltx_border_r" id="S2.T4.3.3.3.4"></td>
<td class="ltx_td ltx_border_r" id="S2.T4.3.3.3.5"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.1.1.1.1">
<span class="ltx_text" id="S2.T4.1.1.1.1.1" style="font-size:70%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T4.1.1.1.1.m1.1"><semantics id="S2.T4.1.1.1.1.m1.1a"><mo id="S2.T4.1.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S2.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T4.1.1.1.1.m1.1b"><ci id="S2.T4.1.1.1.1.m1.1.1.cmml" xref="S2.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.2.2.2.2">
<span class="ltx_text" id="S2.T4.2.2.2.2.1" style="font-size:70%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T4.2.2.2.2.m1.1"><semantics id="S2.T4.2.2.2.2.m1.1a"><mo id="S2.T4.2.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="S2.T4.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T4.2.2.2.2.m1.1b"><ci id="S2.T4.2.2.2.2.m1.1.1.cmml" xref="S2.T4.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T4.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S2.T4.3.3.3.3">
<span class="ltx_text" id="S2.T4.3.3.3.3.1" style="font-size:70%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T4.3.3.3.3.m1.1"><semantics id="S2.T4.3.3.3.3.m1.1a"><mo id="S2.T4.3.3.3.3.m1.1.1" mathsize="70%" stretchy="false" xref="S2.T4.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T4.3.3.3.3.m1.1b"><ci id="S2.T4.3.3.3.3.m1.1.1.cmml" xref="S2.T4.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T4.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S2.T4.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T4.4.4.4.2" rowspan="2"><span class="ltx_text" id="S2.T4.4.4.4.2.1" style="font-size:70%;">Masks</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T4.4.4.4.1">
<span class="ltx_text" id="S2.T4.4.4.4.1.1" style="font-size:70%;">(a) Size </span><math alttext="512\times 512" class="ltx_Math" display="inline" id="S2.T4.4.4.4.1.m1.1"><semantics id="S2.T4.4.4.4.1.m1.1a"><mrow id="S2.T4.4.4.4.1.m1.1.1" xref="S2.T4.4.4.4.1.m1.1.1.cmml"><mn id="S2.T4.4.4.4.1.m1.1.1.2" mathsize="70%" xref="S2.T4.4.4.4.1.m1.1.1.2.cmml">512</mn><mo id="S2.T4.4.4.4.1.m1.1.1.1" lspace="0.222em" mathsize="70%" rspace="0.222em" xref="S2.T4.4.4.4.1.m1.1.1.1.cmml">×</mo><mn id="S2.T4.4.4.4.1.m1.1.1.3" mathsize="70%" xref="S2.T4.4.4.4.1.m1.1.1.3.cmml">512</mn></mrow><annotation-xml encoding="MathML-Content" id="S2.T4.4.4.4.1.m1.1b"><apply id="S2.T4.4.4.4.1.m1.1.1.cmml" xref="S2.T4.4.4.4.1.m1.1.1"><times id="S2.T4.4.4.4.1.m1.1.1.1.cmml" xref="S2.T4.4.4.4.1.m1.1.1.1"></times><cn id="S2.T4.4.4.4.1.m1.1.1.2.cmml" type="integer" xref="S2.T4.4.4.4.1.m1.1.1.2">512</cn><cn id="S2.T4.4.4.4.1.m1.1.1.3.cmml" type="integer" xref="S2.T4.4.4.4.1.m1.1.1.3">512</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.4.4.4.1.m1.1c">512\times 512</annotation><annotation encoding="application/x-llamapun" id="S2.T4.4.4.4.1.m1.1d">512 × 512</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.4.4.4.3"><span class="ltx_text" id="S2.T4.4.4.4.3.1" style="font-size:70%;">70.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.4.4.4.4"><span class="ltx_text" id="S2.T4.4.4.4.4.1" style="font-size:70%;">70.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.4.4.4.5"><span class="ltx_text" id="S2.T4.4.4.4.5.1" style="font-size:70%;">71.4</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T4.5.5.5.1">
<span class="ltx_text" id="S2.T4.5.5.5.1.1" style="font-size:70%;">(b) Size </span><math alttext="1024\times 1024" class="ltx_Math" display="inline" id="S2.T4.5.5.5.1.m1.1"><semantics id="S2.T4.5.5.5.1.m1.1a"><mrow id="S2.T4.5.5.5.1.m1.1.1" xref="S2.T4.5.5.5.1.m1.1.1.cmml"><mn id="S2.T4.5.5.5.1.m1.1.1.2" mathsize="70%" xref="S2.T4.5.5.5.1.m1.1.1.2.cmml">1024</mn><mo id="S2.T4.5.5.5.1.m1.1.1.1" lspace="0.222em" mathsize="70%" rspace="0.222em" xref="S2.T4.5.5.5.1.m1.1.1.1.cmml">×</mo><mn id="S2.T4.5.5.5.1.m1.1.1.3" mathsize="70%" xref="S2.T4.5.5.5.1.m1.1.1.3.cmml">1024</mn></mrow><annotation-xml encoding="MathML-Content" id="S2.T4.5.5.5.1.m1.1b"><apply id="S2.T4.5.5.5.1.m1.1.1.cmml" xref="S2.T4.5.5.5.1.m1.1.1"><times id="S2.T4.5.5.5.1.m1.1.1.1.cmml" xref="S2.T4.5.5.5.1.m1.1.1.1"></times><cn id="S2.T4.5.5.5.1.m1.1.1.2.cmml" type="integer" xref="S2.T4.5.5.5.1.m1.1.1.2">1024</cn><cn id="S2.T4.5.5.5.1.m1.1.1.3.cmml" type="integer" xref="S2.T4.5.5.5.1.m1.1.1.3">1024</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.5.5.5.1.m1.1c">1024\times 1024</annotation><annotation encoding="application/x-llamapun" id="S2.T4.5.5.5.1.m1.1d">1024 × 1024</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.5.5.5.2"><span class="ltx_text" id="S2.T4.5.5.5.2.1" style="font-size:70%;">75.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.5.5.5.3"><span class="ltx_text" id="S2.T4.5.5.5.3.1" style="font-size:70%;">75.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.5.5.5.4"><span class="ltx_text" id="S2.T4.5.5.5.4.1" style="font-size:70%;">76.0</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T4.6.6.8.1" rowspan="4"><span class="ltx_text" id="S2.T4.6.6.8.1.1" style="font-size:70%;">MV-Loc</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T4.6.6.8.2"><span class="ltx_text" id="S2.T4.6.6.8.2.1" style="font-size:70%;">(c) No CamParams</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.6.6.8.3"><span class="ltx_text" id="S2.T4.6.6.8.3.1" style="font-size:70%;">69.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.6.6.8.4"><span class="ltx_text" id="S2.T4.6.6.8.4.1" style="font-size:70%;">68.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.6.6.8.5"><span class="ltx_text" id="S2.T4.6.6.8.5.1" style="font-size:70%;">71.1</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T4.6.6.9.1"><span class="ltx_text" id="S2.T4.6.6.9.1.1" style="font-size:70%;">(d) Concat CamParams</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.9.2"><span class="ltx_text" id="S2.T4.6.6.9.2.1" style="font-size:70%;">71.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.9.3"><span class="ltx_text" id="S2.T4.6.6.9.3.1" style="font-size:70%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.6.6.9.4"><span class="ltx_text" id="S2.T4.6.6.9.4.1" style="font-size:70%;">71.8</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T4.6.6.6.1">
<span class="ltx_text" id="S2.T4.6.6.6.1.1" style="font-size:70%;">(e) </span><span class="ltx_text" id="S2.T4.6.6.6.1.2" style="font-size:70%;">FeatLift</span><span class="ltx_text" id="S2.T4.6.6.6.1.3" style="font-size:70%;"> (</span><math alttext="\Phi" class="ltx_Math" display="inline" id="S2.T4.6.6.6.1.m1.1"><semantics id="S2.T4.6.6.6.1.m1.1a"><mi id="S2.T4.6.6.6.1.m1.1.1" mathsize="70%" mathvariant="normal" xref="S2.T4.6.6.6.1.m1.1.1.cmml">Φ</mi><annotation-xml encoding="MathML-Content" id="S2.T4.6.6.6.1.m1.1b"><ci id="S2.T4.6.6.6.1.m1.1.1.cmml" xref="S2.T4.6.6.6.1.m1.1.1">Φ</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.6.6.6.1.m1.1c">\Phi</annotation><annotation encoding="application/x-llamapun" id="S2.T4.6.6.6.1.m1.1d">roman_Φ</annotation></semantics></math><span class="ltx_text" id="S2.T4.6.6.6.1.4" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.6.2"><span class="ltx_text" id="S2.T4.6.6.6.2.1" style="font-size:70%;">75.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.6.3"><span class="ltx_text" id="S2.T4.6.6.6.3.1" style="font-size:70%;">75.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.6.6.6.4"><span class="ltx_text" id="S2.T4.6.6.6.4.1" style="font-size:70%;">76.0</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T4.6.6.10.1">
<span class="ltx_text" id="S2.T4.6.6.10.1.1" style="font-size:70%;">(f) No </span><span class="ltx_text" id="S2.T4.6.6.10.1.2" style="font-size:70%;">MV-Loc</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.10.2"><span class="ltx_text" id="S2.T4.6.6.10.2.1" style="font-size:70%;">62.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.10.3"><span class="ltx_text" id="S2.T4.6.6.10.3.1" style="font-size:70%;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.6.6.10.4"><span class="ltx_text" id="S2.T4.6.6.10.4.1" style="font-size:70%;">63.9</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T4.6.6.11.1" rowspan="3"><span class="ltx_text" id="S2.T4.6.6.11.1.1" style="font-size:70%;">Losses</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T4.6.6.11.2"><span class="ltx_text" id="S2.T4.6.6.11.2.1" style="font-size:70%;">(g) Whole Mask</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.6.6.11.3"><span class="ltx_text" id="S2.T4.6.6.11.3.1" style="font-size:70%;">69.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.6.6.11.4"><span class="ltx_text" id="S2.T4.6.6.11.4.1" style="font-size:70%;">68.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.6.6.11.5"><span class="ltx_text" id="S2.T4.6.6.11.5.1" style="font-size:70%;">70.0</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T4.6.6.12.1"><span class="ltx_text" id="S2.T4.6.6.12.1.1" style="font-size:70%;">(h) Valid Mask</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.12.2"><span class="ltx_text" id="S2.T4.6.6.12.2.1" style="font-size:70%;">72.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.12.3"><span class="ltx_text" id="S2.T4.6.6.12.3.1" style="font-size:70%;">71.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.6.6.12.4"><span class="ltx_text" id="S2.T4.6.6.12.4.1" style="font-size:70%;">74.0</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T4.6.6.13.1"><span class="ltx_text" id="S2.T4.6.6.13.1.1" style="font-size:70%;">(i) + 3D Contact Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.13.2"><span class="ltx_text" id="S2.T4.6.6.13.2.1" style="font-size:70%;">75.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.13.3"><span class="ltx_text" id="S2.T4.6.6.13.3.1" style="font-size:70%;">75.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.6.6.13.4"><span class="ltx_text" id="S2.T4.6.6.13.4.1" style="font-size:70%;">76.0</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T4.6.6.14.1" rowspan="3"><span class="ltx_text" id="S2.T4.6.6.14.1.1" style="font-size:70%;">Data</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T4.6.6.14.2"><span class="ltx_text" id="S2.T4.6.6.14.2.1" style="font-size:70%;">(j) 3D Contact Datasets</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.6.6.14.3"><span class="ltx_text" id="S2.T4.6.6.14.3.1" style="font-size:70%;">65.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.6.6.14.4"><span class="ltx_text" id="S2.T4.6.6.14.4.1" style="font-size:70%;">64.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.6.6.14.5"><span class="ltx_text" id="S2.T4.6.6.14.5.1" style="font-size:70%;">67.0</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T4.6.6.15.1"><span class="ltx_text" id="S2.T4.6.6.15.1.1" style="font-size:70%;">(k) + Contact Parts (text)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.15.2"><span class="ltx_text" id="S2.T4.6.6.15.2.1" style="font-size:70%;">74.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.15.3"><span class="ltx_text" id="S2.T4.6.6.15.3.1" style="font-size:70%;">74.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.6.6.15.4"><span class="ltx_text" id="S2.T4.6.6.15.4.1" style="font-size:70%;">75.1</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T4.6.6.16.1"><span class="ltx_text" id="S2.T4.6.6.16.1.1" style="font-size:70%;">(l) + HOI-VQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.16.2"><span class="ltx_text" id="S2.T4.6.6.16.2.1" style="font-size:70%;">75.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.16.3"><span class="ltx_text" id="S2.T4.6.6.16.3.1" style="font-size:70%;">75.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.6.6.16.4"><span class="ltx_text" id="S2.T4.6.6.16.4.1" style="font-size:70%;">76.0</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.17">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T4.6.6.17.1" rowspan="4"><span class="ltx_text" id="S2.T4.6.6.17.1.1" style="font-size:70%;">VLM</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T4.6.6.17.2">
<span class="ltx_text" id="S2.T4.6.6.17.2.1" style="font-size:70%;">(m) No </span><span class="ltx_text" id="S2.T4.6.6.17.2.2" style="font-size:70%;">VLM</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.6.6.17.3"><span class="ltx_text" id="S2.T4.6.6.17.3.1" style="font-size:70%;">32.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.6.6.17.4"><span class="ltx_text" id="S2.T4.6.6.17.4.1" style="font-size:70%;">30.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.6.6.17.5"><span class="ltx_text" id="S2.T4.6.6.17.5.1" style="font-size:70%;">43.0</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T4.6.6.18.1">
<span class="ltx_text" id="S2.T4.6.6.18.1.1" style="font-size:70%;">(n) </span><span class="ltx_text" id="S2.T4.6.6.18.1.2" style="font-size:70%;">VLM</span><span class="ltx_text" id="S2.T4.6.6.18.1.3" style="font-size:70%;">-13B-Img</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.18.2"><span class="ltx_text" id="S2.T4.6.6.18.2.1" style="font-size:70%;">67.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.18.3"><span class="ltx_text" id="S2.T4.6.6.18.3.1" style="font-size:70%;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.6.6.18.4"><span class="ltx_text" id="S2.T4.6.6.18.4.1" style="font-size:70%;">66.0</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T4.6.6.19.1">
<span class="ltx_text" id="S2.T4.6.6.19.1.1" style="font-size:70%;">(o) </span><span class="ltx_text" id="S2.T4.6.6.19.1.2" style="font-size:70%;">VLM</span><span class="ltx_text" id="S2.T4.6.6.19.1.3" style="font-size:70%;">-13B-NoFT</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.19.2"><span class="ltx_text" id="S2.T4.6.6.19.2.1" style="font-size:70%;">64.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.19.3"><span class="ltx_text" id="S2.T4.6.6.19.3.1" style="font-size:70%;">65.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.6.6.19.4"><span class="ltx_text" id="S2.T4.6.6.19.4.1" style="font-size:70%;">64.2</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T4.6.6.20.1">
<span class="ltx_text" id="S2.T4.6.6.20.1.1" style="font-size:70%;">(p) </span><span class="ltx_text" id="S2.T4.6.6.20.1.2" style="font-size:70%;">VLM</span><span class="ltx_text" id="S2.T4.6.6.20.1.3" style="font-size:70%;">-7B</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.20.2"><span class="ltx_text" id="S2.T4.6.6.20.2.1" style="font-size:70%;">73.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.20.3"><span class="ltx_text" id="S2.T4.6.6.20.3.1" style="font-size:70%;">76.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.6.6.20.4"><span class="ltx_text" id="S2.T4.6.6.20.4.1" style="font-size:70%;">73.5</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.21">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S2.T4.6.6.21.1" rowspan="3"><span class="ltx_text" id="S2.T4.6.6.21.1.1" style="font-size:70%;">Prompt</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T4.6.6.21.2"><span class="ltx_text" id="S2.T4.6.6.21.2.1" style="font-size:70%;">(q) Contact parts (fine)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.6.6.21.3"><span class="ltx_text" id="S2.T4.6.6.21.3.1" style="font-size:70%;">74.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T4.6.6.21.4"><span class="ltx_text" id="S2.T4.6.6.21.4.1" style="font-size:70%;">74.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.6.6.21.5"><span class="ltx_text" id="S2.T4.6.6.21.5.1" style="font-size:70%;">75.1</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T4.6.6.22.1"><span class="ltx_text" id="S2.T4.6.6.22.1.1" style="font-size:70%;">(r) Contact parts (coarse)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.22.2"><span class="ltx_text" id="S2.T4.6.6.22.2.1" style="font-size:70%;">68.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T4.6.6.22.3"><span class="ltx_text" id="S2.T4.6.6.22.3.1" style="font-size:70%;">69.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.6.6.22.4"><span class="ltx_text" id="S2.T4.6.6.22.4.1" style="font-size:70%;">67.8</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.6.6.23">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S2.T4.6.6.23.1"><span class="ltx_text" id="S2.T4.6.6.23.1.1" style="font-size:70%;">(s) No object name</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T4.6.6.23.2"><span class="ltx_text" id="S2.T4.6.6.23.2.1" style="font-size:70%;">71.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T4.6.6.23.3"><span class="ltx_text" id="S2.T4.6.6.23.3.1" style="font-size:70%;">72.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T4.6.6.23.4"><span class="ltx_text" id="S2.T4.6.6.23.4.1" style="font-size:70%;">70.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of various components within the InteractVLM model on the performance of binary human contact prediction.  The study uses the DAMON dataset [60] for evaluation.  Different model variations are tested, altering aspects such as the resolution of contact masks, the inclusion of camera parameters, the type of loss functions used, and the availability of different training data sources (3D contact datasets, textual descriptions, and visual question answering data). The results show how each change affects the F1 score, precision, recall, and geodesic distance, providing insights into the relative contributions of each component to the model's overall accuracy.
> <details>
> <summary>read the caption</summary>
> Table S.4:    Ablation study for the effect of different InteractVLM components. We evaluate for “Binary Human Contact” prediction on the DAMON dataset [60].
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.05303/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05303/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}