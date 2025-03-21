---
title: "Cosmos-Reason1: From Physical Common Sense To Embodied Reasoning"
summary: "Cosmos-Reason1: Physical AI models that reason and act in the real world, bridging the gap between perception and embodied decision-making."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Embodied AI", "🏢 NVIDIA",]
showSummary: true
date: 2025-03-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.15558 {{< /keyword >}}
{{< keyword icon="writer" >}} NVIDIA et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.15558" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.15558" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.15558/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Physical AI systems, vital for real-world interaction, must perceive, understand, and act. Current large language models (LLMs) struggle to ground knowledge in the physical world. Addressing this, the research defines key capabilities for Physical AI, focusing on physical common sense and embodied reasoning.  They use ontologies for space, time, physics, and embodied understanding. This leads to models to understand and embodied decisions.



The research presents **Cosmos-Reason1** models, trained via vision pre-training, supervised fine-tuning (SFT), and reinforcement learning (RL). The models are evaluated using newly built benchmarks for physical common sense and embodied reasoning. Results show Physical AI SFT and RL yields significant improvements. Code and pre-trained models will be available to boost Physical AI development.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Physical AI needs hierarchical ontology to capture space, time, and physics knowledge. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Embodied reasoning benefits from a two-dimensional ontology applicable across physical forms. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Physical AI SFT and reinforcement learning significantly improve model performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research presents **Cosmos-Reason1**, offering benchmarks to propel research in physical AI.  It enables more capable AI by improving reasoning about space, time, and physics. This paper inspires new research directions with code and models.

------
#### Visual Insights



![](https://arxiv.org/html/2503.15558/x1.png)

> 🔼 Cosmos-Reason1 is composed of two large multimodal language models (8B and 56B parameters).  These models are trained in four stages: 1) vision pre-training, 2) general supervised fine-tuning (SFT), 3) Physical AI SFT, and 4) Physical AI reinforcement learning (RL).  The training process leverages two ontologies: one for physical common sense and one for embodied reasoning.  Three benchmarks are used to evaluate the model's Physical AI reasoning abilities.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of Cosmos-Reason1. Cosmos-Reason1 contains two multimodal large language models of 8B and 56B, trained in four stages, including vision pre-training, general SFT, Physical AI SFT, and Physical AI RL. We also define two ontologies for physical common sense and embodied reasoning, and build three benchmarks to evaluate models’ Physical AI reasoning capabilities.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.4">
<tr class="ltx_tr" id="S2.T1.4.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S2.T1.4.1.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.1.1.1">
<span class="ltx_p" id="S2.T1.4.1.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.1.1.1.1" style="font-size:90%;">Category: Subcategory</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S2.T1.4.1.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.1.2.1">
<span class="ltx_p" id="S2.T1.4.1.2.1.1" style="width:348.5pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.2.1.1.1" style="font-size:90%;">Capability</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.2.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.2.1.1">
<span class="ltx_p" id="S2.T1.4.2.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.2.1.1.1.1" style="font-size:90%;">Space: Relationship</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.2.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.2.2.1">
<span class="ltx_p" id="S2.T1.4.2.2.1.1" style="width:348.5pt;"><span class="ltx_text" id="S2.T1.4.2.2.1.1.1" style="font-size:90%;">Determine the spatial relationship of objects in a scene. Perspective is important; for example, an object is left to the person or left to the camera view.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.3.1.1">
<span class="ltx_p" id="S2.T1.4.3.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.3.1.1.1.1" style="font-size:90%;">Space: Plausibility</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.3.2.1">
<span class="ltx_p" id="S2.T1.4.3.2.1.1" style="width:348.5pt;"><span class="ltx_text" id="S2.T1.4.3.2.1.1.1" style="font-size:90%;">Determine if a possible spatial relationship is feasible.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.4.1.1">
<span class="ltx_p" id="S2.T1.4.4.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.4.1.1.1.1" style="font-size:90%;">Space: Affordance</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.4.2.1">
<span class="ltx_p" id="S2.T1.4.4.2.1.1" style="width:348.5pt;"><span class="ltx_text" id="S2.T1.4.4.2.1.1.1" style="font-size:90%;">Understand object interaction with subjects such as humans, animals, robots, </span><span class="ltx_ERROR undefined" id="S2.T1.4.4.2.1.1.2">\etc</span><span class="ltx_text" id="S2.T1.4.4.2.1.1.3" style="font-size:90%;">.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.5.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.5.1.1">
<span class="ltx_p" id="S2.T1.4.5.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.5.1.1.1.1" style="font-size:90%;">Space: Environment</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.5.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.5.2.1">
<span class="ltx_p" id="S2.T1.4.5.2.1.1" style="width:348.5pt;"><span class="ltx_text" id="S2.T1.4.5.2.1.1.1" style="font-size:90%;">Understand the scene or the surrounding environment.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.6.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.6.1.1">
<span class="ltx_p" id="S2.T1.4.6.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.6.1.1.1.1" style="font-size:90%;">Time: Actions</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.6.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.6.2.1">
<span class="ltx_p" id="S2.T1.4.6.2.1.1" style="width:348.5pt;"><span class="ltx_text" id="S2.T1.4.6.2.1.1.1" style="font-size:90%;">Understand actions, including the ability to accurately describe the action (movement, direction, intensity, </span><span class="ltx_ERROR undefined" id="S2.T1.4.6.2.1.1.2">\etc</span><span class="ltx_text" id="S2.T1.4.6.2.1.1.3" style="font-size:90%;">.), determine action objective, subtask or goal decomposition, and determine if a task/objective is successfully completed.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.7.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.7.1.1">
<span class="ltx_p" id="S2.T1.4.7.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.7.1.1.1.1" style="font-size:90%;">Time: Order</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.7.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.7.2.1">
<span class="ltx_p" id="S2.T1.4.7.2.1.1" style="width:348.5pt;"><span class="ltx_text" id="S2.T1.4.7.2.1.1.1" style="font-size:90%;">Understand the timestamp and sequential order of events.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.8.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.8.1.1">
<span class="ltx_p" id="S2.T1.4.8.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.8.1.1.1.1" style="font-size:90%;">Time: Causality</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.8.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.8.2.1">
<span class="ltx_p" id="S2.T1.4.8.2.1.1" style="width:348.5pt;"><span class="ltx_text" id="S2.T1.4.8.2.1.1.1" style="font-size:90%;">Understand if event A causes B.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.9.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.9.1.1">
<span class="ltx_p" id="S2.T1.4.9.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.9.1.1.1.1" style="font-size:90%;">Time: Camera</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.9.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.9.2.1">
<span class="ltx_p" id="S2.T1.4.9.2.1.1" style="width:348.5pt;"><span class="ltx_text" id="S2.T1.4.9.2.1.1.1" style="font-size:90%;">Determine the position and movement of the camera, including camera movement, camera angle/position, and transition of scenes.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.10.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.10.1.1">
<span class="ltx_p" id="S2.T1.4.10.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.10.1.1.1.1" style="font-size:90%;">Time: Planning</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.10.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.10.2.1">
<span class="ltx_p" id="S2.T1.4.10.2.1.1" style="width:348.5pt;"><span class="ltx_text" id="S2.T1.4.10.2.1.1.1" style="font-size:90%;">Come up with a future plan based on past observations.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.11.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.11.1.1">
<span class="ltx_p" id="S2.T1.4.11.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.11.1.1.1.1" style="font-size:90%;">Fundamental Physics: 
<br class="ltx_break"/>Attributes</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.11.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.11.2.1">
<span class="ltx_p" id="S2.T1.4.11.2.1.1" style="width:348.5pt;"><span class="ltx_text" id="S2.T1.4.11.2.1.1.1" style="font-size:90%;">Determine physical properties of an object, including semantic description, size, color, material, mass, temperature, solidity (can objects pass through one another?), </span><span class="ltx_ERROR undefined" id="S2.T1.4.11.2.1.1.2">\etc</span><span class="ltx_text" id="S2.T1.4.11.2.1.1.3" style="font-size:90%;">.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.12.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.12.1.1">
<span class="ltx_p" id="S2.T1.4.12.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.12.1.1.1.1" style="font-size:90%;">Fundamental Physics: 
<br class="ltx_break"/>States</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.12.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.12.2.1">
<span class="ltx_p" id="S2.T1.4.12.2.1.1" style="width:348.5pt;"><span class="ltx_text" id="S2.T1.4.12.2.1.1.1" style="font-size:90%;">Determine the object state and understand the state change (</span><span class="ltx_ERROR undefined" id="S2.T1.4.12.2.1.1.2">\eg</span><span class="ltx_text" id="S2.T1.4.12.2.1.1.3" style="font-size:90%;">, ice changed to water, eggs changed from raw to cooked).</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.13.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.13.1.1">
<span class="ltx_p" id="S2.T1.4.13.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.13.1.1.1.1" style="font-size:90%;">Fundamental Physics: 
<br class="ltx_break"/>Object Permanence</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.13.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.13.2.1">
<span class="ltx_p" id="S2.T1.4.13.2.1.1" style="width:348.5pt;"><span class="ltx_text" id="S2.T1.4.13.2.1.1.1" style="font-size:90%;">Understand object permanence, which properties can/cannot change in certain conditions (weight, shape, size, color, </span><span class="ltx_ERROR undefined" id="S2.T1.4.13.2.1.1.2">\etc</span><span class="ltx_text" id="S2.T1.4.13.2.1.1.3" style="font-size:90%;">.).</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.14.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.14.1.1">
<span class="ltx_p" id="S2.T1.4.14.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.14.1.1.1.1" style="font-size:90%;">Fundamental Physics: 
<br class="ltx_break"/>Mechanics</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.14.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.14.2.1">
<span class="ltx_p" id="S2.T1.4.14.2.1.1" style="width:348.5pt;"><span class="ltx_text" id="S2.T1.4.14.2.1.1.1" style="font-size:90%;">Understand laws of physics related to Mechanics, including Statics (balance, stability, support, elasticity, deformation, the center of mass, </span><span class="ltx_ERROR undefined" id="S2.T1.4.14.2.1.1.2">\etc</span><span class="ltx_text" id="S2.T1.4.14.2.1.1.3" style="font-size:90%;">), Kinematics (velocity, acceleration, linear motion, circular motion, rotational motion, </span><span class="ltx_ERROR undefined" id="S2.T1.4.14.2.1.1.4">\etc</span><span class="ltx_text" id="S2.T1.4.14.2.1.1.5" style="font-size:90%;">), and Dynamics (gravity, collision, friction, sliding, inertia, conservation of momentum, fluids and particles, </span><span class="ltx_ERROR undefined" id="S2.T1.4.14.2.1.1.6">\etc</span><span class="ltx_text" id="S2.T1.4.14.2.1.1.7" style="font-size:90%;">).</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.15.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.15.1.1">
<span class="ltx_p" id="S2.T1.4.15.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.15.1.1.1.1" style="font-size:90%;">Fundamental Physics: 
<br class="ltx_break"/>Electromagnetism</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.15.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.15.2.1">
<span class="ltx_p" id="S2.T1.4.15.2.1.1" style="width:348.5pt;"><span class="ltx_text" id="S2.T1.4.15.2.1.1.1" style="font-size:90%;">Understand laws of physics related to Electromagnetism, including Optics (lighting, shadow, occlusion, reflection, refraction, diffraction, absorption, transmission, </span><span class="ltx_ERROR undefined" id="S2.T1.4.15.2.1.1.2">\etc</span><span class="ltx_text" id="S2.T1.4.15.2.1.1.3" style="font-size:90%;">), Electricity, and Magnetism.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.16.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.16.1.1">
<span class="ltx_p" id="S2.T1.4.16.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.16.1.1.1.1" style="font-size:90%;">Fundamental Physics: 
<br class="ltx_break"/>Thermodynamics</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.16.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.16.2.1">
<span class="ltx_p" id="S2.T1.4.16.2.1.1" style="width:348.5pt;"><span class="ltx_text" id="S2.T1.4.16.2.1.1.1" style="font-size:90%;">Understand laws of physics related to Thermodynamics, such as heat, temperature change, evaporation, heat transfer, thermal expansion and contraction, </span><span class="ltx_ERROR undefined" id="S2.T1.4.16.2.1.1.2">\etc</span><span class="ltx_text" id="S2.T1.4.16.2.1.1.3" style="font-size:90%;">.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S2.T1.4.17.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.17.1.1">
<span class="ltx_p" id="S2.T1.4.17.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.17.1.1.1.1" style="font-size:90%;">Fundamental Physics: 
<br class="ltx_break"/>Anti-Physics</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S2.T1.4.17.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.17.2.1">
<span class="ltx_p" id="S2.T1.4.17.2.1.1" style="width:348.5pt;"><span class="ltx_text" id="S2.T1.4.17.2.1.1.1" style="font-size:90%;">Understand situations that defy the laws of physics, such as anti-gravity, reverse of time, perpetual motion, sudden disappearance, </span><span class="ltx_ERROR undefined" id="S2.T1.4.17.2.1.1.2">\etc</span><span class="ltx_text" id="S2.T1.4.17.2.1.1.3" style="font-size:90%;">.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table details the specific capabilities expected of a Physical AI system within the context of common sense reasoning.  It breaks down the three main categories of physical common sense (Space, Time, Fundamental Physics) into sixteen subcategories. Each subcategory lists a specific capability that a successful Physical AI system should demonstrate.  For example, under the 'Space' category, the 'Relationship' subcategory defines the capability to 'Determine the spatial relationship of objects in a scene.'  This provides a detailed framework for evaluating and measuring the level of physical common sense understanding in Physical AI models.
> <details>
> <summary>read the caption</summary>
> Table 1: Definition of Physical AI systems’ capabilities for each subcategory in our common sense ontology.
> </details>





