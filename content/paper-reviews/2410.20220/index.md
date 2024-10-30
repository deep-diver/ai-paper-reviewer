---
title: "Neural Fields in Robotics: A Survey"
summary: "Neural Fields revolutionize robotics by enabling robots to perceive and interact with their environment more accurately, opening new avenues for perception, planning, and control."
categories: ["AI Generated"]
tags: ["🔖 24-10-26", "🤗 24-10-29"]
showSummary: true
date: 2024-10-26
draft: false
---

{{< keyword >}} 2410.20220 {{< /keyword >}}

### TL;DR


{{< lead >}}

Robots traditionally rely on discrete data structures for environmental understanding, which limits their adaptability and performance in complex scenarios.  Neural Fields (NFs), offering continuous, differentiable mappings of space to physical quantities, are presented as a promising alternative.  NFs' continuous nature enables high-fidelity 3D reconstruction and efficient multi-sensor integration, leading to better performance in tasks such as pose estimation and navigation.

This survey paper systematically reviews the literature on NFs in robotics, categorizing applications across several domains (pose estimation, manipulation, navigation, physics, and autonomous driving).  It provides in-depth analysis of four core NF frameworks and presents a detailed taxonomy of existing NF robotics applications.  Finally, it discusses the current limitations and proposes promising directions for future research, paving the way for more robust and adaptable robots using NFs.  **The paper's core contribution is its thorough review and classification of existing NF applications in robotics, offering valuable insights and a clear roadmap for future research.**

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.20220" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.20220" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This survey paper is crucial for robotics researchers as **it provides a comprehensive overview of the applications of Neural Fields (NFs) in robotics**, a rapidly developing field.  It **highlights the potential of NFs to improve robot perception, planning, and control**, and **identifies key challenges and promising research directions**. This will **guide future research and development efforts**, leading to more adaptable and intelligent robots.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Neural Fields offer continuous and compact 3D scene representations, improving computational efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} NFs excel in various robotics applications, including pose estimation, manipulation, and autonomous driving. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Integrating NFs with foundation models and generative AI promises further advancements in robotic capabilities. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.20220/figures_1_0.png)

> 🔼 Figure 1 provides an overview of the various robotics applications enabled by Neural Fields, showcasing examples of pose estimation, manipulation, navigation, physics simulation, and autonomous driving.
> <details>
> <summary>read the caption</summary>
> Fig. 1: Overview: This survey paper discusses a large variety of state-of-the-art Neural Field methods that enable robotics applications in pose estimation, manipulation, navigation, physics, and autonomous driving. Images adapted from [1-12].
> </details>





![](https://ai-paper-reviewer.com/2410.20220/charts_2_0.png)

> 🔼 The chart shows the increasing number of publications on neural fields in robotics from 2021 to 2024, indicating a rapid growth in this research area.
> <details>
> <summary>read the caption</summary>
> Fig. 2: Growth of Neural Fields in Robotics: plotted as a rough number of publications vs. % of total neural field publications per year.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td>Fields</td><td>Input</td><td>Method</td><td>Representation</td><td>Scope</td></tr><tr><td>Occupancy</td><td>Point-cloud</td><td>NDF [60] L-NDF [61]</td><td>VNN, ONet VNN, ONet</td><td>Scene-specific General</td></tr><tr><td rowspan="3">Signed Distance</td><td>Single-view Depth</td><td>GIGA [62]</td><td>ConvONet, TSDF</td><td>General</td></tr><tr><td>Multi-view Depth</td><td>VGN [71] NGDF [70]</td><td>TSDF SDF</td><td>General General</td></tr><tr><td>Multi-view RGB-D</td><td>Song et al. [139] NeuralGrasps [69]</td><td>TSDF SDF</td><td>General Object-specific</td></tr><tr><td rowspan="3">Radiance</td><td>Multi-view RGB</td><td>Dex-NeRF [63] Evo-NeRF [65] NeRF-Supervision [140] MIRA [141] SPARTN [66] MVNeRF [142] RGBGrasp [143] GraspNeRF [68]</td><td>NeRF Instant-NGP NeRF NeRF, Orthographic images NeRF NeRF NeRF, Hash encoding Generalizable NeRF, TSDF</td><td>Scene-specific Scene-specific Scene-specific Scene-specific Scene-specific General General General</td></tr><tr><td>Multi-view RGB-D</td><td>GaussianGrasper [64] ManiGaussian [67]</td><td>3DGS 3DGS</td><td>General General</td></tr><tr><td>Single-view RGB, Annotations</td><td>Blukis et al. [144, 145]</td><td>NeRF</td><td>General</td></tr></table>{{< /table-caption >}}

> 🔼 The table summarizes key methods that use different types of neural fields for robotic manipulation, specifying their input data, representation, and scope.
> <details>
> <summary>read the caption</summary>
> TABLE I: Overview of selected methods that leverage neural fields for manipulation tasks. See Sec. III-B for more details.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.20220/figures_3_0.png)

> 🔼 The figure presents a timeline showcasing key neural fields papers in robotics, categorized by application area (pose estimation, manipulation, navigation, physics, and autonomous driving).
> <details>
> <summary>read the caption</summary>
> Fig. 3: Timeline of Neural Fields in Robotics paper showing key papers over the years divided into 5 major application areas.
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_4_0.png)

> 🔼 Figure 4 illustrates four core neural field representations: Occupancy Networks, Signed Distance Fields, Neural Radiance Fields, and 3D Gaussian Splatting.
> <details>
> <summary>read the caption</summary>
> Fig. 4: Neural Field Representations: Section II discusses four core Neural Field representations - Occupancy Networks [42], Signed Distance Fields [23], Neural Radiance Fields [22], and 3D Gaussian Splatting [49].
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_4_1.png)

