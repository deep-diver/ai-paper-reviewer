---
title: "Dita: Scaling Diffusion Transformer for Generalist Vision-Language-Action Policy"
summary: "Dita: Scales a diffusion transformer for generalist robot policies, enabling 10-shot learning in complex, real-world tasks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Robotics", "🏢 Shanghai AI Lab",]
showSummary: true
date: 2025-03-25
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.19757 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhi Hou et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.19757" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.19757" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.19757/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent robot vision-language-action models show generalization, but action heads limit adaptability to diverse action spaces. **The models' reliance on compact action heads constrains adaptability to heterogeneous action spaces**. Addressing this, Dita introduces a framework for directly denoising continuous action sequences using a multimodal diffusion process. Dita leverages Transformer architectures to enhance scalability, integrating diverse datasets across sensors, tasks & action spaces. 



Unlike prior methods with shallow networks, **Dita uses in-context conditioning for fine-grained alignment between denoised actions & raw visual tokens**, modeling action deltas & environmental nuances. Evaluations show state-of-the-art performance in simulation & robust real-world adaptation with only 10-shot finetuning, making Dita a versatile & lightweight baseline for generalist robot policy learning.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Dita, a Diffusion Transformer, achieves strong performance by directly denoising continuous action sequences with in-context conditioning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The model exhibits strong zero-shot and few-shot generalization across diverse simulation benchmarks and real-world tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Dita uses a lightweight (334M parameters), open-source architecture, establishing a versatile baseline for generalist robot policy learning. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because **Dita streamlines robot learning with a simple, scalable architecture**, achieving strong results with minimal data and opening new possibilities for generalist robotic policies in complex environments.

------
#### Visual Insights



