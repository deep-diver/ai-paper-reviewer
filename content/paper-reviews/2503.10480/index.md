---
title: "World Modeling Makes a Better Planner: Dual Preference Optimization for Embodied Task Planning"
summary: "D2PO: World modeling enhances embodied task planning by jointly optimizing state prediction and action selection, leading to more efficient execution."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Embodied AI", "🏢 Fudan University",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10480 {{< /keyword >}}
{{< keyword icon="writer" >}} Siyin Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10480" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10480" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10480/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Vision-Language Models (LVLMs) face challenges in embodied task planning due to dependency constraints and efficiency issues. Current methods often overlook learning to model the world to enhance planning. They either optimize action selection or leverage world models during inference. This limits their ability to perform in complex situations and they struggle with issues such as dependency constraints. 



The paper introduces Dual Preference Optimization (D2PO), which jointly optimizes state prediction and action selection through preference learning. D2PO allows LVLMs to understand environment dynamics for better planning. It uses a tree search mechanism for exploration via trial-and-error to collect trajectories automatically. Experiments on VoTa-Bench show D2PO outperforms existing methods, achieving superior task success with efficient paths. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Dual Preference Optimization (D2PO) framework jointly optimizes state prediction and action selection through preference learning, enhancing LVLMs' understanding of environment dynamics. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel tree search algorithm automates the collection of multimodal stepwise preference data for embodied task planning, removing the need for human annotation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments on VoTa-Bench demonstrate that D2PO significantly improves task success rates and planning efficiency compared to existing methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research is crucial for advancing **embodied AI** by addressing limitations in current LVLMs. D2PO's innovative approach to **dual optimization** and **tree search** offers a pathway to more efficient and capable task planning, influencing future research in robotics, AI agents, and human-computer interaction by enhancing how AI systems understand & interact with complex environments.

------
#### Visual Insights