### In-depth insights


#### Physical AI
Physical AI represents a paradigm shift, moving beyond abstract data processing towards embodied intelligence capable of interacting with the real world. This necessitates endowing AI systems with **physical common sense** and **embodied reasoning**, enabling them to understand how the world operates under the laws of physics and how actions affect the environment.  Crucially, it's not about mimicking humans; rather, it's about creating adaptable agents that can achieve goals despite physical constraints and uncertain dynamics. **Embodied reasoning** requires processing complex sensory inputs, predicting the effects of actions, respecting physical constraints, and continuously learning from interactions. The focus shifts from passive understanding to active engagement, empowering AI systems to reason about and plan behaviors in the real world.

#### Cosmos-Reason1
Cosmos-Reason1, as presented, marks a significant stride in the field of Physical AI by tackling the crucial need for **grounded reasoning** in embodied agents. The paper's focus on integrating physical common sense and embodied reasoning capabilities into large language models is particularly noteworthy. By defining specific ontologies for space, time, physics, and agent interaction, Cosmos-Reason1 offers a structured framework for developing and evaluating Physical AI systems. The emphasis on learning from visual data, especially videos, is relevant, reflecting the real-world perception challenges. **Reinforcement learning** with rule-based rewards further refines the model's decision-making. This represents a holistic approach, considering both knowledge representation and action planning. Also, building benchmarks are useful ways to validate the data and methodology. The framework facilitates improvements by offering code and models. The introduction of a hybrid Mamba-MLP-Transformer is the highlight of the research.

#### Ontology design
From the paper, it can be understood that the ontology design focuses on **physical common sense** and **embodied reasoning**, forming a hierarchical structure for representing knowledge about space, time, and physics. This design might involve identifying key entities, relationships, and axioms relevant to how AI agents interact with the physical world. A crucial aspect of this ontology is capturing the **affordances** of objects and how agents can manipulate them to achieve goals. The success hinges on structuring the ontology in a way that enables efficient reasoning and planning for embodied agents. A potential challenge lies in designing an ontology that is both comprehensive and computationally tractable. An effective ontology would enable AI systems to effectively reason about the physical world

#### RL Post-Training
**RL post-training** is a crucial step in refining models for complex tasks. It leverages rule-based, verifiable rewards, improving capabilities like reasoning and physical common sense. Unlike math/coding, physical AI has open-ended responses. Transforming data into multiple-choice questions (MCQs) facilitates reward assignment. This involves a 5-step process: 1) Video Curation, 2) Detailed Captioning, 3) QA pair prompting, 4) Extracting Reasoning Traces from models such as DeepSeek-R1 and 5) Cleaning & Rewriting data. RL post-training emphasizes equal data representation, dynamic MCQ shuffling, and specific reward types like **accuracy and format rewards**. This strategy enhances reasoning without human intervention, improving capabilities with reasoning about space, time, and intuitive physics.

#### Intuitive physics
**Intuitive physics** represents a crucial aspect of AI, enabling systems to understand how the world functions. This involves reasoning about space, time, and object permanence. **Existing models often struggle with these tasks**, showcasing limitations in capturing the physical world's dynamics. Datasets and methods focusing on intuitive physics reasoning become essential. Models excelling at these tasks hold promise for creating more robust and reliable AI systems that can effectively interact with their surroundings. **This capability is vital for the advancement of embodied AI**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.15558/x2.png)

> 🔼 This pie chart illustrates the hierarchical ontology developed for representing physical common sense within the Cosmos-Reason1 model.  The ontology is structured into three main categories: Space, Time, and Fundamental Physics. Each of these high-level categories is further broken down into more specific subcategories (16 in total) which capture detailed aspects of physical understanding. For instance, the 'Space' category includes subcategories such as 'Relationship' (describing spatial relationships between objects), 'Plausibility' (assessing the feasibility of spatial arrangements), 'Affordance' (considering how objects can be used or interacted with), and 'Environment' (understanding the context of the surrounding area). Similarly, 'Time' is subdivided into concepts such as 'Actions', 'Order', 'Causality', and 'Planning', representing various temporal relationships and reasoning capabilities. The 'Fundamental Physics' category covers essential physical principles, including aspects of mechanics, electromagnetism, and thermodynamics, along with the crucial concept of 'Object Permanence.'
> <details>
> <summary>read the caption</summary>
> Figure 2: A pie chart showing our physical common sense ontology. The ontology has three categories (Space, Time, and Fundamental Physics) and 16 fine-grained subcategories.
> </details>



