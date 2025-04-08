---
title: "BOP Challenge 2024 on Model-Based and Model-Free 6D Object Pose Estimation"
summary: "BOP Challenge 2024 bridges 6D pose estimation to real-world scenarios via model-free tasks, new datasets, and a practical 6D object detection task."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Object Detection", "🏢 ENPC",]
showSummary: true
date: 2025-04-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.02812 {{< /keyword >}}
{{< keyword icon="writer" >}} Van Nguyen Nguyen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-08 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.02812" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.02812" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.02812/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The paper introduces the **BOP Challenge 2024**, which aims to transition 6D object pose estimation from lab-like setups to real-world scenarios. The challenge addresses limitations in current methods, like reliance on 3D object models and impractical task definitions. To tackle these issues, the challenge introduces **new model-free tasks** where objects are learned from reference videos, defines a **more practical 6D object detection task** where object identities aren't provided, and presents **new BOP-H3 datasets** resembling real-world scenarios.



To achieve its goal, the paper outlines the methodology, datasets, and results of the challenge. The **new BOP-H3 datasets** were recorded with high-resolution sensors and AR/VR headsets, closely resembling real-world scenarios. Participants competed on seven challenge tracks, each defined by a task (6D localization, 6D detection, 2D detection), object onboarding setup (model-based, model-free), and dataset group (BOP-Classic-Core, BOP-H3). The results showcase progress in 6D localization and detection, highlighting the challenges and opportunities in transitioning to more practical, real-world scenarios.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Model-free tasks are introduced, where 3D object models are unavailable, and methods need to onboard objects from provided reference videos. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A new, more practical 6D object detection task is defined, where identities of objects visible in a test image are not provided as input. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The BOP-H3 datasets are introduced, recorded with high-resolution sensors and AR/VR headsets, closely resembling real-world scenarios. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **pushes the boundaries of 6D object pose estimation** towards real-world scenarios, providing new datasets and evaluation methodologies. It also tackles the bottleneck of existing pipelines for unseen object pose estimation and **opens new avenues for research** by introducing model-free tasks.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="p1.4.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="p1.4.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="p1.1.1.1.1" style="width:99.6pt;padding:-1.75pt 1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="p1.1.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="259" id="p1.1.1.1.1.1.g1" src="x1.jpg" width="259"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="p1.2.2.2.2" style="width:125.2pt;padding:-1.75pt 1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="p1.2.2.2.2.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="259" id="p1.2.2.2.2.1.g1" src="x2.jpg" width="329"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="p1.3.3.3.3" style="width:125.2pt;padding:-1.75pt 1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="p1.3.3.3.3.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="130" id="p1.3.3.3.3.1.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_datasets_render/handal_000004_000000.jpg" width="165"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_middle" id="p1.4.4.4.5" style="width:11.4pt;padding:-1.75pt 1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="p1.4.4.4.4" style="width:99.6pt;padding:-1.75pt 1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="p1.4.4.4.4.1">
<span class="ltx_p" id="p1.4.4.4.4.1.1"><span class="ltx_text" id="p1.4.4.4.4.1.1.1" style="font-size:70%;position:relative; bottom:8.5pt;"><span class="ltx_picture" id="p1.4.4.4.4.1.1.1.pic1" style="width:113.5pt;height:85.3pt;">\begin{overpic}[width=113.81102pt,height=85.35826pt,trim=0.0pt 0.0pt 0.0pt 0.0%
pt,clip]{img/H3_datasets_and_onboarding/onboarding/static/obj_000011/000177.%
jpg}
\put(0.0,0.0){\framebox{\includegraphics[width=113.81102pt,height=85.35826pt,t%
rim=0.0pt 0.0pt 0.0pt 0.0pt,clip]{img/H3_datasets_and_onboarding/onboarding/%
static/obj_000011/000083.jpg}}}
\par\put(3.0,-3.0){\framebox{\includegraphics[width=113.81102pt,height=85.3582%
6pt,trim=0.0pt 0.0pt 0.0pt 0.0pt,clip]{img/H3_datasets_and_onboarding/%
onboarding/static/obj_000011/000011.jpg}}}
\par\put(6.0,-6.0){\framebox{\includegraphics[width=113.81102pt,height=85.3582%
6pt,trim=0.0pt 0.0pt 0.0pt 0.0pt,clip]{img/H3_datasets_and_onboarding/%
onboarding/static/obj_000011/000000.jpg}}}
\end{overpic}</span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_middle" id="p1.4.4.4.6" style="width:42.7pt;padding:-1.75pt 1.5pt;"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table provides a detailed overview of the datasets used in the BOP Challenge 2024.  It includes information such as the number of objects, training images, validation images, test images, and test instances for each dataset.  It also notes whether real images,  PBR (Physically Based Rendering) images rendered by BlenderProc are available, and specifies the availability of ground truth object poses (publicly available for training/validation, and some test sets, with private ground truth poses only accessible through the BOP evaluation server).  The table highlights that all test images are real and clarifies the criteria for counting test instances (at least 10% of the projected surface area visible). Finally, it indicates which datasets provide 3D object models and, importantly, which offer accompanying videos for object onboarding, a crucial aspect of the model-free tasks introduced in this year's challenge. 
> <details>
> <summary>read the caption</summary>
> Table 1:  Parameters of the BOP datasets. PBR training images rendered by BlenderProc [7, 6] are provided for most datasets. Ground-truth object poses are publicly available only for training and validation images, and also for test images from BOP-Classic datasets that do not have validation images. Private ground-truth poses are only accessible by the BOP evaluation server. All test images are real. Column Test inst./All shows the number of annotated object instances for which at least 10%percent1010\%10 % of the projected surface area is visible in the test image. Columns Used show the number of used test images and object instances. All datasets offer 3D object models, but only BOP-H3 datasets offer videos for object onboarding.
> </details>