![](https://arxiv.org/html/2503.10480/x1.png)

> 🔼 The figure illustrates the Dual Preference Optimization (D2PO) framework.  D2PO jointly optimizes two key components: a state prediction model (world model) that learns to forecast how the environment changes over time, and an action selection model (policy model) that learns to choose optimal actions. These models are trained using preference learning to predict the better next state and better next action. The combined result is a system that is better able to plan embodied tasks because it understands the dynamic nature of the environment, rather than relying on just static snapshots of the world. The framework receives perception from the environment, then uses a policy model and a world model to determine an action which then changes the environment state.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of D2PO: World modeling enables better embodied task planning through joint preference optimization of state prediction and action selection.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.3.3.4.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row ltx_border_tt" id="S4.T1.3.3.4.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"></th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.3.3.4.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">Examine&amp;Light</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.3.3.4.1.3" style="padding-left:0.0pt;padding-right:0.0pt;">Pick&amp;Place</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.3.3.4.1.4" style="padding-left:0.0pt;padding-right:0.0pt;">Stack&amp;Place</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.3.3.4.1.5" style="padding-left:0.0pt;padding-right:0.0pt;">Clean&amp;Place</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.3.3.4.1.6" style="padding-left:0.0pt;padding-right:0.0pt;">Heat&amp;Place</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.3.3.4.1.7" style="padding-left:0.0pt;padding-right:0.0pt;">Cool&amp;Place</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.3.3.4.1.8" style="padding-left:0.0pt;padding-right:0.0pt;">Overall</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.5.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row" id="S4.T1.3.3.5.2.1" style="padding-left:0.0pt;padding-right:0.0pt;"></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.5.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">SR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.5.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">PL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.5.2.4" style="padding-left:0.0pt;padding-right:0.0pt;">SR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.5.2.5" style="padding-left:0.0pt;padding-right:0.0pt;">PL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.5.2.6" style="padding-left:0.0pt;padding-right:0.0pt;">SR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.5.2.7" style="padding-left:0.0pt;padding-right:0.0pt;">PL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.5.2.8" style="padding-left:0.0pt;padding-right:0.0pt;">SR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.5.2.9" style="padding-left:0.0pt;padding-right:0.0pt;">PL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.5.2.10" style="padding-left:0.0pt;padding-right:0.0pt;">SR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.5.2.11" style="padding-left:0.0pt;padding-right:0.0pt;">PL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.5.2.12" style="padding-left:0.0pt;padding-right:0.0pt;">SR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.5.2.13" style="padding-left:0.0pt;padding-right:0.0pt;">PL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.5.2.14" style="padding-left:0.0pt;padding-right:0.0pt;">SR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.5.2.15" style="padding-left:0.0pt;padding-right:0.0pt;">PL</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.6.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.3.3.6.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">GPT-4o</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.6.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">33.33</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.6.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">23.37</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.6.3.4" style="padding-left:0.0pt;padding-right:0.0pt;">51.19</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.6.3.5" style="padding-left:0.0pt;padding-right:0.0pt;">36.27</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.6.3.6" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.6.3.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.6.3.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.6.3.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.6.3.10" style="padding-left:0.0pt;padding-right:0.0pt;">8.41</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.6.3.11" style="padding-left:0.0pt;padding-right:0.0pt;">6.55</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.6.3.12" style="padding-left:0.0pt;padding-right:0.0pt;">2.38</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.6.3.13" style="padding-left:0.0pt;padding-right:0.0pt;">2.02</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.6.3.14" style="padding-left:0.0pt;padding-right:0.0pt;">14.39</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.6.3.15" style="padding-left:0.0pt;padding-right:0.0pt;">10.37</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.7.4" style="background-color:#C6C6C6;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.7.4.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.7.4.1.1" style="background-color:#C6C6C6;">+ ICL</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.7.4.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.7.4.2.1" style="background-color:#C6C6C6;">41.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.7.4.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.7.4.3.1" style="background-color:#C6C6C6;">30.60</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.7.4.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.7.4.4.1" style="background-color:#C6C6C6;">64.29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.7.4.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.7.4.5.1" style="background-color:#C6C6C6;">45.95</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.7.4.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.7.4.6.1" style="background-color:#C6C6C6;">4.17</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.7.4.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.7.4.7.1" style="background-color:#C6C6C6;">1.31</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.7.4.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.7.4.8.1" style="background-color:#C6C6C6;">1.79</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.7.4.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.7.4.9.1" style="background-color:#C6C6C6;">1.79</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.7.4.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.7.4.10.1" style="background-color:#C6C6C6;">24.30</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.7.4.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.7.4.11.1" style="background-color:#C6C6C6;">23.81</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.7.4.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.7.4.12.1" style="background-color:#C6C6C6;">11.90</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.7.4.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.7.4.13.1" style="background-color:#C6C6C6;">11.39</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.7.4.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.7.4.14.1" style="background-color:#C6C6C6;">23.50</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.7.4.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.7.4.15.1" style="background-color:#C6C6C6;">18.78</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.8.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.8.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">GPT-4o-mini</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.8.5.2" style="padding-left:0.0pt;padding-right:0.0pt;">22.22</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.8.5.3" style="padding-left:0.0pt;padding-right:0.0pt;">10.88</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.8.5.4" style="padding-left:0.0pt;padding-right:0.0pt;">14.29</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.8.5.5" style="padding-left:0.0pt;padding-right:0.0pt;">8.16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.8.5.6" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.8.5.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.8.5.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.8.5.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.8.5.10" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.8.5.11" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.8.5.12" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.8.5.13" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.8.5.14" style="padding-left:0.0pt;padding-right:0.0pt;">5.10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.8.5.15" style="padding-left:0.0pt;padding-right:0.0pt;">2.68</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.9.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.9.6.1" style="padding-left:0.0pt;padding-right:0.0pt;">Gemini-1.5-pro</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.9.6.2" style="padding-left:0.0pt;padding-right:0.0pt;">34.72</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.9.6.3" style="padding-left:0.0pt;padding-right:0.0pt;">29.38</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.9.6.4" style="padding-left:0.0pt;padding-right:0.0pt;">27.38</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.9.6.5" style="padding-left:0.0pt;padding-right:0.0pt;">12.07</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.9.6.6" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.9.6.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.9.6.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.9.6.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.9.6.10" style="padding-left:0.0pt;padding-right:0.0pt;">7.48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.9.6.11" style="padding-left:0.0pt;padding-right:0.0pt;">7.37</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.9.6.12" style="padding-left:0.0pt;padding-right:0.0pt;">3.17</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.9.6.13" style="padding-left:0.0pt;padding-right:0.0pt;">1.72</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.9.6.14" style="padding-left:0.0pt;padding-right:0.0pt;">10.93</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.9.6.15" style="padding-left:0.0pt;padding-right:0.0pt;">6.81</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.10.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.10.7.1" style="padding-left:0.0pt;padding-right:0.0pt;">Qwen2-VL (72B)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.10.7.2" style="padding-left:0.0pt;padding-right:0.0pt;">34.72</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.10.7.3" style="padding-left:0.0pt;padding-right:0.0pt;">21.62</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.10.7.4" style="padding-left:0.0pt;padding-right:0.0pt;">39.29</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.10.7.5" style="padding-left:0.0pt;padding-right:0.0pt;">21.81</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.10.7.6" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.10.7.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.10.7.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.10.7.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.10.7.10" style="padding-left:0.0pt;padding-right:0.0pt;">3.97</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.10.7.11" style="padding-left:0.0pt;padding-right:0.0pt;">3.47</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.10.7.12" style="padding-left:0.0pt;padding-right:0.0pt;">0.79</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.10.7.13" style="padding-left:0.0pt;padding-right:0.0pt;">0.56</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.10.7.14" style="padding-left:0.0pt;padding-right:0.0pt;">11.66</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.10.7.15" style="padding-left:0.0pt;padding-right:0.0pt;">7.10</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.11.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.11.8.1" style="padding-left:0.0pt;padding-right:0.0pt;">LLaVA-1.6 (34B)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.11.8.2" style="padding-left:0.0pt;padding-right:0.0pt;">12.50</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.11.8.3" style="padding-left:0.0pt;padding-right:0.0pt;">2.09</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.11.8.4" style="padding-left:0.0pt;padding-right:0.0pt;">7.14</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.11.8.5" style="padding-left:0.0pt;padding-right:0.0pt;">2.67</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.11.8.6" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.11.8.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.11.8.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.11.8.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.11.8.10" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.11.8.11" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.11.8.12" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.11.8.13" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.11.8.14" style="padding-left:0.0pt;padding-right:0.0pt;">2.73</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.11.8.15" style="padding-left:0.0pt;padding-right:0.0pt;">0.68</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.12.9">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.3.3.12.9.1" style="padding-left:0.0pt;padding-right:0.0pt;">Qwen2-VL (7B)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.12.9.2" style="padding-left:0.0pt;padding-right:0.0pt;">26.39</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.12.9.3" style="padding-left:0.0pt;padding-right:0.0pt;">8.55</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.12.9.4" style="padding-left:0.0pt;padding-right:0.0pt;">14.29</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.12.9.5" style="padding-left:0.0pt;padding-right:0.0pt;">8.22</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.12.9.6" style="padding-left:0.0pt;padding-right:0.0pt;">2.08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.12.9.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.60</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.12.9.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.12.9.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.12.9.10" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.12.9.11" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.12.9.12" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.12.9.13" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.12.9.14" style="padding-left:0.0pt;padding-right:0.0pt;">5.83</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.12.9.15" style="padding-left:0.0pt;padding-right:0.0pt;">2.46</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.13.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.13.10.1" style="padding-left:0.0pt;padding-right:0.0pt;">+ ICL</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.13.10.2" style="padding-left:0.0pt;padding-right:0.0pt;">25.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.13.10.3" style="padding-left:0.0pt;padding-right:0.0pt;">9.25</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.13.10.4" style="padding-left:0.0pt;padding-right:0.0pt;">21.43</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.13.10.5" style="padding-left:0.0pt;padding-right:0.0pt;">12.29</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.13.10.6" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.13.10.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.13.10.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.13.10.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.13.10.10" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.13.10.11" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.13.10.12" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.13.10.13" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.13.10.14" style="padding-left:0.0pt;padding-right:0.0pt;">6.56</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.13.10.15" style="padding-left:0.0pt;padding-right:0.0pt;">3.14</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.14.11">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.14.11.1" style="padding-left:0.0pt;padding-right:0.0pt;">+ SFT</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.14.11.2" style="padding-left:0.0pt;padding-right:0.0pt;">70.83</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.14.11.3" style="padding-left:0.0pt;padding-right:0.0pt;">55.24</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.14.11.4" style="padding-left:0.0pt;padding-right:0.0pt;">69.05</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.14.11.5" style="padding-left:0.0pt;padding-right:0.0pt;">57.74</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.14.11.6" style="padding-left:0.0pt;padding-right:0.0pt;">6.25</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.14.11.7" style="padding-left:0.0pt;padding-right:0.0pt;">5.38</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.14.11.8" style="padding-left:0.0pt;padding-right:0.0pt;">26.79</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.14.11.9" style="padding-left:0.0pt;padding-right:0.0pt;">26.04</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.14.11.10" style="padding-left:0.0pt;padding-right:0.0pt;">58.88</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.14.11.11" style="padding-left:0.0pt;padding-right:0.0pt;">58.34</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.14.11.12" style="padding-left:0.0pt;padding-right:0.0pt;">31.75</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.14.11.13" style="padding-left:0.0pt;padding-right:0.0pt;">31.11</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.14.11.14" style="padding-left:0.0pt;padding-right:0.0pt;">44.63</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.14.11.15" style="padding-left:0.0pt;padding-right:0.0pt;">40.33</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.15.12" style="background-color:#D9EDDF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.15.12.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.15.12.1.1" style="background-color:#D9EDDF;">+ DPO</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.15.12.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.15.12.2.1" style="background-color:#D9EDDF;">72.22</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.15.12.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.15.12.3.1" style="background-color:#D9EDDF;">56.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.15.12.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.15.12.4.1" style="background-color:#D9EDDF;">80.95</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.15.12.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.15.12.5.1" style="background-color:#D9EDDF;">66.30</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.15.12.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.15.12.6.1" style="background-color:#D9EDDF;">10.42</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.15.12.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.15.12.7.1" style="background-color:#D9EDDF;">8.47</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.15.12.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.15.12.8.1" style="background-color:#D9EDDF;">44.64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.15.12.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.15.12.9.1" style="background-color:#D9EDDF;">44.64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.15.12.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.15.12.10.1" style="background-color:#D9EDDF;">60.75</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.15.12.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.15.12.11.1" style="background-color:#D9EDDF;">60.75</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.15.12.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.15.12.12.1" style="background-color:#D9EDDF;">44.44</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.15.12.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.15.12.13.1" style="background-color:#D9EDDF;">44.04</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.15.12.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.15.12.14.1" style="background-color:#D9EDDF;">53.92</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.15.12.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.15.12.15.1" style="background-color:#D9EDDF;">49.37</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.1" style="background-color:#D9EDDF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.1.1.1.1.1" style="background-color:#D9EDDF;">+ D<sup class="ltx_sup" id="S4.T1.1.1.1.1.1.1">2</sup>PO</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.2.1" style="background-color:#D9EDDF;">84.72</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.3.1" style="background-color:#D9EDDF;">66.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.4.1" style="background-color:#D9EDDF;">84.52</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.1.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.5.1" style="background-color:#D9EDDF;">71.27</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.1.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.6.1" style="background-color:#D9EDDF;">12.50</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.1.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.7.1" style="background-color:#D9EDDF;">10.23</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.1.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.8.1" style="background-color:#D9EDDF;">48.21</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.1.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.9.1" style="background-color:#D9EDDF;">48.21</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.1.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.10.1" style="background-color:#D9EDDF;">66.36</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.1.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.11.1" style="background-color:#D9EDDF;">66.36</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.1.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.12.1" style="background-color:#D9EDDF;">44.44</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.1.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.13.1" style="background-color:#D9EDDF;">44.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.1.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.14.1" style="background-color:#D9EDDF;">58.11</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.1.1.1.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.15.1" style="background-color:#D9EDDF;">53.33</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.16.13">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.3.3.16.13.1" style="padding-left:0.0pt;padding-right:0.0pt;">LLaVA-1.6 (7B)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.16.13.2" style="padding-left:0.0pt;padding-right:0.0pt;">4.17</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.16.13.3" style="padding-left:0.0pt;padding-right:0.0pt;">0.67</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.16.13.4" style="padding-left:0.0pt;padding-right:0.0pt;">7.14</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.16.13.5" style="padding-left:0.0pt;padding-right:0.0pt;">1.14</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.16.13.6" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.16.13.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.16.13.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.16.13.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.16.13.10" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.16.13.11" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.16.13.12" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.16.13.13" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.16.13.14" style="padding-left:0.0pt;padding-right:0.0pt;">1.64</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.16.13.15" style="padding-left:0.0pt;padding-right:0.0pt;">0.26</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.17.14">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.17.14.1" style="padding-left:0.0pt;padding-right:0.0pt;">+ ICL</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.17.14.2" style="padding-left:0.0pt;padding-right:0.0pt;">1.39</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.17.14.3" style="padding-left:0.0pt;padding-right:0.0pt;">0.22</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.17.14.4" style="padding-left:0.0pt;padding-right:0.0pt;">4.76</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.17.14.5" style="padding-left:0.0pt;padding-right:0.0pt;">0.76</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.17.14.6" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.17.14.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.17.14.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.17.14.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.17.14.10" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.17.14.11" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.17.14.12" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.17.14.13" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.17.14.14" style="padding-left:0.0pt;padding-right:0.0pt;">0.91</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.17.14.15" style="padding-left:0.0pt;padding-right:0.0pt;">0.15</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.18.15">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.18.15.1" style="padding-left:0.0pt;padding-right:0.0pt;">+ SFT</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.18.15.2" style="padding-left:0.0pt;padding-right:0.0pt;">56.94</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.18.15.3" style="padding-left:0.0pt;padding-right:0.0pt;">45.37</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.18.15.4" style="padding-left:0.0pt;padding-right:0.0pt;">63.10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.18.15.5" style="padding-left:0.0pt;padding-right:0.0pt;">51.65</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.18.15.6" style="padding-left:0.0pt;padding-right:0.0pt;">12.50</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.18.15.7" style="padding-left:0.0pt;padding-right:0.0pt;">9.81</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.18.15.8" style="padding-left:0.0pt;padding-right:0.0pt;">31.25</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.18.15.9" style="padding-left:0.0pt;padding-right:0.0pt;">31.18</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.18.15.10" style="padding-left:0.0pt;padding-right:0.0pt;">50.47</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.18.15.11" style="padding-left:0.0pt;padding-right:0.0pt;">50.08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.18.15.12" style="padding-left:0.0pt;padding-right:0.0pt;">30.16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.18.15.13" style="padding-left:0.0pt;padding-right:0.0pt;">29.34</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.18.15.14" style="padding-left:0.0pt;padding-right:0.0pt;">41.35</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.18.15.15" style="padding-left:0.0pt;padding-right:0.0pt;">37.56</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.19.16" style="background-color:#D9EDDF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.19.16.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.19.16.1.1" style="background-color:#D9EDDF;">+ DPO</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.19.16.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.19.16.2.1" style="background-color:#D9EDDF;">66.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.19.16.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.19.16.3.1" style="background-color:#D9EDDF;">45.77</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.19.16.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.19.16.4.1" style="background-color:#D9EDDF;">72.62</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.19.16.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.19.16.5.1" style="background-color:#D9EDDF;">59.17</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.19.16.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.19.16.6.1" style="background-color:#D9EDDF;">20.83</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.19.16.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.19.16.7.1" style="background-color:#D9EDDF;">18.20</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.19.16.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.19.16.8.1" style="background-color:#D9EDDF;">44.64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.19.16.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.19.16.9.1" style="background-color:#D9EDDF;">44.64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.19.16.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.19.16.10.1" style="background-color:#D9EDDF;">44.86</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.19.16.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.19.16.11.1" style="background-color:#D9EDDF;">44.86</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.19.16.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.19.16.12.1" style="background-color:#D9EDDF;">43.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.19.16.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.19.16.13.1" style="background-color:#D9EDDF;">43.07</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.19.16.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.19.16.14.1" style="background-color:#D9EDDF;">49.54</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.19.16.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.19.16.15.1" style="background-color:#D9EDDF;">44.38</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.2" style="background-color:#D9EDDF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.2.2.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.2.2.2.1.1" style="background-color:#D9EDDF;">+ D<sup class="ltx_sup" id="S4.T1.2.2.2.1.1.1">2</sup>PO</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.2.1" style="background-color:#D9EDDF;">69.44</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.3.1" style="background-color:#D9EDDF;">52.60</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.4.1" style="background-color:#D9EDDF;">78.57</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.5.1" style="background-color:#D9EDDF;">65.48</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.6.1" style="background-color:#D9EDDF;">22.92</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.7.1" style="background-color:#D9EDDF;">19.60</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.8.1" style="background-color:#D9EDDF;">47.32</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.9.1" style="background-color:#D9EDDF;">47.32</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.10.1" style="background-color:#D9EDDF;">60.75</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.11.1" style="background-color:#D9EDDF;">60.41</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.12.1" style="background-color:#D9EDDF;">44.44</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.13.1" style="background-color:#D9EDDF;">44.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.14.1" style="background-color:#D9EDDF;">54.83</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.15.1" style="background-color:#D9EDDF;">50.23</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.20.17">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.3.3.20.17.1" style="padding-left:0.0pt;padding-right:0.0pt;">LLaMA-3.2 (11B)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.20.17.2" style="padding-left:0.0pt;padding-right:0.0pt;">12.50</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.20.17.3" style="padding-left:0.0pt;padding-right:0.0pt;">2.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.20.17.4" style="padding-left:0.0pt;padding-right:0.0pt;">4.76</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.20.17.5" style="padding-left:0.0pt;padding-right:0.0pt;">0.86</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.20.17.6" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.20.17.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.20.17.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.20.17.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.20.17.10" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.20.17.11" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.20.17.12" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.20.17.13" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.20.17.14" style="padding-left:0.0pt;padding-right:0.0pt;">2.37</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.20.17.15" style="padding-left:0.0pt;padding-right:0.0pt;">0.39</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.21.18">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.21.18.1" style="padding-left:0.0pt;padding-right:0.0pt;">+ ICL</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.21.18.2" style="padding-left:0.0pt;padding-right:0.0pt;">8.33</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.21.18.3" style="padding-left:0.0pt;padding-right:0.0pt;">1.33</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.21.18.4" style="padding-left:0.0pt;padding-right:0.0pt;">3.57</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.21.18.5" style="padding-left:0.0pt;padding-right:0.0pt;">0.57</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.21.18.6" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.21.18.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.21.18.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.21.18.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.21.18.10" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.21.18.11" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.21.18.12" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.21.18.13" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.21.18.14" style="padding-left:0.0pt;padding-right:0.0pt;">1.64</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.21.18.15" style="padding-left:0.0pt;padding-right:0.0pt;">0.26</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.22.19">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.22.19.1" style="padding-left:0.0pt;padding-right:0.0pt;">+ SFT</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.22.19.2" style="padding-left:0.0pt;padding-right:0.0pt;">58.33</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.22.19.3" style="padding-left:0.0pt;padding-right:0.0pt;">44.13</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.22.19.4" style="padding-left:0.0pt;padding-right:0.0pt;">72.62</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.22.19.5" style="padding-left:0.0pt;padding-right:0.0pt;">47.04</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.22.19.6" style="padding-left:0.0pt;padding-right:0.0pt;">8.33</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.22.19.7" style="padding-left:0.0pt;padding-right:0.0pt;">6.69</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.22.19.8" style="padding-left:0.0pt;padding-right:0.0pt;">30.36</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.22.19.9" style="padding-left:0.0pt;padding-right:0.0pt;">26.03</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.22.19.10" style="padding-left:0.0pt;padding-right:0.0pt;">46.73</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.22.19.11" style="padding-left:0.0pt;padding-right:0.0pt;">46.73</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.22.19.12" style="padding-left:0.0pt;padding-right:0.0pt;">35.71</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.22.19.13" style="padding-left:0.0pt;padding-right:0.0pt;">31.98</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.22.19.14" style="padding-left:0.0pt;padding-right:0.0pt;">42.99</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.22.19.15" style="padding-left:0.0pt;padding-right:0.0pt;">35.33</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.23.20" style="background-color:#D9EDDF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.23.20.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.23.20.1.1" style="background-color:#D9EDDF;">+ DPO</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.23.20.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.23.20.2.1" style="background-color:#D9EDDF;">76.39</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.23.20.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.23.20.3.1" style="background-color:#D9EDDF;">59.31</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.23.20.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.23.20.4.1" style="background-color:#D9EDDF;">78.57</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.23.20.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.23.20.5.1" style="background-color:#D9EDDF;">62.61</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.23.20.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.23.20.6.1" style="background-color:#D9EDDF;">12.50</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.23.20.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.23.20.7.1" style="background-color:#D9EDDF;">9.97</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.23.20.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.23.20.8.1" style="background-color:#D9EDDF;">29.46</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.23.20.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.23.20.9.1" style="background-color:#D9EDDF;">25.47</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.23.20.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.23.20.10.1" style="background-color:#D9EDDF;">43.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.23.20.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.23.20.11.1" style="background-color:#D9EDDF;">43.35</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.23.20.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.23.20.12.1" style="background-color:#D9EDDF;">36.51</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.23.20.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.23.20.13.1" style="background-color:#D9EDDF;">34.24</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.23.20.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.23.20.14.1" style="background-color:#D9EDDF;">46.08</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.3.23.20.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.23.20.15.1" style="background-color:#D9EDDF;">39.73</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.3" style="background-color:#D9EDDF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.3.3.3.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.3.3.3.1.1" style="background-color:#D9EDDF;">+ D<sup class="ltx_sup" id="S4.T1.3.3.3.1.1.1">2</sup>PO</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.3.3.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.2.1" style="background-color:#D9EDDF;">76.39</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.3.3.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.3.1" style="background-color:#D9EDDF;">59.63</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.3.3.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.4.1" style="background-color:#D9EDDF;">88.10</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.3.3.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.5.1" style="background-color:#D9EDDF;">71.32</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.3.3.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.6.1" style="background-color:#D9EDDF;">14.58</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.3.3.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.7.1" style="background-color:#D9EDDF;">12.19</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.3.3.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.8.1" style="background-color:#D9EDDF;">38.39</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.3.3.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.9.1" style="background-color:#D9EDDF;">32.97</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.3.3.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.10.1" style="background-color:#D9EDDF;">48.60</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.3.3.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.11.1" style="background-color:#D9EDDF;">48.26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.3.3.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.12.1" style="background-color:#D9EDDF;">39.68</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.3.3.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.13.1" style="background-color:#D9EDDF;">38.80</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.3.3.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.14.1" style="background-color:#D9EDDF;">51.18</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.3.3.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.15.1" style="background-color:#D9EDDF;">44.84</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of different methods on the VoTa-Bench dataset.  The methods compared include several leading Large Vision-Language Models (LVLMs) such as GPT-40 and Qwen2-VL, along with different training approaches: In-Context Learning (ICL), Supervised Fine-Tuning (SFT), Direct Preference Optimization (DPO), and the proposed Dual Preference Optimization (D2PO).  The performance is evaluated across six different task types within the seen environment of the VoTa-Bench dataset.  The evaluation metrics used are Success Rate (SR) and Path-Length Weighted Success Rate (PL), which measure both task completion success and planning efficiency.  The highest performance for each model and task is highlighted in bold, while the results for DPO and D2PO are highlighted in green to emphasize the proposed method's performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance of D²PO and baselines on VoTa-Bench (Seen). Bold values indicate the highest performance within the same model, and our method (D²PO), including its ablation (DPO), are highlighted in green.
> </details>





### In-depth insights


#### Dual Optim.
The concept of 'Dual Optimization' (Dual Optim.) suggests a sophisticated approach where **two distinct, yet interconnected objectives are simultaneously pursued**. This hints at a system designed to balance potentially conflicting priorities or leverage complementary strengths. In machine learning, such dual optimization could involve jointly optimizing for **model accuracy and robustness**, or **exploration and exploitation**, or **state prediction and action selection**. The key challenge lies in defining appropriate **trade-offs** and ensuring that progress in one objective doesn't significantly hinder the other. The success of Dual Optim. hinges on a carefully designed **objective function** and an effective **optimization algorithm** that can navigate the complex solution space.

#### World Modeling
**World modeling** plays a pivotal role in embodied AI, enabling agents to interact effectively with their environment. It's about creating a cognitive framework that allows the agent to understand, predict, and adapt to changes in the world based on its actions. The paper introduces a **Dual Preference Optimization (D2PO)** framework, which leverages **world modeling** to enhance planning capabilities. Instead of treating **world modeling** as a separate component, D2PO uses its objectives to improve the policy's decision-making. This approach leads to a natural understanding of world dynamics, resulting in more informed action selection without explicit guidance during inference. By predicting future states, the model learns action consequences over time, improving its policy ability and enabling diverse decision-making.

#### Tree Search Exp.
**Tree search algorithms** are essential for diverse AI problems. A well-designed tree search should **efficiently explore the state space**, balancing exploration and exploitation. Key aspects include the **branching factor**, dictating the number of potential actions considered at each step, and the **search depth**, determining the planning horizon. Effective **pruning strategies** are vital to avoid unnecessary computation by discarding unpromising branches early on. The algorithm must also incorporate mechanisms for **evaluating the potential of each node**, guiding the search toward more promising paths. Balancing exploration breadth and depth becomes essential to avoid getting stuck in local optima. Furthermore, the ability to **backtrack** and **recover from dead ends** is crucial for robust performance. Finally, a successful tree search implementation also necessitates a thoughtful consideration of the algorithm's **computational complexity**.

#### VoTa-Bench Test
Based on the context, the VoTa-Bench is designed as a closed-loop task planning framework, crucial for embodied AI. **It focuses on assessing LLMs planning capabilities by decoupling low-level action execution**, unlike ALFRED which evaluates overall performance, emphasizing LLMs' cognitive abilities for task planning. The extended VoTa-Bench provides egocentric visual information, better supporting vision-language models. Evaluation uses an open-domain generation approach, eliminating reliance on predefined executable skills & logits computation, enhancing flexibility. **The new multimodal benchmark incorporates visual information as both the initial state and the observation after each operation, requiring the model to effectively process visual inputs** and allows the model's generation of non-executable skills, creating a more complex testing environment. It includes seen and unseen environments to test generalization. A closed-loop process enables interaction with the environment, taking actions, and updating the environment step-by-step.

#### No Real World
The phrase "No Real World" encapsulates a common critique of AI research, particularly in embodied task planning. Many algorithms, including those described in this paper, are developed and evaluated within **simulated environments like AI2-THOR**. These simulations, while offering controlled experimental settings, often **fail to capture the complexities of the real world**, such as unpredictable object arrangements, imperfect sensors, and unforeseen interactions. This **"sim-to-real gap"** raises concerns about the **transferability of algorithms** trained in simulation to physical robots operating in unstructured, dynamic environments. Addressing this gap is critical for advancing AI beyond theoretical success and enabling practical applications. Methods for bridging the gap include **domain randomization**, using more realistic simulators, and developing algorithms robust to noise and uncertainty. A **real-world deployment and evaluation** is often seen as the ultimate test of an AI system.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10480/x2.png)