![](https://arxiv.org/html/2503.15558/x3.png)

> 🔼 The figure illustrates the architecture of the Cosmos-Reason1 multimodal large language model.  The process begins with an input video and a text prompt. The video is first processed by a vision encoder, which extracts relevant visual features. These features are then projected into the LLM's token embedding space using a projector, converting them into a format compatible with the text tokens from the prompt. The video tokens and text tokens are concatenated and fed into the core of the model: a hybrid Mamba-MLP-Transformer architecture. This architecture is designed for efficient and effective processing of long sequences of tokens, enabling the model to engage in long chain-of-thought reasoning processes to generate its output. The final output is a natural language response that incorporates the information from both the video and the text prompt.
> <details>
> <summary>read the caption</summary>
> Figure 3: An illustration of our multimodal large language model architecture. Given an input video and an input text prompt, the video is projected into the LLM’s token embedding space as video tokens by a vision encoder followed by a projector. The text tokens are concatenated with the video tokens and fed into the LLM backbone, a hybrid Mamba-MLP-Transformer architecture. Our model can output responses with long chain-of-thought reasoning processes.
> </details>



![](https://arxiv.org/html/2503.15558/x4.png)

> 🔼 This figure details the architecture of the Cosmos-Reason1 models' backbone, a hybrid Mamba-MLP-Transformer.  The diagram shows how Transformer blocks (composed of self-attention and MLP layers) are combined with alternating Mamba-MLP modules for efficiency.  The middle section illustrates the 8B parameter model, while the bottom shows the architecture of the larger 56B parameter model.  The Mamba modules are designed to improve the efficiency of processing long sequences.
> <details>
> <summary>read the caption</summary>
> Figure 4: An illustration of our hybrid Mamba-MLP-Transformer backbone architecture. The middle sub-figure represents the 8B LLM backbone, and the bottom sub-figure depicts the 56B LLM backbone. A Transformer block consists of a self-attention layer and an MLP layer. We also show an example of Alternating Mamba-MLP module on top of the figure.
> </details>



![](https://arxiv.org/html/2503.15558/extracted/6291482/images/4_data/common_sense.jpg)

> 🔼 This figure shows an overview of the Cosmos-Reason1 model architecture.  The input is a video, processed through a vision encoder and a projector to align with the text embeddings of a pre-trained large language model (LLM). The model is trained in four stages: vision pre-training, general supervised fine-tuning (SFT), Physical AI SFT, and Physical AI reinforcement learning (RL).  Two ontologies are used to represent physical common sense and embodied reasoning, and the model is evaluated on three benchmarks.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2503.15558/extracted/6291482/images/4_data/bridgev2.jpg)

> 🔼 This figure is a pie chart illustrating the hierarchical ontology for physical common sense used in the Cosmos-Reason1 model.  The ontology categorizes fundamental knowledge about the physical world into three main categories: Space, Time, and Fundamental Physics. Each of these categories is further subdivided into more specific subcategories, representing fine-grained aspects of physical understanding. For example, 'Space' includes subcategories like 'Relationship,' 'Plausibility,' and 'Affordance,' reflecting different aspects of spatial reasoning. Similarly, 'Time' encompasses subcategories such as 'Actions,' 'Order,' and 'Causality,' while 'Fundamental Physics' incorporates concepts like 'Mechanics,' 'Electromagnetism,' and 'Thermodynamics.'
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2503.15558/extracted/6291482/images/4_data/robovqa.jpg)

> 🔼 This figure shows example video frames from the Physical AI Supervised Fine-Tuning datasets. The images depict various scenarios involving different agents (humans, robots) performing actions in real-world environments.  These examples illustrate the diversity and complexity of the data used to train the Cosmos-Reason1 models on physical common sense and embodied reasoning.
> <details>
> <summary>read the caption</summary>
> (c)
> </details>



![](https://arxiv.org/html/2503.15558/extracted/6291482/images/4_data/agibot.jpg)

> 🔼 This figure shows an example of video frames from the Physical AI Supervised Fine-tuning datasets. The images depict various scenarios involving different embodied agents (such as robots and humans) performing different tasks in real-world environments. These videos are used in the Physical AI SFT stage of training the Cosmos-Reason1 model to help it learn physical common sense and develop embodied reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> (d)
> </details>



![](https://arxiv.org/html/2503.15558/extracted/6291482/images/4_data/holoassist.jpg)

> 🔼 This figure shows an example of video frames from the Physical AI Supervised Fine-tuning datasets.  It highlights the diversity of scenarios and tasks included in the dataset, encompassing various activities and agent types relevant to physical AI, such as robotic manipulation and autonomous driving.  The images represent a small subset of the larger dataset used to train the models.
> <details>
> <summary>read the caption</summary>
> (e)
> </details>



![](https://arxiv.org/html/2503.15558/extracted/6291482/images/4_data/av.jpg)

> 🔼 This figure shows an example of video frames from the Physical AI Supervised Fine-Tuning datasets.  These datasets were used to enhance the model's ability to understand Physical AI-specific tasks, focusing on embodied reasoning capabilities such as understanding the spatial relationships between objects, the temporal order of events, and object permanence.  The images illustrate the visual diversity captured within the data, showcasing a variety of actions and contexts that the model must reason about to successfully complete Physical AI tasks.
> <details>
> <summary>read the caption</summary>
> (f)
> </details>



![](https://arxiv.org/html/2503.15558/x5.png)

> 🔼 Figure 5 presents example video frames from the Physical AI Supervised Fine-Tuning stage of the Cosmos-Reason1 model training.  These diverse video clips showcase various scenarios used to train the model in understanding and reasoning about physical phenomena. The visual examples highlight the real-world contexts and diverse physical actions the model is trained on, demonstrating the wide range of physical situations represented in the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 5: Example of video frames from our Physical AI supervised fine-tuning datasets.
> </details>



![](https://arxiv.org/html/2503.15558/x6.png)

> 🔼 Figure 6 illustrates the data curation pipeline for embodied reasoning within the context of Physical AI.  The example focuses on the AgiBot dataset. The process begins by extracting short video segments that represent individual subtasks from a longer video.  These clips are then annotated with captions that provide detailed context about the state of the scene and the actions taken by the agent.  Next, question-answer pairs are generated, focusing on predicting the most probable next subtask.  The question and caption are provided as input to the DeepSeek-R1 model, which then generates a reasoning trace (a chain of thought) to answer the question. Finally, this reasoning trace is cleaned and rewritten to create high-quality supervised fine-tuning (SFT) samples.
> <details>
> <summary>read the caption</summary>
> Figure 6: Embodied reasoning SFT data curation pipeline. We demonstrate an illustrative example for AgiBot, where we (1) extract short horizon segments corresponding to the subtask, (2) caption the extracted clip to obtain state-action context, (3) curate QA pairs for “next plausible subtask prediction”, (4) prompt R1 with the question and caption to elicit reasoning, (5) clean and rewrite the reasoning trace to obtain valid SFT samples.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T2.4">
<tr class="ltx_tr" id="S2.T2.4.1">
<td class="ltx_td ltx_align_top ltx_border_r ltx_border_tt" id="S2.T2.4.1.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S2.T2.4.1.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.4.1.2.1">
<span class="ltx_p" id="S2.T2.4.1.2.1.1" style="width:149.4pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.1.2.1.1.1" style="font-size:90%;">Natural Agents 
<br class="ltx_break"/>(humans, animals)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S2.T2.4.1.3">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.4.1.3.1">
<span class="ltx_p" id="S2.T2.4.1.3.1.1" style="width:213.4pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.1.3.1.1.1" style="font-size:90%;">Robotics Systems 
<br class="ltx_break"/>(robot arms, humanoid robots, autonomous vehicles)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.4.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S2.T2.4.2.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.4.2.1.1">
<span class="ltx_p" id="S2.T2.4.2.1.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.2.1.1.1.1" style="font-size:90%;">Process Complex 
<br class="ltx_break"/>Sensory Inputs</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T2.4.2.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.4.2.2.1">
<span class="ltx_p" id="S2.T2.4.2.2.1.1" style="width:149.4pt;"><span class="ltx_text" id="S2.T2.4.2.2.1.1.1" style="font-size:90%;">A person watches videos about a cooking recipe. </span>
<br class="ltx_break"/><span class="ltx_text" id="S2.T2.4.2.2.1.1.2" style="font-size:90%;">A bat locates prey using echolocation.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T2.4.2.3">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.4.2.3.1">
<span class="ltx_p" id="S2.T2.4.2.3.1.1" style="width:213.4pt;"><span class="ltx_text" id="S2.T2.4.2.3.1.1.1" style="font-size:90%;">A robot arm recognizes objects using its camera. </span>
<br class="ltx_break"/><span class="ltx_text" id="S2.T2.4.2.3.1.1.2" style="font-size:90%;">A robot detects obstacles while walking. </span>
<br class="ltx_break"/><span class="ltx_text" id="S2.T2.4.2.3.1.1.3" style="font-size:90%;">A self-driving car recognizes a stop sign and pedestrians.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S2.T2.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.4.3.1.1">
<span class="ltx_p" id="S2.T2.4.3.1.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.3.1.1.1.1" style="font-size:90%;">Predict Action 
<br class="ltx_break"/>Effects</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T2.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.4.3.2.1">
<span class="ltx_p" id="S2.T2.4.3.2.1.1" style="width:149.4pt;"><span class="ltx_text" id="S2.T2.4.3.2.1.1.1" style="font-size:90%;">A carpenter anticipates wood splintering before cutting. </span>
<br class="ltx_break"/><span class="ltx_text" id="S2.T2.4.3.2.1.1.2" style="font-size:90%;">A dog estimates a ball’s landing spot to catch it.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T2.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.4.3.3.1">
<span class="ltx_p" id="S2.T2.4.3.3.1.1" style="width:213.4pt;"><span class="ltx_text" id="S2.T2.4.3.3.1.1.1" style="font-size:90%;">A robotic arm compensates for momentum before gripping an object. </span>
<br class="ltx_break"/><span class="ltx_text" id="S2.T2.4.3.3.1.1.2" style="font-size:90%;">A robot estimates an object’s weight before lifting it. </span>
<br class="ltx_break"/><span class="ltx_text" id="S2.T2.4.3.3.1.1.3" style="font-size:90%;">A self-driving car predicts tire slippage on ice.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S2.T2.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.4.4.1.1">
<span class="ltx_p" id="S2.T2.4.4.1.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.4.1.1.1.1" style="font-size:90%;">Respect Physical 
<br class="ltx_break"/>Constraints</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T2.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.4.4.2.1">
<span class="ltx_p" id="S2.T2.4.4.2.1.1" style="width:149.4pt;"><span class="ltx_text" id="S2.T2.4.4.2.1.1.1" style="font-size:90%;">A pilot maintains altitude within aerodynamic limits. </span>
<br class="ltx_break"/><span class="ltx_text" id="S2.T2.4.4.2.1.1.2" style="font-size:90%;">A cheetah limits speed to avoid muscle strain.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T2.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.4.4.3.1">
<span class="ltx_p" id="S2.T2.4.4.3.1.1" style="width:213.4pt;"><span class="ltx_text" id="S2.T2.4.4.3.1.1.1" style="font-size:90%;">A robotic gripper limits its force to prevent breaking objects. </span>
<br class="ltx_break"/><span class="ltx_text" id="S2.T2.4.4.3.1.1.2" style="font-size:90%;">A robot adjusts joint torque to prevent falls. </span>
<br class="ltx_break"/><span class="ltx_text" id="S2.T2.4.4.3.1.1.3" style="font-size:90%;">A drone avoids exceeding wind resistance thresholds.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.4.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S2.T2.4.5.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.4.5.1.1">
<span class="ltx_p" id="S2.T2.4.5.1.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.5.1.1.1.1" style="font-size:90%;">Learn from 
<br class="ltx_break"/>Interactions</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S2.T2.4.5.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.4.5.2.1">
<span class="ltx_p" id="S2.T2.4.5.2.1.1" style="width:149.4pt;"><span class="ltx_text" id="S2.T2.4.5.2.1.1.1" style="font-size:90%;">A golfer corrects their stance after observing ball trajectory. </span>
<br class="ltx_break"/><span class="ltx_text" id="S2.T2.4.5.2.1.1.2" style="font-size:90%;">A dog learns to open doors through repeated attempts.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S2.T2.4.5.3">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.4.5.3.1">
<span class="ltx_p" id="S2.T2.4.5.3.1.1" style="width:213.4pt;"><span class="ltx_text" id="S2.T2.4.5.3.1.1.1" style="font-size:90%;">A factory robot improves alignment after detecting misplacements. </span>
<br class="ltx_break"/><span class="ltx_text" id="S2.T2.4.5.3.1.1.2" style="font-size:90%;">A robot learns new handshakes. </span>
<br class="ltx_break"/><span class="ltx_text" id="S2.T2.4.5.3.1.1.3" style="font-size:90%;">A self-driving car refines braking distances.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ontology for embodied reasoning in Physical AI systems. It categorizes key capabilities essential for embodied reasoning (processing complex sensory inputs, predicting action effects, respecting physical constraints, and learning from interactions) and illustrates them with examples across various agent types (natural agents like humans and animals, and robotic systems like robot arms, humanoid robots, and autonomous vehicles).  Each cell shows a specific example of how the capability is demonstrated by the corresponding agent type.
> <details>
> <summary>read the caption</summary>
> Table 2: Embodied reasoning ontology, with an example for each combination of capability and agent type.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T3.28">
<tr class="ltx_tr" id="S3.T3.28.29">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T3.28.29.1"><span class="ltx_text ltx_font_bold" id="S3.T3.28.29.1.1" style="font-size:90%;">Configuration</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.28.29.2"><span class="ltx_text ltx_font_bold" id="S3.T3.28.29.2.1" style="font-size:90%;">Cosmos-Reason1-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.28.29.3"><span class="ltx_text ltx_font_bold" id="S3.T3.28.29.3.1" style="font-size:90%;">Cosmos-Reason1-56B</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.28.30">
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T3.28.30.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T3.28.30.2"><span class="ltx_text" id="S3.T3.28.30.2.1" style="font-size:90%;">Vision Encoder</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.28.31">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.28.31.1"><span class="ltx_text" id="S3.T3.28.31.1.1" style="font-size:90%;">Architecture</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.28.31.2"><span class="ltx_text" id="S3.T3.28.31.2.1" style="font-size:90%;">ViT-300M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.28.31.3"><span class="ltx_text" id="S3.T3.28.31.3.1" style="font-size:90%;">ViT-300M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.2.2.3"><span class="ltx_text" id="S3.T3.2.2.3.1" style="font-size:90%;">Input Size</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.1"><math alttext="448\times 448" class="ltx_Math" display="inline" id="S3.T3.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.m1.1a"><mrow id="S3.T3.1.1.1.m1.1.1" xref="S3.T3.1.1.1.m1.1.1.cmml"><mn id="S3.T3.1.1.1.m1.1.1.2" mathsize="90%" xref="S3.T3.1.1.1.m1.1.1.2.cmml">448</mn><mo id="S3.T3.1.1.1.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S3.T3.1.1.1.m1.1.1.1.cmml">×</mo><mn id="S3.T3.1.1.1.m1.1.1.3" mathsize="90%" xref="S3.T3.1.1.1.m1.1.1.3.cmml">448</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.m1.1b"><apply id="S3.T3.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.m1.1.1"><times id="S3.T3.1.1.1.m1.1.1.1.cmml" xref="S3.T3.1.1.1.m1.1.1.1"></times><cn id="S3.T3.1.1.1.m1.1.1.2.cmml" type="integer" xref="S3.T3.1.1.1.m1.1.1.2">448</cn><cn id="S3.T3.1.1.1.m1.1.1.3.cmml" type="integer" xref="S3.T3.1.1.1.m1.1.1.3">448</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.m1.1c">448\times 448</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.m1.1d">448 × 448</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2"><math alttext="448\times 448" class="ltx_Math" display="inline" id="S3.T3.2.2.2.m1.1"><semantics id="S3.T3.2.2.2.m1.1a"><mrow id="S3.T3.2.2.2.m1.1.1" xref="S3.T3.2.2.2.m1.1.1.cmml"><mn id="S3.T3.2.2.2.m1.1.1.2" mathsize="90%" xref="S3.T3.2.2.2.m1.1.1.2.cmml">448</mn><mo id="S3.T3.2.2.2.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S3.T3.2.2.2.m1.1.1.1.cmml">×</mo><mn id="S3.T3.2.2.2.m1.1.1.3" mathsize="90%" xref="S3.T3.2.2.2.m1.1.1.3.cmml">448</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.m1.1b"><apply id="S3.T3.2.2.2.m1.1.1.cmml" xref="S3.T3.2.2.2.m1.1.1"><times id="S3.T3.2.2.2.m1.1.1.1.cmml" xref="S3.T3.2.2.2.m1.1.1.1"></times><cn id="S3.T3.2.2.2.m1.1.1.2.cmml" type="integer" xref="S3.T3.2.2.2.m1.1.1.2">448</cn><cn id="S3.T3.2.2.2.m1.1.1.3.cmml" type="integer" xref="S3.T3.2.2.2.m1.1.1.3">448</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.m1.1c">448\times 448</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.m1.1d">448 × 448</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.4.3"><span class="ltx_text" id="S3.T3.4.4.3.1" style="font-size:90%;">Patch Size</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.1"><math alttext="14\times 14" class="ltx_Math" display="inline" id="S3.T3.3.3.1.m1.1"><semantics id="S3.T3.3.3.1.m1.1a"><mrow id="S3.T3.3.3.1.m1.1.1" xref="S3.T3.3.3.1.m1.1.1.cmml"><mn id="S3.T3.3.3.1.m1.1.1.2" mathsize="90%" xref="S3.T3.3.3.1.m1.1.1.2.cmml">14</mn><mo id="S3.T3.3.3.1.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S3.T3.3.3.1.m1.1.1.1.cmml">×</mo><mn id="S3.T3.3.3.1.m1.1.1.3" mathsize="90%" xref="S3.T3.3.3.1.m1.1.1.3.cmml">14</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.1.m1.1b"><apply id="S3.T3.3.3.1.m1.1.1.cmml" xref="S3.T3.3.3.1.m1.1.1"><times id="S3.T3.3.3.1.m1.1.1.1.cmml" xref="S3.T3.3.3.1.m1.1.1.1"></times><cn id="S3.T3.3.3.1.m1.1.1.2.cmml" type="integer" xref="S3.T3.3.3.1.m1.1.1.2">14</cn><cn id="S3.T3.3.3.1.m1.1.1.3.cmml" type="integer" xref="S3.T3.3.3.1.m1.1.1.3">14</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.1.m1.1c">14\times 14</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.1.m1.1d">14 × 14</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.4.2"><math alttext="14\times 14" class="ltx_Math" display="inline" id="S3.T3.4.4.2.m1.1"><semantics id="S3.T3.4.4.2.m1.1a"><mrow id="S3.T3.4.4.2.m1.1.1" xref="S3.T3.4.4.2.m1.1.1.cmml"><mn id="S3.T3.4.4.2.m1.1.1.2" mathsize="90%" xref="S3.T3.4.4.2.m1.1.1.2.cmml">14</mn><mo id="S3.T3.4.4.2.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S3.T3.4.4.2.m1.1.1.1.cmml">×</mo><mn id="S3.T3.4.4.2.m1.1.1.3" mathsize="90%" xref="S3.T3.4.4.2.m1.1.1.3.cmml">14</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.4.4.2.m1.1b"><apply id="S3.T3.4.4.2.m1.1.1.cmml" xref="S3.T3.4.4.2.m1.1.1"><times id="S3.T3.4.4.2.m1.1.1.1.cmml" xref="S3.T3.4.4.2.m1.1.1.1"></times><cn id="S3.T3.4.4.2.m1.1.1.2.cmml" type="integer" xref="S3.T3.4.4.2.m1.1.1.2">14</cn><cn id="S3.T3.4.4.2.m1.1.1.3.cmml" type="integer" xref="S3.T3.4.4.2.m1.1.1.3">14</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.4.2.m1.1c">14\times 14</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.4.2.m1.1d">14 × 14</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.6.6.3"><span class="ltx_text" id="S3.T3.6.6.3.1" style="font-size:90%;">Number of Layers</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.5.5.1"><math alttext="24" class="ltx_Math" display="inline" id="S3.T3.5.5.1.m1.1"><semantics id="S3.T3.5.5.1.m1.1a"><mn id="S3.T3.5.5.1.m1.1.1" mathsize="90%" xref="S3.T3.5.5.1.m1.1.1.cmml">24</mn><annotation-xml encoding="MathML-Content" id="S3.T3.5.5.1.m1.1b"><cn id="S3.T3.5.5.1.m1.1.1.cmml" type="integer" xref="S3.T3.5.5.1.m1.1.1">24</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.5.1.m1.1c">24</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.5.1.m1.1d">24</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.6.2"><math alttext="24" class="ltx_Math" display="inline" id="S3.T3.6.6.2.m1.1"><semantics id="S3.T3.6.6.2.m1.1a"><mn id="S3.T3.6.6.2.m1.1.1" mathsize="90%" xref="S3.T3.6.6.2.m1.1.1.cmml">24</mn><annotation-xml encoding="MathML-Content" id="S3.T3.6.6.2.m1.1b"><cn id="S3.T3.6.6.2.m1.1.1.cmml" type="integer" xref="S3.T3.6.6.2.m1.1.1">24</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.6.2.m1.1c">24</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.6.2.m1.1d">24</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.8.8.3"><span class="ltx_text" id="S3.T3.8.8.3.1" style="font-size:90%;">Model Dimension</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.1"><math alttext="1{,}024" class="ltx_Math" display="inline" id="S3.T3.7.7.1.m1.2"><semantics id="S3.T3.7.7.1.m1.2a"><mrow id="S3.T3.7.7.1.m1.2.3.2" xref="S3.T3.7.7.1.m1.2.3.1.cmml"><mn id="S3.T3.7.7.1.m1.1.1" mathsize="90%" xref="S3.T3.7.7.1.m1.1.1.cmml">1</mn><mo id="S3.T3.7.7.1.m1.2.3.2.1" mathsize="90%" xref="S3.T3.7.7.1.m1.2.3.1.cmml">,</mo><mn id="S3.T3.7.7.1.m1.2.2" mathsize="90%" xref="S3.T3.7.7.1.m1.2.2.cmml">024</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.7.7.1.m1.2b"><list id="S3.T3.7.7.1.m1.2.3.1.cmml" xref="S3.T3.7.7.1.m1.2.3.2"><cn id="S3.T3.7.7.1.m1.1.1.cmml" type="integer" xref="S3.T3.7.7.1.m1.1.1">1</cn><cn id="S3.T3.7.7.1.m1.2.2.cmml" type="integer" xref="S3.T3.7.7.1.m1.2.2">024</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.7.7.1.m1.2c">1{,}024</annotation><annotation encoding="application/x-llamapun" id="S3.T3.7.7.1.m1.2d">1 , 024</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.8.2"><math alttext="1{,}024" class="ltx_Math" display="inline" id="S3.T3.8.8.2.m1.2"><semantics id="S3.T3.8.8.2.m1.2a"><mrow id="S3.T3.8.8.2.m1.2.3.2" xref="S3.T3.8.8.2.m1.2.3.1.cmml"><mn id="S3.T3.8.8.2.m1.1.1" mathsize="90%" xref="S3.T3.8.8.2.m1.1.1.cmml">1</mn><mo id="S3.T3.8.8.2.m1.2.3.2.1" mathsize="90%" xref="S3.T3.8.8.2.m1.2.3.1.cmml">,</mo><mn id="S3.T3.8.8.2.m1.2.2" mathsize="90%" xref="S3.T3.8.8.2.m1.2.2.cmml">024</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.8.8.2.m1.2b"><list id="S3.T3.8.8.2.m1.2.3.1.cmml" xref="S3.T3.8.8.2.m1.2.3.2"><cn id="S3.T3.8.8.2.m1.1.1.cmml" type="integer" xref="S3.T3.8.8.2.m1.1.1">1</cn><cn id="S3.T3.8.8.2.m1.2.2.cmml" type="integer" xref="S3.T3.8.8.2.m1.2.2">024</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.8.8.2.m1.2c">1{,}024</annotation><annotation encoding="application/x-llamapun" id="S3.T3.8.8.2.m1.2d">1 , 024</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.10.10.3"><span class="ltx_text" id="S3.T3.10.10.3.1" style="font-size:90%;">FFN Hidden Dimension</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.1"><math alttext="4{,}096" class="ltx_Math" display="inline" id="S3.T3.9.9.1.m1.2"><semantics id="S3.T3.9.9.1.m1.2a"><mrow id="S3.T3.9.9.1.m1.2.3.2" xref="S3.T3.9.9.1.m1.2.3.1.cmml"><mn id="S3.T3.9.9.1.m1.1.1" mathsize="90%" xref="S3.T3.9.9.1.m1.1.1.cmml">4</mn><mo id="S3.T3.9.9.1.m1.2.3.2.1" mathsize="90%" xref="S3.T3.9.9.1.m1.2.3.1.cmml">,</mo><mn id="S3.T3.9.9.1.m1.2.2" mathsize="90%" xref="S3.T3.9.9.1.m1.2.2.cmml">096</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.9.9.1.m1.2b"><list id="S3.T3.9.9.1.m1.2.3.1.cmml" xref="S3.T3.9.9.1.m1.2.3.2"><cn id="S3.T3.9.9.1.m1.1.1.cmml" type="integer" xref="S3.T3.9.9.1.m1.1.1">4</cn><cn id="S3.T3.9.9.1.m1.2.2.cmml" type="integer" xref="S3.T3.9.9.1.m1.2.2">096</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.9.9.1.m1.2c">4{,}096</annotation><annotation encoding="application/x-llamapun" id="S3.T3.9.9.1.m1.2d">4 , 096</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.10.2"><math alttext="4{,}096" class="ltx_Math" display="inline" id="S3.T3.10.10.2.m1.2"><semantics id="S3.T3.10.10.2.m1.2a"><mrow id="S3.T3.10.10.2.m1.2.3.2" xref="S3.T3.10.10.2.m1.2.3.1.cmml"><mn id="S3.T3.10.10.2.m1.1.1" mathsize="90%" xref="S3.T3.10.10.2.m1.1.1.cmml">4</mn><mo id="S3.T3.10.10.2.m1.2.3.2.1" mathsize="90%" xref="S3.T3.10.10.2.m1.2.3.1.cmml">,</mo><mn id="S3.T3.10.10.2.m1.2.2" mathsize="90%" xref="S3.T3.10.10.2.m1.2.2.cmml">096</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.10.10.2.m1.2b"><list id="S3.T3.10.10.2.m1.2.3.1.cmml" xref="S3.T3.10.10.2.m1.2.3.2"><cn id="S3.T3.10.10.2.m1.1.1.cmml" type="integer" xref="S3.T3.10.10.2.m1.1.1">4</cn><cn id="S3.T3.10.10.2.m1.2.2.cmml" type="integer" xref="S3.T3.10.10.2.m1.2.2">096</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.10.10.2.m1.2c">4{,}096</annotation><annotation encoding="application/x-llamapun" id="S3.T3.10.10.2.m1.2d">4 , 096</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.28.32">
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T3.28.32.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T3.28.32.2"><span class="ltx_text" id="S3.T3.28.32.2.1" style="font-size:90%;">Projector</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.12.12.3"><span class="ltx_text" id="S3.T3.12.12.3.1" style="font-size:90%;">Downsampling</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.11.11.1"><math alttext="2\times 2" class="ltx_Math" display="inline" id="S3.T3.11.11.1.m1.1"><semantics id="S3.T3.11.11.1.m1.1a"><mrow id="S3.T3.11.11.1.m1.1.1" xref="S3.T3.11.11.1.m1.1.1.cmml"><mn id="S3.T3.11.11.1.m1.1.1.2" mathsize="90%" xref="S3.T3.11.11.1.m1.1.1.2.cmml">2</mn><mo id="S3.T3.11.11.1.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S3.T3.11.11.1.m1.1.1.1.cmml">×</mo><mn id="S3.T3.11.11.1.m1.1.1.3" mathsize="90%" xref="S3.T3.11.11.1.m1.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.11.11.1.m1.1b"><apply id="S3.T3.11.11.1.m1.1.1.cmml" xref="S3.T3.11.11.1.m1.1.1"><times id="S3.T3.11.11.1.m1.1.1.1.cmml" xref="S3.T3.11.11.1.m1.1.1.1"></times><cn id="S3.T3.11.11.1.m1.1.1.2.cmml" type="integer" xref="S3.T3.11.11.1.m1.1.1.2">2</cn><cn id="S3.T3.11.11.1.m1.1.1.3.cmml" type="integer" xref="S3.T3.11.11.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.11.11.1.m1.1c">2\times 2</annotation><annotation encoding="application/x-llamapun" id="S3.T3.11.11.1.m1.1d">2 × 2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.12.12.2"><math alttext="2\times 2" class="ltx_Math" display="inline" id="S3.T3.12.12.2.m1.1"><semantics id="S3.T3.12.12.2.m1.1a"><mrow id="S3.T3.12.12.2.m1.1.1" xref="S3.T3.12.12.2.m1.1.1.cmml"><mn id="S3.T3.12.12.2.m1.1.1.2" mathsize="90%" xref="S3.T3.12.12.2.m1.1.1.2.cmml">2</mn><mo id="S3.T3.12.12.2.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S3.T3.12.12.2.m1.1.1.1.cmml">×</mo><mn id="S3.T3.12.12.2.m1.1.1.3" mathsize="90%" xref="S3.T3.12.12.2.m1.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.12.12.2.m1.1b"><apply id="S3.T3.12.12.2.m1.1.1.cmml" xref="S3.T3.12.12.2.m1.1.1"><times id="S3.T3.12.12.2.m1.1.1.1.cmml" xref="S3.T3.12.12.2.m1.1.1.1"></times><cn id="S3.T3.12.12.2.m1.1.1.2.cmml" type="integer" xref="S3.T3.12.12.2.m1.1.1.2">2</cn><cn id="S3.T3.12.12.2.m1.1.1.3.cmml" type="integer" xref="S3.T3.12.12.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.12.12.2.m1.1c">2\times 2</annotation><annotation encoding="application/x-llamapun" id="S3.T3.12.12.2.m1.1d">2 × 2</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.14.14.3"><span class="ltx_text" id="S3.T3.14.14.3.1" style="font-size:90%;">Number of Layers</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.13.13.1"><math alttext="2" class="ltx_Math" display="inline" id="S3.T3.13.13.1.m1.1"><semantics id="S3.T3.13.13.1.m1.1a"><mn id="S3.T3.13.13.1.m1.1.1" mathsize="90%" xref="S3.T3.13.13.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T3.13.13.1.m1.1b"><cn id="S3.T3.13.13.1.m1.1.1.cmml" type="integer" xref="S3.T3.13.13.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.13.13.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T3.13.13.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T3.14.14.2"><math alttext="2" class="ltx_Math" display="inline" id="S3.T3.14.14.2.m1.1"><semantics id="S3.T3.14.14.2.m1.1a"><mn id="S3.T3.14.14.2.m1.1.1" mathsize="90%" xref="S3.T3.14.14.2.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T3.14.14.2.m1.1b"><cn id="S3.T3.14.14.2.m1.1.1.cmml" type="integer" xref="S3.T3.14.14.2.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.14.14.2.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T3.14.14.2.m1.1d">2</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.16.16.3"><span class="ltx_text" id="S3.T3.16.16.3.1" style="font-size:90%;">Input Dimension</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.15.15.1"><math alttext="4{,}096" class="ltx_Math" display="inline" id="S3.T3.15.15.1.m1.2"><semantics id="S3.T3.15.15.1.m1.2a"><mrow id="S3.T3.15.15.1.m1.2.3.2" xref="S3.T3.15.15.1.m1.2.3.1.cmml"><mn id="S3.T3.15.15.1.m1.1.1" mathsize="90%" xref="S3.T3.15.15.1.m1.1.1.cmml">4</mn><mo id="S3.T3.15.15.1.m1.2.3.2.1" mathsize="90%" xref="S3.T3.15.15.1.m1.2.3.1.cmml">,</mo><mn id="S3.T3.15.15.1.m1.2.2" mathsize="90%" xref="S3.T3.15.15.1.m1.2.2.cmml">096</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.15.15.1.m1.2b"><list id="S3.T3.15.15.1.m1.2.3.1.cmml" xref="S3.T3.15.15.1.m1.2.3.2"><cn id="S3.T3.15.15.1.m1.1.1.cmml" type="integer" xref="S3.T3.15.15.1.m1.1.1">4</cn><cn id="S3.T3.15.15.1.m1.2.2.cmml" type="integer" xref="S3.T3.15.15.1.m1.2.2">096</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.15.15.1.m1.2c">4{,}096</annotation><annotation encoding="application/x-llamapun" id="S3.T3.15.15.1.m1.2d">4 , 096</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T3.16.16.2"><math alttext="4{,}096" class="ltx_Math" display="inline" id="S3.T3.16.16.2.m1.2"><semantics id="S3.T3.16.16.2.m1.2a"><mrow id="S3.T3.16.16.2.m1.2.3.2" xref="S3.T3.16.16.2.m1.2.3.1.cmml"><mn id="S3.T3.16.16.2.m1.1.1" mathsize="90%" xref="S3.T3.16.16.2.m1.1.1.cmml">4</mn><mo id="S3.T3.16.16.2.m1.2.3.2.1" mathsize="90%" xref="S3.T3.16.16.2.m1.2.3.1.cmml">,</mo><mn id="S3.T3.16.16.2.m1.2.2" mathsize="90%" xref="S3.T3.16.16.2.m1.2.2.cmml">096</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.16.16.2.m1.2b"><list id="S3.T3.16.16.2.m1.2.3.1.cmml" xref="S3.T3.16.16.2.m1.2.3.2"><cn id="S3.T3.16.16.2.m1.1.1.cmml" type="integer" xref="S3.T3.16.16.2.m1.1.1">4</cn><cn id="S3.T3.16.16.2.m1.2.2.cmml" type="integer" xref="S3.T3.16.16.2.m1.2.2">096</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.16.16.2.m1.2c">4{,}096</annotation><annotation encoding="application/x-llamapun" id="S3.T3.16.16.2.m1.2d">4 , 096</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.18.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.18.18.3"><span class="ltx_text" id="S3.T3.18.18.3.1" style="font-size:90%;">Hidden Dimension</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.17.1"><math alttext="21{,}504" class="ltx_Math" display="inline" id="S3.T3.17.17.1.m1.2"><semantics id="S3.T3.17.17.1.m1.2a"><mrow id="S3.T3.17.17.1.m1.2.3.2" xref="S3.T3.17.17.1.m1.2.3.1.cmml"><mn id="S3.T3.17.17.1.m1.1.1" mathsize="90%" xref="S3.T3.17.17.1.m1.1.1.cmml">21</mn><mo id="S3.T3.17.17.1.m1.2.3.2.1" mathsize="90%" xref="S3.T3.17.17.1.m1.2.3.1.cmml">,</mo><mn id="S3.T3.17.17.1.m1.2.2" mathsize="90%" xref="S3.T3.17.17.1.m1.2.2.cmml">504</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.17.17.1.m1.2b"><list id="S3.T3.17.17.1.m1.2.3.1.cmml" xref="S3.T3.17.17.1.m1.2.3.2"><cn id="S3.T3.17.17.1.m1.1.1.cmml" type="integer" xref="S3.T3.17.17.1.m1.1.1">21</cn><cn id="S3.T3.17.17.1.m1.2.2.cmml" type="integer" xref="S3.T3.17.17.1.m1.2.2">504</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.17.17.1.m1.2c">21{,}504</annotation><annotation encoding="application/x-llamapun" id="S3.T3.17.17.1.m1.2d">21 , 504</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T3.18.18.2"><math alttext="32{,}768" class="ltx_Math" display="inline" id="S3.T3.18.18.2.m1.2"><semantics id="S3.T3.18.18.2.m1.2a"><mrow id="S3.T3.18.18.2.m1.2.3.2" xref="S3.T3.18.18.2.m1.2.3.1.cmml"><mn id="S3.T3.18.18.2.m1.1.1" mathsize="90%" xref="S3.T3.18.18.2.m1.1.1.cmml">32</mn><mo id="S3.T3.18.18.2.m1.2.3.2.1" mathsize="90%" xref="S3.T3.18.18.2.m1.2.3.1.cmml">,</mo><mn id="S3.T3.18.18.2.m1.2.2" mathsize="90%" xref="S3.T3.18.18.2.m1.2.2.cmml">768</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.18.18.2.m1.2b"><list id="S3.T3.18.18.2.m1.2.3.1.cmml" xref="S3.T3.18.18.2.m1.2.3.2"><cn id="S3.T3.18.18.2.m1.1.1.cmml" type="integer" xref="S3.T3.18.18.2.m1.1.1">32</cn><cn id="S3.T3.18.18.2.m1.2.2.cmml" type="integer" xref="S3.T3.18.18.2.m1.2.2">768</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.18.18.2.m1.2c">32{,}768</annotation><annotation encoding="application/x-llamapun" id="S3.T3.18.18.2.m1.2d">32 , 768</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.20.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.20.20.3"><span class="ltx_text" id="S3.T3.20.20.3.1" style="font-size:90%;">Output Dimension</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.19.19.1"><math alttext="4{,}096" class="ltx_Math" display="inline" id="S3.T3.19.19.1.m1.2"><semantics id="S3.T3.19.19.1.m1.2a"><mrow id="S3.T3.19.19.1.m1.2.3.2" xref="S3.T3.19.19.1.m1.2.3.1.cmml"><mn id="S3.T3.19.19.1.m1.1.1" mathsize="90%" xref="S3.T3.19.19.1.m1.1.1.cmml">4</mn><mo id="S3.T3.19.19.1.m1.2.3.2.1" mathsize="90%" xref="S3.T3.19.19.1.m1.2.3.1.cmml">,</mo><mn id="S3.T3.19.19.1.m1.2.2" mathsize="90%" xref="S3.T3.19.19.1.m1.2.2.cmml">096</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.19.19.1.m1.2b"><list id="S3.T3.19.19.1.m1.2.3.1.cmml" xref="S3.T3.19.19.1.m1.2.3.2"><cn id="S3.T3.19.19.1.m1.1.1.cmml" type="integer" xref="S3.T3.19.19.1.m1.1.1">4</cn><cn id="S3.T3.19.19.1.m1.2.2.cmml" type="integer" xref="S3.T3.19.19.1.m1.2.2">096</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.19.19.1.m1.2c">4{,}096</annotation><annotation encoding="application/x-llamapun" id="S3.T3.19.19.1.m1.2d">4 , 096</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T3.20.20.2"><math alttext="8{,}192" class="ltx_Math" display="inline" id="S3.T3.20.20.2.m1.2"><semantics id="S3.T3.20.20.2.m1.2a"><mrow id="S3.T3.20.20.2.m1.2.3.2" xref="S3.T3.20.20.2.m1.2.3.1.cmml"><mn id="S3.T3.20.20.2.m1.1.1" mathsize="90%" xref="S3.T3.20.20.2.m1.1.1.cmml">8</mn><mo id="S3.T3.20.20.2.m1.2.3.2.1" mathsize="90%" xref="S3.T3.20.20.2.m1.2.3.1.cmml">,</mo><mn id="S3.T3.20.20.2.m1.2.2" mathsize="90%" xref="S3.T3.20.20.2.m1.2.2.cmml">192</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.20.20.2.m1.2b"><list id="S3.T3.20.20.2.m1.2.3.1.cmml" xref="S3.T3.20.20.2.m1.2.3.2"><cn id="S3.T3.20.20.2.m1.1.1.cmml" type="integer" xref="S3.T3.20.20.2.m1.1.1">8</cn><cn id="S3.T3.20.20.2.m1.2.2.cmml" type="integer" xref="S3.T3.20.20.2.m1.2.2">192</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.20.20.2.m1.2c">8{,}192</annotation><annotation encoding="application/x-llamapun" id="S3.T3.20.20.2.m1.2d">8 , 192</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.28.33">
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T3.28.33.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T3.28.33.2"><span class="ltx_text" id="S3.T3.28.33.2.1" style="font-size:90%;">LLM Backbone</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.28.34">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.28.34.1"><span class="ltx_text" id="S3.T3.28.34.1.1" style="font-size:90%;">Architecture</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.28.34.2"><span class="ltx_text" id="S3.T3.28.34.2.1" style="font-size:90%;">Mamba-MLP-Transformer</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.28.34.3"><span class="ltx_text" id="S3.T3.28.34.3.1" style="font-size:90%;">Mamba-MLP-Transformer</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.22.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.22.22.3"><span class="ltx_text" id="S3.T3.22.22.3.1" style="font-size:90%;">Number of Layers</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.21.21.1"><math alttext="52" class="ltx_Math" display="inline" id="S3.T3.21.21.1.m1.1"><semantics id="S3.T3.21.21.1.m1.1a"><mn id="S3.T3.21.21.1.m1.1.1" mathsize="90%" xref="S3.T3.21.21.1.m1.1.1.cmml">52</mn><annotation-xml encoding="MathML-Content" id="S3.T3.21.21.1.m1.1b"><cn id="S3.T3.21.21.1.m1.1.1.cmml" type="integer" xref="S3.T3.21.21.1.m1.1.1">52</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.21.21.1.m1.1c">52</annotation><annotation encoding="application/x-llamapun" id="S3.T3.21.21.1.m1.1d">52</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T3.22.22.2"><math alttext="118" class="ltx_Math" display="inline" id="S3.T3.22.22.2.m1.1"><semantics id="S3.T3.22.22.2.m1.1a"><mn id="S3.T3.22.22.2.m1.1.1" mathsize="90%" xref="S3.T3.22.22.2.m1.1.1.cmml">118</mn><annotation-xml encoding="MathML-Content" id="S3.T3.22.22.2.m1.1b"><cn id="S3.T3.22.22.2.m1.1.1.cmml" type="integer" xref="S3.T3.22.22.2.m1.1.1">118</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.22.22.2.m1.1c">118</annotation><annotation encoding="application/x-llamapun" id="S3.T3.22.22.2.m1.1d">118</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.24.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.24.24.3"><span class="ltx_text" id="S3.T3.24.24.3.1" style="font-size:90%;">Model Dimension</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.23.23.1"><math alttext="4{,}096" class="ltx_Math" display="inline" id="S3.T3.23.23.1.m1.2"><semantics id="S3.T3.23.23.1.m1.2a"><mrow id="S3.T3.23.23.1.m1.2.3.2" xref="S3.T3.23.23.1.m1.2.3.1.cmml"><mn id="S3.T3.23.23.1.m1.1.1" mathsize="90%" xref="S3.T3.23.23.1.m1.1.1.cmml">4</mn><mo id="S3.T3.23.23.1.m1.2.3.2.1" mathsize="90%" xref="S3.T3.23.23.1.m1.2.3.1.cmml">,</mo><mn id="S3.T3.23.23.1.m1.2.2" mathsize="90%" xref="S3.T3.23.23.1.m1.2.2.cmml">096</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.23.23.1.m1.2b"><list id="S3.T3.23.23.1.m1.2.3.1.cmml" xref="S3.T3.23.23.1.m1.2.3.2"><cn id="S3.T3.23.23.1.m1.1.1.cmml" type="integer" xref="S3.T3.23.23.1.m1.1.1">4</cn><cn id="S3.T3.23.23.1.m1.2.2.cmml" type="integer" xref="S3.T3.23.23.1.m1.2.2">096</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.23.23.1.m1.2c">4{,}096</annotation><annotation encoding="application/x-llamapun" id="S3.T3.23.23.1.m1.2d">4 , 096</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T3.24.24.2"><math alttext="8{,}192" class="ltx_Math" display="inline" id="S3.T3.24.24.2.m1.2"><semantics id="S3.T3.24.24.2.m1.2a"><mrow id="S3.T3.24.24.2.m1.2.3.2" xref="S3.T3.24.24.2.m1.2.3.1.cmml"><mn id="S3.T3.24.24.2.m1.1.1" mathsize="90%" xref="S3.T3.24.24.2.m1.1.1.cmml">8</mn><mo id="S3.T3.24.24.2.m1.2.3.2.1" mathsize="90%" xref="S3.T3.24.24.2.m1.2.3.1.cmml">,</mo><mn id="S3.T3.24.24.2.m1.2.2" mathsize="90%" xref="S3.T3.24.24.2.m1.2.2.cmml">192</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.24.24.2.m1.2b"><list id="S3.T3.24.24.2.m1.2.3.1.cmml" xref="S3.T3.24.24.2.m1.2.3.2"><cn id="S3.T3.24.24.2.m1.1.1.cmml" type="integer" xref="S3.T3.24.24.2.m1.1.1">8</cn><cn id="S3.T3.24.24.2.m1.2.2.cmml" type="integer" xref="S3.T3.24.24.2.m1.2.2">192</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.24.24.2.m1.2c">8{,}192</annotation><annotation encoding="application/x-llamapun" id="S3.T3.24.24.2.m1.2d">8 , 192</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.26.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.26.26.3"><span class="ltx_text" id="S3.T3.26.26.3.1" style="font-size:90%;">FFN Hidden Dimension</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.25.25.1"><math alttext="21{,}504" class="ltx_Math" display="inline" id="S3.T3.25.25.1.m1.2"><semantics id="S3.T3.25.25.1.m1.2a"><mrow id="S3.T3.25.25.1.m1.2.3.2" xref="S3.T3.25.25.1.m1.2.3.1.cmml"><mn id="S3.T3.25.25.1.m1.1.1" mathsize="90%" xref="S3.T3.25.25.1.m1.1.1.cmml">21</mn><mo id="S3.T3.25.25.1.m1.2.3.2.1" mathsize="90%" xref="S3.T3.25.25.1.m1.2.3.1.cmml">,</mo><mn id="S3.T3.25.25.1.m1.2.2" mathsize="90%" xref="S3.T3.25.25.1.m1.2.2.cmml">504</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.25.25.1.m1.2b"><list id="S3.T3.25.25.1.m1.2.3.1.cmml" xref="S3.T3.25.25.1.m1.2.3.2"><cn id="S3.T3.25.25.1.m1.1.1.cmml" type="integer" xref="S3.T3.25.25.1.m1.1.1">21</cn><cn id="S3.T3.25.25.1.m1.2.2.cmml" type="integer" xref="S3.T3.25.25.1.m1.2.2">504</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.25.25.1.m1.2c">21{,}504</annotation><annotation encoding="application/x-llamapun" id="S3.T3.25.25.1.m1.2d">21 , 504</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T3.26.26.2"><math alttext="32{,}768" class="ltx_Math" display="inline" id="S3.T3.26.26.2.m1.2"><semantics id="S3.T3.26.26.2.m1.2a"><mrow id="S3.T3.26.26.2.m1.2.3.2" xref="S3.T3.26.26.2.m1.2.3.1.cmml"><mn id="S3.T3.26.26.2.m1.1.1" mathsize="90%" xref="S3.T3.26.26.2.m1.1.1.cmml">32</mn><mo id="S3.T3.26.26.2.m1.2.3.2.1" mathsize="90%" xref="S3.T3.26.26.2.m1.2.3.1.cmml">,</mo><mn id="S3.T3.26.26.2.m1.2.2" mathsize="90%" xref="S3.T3.26.26.2.m1.2.2.cmml">768</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.26.26.2.m1.2b"><list id="S3.T3.26.26.2.m1.2.3.1.cmml" xref="S3.T3.26.26.2.m1.2.3.2"><cn id="S3.T3.26.26.2.m1.1.1.cmml" type="integer" xref="S3.T3.26.26.2.m1.1.1">32</cn><cn id="S3.T3.26.26.2.m1.2.2.cmml" type="integer" xref="S3.T3.26.26.2.m1.2.2">768</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.26.26.2.m1.2c">32{,}768</annotation><annotation encoding="application/x-llamapun" id="S3.T3.26.26.2.m1.2d">32 , 768</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.28.28">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T3.28.28.3"><span class="ltx_text" id="S3.T3.28.28.3.1" style="font-size:90%;">Number of Attention Heads</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.27.27.1"><math alttext="32" class="ltx_Math" display="inline" id="S3.T3.27.27.1.m1.1"><semantics id="S3.T3.27.27.1.m1.1a"><mn id="S3.T3.27.27.1.m1.1.1" mathsize="90%" xref="S3.T3.27.27.1.m1.1.1.cmml">32</mn><annotation-xml encoding="MathML-Content" id="S3.T3.27.27.1.m1.1b"><cn id="S3.T3.27.27.1.m1.1.1.cmml" type="integer" xref="S3.T3.27.27.1.m1.1.1">32</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.27.27.1.m1.1c">32</annotation><annotation encoding="application/x-llamapun" id="S3.T3.27.27.1.m1.1d">32</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.28.28.2"><math alttext="64" class="ltx_Math" display="inline" id="S3.T3.28.28.2.m1.1"><semantics id="S3.T3.28.28.2.m1.1a"><mn id="S3.T3.28.28.2.m1.1.1" mathsize="90%" xref="S3.T3.28.28.2.m1.1.1.cmml">64</mn><annotation-xml encoding="MathML-Content" id="S3.T3.28.28.2.m1.1b"><cn id="S3.T3.28.28.2.m1.1.1.cmml" type="integer" xref="S3.T3.28.28.2.m1.1.1">64</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.28.28.2.m1.1c">64</annotation><annotation encoding="application/x-llamapun" id="S3.T3.28.28.2.m1.1d">64</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed comparison of the architectural configurations for the two Cosmos-Reason1 models: Cosmos-Reason1-8B and Cosmos-Reason1-56B.  It breaks down the specifications of each model's vision encoder, projector, and LLM backbone.  Specifically, it lists the architecture type, input and output dimensions, number of layers, hidden dimensions, and other relevant hyperparameters for each component.  This allows for a comprehensive understanding of the differences in model size and complexity between the two variants.
> <details>
> <summary>read the caption</summary>
> Table 3:  Configuration details of Cosmos-Reason1 models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.4.1">
<tr class="ltx_tr" id="S4.T4.4.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T4.4.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T4.4.1.1.2"><span class="ltx_text" id="S4.T4.4.1.1.2.1" style="font-size:90%;">Physical Common Sense VQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S4.T4.4.1.1.3"><span class="ltx_text" id="S4.T4.4.1.1.3.1" style="font-size:90%;">Embodied Reasoning</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T4.4.1.1.4"><span class="ltx_text" id="S4.T4.4.1.1.4.1" style="font-size:90%;">Intuitive Physics</span></td>
<td class="ltx_td ltx_border_tt" id="S4.T4.4.1.1.5"></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.2">
<td class="ltx_td ltx_border_r" id="S4.T4.4.1.2.1"></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.2.2"><span class="ltx_text" id="S4.T4.4.1.2.2.1" style="font-size:90%;">Free-form</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.1.2.3"><span class="ltx_text" id="S4.T4.4.1.2.3.1" style="font-size:90%;">MCQ</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.2.4"><span class="ltx_text" id="S4.T4.4.1.2.4.1" style="font-size:90%;">BridgeData V2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.2.5"><span class="ltx_text" id="S4.T4.4.1.2.5.1" style="font-size:90%;">RoboVQA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.2.6"><span class="ltx_text" id="S4.T4.4.1.2.6.1" style="font-size:90%;">Agibot</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.2.7"><span class="ltx_text" id="S4.T4.4.1.2.7.1" style="font-size:90%;">HoloAssist</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.1.2.8"><span class="ltx_text" id="S4.T4.4.1.2.8.1" style="font-size:90%;">AV</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.2.9"><span class="ltx_text" id="S4.T4.4.1.2.9.1" style="font-size:90%;">Puzzle</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.2.10"><span class="ltx_text" id="S4.T4.4.1.2.10.1" style="font-size:90%;">AoT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.1.2.11"><span class="ltx_text" id="S4.T4.4.1.2.11.1" style="font-size:90%;">Object Permanence</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.2.12"><span class="ltx_text" id="S4.T4.4.1.2.12.1" style="font-size:90%;">Total</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.3">
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T4.4.1.3.1"><span class="ltx_text" id="S4.T4.4.1.3.1.1" style="font-size:90%;">Understanding</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.3.2"><span class="ltx_text" id="S4.T4.4.1.3.2.1" style="font-size:90%;">99K</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.1.3.3"><span class="ltx_text" id="S4.T4.4.1.3.3.1" style="font-size:90%;">1.2M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.3.4"><span class="ltx_text" id="S4.T4.4.1.3.4.1" style="font-size:90%;">129.5K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.3.5"><span class="ltx_text" id="S4.T4.4.1.3.5.1" style="font-size:90%;">221.9K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.3.6"><span class="ltx_text" id="S4.T4.4.1.3.6.1" style="font-size:90%;">19.8K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.3.7"><span class="ltx_text" id="S4.T4.4.1.3.7.1" style="font-size:90%;">136.7K</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.1.3.8"><span class="ltx_text" id="S4.T4.4.1.3.8.1" style="font-size:90%;">12.4K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.3.9"><span class="ltx_text" id="S4.T4.4.1.3.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.3.10"><span class="ltx_text" id="S4.T4.4.1.3.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.1.3.11"><span class="ltx_text" id="S4.T4.4.1.3.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.3.12"><span class="ltx_text" id="S4.T4.4.1.3.12.1" style="font-size:90%;">1.82M</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.4">
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S4.T4.4.1.4.1"><span class="ltx_text" id="S4.T4.4.1.4.1.1" style="font-size:90%;">Reasoning</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.4.2"><span class="ltx_text" id="S4.T4.4.1.4.2.1" style="font-size:90%;">59.4K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.4.1.4.3"><span class="ltx_text" id="S4.T4.4.1.4.3.1" style="font-size:90%;">605K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.4.4"><span class="ltx_text" id="S4.T4.4.1.4.4.1" style="font-size:90%;">129.5K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.4.5"><span class="ltx_text" id="S4.T4.4.1.4.5.1" style="font-size:90%;">930K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.4.6"><span class="ltx_text" id="S4.T4.4.1.4.6.1" style="font-size:90%;">19.8K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.4.7"><span class="ltx_text" id="S4.T4.4.1.4.7.1" style="font-size:90%;">136.7K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.4.1.4.8"><span class="ltx_text" id="S4.T4.4.1.4.8.1" style="font-size:90%;">12.4K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.4.9"><span class="ltx_text" id="S4.T4.4.1.4.9.1" style="font-size:90%;">11K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.4.10"><span class="ltx_text" id="S4.T4.4.1.4.10.1" style="font-size:90%;">30K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.4.1.4.11"><span class="ltx_text" id="S4.T4.4.1.4.11.1" style="font-size:90%;">10k</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.4.12"><span class="ltx_text" id="S4.T4.4.1.4.12.1" style="font-size:90%;">1.94M</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a summary of the datasets used for training the Physical AI Supervised Fine-Tuning stage of the Cosmos-Reason1 model.  It breaks down the data by category (Physical Common Sense VQA, Embodied Reasoning, and Intuitive Physics), indicating the number of samples (free-form and multiple-choice questions) used for both understanding and reasoning annotations.  It also specifies the sources from which data is obtained (e.g. BridgeData V2, RoboVQA, etc.). This detailed breakdown helps understand the composition and scale of data used in training the model to reason about Physical AI.
> <details>
> <summary>read the caption</summary>
> Table 4: A summary of datasets used for physical AI supervised fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.4.1">
<tr class="ltx_tr" id="S4.T5.4.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T5.4.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T5.4.1.1.2"><span class="ltx_text" id="S4.T5.4.1.1.2.1" style="font-size:90%;">Common Sense</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S4.T5.4.1.1.3"><span class="ltx_text" id="S4.T5.4.1.1.3.1" style="font-size:90%;">Embodied Reasoning</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T5.4.1.1.4"><span class="ltx_text" id="S4.T5.4.1.1.4.1" style="font-size:90%;">Intuitive Physics</span></td>
<td class="ltx_td ltx_border_tt" id="S4.T5.4.1.1.5"></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.2">
<td class="ltx_td ltx_border_r" id="S4.T5.4.1.2.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.1.2.2"><span class="ltx_text" id="S4.T5.4.1.2.2.1" style="font-size:90%;">MCQ</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.2.3"><span class="ltx_text" id="S4.T5.4.1.2.3.1" style="font-size:90%;">BridgeData V2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.2.4"><span class="ltx_text" id="S4.T5.4.1.2.4.1" style="font-size:90%;">RoboVQA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.2.5"><span class="ltx_text" id="S4.T5.4.1.2.5.1" style="font-size:90%;">Agibot</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.2.6"><span class="ltx_text" id="S4.T5.4.1.2.6.1" style="font-size:90%;">HoloAssist</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.1.2.7"><span class="ltx_text" id="S4.T5.4.1.2.7.1" style="font-size:90%;">AV</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.2.8"><span class="ltx_text" id="S4.T5.4.1.2.8.1" style="font-size:90%;">Puzzle</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.2.9"><span class="ltx_text" id="S4.T5.4.1.2.9.1" style="font-size:90%;">AoT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.1.2.10"><span class="ltx_text" id="S4.T5.4.1.2.10.1" style="font-size:90%;">Object Permanence</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.2.11"><span class="ltx_text" id="S4.T5.4.1.2.11.1" style="font-size:90%;">Total</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.3">
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r ltx_border_t" id="S4.T5.4.1.3.1"><span class="ltx_text" id="S4.T5.4.1.3.1.1" style="font-size:90%;">Reasoning</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T5.4.1.3.2"><span class="ltx_text" id="S4.T5.4.1.3.2.1" style="font-size:90%;">5,133</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.4.1.3.3"><span class="ltx_text" id="S4.T5.4.1.3.3.1" style="font-size:90%;">240</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.4.1.3.4"><span class="ltx_text" id="S4.T5.4.1.3.4.1" style="font-size:90%;">250</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.4.1.3.5"><span class="ltx_text" id="S4.T5.4.1.3.5.1" style="font-size:90%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.4.1.3.6"><span class="ltx_text" id="S4.T5.4.1.3.6.1" style="font-size:90%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T5.4.1.3.7"><span class="ltx_text" id="S4.T5.4.1.3.7.1" style="font-size:90%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.4.1.3.8"><span class="ltx_text" id="S4.T5.4.1.3.8.1" style="font-size:90%;">3,998</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.4.1.3.9"><span class="ltx_text" id="S4.T5.4.1.3.9.1" style="font-size:90%;">9,994</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T5.4.1.3.10"><span class="ltx_text" id="S4.T5.4.1.3.10.1" style="font-size:90%;">10,087</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.4.1.3.11"><span class="ltx_text" id="S4.T5.4.1.3.11.1" style="font-size:90%;">30,302</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the datasets used for the Physical AI Reinforcement Learning phase of the Cosmos-Reason1 model training.  It breaks down the number of samples used for training in several categories: Physical Common Sense (MCQs and free-form questions), Embodied Reasoning (data from various sources like BridgeData V2, RoboVQA, etc.), and Intuitive Physics (data for spatial puzzles, arrow-of-time, and object permanence). The numbers represent the count of samples prepared for reinforcement learning in each category. This data is crucial in understanding the composition of the training data for this stage of model development, showing how different types of physical reasoning tasks were weighted.
> <details>
> <summary>read the caption</summary>
> Table 5:  Datasets for Physical AI reinforcement learning post-training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T6.4.1">
<tr class="ltx_tr" id="S5.T6.4.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T6.4.1.1.1"><span class="ltx_text" id="S5.T6.4.1.1.1.1" style="font-size:90%;">Common Sense</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="6" id="S5.T6.4.1.1.2"><span class="ltx_text" id="S5.T6.4.1.1.2.1" style="font-size:90%;">Embodied Reasoning</span></td>
<td class="ltx_td ltx_border_tt" id="S5.T6.4.1.1.3"></td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.1.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.4.1.2.1"><span class="ltx_text" id="S5.T6.4.1.2.1.1" style="font-size:90%;">MCQ</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.2.2"><span class="ltx_text" id="S5.T6.4.1.2.2.1" style="font-size:90%;">BridgeData V2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.2.3"><span class="ltx_text" id="S5.T6.4.1.2.3.1" style="font-size:90%;">RoboVQA</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.2.4"><span class="ltx_text" id="S5.T6.4.1.2.4.1" style="font-size:90%;">RoboFail</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.2.5"><span class="ltx_text" id="S5.T6.4.1.2.5.1" style="font-size:90%;">Agibot</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.2.6"><span class="ltx_text" id="S5.T6.4.1.2.6.1" style="font-size:90%;">HoloAssist</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.4.1.2.7"><span class="ltx_text" id="S5.T6.4.1.2.7.1" style="font-size:90%;">AV</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.2.8"><span class="ltx_text" id="S5.T6.4.1.2.8.1" style="font-size:90%;">Total</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.1.3">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T6.4.1.3.1"><span class="ltx_text" id="S5.T6.4.1.3.1.1" style="font-size:90%;">604</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.4.1.3.2"><span class="ltx_text" id="S5.T6.4.1.3.2.1" style="font-size:90%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.4.1.3.3"><span class="ltx_text" id="S5.T6.4.1.3.3.1" style="font-size:90%;">110</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.4.1.3.4"><span class="ltx_text" id="S5.T6.4.1.3.4.1" style="font-size:90%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.4.1.3.5"><span class="ltx_text" id="S5.T6.4.1.3.5.1" style="font-size:90%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.4.1.3.6"><span class="ltx_text" id="S5.T6.4.1.3.6.1" style="font-size:90%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T6.4.1.3.7"><span class="ltx_text" id="S5.T6.4.1.3.7.1" style="font-size:90%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.4.1.3.8"><span class="ltx_text" id="S5.T6.4.1.3.8.1" style="font-size:90%;">1214</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a statistical overview of the benchmarks used in the paper to evaluate the performance of the Cosmos-Reason1 models.  It breaks down the number of questions and videos included in both the physical common sense and embodied reasoning benchmark sets. For common sense, it shows the distribution of questions across Space, Time, and Fundamental Physics categories. The embodied reasoning section details the number of questions and videos across various datasets and agent types (robot arms, autonomous vehicles, etc.).
> <details>
> <summary>read the caption</summary>
> Table 6:  Statistics of our curated benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T7.4">
<tr class="ltx_tr" id="S6.T7.4.1">
<td class="ltx_td ltx_align_right ltx_border_tt" id="S6.T7.4.1.1"><span class="ltx_text" id="S6.T7.4.1.1.1" style="font-size:90%;">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T7.4.1.2"><span class="ltx_text" id="S6.T7.4.1.2.1" style="font-size:90%;">Space</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T7.4.1.3"><span class="ltx_text" id="S6.T7.4.1.3.1" style="font-size:90%;">Time</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T7.4.1.4"><span class="ltx_text" id="S6.T7.4.1.4.1" style="font-size:90%;">Other Physics</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T7.4.1.5"><span class="ltx_text" id="S6.T7.4.1.5.1" style="font-size:90%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.2">
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T7.4.2.1"><span class="ltx_text" id="S6.T7.4.2.1.1" style="font-size:90%;">Qwen2.5-VL-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.2.2"><span class="ltx_text" id="S6.T7.4.2.2.1" style="font-size:90%;">48.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.2.3"><span class="ltx_text" id="S6.T7.4.2.3.1" style="font-size:90%;">56.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.2.4"><span class="ltx_text" id="S6.T7.4.2.4.1" style="font-size:90%;">37.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.2.5"><span class="ltx_text" id="S6.T7.4.2.5.1" style="font-size:90%;">47.4</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.3">
<td class="ltx_td ltx_align_right" id="S6.T7.4.3.1"><span class="ltx_text" id="S6.T7.4.3.1.1" style="font-size:90%;">Qwen2.5-VL-72B</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.3.2"><span class="ltx_text" id="S6.T7.4.3.2.1" style="font-size:90%;">53.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.3.3"><span class="ltx_text" id="S6.T7.4.3.3.1" style="font-size:90%;">59.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.3.4"><span class="ltx_text" id="S6.T7.4.3.4.1" style="font-size:90%;">51.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.3.5"><span class="ltx_text" id="S6.T7.4.3.5.1" style="font-size:90%;">54.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.4">
<td class="ltx_td ltx_align_right" id="S6.T7.4.4.1"><span class="ltx_text" id="S6.T7.4.4.1.1" style="font-size:90%;">Gemini 2.0 Flash</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.4.2"><span class="ltx_text" id="S6.T7.4.4.2.1" style="font-size:90%;">53.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.4.3"><span class="ltx_text" id="S6.T7.4.4.3.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.4.4"><span class="ltx_text" id="S6.T7.4.4.4.1" style="font-size:90%;">46.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.4.5"><span class="ltx_text" id="S6.T7.4.4.5.1" style="font-size:90%;">50.2</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.5">
<td class="ltx_td ltx_align_right" id="S6.T7.4.5.1"><span class="ltx_text" id="S6.T7.4.5.1.1" style="font-size:90%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.5.2"><span class="ltx_text" id="S6.T7.4.5.2.1" style="font-size:90%;">61.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.5.3"><span class="ltx_text" id="S6.T7.4.5.3.1" style="font-size:90%;">54.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.5.4"><span class="ltx_text" id="S6.T7.4.5.4.1" style="font-size:90%;">50.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.5.5"><span class="ltx_text" id="S6.T7.4.5.5.1" style="font-size:90%;">55.6</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.6">
<td class="ltx_td ltx_align_right" id="S6.T7.4.6.1"><span class="ltx_text" id="S6.T7.4.6.1.1" style="font-size:90%;">OpenAI o1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.6.2"><span class="ltx_text" id="S6.T7.4.6.2.1" style="font-size:90%;">63.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.6.3"><span class="ltx_text" id="S6.T7.4.6.3.1" style="font-size:90%;">58.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.6.4"><span class="ltx_text" id="S6.T7.4.6.4.1" style="font-size:90%;">58.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.6.5"><span class="ltx_text" id="S6.T7.4.6.5.1" style="font-size:90%;">59.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.7">
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T7.4.7.1"><span class="ltx_text" id="S6.T7.4.7.1.1" style="font-size:90%;">8B pre-trained backbone</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.7.2"><span class="ltx_text" id="S6.T7.4.7.2.1" style="font-size:90%;">40.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.7.3"><span class="ltx_text" id="S6.T7.4.7.3.1" style="font-size:90%;">54.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.7.4"><span class="ltx_text" id="S6.T7.4.7.4.1" style="font-size:90%;">42.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.7.5"><span class="ltx_text" id="S6.T7.4.7.5.1" style="font-size:90%;">45.4</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.8">
<td class="ltx_td ltx_align_right" id="S6.T7.4.8.1"><span class="ltx_text" id="S6.T7.4.8.1.1" style="font-size:90%;">56B pre-trained backbone</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.8.2"><span class="ltx_text" id="S6.T7.4.8.2.1" style="font-size:90%;">61.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.8.3"><span class="ltx_text" id="S6.T7.4.8.3.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.8.4"><span class="ltx_text" id="S6.T7.4.8.4.1" style="font-size:90%;">45.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.8.5"><span class="ltx_text" id="S6.T7.4.8.5.1" style="font-size:90%;">58.2</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.9">
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T7.4.9.1"><span class="ltx_text" id="S6.T7.4.9.1.1" style="font-size:90%;">Cosmos-Reason1-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.9.2"><span class="ltx_text" id="S6.T7.4.9.2.1" style="font-size:90%;">55.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.9.3"><span class="ltx_text" id="S6.T7.4.9.3.1" style="font-size:90%;">57.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.9.4"><span class="ltx_text" id="S6.T7.4.9.4.1" style="font-size:90%;">44.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.9.5">
<span class="ltx_text" id="S6.T7.4.9.5.1" style="font-size:90%;">52.3 </span><span class="ltx_text" id="S6.T7.4.9.5.2" style="font-size:90%;color:#228B22;">(+6.9)</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.10">
<td class="ltx_td ltx_align_right ltx_border_bb" id="S6.T7.4.10.1"><span class="ltx_text" id="S6.T7.4.10.1.1" style="font-size:90%;">Cosmos-Reason1-56B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T7.4.10.2"><span class="ltx_text" id="S6.T7.4.10.2.1" style="font-size:90%;">61.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T7.4.10.3"><span class="ltx_text" id="S6.T7.4.10.3.1" style="font-size:90%;">65.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T7.4.10.4"><span class="ltx_text" id="S6.T7.4.10.4.1" style="font-size:90%;">53.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T7.4.10.5">
<span class="ltx_text" id="S6.T7.4.10.5.1" style="font-size:90%;">60.2 </span><span class="ltx_text" id="S6.T7.4.10.5.2" style="font-size:90%;color:#228B22;">(+2.0)</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating various models on a physical common sense benchmark.  It compares the performance of Cosmos-Reason1-8B and Cosmos-Reason1-56B to several other leading language models (OpenAI 01, Qwen2.5-VL-7B, Qwen2.5-VL-72B, and Gemini 2.0 Flash) across three sub-benchmarks focusing on different aspects of physical common sense: Space, Time, and Fundamental Physics. The table shows the accuracy of each model on each sub-benchmark, demonstrating the effectiveness of the Cosmos-Reason1 models, particularly the 56B variant, in this domain.
> <details>
> <summary>read the caption</summary>
> Table 7:  Evaluation on physical common sense benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T8.4">
<tr class="ltx_tr" id="S6.T8.4.1">
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S6.T8.4.1.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T8.4.1.1.1">
<span class="ltx_p" id="S6.T8.4.1.1.1.1"><span class="ltx_text" id="S6.T8.4.1.1.1.1.1" style="font-size:90%;">Models</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T8.4.1.2"><span class="ltx_text" id="S6.T8.4.1.2.1" style="font-size:90%;">BridgeData V2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T8.4.1.3"><span class="ltx_text" id="S6.T8.4.1.3.1" style="font-size:90%;">RoboVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T8.4.1.4"><span class="ltx_text" id="S6.T8.4.1.4.1" style="font-size:90%;">Agibot</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T8.4.1.5"><span class="ltx_text" id="S6.T8.4.1.5.1" style="font-size:90%;">HoloAssist</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T8.4.1.6"><span class="ltx_text" id="S6.T8.4.1.6.1" style="font-size:90%;">AV</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T8.4.1.7"><span class="ltx_text" id="S6.T8.4.1.7.1" style="font-size:90%;">RoboFail</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T8.4.1.8"><span class="ltx_text" id="S6.T8.4.1.8.1" style="font-size:90%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.2">
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T8.4.2.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T8.4.2.1.1">
<span class="ltx_p" id="S6.T8.4.2.1.1.1"><span class="ltx_text" id="S6.T8.4.2.1.1.1.1" style="font-size:90%;">Qwen2.5-VL-7B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.2.2"><span class="ltx_text" id="S6.T8.4.2.2.1" style="font-size:90%;">34.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.2.3"><span class="ltx_text" id="S6.T8.4.2.3.1" style="font-size:90%;">85.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.2.4"><span class="ltx_text" id="S6.T8.4.2.4.1" style="font-size:90%;">44.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.2.5"><span class="ltx_text" id="S6.T8.4.2.5.1" style="font-size:90%;">43.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.2.6"><span class="ltx_text" id="S6.T8.4.2.6.1" style="font-size:90%;">39.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.2.7"><span class="ltx_text" id="S6.T8.4.2.7.1" style="font-size:90%;">63.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.2.8"><span class="ltx_text" id="S6.T8.4.2.8.1" style="font-size:90%;">51.4</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.3">
<td class="ltx_td ltx_align_justify" id="S6.T8.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T8.4.3.1.1">
<span class="ltx_p" id="S6.T8.4.3.1.1.1"><span class="ltx_text" id="S6.T8.4.3.1.1.1.1" style="font-size:90%;">Qwen2.5-VL-72B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.3.2"><span class="ltx_text" id="S6.T8.4.3.2.1" style="font-size:90%;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.3.3"><span class="ltx_text" id="S6.T8.4.3.3.1" style="font-size:90%;">91.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.3.4"><span class="ltx_text" id="S6.T8.4.3.4.1" style="font-size:90%;">47.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.3.5"><span class="ltx_text" id="S6.T8.4.3.5.1" style="font-size:90%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.3.6"><span class="ltx_text" id="S6.T8.4.3.6.1" style="font-size:90%;">33.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.3.7"><span class="ltx_text" id="S6.T8.4.3.7.1" style="font-size:90%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.3.8"><span class="ltx_text" id="S6.T8.4.3.8.1" style="font-size:90%;">55.8</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.4">
<td class="ltx_td ltx_align_justify" id="S6.T8.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T8.4.4.1.1">
<span class="ltx_p" id="S6.T8.4.4.1.1.1"><span class="ltx_text" id="S6.T8.4.4.1.1.1.1" style="font-size:90%;">Gemini 2.0 Flash</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.4.2"><span class="ltx_text" id="S6.T8.4.4.2.1" style="font-size:90%;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.4.3"><span class="ltx_text" id="S6.T8.4.4.3.1" style="font-size:90%;">78.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.4.4"><span class="ltx_text" id="S6.T8.4.4.4.1" style="font-size:90%;">29.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.4.5"><span class="ltx_text" id="S6.T8.4.4.5.1" style="font-size:90%;">44.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.4.6"><span class="ltx_text" id="S6.T8.4.4.6.1" style="font-size:90%;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.4.7"><span class="ltx_text" id="S6.T8.4.4.7.1" style="font-size:90%;">67.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.4.8"><span class="ltx_text" id="S6.T8.4.4.8.1" style="font-size:90%;">46.7</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.5">
<td class="ltx_td ltx_align_justify" id="S6.T8.4.5.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T8.4.5.1.1">
<span class="ltx_p" id="S6.T8.4.5.1.1.1"><span class="ltx_text" id="S6.T8.4.5.1.1.1.1" style="font-size:90%;">GPT-4o</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.5.2"><span class="ltx_text" id="S6.T8.4.5.2.1" style="font-size:90%;">42.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.5.3"><span class="ltx_text" id="S6.T8.4.5.3.1" style="font-size:90%;">71.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.5.4"><span class="ltx_text" id="S6.T8.4.5.4.1" style="font-size:90%;">32.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.5.5"><span class="ltx_text" id="S6.T8.4.5.5.1" style="font-size:90%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.5.6"><span class="ltx_text" id="S6.T8.4.5.6.1" style="font-size:90%;">46.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.5.7"><span class="ltx_text" id="S6.T8.4.5.7.1" style="font-size:90%;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.5.8"><span class="ltx_text" id="S6.T8.4.5.8.1" style="font-size:90%;">53.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.6">
<td class="ltx_td ltx_align_justify" id="S6.T8.4.6.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T8.4.6.1.1">
<span class="ltx_p" id="S6.T8.4.6.1.1.1"><span class="ltx_text" id="S6.T8.4.6.1.1.1.1" style="font-size:90%;">OpenAI o1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.6.2"><span class="ltx_text" id="S6.T8.4.6.2.1" style="font-size:90%;">42.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.6.3"><span class="ltx_text" id="S6.T8.4.6.3.1" style="font-size:90%;">80.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.6.4"><span class="ltx_text" id="S6.T8.4.6.4.1" style="font-size:90%;">44.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.6.5"><span class="ltx_text" id="S6.T8.4.6.5.1" style="font-size:90%;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.6.6"><span class="ltx_text" id="S6.T8.4.6.6.1" style="font-size:90%;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.6.7"><span class="ltx_text" id="S6.T8.4.6.7.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.6.8"><span class="ltx_text" id="S6.T8.4.6.8.1" style="font-size:90%;">54.5</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.7">
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T8.4.7.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T8.4.7.1.1">
<span class="ltx_p" id="S6.T8.4.7.1.1.1"><span class="ltx_text" id="S6.T8.4.7.1.1.1.1" style="font-size:90%;">8B pre-trained backbone</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.7.2"><span class="ltx_text" id="S6.T8.4.7.2.1" style="font-size:90%;">32.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.7.3"><span class="ltx_text" id="S6.T8.4.7.3.1" style="font-size:90%;">71.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.7.4"><span class="ltx_text" id="S6.T8.4.7.4.1" style="font-size:90%;">33.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.7.5"><span class="ltx_text" id="S6.T8.4.7.5.1" style="font-size:90%;">47.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.7.6"><span class="ltx_text" id="S6.T8.4.7.6.1" style="font-size:90%;">38.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.7.7"><span class="ltx_text" id="S6.T8.4.7.7.1" style="font-size:90%;">62.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.7.8"><span class="ltx_text" id="S6.T8.4.7.8.1" style="font-size:90%;">47.2</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.8">
<td class="ltx_td ltx_align_justify" id="S6.T8.4.8.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T8.4.8.1.1">
<span class="ltx_p" id="S6.T8.4.8.1.1.1"><span class="ltx_text" id="S6.T8.4.8.1.1.1.1" style="font-size:90%;">56B pre-trained backbone</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.8.2"><span class="ltx_text" id="S6.T8.4.8.2.1" style="font-size:90%;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.8.3"><span class="ltx_text" id="S6.T8.4.8.3.1" style="font-size:90%;">77.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.8.4"><span class="ltx_text" id="S6.T8.4.8.4.1" style="font-size:90%;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.8.5"><span class="ltx_text" id="S6.T8.4.8.5.1" style="font-size:90%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.8.6"><span class="ltx_text" id="S6.T8.4.8.6.1" style="font-size:90%;">41.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.8.7"><span class="ltx_text" id="S6.T8.4.8.7.1" style="font-size:90%;">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.8.8"><span class="ltx_text" id="S6.T8.4.8.8.1" style="font-size:90%;">53.5</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.9">
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T8.4.9.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T8.4.9.1.1">
<span class="ltx_p" id="S6.T8.4.9.1.1.1"><span class="ltx_text" id="S6.T8.4.9.1.1.1.1" style="font-size:90%;">Cosmos-Reason1-8B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.9.2"><span class="ltx_text" id="S6.T8.4.9.2.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.9.3"><span class="ltx_text" id="S6.T8.4.9.3.1" style="font-size:90%;">84.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.9.4"><span class="ltx_text" id="S6.T8.4.9.4.1" style="font-size:90%;">43.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.9.5"><span class="ltx_text" id="S6.T8.4.9.5.1" style="font-size:90%;">57.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.9.6"><span class="ltx_text" id="S6.T8.4.9.6.1" style="font-size:90%;">62.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.9.7"><span class="ltx_text" id="S6.T8.4.9.7.1" style="font-size:90%;">62.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.4.9.8">
<span class="ltx_text" id="S6.T8.4.9.8.1" style="font-size:90%;">60.0 </span><span class="ltx_text" id="S6.T8.4.9.8.2" style="font-size:90%;color:#228B22;">(+12.8)</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.10">
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S6.T8.4.10.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T8.4.10.1.1">
<span class="ltx_p" id="S6.T8.4.10.1.1.1"><span class="ltx_text" id="S6.T8.4.10.1.1.1.1" style="font-size:90%;">Cosmos-Reason1-56B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T8.4.10.2"><span class="ltx_text" id="S6.T8.4.10.2.1" style="font-size:90%;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T8.4.10.3"><span class="ltx_text" id="S6.T8.4.10.3.1" style="font-size:90%;">80.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T8.4.10.4"><span class="ltx_text" id="S6.T8.4.10.4.1" style="font-size:90%;">47.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T8.4.10.5"><span class="ltx_text" id="S6.T8.4.10.5.1" style="font-size:90%;">57.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T8.4.10.6"><span class="ltx_text" id="S6.T8.4.10.6.1" style="font-size:90%;">65.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T8.4.10.7"><span class="ltx_text" id="S6.T8.4.10.7.1" style="font-size:90%;">66.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T8.4.10.8">
<span class="ltx_text" id="S6.T8.4.10.8.1" style="font-size:90%;">63.7 </span><span class="ltx_text" id="S6.T8.4.10.8.2" style="font-size:90%;color:#228B22;">(+10.2)</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of different models on an embodied reasoning benchmark.  The benchmark evaluates models' ability to perform tasks requiring physical reasoning across different agent types (humans, robot arms, humanoid robots, autonomous vehicles). Each model's accuracy is reported for six different sub-benchmarks (BridgeData V2, RoboVQA, Agibot, HoloAssist, AV, RoboFail), providing a comprehensive evaluation of their embodied reasoning capabilities. The average accuracy across all six sub-benchmarks is also included for each model.
> <details>
> <summary>read the caption</summary>
> Table 8:  Evaluation on embodied reasoning benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T9.4">
<tr class="ltx_tr" id="S6.T9.4.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T9.4.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.1.1.1" style="font-size:90%;">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T9.4.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.1.2.1" style="font-size:90%;">Common Sense</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T9.4.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.1.3.1" style="font-size:90%;">BridgeData V2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T9.4.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.1.4.1" style="font-size:90%;">RoboVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T9.4.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.1.5.1" style="font-size:90%;">Agibot</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T9.4.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.1.6.1" style="font-size:90%;">HoloAssist</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T9.4.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.1.7.1" style="font-size:90%;">AV</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T9.4.1.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.1.8.1" style="font-size:90%;">RoboFail</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T9.4.1.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.1.9.1" style="font-size:90%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S6.T9.4.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T9.4.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.2.1.1" style="font-size:90%;">Cosmos-Reason1-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T9.4.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.2.2.1" style="font-size:90%;">52.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T9.4.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.2.3.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T9.4.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.2.4.1" style="font-size:90%;">84.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T9.4.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.2.5.1" style="font-size:90%;">43.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T9.4.2.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.2.6.1" style="font-size:90%;">57.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T9.4.2.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.2.7.1" style="font-size:90%;">62.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T9.4.2.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.2.8.1" style="font-size:90%;">62.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T9.4.2.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.2.9.1" style="font-size:90%;">58.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T9.4.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T9.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.4.3.1.1" style="font-size:90%;">+ Physical AI RL</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T9.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.3.2.1" style="font-size:90%;">55.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T9.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.3.3.1" style="font-size:90%;">66.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T9.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.3.4.1" style="font-size:90%;">88.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T9.4.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.3.5.1" style="font-size:90%;">50.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T9.4.3.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.3.6.1" style="font-size:90%;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T9.4.3.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.3.7.1" style="font-size:90%;">76.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T9.4.3.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T9.4.3.8.1" style="font-size:90%;">61.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T9.4.3.9" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S6.T9.4.3.9.1" style="font-size:90%;">67.1 </span><span class="ltx_text" id="S6.T9.4.3.9.2" style="font-size:90%;color:#228B22;">(+8.2)</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the Cosmos-Reason1 models (8B and 56B) and several other models on benchmarks designed to assess physical common sense and embodied reasoning capabilities.  It shows the accuracy of each model on various sub-tasks within those benchmarks, providing a comparison of the performance of Cosmos-Reason1 to other state-of-the-art models.
> <details>
> <summary>read the caption</summary>
> Table 9:  Evaluation on physical common sense and embodied reasoning benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T10.4">
<tr class="ltx_tr" id="S6.T10.4.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T10.4.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.1.1.1" style="font-size:90%;">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T10.4.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.1.2.1" style="font-size:90%;">Arrow of Time</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T10.4.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.1.3.1" style="font-size:90%;">Spatial Puzzle</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T10.4.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.1.4.1" style="font-size:90%;">Object Permanence</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T10.4.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.1.5.1" style="font-size:90%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S6.T10.4.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T10.4.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.2.1.1" style="font-size:90%;">Random Guess</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T10.4.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.2.2.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T10.4.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.2.3.1" style="font-size:90%;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T10.4.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.2.4.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T10.4.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.2.5.1" style="font-size:90%;">41.7</span></td>
</tr>
<tr class="ltx_tr" id="S6.T10.4.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T10.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.3.1.1" style="font-size:90%;">Gemini 2.0 Flash</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T10.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.3.2.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T10.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.3.3.1" style="font-size:90%;">31.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T10.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.3.4.1" style="font-size:90%;">48.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T10.4.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.3.5.1" style="font-size:90%;">43.0</span></td>
</tr>
<tr class="ltx_tr" id="S6.T10.4.4">
<td class="ltx_td ltx_align_left" id="S6.T10.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.4.1.1" style="font-size:90%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center" id="S6.T10.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.4.2.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T10.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.4.3.1" style="font-size:90%;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T10.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.4.4.1" style="font-size:90%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T10.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.4.5.1" style="font-size:90%;">58.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T10.4.5">
<td class="ltx_td ltx_align_left" id="S6.T10.4.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.5.1.1" style="font-size:90%;">OpenAI o1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T10.4.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.5.2.1" style="font-size:90%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T10.4.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.5.3.1" style="font-size:90%;">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T10.4.5.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.5.4.1" style="font-size:90%;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T10.4.5.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.5.5.1" style="font-size:90%;">54.7</span></td>
</tr>
<tr class="ltx_tr" id="S6.T10.4.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T10.4.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.6.1.1" style="font-size:90%;">8B pre-trained backbone</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T10.4.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.6.2.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T10.4.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.6.3.1" style="font-size:90%;">27.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T10.4.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.6.4.1" style="font-size:90%;">49.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T10.4.6.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.6.5.1" style="font-size:90%;">42.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T10.4.7">
<td class="ltx_td ltx_align_left" id="S6.T10.4.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.7.1.1" style="font-size:90%;">Cosmos-Reason1-8B</span></td>
<td class="ltx_td ltx_align_center" id="S6.T10.4.7.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.7.2.1" style="font-size:90%;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T10.4.7.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.7.3.1" style="font-size:90%;">85.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T10.4.7.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.7.4.1" style="font-size:90%;">54.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T10.4.7.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S6.T10.4.7.5.1" style="font-size:90%;">65.7 </span><span class="ltx_text" id="S6.T10.4.7.5.2" style="font-size:90%;color:#228B22;">(+23.4)</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T10.4.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T10.4.8.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T10.4.8.1.1" style="font-size:90%;">+ Physical AI RL</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T10.4.8.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.8.2.1" style="font-size:90%;">56.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T10.4.8.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.8.3.1" style="font-size:90%;">87.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T10.4.8.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T10.4.8.4.1" style="font-size:90%;">62.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T10.4.8.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S6.T10.4.8.5.1" style="font-size:90%;">68.7 </span><span class="ltx_text" id="S6.T10.4.8.5.2" style="font-size:90%;color:#228B22;">(+3.0)</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating various models on three intuitive physics tasks: Arrow of Time, Spatial Puzzles, and Object Permanence.  The evaluation measures each model's ability to reason about the direction of time in a video, solve spatial puzzles by identifying correctly ordered image patches, and reason about object permanence in the context of occlusions.  The table compares the performance of several existing LLMs and VLMs against Cosmos-Reason1, both before and after RL fine-tuning, highlighting the impact of the model's training on these fundamental physical reasoning abilities.
> <details>
> <summary>read the caption</summary>
> Table 10:  Evaluation on intuitive physics benchmark.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.15558/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15558/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}