### In-depth insights


#### BOP Challenge 24
The BOP Challenge 2024 marks the sixth iteration of a competition focused on advancing 6D object pose estimation. A key goal was transitioning from controlled lab environments to more realistic, real-world scenarios. This involved several innovations: **introducing model-free tasks where 3D object models aren't provided**, requiring methods to learn object representations from reference videos. Also, **a new 6D object detection task was defined, eliminating the prior knowledge of object identities in test images**, unlike the classical 6D localization task. **New BOP-H3 datasets** were introduced, recorded with high-resolution sensors and AR/VR headsets, closely simulating real-world conditions. BOP-H3 includes 3D models and onboarding videos to support both model-based and model-free approaches. Participants competed across seven tracks, each defined by task (6D localization, 6D detection, 2D detection), object onboarding setup (model-based, model-free), and dataset group. The best method for model-based 6D localization of unseen objects (**FreeZeV2.1**) shows considerable accuracy improvement compared to the best 2023 method, though being slower. A more practical method (**Co-op**) achieves competitive accuracy with significantly faster runtime. 2D detection of unseen objects still lags behind seen object detection accuracy. The online evaluation system is available for continued submission.

#### Model-Free 6D
Model-Free 6D object pose estimation represents a significant shift from traditional methods relying on known 3D models. **This approach is crucial for real-world applications where object models are unavailable or difficult to obtain.** The challenge lies in accurately estimating the 6D pose (position and orientation) of objects solely from visual data, often RGB or RGB-D images. Successful model-free methods often employ techniques like **geometric reasoning, feature matching, and learning-based approaches to infer 3D structure and pose from 2D observations.** These methods frequently leverage deep learning to learn object representations and pose priors directly from data. The transition from model-based to model-free 6D pose estimation opens doors to greater adaptability and robustness in handling novel objects and complex scenes, which is essential for robotics, augmented reality, and autonomous systems operating in unstructured environments. The recent BOP challenges are pushing this area by introducing new model-free tracks. **The challenge focuses on new objects which methods need to onboard from videos.**

#### BOP-H3 Datasets
The BOP-H3 datasets mark a significant step towards **real-world 6D object pose estimation**, bridging the gap between lab-like setups and more complex scenarios. By incorporating **object onboarding sequences** and high-resolution sensors, BOP-H3 enables research into model-free tasks where objects are learned on-the-fly. The inclusion of **static and dynamic onboarding videos** provide flexibility in object learning, simulating diverse real-world interactions. This focus on practical data acquisition methods and emphasis on **generalizable object learning** opens doors for advancements in AR/VR applications where quick object recognition and pose estimation are critical.

#### Online Evaluation
From the provided context, it is evident that the online evaluation system is a crucial component of the BOP Challenge. This system serves as the primary platform where participants submit their results and receive performance feedback. The emphasis on the system staying open signifies a commitment to ongoing research and development in 6D object pose estimation, allowing researchers to continuously test and refine their methods even after the challenge's official period. Availability facilitates reproducible research, drives improvements as researchers identify weaknesses, and compare new algorithms. Continuous access enables future comparisons, and helps identify areas for improvement. **Continuous submissions would offer an up-to-date benchmark of current state-of-the-art methods.** An openly available system fosters reproducibility of results by standardizing the evaluation, while **community collaboration and knowledge sharing accelerates the research process.** 