![](https://arxiv.org/html/2503.19757/x1.png)

> 🔼 Figure 1 illustrates three different approaches to building generalist robot policy architectures. The leftmost architecture represents traditional robot transformers that utilize discrete actions.  Examples include Robot Transformer and OpenVLA. The middle architecture shows a transformer with a diffusion action head. This approach denoises continuous actions using a small network conditioned on embeddings from a causal transformer.  Octo and  π0 are examples of this approach. The rightmost architecture is the proposed Dita architecture.  Dita denoises actions directly within the context of its conditioning.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustrations of different generalist robot policy architectures. Left head: the common robot Transformer architecture with discretization actions, e.g., Robot Transformer [8, 9] and OpenVLA [32]. Middle head: the Transformer architecture with diffusion action head which denoises the individual continuous action with a small network condition on each embedding from the causal Transformer, e.g., Octo [72] and π0subscript𝜋0\pi_{0}italic_π start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT [5]. Right head: the proposed Dita architecture that denoises actions inherently in an in-context conditioning style.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.2.2.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.2.2.2.3" rowspan="2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.3.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1" style="font-size:90%;">coke<math alttext="\_" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mi id="S4.T1.1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml">_</mi><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1">_</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">\_</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">_</annotation></semantics></math>can</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.2.2.2.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.2.1" style="font-size:90%;">move<math alttext="\_" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.2.1.m1.1a"><mi id="S4.T1.2.2.2.2.1.m1.1.1" mathvariant="normal" xref="S4.T1.2.2.2.2.1.m1.1.1.cmml">_</mi><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.1.m1.1b"><ci id="S4.T1.2.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.2.1.m1.1.1">_</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.1.m1.1c">\_</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.1.m1.1d">_</annotation></semantics></math>near</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.2.2.2.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.4.1" style="font-size:90%;">drawer</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.3.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T1.2.2.3.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.3.1.1.1" style="font-size:90%;">match</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T1.2.2.3.1.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.3.1.2.1" style="font-size:90%;">variant</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T1.2.2.3.1.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.3.1.3.1" style="font-size:90%;">match</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T1.2.2.3.1.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.3.1.4.1" style="font-size:90%;">variant</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T1.2.2.3.1.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.3.1.5.1" style="font-size:90%;">match</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T1.2.2.3.1.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.3.1.6.1" style="font-size:90%;">variant</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.2.4.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.2.2.4.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.2.4.1.1.1" style="font-size:90%;">RT-1-X </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.2.4.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="S4.T1.2.2.4.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.2.4.1.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.4.1.2.1" style="font-size:90%;">56.7%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.4.1.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.4.1.3.1" style="font-size:90%;">49.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.2.4.1.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.4.1.4.1" style="font-size:90%;">31.7%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.4.1.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.4.1.5.1" style="font-size:90%;">32.3%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.2.4.1.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.4.1.6.1" style="font-size:90%;">59.7%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.2.4.1.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.4.1.7.1" style="font-size:90%;">29.4%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.5.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.2.2.5.2.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.2.5.2.1.1" style="font-size:90%;">Octo-Base </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.2.5.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib72" title=""><span class="ltx_text" style="font-size:90%;">72</span></a><span class="ltx_text" id="S4.T1.2.2.5.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.5.2.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.5.2.2.1" style="font-size:90%;">17.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.2.2.5.2.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.5.2.3.1" style="font-size:90%;">0.6%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.5.2.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.5.2.4.1" style="font-size:90%;">4.2%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.2.2.5.2.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.5.2.5.1" style="font-size:90%;">3.1%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.5.2.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.5.2.6.1" style="font-size:90%;">22.7%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.5.2.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.5.2.7.1" style="font-size:90%;">1.1%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.6.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.2.2.6.3.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.2.6.3.1.1" style="font-size:90%;">OpenVLA-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.2.6.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S4.T1.2.2.6.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.6.3.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.6.3.2.1" style="font-size:90%;">16.3%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.2.2.6.3.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.6.3.3.1" style="font-size:90%;">54.5%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.6.3.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.6.3.4.1" style="font-size:90%;">46.2%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.2.2.6.3.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.6.3.5.1" style="font-size:90%;">47.7%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.6.3.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.6.3.6.1" style="font-size:90%;">35.6%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.2.6.3.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.6.3.7.1" style="font-size:90%;">17.7%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.7.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.2.2.7.4.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.7.4.1.1" style="font-size:90%;">Dita (Ours)</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.2.2.7.4.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.7.4.2.1" style="font-size:90%;">83.7%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.2.7.4.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.7.4.3.1" style="font-size:90%;">85.5%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.2.2.7.4.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.7.4.4.1" style="font-size:90%;">76.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.2.7.4.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.7.4.5.1" style="font-size:90%;">73.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.2.2.7.4.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T1.2.2.7.4.6.1" style="font-size:90%;">46.3%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.2.2.7.4.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.7.4.7.1" style="font-size:90%;">37.5%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of success rates achieved by four different methods (RT-1-X, Octo-Base, OpenVLA-7B, and Dita) on the SimplerEnv benchmark.  SimplerEnv tests robot control policies across a set of tasks. The table shows results for both 'match' and 'variant' versions of the Google Robot tasks. The 'match' versions represent tasks performed under standard conditions, whereas the 'variant' versions involve changes to task parameters, adding to the challenge.  This allows for an assessment of how well each method generalizes to slightly different, more realistic situations.
> <details>
> <summary>read the caption</summary>
> Table 1: Success rate comparison with RT-1-X [8], Octo-Base [72] and OpenVLA-7B [32] on SimplerEnv (both match and variant results of Google Robot [8]).
> </details>





### In-depth insights


#### In-Context DiT
**In-Context Diffusion Transformers (DiT)** represent a paradigm shift in robot learning, moving beyond traditional methods by leveraging the power of Transformer architectures for direct action sequence denoising. Unlike prior approaches that rely on shallow networks for conditioning denoising, In-Context DiT emphasizes **fine-grained alignment between denoised actions and raw visual tokens from historical observations**. This explicit modeling of action deltas and environmental nuances allows the model to effectively capture subtle relationships, resulting in improved robustness and adaptability. It offers a pathway to create versatile robot policies capable of excelling across diverse tasks and environmental settings.

#### Cross-Embodiment
**Cross-embodiment** is a critical challenge in robotics, demanding that a policy trained on one robot can effectively control others. This often involves adapting to different **kinematics**, **actuation methods**, and **sensor suites**. A key approach is to learn **invariant representations** of tasks and environments that are independent of the specific robot.  **Domain adaptation techniques** can further bridge the gap between simulated and real robots. Successfully tackling cross-embodiment leads to more **generalizable** and **robust** robotic systems, capable of quickly adapting to new platforms and tasks.  **Data augmentation** and **transfer learning** also play a vital role in cross-embodiment strategies.

#### Long-Horizon Tasks
**Long-horizon tasks** in robotics present a significant challenge, demanding robust planning and execution over extended timeframes. These tasks often require intricate sequences of actions, such as those described in the paper involving opening drawers, manipulating objects, and achieving complex arrangements. The difficulty lies in maintaining accuracy and stability throughout the entire process, as errors accumulate and can derail the task. Successfully tackling long-horizon tasks necessitates models with strong memory, reasoning, and error-correction capabilities. Furthermore, robustness to environmental variations and unexpected events is crucial for reliable performance. The paper highlights the importance of addressing these challenges to enable robots to perform more complex and useful tasks in real-world scenarios. One key aspect involves effectively modeling action deltas and environmental nuances. This is critical for anticipating and adapting to changes during task execution. Success is related to model's ability to manage intricate, extended-horizon tasks, demonstrating its ability to generalize.

#### Camera Generalize
While the term "Camera Generalize" isn't explicitly present, the paper strongly emphasizes **robustness to novel camera views** as a critical aspect of generalist robot policies. The ManiSkill2 benchmark is used to evaluate performance with 300K random cameras, where Dita consistently exhibits **superior performance** compared to baselines. This implies the model effectively extracts viewpoint-invariant features, likely through techniques like data augmentation with varied camera perspectives during training or architectural designs inherently robust to viewpoint changes. The ability to generalize across camera views is crucial for real-world deployment, where the robot's viewpoint may differ significantly from the training data. Further exploration into how Dita achieves this robustness, perhaps by analyzing its feature representations or attention patterns, would be valuable for understanding and improving generalization capabilities.

#### Scalable VLAs
The concept of "Scalable VLAs" (Vision-Language-Action models) underscores a critical need in robotics and AI: the ability to generalize learned behaviors across diverse environments, robots, and tasks. **Scalability in VLAs implies several key attributes**: the model's capacity to handle increasing amounts of data without performance degradation, its adaptability to new robotic platforms with varying action spaces, and its robustness to different sensory inputs (camera views, lighting). Achieving this necessitates architectures that can efficiently integrate information from visual and linguistic modalities. **Furthermore, a scalable VLA should exhibit few-shot or zero-shot transfer learning capabilities**, enabling rapid adaptation to novel tasks with minimal task-specific training. This often involves pre-training on large, diverse datasets and employing techniques like meta-learning or domain adaptation to bridge the gap between training and deployment environments.  Ultimately, **the goal is to create a VLA that can serve as a general-purpose robot controller**, capable of performing a wide range of tasks in unstructured, real-world settings.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.19757/x2.png)

> 🔼 This figure illustrates the architecture of Dita, a Transformer-based diffusion model for generalist robotic learning.  Language instructions are processed by a pretrained CLIP model to generate instruction tokens.  Image observations are encoded using a pretrained DINOv2 model, and a Q-Former network selects relevant image features based on the instruction context.  These instruction tokens, image features, timestep embeddings, and a noised version of the action are concatenated into a single sequence. This sequence is then fed into a causal Transformer network, which denoises the action sequence to generate the final, refined action.
> <details>
> <summary>read the caption</summary>
> Figure 2: Our model employs a Transformer-based diffusion architecture, integrating a pretrained CLIP network to extract language instruction tokens. The DinoV2 [53] model encodes image observations, followed by a Q-Former that queries features for each image. The instruction tokens, image features, timestep embeddings, and noised action are concatenated to construct a token sequence, which is then fed into the network to denoise the raw actions.
> </details>



![](https://arxiv.org/html/2503.19757/x3.png)

> 🔼 The figure shows the experimental setup used for the real-robot experiments.  It consists of a Franka Emika Panda robot arm equipped with a Robotiq 2F-85 gripper. A RealSense D435i depth camera is positioned to provide a third-person view of the robot's workspace, capturing RGB-D images during the experiments. This setup enables the robot to perform various manipulation tasks while the camera provides visual input for the vision-language-action model.
> <details>
> <summary>read the caption</summary>
> Figure 3: The experimental platform consists of Franka Emika Panda robot arm, Robotiq 2F-85 gripper and RealSense D435i positioned in third-person view.
> </details>



![](https://arxiv.org/html/2503.19757/x4.png)

> 🔼 This figure presents quantitative results from real-robot experiments evaluating the success rate of different tasks. Each task is broken down into two sequential steps (except for the last two, which are single-step). The stacked bars visualize the success rate: the light-colored portion shows the first-stage success, and the dark-colored portion represents the contribution of the second stage to the overall success. A larger dark-colored area indicates better performance on long-horizon tasks. Single-step tasks (opening/closing drawers) are excluded from the average success rate calculation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Quantitative results in real-robot experiments. Each task is manually divided into two sequential steps, except for the last two single-step tasks. In each stacked bar, the light-colored region represents the model’s success rate in the first stage, while the dark-colored region indicates the contribution of second-stage success to the overall success rate. A larger proportion of the dark-colored region signifies a stronger capability of the model in completing long-horizon tasks. Since the open/close drawer tasks are single-step, they are excluded from the calculation of the average success rate.
> </details>



![](https://arxiv.org/html/2503.19757/x5.png)

> 🔼 This figure presents a qualitative comparison of Dita's performance against other methods (Octo, OpenVLA, and a diffusion head policy baseline) in real-world robotic experiments.  The image shows the results of several trials, with failures indicated by red circles. Notably, all methods started from the same initial setup, providing a direct visual comparison of their ability to successfully complete a series of manipulation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparison in real-robot experiments. Failures are highlighted with red circles. For a direct comparison, we initialize the layout consistently across all methods.
> </details>



![](https://arxiv.org/html/2503.19757/x6.png)

> 🔼 This figure showcases the robustness of the Dita model across various challenging conditions.  It presents qualitative results demonstrating the model's ability to successfully complete tasks even with changes in background, object arrangements, and lighting.  Each row represents a different task performed by the robot under these varied conditions, visually demonstrating the model's generalizability and resilience.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative results of Dita under variances in Google Robot.
> </details>



![](https://arxiv.org/html/2503.19757/x7.png)

> 🔼 This figure showcases qualitative results obtained by Dita on the LIBERO benchmark.  It provides a visual comparison of Dita's performance across various tasks within the LIBERO dataset, illustrating the model's ability to handle diverse scenarios and object interactions. The images likely demonstrate successful and unsuccessful attempts at completing tasks, highlighting Dita's strengths and weaknesses in different contexts.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative results of Dita on LIBERO benchmark.
> </details>



![](https://arxiv.org/html/2503.19757/x8.png)

> 🔼 This figure showcases qualitative results from the CALVIN ABC→D benchmark, demonstrating the performance of the Dita model on long-horizon tasks.  Each row represents a distinct task, illustrating the model's ability to successfully complete complex sequences of actions. The images depict both successful and failed attempts, offering a visual comparison of Dita's capabilities and robustness across a range of manipulations.
> <details>
> <summary>read the caption</summary>
> Figure 8: Qualitative results of Dita on CALVIN ABC→→\rightarrow→D benchmark.
> </details>



![](https://arxiv.org/html/2503.19757/x9.png)

> 🔼 This figure presents a qualitative comparison of the performance of the proposed Dita model and a baseline diffusion action head model on the ManiSkill2 benchmark's PickClutterYCB task. It visually showcases the results, allowing for a direct comparison of the model's ability to successfully complete the task.  The top row illustrates Dita's execution, while the bottom row displays the results of the baseline diffusion action head model.  This comparison highlights the differences in the approach taken by each model to complete the task and the resulting successes and failures.
> <details>
> <summary>read the caption</summary>
> Figure 9: Qualitative comparison between Dita (top) and Diffusion Action Head baseline ℰθ∼sD⁢i⁢f⁢fsuperscriptsubscriptℰsimilar-to𝜃𝑠𝐷𝑖𝑓𝑓\mathcal{E}_{\theta\sim s}^{Diff}caligraphic_E start_POSTSUBSCRIPT italic_θ ∼ italic_s end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_D italic_i italic_f italic_f end_POSTSUPERSCRIPT (bottom) on ManiSkill2 (PickClutterYCB).
> </details>



![](https://arxiv.org/html/2503.19757/extracted/6301744/ICLR2025/convergen_analysis.jpg)

> 🔼 This figure displays a comparison of the convergence speed between two different approaches for training a robot policy: the DiT (Diffusion Transformer) Policy and a simpler Diffusion Action Head strategy.  Both methods were trained on the OXE dataset and used the same number of parameters for a fair comparison.  The x-axis represents the training steps, while the y-axis shows the MSE (Mean Squared Error) loss, a measure of the model's error during training.  The blue line illustrates the convergence of the DiT Policy, and the orange line shows the convergence of the Diffusion Action Head strategy. The graph visually demonstrates that the DiT Policy converges faster and achieves a lower MSE loss than the Diffusion Action Head approach.
> <details>
> <summary>read the caption</summary>
> Figure 10: Convergence Analysis on OXE dataset [9]. The blue line is DiT Policy, and the orange line is Diffusion action head strategy with the same number of parameters.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.4.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.4.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.1.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.2.1" style="font-size:90%;">SPATIAL</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.3.1" style="font-size:90%;">OBJECT</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.4.1" style="font-size:90%;">GOAL</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.4.1.1.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.5.1" style="font-size:90%;">LONG</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.1.6.1" style="font-size:90%;">Averge</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.4.2.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.4.2.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T2.4.2.1.1.1" style="font-size:90%;">DP*</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.2.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a><span class="ltx_text" id="S4.T2.4.2.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.4.2.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.4.2.1.2.1" style="font-size:90%;">78.3%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.4.2.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.4.2.1.3.1" style="font-size:90%;">92.5%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.4.2.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.4.2.1.4.1" style="font-size:90%;">68.3%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.2.1.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.4.2.1.5.1" style="font-size:90%;">50.5%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.4.2.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.4.2.1.6.1" style="font-size:90%;">72.4%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.3.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.3.2.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T2.4.3.2.1.1" style="font-size:90%;">Octo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.3.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib72" title=""><span class="ltx_text" style="font-size:90%;">72</span></a><span class="ltx_text" id="S4.T2.4.3.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.4.3.2.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.4.3.2.2.1" style="font-size:90%;">78.9%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.4.3.2.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.4.3.2.3.1" style="font-size:90%;">85.7%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.4.3.2.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.4.3.2.4.1" style="font-size:90%;">84.6%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.4.3.2.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.4.3.2.5.1" style="font-size:90%;">51.1%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.4.3.2.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.4.3.2.6.1" style="font-size:90%;">75.1%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.4.3.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T2.4.4.3.1.1" style="font-size:90%;">OpenVLA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.4.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S4.T2.4.4.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.4.4.3.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.3.2.1" style="font-size:90%;">84.9%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.4.4.3.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.4.4.3.3.1" style="font-size:90%;">88.4%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.4.4.3.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.4.4.3.4.1" style="font-size:90%;">79.2%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.4.4.3.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.4.4.3.5.1" style="font-size:90%;">53.7%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.4.4.3.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.4.4.3.6.1" style="font-size:90%;">76.5%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.5.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.4.5.4.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.4.5.4.1.1" style="font-size:90%;">Dita (Ours)</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.4.5.4.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.4.5.4.2.1" style="font-size:90%;">84.2%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.4.5.4.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.5.4.3.1" style="font-size:90%;">96.3%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.4.5.4.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.5.4.4.1" style="font-size:90%;">85.4%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.4.5.4.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.5.4.5.1" style="font-size:90%;">63.8%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.4.5.4.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.5.4.6.1" style="font-size:90%;">82.4%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of Dita against three other methods (Diffusion Policy, Octo, and OpenVLA) on the LIBERO benchmark.  It focuses on four key aspects of robotic tasks within LIBERO: spatial reasoning, object manipulation, goal achievement, and long-horizon tasks. The results highlight Dita's superior performance, particularly in long-horizon tasks which involve a sequence of actions.  All results (except for Dita) are taken directly from the OpenVLA paper, ensuring consistency and facilitating direct comparison.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison with Diffusion Policy (denoted as DP*, training from scratch) [17], Octo [72], and OpenVLA [32] on LIBERO [40]. Except for Dita results, all other results are sourced from [32].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.4.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.4.3.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.3.1.1.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.4.3.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.3.1.2.1" style="font-size:90%;">Input</span></th>
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_tt" colspan="6" id="S4.T3.4.3.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.3.1.3.1" style="font-size:90%;">No. Instructions in a Row (1000 chains)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.2.1"><span class="ltx_text" id="S4.T3.4.4.2.1.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.2.2"><span class="ltx_text" id="S4.T3.4.4.2.2.1" style="font-size:90%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.2.3"><span class="ltx_text" id="S4.T3.4.4.2.3.1" style="font-size:90%;">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.2.4"><span class="ltx_text" id="S4.T3.4.4.2.4.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.4.4.2.5"><span class="ltx_text" id="S4.T3.4.4.2.5.1" style="font-size:90%;">5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.2.6"><span class="ltx_text" id="S4.T3.4.4.2.6.1" style="font-size:90%;">Avg.Len.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.4.5.3.1">
<span class="ltx_text" id="S4.T3.4.5.3.1.1" style="font-size:90%;">RoboFlamingo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.5.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S4.T3.4.5.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.4.5.3.2"><span class="ltx_text" id="S4.T3.4.5.3.2.1" style="font-size:90%;">S-RGB,G-RGB</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.3.3"><span class="ltx_text" id="S4.T3.4.5.3.3.1" style="font-size:90%;">82.4%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.3.4"><span class="ltx_text" id="S4.T3.4.5.3.4.1" style="font-size:90%;">61.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.3.5"><span class="ltx_text" id="S4.T3.4.5.3.5.1" style="font-size:90%;">46.6%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.3.6"><span class="ltx_text" id="S4.T3.4.5.3.6.1" style="font-size:90%;">33.1%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.4.5.3.7"><span class="ltx_text" id="S4.T3.4.5.3.7.1" style="font-size:90%;">23.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.3.8"><span class="ltx_text" id="S4.T3.4.5.3.8.1" style="font-size:90%;">2.47</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.4.6.4.1">
<span class="ltx_text" id="S4.T3.4.6.4.1.1" style="font-size:90%;">GR-1 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.6.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib78" title=""><span class="ltx_text" style="font-size:90%;">78</span></a><span class="ltx_text" id="S4.T3.4.6.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.4.6.4.2"><span class="ltx_text" id="S4.T3.4.6.4.2.1" style="font-size:90%;">S-RGB,G-RGB,P</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.4.3"><span class="ltx_text" id="S4.T3.4.6.4.3.1" style="font-size:90%;">85.4%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.4.4"><span class="ltx_text" id="S4.T3.4.6.4.4.1" style="font-size:90%;">71.2%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.4.5"><span class="ltx_text" id="S4.T3.4.6.4.5.1" style="font-size:90%;">59.6%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.4.6"><span class="ltx_text" id="S4.T3.4.6.4.6.1" style="font-size:90%;">49.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.4.6.4.7"><span class="ltx_text" id="S4.T3.4.6.4.7.1" style="font-size:90%;">40.1%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.4.8"><span class="ltx_text" id="S4.T3.4.6.4.8.1" style="font-size:90%;">3.06</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.7.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.4.7.5.1">
<span class="ltx_text" id="S4.T3.4.7.5.1.1" style="font-size:90%;">3D Diffuser </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.7.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="S4.T3.4.7.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.4.7.5.2"><span class="ltx_text" id="S4.T3.4.7.5.2.1" style="font-size:90%;">S-RGBD,G-RGBD,P,Cam</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.5.3"><span class="ltx_text" id="S4.T3.4.7.5.3.1" style="font-size:90%;">92.2%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.5.4"><span class="ltx_text" id="S4.T3.4.7.5.4.1" style="font-size:90%;">78.7%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.5.5"><span class="ltx_text" id="S4.T3.4.7.5.5.1" style="font-size:90%;">63.9%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.5.6"><span class="ltx_text" id="S4.T3.4.7.5.6.1" style="font-size:90%;">51.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.4.7.5.7"><span class="ltx_text" id="S4.T3.4.7.5.7.1" style="font-size:90%;">41.2%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.5.8"><span class="ltx_text" id="S4.T3.4.7.5.8.1" style="font-size:90%;">3.27</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.8.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.4.8.6.1">
<span class="ltx_text" id="S4.T3.4.8.6.1.1" style="font-size:90%;">GR-MG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.8.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="S4.T3.4.8.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.4.8.6.2"><span class="ltx_text" id="S4.T3.4.8.6.2.1" style="font-size:90%;">S-RGBD,G-RGBD,P</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.6.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.8.6.3.1" style="font-size:90%;">96.8%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.6.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.8.6.4.1" style="font-size:90%;">89.3%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.6.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.8.6.5.1" style="font-size:90%;">81.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.6.6">
<span class="ltx_text ltx_font_bold" id="S4.T3.4.8.6.6.1" style="font-size:90%;">72.7</span><span class="ltx_text" id="S4.T3.4.8.6.6.2" style="font-size:90%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.4.8.6.7">
<span class="ltx_text ltx_font_bold" id="S4.T3.4.8.6.7.1" style="font-size:90%;">64.4</span><span class="ltx_text" id="S4.T3.4.8.6.7.2" style="font-size:90%;"> %</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.6.8"><span class="ltx_text ltx_font_bold" id="S4.T3.4.8.6.8.1" style="font-size:90%;">4.04</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.9.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.4.9.7.1">
<span class="ltx_text" id="S4.T3.4.9.7.1.1" style="font-size:90%;">SuSIE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.9.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a><span class="ltx_text" id="S4.T3.4.9.7.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.4.9.7.2"><span class="ltx_text" id="S4.T3.4.9.7.2.1" style="font-size:90%;">S-RGB</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.9.7.3"><span class="ltx_text" id="S4.T3.4.9.7.3.1" style="font-size:90%;">87.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.9.7.4"><span class="ltx_text" id="S4.T3.4.9.7.4.1" style="font-size:90%;">69.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.9.7.5"><span class="ltx_text" id="S4.T3.4.9.7.5.1" style="font-size:90%;">49.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.9.7.6"><span class="ltx_text" id="S4.T3.4.9.7.6.1" style="font-size:90%;">38.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.4.9.7.7"><span class="ltx_text" id="S4.T3.4.9.7.7.1" style="font-size:90%;">26.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.9.7.8"><span class="ltx_text" id="S4.T3.4.9.7.8.1" style="font-size:90%;">2.69</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.10.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.4.10.8.1">
<span class="ltx_text" id="S4.T3.4.10.8.1.1" style="font-size:90%;">GHIL-Glue </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.10.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a><span class="ltx_text" id="S4.T3.4.10.8.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.4.10.8.2"><span class="ltx_text" id="S4.T3.4.10.8.2.1" style="font-size:90%;">S-RGB</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.8.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.10.8.3.1" style="font-size:90%;">95.2%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.8.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.10.8.4.1" style="font-size:90%;">88.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.8.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.10.8.5.1" style="font-size:90%;">73.2%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.8.6"><span class="ltx_text ltx_font_bold" id="S4.T3.4.10.8.6.1" style="font-size:90%;">62.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.4.10.8.7"><span class="ltx_text ltx_font_bold" id="S4.T3.4.10.8.7.1" style="font-size:90%;">49.8%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.8.8"><span class="ltx_text ltx_font_bold" id="S4.T3.4.10.8.8.1" style="font-size:90%;">3.69</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.3.1.1">
<math alttext="\mathcal{E}_{\theta\sim s}^{Diff}" class="ltx_Math" display="inline" id="S4.T3.3.1.1.m1.1"><semantics id="S4.T3.3.1.1.m1.1a"><msubsup id="S4.T3.3.1.1.m1.1.1" xref="S4.T3.3.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.3.1.1.m1.1.1.2.2" mathsize="90%" xref="S4.T3.3.1.1.m1.1.1.2.2.cmml">ℰ</mi><mrow id="S4.T3.3.1.1.m1.1.1.2.3" xref="S4.T3.3.1.1.m1.1.1.2.3.cmml"><mi id="S4.T3.3.1.1.m1.1.1.2.3.2" mathsize="90%" xref="S4.T3.3.1.1.m1.1.1.2.3.2.cmml">θ</mi><mo id="S4.T3.3.1.1.m1.1.1.2.3.1" mathsize="90%" xref="S4.T3.3.1.1.m1.1.1.2.3.1.cmml">∼</mo><mi id="S4.T3.3.1.1.m1.1.1.2.3.3" mathsize="90%" xref="S4.T3.3.1.1.m1.1.1.2.3.3.cmml">s</mi></mrow><mrow id="S4.T3.3.1.1.m1.1.1.3" xref="S4.T3.3.1.1.m1.1.1.3.cmml"><mi id="S4.T3.3.1.1.m1.1.1.3.2" mathsize="90%" xref="S4.T3.3.1.1.m1.1.1.3.2.cmml">D</mi><mo id="S4.T3.3.1.1.m1.1.1.3.1" xref="S4.T3.3.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T3.3.1.1.m1.1.1.3.3" mathsize="90%" xref="S4.T3.3.1.1.m1.1.1.3.3.cmml">i</mi><mo id="S4.T3.3.1.1.m1.1.1.3.1a" xref="S4.T3.3.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T3.3.1.1.m1.1.1.3.4" mathsize="90%" xref="S4.T3.3.1.1.m1.1.1.3.4.cmml">f</mi><mo id="S4.T3.3.1.1.m1.1.1.3.1b" xref="S4.T3.3.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T3.3.1.1.m1.1.1.3.5" mathsize="90%" xref="S4.T3.3.1.1.m1.1.1.3.5.cmml">f</mi></mrow></msubsup><annotation-xml encoding="MathML-Content" id="S4.T3.3.1.1.m1.1b"><apply id="S4.T3.3.1.1.m1.1.1.cmml" xref="S4.T3.3.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.3.1.1.m1.1.1.1.cmml" xref="S4.T3.3.1.1.m1.1.1">superscript</csymbol><apply id="S4.T3.3.1.1.m1.1.1.2.cmml" xref="S4.T3.3.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.3.1.1.m1.1.1.2.1.cmml" xref="S4.T3.3.1.1.m1.1.1">subscript</csymbol><ci id="S4.T3.3.1.1.m1.1.1.2.2.cmml" xref="S4.T3.3.1.1.m1.1.1.2.2">ℰ</ci><apply id="S4.T3.3.1.1.m1.1.1.2.3.cmml" xref="S4.T3.3.1.1.m1.1.1.2.3"><csymbol cd="latexml" id="S4.T3.3.1.1.m1.1.1.2.3.1.cmml" xref="S4.T3.3.1.1.m1.1.1.2.3.1">similar-to</csymbol><ci id="S4.T3.3.1.1.m1.1.1.2.3.2.cmml" xref="S4.T3.3.1.1.m1.1.1.2.3.2">𝜃</ci><ci id="S4.T3.3.1.1.m1.1.1.2.3.3.cmml" xref="S4.T3.3.1.1.m1.1.1.2.3.3">𝑠</ci></apply></apply><apply id="S4.T3.3.1.1.m1.1.1.3.cmml" xref="S4.T3.3.1.1.m1.1.1.3"><times id="S4.T3.3.1.1.m1.1.1.3.1.cmml" xref="S4.T3.3.1.1.m1.1.1.3.1"></times><ci id="S4.T3.3.1.1.m1.1.1.3.2.cmml" xref="S4.T3.3.1.1.m1.1.1.3.2">𝐷</ci><ci id="S4.T3.3.1.1.m1.1.1.3.3.cmml" xref="S4.T3.3.1.1.m1.1.1.3.3">𝑖</ci><ci id="S4.T3.3.1.1.m1.1.1.3.4.cmml" xref="S4.T3.3.1.1.m1.1.1.3.4">𝑓</ci><ci id="S4.T3.3.1.1.m1.1.1.3.5.cmml" xref="S4.T3.3.1.1.m1.1.1.3.5">𝑓</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.1.1.m1.1c">\mathcal{E}_{\theta\sim s}^{Diff}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.1.1.m1.1d">caligraphic_E start_POSTSUBSCRIPT italic_θ ∼ italic_s end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_D italic_i italic_f italic_f end_POSTSUPERSCRIPT</annotation></semantics></math><span class="ltx_text" id="S4.T3.3.1.1.1" style="font-size:90%;"> w/o Pretrain</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.3.1.2"><span class="ltx_text" id="S4.T3.3.1.2.1" style="font-size:90%;">S-RGB</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3"><span class="ltx_text" id="S4.T3.3.1.3.1" style="font-size:90%;">75.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.4"><span class="ltx_text" id="S4.T3.3.1.4.1" style="font-size:90%;">44.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.5"><span class="ltx_text" id="S4.T3.3.1.5.1" style="font-size:90%;">25.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.6"><span class="ltx_text" id="S4.T3.3.1.6.1" style="font-size:90%;">15.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.3.1.7"><span class="ltx_text" id="S4.T3.3.1.7.1" style="font-size:90%;">7.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.8"><span class="ltx_text" id="S4.T3.3.1.8.1" style="font-size:90%;">1.68</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.4.2.1"><math alttext="\mathcal{E}_{\theta\sim s}^{Diff}" class="ltx_Math" display="inline" id="S4.T3.4.2.1.m1.1"><semantics id="S4.T3.4.2.1.m1.1a"><msubsup id="S4.T3.4.2.1.m1.1.1" xref="S4.T3.4.2.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.4.2.1.m1.1.1.2.2" mathsize="90%" xref="S4.T3.4.2.1.m1.1.1.2.2.cmml">ℰ</mi><mrow id="S4.T3.4.2.1.m1.1.1.2.3" xref="S4.T3.4.2.1.m1.1.1.2.3.cmml"><mi id="S4.T3.4.2.1.m1.1.1.2.3.2" mathsize="90%" xref="S4.T3.4.2.1.m1.1.1.2.3.2.cmml">θ</mi><mo id="S4.T3.4.2.1.m1.1.1.2.3.1" mathsize="90%" xref="S4.T3.4.2.1.m1.1.1.2.3.1.cmml">∼</mo><mi id="S4.T3.4.2.1.m1.1.1.2.3.3" mathsize="90%" xref="S4.T3.4.2.1.m1.1.1.2.3.3.cmml">s</mi></mrow><mrow id="S4.T3.4.2.1.m1.1.1.3" xref="S4.T3.4.2.1.m1.1.1.3.cmml"><mi id="S4.T3.4.2.1.m1.1.1.3.2" mathsize="90%" xref="S4.T3.4.2.1.m1.1.1.3.2.cmml">D</mi><mo id="S4.T3.4.2.1.m1.1.1.3.1" xref="S4.T3.4.2.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T3.4.2.1.m1.1.1.3.3" mathsize="90%" xref="S4.T3.4.2.1.m1.1.1.3.3.cmml">i</mi><mo id="S4.T3.4.2.1.m1.1.1.3.1a" xref="S4.T3.4.2.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T3.4.2.1.m1.1.1.3.4" mathsize="90%" xref="S4.T3.4.2.1.m1.1.1.3.4.cmml">f</mi><mo id="S4.T3.4.2.1.m1.1.1.3.1b" xref="S4.T3.4.2.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T3.4.2.1.m1.1.1.3.5" mathsize="90%" xref="S4.T3.4.2.1.m1.1.1.3.5.cmml">f</mi></mrow></msubsup><annotation-xml encoding="MathML-Content" id="S4.T3.4.2.1.m1.1b"><apply id="S4.T3.4.2.1.m1.1.1.cmml" xref="S4.T3.4.2.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.4.2.1.m1.1.1.1.cmml" xref="S4.T3.4.2.1.m1.1.1">superscript</csymbol><apply id="S4.T3.4.2.1.m1.1.1.2.cmml" xref="S4.T3.4.2.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.4.2.1.m1.1.1.2.1.cmml" xref="S4.T3.4.2.1.m1.1.1">subscript</csymbol><ci id="S4.T3.4.2.1.m1.1.1.2.2.cmml" xref="S4.T3.4.2.1.m1.1.1.2.2">ℰ</ci><apply id="S4.T3.4.2.1.m1.1.1.2.3.cmml" xref="S4.T3.4.2.1.m1.1.1.2.3"><csymbol cd="latexml" id="S4.T3.4.2.1.m1.1.1.2.3.1.cmml" xref="S4.T3.4.2.1.m1.1.1.2.3.1">similar-to</csymbol><ci id="S4.T3.4.2.1.m1.1.1.2.3.2.cmml" xref="S4.T3.4.2.1.m1.1.1.2.3.2">𝜃</ci><ci id="S4.T3.4.2.1.m1.1.1.2.3.3.cmml" xref="S4.T3.4.2.1.m1.1.1.2.3.3">𝑠</ci></apply></apply><apply id="S4.T3.4.2.1.m1.1.1.3.cmml" xref="S4.T3.4.2.1.m1.1.1.3"><times id="S4.T3.4.2.1.m1.1.1.3.1.cmml" xref="S4.T3.4.2.1.m1.1.1.3.1"></times><ci id="S4.T3.4.2.1.m1.1.1.3.2.cmml" xref="S4.T3.4.2.1.m1.1.1.3.2">𝐷</ci><ci id="S4.T3.4.2.1.m1.1.1.3.3.cmml" xref="S4.T3.4.2.1.m1.1.1.3.3">𝑖</ci><ci id="S4.T3.4.2.1.m1.1.1.3.4.cmml" xref="S4.T3.4.2.1.m1.1.1.3.4">𝑓</ci><ci id="S4.T3.4.2.1.m1.1.1.3.5.cmml" xref="S4.T3.4.2.1.m1.1.1.3.5">𝑓</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.2.1.m1.1c">\mathcal{E}_{\theta\sim s}^{Diff}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.2.1.m1.1d">caligraphic_E start_POSTSUBSCRIPT italic_θ ∼ italic_s end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_D italic_i italic_f italic_f end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.4.2.2"><span class="ltx_text" id="S4.T3.4.2.2.1" style="font-size:90%;">S-RGB</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.3"><span class="ltx_text" id="S4.T3.4.2.3.1" style="font-size:90%;">94.3%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4"><span class="ltx_text" id="S4.T3.4.2.4.1" style="font-size:90%;">77.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.5"><span class="ltx_text" id="S4.T3.4.2.5.1" style="font-size:90%;">62.0%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.6"><span class="ltx_text" id="S4.T3.4.2.6.1" style="font-size:90%;">48.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.4.2.7"><span class="ltx_text" id="S4.T3.4.2.7.1" style="font-size:90%;">34.0%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.8"><span class="ltx_text" id="S4.T3.4.2.8.1" style="font-size:90%;">3.16</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.11.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.4.11.9.1"><span class="ltx_text" id="S4.T3.4.11.9.1.1" style="font-size:90%;">Ours w/o Pretrain</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.4.11.9.2"><span class="ltx_text" id="S4.T3.4.11.9.2.1" style="font-size:90%;">S-RGB</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.11.9.3"><span class="ltx_text" id="S4.T3.4.11.9.3.1" style="font-size:90%;">89.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.11.9.4"><span class="ltx_text" id="S4.T3.4.11.9.4.1" style="font-size:90%;">63.3%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.11.9.5"><span class="ltx_text" id="S4.T3.4.11.9.5.1" style="font-size:90%;">39.8%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.11.9.6"><span class="ltx_text" id="S4.T3.4.11.9.6.1" style="font-size:90%;">27.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.4.11.9.7"><span class="ltx_text" id="S4.T3.4.11.9.7.1" style="font-size:90%;">18.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.11.9.8"><span class="ltx_text" id="S4.T3.4.11.9.8.1" style="font-size:90%;">2.38</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.12.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.4.12.10.1"><span class="ltx_text" id="S4.T3.4.12.10.1.1" style="font-size:90%;">Ours</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.4.12.10.2"><span class="ltx_text" id="S4.T3.4.12.10.2.1" style="font-size:90%;">S-RGB</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.12.10.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.12.10.3.1" style="font-size:90%;">94.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.12.10.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.12.10.4.1" style="font-size:90%;">82.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.12.10.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.12.10.5.1" style="font-size:90%;">72.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.12.10.6"><span class="ltx_text ltx_font_bold" id="S4.T3.4.12.10.6.1" style="font-size:90%;">61.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.4.12.10.7"><span class="ltx_text ltx_font_bold" id="S4.T3.4.12.10.7.1" style="font-size:90%;">50.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.12.10.8"><span class="ltx_text ltx_font_bold" id="S4.T3.4.12.10.8.1" style="font-size:90%;">3.61</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of Dita's performance with state-of-the-art approaches on the CALVIN benchmark (ABC→D).  The CALVIN benchmark evaluates the ability of models to perform long-horizon, language-conditioned tasks across diverse scenarios.  The table shows success rates and average success lengths for each method, broken down by the number of consecutive subtasks completed.  Different input modalities used by each method are also indicated through abbreviations: S-RGB (Static RGB), G-RGB (Gripper RGB), S-RGBD (Static RGB-D), G-RGBD (Gripper RGB-D), P (Proprioceptive arm position), and Cam (Camera parameters). This allows for a detailed analysis of the relative strengths and weaknesses of different approaches in handling long-horizon tasks and diverse sensor inputs.
> <details>
> <summary>read the caption</summary>
> Table 3: The comparisons with state-of-the-art approaches on Calvin (ABC→→\rightarrow→D) with the metrics of success rate and average success length. The abbreviations denote different input modalities: S-RGB for Static RGB, G-RGB for Gripper RGB, S-RGBD for Static RGB-D, G-RGBD for Gripper RGB-D, P for proprioceptive arm position, and Cam for camera parameters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.2.2.3.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.2.2.3.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.3.1.1.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.2.2.3.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.3.1.2.1" style="font-size:90%;">Avg.</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.3.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.3.1.3.1" style="font-size:90%;">PickC</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.3.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.3.1.4.1" style="font-size:90%;">StackC</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.3.1.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.3.1.5.1" style="font-size:90%;">S-YCB</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.3.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.3.1.6.1" style="font-size:90%;">C-YCB</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.3.1.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.3.1.7.1" style="font-size:90%;">EGAD</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><math alttext="\mathcal{E}_{\theta\sim s}^{Disc}" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><msubsup id="S4.T4.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T4.1.1.1.1.m1.1.1.2.2" mathsize="90%" xref="S4.T4.1.1.1.1.m1.1.1.2.2.cmml">ℰ</mi><mrow id="S4.T4.1.1.1.1.m1.1.1.2.3" xref="S4.T4.1.1.1.1.m1.1.1.2.3.cmml"><mi id="S4.T4.1.1.1.1.m1.1.1.2.3.2" mathsize="90%" xref="S4.T4.1.1.1.1.m1.1.1.2.3.2.cmml">θ</mi><mo id="S4.T4.1.1.1.1.m1.1.1.2.3.1" mathsize="90%" xref="S4.T4.1.1.1.1.m1.1.1.2.3.1.cmml">∼</mo><mi id="S4.T4.1.1.1.1.m1.1.1.2.3.3" mathsize="90%" xref="S4.T4.1.1.1.1.m1.1.1.2.3.3.cmml">s</mi></mrow><mrow id="S4.T4.1.1.1.1.m1.1.1.3" xref="S4.T4.1.1.1.1.m1.1.1.3.cmml"><mi id="S4.T4.1.1.1.1.m1.1.1.3.2" mathsize="90%" xref="S4.T4.1.1.1.1.m1.1.1.3.2.cmml">D</mi><mo id="S4.T4.1.1.1.1.m1.1.1.3.1" xref="S4.T4.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.1.1.1.1.m1.1.1.3.3" mathsize="90%" xref="S4.T4.1.1.1.1.m1.1.1.3.3.cmml">i</mi><mo id="S4.T4.1.1.1.1.m1.1.1.3.1a" xref="S4.T4.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.1.1.1.1.m1.1.1.3.4" mathsize="90%" xref="S4.T4.1.1.1.1.m1.1.1.3.4.cmml">s</mi><mo id="S4.T4.1.1.1.1.m1.1.1.3.1b" xref="S4.T4.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.1.1.1.1.m1.1.1.3.5" mathsize="90%" xref="S4.T4.1.1.1.1.m1.1.1.3.5.cmml">c</mi></mrow></msubsup><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><apply id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.1.1.1.1.m1.1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">superscript</csymbol><apply id="S4.T4.1.1.1.1.m1.1.1.2.cmml" xref="S4.T4.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.1.1.1.1.m1.1.1.2.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T4.1.1.1.1.m1.1.1.2.2.cmml" xref="S4.T4.1.1.1.1.m1.1.1.2.2">ℰ</ci><apply id="S4.T4.1.1.1.1.m1.1.1.2.3.cmml" xref="S4.T4.1.1.1.1.m1.1.1.2.3"><csymbol cd="latexml" id="S4.T4.1.1.1.1.m1.1.1.2.3.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1.2.3.1">similar-to</csymbol><ci id="S4.T4.1.1.1.1.m1.1.1.2.3.2.cmml" xref="S4.T4.1.1.1.1.m1.1.1.2.3.2">𝜃</ci><ci id="S4.T4.1.1.1.1.m1.1.1.2.3.3.cmml" xref="S4.T4.1.1.1.1.m1.1.1.2.3.3">𝑠</ci></apply></apply><apply id="S4.T4.1.1.1.1.m1.1.1.3.cmml" xref="S4.T4.1.1.1.1.m1.1.1.3"><times id="S4.T4.1.1.1.1.m1.1.1.3.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1.3.1"></times><ci id="S4.T4.1.1.1.1.m1.1.1.3.2.cmml" xref="S4.T4.1.1.1.1.m1.1.1.3.2">𝐷</ci><ci id="S4.T4.1.1.1.1.m1.1.1.3.3.cmml" xref="S4.T4.1.1.1.1.m1.1.1.3.3">𝑖</ci><ci id="S4.T4.1.1.1.1.m1.1.1.3.4.cmml" xref="S4.T4.1.1.1.1.m1.1.1.3.4">𝑠</ci><ci id="S4.T4.1.1.1.1.m1.1.1.3.5.cmml" xref="S4.T4.1.1.1.1.m1.1.1.3.5">𝑐</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\mathcal{E}_{\theta\sim s}^{Disc}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">caligraphic_E start_POSTSUBSCRIPT italic_θ ∼ italic_s end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_D italic_i italic_s italic_c end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.1.1.1.2.1" style="font-size:90%;">30.2%</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.1.1.1.3.1" style="font-size:90%;">41.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.1.1.1.4.1" style="font-size:90%;">33.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.1.1.1.5.1" style="font-size:90%;">22.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.1.1.1.6.1" style="font-size:90%;">1.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.1.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.1.1.1.7.1" style="font-size:90%;">54.0%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.2.2.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><math alttext="\mathcal{E}_{\theta\sim s}^{Diff}" class="ltx_Math" display="inline" id="S4.T4.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.1.m1.1a"><msubsup id="S4.T4.2.2.2.1.m1.1.1" xref="S4.T4.2.2.2.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T4.2.2.2.1.m1.1.1.2.2" mathsize="90%" xref="S4.T4.2.2.2.1.m1.1.1.2.2.cmml">ℰ</mi><mrow id="S4.T4.2.2.2.1.m1.1.1.2.3" xref="S4.T4.2.2.2.1.m1.1.1.2.3.cmml"><mi id="S4.T4.2.2.2.1.m1.1.1.2.3.2" mathsize="90%" xref="S4.T4.2.2.2.1.m1.1.1.2.3.2.cmml">θ</mi><mo id="S4.T4.2.2.2.1.m1.1.1.2.3.1" mathsize="90%" xref="S4.T4.2.2.2.1.m1.1.1.2.3.1.cmml">∼</mo><mi id="S4.T4.2.2.2.1.m1.1.1.2.3.3" mathsize="90%" xref="S4.T4.2.2.2.1.m1.1.1.2.3.3.cmml">s</mi></mrow><mrow id="S4.T4.2.2.2.1.m1.1.1.3" xref="S4.T4.2.2.2.1.m1.1.1.3.cmml"><mi id="S4.T4.2.2.2.1.m1.1.1.3.2" mathsize="90%" xref="S4.T4.2.2.2.1.m1.1.1.3.2.cmml">D</mi><mo id="S4.T4.2.2.2.1.m1.1.1.3.1" xref="S4.T4.2.2.2.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.2.2.2.1.m1.1.1.3.3" mathsize="90%" xref="S4.T4.2.2.2.1.m1.1.1.3.3.cmml">i</mi><mo id="S4.T4.2.2.2.1.m1.1.1.3.1a" xref="S4.T4.2.2.2.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.2.2.2.1.m1.1.1.3.4" mathsize="90%" xref="S4.T4.2.2.2.1.m1.1.1.3.4.cmml">f</mi><mo id="S4.T4.2.2.2.1.m1.1.1.3.1b" xref="S4.T4.2.2.2.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.2.2.2.1.m1.1.1.3.5" mathsize="90%" xref="S4.T4.2.2.2.1.m1.1.1.3.5.cmml">f</mi></mrow></msubsup><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.1.m1.1b"><apply id="S4.T4.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.2.2.2.1.m1.1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1">superscript</csymbol><apply id="S4.T4.2.2.2.1.m1.1.1.2.cmml" xref="S4.T4.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.2.2.2.1.m1.1.1.2.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1">subscript</csymbol><ci id="S4.T4.2.2.2.1.m1.1.1.2.2.cmml" xref="S4.T4.2.2.2.1.m1.1.1.2.2">ℰ</ci><apply id="S4.T4.2.2.2.1.m1.1.1.2.3.cmml" xref="S4.T4.2.2.2.1.m1.1.1.2.3"><csymbol cd="latexml" id="S4.T4.2.2.2.1.m1.1.1.2.3.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1.2.3.1">similar-to</csymbol><ci id="S4.T4.2.2.2.1.m1.1.1.2.3.2.cmml" xref="S4.T4.2.2.2.1.m1.1.1.2.3.2">𝜃</ci><ci id="S4.T4.2.2.2.1.m1.1.1.2.3.3.cmml" xref="S4.T4.2.2.2.1.m1.1.1.2.3.3">𝑠</ci></apply></apply><apply id="S4.T4.2.2.2.1.m1.1.1.3.cmml" xref="S4.T4.2.2.2.1.m1.1.1.3"><times id="S4.T4.2.2.2.1.m1.1.1.3.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1.3.1"></times><ci id="S4.T4.2.2.2.1.m1.1.1.3.2.cmml" xref="S4.T4.2.2.2.1.m1.1.1.3.2">𝐷</ci><ci id="S4.T4.2.2.2.1.m1.1.1.3.3.cmml" xref="S4.T4.2.2.2.1.m1.1.1.3.3">𝑖</ci><ci id="S4.T4.2.2.2.1.m1.1.1.3.4.cmml" xref="S4.T4.2.2.2.1.m1.1.1.3.4">𝑓</ci><ci id="S4.T4.2.2.2.1.m1.1.1.3.5.cmml" xref="S4.T4.2.2.2.1.m1.1.1.3.5">𝑓</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.1.m1.1c">\mathcal{E}_{\theta\sim s}^{Diff}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.1.m1.1d">caligraphic_E start_POSTSUBSCRIPT italic_θ ∼ italic_s end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_D italic_i italic_f italic_f end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.2.2.2.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.2.2.2.2.1" style="font-size:90%;">58.6%</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.3.1" style="font-size:90%;">86.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.2.2.2.4.1" style="font-size:90%;">76.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.2.2.2.5.1" style="font-size:90%;">37.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.2.2.2.6.1" style="font-size:90%;">24.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.2.2.2.7.1" style="font-size:90%;">70.0%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.4.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.2.2.4.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.2.2.4.1.1.1" style="font-size:90%;">Dita (ours)</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.2.2.4.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.4.1.2.1" style="font-size:90%;">65.8%</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.2.2.4.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.2.2.4.1.3.1" style="font-size:90%;">79.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.2.2.4.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.4.1.4.1" style="font-size:90%;">80.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.2.2.4.1.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.4.1.5.1" style="font-size:90%;">62.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.2.2.4.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.4.1.6.1" style="font-size:90%;">36.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.2.2.4.1.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.4.1.7.1" style="font-size:90%;">72.0%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the success rates achieved by three different methods on the ManiSkill2 benchmark.  The methods compared are: 1) the proposed Dita model; 2) a discretization-based baseline method; and 3) a diffusion-head baseline method. The ManiSkill2 benchmark includes several manipulation tasks, and the table shows the success rates for each method on five specific tasks: PickSingleYCB (S-YCB), PickClutterYCB (C-YCB), and PickSingleEGAD (EGAD). The results highlight the performance differences between the proposed method and the baseline methods in terms of achieving successful task completion.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of our model with two baseline methods (discretization and diffusion head) on ManiSkill2 success rate. The abbreviations denote the task names: S-YCB for PickSingleYCB, C-YCB for PickClutterYCB, EGAD for PickSingleEGAD.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.4.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.4.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.1.1.1" style="font-size:90%;"># obs</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.4.1.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.1.2.1" style="font-size:90%;"># traj</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.4.1.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.1.3.1" style="font-size:90%;">All</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.1.4.1" style="font-size:90%;">PickC</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.1.5.1" style="font-size:90%;">StackC</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.1.6.1" style="font-size:90%;">S-YCB</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.1.7.1" style="font-size:90%;">C-YCB</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.1.8.1" style="font-size:90%;">EGAD</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.2.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.2.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.2.2.1.1" style="font-size:90%;">2</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.2.2.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.2.2.2.1" style="font-size:90%;">2</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.2.2.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.2.2.3.1" style="font-size:90%;">40.8%</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.2.2.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.2.2.4.1" style="font-size:90%;">68.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.2.2.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.2.2.5.1" style="font-size:90%;">54.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.2.2.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.2.2.6.1" style="font-size:90%;">33.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.2.2.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.2.2.7.1" style="font-size:90%;">9.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.2.2.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.2.2.8.1" style="font-size:90%;">40.0%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.3.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.3.3.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.3.3.1.1" style="font-size:90%;">2</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.3.3.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.3.3.2.1" style="font-size:90%;">4</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.3.3.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.3.3.3.1" style="font-size:90%;">51.6%</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.3.3.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.3.3.4.1" style="font-size:90%;">81.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.3.3.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.3.3.5.1" style="font-size:90%;">69.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.3.3.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.3.3.6.1" style="font-size:90%;">44.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.3.3.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.3.3.7.1" style="font-size:90%;">11.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.3.3.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.3.3.8.1" style="font-size:90%;">53.0%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.4.4.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.4.4.1.1" style="font-size:90%;">2</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.4.4.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.4.4.2.1" style="font-size:90%;">8</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.4.4.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.4.4.3.1" style="font-size:90%;">62.4%</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.4.4.4" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T5.4.4.4.4.1" style="font-size:90%;">89.0</span><span class="ltx_text" id="S4.T5.4.4.4.4.2" style="font-size:90%;"> %</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.4.4.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.4.4.5.1" style="font-size:90%;">78.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.4.4.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.4.4.6.1" style="font-size:90%;">54.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.4.4.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.4.4.7.1" style="font-size:90%;">25.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.4.4.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.4.4.8.1" style="font-size:90%;">66.0%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.5.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.5.5.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.5.5.1.1" style="font-size:90%;">2</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.5.5.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.5.5.2.1" style="font-size:90%;">16</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.5.5.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.5.5.3.1" style="font-size:90%;">65.6%</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.5.5.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.5.5.4.1" style="font-size:90%;">83.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.5.5.5" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T5.4.5.5.5.1" style="font-size:90%;">80.0</span><span class="ltx_text" id="S4.T5.4.5.5.5.2" style="font-size:90%;"> %</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.5.5.6" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T5.4.5.5.6.1" style="font-size:90%;">70.0</span><span class="ltx_text" id="S4.T5.4.5.5.6.2" style="font-size:90%;"> %</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.5.5.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.5.5.7.1" style="font-size:90%;">25.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.5.5.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.5.5.8.1" style="font-size:90%;">70.0%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.6.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.6.6.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.6.6.1.1" style="font-size:90%;">2</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.6.6.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.6.6.2.1" style="font-size:90%;">32</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.6.6.3" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T5.4.6.6.3.1" style="font-size:90%;">65.8</span><span class="ltx_text" id="S4.T5.4.6.6.3.2" style="font-size:90%;"> %</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.6.6.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.6.6.4.1" style="font-size:90%;">79.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.6.6.5" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T5.4.6.6.5.1" style="font-size:90%;">80.0</span><span class="ltx_text" id="S4.T5.4.6.6.5.2" style="font-size:90%;"> %</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.6.6.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.6.6.6.1" style="font-size:90%;">62.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.6.6.7" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T5.4.6.6.7.1" style="font-size:90%;">36.0</span><span class="ltx_text" id="S4.T5.4.6.6.7.2" style="font-size:90%;"> %</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.6.6.8" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T5.4.6.6.8.1" style="font-size:90%;">72.0</span><span class="ltx_text" id="S4.T5.4.6.6.8.2" style="font-size:90%;">%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.7.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.7.7.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.7.7.1.1" style="font-size:90%;">1</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.7.7.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.7.7.2.1" style="font-size:90%;">32</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.7.7.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.7.7.3.1" style="font-size:90%;">61.6%</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.7.7.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.7.7.4.1" style="font-size:90%;">78.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.7.7.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.7.7.5.1" style="font-size:90%;">76.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.7.7.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.7.7.6.1" style="font-size:90%;">64.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.7.7.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.7.7.7.1" style="font-size:90%;">24.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.7.7.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.7.7.8.1" style="font-size:90%;">66.0%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.8.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.8.8.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.8.8.1.1" style="font-size:90%;">1</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.8.8.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.8.8.2.1" style="font-size:90%;">1</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.8.8.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.8.8.3.1" style="font-size:90%;">51.0%</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.8.8.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.8.8.4.1" style="font-size:90%;">79.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.8.8.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.8.8.5.1" style="font-size:90%;">66.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.8.8.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.8.8.6.1" style="font-size:90%;">42.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.8.8.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.8.8.7.1" style="font-size:90%;">19.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.4.8.8.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.8.8.8.1" style="font-size:90%;">49.0%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.9.9">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.4.9.9.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.9.9.1.1" style="font-size:90%;">3</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.4.9.9.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.9.9.2.1" style="font-size:90%;">3</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.4.9.9.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.9.9.3.1" style="font-size:90%;">35.4%</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.4.9.9.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.9.9.4.1" style="font-size:90%;">54.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.4.9.9.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.9.9.5.1" style="font-size:90%;">49.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.4.9.9.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.9.9.6.1" style="font-size:90%;">27.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.4.9.9.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.9.9.7.1" style="font-size:90%;">5.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.4.9.9.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.4.9.9.8.1" style="font-size:90%;">42.0%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted on the ManiSkill2 benchmark to analyze the impact of observation length and trajectory length on model performance.  Observation length refers to the number of consecutive frames used as input to the model, while trajectory length represents the total number of frames (including observations and actions) processed in a single prediction sequence. The table shows how varying these two factors affects the model's ability to successfully complete various manipulation tasks within the ManiSkill2 benchmark, providing insights into the optimal configuration for achieving robust performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation on ManiSkill2 about the observation length (# obs) and the trajectory length (# traj).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T6.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T6.4.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.1.1.1" style="font-size:90%;"># Steps</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T6.4.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.1.2.1" style="font-size:90%;">100</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T6.4.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.1.3.1" style="font-size:90%;">50</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T6.4.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.1.4.1" style="font-size:90%;">20</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T6.4.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.1.5.1" style="font-size:90%;">10</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T6.4.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.1.6.1" style="font-size:90%;">5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.4.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.4.1.1.7.1" style="font-size:90%;">2</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.4.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T6.4.2.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.2.1.1.1" style="font-size:90%;">Pick Coke (variant)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.4.2.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.2.1.2.1" style="font-size:90%;">76.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.4.2.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.2.1.3.1" style="font-size:90%;">79.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.4.2.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.4.2.1.4.1" style="font-size:90%;">85.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.4.2.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.2.1.5.1" style="font-size:90%;">85.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.4.2.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.2.1.6.1" style="font-size:90%;">82.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.2.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.2.1.7.1" style="font-size:90%;">70.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.3.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T6.4.3.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.3.2.1.1" style="font-size:90%;">Pick Coke (match)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.4.3.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.3.2.2.1" style="font-size:90%;">79.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.4.3.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.3.2.3.1" style="font-size:90%;">83.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.4.3.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.4.3.2.4.1" style="font-size:90%;">83.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.4.3.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.3.2.5.1" style="font-size:90%;">82.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.4.3.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.3.2.6.1" style="font-size:90%;">82.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.3.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.3.2.7.1" style="font-size:90%;">73.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.4.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T6.4.4.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.4.3.1.1" style="font-size:90%;">Move Near (variant)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.4.4.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.4.3.2.1" style="font-size:90%;">52.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.4.4.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.4.3.3.1" style="font-size:90%;">66.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.4.4.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.4.4.3.4.1" style="font-size:90%;">73.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.4.4.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.4.3.5.1" style="font-size:90%;">69.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.4.4.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.4.3.6.1" style="font-size:90%;">63.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.4.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.4.3.7.1" style="font-size:90%;">51.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.5.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T6.4.5.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.5.4.1.1" style="font-size:90%;">Move Near (match)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.4.5.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.5.4.2.1" style="font-size:90%;">49.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.4.5.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.5.4.3.1" style="font-size:90%;">72.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.4.5.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.4.5.4.4.1" style="font-size:90%;">76.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.4.5.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.5.4.5.1" style="font-size:90%;">74.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.4.5.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.5.4.6.1" style="font-size:90%;">72.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.5.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T6.4.5.4.7.1" style="font-size:90%;">65.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the impact of varying the number of denoising steps during inference on the performance of the Dita model on the Google Robot Simulation benchmark.  The model was initially trained using 1000 DDPM denoising steps. The table presents success rates for different tasks ('Pick Coke' match and variant, 'Move Near' match and variant) at various numbers of DDIM denoising steps during inference (100, 50, 20, 10, 5, 2). This allows for analysis of the trade-off between inference speed and accuracy.
> <details>
> <summary>read the caption</summary>
> Table 6: The impact of the number of denoising steps (# Steps) of DDIM on Google Robot Simulation during inference, trained with 1000 DDPM denoising steps.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T7.18">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T7.18.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A2.T7.18.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.18.1.1.1.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T7.18.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.18.1.1.2.1" style="font-size:90%;">LIBERO-LONG</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T7.18.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T7.18.2.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A2.T7.18.2.1.1.1" style="font-size:90%;">Diffusion Policy* </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T7.18.2.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a><span class="ltx_text" id="A2.T7.18.2.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.18.2.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T7.18.2.1.2.1" style="font-size:90%;">50.5%</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.18.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T7.18.3.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A2.T7.18.3.2.1.1" style="font-size:90%;">Octo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T7.18.3.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib72" title=""><span class="ltx_text" style="font-size:90%;">72</span></a><span class="ltx_text" id="A2.T7.18.3.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T7.18.3.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T7.18.3.2.2.1" style="font-size:90%;">51.1%</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.18.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T7.18.4.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A2.T7.18.4.3.1.1" style="font-size:90%;">OpenVLA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T7.18.4.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="A2.T7.18.4.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T7.18.4.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T7.18.4.3.2.1" style="font-size:90%;">53.7%</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.18.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T7.18.5.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T7.18.5.4.1.1" style="font-size:90%;">Dita (pretrained on OXE)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.18.5.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T7.18.5.4.2.1" style="font-size:90%;">63.8%</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.18.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A2.T7.18.6.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T7.18.6.5.1.1" style="font-size:90%;">Dita (pretrained on Droid)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.18.6.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.18.6.5.2.1" style="font-size:90%;">77.9%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of Dita against three other state-of-the-art methods (Diffusion Policy, Octo, and OpenVLA) on the LIBERO benchmark.  It shows success rates on the LIBERO-LONG sub-dataset.  The results are presented for two versions of Dita: one pretrained on the OXE dataset and another pretrained on the Droid dataset.  This highlights the impact of the pretraining dataset on the model's performance.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison with Diffusion Policy [17], Octo [72], and OpenVLA [32] on LIBERO [40]. Dita (OXE) denotes the use of a pretrained model on OXE, while Dita (Droid) refers to the use of a pretrained model on Droid.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T8.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T8.6.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A4.T8.6.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.6.1.1.1.1" style="font-size:90%;">Strategy</span></td>
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_tt" colspan="6" id="A4.T8.6.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.6.1.1.2.1" style="font-size:90%;">No. Instructions in a Row (1000 chains)</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.6.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T8.6.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.6.2.2.1.1" style="font-size:90%;">w lr decay</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T8.6.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T8.6.2.2.2.1" style="font-size:90%;">94.5</span><span class="ltx_text" id="A4.T8.6.2.2.2.2" style="font-size:90%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T8.6.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T8.6.2.2.3.1" style="font-size:90%;">82.5</span><span class="ltx_text" id="A4.T8.6.2.2.3.2" style="font-size:90%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T8.6.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T8.6.2.2.4.1" style="font-size:90%;">72.8</span><span class="ltx_text" id="A4.T8.6.2.2.4.2" style="font-size:90%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T8.6.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T8.6.2.2.5.1" style="font-size:90%;">61.3</span><span class="ltx_text" id="A4.T8.6.2.2.5.2" style="font-size:90%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T8.6.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T8.6.2.2.6.1" style="font-size:90%;">50.0</span><span class="ltx_text" id="A4.T8.6.2.2.6.2" style="font-size:90%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.6.2.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.6.2.2.7.1" style="font-size:90%;">3.61</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.6.3.3">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T8.6.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.6.3.3.1.1" style="font-size:90%;">w/o lr decay</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T8.6.3.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.6.3.3.2.1" style="font-size:90%;">91.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T8.6.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.6.3.3.3.1" style="font-size:90%;">80.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T8.6.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.6.3.3.4.1" style="font-size:90%;">68.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T8.6.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.6.3.3.5.1" style="font-size:90%;">56.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T8.6.3.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.6.3.3.6.1" style="font-size:90%;">45.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.6.3.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.6.3.3.7.1" style="font-size:90%;">3.43</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study investigating the impact of different learning rate scheduling strategies on the performance of the Dita model within the CALVIN benchmark.  It compares a strategy with learning rate decay against one without, showing the success rates achieved across various lengths of instruction sequences (number of instructions in a row).  The results highlight the effect of the learning rate scheduler on the model's ability to generalize and perform long-horizon tasks in the CALVIN environment.
> <details>
> <summary>read the caption</summary>
> Table 8: The ablation study on the learning rate scheduler in the Calvin benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T9.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T9.8.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A4.T9.8.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.1.1.1.1" style="font-size:90%;">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_tt" colspan="6" id="A4.T9.8.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.1.1.2.1" style="font-size:90%;">No. Instructions in a Row (1000 chains)</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.8.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="A4.T9.8.2.2.1.1" style="font-size:90%;">MDT* </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T9.8.2.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a><span class="ltx_text" id="A4.T9.8.2.2.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.2.2.2.1" style="font-size:90%;">61.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.2.2.3.1" style="font-size:90%;">40.6%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.2.2.4.1" style="font-size:90%;">23.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.2.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.2.2.5.1" style="font-size:90%;">14.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.2.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.2.2.6.1" style="font-size:90%;">8.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.8.2.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.2.2.7.1" style="font-size:90%;">1.54</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.8.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.3.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="A4.T9.8.3.3.1.1" style="font-size:90%;">Unet1D head </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T9.8.3.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a><span class="ltx_text" id="A4.T9.8.3.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.3.3.2.1" style="font-size:90%;">76.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.3.3.3.1" style="font-size:90%;">46.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.3.3.4.1" style="font-size:90%;">28.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.3.3.5.1" style="font-size:90%;">18.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.3.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.3.3.6.1" style="font-size:90%;">10.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.8.3.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.3.3.7.1" style="font-size:90%;">1.80</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.8.4.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="A4.T9.8.4.4.1.1" style="font-size:90%;">Transformer head </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A4.T9.8.4.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19757v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a><span class="ltx_text" id="A4.T9.8.4.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.4.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.4.4.2.1" style="font-size:90%;">75.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.4.4.3.1" style="font-size:90%;">44.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.4.4.4.1" style="font-size:90%;">26.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.4.4.5.1" style="font-size:90%;">16.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.4.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.4.4.6.1" style="font-size:90%;">8.0%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T9.8.4.4.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.4.4.7.1" style="font-size:90%;">1.72</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.8.5.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.5.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.5.5.1.1" style="font-size:90%;">8-layer MLP head</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.5.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.5.5.2.1" style="font-size:90%;">69.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.5.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.5.5.3.1" style="font-size:90%;">42.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.5.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.5.5.4.1" style="font-size:90%;">26.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.5.5.5.1" style="font-size:90%;">16.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.5.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.5.5.6.1" style="font-size:90%;">11.0%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T9.8.5.5.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.5.5.7.1" style="font-size:90%;">1.66</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.8.6.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.6.6.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.6.6.1.1" style="font-size:90%;">3-layer MLP head</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.6.6.2.1" style="font-size:90%;">75.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.6.6.3.1" style="font-size:90%;">44.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.6.6.4.1" style="font-size:90%;">25.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.6.6.5.1" style="font-size:90%;">15.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.8.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.6.6.6.1" style="font-size:90%;">7.5%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T9.8.6.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.6.6.7.1" style="font-size:90%;">1.68</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.8.7.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.7.7.1.1" style="font-size:90%;">Single token act chunks</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.7.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.7.7.2.1" style="font-size:90%;">56.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.7.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.7.7.3.1" style="font-size:90%;">18.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.7.7.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.7.7.4.1" style="font-size:90%;">6.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.7.7.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.7.7.5.1" style="font-size:90%;">2.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.8.7.7.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.7.7.6.1" style="font-size:90%;">0.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.8.7.7.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.7.7.7.1" style="font-size:90%;">0.84</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.8.8.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T9.8.8.8.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A4.T9.8.8.8.1.1" style="font-size:90%;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T9.8.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.8.8.2.1" style="font-size:90%;">89.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T9.8.8.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.8.8.3.1" style="font-size:90%;">63.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T9.8.8.8.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.8.8.4.1" style="font-size:90%;">39.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T9.8.8.8.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.8.8.5.1" style="font-size:90%;">27.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T9.8.8.8.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.8.8.6.1" style="font-size:90%;">18.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.8.8.8.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.8.8.7.1" style="font-size:90%;">2.38</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 9 presents a comparison of different action design approaches on the CALVIN (ABC→D) benchmark, excluding any model pretraining.  It contrasts several methods, including a baseline using an 8-layer Multilayer Perceptron (MLP), a 3-layer MLP, a Transformer-based approach, and a Unet-1D architecture, all without any pretraining.  The table provides the success rate across various numbers of consecutive successful sub-tasks (1, 2, 3, 4, and 5).  One method, MDT (Multi-modal Diffusion Transformer), is specifically noted as using version 9 of its GitHub repository. Another method, GR-MG, is also included.  The table aims to isolate the impact of the action design choices on the model's performance and generalization ability without the influence of pretraining.
> <details>
> <summary>read the caption</summary>
> Table 9: More action designs w/o pretraining on Calvin (ABC→→\rightarrow→D). MDT is from issue 9 of its GitHub repo and GR-MG.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T10.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T10.6.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A4.T10.6.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T10.6.1.1.1.1" style="font-size:90%;"># Steps</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A4.T10.6.1.1.2"><span class="ltx_text" id="A4.T10.6.1.1.2.1" style="font-size:90%;">1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T10.6.1.1.3"><span class="ltx_text" id="A4.T10.6.1.1.3.1" style="font-size:90%;">2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T10.6.1.1.4"><span class="ltx_text" id="A4.T10.6.1.1.4.1" style="font-size:90%;">4</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T10.6.1.1.5"><span class="ltx_text" id="A4.T10.6.1.1.5.1" style="font-size:90%;">8</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T10.6.1.1.6"><span class="ltx_text" id="A4.T10.6.1.1.6.1" style="font-size:90%;">16</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T10.6.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="A4.T10.6.2.1.1"><span class="ltx_text" id="A4.T10.6.2.1.1.1" style="font-size:90%;">All</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="A4.T10.6.2.1.2">
<span class="ltx_text ltx_font_bold" id="A4.T10.6.2.1.2.1" style="font-size:90%;">61.6</span><span class="ltx_text" id="A4.T10.6.2.1.2.2" style="font-size:90%;">%</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A4.T10.6.2.1.3"><span class="ltx_text" id="A4.T10.6.2.1.3.1" style="font-size:90%;">60.8 %</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A4.T10.6.2.1.4"><span class="ltx_text" id="A4.T10.6.2.1.4.1" style="font-size:90%;">60.6 %</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A4.T10.6.2.1.5"><span class="ltx_text" id="A4.T10.6.2.1.5.1" style="font-size:90%;">60.0 %</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T10.6.2.1.6"><span class="ltx_text" id="A4.T10.6.2.1.6.1" style="font-size:90%;">58.0 %</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of varying the number of execution steps on the performance of the Dita model within the ManiSkill2 benchmark.  It shows how the model's success rate changes as the number of steps used for action prediction increases.  The results are likely presented as a percentage of successful task completions for each task family in ManiSkill2, providing insights into the model's ability to generalize across different manipulation tasks and the optimal balance between prediction accuracy and computational cost. The table helps determine the ideal number of execution steps for efficient and effective task completion.
> <details>
> <summary>read the caption</summary>
> Table 10: The effect of the number of execution steps (# Steps) on ManiSkill2.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T11.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T11.1.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A4.T11.1.1.1.2" rowspan="2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.1.2.1" style="font-size:90%;">Shuffle Buffer Size</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A4.T11.1.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.1.1.1" style="font-size:90%;">coke<math alttext="\_" class="ltx_Math" display="inline" id="A4.T11.1.1.1.1.1.m1.1"><semantics id="A4.T11.1.1.1.1.1.m1.1a"><mi id="A4.T11.1.1.1.1.1.m1.1.1" mathvariant="normal" xref="A4.T11.1.1.1.1.1.m1.1.1.cmml">_</mi><annotation-xml encoding="MathML-Content" id="A4.T11.1.1.1.1.1.m1.1b"><ci id="A4.T11.1.1.1.1.1.m1.1.1.cmml" xref="A4.T11.1.1.1.1.1.m1.1.1">_</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T11.1.1.1.1.1.m1.1c">\_</annotation><annotation encoding="application/x-llamapun" id="A4.T11.1.1.1.1.1.m1.1d">_</annotation></semantics></math>can</span></th>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.2.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="A4.T11.1.1.2.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="A4.T11.1.1.2.1.1.1" style="font-size:90%;">match</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="A4.T11.1.1.2.1.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="A4.T11.1.1.2.1.2.1" style="font-size:90%;">variant</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T11.1.1.3.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A4.T11.1.1.3.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="A4.T11.1.1.3.1.1.1" style="font-size:90%;">128000</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T11.1.1.3.1.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="A4.T11.1.1.3.1.2.1" style="font-size:90%;">71.2%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T11.1.1.3.1.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="A4.T11.1.1.3.1.3.1" style="font-size:90%;">73.6%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.4.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A4.T11.1.1.4.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="A4.T11.1.1.4.2.1.1" style="font-size:90%;">256000</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T11.1.1.4.2.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.4.2.2.1" style="font-size:90%;">83.7%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T11.1.1.4.2.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.4.2.3.1" style="font-size:90%;">85.5%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of the shuffle buffer size in the TensorFlow datasets on the performance of the Dita model.  The study specifically focuses on the SimplerEnv benchmark, using both the 'match' and 'variant' configurations of the Google Robot task from the RT-1 dataset [8]. The table shows how varying the shuffle buffer size affects the success rate of the Dita model across different tasks within SimplerEnv, offering insights into the model's sensitivity to this hyperparameter.
> <details>
> <summary>read the caption</summary>
> Table 11: Ablation study of shuffle buffer size on SimplerEnv (both math and variant results of Google Robot [8]).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.19757/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19757/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19757/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19757/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19757/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19757/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19757/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19757/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19757/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19757/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19757/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19757/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19757/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19757/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19757/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19757/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19757/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}