> 🔼 This figure illustrates the two main components of the proposed method: Data Exploration and Dual Preference Optimization.  The Data Exploration component (a) uses a step-wise tree search to systematically explore possible action sequences in the environment. This involves sampling potential actions, iteratively expanding the search tree, and backtracking when necessary. This process automatically collects preference data, comparing chosen actions and their outcomes to alternatives. The Dual Preference Optimization (D2PO) component (b) then leverages the collected preference pairs to jointly optimize both state prediction (world modeling) and action selection. This allows the model to better understand the environment's dynamics and plan more effectively.
> <details>
> <summary>read the caption</summary>
> Figure 2: Our method consists of two dimensions: (a) Data Exploration via Step-wise Tree Search (Sec 3.2), which collects preference data through sampling and selecting potential actions, iterative tree expansion, and trajectory backtracking; (b) Dual Preference Optimization (D2PO) framework (Sec 3.3) that leverages the collected preference pairs to jointly optimize action selection and state prediction.
> </details>



![](https://arxiv.org/html/2503.10480/x3.png)

> 🔼 This figure shows the relationship between the amount of training data used and the success rate (SR) achieved by three different methods: Standard Fine-tuning (SFT), Direct Preference Optimization (DPO), and Dual Preference Optimization (D2PO).  The x-axis represents different data scales, and the y-axis represents the success rate.  The results demonstrate that D2PO consistently outperforms the other two methods across all data scales, showcasing its ability to leverage data effectively. There is also a slight non-monotonic trend in the D2PO performance at larger data sizes, which might be due to overfitting.
> <details>
> <summary>read the caption</summary>
> (a) Impact of data scale on performance (SR).
> </details>



![](https://arxiv.org/html/2503.10480/x4.png)

> 🔼 This figure shows the relationship between the success rate (SR) and the model size in various embodied task planning models. The larger the model size, the higher the success rate is.  The results are presented using bar charts, with different models and approaches (SFT, DPO, D2PO) clearly differentiated.
> <details>
> <summary>read the caption</summary>
> (b) Impact of model scale on performance (SR).
> </details>



![](https://arxiv.org/html/2503.10480/x5.png)

> 🔼 This figure presents a dual analysis of the impact of data scale and model scale on the performance of the proposed D2PO method. Subfigure (a) shows how the success rate (SR) changes with varying amounts of training data, indicating the relationship between data size and model performance. Subfigure (b) demonstrates how the SR changes with varying model sizes.  It allows for a comparison of the effectiveness of D2PO across different data and model scales.
> <details>
> <summary>read the caption</summary>
> Figure 3: Analysis of data scale and model scale.
> </details>



![](https://arxiv.org/html/2503.10480/x6.png)

> 🔼 This figure compares the success rates (SR) of two different types of world models: action-conditioned and goal-directed.  The action-conditioned model predicts the next state based on the current state and the chosen action, while the goal-directed model predicts the future states based on the goal and history of past states and actions. The comparison is performed for both 'seen' (familiar) and 'unseen' (novel) scenarios to evaluate the generalization ability of each model.  The results show that while the action-conditioned model performs better on seen scenarios, the goal-directed model generalizes better to unseen scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 4: Success rates (SR) of action-conditioned and goal-directed world models across seen and unseen scenarios.
> </details>



![](https://arxiv.org/html/2503.10480/x7.png)

> 🔼 The figure shows a comparison of high-level task planning in ALFRED. ALFRED uses step-by-step instructions, breaking the task into subgoals. The example shows the task of placing a cold tomato in the sink.  ALFRED decomposes this into finding the counter top, picking up the tomato, finding the fridge, cooling the tomato, finding the sink, and finally putting down the tomato. Each step is depicted with images from the simulation.
> <details>
> <summary>read the caption</summary>
> (a) ALFRED (high-level planning) (Shridhar et al., 2019)
> </details>



![](https://arxiv.org/html/2503.10480/x8.png)

> 🔼 This figure shows the task decomposition in LoTa-Bench.  It illustrates that the high-level goal is broken down into a sequence of simpler, executable actions for an embodied AI agent to follow within a simulated environment. The example shows that, for the task of placing a cold tomato in the sink, LoTa-Bench decomposes the task into more fine-grained steps than ALFRED (another dataset). For example, it involves finding the tomato, picking it up, finding the fridge, opening it, putting the tomato inside, closing the fridge, finding the sink, and finally placing the tomato in the sink. This decomposition makes the task easier to complete for agents but also makes it less realistic compared to a human's approach.
> <details>
> <summary>read the caption</summary>
> (b) LoTa-Bench (Choi et al., 2024)
> </details>



![](https://arxiv.org/html/2503.10480/x9.png)

> 🔼 This figure shows a comparison of three different embodied task planning benchmarks: ALFRED, LoTa-Bench, and the proposed VoTa-Bench.  Each benchmark is illustrated with the example task of placing a cold tomato in a sink.  ALFRED uses detailed step-by-step instructions, LoTa-Bench uses only a high-level goal instruction, and VoTa-Bench incorporates both a high-level goal instruction and egocentric visual observations at each step, providing a more realistic and challenging evaluation of embodied AI systems.
> <details>
> <summary>read the caption</summary>
> (c) VoTa-Bench (ours)
> </details>



![](https://arxiv.org/html/2503.10480/x10.png)

> 🔼 Figure 5 compares three different approaches to embodied task planning using the example task 'Place a cold tomato in the sink'.  ALFRED (a) uses high-level instructions broken down into sub-goals (like 'Cool Tomato'). LoTa-Bench (b) uses only a goal instruction and breaks the task into very specific, low-level actions, but lacks visual input, relying on pre-defined actions. VoTa-Bench (c), the proposed method, extends LoTa-Bench by adding egocentric visual input, requiring the model to generate more open-ended actions based on both the goal and visual observations. This allows it to handle both seen and unseen environments.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of ALFRED, LoTa-Bench, and VoTa-Bench in the task “Place a cold tomato in the sink”. (a) ALFRED emphasizes high-level task planning with human-written step-by-step instructions, breaking the task into subgoals like “Cool Tomato” (step 4). (b) LoTa-Bench provides only goal instructions and decomposes tasks into fine-grained low-level actions (e.g., “Open Fridge”, “PutDown Tomato”, etc.; steps 4–10) but lacks guidance from visual input, relying on predefined executable actions, choosing actions based on maximum logits to ensure they are valid in the simulation. (c) VoTa-Bench extends LoTa-Bench by incorporating egocentric visual observations, requiring models to generate open-domain actions based on visual information to handle both seen and unseen environments.
> </details>



![](https://arxiv.org/html/2503.10480/x11.png)

> 🔼 This figure shows examples of scenes from the VoTa-Bench dataset used in the experiments.  Panel (a) specifically displays examples of *seen* scenes, meaning these scene layouts and object arrangements were present in the training data for the models.  The figure helps to illustrate the visual environment the embodied AI agents are interacting with. The visual information is crucial input to the models in this embodied task planning research.
> <details>
> <summary>read the caption</summary>
> (a) Seen Scenes
> </details>



![](https://arxiv.org/html/2503.10480/extracted/6278086/imgs/trial_T20190909_112854_740612_1_fail.png)

> 🔼 This figure shows example images of unseen scenes from the VoTa-Bench dataset.  These scenes represent environments not included in the training data, and are used to evaluate the model's generalization ability to novel and unseen layouts and object configurations within the AI2-THOR simulator.
> <details>
> <summary>read the caption</summary>
> (b) Unseen Scenes
> </details>



![](https://arxiv.org/html/2503.10480/extracted/6278086/imgs/trial_T20190909_112854_740612_1_success.png)

> 🔼 This figure visualizes example scenes from the VoTa-Bench dataset, showcasing both 'seen' and 'unseen' environments.  Seen scenes represent environments with layouts and object distributions similar to those in the training data, allowing the model to leverage prior experience. In contrast, unseen scenes present novel layouts and object arrangements that the model hasn't encountered during training. This distinction helps illustrate the generalization capabilities of embodied AI models. The figure demonstrates the dataset's diversity in scene arrangement and object placement, highlighting the challenges and opportunities for more robust AI models that can handle unseen situations effectively.
> <details>
> <summary>read the caption</summary>
> Figure 6: Examples of seen and unseen scenes.
> </details>



![](https://arxiv.org/html/2503.10480/extracted/6278086/imgs/trial_T20190908_070946_578973_2_success.png)

> 🔼 Figure 7 presents a comparative analysis of the dataset distributions for two distinct training methods: Supervised Fine-Tuning (SFT) and Dual Preference Optimization (DPO).  The figure uses a bar chart to visually represent the proportion of each task type within each dataset.  The task types include 'Examine & Light', 'Pick & Place', 'Stack & Place', 'Clean & Place', 'Heat & Place', and 'Cool & Place'. By comparing the distributions, we can gain insights into whether the two methods exhibit similar or distinct preferences in terms of task complexity or types of interaction.
> <details>
> <summary>read the caption</summary>
> Figure 7: Distribution of the SFT and DPO dataset across different task types.
> </details>



![](https://arxiv.org/html/2503.10480/extracted/6278086/imgs/trial_T20190908_070946_578973_2_success_1.png)

> 🔼 This figure shows a sequence of images depicting the steps taken by a model trained using supervised fine-tuning (SFT) while attempting a specific task.  The trajectory ultimately fails to complete the task successfully, highlighting issues such as incorrect action sequencing and a lack of understanding of task dependencies. Each image represents a step in the process, and the caption indicates that the attempt is unsuccessful.  The figure is used to contrast the performance of the SFT model with models trained using other methods, thereby showcasing the effectiveness of the proposed approach.
> <details>
> <summary>read the caption</summary>
> (a) SFT Trajectory (Fail)
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.3.3.4.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row ltx_border_tt" id="S4.T2.3.3.4.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.3.3.4.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">Examine&amp;Light</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.3.3.4.1.3" style="padding-left:0.0pt;padding-right:0.0pt;">Pick&amp;Place</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.3.3.4.1.4" style="padding-left:0.0pt;padding-right:0.0pt;">Stack&amp;Place</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.3.3.4.1.5" style="padding-left:0.0pt;padding-right:0.0pt;">Clean&amp;Place</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.3.3.4.1.6" style="padding-left:0.0pt;padding-right:0.0pt;">Heat&amp;Place</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.3.3.4.1.7" style="padding-left:0.0pt;padding-right:0.0pt;">Cool&amp;Place</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.3.3.4.1.8" style="padding-left:0.0pt;padding-right:0.0pt;">Overall</th>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.5.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row" id="S4.T2.3.3.5.2.1" style="padding-left:0.0pt;padding-right:0.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.5.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">SR</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.5.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">PL</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.5.2.4" style="padding-left:0.0pt;padding-right:0.0pt;">SR</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.5.2.5" style="padding-left:0.0pt;padding-right:0.0pt;">PL</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.5.2.6" style="padding-left:0.0pt;padding-right:0.0pt;">SR</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.5.2.7" style="padding-left:0.0pt;padding-right:0.0pt;">PL</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.5.2.8" style="padding-left:0.0pt;padding-right:0.0pt;">SR</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.5.2.9" style="padding-left:0.0pt;padding-right:0.0pt;">PL</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.5.2.10" style="padding-left:0.0pt;padding-right:0.0pt;">SR</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.5.2.11" style="padding-left:0.0pt;padding-right:0.0pt;">PL</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.5.2.12" style="padding-left:0.0pt;padding-right:0.0pt;">SR</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.5.2.13" style="padding-left:0.0pt;padding-right:0.0pt;">PL</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.5.2.14" style="padding-left:0.0pt;padding-right:0.0pt;">SR</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.5.2.15" style="padding-left:0.0pt;padding-right:0.0pt;">PL</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.3.6.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.6.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">Qwen2-VL (7B)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.6.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">25.53</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.6.1.3" style="padding-left:0.0pt;padding-right:0.0pt;">9.34</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.6.1.4" style="padding-left:0.0pt;padding-right:0.0pt;">15.79</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.6.1.5" style="padding-left:0.0pt;padding-right:0.0pt;">9.58</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.6.1.6" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.6.1.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.6.1.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.6.1.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.6.1.10" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.6.1.11" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.6.1.12" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.6.1.13" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.6.1.14" style="padding-left:0.0pt;padding-right:0.0pt;">7.43</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.6.1.15" style="padding-left:0.0pt;padding-right:0.0pt;">3.18</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.7.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.3.7.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">+ ICL</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.7.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">26.95</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.7.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">12.20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.7.2.4" style="padding-left:0.0pt;padding-right:0.0pt;">3.95</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.7.2.5" style="padding-left:0.0pt;padding-right:0.0pt;">1.69</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.7.2.6" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.7.2.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.7.2.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.7.2.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.7.2.10" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.7.2.11" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.7.2.12" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.7.2.13" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.7.2.14" style="padding-left:0.0pt;padding-right:0.0pt;">6.35</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.7.2.15" style="padding-left:0.0pt;padding-right:0.0pt;">2.86</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.8.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.3.8.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">+ SFT</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.8.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">68.79</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.8.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">56.93</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.8.3.4" style="padding-left:0.0pt;padding-right:0.0pt;">52.63</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.8.3.5" style="padding-left:0.0pt;padding-right:0.0pt;">44.46</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.8.3.6" style="padding-left:0.0pt;padding-right:0.0pt;">4.29</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.8.3.7" style="padding-left:0.0pt;padding-right:0.0pt;">2.61</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.8.3.8" style="padding-left:0.0pt;padding-right:0.0pt;">43.36</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.8.3.9" style="padding-left:0.0pt;padding-right:0.0pt;">43.37</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.8.3.10" style="padding-left:0.0pt;padding-right:0.0pt;">62.50</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.8.3.11" style="padding-left:0.0pt;padding-right:0.0pt;">62.29</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.8.3.12" style="padding-left:0.0pt;padding-right:0.0pt;">49.54</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.8.3.13" style="padding-left:0.0pt;padding-right:0.0pt;">47.38</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.8.3.14" style="padding-left:0.0pt;padding-right:0.0pt;">50.77</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.8.3.15" style="padding-left:0.0pt;padding-right:0.0pt;">46.70</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.9.4" style="background-color:#D9EDDF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.3.9.4.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.4.1.1" style="background-color:#D9EDDF;">+ DPO</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.9.4.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.4.2.1" style="background-color:#D9EDDF;">73.76</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.9.4.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.4.3.1" style="background-color:#D9EDDF;">60.17</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.9.4.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.4.4.1" style="background-color:#D9EDDF;">53.95</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.9.4.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.4.5.1" style="background-color:#D9EDDF;">46.95</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.9.4.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.4.6.1" style="background-color:#D9EDDF;">7.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.9.4.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.4.7.1" style="background-color:#D9EDDF;">5.15</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.9.4.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.4.8.1" style="background-color:#D9EDDF;">52.21</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.9.4.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.4.9.1" style="background-color:#D9EDDF;">52.21</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.9.4.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.4.10.1" style="background-color:#D9EDDF;">66.18</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.9.4.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.4.11.1" style="background-color:#D9EDDF;">66.18</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.9.4.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.4.12.1" style="background-color:#D9EDDF;">66.97</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.9.4.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.4.13.1" style="background-color:#D9EDDF;">66.97</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.9.4.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.4.14.1" style="background-color:#D9EDDF;">57.59</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.9.4.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.4.15.1" style="background-color:#D9EDDF;">53.65</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1" style="background-color:#D9EDDF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.1.1" style="background-color:#D9EDDF;">+ D<sup class="ltx_sup" id="S4.T2.1.1.1.1.1.1">2</sup>PO</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1" style="background-color:#D9EDDF;">77.30</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1" style="background-color:#D9EDDF;">62.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.4.1" style="background-color:#D9EDDF;">56.58</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.5.1" style="background-color:#D9EDDF;">49.56</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.6.1" style="background-color:#D9EDDF;">11.43</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.7.1" style="background-color:#D9EDDF;">8.66</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.8.1" style="background-color:#D9EDDF;">55.75</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.9.1" style="background-color:#D9EDDF;">55.75</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.10.1" style="background-color:#D9EDDF;">72.79</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.11.1" style="background-color:#D9EDDF;">72.79</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.12.1" style="background-color:#D9EDDF;">68.81</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.13.1" style="background-color:#D9EDDF;">68.51</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.14.1" style="background-color:#D9EDDF;">61.46</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.15.1" style="background-color:#D9EDDF;">57.16</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.10.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.10.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">LLaVA-1.6 (7B)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.10.5.2" style="padding-left:0.0pt;padding-right:0.0pt;">4.26</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.10.5.3" style="padding-left:0.0pt;padding-right:0.0pt;">0.77</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.10.5.4" style="padding-left:0.0pt;padding-right:0.0pt;">6.58</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.10.5.5" style="padding-left:0.0pt;padding-right:0.0pt;">1.14</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.10.5.6" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.10.5.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.10.5.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.10.5.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.10.5.10" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.10.5.11" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.10.5.12" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.10.5.13" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.10.5.14" style="padding-left:0.0pt;padding-right:0.0pt;">1.70</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.10.5.15" style="padding-left:0.0pt;padding-right:0.0pt;">0.30</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.11.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.3.11.6.1" style="padding-left:0.0pt;padding-right:0.0pt;">+ ICL</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.11.6.2" style="padding-left:0.0pt;padding-right:0.0pt;">2.84</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.11.6.3" style="padding-left:0.0pt;padding-right:0.0pt;">0.45</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.11.6.4" style="padding-left:0.0pt;padding-right:0.0pt;">2.63</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.11.6.5" style="padding-left:0.0pt;padding-right:0.0pt;">1.07</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.11.6.6" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.11.6.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.11.6.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.11.6.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.11.6.10" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.11.6.11" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.11.6.12" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.11.6.13" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.11.6.14" style="padding-left:0.0pt;padding-right:0.0pt;">0.93</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.11.6.15" style="padding-left:0.0pt;padding-right:0.0pt;">0.23</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.12.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.3.12.7.1" style="padding-left:0.0pt;padding-right:0.0pt;">+ SFT</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.12.7.2" style="padding-left:0.0pt;padding-right:0.0pt;">64.54</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.12.7.3" style="padding-left:0.0pt;padding-right:0.0pt;">52.41</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.12.7.4" style="padding-left:0.0pt;padding-right:0.0pt;">57.89</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.12.7.5" style="padding-left:0.0pt;padding-right:0.0pt;">51.39</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.12.7.6" style="padding-left:0.0pt;padding-right:0.0pt;">4.29</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.12.7.7" style="padding-left:0.0pt;padding-right:0.0pt;">3.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.12.7.8" style="padding-left:0.0pt;padding-right:0.0pt;">42.48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.12.7.9" style="padding-left:0.0pt;padding-right:0.0pt;">41.61</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.12.7.10" style="padding-left:0.0pt;padding-right:0.0pt;">56.62</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.12.7.11" style="padding-left:0.0pt;padding-right:0.0pt;">56.16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.12.7.12" style="padding-left:0.0pt;padding-right:0.0pt;">44.04</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.12.7.13" style="padding-left:0.0pt;padding-right:0.0pt;">43.51</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.12.7.14" style="padding-left:0.0pt;padding-right:0.0pt;">48.14</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.12.7.15" style="padding-left:0.0pt;padding-right:0.0pt;">44.33</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.13.8" style="background-color:#D9EDDF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.3.13.8.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.13.8.1.1" style="background-color:#D9EDDF;">+ DPO</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.13.8.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.13.8.2.1" style="background-color:#D9EDDF;">75.89</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.13.8.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.13.8.3.1" style="background-color:#D9EDDF;">51.53</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.13.8.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.13.8.4.1" style="background-color:#D9EDDF;">60.53</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.13.8.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.13.8.5.1" style="background-color:#D9EDDF;">45.25</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.13.8.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.13.8.6.1" style="background-color:#D9EDDF;">7.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.13.8.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.13.8.7.1" style="background-color:#D9EDDF;">4.62</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.13.8.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.13.8.8.1" style="background-color:#D9EDDF;">56.64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.13.8.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.13.8.9.1" style="background-color:#D9EDDF;">56.21</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.13.8.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.13.8.10.1" style="background-color:#D9EDDF;">65.44</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.13.8.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.13.8.11.1" style="background-color:#D9EDDF;">64.61</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.13.8.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.13.8.12.1" style="background-color:#D9EDDF;">63.30</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.13.8.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.13.8.13.1" style="background-color:#D9EDDF;">63.12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.13.8.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.13.8.14.1" style="background-color:#D9EDDF;">58.82</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.13.8.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.13.8.15.1" style="background-color:#D9EDDF;">51.23</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2" style="background-color:#D9EDDF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.2.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.1.1" style="background-color:#D9EDDF;">+ D<sup class="ltx_sup" id="S4.T2.2.2.2.1.1.1">2</sup>PO</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.2.1" style="background-color:#D9EDDF;">77.30</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.2.2.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.3.1" style="background-color:#D9EDDF;">58.98</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.2.2.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.4.1" style="background-color:#D9EDDF;">60.53</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.2.2.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.5.1" style="background-color:#D9EDDF;">49.30</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.2.2.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.6.1" style="background-color:#D9EDDF;">14.29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.2.2.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.7.1" style="background-color:#D9EDDF;">10.38</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.2.2.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.8.1" style="background-color:#D9EDDF;">60.18</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.2.2.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.9.1" style="background-color:#D9EDDF;">60.18</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.2.2.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.10.1" style="background-color:#D9EDDF;">69.12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.2.2.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.11.1" style="background-color:#D9EDDF;">68.90</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.2.2.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.12.1" style="background-color:#D9EDDF;">65.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.2.2.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.13.1" style="background-color:#D9EDDF;">64.46</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.2.2.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.14.1" style="background-color:#D9EDDF;">61.61</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.2.2.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.15.1" style="background-color:#D9EDDF;">55.78</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.14.9">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.14.9.1" style="padding-left:0.0pt;padding-right:0.0pt;">LLaMA-3.2 (11B)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.14.9.2" style="padding-left:0.0pt;padding-right:0.0pt;">12.06</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.14.9.3" style="padding-left:0.0pt;padding-right:0.0pt;">2.10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.14.9.4" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.14.9.5" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.14.9.6" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.14.9.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.14.9.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.14.9.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.14.9.10" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.14.9.11" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.14.9.12" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.14.9.13" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.14.9.14" style="padding-left:0.0pt;padding-right:0.0pt;">2.63</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.14.9.15" style="padding-left:0.0pt;padding-right:0.0pt;">0.46</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.15.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.3.15.10.1" style="padding-left:0.0pt;padding-right:0.0pt;">+ ICL</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.15.10.2" style="padding-left:0.0pt;padding-right:0.0pt;">9.22</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.15.10.3" style="padding-left:0.0pt;padding-right:0.0pt;">1.48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.15.10.4" style="padding-left:0.0pt;padding-right:0.0pt;">5.26</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.15.10.5" style="padding-left:0.0pt;padding-right:0.0pt;">0.83</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.15.10.6" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.15.10.7" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.15.10.8" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.15.10.9" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.15.10.10" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.15.10.11" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.15.10.12" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.15.10.13" style="padding-left:0.0pt;padding-right:0.0pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.15.10.14" style="padding-left:0.0pt;padding-right:0.0pt;">2.63</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.15.10.15" style="padding-left:0.0pt;padding-right:0.0pt;">0.42</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.16.11">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.3.16.11.1" style="padding-left:0.0pt;padding-right:0.0pt;">+ SFT</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.16.11.2" style="padding-left:0.0pt;padding-right:0.0pt;">70.92</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.16.11.3" style="padding-left:0.0pt;padding-right:0.0pt;">58.75</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.16.11.4" style="padding-left:0.0pt;padding-right:0.0pt;">53.95</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.16.11.5" style="padding-left:0.0pt;padding-right:0.0pt;">46.25</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.16.11.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.16.11.6.1">7.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.16.11.7" style="padding-left:0.0pt;padding-right:0.0pt;">4.61</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.16.11.8" style="padding-left:0.0pt;padding-right:0.0pt;">51.33</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.16.11.9" style="padding-left:0.0pt;padding-right:0.0pt;">50.02</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.16.11.10" style="padding-left:0.0pt;padding-right:0.0pt;">47.06</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.16.11.11" style="padding-left:0.0pt;padding-right:0.0pt;">46.85</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.16.11.12" style="padding-left:0.0pt;padding-right:0.0pt;">52.29</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.16.11.13" style="padding-left:0.0pt;padding-right:0.0pt;">50.81</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.16.11.14" style="padding-left:0.0pt;padding-right:0.0pt;">50.31</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.16.11.15" style="padding-left:0.0pt;padding-right:0.0pt;">46.02</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.17.12" style="background-color:#D9EDDF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.3.17.12.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.17.12.1.1" style="background-color:#D9EDDF;">+ DPO</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.17.12.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.17.12.2.1" style="background-color:#D9EDDF;">74.47</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.17.12.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.17.12.3.1" style="background-color:#D9EDDF;">61.40</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.17.12.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.17.12.4.1" style="background-color:#D9EDDF;">64.47</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.17.12.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.17.12.5.1" style="background-color:#D9EDDF;">54.16</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.17.12.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.17.12.6.1" style="background-color:#D9EDDF;">7.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.17.12.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.17.12.7.1" style="background-color:#D9EDDF;">5.63</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.17.12.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.17.12.8.1" style="background-color:#D9EDDF;">45.13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.17.12.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.17.12.9.1" style="background-color:#D9EDDF;">43.76</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.17.12.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.17.12.10.1" style="background-color:#D9EDDF;">51.47</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.17.12.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.17.12.11.1" style="background-color:#D9EDDF;">50.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.17.12.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.17.12.12.1" style="background-color:#D9EDDF;">53.21</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.17.12.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.17.12.13.1" style="background-color:#D9EDDF;">51.41</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.17.12.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.17.12.14.1" style="background-color:#D9EDDF;">52.32</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.3.3.17.12.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.17.12.15.1" style="background-color:#D9EDDF;">47.39</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3" style="background-color:#D9EDDF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.3.3.3.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.1.1" style="background-color:#D9EDDF;">+ D<sup class="ltx_sup" id="S4.T2.3.3.3.1.1.1">2</sup>PO</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.3.3.3.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.2.1" style="background-color:#D9EDDF;">82.27</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.3.3.3.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.3.1" style="background-color:#D9EDDF;">66.47</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.3.3.3.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.4.1" style="background-color:#D9EDDF;">64.47</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.3.3.3.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.5.1" style="background-color:#D9EDDF;">55.34</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.3.3.3.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.6.1" style="background-color:#D9EDDF;">7.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.3.3.3.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.7.1" style="background-color:#D9EDDF;">5.69</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.3.3.3.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.8.1" style="background-color:#D9EDDF;">53.10</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.3.3.3.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.9.1" style="background-color:#D9EDDF;">51.52</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.3.3.3.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.10.1" style="background-color:#D9EDDF;">58.09</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.3.3.3.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.11.1" style="background-color:#D9EDDF;">57.59</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.3.3.3.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.12.1" style="background-color:#D9EDDF;">57.80</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.3.3.3.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.13.1" style="background-color:#D9EDDF;">55.79</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.3.3.3.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.14.1" style="background-color:#D9EDDF;">57.59</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.3.3.3.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.15.1" style="background-color:#D9EDDF;">52.27</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the results of evaluating the generalization capabilities of different methods on unseen environments within the VoTa-Bench benchmark.  The table shows the success rate (SR) and path-length weighted success rate (PL) for each method on various tasks, broken down into categories such as Examine & Light, Pick & Place, etc.  The highest SR and PL scores for each model are bolded, and the results for the D²PO method (and its ablation DPO) are highlighted in green to emphasize its superior performance.  The 'Unseen' designation indicates that the models are tested on environments and tasks that they were not trained on, directly assessing their ability to generalize to novel situations.
> <details>
> <summary>read the caption</summary>
> Table 2: Generalization performance on VoTa-Bench (Unseen). Bold values indicate the highest performance within the same model, and our method (D²PO), including its ablation (DPO), are highlighted in green.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T3.1.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.3">SFT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.4">DPO</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1">D<sup class="ltx_sup" id="S5.T3.1.1.1.1">2</sup>PO</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.2.1.1">Dependency Error</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.1.2">212</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.1.3">157</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.1.4">141</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.3.2.1">Affordance Error</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.3.2.2">144</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.3.2.3">141</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.3.2.4">128</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.4.3.1">Inefficient Error</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.3.2">141</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.3.3">93</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.3.4">78</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.1.5.4.1">Others</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.5.4.2">20</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.5.4.3">16</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.5.4.4">17</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the different types of errors made by three distinct embodied task planning methods: Standard Fine-tuning (SFT), Direct Preference Optimization (DPO), and Dual Preference Optimization (D2PO).  It breaks down the number of occurrences of Dependency Errors, Affordance Errors, Inefficient Errors, and Other types of errors for each method. This allows for a comparison of the error profiles across methods, showing which method is more prone to each error category and to what extent.
> <details>
> <summary>read the caption</summary>
> Table 3: Distribution of error types across different methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.1" rowspan="2"><span class="ltx_text" id="A1.T4.1.1.1.1.1">Task Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A1.T4.1.1.1.2">Seen</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A1.T4.1.1.1.3">Unseen</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.4" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.1.4.1">
<span class="ltx_p" id="A1.T4.1.1.1.4.1.1" style="width:142.3pt;"><span class="ltx_text" id="A1.T4.1.1.1.4.1.1.1">Sample Instruction</span></span>
</span>
</th>
</tr>
<tr class="ltx_tr" id="A1.T4.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T4.1.2.2.1">Num</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T4.1.2.2.2">Avg Length</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T4.1.2.2.3">Num</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T4.1.2.2.4">Avg Length</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.3.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.3.1.1">Examine &amp; Light</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.3.1.2">72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.3.1.3">4.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.3.1.4">141</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.3.1.5">4.34</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T4.1.3.1.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.3.1.6.1">
<span class="ltx_p" id="A1.T4.1.3.1.6.1.1" style="width:142.3pt;">Examine a vase under a tall lamp</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.4.2">
<td class="ltx_td ltx_align_left" id="A1.T4.1.4.2.1">Pick &amp; Place</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.2.2">84</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.2.3">4.46</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.2.4">77</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.2.5">5.70</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.4.2.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.4.2.6.1">
<span class="ltx_p" id="A1.T4.1.4.2.6.1.1" style="width:142.3pt;">Put pencil on bureau top</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.5.3">
<td class="ltx_td ltx_align_left" id="A1.T4.1.5.3.1">Stack &amp; Place</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.5.3.2">48</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.5.3.3">10.60</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.5.3.4">70</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.5.3.5">8.49</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.5.3.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.5.3.6.1">
<span class="ltx_p" id="A1.T4.1.5.3.6.1.1" style="width:142.3pt;">Put a pot with a sponge in it in the sink.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.6.4">
<td class="ltx_td ltx_align_left" id="A1.T4.1.6.4.1">Clean &amp; Place</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.4.2">112</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.4.3">12.66</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.4.4">113</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.4.5">12.88</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.6.4.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.6.4.6.1">
<span class="ltx_p" id="A1.T4.1.6.4.6.1.1" style="width:142.3pt;">Put a cleaned washcloth away in a cabinet.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.7.5">
<td class="ltx_td ltx_align_left" id="A1.T4.1.7.5.1">Heat &amp; Place</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.5.2">107</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.5.3">18.35</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.5.4">136</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.5.5">17.38</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.7.5.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.7.5.6.1">
<span class="ltx_p" id="A1.T4.1.7.5.6.1.1" style="width:142.3pt;">To heat a potato slice and put it on the table by the spoon.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.8.6">
<td class="ltx_td ltx_align_left" id="A1.T4.1.8.6.1">Cool &amp; Place</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.8.6.2">126</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.8.6.3">15.48</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.8.6.4">109</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.8.6.5">14.48</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.8.6.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.8.6.6.1">
<span class="ltx_p" id="A1.T4.1.8.6.6.1.1" style="width:142.3pt;">Chill a knife and place a chilled slice of lettuce in a sink.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.9.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T4.1.9.7.1">Total</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.1.9.7.2">549</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.1.9.7.3">11.85</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.1.9.7.4">646</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.1.9.7.5">10.90</td>
<td class="ltx_td ltx_align_top ltx_border_bb ltx_border_t" id="A1.T4.1.9.7.6"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a detailed breakdown of the tasks included in the VoTa-Bench dataset, categorized into 'seen' and 'unseen' environments.  For each task type (Examine & Light, Pick & Place, etc.), it provides the number of samples and the average length of the action sequence required for completion.  Sample instructions are also given to clarify the nature of each task type and provide context for understanding the dataset's composition.
> <details>
> <summary>read the caption</summary>
> Table 4: Distribution of task types in VoTa-Bench. The dataset is divided into seen and unseen environments, with statistics showing the number of samples (Num) and average action sequence length (Avg Length) for each task type. Example instructions are provided to illustrate typical tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T5.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A3.T5.1.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.1.1.3">SFT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.1.1.4">DPO</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.1.1.1">D<sup class="ltx_sup" id="A3.T5.1.1.1.1">2</sup>PO</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T5.1.2.1.1">Dependency Error</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.2.1.2">212</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.2.1.3">157</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.2.1.4">141</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.3.2.1">Affordance Error</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.3.2.2">144</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.3.2.3">141</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.3.2.4">128</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.4.3.1">Inefficient Error</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.4.3.2">141</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.4.3.3">93</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.4.3.4">78</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A3.T5.1.5.4.1">Others</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.1.5.4.2">20</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.1.5.4.3">16</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.1.5.4.4">17</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of different error types encountered across three distinct embodied task planning methods: Standard Fine-Tuning (SFT), Direct Preference Optimization (DPO), and the proposed Dual Preference Optimization (D2PO).  It shows the frequency of each error category (Dependency Error, Affordance Error, Inefficient Error, and Others) for each method. This allows for a comparison of the relative success of each method in avoiding different types of errors, providing insight into their respective strengths and weaknesses in embodied task planning.
> <details>
> <summary>read the caption</summary>
> Table 5: Distribution of Error Types Across Different Methods
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10480/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10480/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}