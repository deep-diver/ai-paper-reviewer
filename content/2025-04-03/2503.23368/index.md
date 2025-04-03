---
title: "Towards Physically Plausible Video Generation via VLM Planning"
summary: "This paper introduces a VLM-guided video generation framework to enhance physical plausibility by incorporating chain-of-thought and physics-aware reasoning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Monash University",]
showSummary: true
date: 2025-03-30
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.23368 {{< /keyword >}}
{{< keyword icon="writer" >}} Xindi Yang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.23368" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.23368" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.23368/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Video Diffusion Models (VDMs) excel in generating realistic videos but often lack physical understanding, resulting in implausible motions. Current methods struggle with the gap between text descriptions and real-world physics. Existing commercial VDMs are unable to follow simple real world physics motion and only focus on visual appearance. Even incorporating physical data is still hard to be scaled for training. 



To solve this issue, the authors propose a novel two-stage image-to-video framework. This framework incorporates external physical prior knowledge using the help of a Vision Language Model (VLM). The VLM acts as a coarse motion planner using chain-of-thought to predict motion trajectories and changes. The VLM motion planning can approximate real-world physics while ensuring inter-frame consistency. Also to inject fine grain details, noise is added during the video generation. The proposed framework produces physically plausible motion.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VLMs can be effectively used as coarse-grained motion planners to guide video generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Incorporating physics-aware reasoning into the planning stage significantly improves the physical plausibility of generated videos. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Adding noise during inference allows VDMs to generate fine-grained motion details while adhering to the coarse-grained motion plan. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research is crucial for pushing the boundaries of video generation towards more realistic and physically grounded simulations, addressing a key limitation of current VDM. It paves the way for creating more believable virtual worlds. This provides a new direction and insights for future studies.

------
#### Visual Insights