#### Online Object ID
The concept of 'Online Object ID' in the context of 6D object pose estimation presents intriguing possibilities. **It suggests a system capable of dynamically identifying objects in a scene without prior knowledge, learning and updating object identities in real-time.** This would be a significant leap beyond traditional methods relying on pre-existing 3D models. **The online aspect implies continuous learning and adaptation**, crucial for handling object deformations, occlusions, and environmental changes. **This system could be integrated into robotic manipulation or augmented reality applications**, where object identification must occur spontaneously and adapt to new objects. Object recognition could be based on visual features, geometric information, or even a combination of both. **However, challenges exist in ensuring robustness against noisy data and maintaining computational efficiency.** Online learning algorithms might be needed to adapt to new objects. This could be particularly useful in unstructured environments. **Scalability to handle a large number of objects is another key factor to consider** to make it practical in real world. Therefore, the real time aspect is also crucial.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="p1.8.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="p1.8.8.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="p1.5.5.1.1" style="width:99.6pt;padding:-1.75pt 1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="p1.5.5.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="259" id="p1.5.5.1.1.1.g1" src="x3.jpg" width="259"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="p1.6.6.2.2" style="width:125.2pt;padding:-1.75pt 1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="p1.6.6.2.2.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="259" id="p1.6.6.2.2.1.g1" src="x4.jpg" width="329"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="p1.7.7.3.3" style="width:125.2pt;padding:-1.75pt 1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="p1.7.7.3.3.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="130" id="p1.7.7.3.3.1.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_datasets_render/handal_000002_000033.jpg" width="165"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_middle" id="p1.8.8.4.5" style="width:11.4pt;padding:-1.75pt 1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="p1.8.8.4.4" style="width:99.6pt;padding:-1.75pt 1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="p1.8.8.4.4.1">
<span class="ltx_p" id="p1.8.8.4.4.1.1"><span class="ltx_text" id="p1.8.8.4.4.1.1.1" style="font-size:70%;position:relative; bottom:8.5pt;"><span class="ltx_picture" id="p1.8.8.4.4.1.1.1.pic1" style="width:113.5pt;height:85.3pt;">\begin{overpic}[width=113.81102pt,height=85.35826pt]{img/H3_datasets_and_%
onboarding/onboarding/dynamic/obj_000011/000253.jpg}
\put(0.0,0.0){\framebox{\includegraphics[width=113.81102pt,height=85.35826pt,t%
rim=200.74998pt 0.0pt 200.74998pt 0.0pt,clip]{img/H3_datasets_and_onboarding/%
onboarding/dynamic/obj_000011/000184.jpg}}}
\par\put(3.0,-3.0){\framebox{\includegraphics[width=113.81102pt,height=85.3582%
6pt,trim=200.74998pt 0.0pt 200.74998pt 0.0pt,clip]{img/H3_datasets_and_%
onboarding/onboarding/dynamic/obj_000011/000115.jpg}}}
\par\put(6.0,-6.0){\framebox{\includegraphics[width=113.81102pt,height=85.3582%
6pt,trim=200.74998pt 0.0pt 200.74998pt 0.0pt,clip]{img/H3_datasets_and_%
onboarding/onboarding/dynamic/obj_000011/000046.jpg}}}
\end{overpic}</span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_middle" id="p1.8.8.4.6" style="width:42.7pt;padding:-1.75pt 1.5pt;"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of Track 1 from the BOP Challenge 2024, focusing on model-based 6D object localization of unseen objects within the BOP-Classic-Core dataset.  The methods are ranked according to their Average Recall (AR) score, calculated as the average of per-dataset Average Recall scores (ARD).  The table details each method's performance, including the year of submission, the object detection/segmentation method used, the pose refinement technique, image channels used for training and testing, the type of training images, and the average processing time per image.  All test images are real-world images.  A description of the awards given for performance is provided in Section 5 of the paper.
> <details>
> <summary>read the caption</summary>
> Table 2: Track 1: Model-based 6D localization of unseen objects on BOP-Classic-Core. Methods are ranked by the AR score, which is the average of per-dataset ARDsubscriptAR𝐷\text{AR}_{D}AR start_POSTSUBSCRIPT italic_D end_POSTSUBSCRIPT scores (Sec. 2.1). The last column shows the average time to generate predictions for all objects in a single image, averaged over the datasets (measured on different computers by the participants). Column Year is the year of submission, Det./seg. is the object detection/segmentation method, Refinement is the pose refinement method, Train im. and Test im. show image channels used at training and test time respectively, and Train im. type is the domain of training images. All test images are real. See Sec. 5 for description of the awards.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="p1.9.p1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="p1.9.p1.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="p1.9.p1.1.1.1.1" style="width:99.6pt;padding:-1.75pt 1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="p1.9.p1.1.1.1.1.1">
<span class="ltx_p" id="p1.9.p1.1.1.1.1.1.1"><span class="ltx_text" id="p1.9.p1.1.1.1.1.1.1.1" style="font-size:90%;">HOT3D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02812v1#bib.bib1" title="">1</a>]</cite></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="p1.9.p1.1.1.1.2" style="width:125.2pt;padding:-1.75pt 1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="p1.9.p1.1.1.1.2.1">
<span class="ltx_p" id="p1.9.p1.1.1.1.2.1.1"><span class="ltx_text" id="p1.9.p1.1.1.1.2.1.1.1" style="font-size:90%;">HOPEv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02812v1#bib.bib41" title="">41</a>]</cite></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="p1.9.p1.1.1.1.3" style="width:125.2pt;padding:-1.75pt 1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="p1.9.p1.1.1.1.3.1">
<span class="ltx_p" id="p1.9.p1.1.1.1.3.1.1"><span class="ltx_text" id="p1.9.p1.1.1.1.3.1.1.1" style="font-size:90%;">HANDAL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02812v1#bib.bib12" title="">12</a>]</cite></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_middle" id="p1.9.p1.1.1.1.4" style="width:11.4pt;padding:-1.75pt 1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="p1.9.p1.1.1.1.5" style="width:99.6pt;padding:-1.75pt 1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="p1.9.p1.1.1.1.5.1">
<span class="ltx_p" id="p1.9.p1.1.1.1.5.1.1"><span class="ltx_text" id="p1.9.p1.1.1.1.5.1.1.1" style="font-size:90%;">Static/dynamic onboarding</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the model-based 6D object detection task for unseen objects on the BOP-Classic-Core dataset.  The results are for Track 2 of the BOP Challenge 2024. Methods are ranked based on the Average Precision (AP) score, a metric that averages the per-dataset APD scores (as explained in Section 2.3 of the paper).  The table includes columns detailing the method's name, awards received, year of submission, object detection/segmentation technique used, pose refinement method, type of training images, image channels used for training and testing, the performance on various datasets (LM-O, T-LESS, TUD-L, IC-BIN, ITODD, HB, YCB-V), the overall AP score, and the average processing time per image.
> <details>
> <summary>read the caption</summary>
> Table 3: Track 2: Model-based 6D detection of unseen objects on BOP-Classic-Core. Methods are ranked by the AP score, which is the average of per-dataset APDsubscriptAP𝐷\text{AP}_{D}AP start_POSTSUBSCRIPT italic_D end_POSTSUBSCRIPT scores (Sec. 2.3). Column legends as in Tab. 2.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.F2.12.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.F2.4.4.4">
<td class="ltx_td ltx_align_center" id="S3.F2.1.1.1.1" style="padding-top:-0.35pt;padding-bottom:-0.35pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="55" id="S3.F2.1.1.1.1.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/onboarding_hope_obj11/onboarding_000011_up_000000.jpg" width="73"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.F2.2.2.2.2" style="padding-top:-0.35pt;padding-bottom:-0.35pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="55" id="S3.F2.2.2.2.2.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/onboarding_hope_obj11/onboarding_000011_up_000060.jpg" width="73"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.F2.3.3.3.3" style="padding-top:-0.35pt;padding-bottom:-0.35pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="55" id="S3.F2.3.3.3.3.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/onboarding_hope_obj11/onboarding_000011_up_000120.jpg" width="73"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.F2.4.4.4.4" style="padding-top:-0.35pt;padding-bottom:-0.35pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="55" id="S3.F2.4.4.4.4.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/onboarding_hope_obj11/onboarding_000011_up_000150.jpg" width="73"/></td>
</tr>
<tr class="ltx_tr" id="S3.F2.8.8.8">
<td class="ltx_td ltx_align_center" id="S3.F2.5.5.5.1" style="padding-top:-0.35pt;padding-bottom:-0.35pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="55" id="S3.F2.5.5.5.1.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/onboarding_hope_obj11/onboarding_000011_down_000000.jpg" width="73"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.F2.6.6.6.2" style="padding-top:-0.35pt;padding-bottom:-0.35pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="55" id="S3.F2.6.6.6.2.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/onboarding_hope_obj11/onboarding_000011_down_000060.jpg" width="73"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.F2.7.7.7.3" style="padding-top:-0.35pt;padding-bottom:-0.35pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="55" id="S3.F2.7.7.7.3.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/onboarding_hope_obj11/onboarding_000011_down_000120.jpg" width="73"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.F2.8.8.8.4" style="padding-top:-0.35pt;padding-bottom:-0.35pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="55" id="S3.F2.8.8.8.4.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/onboarding_hope_obj11/onboarding_000011_down_000150.jpg" width="73"/></td>
</tr>
<tr class="ltx_tr" id="S3.F2.12.12.12">
<td class="ltx_td ltx_align_center" id="S3.F2.9.9.9.1" style="padding-top:-0.35pt;padding-bottom:-0.35pt;"><img alt="Refer to caption" class="ltx_graphics ltx_missing ltx_missing_image" id="S3.F2.9.9.9.1.g1" src=""/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.F2.10.10.10.2" style="padding-top:-0.35pt;padding-bottom:-0.35pt;"><img alt="Refer to caption" class="ltx_graphics ltx_missing ltx_missing_image" id="S3.F2.10.10.10.2.g1" src=""/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.F2.11.11.11.3" style="padding-top:-0.35pt;padding-bottom:-0.35pt;"><img alt="Refer to caption" class="ltx_graphics ltx_missing ltx_missing_image" id="S3.F2.11.11.11.3.g1" src=""/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.F2.12.12.12.4" style="padding-top:-0.35pt;padding-bottom:-0.35pt;"><img alt="Refer to caption" class="ltx_graphics ltx_missing ltx_missing_image" id="S3.F2.12.12.12.4.g1" src=""/></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents the results of model-based 2D object detection for unseen objects on the BOP-Classic-Core datasets.  The table ranks methods by their average precision (APC), calculated as the average of per-dataset average precision scores (APD) described in Section 2.2 of the paper.  Each row represents a different method, showing its performance metrics on various datasets (LM-O, T-LESS, TUD-L, IC-BIN, ITODD, HB, YCB-V).  The last column displays the average processing time per image for each method.  This provides a comparison of accuracy and efficiency for each model-based 2D object detection approach.
> <details>
> <summary>read the caption</summary>
> Table 4: Track 3: Model-based 2D detection of unseen objects on BOP-Classic-Core datasets. The methods are ranked by the APCsubscriptAP𝐶\text{AP}_{C}AP start_POSTSUBSCRIPT italic_C end_POSTSUBSCRIPT score which is the average of the per-dataset APDsubscriptAP𝐷\text{AP}_{D}AP start_POSTSUBSCRIPT italic_D end_POSTSUBSCRIPT scores defined in Sec. 2.2. Last col. shows the average image processing time in seconds.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S3.F3.33">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.F3.33.33">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.1.1.1" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="16" id="S3.F3.1.1.1.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/1.jpg" width="13"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.2.2.2" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="20" id="S3.F3.2.2.2.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/2.jpg" width="30"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.3.3.3" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="16" id="S3.F3.3.3.3.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/3.jpg" width="30"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.4.4.4" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="26" id="S3.F3.4.4.4.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/4.jpg" width="8"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.5.5.5" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="30" id="S3.F3.5.5.5.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/5.jpg" width="10"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.6.6.6" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="28" id="S3.F3.6.6.6.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/6.jpg" width="10"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.7.7.7" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="15" id="S3.F3.7.7.7.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/7.jpg" width="15"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.8.8.8" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="15" id="S3.F3.8.8.8.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/8.jpg" width="17"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.9.9.9" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="11" id="S3.F3.9.9.9.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/9.jpg" width="12"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.10.10.10" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="14" id="S3.F3.10.10.10.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/10.jpg" width="10"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.11.11.11" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="16" id="S3.F3.11.11.11.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/11.jpg" width="11"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.12.12.12" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="14" id="S3.F3.12.12.12.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/12.jpg" width="10"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.13.13.13" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="19" id="S3.F3.13.13.13.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/13.jpg" width="10"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.14.14.14" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="19" id="S3.F3.14.14.14.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/14.jpg" width="10"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.15.15.15" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="19" id="S3.F3.15.15.15.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/15.jpg" width="10"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.16.16.16" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="23" id="S3.F3.16.16.16.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/16.jpg" width="14"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.17.17.17" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="25" id="S3.F3.17.17.17.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/17.jpg" width="12"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.18.18.18" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="26" id="S3.F3.18.18.18.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/18.jpg" width="12"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.19.19.19" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="27" id="S3.F3.19.19.19.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/19.jpg" width="16"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.20.20.20" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="13" id="S3.F3.20.20.20.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/20.jpg" width="21"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.21.21.21" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="13" id="S3.F3.21.21.21.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/21.jpg" width="17"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.22.22.22" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="23" id="S3.F3.22.22.22.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/22.jpg" width="11"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.23.23.23" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="13" id="S3.F3.23.23.23.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/23.jpg" width="23"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.24.24.24" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="16" id="S3.F3.24.24.24.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/24.jpg" width="9"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.25.25.25" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="20" id="S3.F3.25.25.25.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/25.jpg" width="11"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.26.26.26" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="29" id="S3.F3.26.26.26.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/26.jpg" width="20"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.27.27.27" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="28" id="S3.F3.27.27.27.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/27.jpg" width="24"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.28.28.28" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="36" id="S3.F3.28.28.28.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/28.jpg" width="14"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.29.29.29" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="9" id="S3.F3.29.29.29.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/29.jpg" width="19"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.30.30.30" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="15" id="S3.F3.30.30.30.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/30.jpg" width="14"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.31.31.31" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="13" id="S3.F3.31.31.31.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/31.jpg" width="19"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.32.32.32" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="23" id="S3.F3.32.32.32.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/32.jpg" width="7"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.33.33" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="24" id="S3.F3.33.33.33.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hot3d/33.jpg" width="9"/></td>
</tr>
<tr class="ltx_tr" id="S3.F3.33.34.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.1" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.1.1" style="font-size:70%;">1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.2" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.2.1" style="font-size:70%;">2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.3" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.3.1" style="font-size:70%;">3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.4" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.4.1" style="font-size:70%;">4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.5" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.5.1" style="font-size:70%;">5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.6" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.6.1" style="font-size:70%;">6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.7" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.7.1" style="font-size:70%;">7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.8" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.8.1" style="font-size:70%;">8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.9" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.9.1" style="font-size:70%;">9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.10" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.10.1" style="font-size:70%;">10</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.11" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.11.1" style="font-size:70%;">11</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.12" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.12.1" style="font-size:70%;">12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.13" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.13.1" style="font-size:70%;">13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.14" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.14.1" style="font-size:70%;">14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.15" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.15.1" style="font-size:70%;">15</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.16" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.16.1" style="font-size:70%;">16</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.17" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.17.1" style="font-size:70%;">17</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.18" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.18.1" style="font-size:70%;">18</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.19" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.19.1" style="font-size:70%;">19</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.20" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.20.1" style="font-size:70%;">20</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.21" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.21.1" style="font-size:70%;">21</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.22" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.22.1" style="font-size:70%;">22</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.23" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.23.1" style="font-size:70%;">23</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.24" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.24.1" style="font-size:70%;">24</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.25" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.25.1" style="font-size:70%;">25</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.26" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.26.1" style="font-size:70%;">26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.27" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.27.1" style="font-size:70%;">27</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.28" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.28.1" style="font-size:70%;">28</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.29" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.29.1" style="font-size:70%;">29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.30" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.30.1" style="font-size:70%;">30</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.31" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.31.1" style="font-size:70%;">31</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.32" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.32.1" style="font-size:70%;">32</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.33.34.1.33" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.34.1.33.1" style="font-size:70%;">33</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results for the model-based 6D object detection task on the BOP-H3 dataset.  It shows the performance of different methods in terms of Average Precision (AP) and processing time, broken down by dataset (HOT3D, HOPEv2, HANDAL).  The results are for unseen objects; the models were not trained on any of the objects in the test datasets.
> <details>
> <summary>read the caption</summary>
> Table 5: Track 4: Model-based 6D det. of unseen objects on BOP-H3.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S3.F3.61">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.F3.61.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.34.1.1" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="14" id="S3.F3.34.1.1.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/1.jpg" width="11"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.35.2.2" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="20" id="S3.F3.35.2.2.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/2.jpg" width="10"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.36.3.3" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="9" id="S3.F3.36.3.3.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/3.jpg" width="15"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.37.4.4" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="12" id="S3.F3.37.4.4.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/4.jpg" width="11"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.38.5.5" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="9" id="S3.F3.38.5.5.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/5.jpg" width="12"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.39.6.6" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="22" id="S3.F3.39.6.6.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/6.jpg" width="18"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.40.7.7" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="12" id="S3.F3.40.7.7.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/7.jpg" width="11"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.41.8.8" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="9" id="S3.F3.41.8.8.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/8.jpg" width="15"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.42.9.9" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="17" id="S3.F3.42.9.9.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/9.jpg" width="23"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.43.10.10" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="12" id="S3.F3.43.10.10.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/10.jpg" width="11"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.44.11.11" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="20" id="S3.F3.44.11.11.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/11.jpg" width="10"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.45.12.12" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="22" id="S3.F3.45.12.12.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/12.jpg" width="18"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.46.13.13" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="20" id="S3.F3.46.13.13.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/13.jpg" width="10"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.47.14.14" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="25" id="S3.F3.47.14.14.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/14.jpg" width="12"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.48.15.15" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="9" id="S3.F3.48.15.15.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/15.jpg" width="11"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.49.16.16" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="21" id="S3.F3.49.16.16.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/16.jpg" width="10"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.50.17.17" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="25" id="S3.F3.50.17.17.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/17.jpg" width="12"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.51.18.18" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="16" id="S3.F3.51.18.18.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/18.jpg" width="11"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.52.19.19" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="12" id="S3.F3.52.19.19.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/19.jpg" width="11"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.53.20.20" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="12" id="S3.F3.53.20.20.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/20.jpg" width="11"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.54.21.21" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="12" id="S3.F3.54.21.21.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/21.jpg" width="11"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.55.22.22" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="13" id="S3.F3.55.22.22.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/22.jpg" width="18"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.56.23.23" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="17" id="S3.F3.56.23.23.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/23.jpg" width="13"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.57.24.24" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="20" id="S3.F3.57.24.24.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/24.jpg" width="10"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.58.25.25" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="31" id="S3.F3.58.25.25.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/25.jpg" width="9"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.59.26.26" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="14" id="S3.F3.59.26.26.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/26.jpg" width="11"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.60.27.27" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="9" id="S3.F3.60.27.27.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/27.jpg" width="11"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.28.28" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="11" id="S3.F3.61.28.28.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/hope/28.jpg" width="11"/></td>
</tr>
<tr class="ltx_tr" id="S3.F3.61.29.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.1" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.1.1" style="font-size:70%;">1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.2" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.2.1" style="font-size:70%;">2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.3" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.3.1" style="font-size:70%;">3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.4" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.4.1" style="font-size:70%;">4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.5" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.5.1" style="font-size:70%;">5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.6" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.6.1" style="font-size:70%;">6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.7" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.7.1" style="font-size:70%;">7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.8" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.8.1" style="font-size:70%;">8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.9" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.9.1" style="font-size:70%;">9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.10" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.10.1" style="font-size:70%;">10</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.11" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.11.1" style="font-size:70%;">11</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.12" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.12.1" style="font-size:70%;">12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.13" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.13.1" style="font-size:70%;">13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.14" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.14.1" style="font-size:70%;">14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.15" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.15.1" style="font-size:70%;">15</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.16" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.16.1" style="font-size:70%;">16</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.17" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.17.1" style="font-size:70%;">17</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.18" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.18.1" style="font-size:70%;">18</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.19" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.19.1" style="font-size:70%;">19</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.20" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.20.1" style="font-size:70%;">20</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.21" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.21.1" style="font-size:70%;">21</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.22" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.22.1" style="font-size:70%;">22</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.23" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.23.1" style="font-size:70%;">23</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.24" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.24.1" style="font-size:70%;">24</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.25" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.25.1" style="font-size:70%;">25</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.26" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.26.1" style="font-size:70%;">26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.27" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.27.1" style="font-size:70%;">27</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.61.29.1.28" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.61.29.1.28.1" style="font-size:70%;">28</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the model-based 2D object detection task on the BOP-H3 dataset.  It shows the performance of different methods in detecting unseen objects (objects not present in the training data) using only 2D bounding boxes. The table includes details such as the method's name, the type of onboarding input (static or dynamic videos) used to onboard the unseen objects, and the average precision (AP) achieved on each of the three BOP-H3 datasets (HOT3D, HOPEv2, and HANDAL).  The results are also summarized with an overall AP score and the computational time taken by each method.
> <details>
> <summary>read the caption</summary>
> Table 6: Track 5: Model-based 2D det. of unseen objects on BOP-H3.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S3.F3.101">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.F3.101.40">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.62.1.1" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="26" id="S3.F3.62.1.1.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/1.jpg" width="14"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.63.2.2" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="26" id="S3.F3.63.2.2.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/2.jpg" width="13"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.64.3.3" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="27" id="S3.F3.64.3.3.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/3.jpg" width="13"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.65.4.4" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="26" id="S3.F3.65.4.4.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/4.jpg" width="15"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.66.5.5" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="29" id="S3.F3.66.5.5.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/5.jpg" width="15"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.67.6.6" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="31" id="S3.F3.67.6.6.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/6.jpg" width="15"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.68.7.7" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="32" id="S3.F3.68.7.7.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/7.jpg" width="15"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.69.8.8" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="32" id="S3.F3.69.8.8.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/8.jpg" width="15"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.70.9.9" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="31" id="S3.F3.70.9.9.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/9.jpg" width="15"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.71.10.10" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="24" id="S3.F3.71.10.10.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/10.jpg" width="8"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.72.11.11" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="24" id="S3.F3.72.11.11.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/11.jpg" width="8"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.73.12.12" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="24" id="S3.F3.73.12.12.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/12.jpg" width="9"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.74.13.13" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="24" id="S3.F3.74.13.13.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/13.jpg" width="8"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.75.14.14" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="11" id="S3.F3.75.14.14.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/14.jpg" width="5"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.76.15.15" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="12" id="S3.F3.76.15.15.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/15.jpg" width="6"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.77.16.16" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="12" id="S3.F3.77.16.16.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/16.jpg" width="6"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.78.17.17" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="14" id="S3.F3.78.17.17.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/17.jpg" width="8"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.79.18.18" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="15" id="S3.F3.79.18.18.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/18.jpg" width="9"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.80.19.19" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="16" id="S3.F3.80.19.19.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/19.jpg" width="11"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.81.20.20" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="21" id="S3.F3.81.20.20.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/20.jpg" width="17"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.82.21.21" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="21" id="S3.F3.82.21.21.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/21.jpg" width="18"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.83.22.22" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="21" id="S3.F3.83.22.22.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/22.jpg" width="16"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.84.23.23" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="21" id="S3.F3.84.23.23.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/23.jpg" width="18"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.85.24.24" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="21" id="S3.F3.85.24.24.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/24.jpg" width="14"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.86.25.25" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="21" id="S3.F3.86.25.25.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/25.jpg" width="18"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.87.26.26" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="25" id="S3.F3.87.26.26.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/26.jpg" width="7"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.88.27.27" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="25" id="S3.F3.88.27.27.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/27.jpg" width="8"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.89.28.28" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="25" id="S3.F3.89.28.28.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/28.jpg" width="9"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.90.29.29" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="24" id="S3.F3.90.29.29.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/29.jpg" width="9"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.91.30.30" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="20" id="S3.F3.91.30.30.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/30.jpg" width="9"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.92.31.31" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="26" id="S3.F3.92.31.31.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/31.jpg" width="13"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.93.32.32" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="21" id="S3.F3.93.32.32.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/32.jpg" width="15"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.94.33.33" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="27" id="S3.F3.94.33.33.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/33.jpg" width="19"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.95.34.34" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="31" id="S3.F3.95.34.34.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/34.jpg" width="19"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.96.35.35" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="20" id="S3.F3.96.35.35.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/35.jpg" width="7"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.97.36.36" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="20" id="S3.F3.97.36.36.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/36.jpg" width="7"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.98.37.37" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="20" id="S3.F3.98.37.37.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/37.jpg" width="7"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.99.38.38" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="23" id="S3.F3.99.38.38.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/38.jpg" width="8"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.100.39.39" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="23" id="S3.F3.100.39.39.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/39.jpg" width="9"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.40.40" style="padding:-2.5pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="24" id="S3.F3.101.40.40.g1" src="extracted/6333377/img/H3_datasets_and_onboarding/H3_objects_images/handal/40.jpg" width="9"/></td>
</tr>
<tr class="ltx_tr" id="S3.F3.101.41.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.1" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.1.1" style="font-size:70%;">1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.2" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.2.1" style="font-size:70%;">2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.3" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.3.1" style="font-size:70%;">3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.4" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.4.1" style="font-size:70%;">4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.5" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.5.1" style="font-size:70%;">5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.6" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.6.1" style="font-size:70%;">6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.7" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.7.1" style="font-size:70%;">7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.8" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.8.1" style="font-size:70%;">8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.9" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.9.1" style="font-size:70%;">9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.10" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.10.1" style="font-size:70%;">10</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.11" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.11.1" style="font-size:70%;">11</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.12" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.12.1" style="font-size:70%;">12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.13" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.13.1" style="font-size:70%;">13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.14" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.14.1" style="font-size:70%;">14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.15" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.15.1" style="font-size:70%;">15</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.16" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.16.1" style="font-size:70%;">16</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.17" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.17.1" style="font-size:70%;">17</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.18" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.18.1" style="font-size:70%;">18</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.19" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.19.1" style="font-size:70%;">19</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.20" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.20.1" style="font-size:70%;">20</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.21" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.21.1" style="font-size:70%;">21</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.22" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.22.1" style="font-size:70%;">22</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.23" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.23.1" style="font-size:70%;">23</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.24" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.24.1" style="font-size:70%;">24</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.25" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.25.1" style="font-size:70%;">25</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.26" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.26.1" style="font-size:70%;">26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.27" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.27.1" style="font-size:70%;">27</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.28" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.28.1" style="font-size:70%;">28</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.29" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.29.1" style="font-size:70%;">29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.30" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.30.1" style="font-size:70%;">30</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.31" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.31.1" style="font-size:70%;">31</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.32" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.32.1" style="font-size:70%;">32</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.33" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.33.1" style="font-size:70%;">33</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.34" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.34.1" style="font-size:70%;">34</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.35" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.35.1" style="font-size:70%;">35</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.36" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.36.1" style="font-size:70%;">36</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.37" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.37.1" style="font-size:70%;">37</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.38" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.38.1" style="font-size:70%;">38</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.39" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.39.1" style="font-size:70%;">39</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.101.41.1.40" style="padding:-2.5pt 0.5pt;"><span class="ltx_text" id="S3.F3.101.41.1.40.1" style="font-size:70%;">40</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the Model-free 2D object detection task on the BOP-H3 datasets.  It shows the performance of different methods in detecting unseen objects in images where no 3D object models are available, only onboarding videos.  The table likely includes metrics such as Average Precision (AP) and the runtime, providing a comparison of various approaches to this challenging task.
> <details>
> <summary>read the caption</summary>
> Table 7: Track 7: Model-free 2D det. of unseen objects on BOP-H3.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.02812/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02812/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02812/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02812/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02812/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02812/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02812/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02812/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02812/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02812/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}