> 🔼 Figure 4 illustrates four core neural field representations: Occupancy Networks, Signed Distance Fields, Neural Radiance Fields, and 3D Gaussian Splatting, showcasing their distinct characteristics.
> <details>
> <summary>read the caption</summary>
> Fig. 4: Neural Field Representations: Section II discusses four core Neural Field representations - Occupancy Networks [42], Signed Distance Fields [23], Neural Radiance Fields [22], and 3D Gaussian Splatting [49].
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_4_2.png)

> 🔼 Figure 4 illustrates four core neural field representations: Occupancy Networks, Signed Distance Fields, Neural Radiance Fields, and 3D Gaussian Splatting.
> <details>
> <summary>read the caption</summary>
> Fig. 4: Neural Field Representations: Section II discusses four core Neural Field representations - Occupancy Networks [42], Signed Distance Fields [23], Neural Radiance Fields [22], and 3D Gaussian Splatting [49].
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_5_0.png)

> 🔼 The figure presents a taxonomy of key neural fields papers in robotics, categorized into five major application areas: pose estimation, manipulation, navigation, physics, and autonomous driving.
> <details>
> <summary>read the caption</summary>
> Fig. 5: Taxonomy of selected key Neural Fields papers in five major robotics application areas.
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_6_0.png)

> 🔼 Figure 6 shows the mapping and tracking results of SplaTAM, a system that uses 3D Gaussian Splatting for simultaneous localization and mapping (SLAM).
> <details>
> <summary>read the caption</summary>
> Fig. 6: Mapping and tracking results from SplaTam [121].
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_6_1.png)

> 🔼 The figure illustrates the network architecture of NICE-SLAM, a method employing implicit representations for simultaneous localization and mapping.
> <details>
> <summary>read the caption</summary>
> Fig. 7: Network architecture of Nice-SLAM [118].
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_7_0.png)

> 🔼 The figure illustrates the 3D object detection pipeline of NeRF-Det, showcasing its workflow from video stream input to 3D object detection and novel view rendering using Neural Radiance Fields.
> <details>
> <summary>read the caption</summary>
> Fig. 9: NeRF-Det's [57] 3D detection pipeline using NeRFs.
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_9_0.png)

> 🔼 Figure 10 shows the pipeline of Distilled feature fields, which distills foundation model features into a feature field and models a NeRF for language-guided manipulation.
> <details>
> <summary>read the caption</summary>
> Fig. 10: Distilled feature fields [4] distill foundation model features into a feature field along with modeling a NeRF.
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_10_0.png)

> 🔼 The figure illustrates the GraspNeRF method, showing fast generalizable NeRF construction from sparse multi-view images, followed by material-agnostic grasp detection and robotic grasping in a real-world scenario.
> <details>
> <summary>read the caption</summary>
> Fig. 12: Generalizable grasping with sparse multi-view images using GraspNeRF [68].
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_10_1.png)

> 🔼 The figure illustrates how AutoNeRF uses autonomously collected data from an exploring agent to train NeRFs and generate 3D scene models.
> <details>
> <summary>read the caption</summary>
> Fig. 13: AutoNeRF generates 3D models of a scene by training NeRFs from data collected by autonomous agents.
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_11_0.png)

> 🔼 The figure shows an overview of the applications of Neural Fields in robotics, including pose estimation, manipulation, navigation, physics, and autonomous driving.
> <details>
> <summary>read the caption</summary>
> Fig. 1: Overview: This survey paper discusses a large variety of state-of-the-art Neural Field methods that enable robotics applications in pose estimation, manipulation, navigation, physics, and autonomous driving. Images adapted from [1-12].
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_11_1.png)

> 🔼 The figure illustrates Clip-Fields, which uses a semantic representation to enable 3D spatial memory for mobile robots, allowing for language-guided object retrieval.
> <details>
> <summary>read the caption</summary>
> Fig. 15: Clip-Fields's [85] semantic representation enables 3D spatial memory for mobile robots.
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_12_0.png)

> 🔼 The figure illustrates the differentiable robot rendering pipeline, showing the process from forward kinematics to appearance deformation.
> <details>
> <summary>read the caption</summary>
> Fig. 16: Differentiable Robot rendering pipeline [10].
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_12_1.png)

> 🔼 The figure showcases the simulation results of various material models using different neural field methods.
> <details>
> <summary>read the caption</summary>
> Fig. 17: An overview of the different materials model-based NFs are able to simulate [89].
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_13_0.png)

> 🔼 The figure illustrates the compositional pipeline used in Street Gaussians for creating high-quality large-scale scene reconstructions in autonomous driving, combining geometry, dynamic appearance, and background models.
> <details>
> <summary>read the caption</summary>
> Fig. 18. The compositional pipeline for Street Gaussians [213].
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_14_0.png)

> 🔼 The figure shows a comparison of an original driving scenario and a modified scenario where a new truck has been added, illustrating UniSim's ability for photorealistic editing and closed-loop simulation for safety-critical scenarios.
> <details>
> <summary>read the caption</summary>
> Fig. 19: Photorealistic editing results from UniSim [92].
> </details>



![](https://ai-paper-reviewer.com/2410.20220/figures_14_1.png)

> 🔼 The figure illustrates the Neural Groundplans approach, showing its pipeline from input camera features to static and dynamic ground plan generation.
> <details>
> <summary>read the caption</summary>
> Fig. 20: An overview of Neural Groundplans approach. [94]
> </details>



</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.20220/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20220/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}