![](https://arxiv.org/html/2503.23368/x1.png)

> 🔼 The figure shows examples of video generation results from several video diffusion models (VDMs), including existing commercial closed-source models and the authors' proposed model.  The examples demonstrate scenarios with simple physics, like two balls colliding, water being poured, or a basketball falling. The commercial VDMs produce unrealistic motions that violate basic physical laws, while the authors' model generates videos with more physically plausible movements. The improvement is attributed to the incorporation of external physical prior knowledge into their framework.
> <details>
> <summary>read the caption</summary>
> Figure 1: Existing commercial closed-source VDMs fail to generate physically plausible motion, whereas our video generation framework is able to achieve this by incorporating external physical prior knowledge.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.5.5">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.5.6">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1">Mechanics(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.2.2">Optics(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.3.3">Thermal(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.4.4">Material(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.5.5">Average(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.m1.1a"><mo id="S3.T1.5.5.5.m1.1.1" stretchy="false" xref="S3.T1.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.m1.1d">↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.6.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.6.1.1">CogvideoX-T2V-5B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.6.1.2">0.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.6.1.3">0.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.6.1.4">0.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.6.1.5">0.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.6.1.6">0.45</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.7.2">
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.2.1">LTX-Video-T2V</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.2.2">0.35</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.2.3">0.45</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.2.4">0.36</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.2.5">0.38</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.2.6">0.39</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.8.3">
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.1">OpenSora</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.2">0.43</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.3">0.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.4">0.44</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.5">0.37</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.6">0.44</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.9.4">
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.4.1">PhyT2V</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.4.2">0.49</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.4.3">0.61</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.4.4">0.49</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.4.5">0.47</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.4.6">0.52</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.10.5">
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.5.1">LLM-Grounding Video Diffusion</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.5.2">0.32</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.5.3">0.41</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.5.4">0.26</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.5.5">0.24</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.5.6">0.31</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.11.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.11.6.1">CogvideoX-I2V-5B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.11.6.2">0.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.11.6.3">0.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.11.6.4">0.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.11.6.5">0.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.11.6.6">0.52</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.12.7">
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.7.1">SVD-XT</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.7.2">0.46</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.7.3">0.68</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.7.4">0.48</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.7.5">0.41</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.7.6">0.52</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.13.8">
<td class="ltx_td ltx_align_center" id="S3.T1.5.13.8.1">LTX-Video-I2V</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.13.8.2">0.47</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.13.8.3">0.65</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.13.8.4">0.46</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.13.8.5">0.37</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.13.8.6">0.50</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.14.9">
<td class="ltx_td ltx_align_center" id="S3.T1.5.14.9.1">SG-I2V</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.14.9.2">0.52</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.14.9.3">0.69</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.14.9.4">0.51</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.14.9.5">0.39</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.14.9.6">0.54</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.15.10">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.5.15.10.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.5.15.10.2"><span class="ltx_text ltx_font_bold" id="S3.T1.5.15.10.2.1">0.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.5.15.10.3"><span class="ltx_text ltx_font_bold" id="S3.T1.5.15.10.3.1">0.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.5.15.10.4"><span class="ltx_text ltx_font_bold" id="S3.T1.5.15.10.4.1">0.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.5.15.10.5"><span class="ltx_text ltx_font_bold" id="S3.T1.5.15.10.5.1">0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.5.15.10.6"><span class="ltx_text ltx_font_bold" id="S3.T1.5.15.10.6.1">0.60</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of various video diffusion models (VDMs) on the PhyGenBench benchmark. PhyGenBench evaluates the physical realism of videos generated by VDMs across four categories: mechanics, optics, thermal, and material.  The table shows the performance of each VDM in terms of average score across these four categories, providing a numerical assessment of their ability to generate physically plausible videos. Higher scores indicate better performance in generating videos that adhere to physical laws.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative results of VDMs on PhyGenBench.
> </details>





### In-depth insights


#### VLM Physics Prior
Leveraging Vision-Language Models (VLMs) as a source of physics priors is a promising direction. **VLMs, pre-trained on vast datasets, possess implicit knowledge of the physical world.** By explicitly incorporating this knowledge, video generation models can be guided to create more realistic and plausible videos. This approach offers a way to inject physical understanding without relying on explicit physics engines or simulations, which can be computationally expensive. **The challenge lies in effectively extracting and applying this prior knowledge in a way that enhances the generation process.** Chain-of-thought prompting seems useful to extract such prior knowledge and apply in subsequent video generation tasks. This approach moves beyond simply generating visually appealing content and strives for a deeper understanding and representation of physical dynamics in video.

#### CoT Motion Plan
The concept of a "CoT Motion Plan," though not explicitly present, suggests a framework where a **Chain-of-Thought (CoT) approach is used to plan motion**. This is particularly relevant in video generation, where ensuring physically plausible motion is a challenge. Implementing CoT for motion planning involves **breaking down complex movements into a sequence of simpler steps**. Each step considers physical laws and constraints, like gravity or momentum. This sequential reasoning allows a model to generate more realistic and coherent motion trajectories. The strength lies in **better understanding of physics and temporal consistency**. It facilitates more intricate and plausible motion sequences compared to directly synthesizing motion. **The CoT approach incorporates external physical prior knowledge**. By guiding each step, the model avoids generating physically improbable events, enhancing video realism. The limitation is the dependency on the accuracy and depth of the CoT reasoning process, which must be carefully designed to capture relevant physical constraints.

#### Noise-Tuned VDM
**Noise injection is a crucial aspect of diffusion models**, particularly when aiming for physically plausible video generation. The idea likely revolves around tuning the model's sensitivity to input noise during the reverse diffusion process. By carefully controlling the characteristics and magnitude of the injected noise, the VDM can be guided to generate motions that better align with real-world physics. Too little noise, and the model might overfit to the coarse motion trajectory, resulting in a lack of detail or adherence to physics. Too much noise, and the model may struggle to follow the guidance at all, producing random or unrealistic motion. The goal is to strike a balance, enabling the model to generate fine-grained motion while still adhering to the coarse-grained physics plan. This **noise-tuning process can greatly improve the realism and plausibility of generated videos**.

#### GenBench Results
While a section explicitly titled "GenBench Results" is absent, the paper extensively discusses results obtained using **PhyGenBench**, a benchmark designed for evaluating physical plausibility in video generation. The results highlight the superiority of the proposed framework in generating physically realistic videos across various physical phenomena. Quantitative results indicate state-of-the-art performance, exceeding other models like CogVideoX, LTX-Video and SVD-XT. A significant performance enhancement is noted across **Mechanics**, **Thermal** and **Material domains**, indicating the framework's robust understanding of these aspects. The ablation studies further dissect the contribution of each component within the framework. Furthermore, the user study provides subjective validation, reinforcing the preference for the proposed method in achieving physical realism and visually appealing results. Based on these results, the framework achieves noteworthy success in imbuing video generation with heightened adherence to physical principles.

#### Box Trajectory Limit
The concept of a "box trajectory limit" suggests a constraint on the predicted movement of objects within a video. It could refer to setting boundaries for object motion to ensure physical plausibility. This limitation might be imposed by a Vision Language Model (VLM) when planning coarse-level trajectories. **VLMs can predict the future bounding boxes** of objects by enforcing restrictions informed by physics. This is achieved by understanding the context from an initial frame and textual descriptions. A "box trajectory limit" implies constraints on these changes, preventing unrealistic movement. Such restrictions could involve limiting the speed or acceleration of objects, or ensuring that interactions align with expected physical behavior like collision. By restricting the object positions within the frame, the model can produce high quality, physically sound videos. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.23368/x2.png)

> 🔼 This figure illustrates a two-stage pipeline for generating physically plausible videos.  Stage one uses a Vision-Language Model (VLM) to plan a coarse-grained, physically realistic motion trajectory based on an input image and text prompt.  Stage two simulates a video using the planned trajectory. Optical flow is extracted from this synthetic video and transformed into structured noise. This structured noise, along with the initial frame and prompt, is fed into a motion-controllable image-to-video diffusion model, resulting in a physically plausible final video.
> <details>
> <summary>read the caption</summary>
> Figure 2: The illustration of our physically plausible image-to-video generation pipeline. Our pipeline consists of two stages. In the first stage, the VLM generates a coarse-grained, physically plausible motion trajectory based on the provided input conditions. In the second stage, We simulate a synthetic video using the predicted trajectory to provide the motion condition. We then extract the optical flow from this video and convert it into structured noise. These conditions are fed into a motion controllable image-to-video diffusion model, and ultimately generates a physically plausible video.
> </details>



![](https://arxiv.org/html/2503.23368/x3.png)

> 🔼 This figure illustrates the chain-of-thought reasoning process within the Vision-Language Model (VLM) for predicting coarse-grained motion trajectories.  The process begins with the VLM identifying the relevant physical laws and contextual information from the scene description.  Next, through a step-by-step reasoning process guided by chain-of-thought prompting and informed by the physical context, the VLM predicts the physically plausible movements of objects within the image space.  Finally, the VLM outputs a sequence of bounding boxes representing the predicted object positions, reflecting real-world physics.
> <details>
> <summary>read the caption</summary>
> Figure 3: The illustration of chain-of-thought reasoning in the VLM for generating a coarse-grained motion trajectory. First off, the VLM determines the corresponding physical laws and its context for the given scene. Then, the VLM performs step-by-step reasoning to predict the physically plausible motions of objects in image space, leveraging physical context and chain-of-thought prompting. Finally, the VLM predicts bounding boxes according to real-world physics.
> </details>



![](https://arxiv.org/html/2503.23368/x4.png)

> 🔼 This figure presents a qualitative comparison of video generation results between four different methods: the proposed framework, CogVideoX-I2V-5B, LTX-Video-I2V, and SVD-XT. Each row shows the results for a different video generation task (e.g., a ball falling, pouring water).  The figure aims to visually demonstrate the superior ability of the proposed framework in generating physically plausible videos that accurately depict real-world physical phenomena, in contrast to the other methods which exhibit artifacts or physically implausible behavior.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visual comparisons of physically plausible video generation results from our framework, CogVideoX-I2V-5B [60], LTX-Video-I2V [14] and SVD-XT [5].
> </details>



![](https://arxiv.org/html/2503.23368/x5.png)

> 🔼 Figure 5 presents a qualitative comparison of video generation results produced by five different methods on the Physics-IQ benchmark dataset.  The methods compared include the authors' proposed framework and four existing models: CogVideoX-I2V-5B, LTX-Video-I2V, SVD-XT, and SG-I2V. Each row in the figure corresponds to a different physical scenario from the Physics-IQ dataset, with the input frame shown at the beginning of each row. Subsequent frames illustrate the video generated by each method. This allows for visual comparison of the physical plausibility and quality of the generated videos, highlighting the strengths and weaknesses of each approach.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visual comparisons of physically plausible video generation results from our framework, CogVideoX-I2V-5B, LTX-Video-I2V, SVD-XT and SG-I2V [35] in the Physics-IQ dataset.
> </details>



![](https://arxiv.org/html/2503.23368/x6.png)

> 🔼 This figure details the step-by-step reasoning process employed by the Vision Language Model (VLM) when predicting the motion of a rigid body, such as a ball.  It shows how the VLM analyzes the caption describing the physical scenario (e.g., a wooden ball dropping onto a table), identifies the relevant physical laws (Newton's laws of motion, conservation of momentum), and reasons through the impact of these laws on the object's motion over time.  The output is a sequence of predicted bounding box coordinates for the object in subsequent frames, representing the ball's trajectory as it falls, impacts the table, and bounces.
> <details>
> <summary>read the caption</summary>
> Figure 6: Physics-Aware Reasoning Template for Rigid Body Motion
> </details>



![](https://arxiv.org/html/2503.23368/x7.png)

> 🔼 Figure 7 presents a detailed template for physics-aware reasoning, specifically focusing on fluid dynamics and thermodynamics.  It shows a step-by-step process where a vision-language model (VLM) analyzes a caption describing a scenario involving fluids (e.g., pouring tea), identifies relevant physical laws (e.g., fluid mechanics), reasons through the implications of these laws for the given scenario, and then predicts the bounding box coordinates for each object over a series of frames. This allows the VLM to generate a coarse-grained motion trajectory that adheres to the principles of fluid dynamics and thermodynamics before feeding it to the video generation model.
> <details>
> <summary>read the caption</summary>
> Figure 7: Physics-Aware Reasoning Template for fluid dynamics and thermodynamics.
> </details>



![](https://arxiv.org/html/2503.23368/x8.png)

> 🔼 This figure displays several example videos generated by the proposed model, focusing on scenarios involving fluid dynamics and thermodynamics.  The videos showcase a range of complex physical phenomena.  For example, there are examples of liquid pouring, resulting in ripples and changes in water level, and phase transitions of substances due to temperature changes, like melting butter or a candle wax.  The examples highlight the model's capability to generate realistic and physically plausible video sequences that adhere to the laws of physics in these areas.
> <details>
> <summary>read the caption</summary>
> Figure 8: More examples of generated videos related to fluid dynamics and thermodynamics.
> </details>



![](https://arxiv.org/html/2503.23368/x9.png)

> 🔼 Figure 9 presents additional examples of videos generated by the proposed model, focusing on scenarios related to thermodynamics.  The figure visually demonstrates the model's ability to produce realistic depictions of thermodynamic processes, such as the melting of butter and the burning of a candle. These examples showcase the model's capability to simulate changes in state due to heat, including changes in texture, form, and appearance, while respecting the physical properties of the materials involved.
> <details>
> <summary>read the caption</summary>
> Figure 9: More examples of generated videos related to thermodynamics.
> </details>



![](https://arxiv.org/html/2503.23368/x10.png)

> 🔼 Figure 10 presents a visual comparison of video generation results related to fluid dynamics from various models: Ours, CogVideoX, LTX-Video, and SVD-XT.  Each row showcases a specific scene: the first involves a stone gently placed on water, while the second involves a wooden block placed on water. For each scenario, the generated video frames are displayed across different models, highlighting variations in how accurately each model simulates the fluid dynamics (e.g., ripples, displacement of water) of the objects interacting with the water.
> <details>
> <summary>read the caption</summary>
> Figure 10: More examples of generated videos related to fluid dynamics.
> </details>



![](https://arxiv.org/html/2503.23368/x11.png)

> 🔼 This figure showcases several examples of videos generated by different models, focusing on scenarios related to optics.  It visually compares the outputs of the proposed method against existing state-of-the-art techniques (CogVideoX, LTX-Video, and SVD-XT). The comparisons highlight the ability of the proposed method to generate more realistic and physically plausible videos, particularly concerning phenomena related to reflection and refraction of light, as seen in the presented examples of oil poured into water and sulfuric acid reacting with cotton.
> <details>
> <summary>read the caption</summary>
> Figure 11: More examples of generated videos related to optics.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.6.6.7">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1">S.M.(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2">F.D.(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m1.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.3.3">Optics(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.m1.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.4.4">Magnetism(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.m1.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.5.5.5">Thermodynamics(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.m1.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.6.6.6">Average(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.m1.1"><semantics id="S4.T2.6.6.6.m1.1a"><mo id="S4.T2.6.6.6.m1.1.1" stretchy="false" xref="S4.T2.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.m1.1b"><ci id="S4.T2.6.6.6.m1.1.1.cmml" xref="S4.T2.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.m1.1d">↑</annotation></semantics></math>)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.6.7.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.7.1.1">Cogvideo-I2V-5B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.7.1.2">30.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.7.1.3">29.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.7.1.4">16.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.7.1.5">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.7.1.6">8.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.7.1.7">27.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.8.2">
<td class="ltx_td ltx_align_center" id="S4.T2.6.8.2.1">SVD-XT</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.8.2.2">21.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.8.2.3">20.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.8.2.4">6.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.8.2.5">8.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.8.2.6"><span class="ltx_text ltx_font_bold" id="S4.T2.6.8.2.6.1">17.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.8.2.7">19.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.9.3">
<td class="ltx_td ltx_align_center" id="S4.T2.6.9.3.1">LTX-Video-I2V</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.9.3.2">30.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.9.3.3">29.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.9.3.4">15.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.9.3.5">13.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.9.3.6">8.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.9.3.7">26.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.10.4">
<td class="ltx_td ltx_align_center" id="S4.T2.6.10.4.1">SG-I2V</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.10.4.2">34.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.10.4.3">31.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.10.4.4">15.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.10.4.5">13.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.10.4.6">8.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.10.4.7">29.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.11.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.11.5.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.11.5.2"><span class="ltx_text ltx_font_bold" id="S4.T2.6.11.5.2.1">42.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.11.5.3"><span class="ltx_text ltx_font_bold" id="S4.T2.6.11.5.3.1">34.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.11.5.4"><span class="ltx_text ltx_font_bold" id="S4.T2.6.11.5.4.1">16.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.11.5.5"><span class="ltx_text ltx_font_bold" id="S4.T2.6.11.5.5.1">13.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.11.5.6">8.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.11.5.7"><span class="ltx_text ltx_font_bold" id="S4.T2.6.11.5.7.1">34.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of various video generation models on the Physics-IQ benchmark dataset.  The benchmark evaluates the models' ability to generate videos that adhere to the principles of physics, specifically focusing on two key domains: Solid Mechanics (S.M.) and Fluid Dynamics (F.D.). The table displays the average performance scores across multiple physical phenomena for each model, providing a comprehensive assessment of their ability to generate physically plausible video content.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative results of physically plausible video generaion on Physics-IQ Benchmark. S.M. refers to Solid Mechanics, and F.D. refers to Fluid Dynamics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.6.6.7">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1">S.M.(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2">F.D.(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3">Optics(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.4.4">Magnetism(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.m1.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.5.5">Thermodynamics(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.m1.1a"><mo id="S4.T3.5.5.5.m1.1.1" stretchy="false" xref="S4.T3.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.m1.1b"><ci id="S4.T3.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.m1.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.6.6.6">Average(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.m1.1"><semantics id="S4.T3.6.6.6.m1.1a"><mo id="S4.T3.6.6.6.m1.1.1" stretchy="false" xref="S4.T3.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.m1.1b"><ci id="S4.T3.6.6.6.m1.1.1.cmml" xref="S4.T3.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.m1.1d">↑</annotation></semantics></math>)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.6.7.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.7.1.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.7.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.6.7.1.2.1">42.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.7.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.6.7.1.3.1">34.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.7.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.6.7.1.4.1">16.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.7.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.6.7.1.5.1">13.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.7.1.6"><span class="ltx_text ltx_font_bold" id="S4.T3.6.7.1.6.1">8.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.7.1.7"><span class="ltx_text ltx_font_bold" id="S4.T3.6.7.1.7.1">34.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.8.2">
<td class="ltx_td ltx_align_center" id="S4.T3.6.8.2.1">w/o VLM Planner.</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.8.2.2">16.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.8.2.3">20.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.8.2.4">13.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.8.2.5">5.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.8.2.6">5.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.8.2.7">16.2</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.9.3">
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.3.1">w/o C.I</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.3.2">26.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.3.3">28.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.3.4">16.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.3.5">11.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.3.6">8.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.3.7">24.3</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.10.4">
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.4.1">w/o CoT</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.4.2">21.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.4.3">26.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.4.4">16.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.4.5">8.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.4.6">6.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.4.7">21.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.11.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.11.5.1">w/o C.C</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.11.5.2">18.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.11.5.3">22.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.11.5.4">14.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.11.5.5">7.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.11.5.6">6.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.11.5.7">18.1</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of key components in the proposed physically plausible video generation framework.  It compares the model's performance on the Physics-IQ benchmark when removing or modifying the Vision-Language Model (VLM) planner, in-context learning, and Chain-of-Thought (CoT) reasoning. The results show the relative contributions of each component to the model's ability to generate physically realistic videos, especially focusing on the Solid Mechanics (S.M.) and Fluid Dynamics (F.D.) aspects.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study on VLM, in-context learning and COT. S.M. refers to Solid Mechanics, and F.D. refers to Fluid Dynamics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.2.2.3">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1">P.P.(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2">V.R.(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">↑</annotation></semantics></math>)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.2.3.1.1">CogVideoX-I2V-5B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.3.1.2">34%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.3.1.3">40%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.2.4.2.1">LTX-Video</th>
<td class="ltx_td ltx_align_center" id="S4.T4.2.4.2.2">22%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.4.2.3">18%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T4.2.5.3.1">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.5.3.2"><span class="ltx_text ltx_font_bold" id="S4.T4.2.5.3.2.1">52%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.5.3.3"><span class="ltx_text ltx_font_bold" id="S4.T4.2.5.3.3.1">48%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a user study comparing the perceived physical plausibility and visual realism of videos generated by different methods.  Participants were shown pairs of videos and asked to choose the one that better met their expectations for realism.  The table shows the percentage of times each model's videos were chosen as more physically plausible and visually realistic.
> <details>
> <summary>read the caption</summary>
> Table 4: User study statistics of the preference rate for Physical Plausibility (P.P.) & Visual Realism (V.R.).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.23368/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23368/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}